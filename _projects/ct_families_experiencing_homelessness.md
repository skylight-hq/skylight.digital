---
layout: default
title_tag: State of Connecticut
title: Improving how Connecticut supports families with young children experiencing homelessness
permalink: /work/experience/ct-families-experiencing-homelessness/
image: /img/projects/ct_families_experiencing_homelessness/families-experiencing-homelessness.svg
image_description: A social worker holding a device and discussing housing options with a family.
feature_image:
feature_image_description:
feature_image_shadow:
order: 2200
display: true
tags: [research & design, product management, early childhood, social safety net, data & analytics, lara kohl, gabriel ramirez]
excerpt: Identified gaps in how Connecticut tracks and supports families experiencing homelessness and designed a more effective, data-driven approach to prioritizing services.
project_members:
  - lara-kohl
  - gabriel-ramirez
technologies:
  - Mural
  - Smartsheets
  - Caseworthy
  - SQL
practices:
  - User research
  - Journey mapping
  - Technical discovery
  - User experience design
  - Agile development
  - Rapid prototyping
news_posts:
  - title: Governor Lamont Creates Task Force on Housing and Supports for Vulnerable Populations
    url: https://portal.ct.gov/Office-of-the-Governor/News/Press-Releases/2019/07-2019/Governor-Lamont-Creates-Task-Force-on-Housing-and-Supports-for-Vulnerable-Populations
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
Connecticut needed a clearer way to identify and support families with young children experiencing homelessness. We conducted in-depth research and designed a data-driven approach to improve how the state prioritizes families for housing and services, strengthening both coordination and decision-making.
{% endcapture %}

{% capture challenge %}
In 2019, Connecticut launched a multi-agency effort to better understand and support vulnerable populations experiencing homelessness.

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

As part of this effort, we focused on families with children from birth to age five — a group with distinct and often overlooked needs.

Research revealed several systemic challenges:

- Families with young children were often underrepresented in official homelessness data  
- Many were not identified as homeless when living with others or outside formal systems  
- Early childhood needs — especially childcare — created additional barriers to employment and stability  
- Agencies lacked shared tools and data systems to coordinate support effectively  

As a result, decision-making was often fragmented, and it was difficult to identify which families should be prioritized for housing and services.
{% endcapture %}

{% capture solution %}
We focused on understanding how families and agencies interacted with existing systems and where breakdowns occurred.

Through interviews with state agencies, community partners, and families, we mapped how data flowed across programs and identified key gaps in visibility, coordination, and usability.

We found that a central tool — the family by-name list — was critical to how providers prioritized families for housing, but its design limited its effectiveness.

To address this, we:

- Identified opportunities to improve the usefulness and usability of the family by-name list  
- Designed a more structured, data-driven approach to capturing and prioritizing family information  
- Developed a working SQL-based prototype to demonstrate how improved data models could support better decision-making  
- Created a data dictionary to align stakeholders on definitions and data usage  
- Delivered design and technical prototypes to illustrate future system improvements  

This work provided a clearer, more actionable foundation for how Coordinated Access Networks (CANs) could identify and prioritize families in need, while also improving how data could be shared and used across agencies.
{% endcapture %}

{% capture results %}
- Delivered three months of research and discovery that clarified how families with young children experience homelessness and interact with state systems  
- Built a prototype of an improved family by-name list, demonstrating how better data structures could improve prioritization and coordination  
- Established a shared data framework through a comprehensive data dictionary  
- Provided actionable design and technical recommendations to guide future system improvements  
- Informed how Connecticut could better align data, programs, and services to support vulnerable families  
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
