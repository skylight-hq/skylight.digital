# Case-study taxonomy migration — notes + sample mappings

This file accompanies the new `_data/technologies.yml` and `_data/practices.yml` canonical lists. It documents:

1. **Three sample case-study migrations** showing how existing free-text frontmatter maps to canonical values.
2. **General mapping rules** that apply to the full 64-case-study migration.
3. **Known ambiguities** that need editorial review.

The full per-case-study migration is tracked in [`skylight-hub/migrations/archive/2026-05-27-case-study-taxonomy-rationalization.md`](https://github.com/skylight-hq/skylight-hub/blob/main/migrations/archive/2026-05-27-case-study-taxonomy-rationalization.md).

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

## Known drops — values to remove during Phase 3 migration

Triaged from the full-corpus run of `scripts/map_case_study_taxonomies.rb` (skylight-hub) on 2026-05-26. These specific values do **not** map to any canonical and should be dropped from the case study's frontmatter rather than kept as free-text. Phase 3 reviewers can apply these decisions in bulk without per-case-study judgment:

### Drop from `technologies:`

| Value | Reason |
|---|---|
| `"APIs"` (×18) | Capability tag misfield'd into technologies. Already covered by the `apis` tag from `filters.yml`; drop from `technologies:`. |
| `"Apple"` | Vendor name as tech; not a technology. |
| `"Existing technology stack"` | Non-answer. |
| `"Temporary URLs"` | Concept, not a technology. |
| `"Custom spidering script"` | Description, not a technology. |
| `"Instructional media"` | Category, not a technology. |
| `"Automated testing frameworks"` | Category, not a specific framework. |
| `"appear.in"` | Dead product (shut down 2022). |
| `"Lever (recruiting software)"`, `"Workable (recruiting software)"` | HR tooling. Drop unless the case study is HR-specific. |
| `"Respondent"` | User-research recruiting service. Utility-style; not engagement tech. |
| `"SmartyStreets"`, `"Experian"` | Third-party utility services (address-verification, identity). Drop unless the case study foregrounds them. |
| `"SurveyMonkey"`, `"Adobe Connect"`, `"Chrome Web Developer Toolkit"`, `"Colour Contrast Analyzer"`, `"Google Accessibility Audit Tools"`, `"Wave"` | Generic utility/diagnostic tools, not engagement-defining tech. |
| `"Excel"` | Tooling noise unless Excel was the actual engagement deliverable (rare). |
| `"AJAX"`, `"JSON"`, `"IoT"` | Categories/patterns, not specific technologies. (Capabilities like "apis" / "data & analytics" cover the same ground.) |
| `"Touchpoints"` | Generic; not a specific tool. |
| `"Microsoft Azure (Key Vault, Container Apps, WAF, Gateways, App Service)"` | Composite-with-parenthetical. Keep `Microsoft Azure`; drop the parenthetical service list. |
| `"React in TypeScript with Apollo"` | Prose composite. Split into `React`, `TypeScript`, `Apollo` per the composite→atomic rule. |

### Drop from `practices:`

| Value | Reason |
|---|---|
| `"Web and native apps"` (×5) | Deliverable type, not a practice. |
| `"Third-party integration"` | Engineering concept, not a Skylight practice. |
| `"Google interview practices"` | Vague + Google-specific; not a practice we own. |
| `"Civic crowdsourcing"` | Project-specific phrasing; not a generalizable practice. |
| `"Oral presentations"` | Generic activity, not a practice. |
| `"Testing"` | Too generic. Specific testing types (load testing, QA testing) get their own entries if needed. |
| `"Intelligent protocol system development"` | Project-specific phrasing; not a generalizable practice. |
| `"Artificial data"` | Means synthetic data; too narrow to be a practice. |
| `"Spidering"` | Engineering technique, not a Skylight practice. |

### Aliases added 2026-05-26 (no longer surface as unknown after this PR)

- `User research` gains aliases for: `Qualitative research`, `Qualitative`, `Quantitative research` (mixed-case), `Quantitative analysis`, `Observation`, `Documentation review`, `User test scenarios`, `KJ technique` — all generic-method labels for what user-research already covers.
- `Design system` gains alias: `User interface component inventory`.
- `Performance management` gains alias: `Performance profiles`.

### Tech entries added 2026-05-26 (no longer surface as unknown after this PR)

`NGINX`, `Metabase`, `Jasmine`, `Karma`, `Supertest`, `tfsec`, `XMPP`, `API Umbrella`, `Caseworthy`, `Rhapsody`.

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

- Strategic proposal: [`skylight-hub/plans/archived/adopted/0005-website-filter-rationalization.md`](https://github.com/skylight-hq/skylight-hub/blob/main/plans/archived/adopted/0005-website-filter-rationalization.md)
- Operational migration plan: [`skylight-hub/migrations/archive/2026-05-27-case-study-taxonomy-rationalization.md`](https://github.com/skylight-hq/skylight-hub/blob/main/migrations/archive/2026-05-27-case-study-taxonomy-rationalization.md)
- Filters pack plan: [`skylight-hub/migrations/archive/2026-05-22-website-filters-pack.md`](https://github.com/skylight-hq/skylight-hub/blob/main/migrations/archive/2026-05-22-website-filters-pack.md)
