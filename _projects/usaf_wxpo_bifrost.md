---
layout: default
title_tag: U.S. Air Force
title: Unifying Air Force weather tools into a single, user-centered platform
permalink: /work/experience/usaf-wxpo-bifrost/
image: /img/projects/usaf_wxpo_bifrost/wxpo-bifrost.svg
image_description: Disjointed weather icons merging into a clean interface shown on two computer screens. One screen should show a map with a flight route (origin, route line, and destination with a plane icon). The other screen should show a briefing form next to a map with &quot;threat&quot; blobs on it.
feature_image:
feature_image_description:
feature_image_shadow:
order: 550
display: true
tags: [research & design, product management, legacy modernization, transformation, coaching & training, defense, air force, taylor graue, holly dewolf, jennifer herzberg, laura kerry, kyle planeaux, jina ryu, michelle li]
excerpt: Using research and design to streamline legacy weather workflows and help the U.S. Air Force Weather Systems Program Office ship improvements faster.
project_members:
  - taylor-graue
  - holly-dewolf
  - jennifer-herzberg
  - laura-kerry
  - kyle-planeaux
  - jina-ryu
  - michelle-li
technologies:
  - Figma   
  - Material-UI  
  - Colour Contrast Analyzer  
  - Lighthouse  
  - Matomo  
  - Mattermost  
  - Microsoft Teams     
  - Confluence  
  - Jira
practices:
  - Accessibility design
  - Accessibility review
  - Agile cloud migration
  - Agile development
  - Agile workshop facilitation
  - Analysis and synthesis
  - Branding design
  - Capability development
  - Card sorting
  - Coaching
  - Collaborative design workshops
  - Communications
  - Comparative analysis
  - Consulting
  - Content design
  - Customer and stakeholder interviews
  - Customer research
  - Design leadership
  - Design pattern library
  - Design studios
  - Design system
  - Design workshops
  - Industry benchmarking
  - Industry research
  - Iterative and incremental development
  - Journey mapping
  - Knowledge management
  - Learning by doing
  - Moderated user research
  - Pairing
  - Participatory design
  - Persona development
  - Prioritization workshops
  - Primary research
  - Product management
  - Prototyping
  - Rapid prototyping
  - Research analysis and synthesis
  - Secondary research
  - Service design
  - Stakeholder interviews
  - Stakeholder mapping
  - Usability testing
  - User experience design
  - User interface component inventory
  - User interviews
  - User research
  - User testing
  - User-centered design
  - Virtual collaboration
  - Visual design
  - Visual design audit
  - Workshop facilitation     
news_posts:
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
The U.S. Air Force Weather Systems Program Office (WxPO) is consolidating its portfolio of applications into a central hub called BIFROST. We partnered with WxPO to redesign key workflows, improve usability and accessibility, and build human-centered design capacity within the BIFROST team.
{% endcapture %}

{% capture challenge %}
Forecasters, pilots, air traffic controllers, and other DoD and civilian personnel depend on timely, accurate weather information to make mission-critical decisions. WxPO supports these users through a suite of applications, including JET (Joint Environmental Toolkit), which enables hazardous weather alerts and pre-mission weather briefings.

As part of a broader cloud migration, WxPO is consolidating legacy applications into BIFROST. This shift aims to reduce time lost switching between tools and make it easier to share data across roles that previously relied on separate systems.

Consolidation raised the bar. BIFROST needed to preserve essential legacy functionality while streamlining workflows, standardizing patterns, and improving the overall user experience.

At the same time, WxPO lacked the design capacity to meet those demands. Outdated tools, a single designer supporting a large development team, and limited opportunities for early user input led to inconsistent experiences, delivery bottlenecks, and growing design debt. While BIFROST aims to improve legacy tools, these constraints left users working in dated, non-intuitive systems.

Building on our [design transformation work with WARPspeed](/work/experience/usaf-wxpo-warpspeed/), WxPO engaged us to redesign legacy tools within BIFROST and strengthen the practices needed to sustain that work.
{% endcapture %}

{% capture solution %}
For this engagement, improving user experiences required more than redesigning features. With WxPO, we paired hands-on redesign with support across research, design, content, and agile product management. That work took shape in five areas:

**Establishing a baseline and standardizing the foundation**  
We conducted a usability and accessibility audit of BIFROST to identify friction points and compliance gaps, then worked with product and engineering partners to prioritize fixes. To reduce inconsistency, we created a WxPO design system and reusable templates in Figma and trained designers on accessibility, prototyping, and cleaner handoffs.

**Making user input continuous, not occasional**  
We introduced regular touch points for user feedback across discovery, design, and delivery. Through research sessions, standing user meetings, on-site visits, and usability testing, we gathered use cases and shaped requirements earlier. We also coached teammates in research methods so they could scale this work independently.

**Tightening the design-to-development loop**  
To improve buildability, we established a bi-weekly design–engineering sync to surface constraints early. We enabled richer prototypes through Figma, trained developers on Figma dev tools, introduced a Material UI component library, and set Jira ticket standards that linked designs with requirements, acceptance criteria, and edge cases. As the lead engineer on the JET migration noted:

{% include callout.html type = "pullquote" content = "The designers are able to help align the requirements and user desires into a cohesive user interface design that makes the product look more polished and aids in the development process by bringing user needs and design to the front of the development effort." %}

**Supporting adoption with training and product guidance**  
To improve usability beyond the interface, we created user-centered training and guidance. After interviewing users about onboarding needs, we focused on high-value formats such as videos and live virtual sessions, and updated and standardized a large set of written training guides.

**Redesigning high-impact workflows in JET**  
Using the design system, frequent user feedback, and improved handoffs, we redesigned high-impact JET workflows, including WWAs and Mission Management. These updates streamlined core operations and made users feel meaningfully involved in shaping the product. As one user shared:

{% include callout.html type = "pullquote" content = "These sessions that you guys are doing are extremely valuable — giving everybody the time to give you guys feedback, making this thing certainly a lot better." %}

Together, these changes helped the BIFROST team build trust with users and created a stronger foundation for continuous improvement.
{% endcapture %}

{% capture results %}
- Streamlined high-impact JET workflows, reducing clicks for WWAs and automating data entry in mission briefs
- Embedded repeatable user research and stronger design-to-development handoffs, reducing rework and accelerating delivery
- Updated nearly 40 training guides to support self-service onboarding and faster adoption of BIFROST
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
