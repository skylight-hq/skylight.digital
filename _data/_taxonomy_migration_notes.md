# Case-study taxonomy migration — notes + sample mappings

This file accompanies the new `_data/technologies.yml` and `_data/practices.yml` canonical lists. It documents:

1. **Three sample case-study migrations** showing how existing free-text frontmatter maps to canonical values.
2. **General mapping rules** that apply to the full 64-case-study migration.
3. **Known ambiguities** that need editorial review.

The full per-case-study migration is tracked in [`skylight-hub/migrations/case-study-taxonomy-rationalization.md`](https://github.com/skylight-hq/skylight-hub/blob/main/migrations/case-study-taxonomy-rationalization.md).

## General rules

| Rule | Example |
|---|---|
| Composite → atomic | `"JavaScript / React / TypeScript"` → 3 entries: `JavaScript`, `React`, `TypeScript` |
| Vendor noise → canonical | `"AWS (Cloud One)"` → `Amazon Web Services` (drop the Cloud One parenthetical) |
| Drop non-answers | `"Existing technology stack"`, `"Apple"`, `"Custom spidering script"` → remove |
| Drop dead products | `"appear.in"` → remove (product shut down) |
| Drop HR tooling unless HR-relevant | `"Lever (recruiting software)"`, `"Workable (recruiting software)"` → remove unless the case study is specifically about recruiting |
| Consolidate near-duplicates via aliases | `"Accessibility"` / `"Accessibility design"` / `"Accessibility review"` / `"Accessible design"` → `Accessibility design` (canonical) |
| Move person names out of tags | `tags: [..., "chris cairns", ...]` → `project_members:` field (already exists; tag is duplicate) |
| Drop person names already in project_members | If "chris-cairns" is in `project_members:`, "chris cairns" gets dropped from `tags:` |
| Tags should be topic-only | After migration, `tags:` contains capability / mission / topic — no person names |

## Sample 1 — `_projects/18f_consulting.md`

Most problematic case study: ancient, full of person names in tags, "Apple" as a tech, dead products.

**Before:**

```yaml
tags:
  - "transformation"
  - "chris cairns"
  - "robert read"
technologies:
  - "Lever (recruiting software)"
  - "Google Workspace"
  - "Trello"
  - "Slack"
  - "Mural"
  - "appear.in"
  - "cloud.gov / Amazon Web Services"
  - "Federalist / GitHub Pages"
  - "Jekyll"
  - "Git / GitHub"
  - "Apple"
practices:
  - "Servant leadership"
  - "Team of teams"
  - "Management by objectives"
  - "Schedule A(r) hiring authority"
  - "Civic recruiting"
  - "Performance profiles"
  - "Google interview practices"
  - "Open innovation"
  - "Virtual collaboration"
  - "Knowledge management"
  - "Peer mentoring and coaching"
  - "Continuous improvement"
```

**After:**

```yaml
tags:
  - "transformation"
technologies:
  - "Google Workspace"
  - "Trello"
  - "Slack"
  - "Mural"
  - "cloud.gov"
  - "Amazon Web Services"
  - "GitHub Pages"
  - "Jekyll"
  - "Git"
  - "GitHub"
practices:
  - "Servant leadership"
  - "Team of teams"
  - "Management by objectives"
  - "Schedule A(r) hiring authority"
  - "Civic recruiting"
  - "Performance management"
  - "Open-source development"
  - "Virtual collaboration"
  - "Knowledge management"
  - "Coaching and training"
  - "Continuous improvement"
```

**Decisions:**

- Dropped person-name tags (already in `project_members:`).
- Dropped `"Lever (recruiting software)"` — HR tooling, not engagement tech.
- Dropped `"appear.in"` — dead product.
- Dropped `"Apple"` — not a technology.
- Split `"cloud.gov / Amazon Web Services"` into both clouds.
- Split `"Federalist / GitHub Pages"` into both. (Federalist was rebranded; canonical is `GitHub Pages`.)
- Split `"Git / GitHub"` into Git + GitHub.
- Mapped `"Performance profiles"` → `Performance management` (closest canonical).
- Mapped `"Google interview practices"` → dropped (too vague + Google-specific).
- Mapped `"Open innovation"` → `Open-source development` (the canonical's aliases include this).
- Mapped `"Peer mentoring and coaching"` → `Coaching and training` (consolidated alias).

## Sample 2 — `_projects/cdc_simplereport.md`

Modern engagement, mostly clean composites.

**Before (excerpt):**

```yaml
technologies:
  - "HTML / CSS"
  - "Storybook"
  - "Chromatic"
  - "U.S. Web Design System"
  - "Figma"
  - "Mural"
  - "Respondent"
  - "React in TypeScript with Apollo"
  - "Nightwatch"
  - "Cypress"
  - "Lighthouse"
  - "Java / Spring Boot"
  - "GraphQL"
  - "Liquibase"
  - "SmartyStreets"
  - "PostgreSQL"
  - "Terraform"
  - "Microsoft Azure"
  - "Docker"
  - "Okta"
  - "Experian"
  - "Twilio"
  - "SendGrid"
  - "Git / GitHub"
  - "ZenHub"
  - "SonarCloud"
  - "Dependabot"
  - "Snyk"
```

**After (excerpt):**

```yaml
technologies:
  - "HTML"
  - "CSS"
  - "Storybook"
  - "Chromatic"
  - "U.S. Web Design System"
  - "Figma"
  - "Mural"
  - "React"
  - "TypeScript"
  - "Apollo"
  - "Nightwatch"
  - "Cypress"
  - "Lighthouse"
  - "Java"
  - "Spring Boot"
  - "GraphQL"
  - "Liquibase"
  - "PostgreSQL"
  - "Terraform"
  - "Microsoft Azure"
  - "Docker"
  - "Okta"
  - "Twilio"
  - "SendGrid"
  - "Git"
  - "GitHub"
  - "ZenHub"
  - "SonarCloud"
  - "Dependabot"
  - "Snyk"
```

**Decisions:**

- Split `"HTML / CSS"` → HTML + CSS.
- Split `"React in TypeScript with Apollo"` → React + TypeScript + Apollo.
- Split `"Java / Spring Boot"` → Java + Spring Boot.
- Split `"Git / GitHub"` → Git + GitHub.
- Dropped `"Respondent"` — user-research recruiting service, not engagement tech (HR tooling, like Lever).
- Dropped `"SmartyStreets"` — utility service that doesn't merit a tag; revisit if the canonical list grows to include third-party address-verification tools.
- Dropped `"Experian"` — same logic (third-party identity service used utility-style).

## Sample 3 — `_projects/usaf_gearfit.md`

Practice-heavy; gold-standard case study; tags include many person names.

**Before (excerpt — tags only):**

```yaml
tags:
  - "service delivery"
  - "research & design"
  - "product management"
  - "software delivery"
  - "legacy modernization"
  - "devops"
  - "cloud & platforms"
  - "data & analytics"
  - "apis"
  - "security & privacy"
  - "defense"
  - "air force"
  - "mical nobel"
  - "phoebe espiritu"
  - "lesley evans"
  - "adam weber"
  - "nick clyde"
  - "mitchell sipus"
  - "maya benari"
  - "kari hodges"
```

**After:**

```yaml
tags:
  - "service delivery"
  - "research & design"
  - "product management"
  - "software delivery"
  - "legacy modernization"
  - "devops"
  - "cloud & platforms"
  - "data & analytics"
  - "apis"
  - "security & privacy"
  - "defense"
  - "air force"
```

**Decisions:**

- Dropped all 8 person-name tags. Authors are already captured in `project_members:`; tags are topic-only after this rationalization.
- All other tags kept — they're capabilities + mission areas (matches the cleaned filters.yml taxonomy).

## Known ambiguities — case studies to surface for editorial review

The full 64-case-study migration will surface ~5–10 cases that need engagement-lead input. From a quick scan:

| Case study | Ambiguity |
|---|---|
| `18f_consulting.md` | "Performance profiles" practice — kept as-is or mapped to performance-management? Above I mapped; portfolio owner should confirm. |
| Several CDC engagements | Tech list includes parenthetical "(Cloud One)" — DOD context, but these are CDC studies. Likely copy-paste errors? Worth a quick author check. |
| Several with "AWS / Terraform" composite | Trivial split, but the composite suggests the author meant "AWS, deployed via Terraform" — same as having both separately. Confirm. |
| Older studies with "Excel" | Drop as tooling noise, or keep? Depends on whether Excel was the engagement deliverable medium (rare but possible). |

## Validation pattern (after migration)

Once these case studies migrate AND the linter extension lands in skylight-hub, every `_projects/*.md` will be checked:

- Each `technologies:` entry must match a canonical `display_name` or `alias` in `_data/technologies.yml`
- Same for `practices:` → `_data/practices.yml`
- Same for `tags:` → `_data/filters.yml` (or a new `_data/tags.yml` if tags get their own file post-cleanup)

Unknown values become blocking linter findings, forcing a deliberate canonical-list update (adding a new entry) rather than silent drift.

## Cross-references

- Strategic proposal: [`skylight-hub-proposals-resolve/proposals/active/website-filter-rationalization.md`](https://github.com/skylight-hq/skylight-hub/blob/main/skylight-hub-proposals-resolve/proposals/active/website-filter-rationalization.md)
- Operational migration plan: [`skylight-hub/migrations/case-study-taxonomy-rationalization.md`](https://github.com/skylight-hq/skylight-hub/blob/main/migrations/case-study-taxonomy-rationalization.md)
- Filters pack plan: [`skylight-hub/migrations/website-filters-pack.md`](https://github.com/skylight-hq/skylight-hub/blob/main/migrations/website-filters-pack.md)
