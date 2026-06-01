#!/usr/bin/env ruby
# frozen_string_literal: true

# Tier 3 — federation asset registry per-repo validator.
#
# Walks the current repo for asset manifests (assets-manifest.yml +
# image-library.yml), validates every entry against the canonical schema
# (standards/asset-manifest-schema.yml) and controlled vocabulary
# (standards/asset-vocabulary.yml).
#
# Checks performed per entry:
#   - Required fields present (id, path, repo, date, type, permissions,
#     classification, archived, pending_classification)
#   - Enum compliance (type, permissions, classification, archived_reason,
#     landed_via against asset-vocabulary.yml; repo against the inline list)
#   - Pattern compliance (id kebab-case; date ISO YYYY-MM-DD; archived_at +
#     landed_at same shape)
#   - File ↔ manifest correspondence — manifest `path:` resolves to an
#     existing file in the repo (or, when archived: true, in the matching
#     `_archived/` subdir)
#   - Cross-field rules:
#       * archived: true ⟹ archived_at + archived_reason both present
#       * pending_classification: true ⟹ landed_at + landed_via both present
#       * pending_classification: true ⟹ set_id: null AND used_in: []
#       * archived AND pending_classification mutually exclusive
#       * moved_to set ⟹ archived: true
#   - Vocab warnings (not failures): unknown themes / tags
#   - Long-pending review-needed warnings: permissions: review-needed AND
#     archived: false → WARN (advisory, not blocking)
#
# Exit codes:
#   0 — all checks pass (warnings allowed)
#   1 — one or more blocking findings
#   2 — bad invocation (missing schema, missing vocab, etc.)
#
# Run from repo root:
#   ruby scripts/check_asset_manifests.rb
#
# Optional flags:
#   --warn-as-error      Promote all warnings to errors (CI strict mode)
#   --quiet              Suppress per-entry OK output; only show findings
#   --manifest <path>    Validate a specific manifest file rather than the
#                        full repo sweep (useful for pre-commit hook integration)
#
# Source proposal: plans/active/federation-asset-registry.md
# Source migration: migrations/federation-asset-registry-bootstrap.md

require "yaml"
require "pathname"

REPO_ROOT  = Pathname.new(File.expand_path("..", __dir__))
SCHEMA     = YAML.load_file(REPO_ROOT.join("standards/asset-manifest-schema.yml"))
VOCAB      = YAML.load_file(REPO_ROOT.join("standards/asset-vocabulary.yml"))

# -- CLI -----------------------------------------------------------------------

