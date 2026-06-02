#!/usr/bin/env ruby
# frozen_string_literal: true

# Tier 3 — federation asset registry inventory walker.
#
# Walks the current repo for image / video / pdf files, emits a raw
# inventory (YAML or CSV) that downstream tooling (scaffold_asset_manifest.rb,
# the human-enrichment workflow) consumes to populate per-repo manifests.
#
# Does NOT validate or modify manifests; that's check_asset_manifests.rb's
# job. This script only enumerates.
#
# Run from repo root:
#   ruby scripts/scan_assets.rb                # YAML to stdout
#   ruby scripts/scan_assets.rb --format=csv   # CSV to stdout
#   ruby scripts/scan_assets.rb --out inventory.yml
#
# Output schema (per row):
#   path:               repo-relative path
#   size_bytes:         file size in bytes
#   ext:                file extension (lowercased, no dot)
#   type_guess:         inferred from path + ext (photo | screenshot | diagram |
#                       gif | video | pdf | logo | hero | headshot | unknown)
#   in_manifest:        true | false — whether any discovered manifest already
#                       carries a row for this path
#   manifest_path:      path to the manifest holding the row, or null
#   archived_dir:       true if file sits in an _archived/ subdir
#   incoming_dir:       true if file sits in an _incoming/ subdir
#
# Exit codes:
#   0 — scan completed (file count printed to stderr)
#   2 — bad invocation
#
# Source proposal: plans/active/federation-asset-registry.md
# Source migration: migrations/federation-asset-registry-bootstrap.md

require "yaml"
require "csv"
require "pathname"
require "digest"

REPO_ROOT = Pathname.new(File.expand_path("..", __dir__))

IMAGE_EXTS = %w[png jpg jpeg gif webp svg tiff bmp].freeze
VIDEO_EXTS = %w[mp4 mov webm m4v].freeze
PDF_EXTS   = %w[pdf].freeze
ALL_EXTS   = (IMAGE_EXTS + VIDEO_EXTS + PDF_EXTS).freeze

# -- CLI -----------------------------------------------------------------------

opts = { format: "yaml", out: nil, root: REPO_ROOT }
i = 0
while i < ARGV.length
  arg = ARGV[i]
  case arg
  when "--format"
    opts[:format] = ARGV[i + 1] or (warn("ERROR: --format requires a value"); exit 2)
    i += 1
  when /\A--format=(.+)\z/
    opts[:format] = Regexp.last_match(1)
  when "--out"
    opts[:out] = ARGV[i + 1] or (warn("ERROR: --out requires a path"); exit 2)
    i += 1
  when /\A--out=(.+)\z/
    opts[:out] = Regexp.last_match(1)
  when "--root"
    opts[:root] = Pathname.new(ARGV[i + 1])
    i += 1
  when "--help", "-h"
    # Read with explicit UTF-8 encoding so non-ASCII chars in this header
    # (em-dashes etc.) don't trip a US-ASCII default locale.
    puts File.read(__FILE__, encoding: "UTF-8").lines.grep(/^# /).join
    exit 0
  else
    warn "ERROR: unknown flag '#{arg}' — see --help"
    exit 2
  end
  i += 1
end

unless %w[yaml csv].include?(opts[:format])
  warn "ERROR: --format must be 'yaml' or 'csv'"
  exit 2
end

ROOT = opts[:root]

# -- Helpers -------------------------------------------------------------------

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

  "unknown"
end

def load_manifests(root)
  index = {} # repo-relative path → manifest path
  Dir.glob(root.join("**/{assets-manifest,image-library}.yml")).each do |path|
    next if path.include?("/node_modules/")
    data =
      begin
        YAML.load_file(path)
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
    next if entries.nil?

    manifest_dir = Pathname.new(path).dirname
    entries.each do |entry|
      next unless entry.is_a?(Hash) && entry["path"]
      resolved = manifest_dir.join(entry["path"]).cleanpath
      rel = resolved.relative_path_from(root).to_s
      index[rel] = path
    end
  end
  index
end

# -- Main ----------------------------------------------------------------------

manifest_index = load_manifests(ROOT)

ignore_dir_regex = Regexp.union(
  %r{/\.git/},
  %r{/node_modules/},
  %r{/vendor/bundle/},
  %r{/_site/},
  %r{/build/},
  %r{/dist/},
)

rows = []
ALL_EXTS.each do |ext|
  Dir.glob(ROOT.join("**", "*.#{ext}"), File::FNM_CASEFOLD).each do |file|
    next if file.match?(ignore_dir_regex)
    p = Pathname.new(file)
    next unless p.file?

    rel = p.relative_path_from(ROOT).to_s
    stat = p.stat
    rows << {
      "path"          => rel,
      "size_bytes"    => stat.size,
      "ext"           => ext.downcase,
      "type_guess"    => type_guess(p, ext.downcase),
      "in_manifest"   => manifest_index.key?(rel),
      "manifest_path" => manifest_index[rel] && Pathname.new(manifest_index[rel]).relative_path_from(ROOT).to_s,
      "archived_dir"  => rel.split("/").include?("_archived"),
      "incoming_dir"  => rel.split("/").include?("_incoming"),
    }
  end
end

rows = rows.uniq { |r| r["path"] }.sort_by { |r| r["path"] }

# -- Emit ----------------------------------------------------------------------

output =
  case opts[:format]
  when "yaml"
    rows.to_yaml
  when "csv"
    CSV.generate do |csv|
      next if rows.empty?
      csv << rows.first.keys
      rows.each { |r| csv << r.values }
    end
  end

if opts[:out]
  File.write(opts[:out], output)
  warn "wrote #{rows.size} row(s) to #{opts[:out]}"
else
  print output
  warn "scanned #{rows.size} asset(s) under #{ROOT}"
end

exit 0
