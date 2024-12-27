---
layout: default
title_tag: U.S. Air Force
title: Modernizing Air Force weather tools and design processes
permalink: /work/experience/usaf-wxpo-bifrost/
image: /img/projects/usaf_wxpo_bifrost/wxpo-bifrost.svg
image_description: Disjointed weather icons merging into a clean interface shown on two computer screens. One screen should show a map with a flight route (origin, route line, and destination with a plane icon). The other screen should show a briefing form next to a map with "threat" blobs on it.
feature_image:
feature_image_description:
feature_image_shadow:
order: 500
display: true
tags: [research & design, product management, legacy modernization, transformation, coaching & training, defense, air force, taylor graue, holly dewolf, jennifer herzberg, laura kerry, kyle planeaux, jina ryu, michelle li]
excerpt: Using research and design to upgrade legacy tools and improve the processes the U.S. Air Force Weather Systems Program Office relies on to build them.
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
  - title: BESPIN Awards Contracts with REMIS & WARPspeed for Design Studio Services
    url: https://www.airforcebes.af.mil/News/Display/Article/3342231/bespin-awards-contracts-with-remis-warpspeed-for-design-studio-services/
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
The U.S. Air Force (USAF) Weather Systems Program Office (WxPO) is migrating its portfolio of applications into one central hub called BIFROST. We worked with WxPO to redesign the applications, improving user experience while building human-centered design capacity on the BIFROST team.
{% endcapture %}

{% capture challenge %}
Forecasters, pilots, air traffic controllers, and other DoD and civilian personnel need up-to-date weather information to assess mission impacts and make decisions. To support these operations, WxPO provides a suite of applications that enable customers to perform their critical tasks. Tools like JET (Joint Environmental Toolkit) enable resource protection and mission planning by allowing forecasters to issue Watches, Warnings, and Advisories (WWAs) for hazardous weather conditions and provide weather briefings before missions. 

As part of their initiative to migrate to the cloud, WxPO is building replacements for legacy applications in one central hub, called BIFROST. This effort aims to streamline operations for users, who in the past needed to switch between applications to accomplish tasks, requiring extra time and effort. It also makes sharing data across roles easier and less manual, since different user groups previously used different tools. 

Consolidating tools under BIFROST, however, poses additional challenges for WxPO. The new application needs to maintain the critical functionality of legacy tools while streamlining, standardizing, and improving user experience. 

Previously, WxPO didn’t have the design capacity to meet such challenges. With outdated design tools, a single designer supporting a large development team, and inefficient workflows, the design process yielded inconsistent user experiences and delivery bottlenecks. Additionally, teams had limited capacity to collect user input throughout the process. For example, the JET team historically sought user feedback only after building features, which resulted in reactive, patchy fixes and mounting design debt. While BIFROST aimed to improve user experience of legacy tools, the limitations of WxPO’s design process meant that  the weather community was stuck using dated, non-intuitive applications. 

As part of our [design transformation work with WARPspeed](/work/experience/usaf-wxpo-warpspeed/), the organization in charge of managing applications migrating to the cloud, WxPO engaged us to redesign the legacy tools in BIFROST.
{% endcapture %}

{% capture solution %}
At Skylight, improving user experiences goes beyond redesigning features — it involves fostering the organizational transformation needed to sustain those improvements over time. To help WxPO build a user-friendly tool that consolidates Air Force weather operations, we provided comprehensive research, design, and capability-building services. This included expertise in user research, product design, content design, and agile product management, all tailored to support the BIFROST team with a particular focus on the JET application migration.

To understand the current state of BIFROST, we first conducted a usability audit of the application. This allowed us to identify design and accessibility issues, which we documented and worked with the product manager and developers to prioritize and fix. We also worked to standardize components across BIFROST by building a WxPO design system and templates in Figma. We then trained other designers to use the state-of-the-art design tool, covering best practices in accessibility, design handoffs, and prototyping to collect user feedback.

To ensure designs meet user needs, we established processes to gather user input at every phase of design and development. During a regular meeting with a volunteer group of users, in research sessions, and during on-site visits, we talked to users to understand use cases and help define feature requirements. We conducted usability testing on prototypes, modeling an iterative design process for both users, our clients, and the other designers supporting them. With these additional user touch points, we helped ensure that the BIFROST team builds the right features — and builds them in the right way, informed by weather expertise and user input. We also trained teammates in research methodologies, cultivating strong user advocates while speeding up the research and development process.  

Designs are only successful if developers can successfully build them; during our WxPO engagement, we also worked on improving the handoff between design and development. During a bi-weekly meeting with developers, we facilitated conversations to understand technical considerations and the feasibility of designs. Our introduction of Figma enabled BIFROST designers to create more comprehensive prototypes, and we trained developers to use Figma dev tools for further clarity. We also introduced a Figma library for Material UI, a React component library, to simplify the transition from design to coding. Finally, we set standards for ticket writing in Jira, ensuring each issue had a link to a Figma design and enough detail to guide implementation — including USAF policy requirements, user requirements, acceptance criteria, and edge cases. Facilitating a smoother handoff to developers, we improved the developer experience, ultimately speeding up delivery. As the lead engineer on the JET migration said: 

{% include callout.html type = "pullquote" content = "The designers are able to help align the requirements and user desires into a cohesive user interface design that makes the product look more polished and aids in the development process by bringing user needs and design to the front of the development effort." %}

To further improve the usability of BIFROST, we created user-centered training and product guidance. After interviewing users to understand training needs, we identified opportunities to provide training in the formats most valuable to users — including videos and live, virtual trainings. We developed content guidelines that tailored best practices to the unique needs of the ecosystem, leveraging these to update a collection of written training guides. We also worked with other content creators to adopt best practices and standardize content.  

Leveraging the new WxPO design system, more touch points for user feedback, and a smoother development handoff process, we redesigned high-impact JET features, including WWAs and Mission Management (the application for requesting and completing mission briefings). Not only did we streamline important operations for the weather community, but we also made users feel more involved in the process. As one user said:

{% include callout.html type = "pullquote" content = "These sessions that you guys are doing are extremely valuable — giving everybody the time to give you guys feedback, making this thing certainly a lot better." %}

With the changes we implemented, we helped the BIFROST team build trust with their users, setting up both users and our clients for long-term success. 
{% endcapture %}

{% capture results %}
- Updated designs for legacy JET features, saving time for forecasters and other users by reducing the number of clicks to configure WWAs and automating data input in mission briefs
- Implemented more regular touch points for user research, ensuring user needs inform every stage of development, from writing requirements to prioritizing enhancements
- Facilitated a smoother handoff between design and development, saving time for developers and accelerating delivery
- Updated almost 40 training guides to ensure users can complete self-service onboard and understand how to use BIFROST
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}