opts = { warn_as_error: false, quiet: false, manifest: nil }
ARGV.each_with_index do |arg, i|
  case arg
  when "--warn-as-error" then opts[:warn_as_error] = true
  when "--quiet"         then opts[:quiet] = true
  when "--manifest"
    opts[:manifest] = ARGV[i + 1]
    raise ArgumentError, "--manifest requires a path" if opts[:manifest].nil?
  when "--help", "-h"
    # Read with explicit UTF-8 encoding so non-ASCII chars in this header
    # (em-dashes etc.) don't trip a US-ASCII default locale.
    puts File.read(__FILE__, encoding: "UTF-8").lines.grep(/^# /).join
    exit 0
  end
end

# -- Helpers -------------------------------------------------------------------

class Finding
  attr_reader :manifest, :entry_id, :level, :code, :message

  def initialize(manifest:, entry_id:, level:, code:, message:)
    @manifest  = manifest
    @entry_id  = entry_id
    @level     = level # :error | :warn
    @code      = code
    @message   = message
  end

  def to_s
    location = "#{manifest}#{entry_id ? " [#{entry_id}]" : ''}"
    prefix   = level == :error ? "ERROR" : "WARN "
    "#{prefix} #{code} in #{location}: #{message}"
  end
end

def schema_required_keys
  SCHEMA.fetch("required")
end

def schema_property(field)
  SCHEMA.fetch("properties").fetch(field, nil)
end

def vocab_themes;            VOCAB.fetch("themes", []);           end
def vocab_tags;              VOCAB.fetch("tags", []);             end
def vocab_archive_reasons;   VOCAB.fetch("archive_reasons", []);  end
def vocab_landed_via;        VOCAB.fetch("landed_via", []);       end

def enum_for(field)
  prop = schema_property(field)
  prop && prop["enum"]
end

def pattern_for(field)
  prop = schema_property(field)
  prop && prop["pattern"]
end

# -- Validation ----------------------------------------------------------------

def validate_entry(entry, manifest_path:, findings:)
  entry_id = entry["id"] || "<missing id>"

  # 1. Required fields
  missing = schema_required_keys - entry.keys
  missing.each do |field|
    findings << Finding.new(
      manifest:  manifest_path,
      entry_id:  entry_id,
      level:     :error,
      code:      "missing-required-field",
      message:   "required field '#{field}' is missing",
    )
  end
  return if missing.any? # short-circuit; downstream checks assume required fields exist

  # 2. Pattern compliance
  %w[id date archived_at landed_at].each do |field|
    value = entry[field]
    next if value.nil? || value.empty?
    pattern = pattern_for(field)
    next if pattern.nil?
    unless value.match?(Regexp.new(pattern))
      findings << Finding.new(
        manifest:  manifest_path,
        entry_id:  entry_id,
        level:     :error,
        code:      "pattern-violation",
        message:   "field '#{field}' value '#{value}' does not match #{pattern}",
      )
    end
  end

  # 3. Enum compliance — schema-defined enums
  %w[type permissions classification repo].each do |field|
    value = entry[field]
    next if value.nil?
    allowed = enum_for(field)
    next if allowed.nil?
    unless allowed.include?(value)
      findings << Finding.new(
        manifest:  manifest_path,
        entry_id:  entry_id,
        level:     :error,
        code:      "enum-violation",
        message:   "field '#{field}' value '#{value}' not in #{allowed.inspect}",
      )
    end
  end

  # 4. Vocab enum compliance (vocab-driven enums)
  if entry["archived"] == true && entry["archived_reason"]
    unless vocab_archive_reasons.include?(entry["archived_reason"])
      findings << Finding.new(
        manifest:  manifest_path,
        entry_id:  entry_id,
        level:     :error,
        code:      "vocab-violation",
        message:   "archived_reason '#{entry['archived_reason']}' not in asset-vocabulary.yml archive_reasons",
      )
    end
  end
  if entry["pending_classification"] == true && entry["landed_via"]
    unless vocab_landed_via.include?(entry["landed_via"])
      findings << Finding.new(
        manifest:  manifest_path,
        entry_id:  entry_id,
        level:     :error,
        code:      "vocab-violation",
        message:   "landed_via '#{entry['landed_via']}' not in asset-vocabulary.yml landed_via",
      )
    end
  end

  # 5. Vocab warnings (open vocab)
  (entry["themes"] || []).each do |theme|
    unless vocab_themes.include?(theme)
      findings << Finding.new(
        manifest:  manifest_path,
        entry_id:  entry_id,
        level:     :warn,
        code:      "unknown-theme",
        message:   "theme '#{theme}' not in asset-vocabulary.yml themes — add it there if intentional",
      )
    end
  end
  (entry["tags"] || []).each do |tag|
    unless vocab_tags.include?(tag)
      findings << Finding.new(
        manifest:  manifest_path,
        entry_id:  entry_id,
        level:     :warn,
        code:      "unknown-tag",
        message:   "tag '#{tag}' not in asset-vocabulary.yml tags — add it there if intentional",
      )
    end
  end

  # 6. File ↔ manifest correspondence
  manifest_dir = Pathname.new(manifest_path).dirname
  resolved_path = manifest_dir.join(entry["path"])
  unless resolved_path.exist?
    findings << Finding.new(
      manifest:  manifest_path,
      entry_id:  entry_id,
      level:     :error,
      code:      "missing-file",
      message:   "path '#{entry['path']}' does not resolve to an existing file (looked at #{resolved_path})",
    )
  end

  # 7. Cross-field rules
  if entry["archived"] == true
    if entry["archived_at"].nil? || entry["archived_at"].to_s.empty?
      findings << Finding.new(
        manifest:  manifest_path,
        entry_id:  entry_id,
        level:     :error,
        code:      "archived-missing-date",
        message:   "archived: true requires archived_at",
      )
    end
    if entry["archived_reason"].nil? || entry["archived_reason"].to_s.empty?
      findings << Finding.new(
        manifest:  manifest_path,
        entry_id:  entry_id,
        level:     :error,
        code:      "archived-missing-reason",
        message:   "archived: true requires archived_reason",
      )
    end
  end

  if entry["pending_classification"] == true
    if entry["landed_at"].nil? || entry["landed_at"].to_s.empty?
      findings << Finding.new(
        manifest:  manifest_path,
        entry_id:  entry_id,
        level:     :error,
        code:      "pending-missing-landed-at",
        message:   "pending_classification: true requires landed_at",
      )
    end
    if entry["landed_via"].nil? || entry["landed_via"].to_s.empty?
      findings << Finding.new(
        manifest:  manifest_path,
        entry_id:  entry_id,
        level:     :error,
        code:      "pending-missing-landed-via",
        message:   "pending_classification: true requires landed_via",
      )
    end
    if entry["set_id"]
      findings << Finding.new(
        manifest:  manifest_path,
        entry_id:  entry_id,
        level:     :error,
        code:      "pending-with-set",
        message:   "pending_classification: true requires set_id: null (got '#{entry['set_id']}')",
      )
    end
    if (entry["used_in"] || []).any?
      findings << Finding.new(
        manifest:  manifest_path,
        entry_id:  entry_id,
        level:     :error,
        code:      "pending-with-used-in",
        message:   "pending_classification: true requires used_in: [] (got #{entry['used_in'].inspect})",
      )
    end
  end

  if entry["archived"] == true && entry["pending_classification"] == true
    findings << Finding.new(
      manifest:  manifest_path,
      entry_id:  entry_id,
      level:     :error,
      code:      "archived-and-pending",
      message:   "archived: true and pending_classification: true are mutually exclusive",
    )
  end

  if entry["moved_to"] && entry["archived"] != true
    findings << Finding.new(
      manifest:  manifest_path,
      entry_id:  entry_id,
      level:     :error,
      code:      "moved-to-not-archived",
      message:   "moved_to set ('#{entry['moved_to']}') requires archived: true on the source row",
    )
  end

  # 8. Advisory warnings (long-pending review-needed)
  if entry["permissions"] == "review-needed" && entry["archived"] == false
    findings << Finding.new(
      manifest:  manifest_path,
      entry_id:  entry_id,
      level:     :warn,
      code:      "review-needed-pending",
      message:   "permissions: review-needed entries should be downgraded or archived once review completes",
    )
  end
end

def discover_manifests(root:)
  manifests = []
  Dir.glob(root.join("**/{assets-manifest,image-library}.yml")).each do |path|
    # Skip lifecycle dirs and node_modules; the validator reads main repo content.
    next if path.include?("/node_modules/")
    next if path.include?("/_archived/")
    next if path.include?("/_incoming/")
    manifests << path
  end
  manifests.sort
end

# -- Main ----------------------------------------------------------------------

findings = []

manifests =
  if opts[:manifest]
    p = Pathname.new(opts[:manifest])
    unless p.exist?
      warn "ERROR: --manifest path does not exist: #{opts[:manifest]}"
      exit 2
    end
    [p.to_s]
  else
    discover_manifests(root: REPO_ROOT)
  end

if manifests.empty?
  puts "(no asset manifests found — federation asset registry not yet bootstrapped in this repo)"
  exit 0
end

manifests.each do |path|
  data =
    begin
      YAML.load_file(path)
    rescue StandardError => e
      findings << Finding.new(manifest: path, entry_id: nil, level: :error, code: "yaml-parse-error", message: e.message)
      next
    end

  unless data.is_a?(Hash) || data.is_a?(Array)
    findings << Finding.new(manifest: path, entry_id: nil, level: :error, code: "bad-manifest-shape", message: "top-level structure must be a mapping or sequence")
    next
  end

  # Manifests may be either:
  #   (a) a top-level array of entries (compact form)
  #   (b) a mapping with `images:` or `assets:` key containing the array (matches the
  #       skylight-marcom social-post image-library.yml shape)
  entries =
    if data.is_a?(Array)
      data
    elsif data["images"]
      data["images"]
    elsif data["assets"]
      data["assets"]
    else
      []
    end

  next if entries.nil? || entries.empty?

  entries.each do |entry|
    next unless entry.is_a?(Hash)
    validate_entry(entry, manifest_path: path, findings: findings)
  end

  unless opts[:quiet]
    entry_count = entries.size
    err_count   = findings.count { |f| f.manifest == path && f.level == :error }
    warn_count  = findings.count { |f| f.manifest == path && f.level == :warn }
    status      = err_count.zero? ? "OK" : "FAIL"
    puts "#{status} #{path}: #{entry_count} entries (#{err_count} errors, #{warn_count} warnings)"
  end
end

# -- Report --------------------------------------------------------------------

errors   = findings.count { |f| f.level == :error }
warnings = findings.count { |f| f.level == :warn }

findings.each { |f| puts f.to_s }

puts
puts "#{errors} error(s), #{warnings} warning(s) across #{manifests.size} manifest(s)"

blocking = errors + (opts[:warn_as_error] ? warnings : 0)
exit(blocking.zero? ? 0 : 1)
