#!/usr/bin/env ruby
# frozen_string_literal: true

# Verbatim-copy drift gate — holds this repo's copied-from-the-federation files to the hash they were
# last synced at.
#
# THIS SCRIPT IS ITSELF A VERBATIM FEDERATION COPY. Canonical source:
# skylight-hub/templates/spoke-ci/check_verbatim_copies.rb. It is listed in this repo's own
# verbatim-copies.yml, so it guards itself — editing it here without pushing upstream fails the
# gate it implements. That self-reference is deliberate: a drift gate that is exempt from its own
# rule is the first file that will drift.
#
#   ruby scripts/check_verbatim_copies.rb            # gate (CI)
#   ruby scripts/check_verbatim_copies.rb --update   # re-record hashes after an intentional sync
#
# THE PROBLEM. Six scripts here declare in their own headers that they are "verbatim" copies of a hub
# original. Nothing checked that, so the claim was decorative. Measured 2026-07-30: three were
# genuinely identical, three had diverged (118 / 12 / 5 lines), and — worse, because it crossed repos
# rather than just aging — `render_decisions.rb` differed from marcom's copy by 158 lines, with marcom
# MISSING the duplicate-id guard that exists because two PRs both minted PO-D-131. The spoke without
# the guard was exposed to the exact failure the guard was written for, and nothing could have said so.
#
# THE MEASUREMENT TRAP THIS GATE IS BUILT AROUND. The first comparison reported all six as drifted by
# 166-772 lines. That was an artifact: the hub stores LF, these checkouts are CRLF, and a raw byte
# compare reports a whole-file diff on identical content. A gate that compares raw bytes here would be
# red on day one and stay red — and a permanently-red check is worse than no check, because it trains
# people to skip it. Hashes are therefore over CRLF-stripped content, declared in the manifest as
# `normalize: line-endings` so the choice is visible rather than buried in this file.
#
# WHAT THIS GATE PROVES, PRECISELY — and a cold agent must not overstate it:
#   IT DOES     catch a local edit to a file this repo has declared it does not own.
#   IT DOES NOT see the hub moving ahead. Nothing in this repo can: that needs a cross-repo sweep with
#               network access -- that is the hub's `check_federation_copy_drift.rb` sweep, which
#               reads every registered spoke. A green run HERE means "unchanged since we last
#               said it was in sync", NOT "in sync with the hub".
# Those are different questions and conflating them is how a drift gate gives false comfort.
#
# A divergence recorded in the manifest with a REASON is fine — that is a decision. A divergence with
# `divergence: null` that no longer matches its hash is what this gate is for.

require "yaml"
require "digest"

ROOT     = File.expand_path("..", __dir__)
MANIFEST = File.join(ROOT, "verbatim-copies.yml")
UPDATE   = ARGV.include?("--update")

abort "check_verbatim_copies: #{MANIFEST} is missing" unless File.exist?(MANIFEST)

doc = YAML.safe_load(File.read(MANIFEST))
abort "check_verbatim_copies: #{MANIFEST} does not parse into a mapping" unless doc.is_a?(Hash)

copies = doc["copies"]
# NO VACUOUS PASS. An empty or missing list must fail loudly rather than report OK on nothing —
# the failure mode this repo has hit twice, where a guard went green by matching nothing at all.
if !copies.is_a?(Array) || copies.empty?
  abort "check_verbatim_copies: `copies` is empty or missing. A gate that checks nothing must not " \
        "report success — delete this gate deliberately, or list what it guards."
end

norm = doc["normalize"].to_s
unless norm == "line-endings"
  abort "check_verbatim_copies: unsupported `normalize: #{doc['normalize'].inspect}` (expected " \
        "\"line-endings\"). This key is explicit because comparing raw bytes across a CRLF boundary " \
        "reports total drift on identical files."
end

def digest(path)
  Digest::SHA256.hexdigest(File.binread(path).gsub("\r\n", "\n"))
end

errors  = []
updated = 0
rows    = []

