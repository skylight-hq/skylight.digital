---
layout: default
title_tag: Veterans Affairs
title: Expanding the adoption of APIs
permalink: /work/experience/va-api-developer-outreach/
redirect_from:
  - /work/va-api-developer-outreach/
image: /img/projects/va_api_developer_outreach/api-developer-outreach.svg
image_description: Someone using a megaphone to spread the word about APIs.
feature_image:
feature_image_description:
feature_image_shadow:
order: 3800
display: true
tags:
  - "Microconsulting"
  - "APIs"
  - "Open government"
  - "Veterans"
excerpt: A practical developer-outreach playbook for the VA's API platform, drawn from a decade of API research and interviews with seven leading public- and private-sector teams — and published in the open for any agency to reuse.
project_members:
  - kin-lane
  - chris-cairns
technologies:
  - "Zoom"
  - "Google Workspace"
  - "Git"
  - "GitHub"
practices:
  - "Primary research"
  - "Secondary research"
  - "Research analysis and synthesis"
news_posts:
project_url: https://github.com/skylight-hq/VA-Micropurchase-Repo/blob/master/2018-07-05_Developer_Outreach/Deliverables/Skylight/skylight_api_developer_outreach_writeup.md
project_cta: See the report
source_code_url:
---

{% capture summary %}
We delivered a developer-outreach playbook for the U.S. Department of Veterans Affairs (VA) API platform team — part of our broader VA API engagement. The team's job is to help agencies, vendors, and third-party developers build on the VA's APIs. The report drew on a decade of Skylight research plus interviews with seven leading teams. We published it openly so any agency facing the same challenge could reuse it.
{% endcapture %}

{% capture challenge %}
The VA's API Platform Management team had been steadily publishing APIs that exposed benefits, claims, health, and facilities data. Together those APIs formed the digital surface area through which veterans, family members, and the organizations that serve them interact with the agency. Each new API was a chance to extend that surface — but only if external developers actually built on it.

The team knew that shipping APIs and waiting wouldn't be enough. Effective developer outreach is its own discipline — funnel metrics, sandbox environments, documentation patterns, ongoing engagement — and most federal agencies don't have a playbook for it. The VA team needed practical guidance from teams that had already worked through the problem, not abstract theory.

The engagement had to fit a federal micropurchase: under $10,000, delivered fast. That ruled out a long discovery phase. We needed to draw on research that already existed and go directly to teams who had already figured this out.
{% endcapture %}

{% capture solution %}
With the budget and timeline fixed, the question was how to produce something the VA could use right away. The answer: synthesize what already worked elsewhere rather than invent it. We organized the work around four moves, each built to maximize depth of insight per dollar.

**First, we mined a decade of existing API research.** Skylight had accumulated more than 3,000 articles on API design, governance, and adoption from years of primary and secondary research. Starting from that base, the VA team got the benefit of accumulated knowledge in days, not months. The playbook stood on a foundation broader than any single engagement could produce alone.

**Direct interviews filled in what the research couldn't.** We talked with seven public- and private-sector organizations about how they attracted, supported, and retained developers, including the Centers for Medicare & Medicaid Services (CMS) Blue Button API program, the U.S. Census Bureau, and OpenFEC. Each interview surfaced concrete practices the VA could borrow rather than reinvent.

We then synthesized the research into a practical playbook. It covered four topic areas, each specific enough to act on:

- **Funnel metrics** that tell a team whether outreach is working
- **Developer sandbox environments** that lower the cost of trying an API
- **Documentation patterns** that get developers from sign-up to first successful call
- **Engagement rhythms** that turn first calls into sustained adoption

**We published the report in the open under no copyright.** The VA's challenge isn't unique to the VA. Any agency standing up an API program faces the same question of how to drive adoption. So the playbook ships as a reusable artifact, not a one-client deliverable.
{% endcapture %}

{% capture results %}
- **Delivered a complete developer-outreach playbook under the $10,000 federal micropurchase threshold**, demonstrating that high-impact research engagements can fit inside a fast, low-friction procurement vehicle
- **Drew on a decade of API research and seven interviewed organizations**, including the CMS Blue Button API program, the U.S. Census Bureau, and OpenFEC, to give the VA a synthesis far broader than a single engagement could produce
- **Organized the playbook around concrete practice areas** — funnel metrics, developer sandboxes, documentation patterns, ongoing engagement — specific enough for the VA team to implement directly
- **Published the report in the open with no copyright**, making it a reusable artifact for any agency facing the same adoption challenge
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
