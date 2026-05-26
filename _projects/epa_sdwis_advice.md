---
layout: default
title_tag: "Environmental Protection Agency"
title: "Helping a modernization program chart a new path forward"
permalink: /work/experience/epa-sdwis-advice/
image: /img/projects/epa_sdwis_advice/epa-sdwis-advice.svg
image_description: "People standing around an oversized glass of water and inspecting it."
feature_image:
feature_image_description:
feature_image_shadow:
order: 3700
display: true
tags:
  - "Microconsulting"
  - "Software delivery"
  - "DevOps"
  - "Legacy modernization"
  - "Procurement"
  - "Environment"
excerpt: "Helped the Environmental Protection Agency assess an at-risk modernization effort and identify a clearer path forward."
project_members:
  - josh-dorothy
  - chris-given
technologies:
  - "Google Workspace"
practices:
  - "Workshop facilitation"
  - "Research analysis and synthesis"
  - "Consulting"
news_posts:
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
The Environmental Protection Agency (EPA) needed an independent assessment of its Safe Drinking Water Information System (SDWIS) modernization effort, including the associated development contract. We facilitated a focused health-check workshop and delivered recommendations to help EPA make informed decisions about how to proceed.
{% endcapture %}

{% capture challenge %}
EPA’s Safe Drinking Water Information System tracks data about public water systems and violations of federal drinking water regulations. In 2017, EPA launched SDWIS Prime to modernize the system’s data architecture. The plan moved from state-managed, distributed tracking systems to a centralized platform maintained by the agency.

As the effort progressed, EPA grew concerned about the program’s trajectory — particularly the feasibility of migrating large volumes of historical data into the new system. Several factors compounded the challenge: high complexity from state reliance on data tables, limited transactional history that made auditing difficult, an unfamiliar data schema that complicated imports and exports, and repeated data transformations required to ingest and then re-export information.

Beyond the data architecture, the program faced delivery obstacles. DevOps practices were uneven. Environments were inconsistent. There was no comprehensive testing strategy. Together, these issues slowed progress and raised uncertainty about whether the modernization could succeed on its current path.
{% endcapture %}

{% capture solution %}
**A four-hour assessment workshop with EPA technical staff did what status reports couldn't: it gave leadership an unfiltered view of where SDWIS Prime stood.** The workshop format mattered because scattered written updates had obscured the picture. Bringing the right people into the same room surfaced technical practices, delivery approach, and specific risks threatening the program’s success.

**The challenges weren't just technical — they were compounding.** Data migration issues, inconsistent environments, and missing test coverage were reinforcing one another. Isolating any single root cause was difficult. We mapped the interdependencies so EPA could see which problems to address first and which would resolve as a consequence.

Four pages, two days — actionable direction, not another analysis to add to the pile. The recommendation report delivered analytic and technical guidance for redirecting effort and resources toward a more viable path. EPA needed direction, not exhaustive documentation.
{% endcapture %}

{% capture results %}
- **Delivered a four-page assessment report within two days** of the consultation, giving EPA actionable guidance for redirecting the SDWIS Prime effort
- **Surfaced compounding risks that status reports had missed** — including the interdependencies between data migration complexity, inconsistent environments, and missing test coverage
- **Gave leadership a clearer basis for contract decisions,** connecting technical findings to the program’s broader trajectory and investment calculus
- **Provided a prioritized path forward** that helped EPA distinguish between root causes requiring immediate action and downstream symptoms that would resolve as a consequence
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
