#!/usr/bin/env ruby
# frozen_string_literal: true

# Tier 3 — federation asset registry manifest scaffolder.
#
# Walks a target directory for image / video / pdf files and emits a manifest
# (YAML) with auto-populated metadata. Auto-fills the mechanical fields
# (id, path, repo, date, type) from path heuristics + filename + file mtime;
# leaves the judgment fields (description, themes, tags, alt, permissions,
# classification) for human enrichment.
#
# The deliberate principle here is that the scaffolder should *never guess*
# at the judgment fields — wrong values in `themes:` or `permissions:` are
# worse than missing values because a confident-but-wrong manifest entry
# hides itself from the human-enrichment workflow.
#
# Run from repo root:
#   ruby scripts/scaffold_asset_manifest.rb <target-dir> [--out <path>] [--repo <name>] [--shape compact|keyed]
#
# Examples:
#   # Scaffold a manifest for hub's standards/images/ directory
#   ruby scripts/scaffold_asset_manifest.rb standards/images \
#     --out standards/assets-manifest.yml --repo skylight-hub
#
#   # Same but emit a keyed (images:) manifest shape:
#   ruby scripts/scaffold_asset_manifest.rb standards/images \
#     --out standards/assets-manifest.yml --repo skylight-hub --shape keyed
#
#   # Print to stdout instead of writing:
#   ruby scripts/scaffold_asset_manifest.rb plugins/skylight-brand-pack/assets
#
# Behavior:
#   - Walks the target directory recursively.
#   - For each asset:
#     - Generates a stable kebab-case `id` from the basename.
#     - Sets `path` relative to <target-dir>'s manifest location.
#     - Infers `type` from path heuristics (mirrors scan_assets.rb).
#     - Sets `date` from EXIF when readable (uses `exiftool` if available),
#       falls back to file mtime (ISO YYYY-MM-DD).
#     - Sets `repo` from --repo (default: directory's repo name).
#     - Sets `archived: false`, `pending_classification: false`.
#     - Leaves the judgment fields empty for human enrichment, with a
#       comment header above each entry explaining what to fill in.
#   - Skips assets already covered by an existing manifest (cross-references
#     against `**/{assets-manifest,image-library}.yml` like check_asset_manifests).
#   - Skips `_archived/` and `_incoming/` lifecycle subdirs.
#
# Exit codes:
#   0 — scaffold completed (count printed to stderr)
#   2 — bad invocation
#
# Source proposal: plans/active/federation-asset-registry.md
# Source migration: migrations/federation-asset-registry-phase-a-tooling-followup.md
# Predecessor: archive/2026-05-23-federation-asset-registry-bootstrap.md (Phase A scaffold)

require "yaml"
require "pathname"
require "date"
require "set"

REPO_ROOT  = Pathname.new(File.expand_path("..", __dir__))
IMAGE_EXTS = %w[png jpg jpeg gif webp svg tiff bmp].freeze
VIDEO_EXTS = %w[mp4 mov webm m4v].freeze
PDF_EXTS   = %w[pdf].freeze
ALL_EXTS   = (IMAGE_EXTS + VIDEO_EXTS + PDF_EXTS).freeze

REPO_ENUM = %w[
  skylight-hub
  skylight.digital
  skylight-marcom
  skylight-people-ops
  skylight-hub-proposals-resolve
].freeze

# -- CLI ---------------------------------------------------------------------

