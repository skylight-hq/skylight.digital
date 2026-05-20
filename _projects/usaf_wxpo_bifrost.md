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
excerpt: "Redesigning critical weather workflows within BIFROST — the Air Force’s consolidated weather platform — while embedding the research and design practices needed to sustain the work."
project_members:
  - taylor-graue
  - holly-dewolf
  - jennifer-herzberg
  - laura-kerry
  - kyle-planeaux
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
As part of our [work modernizing weather intelligence delivery for the Air Force](/work/experience/usaf-wxpo-weather-modernization/), we’re redesigning critical workflows within BIFROST. It’s the Weather Systems Program Office (WxPO)’s consolidated platform for weather applications. Building on the [design capability we established in WARPspeed](/work/experience/usaf-wxpo-warpspeed/), we’re improving usability and accessibility for forecasters, pilots, and mission planners. We’re also embedding the research practices that sustain continuous improvement.
{% endcapture %}

{% capture challenge %}
BIFROST was WxPO’s answer to a fragmented portfolio: one platform to replace dozens of legacy tools. But consolidation raised the bar. BIFROST had to preserve essential functionality while streamlining workflows. That meant supporting Watches, Warnings, and Advisories through the Joint Environmental Toolkit (JET), delivering pre-mission weather briefings, and improving the overall user experience.

The redesign couldn’t succeed on good intentions alone. User feedback had historically arrived too late to shape requirements. The JET team, for example, collected input only after features shipped. The result was reactive fixes, patchwork improvements, and mounting design debt. Users had grown skeptical that modernization would actually make their work easier.

With the [design practices and tooling we’d built into WARPspeed](/work/experience/usaf-wxpo-warpspeed/) now in place, WxPO engaged us to apply them to BIFROST’s highest-impact workflows. The goal: prove better design process could produce better products, and rebuild trust with users along the way.
{% endcapture %}

{% capture solution %}
Improving user experiences requires more than redesigning features. It means helping WxPO deliver improvements faster and rebuilding trust with users whose work depends on reliable, time-sensitive tools. We paired hands-on redesign with support across research, design, content, and agile product management — focusing on five areas.

**A usability and accessibility audit established the baseline.** We audited BIFROST to pinpoint friction points and compliance gaps, then partnered with the product manager and developers to prioritize and address them. To reduce inconsistency across the growing ecosystem, we extended the WxPO design system with reusable Figma templates. We then trained designers on accessibility, prototyping, and cleaner design handoffs.

**Next, regular touch points replaced the old pattern of occasional feedback cycles.** Continuous user engagement now spans discovery, design, and delivery. Standing meetings with volunteer users and on-site visits surface real use cases and shape feature requirements. Usability testing on prototypes models iterative delivery for both users and the BIFROST team. Coaching in research methods gives teammates the confidence to lead sessions independently.

{% include callout.html
  type = "pullquote"
  content = "These sessions that you guys are doing are extremely valuable — giving everybody the time to give you guys feedback, making this thing certainly a lot better."
%}

**To reduce a consistent source of rework, we tightened the design-to-development handoff.** A bi-weekly alignment between design and engineering surfaces technical constraints early. Figma enables richer prototypes, and we trained developers to use Figma dev tools for faster implementation. A Material UI component library in Figma cut translation work between design and React code. Jira ticket standards now ensure each issue links to the relevant Figma design. Each ticket also includes the detail needed to build with confidence — policy constraints, user requirements, acceptance criteria, and edge cases.

{% include callout.html
  type = "pullquote"
  content = "The designers are able to help align the requirements and user desires into a cohesive user interface design that makes the product look more polished and aids in the development process by bringing user needs and design to the front of the development effort."
%}

**With these foundations in place, we redesigned BIFROST’s highest-impact workflows.** Watches, Warnings, and Advisories — and Mission Management, the application for requesting and completing mission briefings — both got end-to-end redesigns. Each streamlined core operations for the weather community and supported faster, more confident mission planning.

Finally, user-centered training and product guidance supported adoption across the user base. After interviewing users about onboarding and learning needs, we developed content guidelines tailored to the ecosystem. We used them to update and standardize nearly 40 written training guides. We then delivered training in the formats users valued most — including videos and live virtual sessions.
{% endcapture %}

{% capture results %}
- **Streamlined high-impact JET workflows**, reducing clicks for Watches, Warnings, and Advisories and automating data entry in mission briefs to support faster, more reliable decision-making
- **Embedded repeatable user research practices** across discovery, design, and delivery — coaching teammates to lead sessions independently and rebuilding trust with a previously skeptical user community
- **Improved design-to-development handoffs** through bi-weekly alignment, Jira ticket standards, and a Material UI component library in Figma, reducing rework across releases
- **Updated nearly 40 training guides** to support self-service onboarding and faster adoption of BIFROST
- **Built internal design capacity** through ongoing training on accessibility, prototyping, and modern design workflows
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
