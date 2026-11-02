#!/usr/bin/env ruby
# frozen_string_literal: true

# Every vendored brand-pack mirror is registered with the drift gate.
#
#   ruby scripts/check_brand_mirror_registered.rb    # exits 1 on any unregistered mirror
#
# WHY THIS EXISTS AND WHY IT IS SEPARATE. `verbatim-copies.yml` is a hand-authored list, and
# `check_verbatim_copies.rb` walks that list. So the gate answers "did anyone edit a file we
# declared?" and is silent about a file nobody declared — which means a new canon file arriving
# through `sync-brand-pack.yml` lands in `_data/brand/` ungated, while the gate keeps printing OK.
#
# That is not a hypothetical. The same shape of bug already happened one layer up: the sync workflow
# used to carry a hard-coded FILES list, a second copy of the hub's canon directory listing kept by
# hand, and `emoji-vocabulary.yml` was canon for about two months while the sync mirrored 9 of 10
# files and reported success every week. The fix there was to derive the list from canon instead of
# retyping it. This check is the same fix applied to the manifest: adding a file to the hub's canon
# directory must cost zero edits in the sync, and it must not be able to cost zero edits HERE
# silently.
#
# The glob is the authority, deliberately. `_data/brand/*.yml` is a generated directory — this repo
# owns none of it — so anything in it that the manifest does not name is by definition an unowned,
# unguarded copy. The opposite direction (a manifest entry whose file is gone) is already a hard
# error in `check_verbatim_copies.rb`, so this check does not duplicate it.

require "yaml"

ROOT     = File.expand_path("..", __dir__)
MANIFEST = File.join(ROOT, "verbatim-copies.yml")
MIRROR   = "_data/brand"

abort "check_brand_mirror_registered: #{MANIFEST} is missing" unless File.file?(MANIFEST)

doc = YAML.safe_load(File.read(MANIFEST, encoding: "UTF-8"))
abort "check_brand_mirror_registered: verbatim-copies.yml does not parse into a mapping" unless doc.is_a?(Hash)

declared = Array(doc["copies"]).map { |c| c["path"].to_s }

on_disk = Dir.glob(File.join(ROOT, MIRROR, "*.yml"))
          .map { |p| "#{MIRROR}/#{File.basename(p)}" }
          .sort

# NO VACUOUS PASS. An empty mirror directory means the checkout is broken or the sync deleted the
# vendored canon the site builds against — either way, reporting success on nothing is the failure
# this whole layer exists to prevent.
if on_disk.empty?
  abort "check_brand_mirror_registered: #{MIRROR}/ holds no .yml files. The site builds against " \
        "this directory, so an empty one is a broken checkout or a destructive sync — not a clean run."
end

unregistered = on_disk - declared

if unregistered.empty?
  puts "check_brand_mirror_registered: OK — #{on_disk.size} vendored brand file(s), all registered " \
       "in verbatim-copies.yml."
  exit 0
end

warn "check_brand_mirror_registered: #{unregistered.size} vendored brand file(s) are NOT registered " \
     "with the drift gate\n"
unregistered.each { |p| warn "  - #{p}" }
warn <<~FIX

  #{MIRROR}/ is a mirror of skylight-hub/plugins/skylight-brand-pack/config/ — this repo owns none
  of it. A file in there that verbatim-copies.yml does not name is an unguarded copy, and
  check_verbatim_copies.rb will keep reporting OK while saying nothing about it.

  Add an entry for each file above to verbatim-copies.yml (sha256: PENDING), then record the hash:

      ruby scripts/check_verbatim_copies.rb --update
FIX
exit 1
