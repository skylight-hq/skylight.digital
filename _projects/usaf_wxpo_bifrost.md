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
The U.S. Air Force Weather Systems Program Office (WxPO) is consolidating its portfolio of applications into one central hub called BIFROST. We partnered with WxPO to redesign key workflows, improve usability and accessibility, and build human-centered design capacity within the BIFROST team.
{% endcapture %}

{% capture challenge %}
Forecasters, pilots, air traffic controllers, and other DoD and civilian personnel rely on timely, accurate weather information to assess mission impacts and make decisions. To support those operations, WxPO maintains a suite of applications that help users complete critical tasks. Tools like JET (Joint Environmental Toolkit) support resource protection and mission planning by enabling forecasters to issue Watches, Warnings, and Advisories (WWAs) for hazardous conditions and deliver pre-mission weather briefings.

As part of a broader cloud migration, WxPO is consolidating legacy applications into a single hub, BIFROST. The goal is to reduce the time and effort users spend switching between tools and make it easier to share data across roles without manual workarounds that slowed teams down in the past.

Consolidation raised the bar. BIFROST has to preserve essential legacy functionality while streamlining workflows, standardizing patterns, and improving the overall user experience.

At the same time, WxPO didn’t yet have the design capacity to meet that challenge. With outdated tooling, a single designer supporting a large development team, and inefficient workflows, the design process created inconsistent experiences and delivery bottlenecks. User feedback often came too late to shape requirements. For example, the JET team historically collected input after features shipped, which led to reactive fixes, patchwork improvements, and mounting design debt. While BIFROST aims to improve legacy user experiences, those process constraints kept the weather community on dated, non-intuitive applications.

Building on our [design transformation work with WARPspeed](/work/experience/usaf-wxpo-warpspeed/), WxPO engaged us to redesign legacy tools within BIFROST and strengthen the practices needed to sustain that work.
{% endcapture %}

{% capture solution %}
For this engagement, improving user experiences required more than redesigning features. It meant helping WxPO deliver improvements faster while rebuilding trust with users whose work depends on reliable, time-sensitive tools. We paired hands-on redesign with support across research, design, content, and agile product management. That work took shape in five areas:

**Establishing a baseline and standardizing the foundation**  
We started with a usability and accessibility audit of BIFROST to pinpoint friction points and compliance gaps. We documented issues, partnered with the product manager and developers to prioritize them, and supported implementation. To reduce inconsistency across the growing ecosystem, we created a WxPO design system and reusable templates in Figma, then trained designers on accessibility best practices, prototyping, and cleaner design handoffs.

**Making user input continuous, not occasional**  
To ensure designs reflected real operational needs, we introduced regular touch points for user feedback across discovery, design, and delivery. During research sessions, standing meetings with volunteer users, and on-site visits, we gathered use cases and helped shape feature requirements. We conducted usability testing on prototypes and modeled iterative delivery for both users and the BIFROST team. We also coached teammates in research methods so they could lead and scale this work independently, strengthening user advocacy while speeding up research and development. As one user shared:

{% include callout.html type = "pullquote" content = "These sessions that you guys are doing are extremely valuable — giving everybody the time to give you guys feedback, making this thing certainly a lot better." %}

**Tightening the design-to-development loop**  
Design only works if it’s buildable. We improved handoffs by establishing a bi-weekly design and engineering touch point to surface technical constraints early and align on feasibility. Adopting Figma enabled richer prototypes, and we trained developers to use Figma dev tools for faster implementation. We also introduced a Material UI component library in Figma to reduce translation work between design and React code. Finally, we set Jira ticket standards so each issue linked to the relevant Figma design and included the detail needed to build with confidence, including policy constraints, user requirements, acceptance criteria, and edge cases. As the lead engineer on the JET migration said:

{% include callout.html type = "pullquote" content = "The designers are able to help align the requirements and user desires into a cohesive user interface design that makes the product look more polished and aids in the development process by bringing user needs and design to the front of the development effort." %}

**Redesigning high-impact workflows in JET**  
Using the new design system, more frequent user feedback, and a smoother handoff process, we redesigned high-impact JET workflows, including WWAs and Mission Management, the application for requesting and completing mission briefings. These updates streamlined core operations for the weather community and supported faster, more confident mission planning. Just as importantly, the increased touch points helped users feel meaningfully involved in shaping the product.

**Supporting adoption with training and product guidance**  
In addition to improving the interface, we created user-centered training and product guidance to support learning and adoption. After interviewing users about onboarding and learning needs, we identified opportunities to provide training in the formats most valuable to users, including videos and live virtual trainings. We developed content guidelines tailored to the ecosystem and used them to update and standardize a collection of written training guides. We also worked with other content creators to adopt best practices and standardize content.

Together, these changes helped the BIFROST team build trust with users and created a stronger foundation for long-term, continuous improvement.
{% endcapture %}

{% capture results %}
- Streamlined high-impact JET workflows, reducing clicks for WWAs and automating data entry in mission briefs to support faster, more reliable decision-making
- Embedded repeatable user research and stronger design-to-development handoffs, reducing rework and accelerating delivery across releases
- Updated nearly 40 training guides to support self-service onboarding and faster adoption of BIFROST
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
