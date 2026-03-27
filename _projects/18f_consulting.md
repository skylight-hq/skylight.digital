---
layout: default
title_tag: "State of Connecticut"
title: "Improving how Connecticut supports families with young children experiencing homelessness"
permalink: /work/experience/ct-families-experiencing-homelessness/
image: /img/projects/ct_families_experiencing_homelessness/families-experiencing-homelessness.svg
image_description: "A social worker holding a device and discussing housing options with a family."
feature_image:
feature_image_description:
feature_image_shadow:
order: 2200
display: true
tags:
  - "research & design"
  - "product management"
  - "early childhood"
  - "social safety net"
  - "data & analytics"
  - "lara kohl"
  - "gabriel ramirez"
excerpt: "Identified gaps in how Connecticut tracks and supports families experiencing homelessness and designed a more effective, data-driven approach to prioritizing services."
project_members:
  - lara-kohl
  - gabriel-ramirez
technologies:
  - "Mural"
  - "Smartsheets"
  - "Caseworthy"
  - "SQL"
practices:
  - "User research"
  - "Journey mapping"
  - "Technical discovery"
  - "User experience design"
  - "Agile development"
  - "Rapid prototyping"
news_posts:
  - title: "Governor Lamont Creates Task Force on Housing and Supports for Vulnerable Populations"
    url: https://portal.ct.gov/governor/working-groups/task-force-on-housing-and-supports-for-vulnerable-populations
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
As part of our [digital transformation work with Connecticut's Office of Early Childhood](/work/experience/ct-oec-transformation/), we helped the state develop a clearer, data-driven approach to identifying and supporting families with young children experiencing homelessness — improving how providers prioritize families for housing and services.
{% endcapture %}

{% capture challenge %}
In 2019, Connecticut launched a multi-agency effort to better understand and support vulnerable populations experiencing homelessness. The Governor's Task Force on Housing and Supports for Vulnerable Populations brought together state agencies, community organizations, and service providers to coordinate a response.

{% include callout.html
  type = "pullquote"
  content = "This task force will take a data-driven approach to seek a better understanding
  of this population, and to pilot better ways to make sure we can quickly meet
  all of a household's critical needs, stabilizing them more quickly, and achieving
  better outcomes for these Connecticut residents as well as for our publicly
  funded systems."
  cite_name = "Lisa Tepper Bates"
  cite_title = "Co-chair, Governor's Task Force"
%}

As part of this effort, we focused on families with children from birth to age five — a group with distinct and often overlooked needs. Many of these families didn't appear in official homelessness data at all. When families doubled up with relatives or friends rather than entering the shelter system, they fell outside the definitions that triggered formal tracking. That meant the state couldn't see the full scope of the problem, let alone prioritize resources toward it.

The challenges went beyond visibility. Early childhood needs — especially childcare — created additional barriers to employment and stability that older populations didn't face. And the agencies responsible for supporting these families lacked shared tools and data systems, so coordination happened informally and inconsistently. The central tool for prioritizing families for housing — the family by-name list — was difficult to use and limited in what it could capture, leaving decision-makers without the structured data they needed to act.
{% endcapture %}

{% capture solution %}
We started with discovery research — **interviewing state agencies, community partners, and families themselves** to understand how people actually moved through existing systems and where breakdowns occurred. We mapped how data flowed across programs and found consistent gaps in visibility, coordination, and usability that prevented effective prioritization.

One tool kept surfacing in those conversations: **the family by-name list, which Coordinated Access Networks relied on to prioritize families for housing.** But its design limited its effectiveness. The list couldn't capture the nuanced information providers needed to make good decisions — things like a family's childcare situation, employment barriers, or how long they'd been unstably housed. Improving this one tool could improve decision-making across the entire system.

Rather than simply adding fields to the existing list, **we rethought what data the system needed to collect and how it should be organized to support prioritization decisions.** We developed a working SQL-based prototype to demonstrate how improved data models could drive better outcomes — showing providers and decision-makers what a more useful tool would look like in practice.

A related problem was that agencies had been interpreting key terms differently. What counted as "homeless" or "unstably housed" varied depending on who was collecting the data, which made cross-agency coordination unreliable. **We created a shared data dictionary** that established common definitions so that data meant the same thing regardless of which agency collected it.

Together, the research, prototype, and data framework gave Connecticut's Coordinated Access Networks **a concrete foundation for identifying and prioritizing families in need** — along with design and technical recommendations to guide future system improvements.
{% endcapture %}

{% capture results %}
- **Produced a comprehensive research foundation** that clarified how families with young children experience homelessness and interact with state systems, surfacing gaps invisible in existing data
- **Built a working prototype of an improved family by-name list** demonstrating how better data structures could improve prioritization and coordination across Coordinated Access Networks
- **Established a shared data framework** through a data dictionary that aligned multiple agencies on common definitions and data usage
- **Delivered actionable design and technical recommendations** to guide future system improvements for identifying and supporting vulnerable families
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
