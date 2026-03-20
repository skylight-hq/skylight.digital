---
layout: default
title_tag: Environmental Protection Agency
title: Helping a modernization program chart a new path forward
permalink: /work/experience/epa-sdwis-advice/
image: /img/projects/epa_sdwis_advice/epa-sdwis-advice.svg
image_description: People standing around an oversized glass of water and inspecting it.
feature_image:
feature_image_description:
feature_image_shadow:
order: 3700
display: true
tags: [microconsulting, software delivery, devops, legacy modernization, procurement, environment, josh dorothy, chris given]
excerpt: Helped the Environmental Protection Agency assess an at-risk modernization effort and identify a clearer path forward.
project_members:
  - josh-dorothy
  - chris-given
technologies:
  - Google Workspace
practices:
  - Workshop facilitation
  - Information gathering
  - Analysis and synthesis
  - Consulting
news_posts:
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
The Environmental Protection Agency (EPA) needed an independent assessment of its Safe Drinking Water Information System (SDWIS) modernization effort, including the associated development contract. We facilitated a focused health-check workshop and delivered recommendations to help EPA make informed decisions about how to proceed.
{% endcapture %}

{% capture challenge %}
EPA’s Safe Drinking Water Information System contains data about public water systems and violations of federal drinking water regulations. In 2017, EPA launched SDWIS Prime to modernize the system’s data architecture by moving from state-managed, distributed tracking systems to a centralized platform maintained by the agency.

As the effort progressed, EPA became concerned about the program’s overall trajectory, including the feasibility of migrating large volumes of historical data into the new system. Several issues made the modernization especially difficult:

- High complexity caused by state reliance on data tables
- Limited transactional history for much of the data, making it difficult to audit or trace changes
- A new and unfamiliar data schema that made importing and exporting data difficult
- Repeated data transformations required to ingest information and then reverse those transformations when exporting data back to states

The program also faced delivery challenges, including uneven DevOps practices, inconsistent environments, and a lack of comprehensive testing strategy. Together, these issues slowed progress and increased uncertainty about the path forward.
{% endcapture %}

{% capture solution %}
We worked with EPA technical staff to lead a structured assessment workshop focused on the state of the SDWIS Prime initiative, including its technical practices, delivery approach, and modernization risks.

During the four-hour consultation, we gathered and synthesized available information to develop a clear picture of:

- The background and history of the SDWIS program
- The team’s understanding of the new system’s progress
- The key technical and delivery obstacles affecting implementation

We translated those findings into a concise analytic and technical recommendation report, which we delivered to EPA two days after the consultation.
{% endcapture %}

{% capture results %}
- Delivered a four-page assessment report with analysis and recommendations for how EPA could redirect effort and resources
- Helped bridge communication gaps between technical teams and leadership
- Enabled EPA to make more informed decisions about how to proceed with the modernization effort and development contract
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
