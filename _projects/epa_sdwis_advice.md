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
  - "microconsulting"
  - "software delivery"
  - "devops"
  - "legacy modernization"
  - "procurement"
  - "environment"
  - "josh dorothy"
  - "chris given"
excerpt: "Helped the Environmental Protection Agency assess an at-risk modernization effort and identify a clearer path forward."
project_members:
  - josh-dorothy
  - chris-given
technologies:
  - "Google Workspace"
practices:
  - "Workshop facilitation"
  - "Information gathering"
  - "Analysis and synthesis"
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
EPA's Safe Drinking Water Information System tracks data about public water systems and violations of federal drinking water regulations. In 2017, EPA launched SDWIS Prime to modernize the system's data architecture by moving from state-managed, distributed tracking systems to a centralized platform maintained by the agency.

As the effort progressed, EPA grew concerned about the program's overall trajectory — particularly the feasibility of migrating large volumes of historical data into the new system. High complexity from state reliance on data tables, limited transactional history that made auditing difficult, an unfamiliar data schema that complicated imports and exports, and repeated data transformations required to ingest and then re-export information all compounded the challenge.

Beyond the data architecture, the program faced delivery obstacles: uneven DevOps practices, inconsistent environments, and no comprehensive testing strategy. Together, these issues slowed progress and raised uncertainty about whether the modernization could succeed on its current path.
{% endcapture %}

{% capture solution %}
**We led a four-hour assessment workshop with EPA technical staff** to get an unfiltered view of where the SDWIS Prime initiative stood — its technical practices, delivery approach, and the specific risks threatening the program's success. The workshop format mattered because scattered status reports hadn't given leadership a clear picture; bringing the right people into the same room surfaced problems that written updates had obscured.

During the session, a pattern emerged: the program's challenges weren't just technical — they were compounding. **Data migration issues, inconsistent environments, and missing test coverage were reinforcing one another,** making it difficult to isolate any single root cause. We mapped these interdependencies so EPA could see which problems to address first and which would resolve as a consequence.

**Two days after the workshop, we delivered a four-page recommendation report** with analytic and technical guidance for redirecting effort and resources toward a more viable path. The report was deliberately concise — EPA needed actionable direction, not another lengthy analysis document to add to the pile.
{% endcapture %}

{% capture results %}
- **Delivered a four-page assessment report within two days** of the consultation, giving EPA actionable guidance for redirecting the SDWIS Prime effort
- **Surfaced compounding risks that status reports had missed** — including the interdependencies between data migration complexity, inconsistent environments, and missing test coverage
- **Gave leadership a clearer basis for contract decisions,** connecting technical findings to the program's broader trajectory and investment calculus
- **Provided a prioritized path forward** that helped EPA distinguish between root causes requiring immediate action and downstream symptoms that would resolve as a consequence
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