copies.each do |c|
  path = c["path"].to_s
  abs  = File.join(ROOT, path)

  if path.empty?
    errors << "an entry is missing `path`"
    next
  end
  unless File.exist?(abs)
    errors << "#{path}: declared a verbatim copy but the file does not exist"
    next
  end

  actual   = digest(abs)
  recorded = c["sha256"].to_s

  if UPDATE || recorded == "PENDING"
    c["sha256"] = actual
    updated += 1
    rows << [path, "recorded", actual[0, 12]]
    next
  end

  if recorded.empty?
    errors << "#{path}: no `sha256` recorded. Run --update after confirming the file is correct."
  elsif recorded == actual
    rows << [path, "ok", actual[0, 12]]
  else
    errors << "#{path}: CHANGED since it was last synced.\n" \
              "    recorded #{recorded[0, 16]}…\n" \
              "    actual   #{actual[0, 16]}…\n" \
              "    This file is declared a copy of #{c['source']}, so this repo does not own it. Either\n" \
              "    (a) push the change upstream and re-sync every spoke, then run --update here, or\n" \
              "    (b) if the divergence is intentional, record WHY in the entry's `divergence:` field\n" \
              "        and run --update. An undocumented divergence is exactly what this gate exists\n" \
              "        to surface."
  end
end

if updated.positive?
  # Line-wise rewrite, deliberately, rather than a multiline regex over the whole document.
  #
  # THE FIRST VERSION OF THIS BLOCK WAS VACUOUS AND SHIPPED GREEN. It read
  # `File.write(M, File.read(M).then do |text| ... end)` — where Ruby binds `do...end` to `File.write`,
  # not to `.then`. The hashes were never written, so every run re-seeded from PENDING, compared
  # nothing, and reported OK. That is the precise failure this repo has now hit three times: a guard
  # that goes green by checking nothing. Caught here only because the second run printed "recorded"
  # instead of "ok" — i.e. by watching the OUTPUT CHANGE, not by the exit code, which was 0 throughout.
  #
  # The rewrite below walks lines, tracks which entry it is inside, and replaces exactly one key. It is
  # duller and it cannot silently no-op: `written` is asserted against `updated` before the file is
  # touched.
  current = nil
  written = 0
  out = File.read(MANIFEST).lines.map do |line|
    if (m = line.match(/^\s*- path:\s*(\S+)/))
      current = copies.find { |c| c["path"].to_s == m[1] }
    elsif current && line.match?(/^\s*sha256:\s*\S+/)
      indent = line[/^\s*/]
      replacement = "#{indent}sha256: #{current['sha256']}\n"
      # Count every sha256 line REPLACED, not every line whose TEXT changed. Those differ under
      # --update when most hashes are already correct, and the first version asserted the wrong
      # one: it demanded 8 changed lines from an --update run where only 1 hash had moved, and
      # refused to write. The assertion that matters is a SHAPE check -- did I find and rewrite
      # exactly one sha256 line per declared copy. Whether the VALUE moved is not evidence of
      # anything, and treating it as evidence turns a working guard into a blocker.
      written += 1
      current = nil
      next replacement
    end
    line
  end.join

  if written != updated
    abort "check_verbatim_copies: refusing to write — expected to update #{updated} hash(es) but the " \
          "line-wise rewrite touched #{written}. The manifest's shape is not what this script assumes; " \
          "fix the script rather than the manifest."
  end

  File.write(MANIFEST, out)

  # Re-read and verify, because a write that silently no-ops is the whole class of bug above.
  reread = YAML.safe_load(File.read(MANIFEST))["copies"]
  still_pending = reread.select { |c| c["sha256"].to_s == "PENDING" }.map { |c| c["path"] }
  unless still_pending.empty?
    abort "check_verbatim_copies: wrote the manifest but #{still_pending.size} entry(ies) are still " \
          "PENDING on re-read (#{still_pending.join(', ')}). The write did not take."
  end

  puts "check_verbatim_copies: recorded #{updated} hash(es) in verbatim-copies.yml"
end

documented = copies.count { |c| c["divergence"] }
rows.each { |p, s, d| puts format("  %-6s %-42s %s", s, p, d) } unless rows.empty?

unless errors.empty?
  warn "\ncheck_verbatim_copies: #{errors.size} problem(s)"
  errors.each { |e| warn "  - #{e}" }
  exit 1
end

puts "check_verbatim_copies: OK — #{copies.size} declared copy(ies) unchanged since last sync " \
     "(#{documented} carrying a documented divergence from upstream)."
puts "  NOTE: this gate cannot see upstream moving ahead — that is the hub's federation copy-drift sweep."
