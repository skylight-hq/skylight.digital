---
layout: default
title_tag: "U.S. Air Force"
title: "Unifying Air Force weather tools into a single, user-centered platform"
permalink: /work/experience/usaf-wxpo-bifrost/
image: /img/projects/usaf_wxpo_bifrost/wxpo-bifrost.svg
image_description: "Disjointed weather icons merging into a clean interface shown on two computer screens. One screen shows a map with a flight route, origin, route line, and destination with a plane icon. The other screen shows a briefing form next to a map with threat areas highlighted."
feature_image:
feature_image_description:
feature_image_shadow:
order: 550
display: true
tags:
  - "research & design"
  - "product management"
  - "legacy modernization"
  - "transformation"
  - "coaching & training"
  - "defense"
  - "air force"
  - "taylor graue"
  - "holly dewolf"
  - "jennifer herzberg"
  - "laura kerry"
  - "kyle planeaux"
  - "jina ryu"
  - "michelle li"
excerpt: "Redesigning critical weather workflows within BIFROST — the Air Force's consolidated weather platform — while embedding the research and design practices needed to sustain the work."
project_members:
  - taylor-graue
  - holly-dewolf
  - jennifer-herzberg
  - laura-kerry
  - kyle-planeaux
  - jina-ryu
  - michelle-li
technologies:
  - "Figma"
  - "Material-UI"
  - "Mattermost"
  - "Microsoft Teams"
  - "Confluence"
  - "Jira"
practices:
  - "Accessibility design"
  - "Agile development"
  - "Capability development"
  - "Content design"
  - "Consulting"
  - "Design system"
  - "Pairing"
  - "Product management"
  - "Prototyping"
  - "Service design"
  - "Usability testing"
  - "User experience design"
  - "User research"
  - "User-centered design"
  - "Visual design"
  - "Workshop facilitation"
news_posts:
  - title: "Hanscom team to launch new DOD weather portal"
    url: https://www.aflcmc.af.mil/NEWS/Article/2972962/hanscom-team-to-launch-new-dod-weather-portal/
  - title: "For Air Force weather experts, the cloud is the future — rain or shine"
    url: https://www.defensenews.com/air/2025/06/10/for-air-force-weather-experts-the-cloud-is-the-future-rain-or-shine/
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
As part of our [work modernizing weather intelligence delivery for the Air Force](/work/experience/usaf-wxpo-weather-modernization/), we're redesigning critical workflows within BIFROST — the Weather Systems Program Office (WxPO)'s consolidated platform for weather applications. Building on the [design capability we've established in WARPspeed](/work/experience/usaf-wxpo-warpspeed/), we're improving usability and accessibility for forecasters, pilots, and mission planners while embedding the research practices needed to sustain continuous improvement.
{% endcapture %}

{% capture challenge %}
BIFROST was WxPO's answer to a fragmented portfolio: one platform to replace dozens of disconnected legacy tools. But consolidation raised the bar. BIFROST had to preserve essential functionality — like issuing Watches, Warnings, and Advisories through the Joint Environmental Toolkit (JET) and delivering pre-mission weather briefings — while streamlining workflows, standardizing patterns, and improving the overall user experience.

The redesign couldn't succeed on good intentions alone. User feedback had historically arrived too late to shape requirements. The JET team, for example, collected input after features shipped — leading to reactive fixes, patchwork improvements, and mounting design debt. Users had grown skeptical that modernization would actually make their work easier.

With the [design practices and tooling we'd built into WARPspeed](/work/experience/usaf-wxpo-warpspeed/) now in place, WxPO engaged us to apply them to BIFROST's highest-impact workflows — proving that better design process could produce better products, and rebuilding trust with the user community in the process.
{% endcapture %}

{% capture solution %}
Improving user experiences requires more than redesigning features. It means helping WxPO deliver improvements faster while rebuilding trust with users whose work depends on reliable, time-sensitive tools. We pair hands-on redesign with support across research, design, content, and agile product management, focusing on five areas.

**A usability and accessibility audit established the baseline.** We audited BIFROST to pinpoint friction points and compliance gaps, documented the issues, and partnered with the product manager and developers to prioritize and address them. To reduce inconsistency across the growing ecosystem, we extended the WxPO design system with reusable templates in Figma, then trained designers on accessibility best practices, prototyping, and cleaner design handoffs.

**Regular touch points replaced the old pattern of occasional feedback cycles.** Continuous user engagement now spans discovery, design, and delivery — research sessions, standing meetings with volunteer users, and on-site visits that surface real use cases and shape feature requirements. Usability testing on prototypes modeled iterative delivery for both users and the BIFROST team. Coaching in research methods gave teammates the confidence to lead sessions independently.

{% include callout.html
  type = "pullquote"
  content = "These sessions that you guys are doing are extremely valuable — giving everybody the time to give you guys feedback, making this thing certainly a lot better."
%}

**Tighter design-to-development handoffs reduced a consistent source of rework.** We established a bi-weekly alignment between design and engineering to surface technical constraints early. Figma enabled richer prototypes, and we trained developers to use Figma dev tools for faster implementation. A Material UI component library in Figma reduced translation work between design and React code. Jira ticket standards ensured each issue linked to the relevant Figma design and included the detail needed to build with confidence — policy constraints, user requirements, acceptance criteria, and edge cases.

{% include callout.html
  type = "pullquote"
  content = "The designers are able to help align the requirements and user desires into a cohesive user interface design that makes the product look more polished and aids in the development process by bringing user needs and design to the front of the development effort."
%}

**With these foundations in place, we redesigned BIFROST's highest-impact workflows.** Watches, Warnings, and Advisories and Mission Management — the application for requesting and completing mission briefings — both got end-to-end redesigns that streamlined core operations for the weather community and supported faster, more confident mission planning.

**User-centered training and product guidance supported adoption across the user base.** After interviewing users about onboarding and learning needs, we developed content guidelines tailored to the ecosystem, used them to update and standardize nearly 40 written training guides, and provided training in the formats most valuable to users — including videos and live virtual sessions.
{% endcapture %}

{% capture results %}
- **Streamlined high-impact JET workflows**, reducing clicks for Watches, Warnings, and Advisories and automating data entry in mission briefs to support faster, more reliable decision-making
- **Embedded repeatable user research practices** across discovery, design, and delivery — coaching teammates to lead sessions independently and rebuilding trust with a previously skeptical user community
- **Improved design-to-development handoffs** through bi-weekly alignment, Jira ticket standards, and a Material UI component library in Figma, reducing rework across releases
- **Updated nearly 40 training guides** to support self-service onboarding and faster adoption of BIFROST
- **Building internal design capacity** through ongoing training on accessibility best practices, prototyping, and modern design workflows
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
