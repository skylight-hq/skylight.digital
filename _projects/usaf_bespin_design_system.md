---
layout: default
title_tag: "U.S. Air Force"
title: "Giving Air Force teams a common design language"
permalink: /work/experience/usaf-bespin-design-system/
image: /img/projects/usaf_bespin_design_system/design-system.svg
image_description: "A pair of hands moving objects around to make a pattern."
feature_image: /img/projects/usaf_bespin_design_system/bespin-design-system.gif
feature_image_description: "Walkthrough of the Material Atlas BESPIN Design System."
feature_image_shadow: true
order: 1400
display: true
tags:
  - "service delivery"
  - "transformation"
  - "research & design"
  - "product management"
  - "software delivery"
  - "legacy modernization"
  - "defense"
  - "air force"
  - "maya benari"
  - "zack gehin"
  - "liz fox"
  - "karthik patil"
  - "laura kerry"
  - "ashton tu"
  - "kyle planeaux"
  - "mike brown"
excerpt: "Two design systems — Carbon Forge and Material Atlas — that give Air Force product teams reusable, accessible components for shipping higher-quality web and mobile applications."
project_members:
  - zack-gehin
  - mike-brown
  - liz-fox
  - ashton-tu
  - karthik-patil
  - kyle-planeaux
  - laura-kerry
  - maya-benari
technologies:
  - "Carbon Design System"
  - "Figma"
  - "Flutter"
  - "Git / GitLab"
  - "GitLab CI/CD"
  - "HTML / CSS / Sass"
  - "HTML / CSS / SVG"
  - "JavaScript / HTML"
  - "JavaScript / React / TypeScript"
  - "Material-UI"
  - "Sketch"
  - "Stencil"
  - "Storybook"
  - "U.S. Web Design System"
  - "Web Components"
practices:
  - "Accessibility design"
  - "Accessibility review"
  - "Agile development"
  - "Automated testing"
  - "Branding design"
  - "Card sorting"
  - "Collaborative design workshops"
  - "Design leadership"
  - "Design pattern library"
  - "Design studios"
  - "Design system"
  - "DevOps"
  - "Information gathering"
  - "Legacy reengineering / strangler pattern"
  - "Pairing"
  - "Primary research"
  - "Product management"
  - "Prototyping"
  - "Responsive design"
  - "Usability testing"
  - "User experience design"
  - "User interface component inventory"
  - "User interviews"
  - "User-centered design"
  - "Virtual collaboration"
  - "Virtual teams"
  - "Visual design"
  - "Visual design audit"
  - "WCAG 2.0"
  - "Web and native apps"
  - "Workshop facilitation"
news_posts:
  - title: "BESPIN awards contracts with REMIS & WARPspeed for Design Studio services"
    url: https://www.airforcebes.af.mil/News/Display/Article/3342231/bespin-awards-contracts-with-remis-warpspeed-for-design-studio-services/
  - title: "BESPIN's Design Studio hosts intensive design workshop"
    url: https://www.aflcmc.af.mil/NEWS/Article/3891127/bespins-design-studio-hosts-intensive-design-workshop/
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
As part of the [Design Studio](/work/experience/usaf-bespin-design-studio/) we established through BESPIN (Business Enterprise Systems Product INnovation), we created two design systems — Carbon Forge and Material Atlas — that give U.S. Air Force (USAF) product teams reusable, accessible components for building web and mobile applications. Carbon Forge serves complex, data-rich applications; Material Atlas serves mobile-friendly products — together covering the range of software the Air Force builds.
{% endcapture %}

{% capture challenge %}
Designers and engineers across the Air Force's software portfolio had no shared component language. Each product team built its own buttons, forms, and navigation from scratch — choosing different frameworks, different accessibility approaches, and different visual styles. When a designer handed a mockup to an engineer, there was no common reference to anchor the conversation, so the final build rarely matched the intent. Airmen felt the consequences: interfaces that looked and behaved differently from one application to the next, with no consistency in how they completed similar tasks.

Off-the-shelf design systems offered a starting point but didn't work for the Air Force without significant customization. Without dark mode for nighttime operations, compliance with Web Content Accessibility Guidelines (WCAG) 2.0, and alignment with Air Force visual identity, no open source framework worked as-is. Teams either adopted something that didn't quite fit or built bespoke solutions that couldn't be reused — and neither path closed the gap at the scale the portfolio demanded.
{% endcapture %}

{% capture solution %}
**Audits and interviews revealed that the portfolio's diversity demanded two design systems, not one.** Component inventories showed dozens of redundant implementations of the same elements — buttons, date pickers, data tables — built in different frameworks with different accessibility standards. But the products themselves ranged from dense enterprise tools to lightweight mobile utilities, running on different tech stacks with fundamentally different interaction needs. A single design system wouldn't serve both ends.

**Rather than forcing every product into a single framework, we built two design systems.** Carbon Forge — built on IBM's Carbon Design System — suited complex, data-rich applications like enterprise resource planning tools. Material Atlas — built on Google's Material Design — provided a lighter foundation for mobile-friendly products.

Collaborative workshops with the USAF Chief Experience Officer, the Air Force design community, and BESPIN leadership shaped both systems' visual identity — ensuring the systems felt like Air Force products, not reskinned open source templates. We customized colors, typography, and interaction patterns to meet operational requirements: a dark mode for legibility during nighttime operations, WCAG 2.0 compliance built into every component, and visual consistency that gave airmen a recognizable experience across applications.

**We rolled the design systems into real products to validate them under pressure.** For the Reliability and Maintenance Information System (REMIS) — the application that manages maintenance records on all aircraft and equipment — we adapted Carbon Forge so the team could redesign complex data views without rebuilding each element from scratch. Material Atlas powered an Electronic Flight Bag calculator for in-flight use and anchored MyPCS, the permanent change of station tool — where shared components helped the team ship in months what had previously stalled for years.

{% include callout.html
  type = "pullquote"
  content = "Air Force higher-ups have been so impressed with the MyPCS progress to date. Apparently, the original folks who worked MyPCS weren't able to do nearly as much in three years as BESPIN was able to in three months."
  cite_name = "James 'Guideaux' Crocker"
  cite_title = "BESPIN Chief Technology Officer"
%}

**To enable self-service adoption, we built tooling and governance alongside the component libraries.** Designers access the systems through libraries in Sketch and Figma; developers pull code components compatible with Flutter, React, and Web Components. An interactive Storybook demo site shows both systems in action, with written guidelines that help teams apply them consistently. To keep the systems growing in the right direction, we established a governance process for requesting and developing new components — ensuring additions respond to real product needs rather than accumulate ad hoc.
{% endcapture %}

{% capture results %}
- **Adopted by three product teams within the initial engagement** — REMIS, the Electronic Flight Bag, and MyPCS — with Digital University and additional teams also drawing from the systems
- **Compressed MyPCS delivery from years to months** by giving the team pre-built, pre-approved components instead of building from scratch — a speed gain BESPIN's Chief Technology Officer highlighted publicly
- **Gave designers and developers a shared language across five frameworks** — Sketch, Figma, Flutter, React, and Web Components — so handoffs that previously broke down now reference the same components
- **Built WCAG 2.0 compliance into every component**, eliminating the need for teams to solve accessibility independently on each product
- **Established a governance process for growing the systems** so new components are requested, reviewed, and built in response to real product needs rather than ad hoc additions
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
