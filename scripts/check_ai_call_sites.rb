#!/usr/bin/env ruby
# frozen_string_literal: true

# AI call-site registry gate (standards/context-boundary.md, "Three checkpoints").
#
# Fails when a code file sends content to Claude and the repo's ai-call-sites.yml has no row for it,
# so "what does this feature put in a prompt?" is a question every PR that adds one has to answer.
# The check reads the code for the ordinary shapes of a call rather than trusting a declaration;
# it is text matching, so a call written some other way (a host assembled from variables, say) is
# for review to catch.
#
#   ruby scripts/check_ai_call_sites.rb              # gate (CI)
#   ruby scripts/check_ai_call_sites.rb --root DIR   # check another tree (the tests use this)
#
# THIS SCRIPT IS A VERBATIM FEDERATION COPY in every repo but the hub. Canonical source:
# skylight-hub/scripts/check_ai_call_sites.rb. A spoke copies it (not its test) with the registry
# template (skylight-hub/templates/repo-common/ai-call-sites.yml) and lists it in verbatim-copies.yml.
#
# What counts as a call: the Anthropic API host, an Anthropic SDK or Agent SDK, an AI framework's
# Claude binding, a Claude GitHub Action, the headless CLI, a Claude model id on Bedrock or Vertex, or
# the Bedrock runtime whatever the model (its model id is often a variable; a non-Claude Bedrock call
# is exempted with its reason). What is searched: tracked files with a code extension (CODE_EXT),
# Dockerfiles, and GitHub workflow and action files. Never prose (Markdown, register YAML), which
# mentions the host without calling it, and never dependency manifests: the importing code is what
# gets a row. Reading ANTHROPIC_API_KEY alone is not a call.
#
# Fails on: a matching file with no row; a row or exemption whose file is gone or no longer matches
# (a stale row claims a review of code that is not there); a row missing owner, sends or a valid
# reviewed_on; an exemption with no reason; a path listed twice. Warns on a review over a year old.
#
# Exit 0 = clean, 1 = findings, 2 = bad invocation, an unlistable checkout, or a registry that is not
# a map.

require "yaml"
require "date"
require "open3"