opts = { target: nil, out: nil, repo: nil, shape: "compact" }
i = 0
while i < ARGV.length
  arg = ARGV[i]
  case arg
  when "--out"     then opts[:out]   = ARGV[i + 1]; i += 1
  when "--repo"    then opts[:repo]  = ARGV[i + 1]; i += 1
  when "--shape"   then opts[:shape] = ARGV[i + 1]; i += 1
  when "--help", "-h"
    # Read with explicit UTF-8 encoding so non-ASCII chars in this header
    # (em-dashes etc.) don't trip a US-ASCII default locale.
    puts File.read(__FILE__, encoding: "UTF-8").lines.grep(/^# /).join
    exit 0
  else
    if opts[:target].nil?
      opts[:target] = arg
    else
      warn "ERROR: unknown argument '#{arg}'"
      exit 2
    end
  end
  i += 1
end

if opts[:target].nil?
  warn "Usage: ruby scaffold_asset_manifest.rb <target-dir> [--out <path>] [--repo <name>] [--shape compact|keyed]"
  exit 2
end

unless %w[compact keyed].include?(opts[:shape])
  warn "ERROR: --shape must be 'compact' or 'keyed'"
  exit 2
end

target_dir = Pathname.new(opts[:target]).expand_path
unless target_dir.directory?
  warn "ERROR: not a directory: #{opts[:target]}"
  exit 2
end

# Resolve repo name. Priority: --repo flag → derive from target path's repo root → fallback to "skylight-hub".
def derive_repo(path)
  current = path
  while current.parent != current
    git_dir = current + ".git"
    return current.basename.to_s if git_dir.directory? || git_dir.file?
    current = current.parent
  end
  nil
end

repo_name = opts[:repo] || derive_repo(target_dir) || "skylight-hub"
unless REPO_ENUM.include?(repo_name)
  warn "WARN: repo '#{repo_name}' not in canonical enum #{REPO_ENUM.inspect}; manifest will fail validator. Continuing anyway."
end

manifest_dir =
  if opts[:out]
    Pathname.new(opts[:out]).expand_path.dirname
  else
    target_dir
  end

# -- Helpers -----------------------------------------------------------------

def kebab(s)
  s.to_s.downcase
   .gsub(/\.\w+$/, "")               # strip ext
   .gsub(/[^a-z0-9]+/, "-")          # non-alnum → hyphen
   .gsub(/^-+|-+$/, "")              # trim leading/trailing
   .gsub(/-+/, "-")                  # collapse runs
end

def type_guess(path, ext)
  basename = File.basename(path).downcase
  path_str = path.to_s.downcase
  return "gif"      if ext == "gif"
  return "pdf"      if PDF_EXTS.include?(ext)
  return "video"    if VIDEO_EXTS.include?(ext)
  return "headshot" if path_str.match?(%r{/team/|headshot}) && IMAGE_EXTS.include?(ext)
  return "logo"     if basename.match?(/logo/) || path_str.match?(%r{/logos?/})
  return "diagram"  if ext == "svg" && !path_str.match?(%r{/logos?/})
  return "hero"     if basename.match?(/hero/) || path_str.match?(%r{/projects/[^/]+/hero})
  return "screenshot" if basename.match?(/screenshot|screencap|capture/) ||
                        path_str.match?(%r{/screenshots?/|/reference/images/})
  return "photo"    if IMAGE_EXTS.include?(ext)
  "photo"
end

def exiftool_available?
  return @exiftool_available unless @exiftool_available.nil?
  @exiftool_available = system("which exiftool > /dev/null 2>&1")
end

def exif_date(file)
  return nil unless exiftool_available?
  out = `exiftool -s -s -s -DateTimeOriginal '#{file}' 2>/dev/null`
  return nil if out.strip.empty?
  # EXIF format: 2024:05:15 14:33:21 — convert to YYYY-MM-DD
  m = out.strip.match(/^(\d{4}):(\d{2}):(\d{2})/)
  return nil unless m
  "#{m[1]}-#{m[2]}-#{m[3]}"
rescue StandardError
  nil
end

def file_date(file)
  Date.new(file.mtime.year, file.mtime.month, file.mtime.day).strftime("%Y-%m-%d")
end

def discover_existing_manifest_entries(root)
  seen = Set.new
  Dir.glob(root.join("**/{assets-manifest,image-library}.yml")).each do |path|
    next if path.include?("/node_modules/")
    data =
      begin
        YAML.safe_load(File.read(path), permitted_classes: [Date, Time])
      rescue StandardError
        next
      end
    entries =
      if data.is_a?(Array)
        data
      elsif data.is_a?(Hash) && data["images"]
        data["images"]
      elsif data.is_a?(Hash) && data["assets"]
        data["assets"]
      else
        []
      end
    entries.each do |e|
      next unless e.is_a?(Hash) && e["path"]
      resolved = Pathname.new(path).dirname.join(e["path"]).cleanpath
      seen << resolved.to_s
    end
  end
  seen
end

# -- Walk + build entries ----------------------------------------------------

already_in_manifest = discover_existing_manifest_entries(REPO_ROOT)

assets = []
ALL_EXTS.each do |ext|
  Dir.glob(target_dir.join("**", "*.#{ext}"), File::FNM_CASEFOLD).each do |file|
    p = Pathname.new(file)
    next unless p.file?
    next if p.to_s.include?("/_archived/") || p.to_s.include?("/_incoming/")
    next if already_in_manifest.include?(p.cleanpath.to_s)
    assets << p
  end
end
assets.uniq! { |p| p.to_s }
assets.sort_by!(&:to_s)

used_ids = {}

def unique_id(base, used)
  base = "asset" if base.nil? || base.empty?
  return base unless used.key?(base)
  i = 2
  i += 1 while used.key?("#{base}-#{i}")
  "#{base}-#{i}"
end

entries = assets.map do |file|
  ext = File.extname(file).downcase.delete(".")
  begin
    rel_path = file.relative_path_from(manifest_dir).to_s
  rescue ArgumentError => e
    warn "ERROR: cannot express asset path relative to manifest dir (#{e.message}). Asset: #{file}; manifest dir: #{manifest_dir}."
    exit 2
  end
  date = exif_date(file) || file_date(file)
  id = unique_id(kebab(file.basename.to_s), used_ids)
  used_ids[id] = true
  {
    "id"                     => id,
    "path"                   => rel_path,
    "repo"                   => repo_name,
    "date"                   => date,
    "type"                   => type_guess(file, ext),
    # Judgment fields left null/empty for human enrichment.
    "themes"                 => [],
    "tags"                   => [],
    "people"                 => [],
    "event"                  => nil,
    "alt"                    => "",
    "description"            => "",
    "permissions"            => "review-needed",  # safe default — forces human to confirm rights
    "classification"         => "internal",       # safe default — most images aren't public yet
    "set_id"                 => nil,
    "used_in"                => [],
    "archived"               => false,
    "archived_at"            => nil,
    "archived_reason"        => nil,
    "pending_classification" => false,
    "landed_at"              => nil,
    "landed_via"             => nil,
    "notes"                  => nil,
  }
end

# -- Emit --------------------------------------------------------------------

header = <<~YAML
  # Auto-scaffolded by scripts/scaffold_asset_manifest.rb on #{Date.today.strftime('%Y-%m-%d')}.
  #
  # Mechanical fields (id, path, repo, date, type) are filled in.
  # Judgment fields (themes, tags, alt, description, permissions, classification)
  # need human enrichment. Defaults:
  #   - permissions: "review-needed" (forces an explicit rights review before publishing)
  #   - classification: "internal" (downgrade to "public" once cleared)
  #
  # Run `ruby scripts/check_asset_manifests.rb` after editing to validate.
YAML

if opts[:shape] == "keyed"
  payload = {
    "meta" => {
      "schema_version"   => 1,
      "scaffolded_at"    => Date.today.strftime("%Y-%m-%d"),
      "scaffolded_by"    => "scripts/scaffold_asset_manifest.rb",
      "target_directory" => target_dir.relative_path_from(REPO_ROOT).to_s,
    },
    "images" => entries,
  }
  output = header + payload.to_yaml.sub(/^---\n/, "")
else
  output = header + entries.to_yaml.sub(/^---\n/, "")
end

if opts[:out]
  File.write(opts[:out], output)
  warn "scaffolded #{entries.size} entry(ies) into #{opts[:out]} (shape: #{opts[:shape]})"
else
  print output
  warn "scaffolded #{entries.size} entry(ies) for #{target_dir} (shape: #{opts[:shape]}; stdout)"
end

exit 0
