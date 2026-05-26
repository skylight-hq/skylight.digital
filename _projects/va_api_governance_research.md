---
layout: default
title_tag: Veterans Affairs
title: Managing APIs successfully at scale
permalink: /work/experience/va-api-governance-research/
redirect_from:
  - /work/va-api-governance-research/
image: /img/projects/va_api_governance_research/api-governance.svg
image_description: A forklift operator lifting API-labeled containers.
feature_image:
feature_image_description:
feature_image_shadow:
order: 3400
display: true
tags:
  - "Microconsulting"
  - "APIs"
  - "Open government"
  - "Veterans"
excerpt: A practical API governance playbook for the VA's API platform, drawn from a decade of API research and interviews with seven leading public- and private-sector teams — and published in the open for any agency to reuse.
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
project_url: https://github.com/skylight-hq/VA-Micropurchase-Repo/blob/master/2018-06-06_Governance_%20Models_in_Public_and_Private_Sector/Deliverables/Skylight/skylight_api_governance_research_report.md
project_cta: See the report
source_code_url:
---

{% capture summary %}
We delivered an API governance playbook for the U.S. Department of Veterans Affairs (VA) API platform team — part of our broader VA API engagement. The team was about to scale up the number of APIs across the enterprise and needed a way to manage them as a whole. The report drew on a decade of Skylight research plus interviews with seven leading teams. We published it openly so any agency facing the same challenge could reuse it.
{% endcapture %}

{% capture challenge %}
The VA's API Platform Management team was about to scale up. The portfolio already covered benefits, claims, health, and facilities data — and the roadmap called for many more APIs across the enterprise. Without a clear way to govern that portfolio, each new API would land with its own ownership model and standards. The cost of that mismatch would grow with every release.

API governance is real work. Assigning ownership, setting standards, managing versions, and aligning across business units add up to a discipline of their own. But it's barely written about in public. Teams running effective programs have mostly figured it out through trial and error. The VA team needed practical guidance from people who had already done that work, not abstract frameworks.

The engagement had to fit a federal micropurchase: under $10,000, delivered fast. That ruled out original primary research at scale. We needed to draw on what already existed and go directly to teams running effective governance programs.
{% endcapture %}

{% capture solution %}
With the budget and timeline fixed, the question was how to produce something the VA could use right away. The answer: synthesize what already worked elsewhere rather than invent it. We organized the work around four moves.

**First, we mined a decade of existing API research.** Skylight had built up more than 3,000 articles on API design, governance, and adoption from years of primary and secondary research. Starting from that base, the VA team got the benefit of years of work in days, not months. The playbook stood on a foundation broader than any single engagement could produce alone.

**Direct interviews built on the research.** We talked with seven public- and private-sector organizations about how they assigned ownership, set standards, and managed APIs at scale. The set spanned both sectors and countries, including the UK's Government Digital Service, HM Revenue & Customs, and Capital One.

We then synthesized the research into a practical playbook. It covered the governance dimensions that show up consistently in effective programs:

- **Organizational models** for where API governance lives and who owns it
- **Standards and design conventions** that make APIs feel consistent across teams
- **Operational practices** like versioning and the routines that keep governance working as the portfolio grows

**We published the report in the open under no copyright.** The VA's challenge isn't unique to the VA. Any federal agency or large organization scaling an API program faces the same governance questions. So the playbook ships as a reusable artifact, not a one-client deliverable.
{% endcapture %}

{% capture results %}
- **Delivered a complete API governance playbook under the $10,000 federal micropurchase threshold**, showing that high-impact research can fit a fast, low-friction procurement vehicle
- **Drew on a decade of API research and seven interviewed organizations**, including the UK's Government Digital Service, HM Revenue & Customs, and Capital One, to give the VA a synthesis far broader than a single engagement could produce
- **Built the playbook around clear governance dimensions** — organizational models, standards, and operational practices — specific enough for the VA team to use directly
- **Published the report in the open with no copyright**, making it a reusable artifact for any agency facing the same scaling challenge
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