PATTERNS = {
  "the Anthropic API host"   => /api\.anthropic\.com/i,
  "an Anthropic SDK"         => %r{@anthropic-ai/[\w-]+|\brequire\s*\(?\s*["']anthropic\b|\bAnthropic::Client\b|^\s*from\s+(anthropic|claude_agent_sdk)\b|^\s*import\s+[\w., ]*\b(anthropic|claude_agent_sdk)\b|github\.com/anthropics/anthropic-sdk-go}i,
  "an AI framework's Claude" => %r{@ai-sdk/anthropic|langchain[_-]anthropic|@langchain/anthropic|\bChatAnthropic\b}i,
  "a Claude GitHub Action"   => %r{anthropics/claude-[\w-]+}i,
  "the headless Claude CLI"  => /(^|[\s;&|(`"'])claude\b[^\n]*?\s(-p|--print)\b/,
  "Claude on Bedrock/Vertex" => %r{\banthropic\.claude-|publishers/anthropic/|\bclaude-[\w.-]+@\d{8}\b}i,
  "the Bedrock runtime"      => %r{bedrock-runtime|BedrockRuntime|\binvoke_model\b|\bInvokeModel\b|\bconverse(_stream)?\s*\(\s*modelId}i,
}.freeze

CODE_EXT   = %w[.rb .erb .py .ipynb .js .mjs .cjs .ts .mts .cts .tsx .jsx .vue .svelte .astro .sh .bash .ps1
                .go .java .kt .cs .php .rs .swift .tf].freeze
REQUIRED   = %w[path owner sends reviewed_on].freeze
STALE_DAYS = 365

root = Dir.pwd
args = ARGV.dup
while (a = args.shift)
  case a
  when "--root" then root = File.expand_path(args.shift.to_s)
  else
    warn "check_ai_call_sites: unknown argument #{a}"
    exit 2
  end
end

def code_file?(rel)
  return true if rel.match?(%r{\A\.github/(workflows|actions)/.+\.ya?ml\z})
  return true if File.basename(rel).start_with?("Dockerfile")
  CODE_EXT.include?(File.extname(rel).downcase)
end

# Tracked files when the tree is a git checkout; every file otherwise (a test fixture directory). A
# checkout git can't list (a container's "dubious ownership", say) is an error, never a quiet fall
# back to scanning node_modules and untracked files.
def candidate_files(root)
  if File.exist?(File.join(root, ".git"))
    out, err, st = Open3.capture3("git", "-C", root, "ls-files", "-z")
    return out.split("\0") if st.success?
    warn "check_ai_call_sites: git ls-files failed in #{root}: #{err.strip}"
    exit 2
  end
  Dir.chdir(root) do
    Dir.glob("**/*", File::FNM_DOTMATCH).reject { |p| p.start_with?(".git/") || File.directory?(p) }
  end
end

def call_patterns_in(path)
  text = File.binread(path).force_encoding("UTF-8").scrub
  PATTERNS.select { |_, re| text.match?(re) }.keys
rescue Errno::ENOENT, Errno::EISDIR
  []
end

reg_path = File.join(root, "ai-call-sites.yml")
reg = File.file?(reg_path) ? YAML.safe_load(File.read(reg_path, mode: "r:BOM|UTF-8"), permitted_classes: [Date]) : {}
reg ||= {}
unless reg.is_a?(Hash)
  warn "check_ai_call_sites: ai-call-sites.yml must be a map"
  exit 2
end
sites  = Array(reg["sites"])
exempt = Array(reg["exempt"])

fails = []
warns = []

# This file is the pattern list, so it is the one file that matches without calling anything. It is
# compared by identity, not by path text, so a drive-letter or case difference can't make it flag itself.
found = {}
candidate_files(root).each do |rel|
  path = File.join(root, rel)
  next if !code_file?(rel) || File.identical?(path, __FILE__)
  hits = call_patterns_in(path)
  found[rel] = hits unless hits.empty?
end

sites.each_with_index do |s, i|
  unless s.is_a?(Hash)
    fails << "ai-call-sites.yml sites[#{i}]: must be a map"
    next
  end
  label = s["path"] ? "ai-call-sites.yml `#{s['path']}`" : "ai-call-sites.yml sites[#{i}]"
  REQUIRED.each { |k| fails << "#{label}: missing `#{k}`" if s[k].to_s.strip.empty? }
  next unless (d = s["reviewed_on"])
  date = d.is_a?(Date) ? d : (Date.iso8601(d.to_s) rescue nil)
  if date.nil?
    fails << "#{label}: reviewed_on `#{d}` is not a YYYY-MM-DD date"
  elsif date > Date.today
    fails << "#{label}: reviewed_on #{date} is in the future"
  elsif (Date.today - date).to_i > STALE_DAYS
    warns << "#{label}: last reviewed #{date}, over a year ago — re-read the file against `sends`"
  end
end
exempt.each_with_index do |e, i|
  unless e.is_a?(Hash) && !e["path"].to_s.strip.empty?
    fails << "ai-call-sites.yml exempt[#{i}]: needs a `path`"
    next
  end
  fails << "ai-call-sites.yml exempt `#{e['path']}`: missing `reason`" if e["reason"].to_s.strip.empty?
end

listed = Hash.new(0)
(sites + exempt).each { |r| listed[r["path"].to_s] += 1 if r.is_a?(Hash) && !r["path"].to_s.strip.empty? }
listed.each { |p, n| fails << "ai-call-sites.yml: `#{p}` is listed #{n} times" if n > 1 }

found.each do |rel, hits|
  next if listed.key?(rel)
  fails << "#{rel}: calls Claude (#{hits.join(', ')}) but has no row in ai-call-sites.yml — " \
           "add one saying what its prompts carry (owner, sends, reviewed_on)"
end
listed.each_key do |p|
  next if found.key?(p)
  why = File.file?(File.join(root, p)) ? "no longer matches a call pattern" : "does not exist"
  fails << "ai-call-sites.yml `#{p}`: the file #{why} — remove the row"
end

warns.each { |w| puts "  WARN  #{w}" }
fails.each { |f| puts "  FAIL  #{f}" }
if fails.empty?
  puts "OK — #{sites.size} registered AI call site(s), #{exempt.size} exemption(s), #{found.size} matching file(s)."
  exit 0
end
puts
puts "#{fails.size} finding(s). See standards/context-boundary.md, \"Three checkpoints\"."
exit 1
