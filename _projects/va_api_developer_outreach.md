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
tags: [microconsulting, apis, open government, veterans, kin lane, chris cairns]
excerpt: A practical developer-outreach playbook for the VA's API platform, drawn from a decade of API research and interviews with seven leading public- and private-sector teams — and published in the open for any agency to reuse.
project_members:
  - kin-lane
  - chris-cairns
technologies:
  - Zoom
  - Google Workspace
  - Git / GitHub
practices:
  - Primary research
  - Secondary research
  - Research analysis and synthesis
news_posts:
project_url: https://github.com/skylight-hq/VA-Micropurchase-Repo/blob/master/2018-07-05_Developer_Outreach/Deliverables/Skylight/skylight_api_developer_outreach_writeup.md
project_cta: See the report
source_code_url:
---

{% capture summary %}
As part of our broader work supporting the U.S. Department of Veterans Affairs (VA) API platform, we delivered a developer-outreach playbook for the team responsible for getting agencies, vendors, and third-party developers building on the VA's APIs. Drawing on a decade of Skylight's primary and secondary API research — plus interviews with seven public- and private-sector teams running effective programs — the report turned what works into something the VA could put into practice immediately. We published it in the open with no copyright, so any agency facing the same challenge could reuse it.
{% endcapture %}

{% capture challenge %}
The VA's API Platform Management team had been steadily publishing APIs that exposed benefits, claims, health, and facilities data — the digital surface area through which veterans, family members, and the organizations that serve them interact with the agency. Each new API was a chance to extend that surface, but only if external developers actually built on it.

The team knew that shipping APIs and waiting wouldn't be enough. Effective developer outreach is its own discipline — funnel metrics, sandbox environments, documentation patterns, ongoing engagement — and most federal agencies don't have a playbook for it. The VA team needed practical guidance from teams that had already worked through the problem, not abstract theory.

The engagement had to fit a federal micropurchase: under $10,000, delivered fast. That ruled out a long discovery phase. We needed to draw on research that already existed and go directly to teams who had already figured this out.
{% endcapture %}

{% capture solution %}
With the budget and timeline fixed, the question was how to produce something the VA could use right away. The answer was to synthesize what already worked elsewhere rather than invent it — and to organize the work around four moves built to maximize depth of insight per dollar.

**First, we mined a decade of existing API research.** Skylight had accumulated more than 3,000 articles on API design, governance, and adoption from a decade of primary and secondary research. Starting from that base meant the VA team got the benefit of years of accumulated knowledge in days, not months — and the playbook stood on a foundation broader than any single engagement could produce on its own.

**Next, we went directly to teams running effective outreach programs.** We interviewed seven public- and private-sector organizations — including the Centers for Medicare & Medicaid Services' Blue Button API program, the U.S. Census Bureau, and OpenFEC — about how they attracted, supported, and retained developers. Each interview surfaced concrete practices the VA could borrow rather than reinvent.

**Then we synthesized the research into a practical playbook**, organized by topic area: funnel metrics that tell a team whether outreach is working, developer sandbox environments that lower the cost of trying an API, documentation patterns that get developers from sign-up to first successful call, and the engagement rhythms that turn first calls into sustained adoption. Each section was specific enough to act on.

**Finally, we published the report in the open under no copyright.** The VA's challenge isn't unique to the VA. Any agency standing up an API program faces the same question of how to drive adoption — so the playbook ships as a reusable artifact, not a one-client deliverable.
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
