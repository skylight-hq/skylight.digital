#!/usr/bin/env ruby
# frozen_string_literal: true
# Site-data conformance (skylight-web WEB-A-154, WEB-A-158, under skylight-hub HUB-D-286): the
# pages render company and people figures from data, and this holds that data together.
#   ruby scripts/check_site_data.rb
#
# 1. Every `{% include benefit.html id="..." %}` names a figure the pinned People Ops export
#    (_data/upstream/public-benefits.yml) has. Liquid renders a missing figure as an empty string,
#    so without this a renamed token would ship a page reading "up to  of your salary".
# 2. `state_count` in _config.yml equals the states in that export's work_locations (the count
#    without DC). The about, join and brand pages read site.state_count; the care package owns it.
# 3. Every project-work stub in _project_team_members/ is for a person in _data/team.yml, the one
#    roster (by its file name, which is what the layout reads; its name: must match), except the two
#    below with their reason.
# 4. Every `{% include benefit-line.html has="..." %}` matches exactly one line of the export's
#    items, the care package's wording that every job posting uses (the join page, WEB-A-154).
# 5. Every `{% include quote-byline.html person="..." %}` names a roster person with a full_name and
#    a position, so a quote byline shows the title the roster holds today (WEB-A-158).
# 6. pages/careers/pathways/ has one stub per practice with a career pathway in the pinned export
#    _data/upstream/public-career-pathways.yml, no more and no fewer, and each stub's title is the
#    practice's name and its description the first sentence of the practice's mission (WEB-A-156).
#
# employee_count in _config.yml has no upstream source yet: it is checked for its as-of date only.
require "yaml"
require "date"

ROOT = File.expand_path("..", __dir__)
def load(rel) = YAML.safe_load(File.read(File.join(ROOT, rel), encoding: "UTF-8"), permitted_classes: [Date])

# Stubs that name someone the roster does not, each with why.
NOT_ON_ROSTER = {
  "jonathan-chang" => "project-work stub only; the roster has no record",
  "leslie-garner-franklin" => "project-work stub only; the roster spells the person lesley-garner-franklin",
}.freeze

errors = []
benefits = load("_data/upstream/public-benefits.yml")
figure_ids = benefits.fetch("figures").map { |f| f["id"] }

items = benefits.fetch("items")
team = load("_data/team.yml")

Dir.glob("{pages,_includes,_layouts}/**/*.{html,md}", base: ROOT).sort.each do |rel|
  text = File.read(File.join(ROOT, rel), encoding: "UTF-8")
  text.scan(/\{%-?\s*include\s+benefit\.html\s+id="([^"]+)"/).flatten.each do |id|
    errors << "#{rel}: benefit.html id #{id} is not a figure in _data/upstream/public-benefits.yml" unless figure_ids.include?(id)
  end
  text.scan(/\{%-?\s*include\s+benefit-line\.html\s+has="([^"]+)"/).flatten.each do |has|
    hits = items.count { |i| i.include?(has) }
    errors << "#{rel}: benefit-line.html has=#{has.inspect} matches #{hits} care-package lines, not exactly one" unless hits == 1
  end
  text.scan(/\{%-?\s*include\s+quote-byline\.html\s+person="([^"]+)"/).flatten.each do |slug|
    person = team.find { |p| p["name"] == slug }
    next if person && !person["full_name"].to_s.empty? && !person["position"].to_s.empty?

    errors << "#{rel}: quote-byline.html person #{slug} is not in _data/team.yml with a full_name and position"
  end
end

pathways = load("_data/upstream/public-career-pathways.yml")
ported = pathways.fetch("pillars").flat_map { |p| p["practice_areas"] }.select { |a| a["pathway_status"] == "ported" }
stubs = Dir.glob("pages/careers/pathways/*.md", base: ROOT).sort.to_h do |rel|
  [rel, YAML.safe_load(File.read(File.join(ROOT, rel), encoding: "UTF-8")[/\A---
(.*?)
---/m, 1].to_s)]
end
ported.each do |area|
  rel = "pages/careers/pathways/#{area['id']}.md"
  fm = stubs[rel]
  next errors << "#{rel} is missing: #{area['name']} has a career pathway in the export" unless fm

  errors << "#{rel}: practice: is #{fm['practice'].inspect}, not #{area['id']}" unless fm["practice"] == area["id"]
  errors << "#{rel}: title is #{fm['title'].inspect}, not the practice name #{area['name'].inspect}" unless fm["title"] == area["name"]
  sentence = area["mission"].to_s[/\A.+?\.(?=\s|\z)/m].to_s
  errors << "#{rel}: description is not the first sentence of the practice's mission" unless fm["description"] == sentence
end
(stubs.keys - ported.map { |a| "pages/careers/pathways/#{a['id']}.md" }).each do |rel|
  errors << "#{rel}: no practice with a career pathway in the export has this id: remove the stub"
end

config = load("_config.yml")
states = benefits.dig("work_locations", "states")
unless config["state_count"] == states
  errors << "_config.yml state_count is #{config['state_count'].inspect} but the care package's work_locations.states is #{states.inspect}: copy the care package's figure"
end
errors << "_config.yml employee_count_as_of is missing" unless config["employee_count_as_of"].to_s.match?(/\A\d{4}-\d{2}-\d{2}\z/)

roster = team.map { |p| p["name"] }
Dir.glob("_project_team_members/*.md", base: ROOT).sort.each do |rel|
  # The layout (employee_filter.html) finds the person by the file name, so that is what must match.
  slug = File.basename(rel, ".md").tr("_", "-")
  name = File.read(File.join(ROOT, rel), encoding: "UTF-8")[/^name:\s*(\S+)/, 1]
  errors << "#{rel}: name: #{name.inspect} does not match the file name (#{slug})" unless name == slug
  next if roster.include?(slug) || NOT_ON_ROSTER.key?(slug)

  errors << "#{rel}: #{slug} is not in _data/team.yml (add the person there, or list the stub in NOT_ON_ROSTER with why)"
end
NOT_ON_ROSTER.each_key do |name|
  errors << "NOT_ON_ROSTER lists #{name}, which is now in _data/team.yml: remove the exception" if roster.include?(name)
end

if errors.empty?
  puts "check_site_data: OK (#{figure_ids.size} benefit figures, state_count #{states}, roster stubs conform, #{ported.size} career pathways)"
else
  warn errors.map { |e| "  - #{e}" }.join("\n")
  abort "check_site_data: #{errors.size} problem(s)"
end
