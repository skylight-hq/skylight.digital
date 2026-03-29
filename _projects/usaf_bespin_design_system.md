---
layout: default
title_tag: "U.S. Air Force"
title: "Scaling software quality through shared design systems"
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
excerpt: "Two comprehensive design systems — Carbon Forge and Material Atlas — that helped U.S. Air Force product teams ship higher-quality software faster through reusable, accessible, USAF-branded components."
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
As part of our broader work [building the BESPIN Design Studio](/work/experience/usaf-bespin-design-studio/) for the U.S. Air Force (USAF), we created two comprehensive design systems — Carbon Forge and Material Atlas — that gave product teams reusable, accessible, USAF-branded components for building web and mobile applications. The design systems helped the Air Force ship higher-quality software faster by replacing redundant, from-scratch design and engineering work with a shared library of pre-built elements.
{% endcapture %}

{% capture challenge %}
The USAF's Business Enterprise Systems Product INnovation (BESPIN) organization manages a portfolio of 20+ software products and supports additional applications across the Air Force and broader defense community. Many of these products share a common problem: the user experience doesn't meet the expectations of the airmen who rely on them for critical tasks. Applications are often outdated, overwhelming, or visually disjointed — the result of years of siloed development without shared design standards.

For the designers and engineers building these products, the absence of a unified design system created compounding inefficiencies. Teams experienced unclear product direction, breakdowns in the handoff between design and engineering, and redundant work as each team built similar components from scratch. Maintaining quality while keeping pace with agile release cycles was difficult when every product reinvented its own buttons, forms, and navigation patterns.

Existing open source design systems offered a starting point, but they didn't work out of the box for the Air Force. USAF products had unique requirements — including dark mode for nighttime operations, specific accessibility standards, and alignment with Air Force visual identity — that demanded significant customization. Without that customization, teams either adopted off-the-shelf systems that didn't quite fit or built bespoke solutions that couldn't be reused.

The result was a growing gap between the quality airmen expected and what teams could deliver — and no clear path to closing it at the pace and scale BESPIN's portfolio demanded.
{% endcapture %}

{% capture solution %}
Visual design audits, component inventories, and interviews with designers and developers **revealed which problems to solve first.** Teams were rebuilding the same components from scratch, handoffs between design and engineering broke down regularly, and tool constraints shaped daily work more than user needs did. These findings gave us a clear picture of what a shared design system needed to address.

**Rather than forcing every product into a single framework, we proposed two design systems.** Carbon Forge, built on IBM's Carbon Design System, was best suited to complex, data-rich applications like enterprise resource planning tools. Material Atlas, built on Google Material Design, supported simpler, more user-friendly products like mobile utilities.

Two systems addressed a reality that a single one couldn't: BESPIN's product portfolio spans a wide range of complexity, platforms, and tech stacks. Forcing everything into one framework would've created more friction than it resolved.

**Collaborative workshops with the USAF Chief Experience Officer, the USAF design community, and BESPIN leadership shaped both systems' visual identity and operational features.** We customized colors, typography, accessibility standards, and interaction patterns. The design systems included capabilities specific to military use cases — such as a dark mode for legibility during nighttime operations — and met Web Content Accessibility Guidelines (WCAG) 2.0 standards with accessibility built into components from the start.

Real products proved the design systems' value. **We adapted Carbon Forge for the Reliability and Maintenance Information System (REMIS),** an application that manages maintenance on all aircraft and equipment, designing and implementing user experience improvements within the legacy system. We used Material Atlas to create an Electronic Flight Bag calculator application requested by airmen who needed to make in-flight calculations, and advised the team behind Digital University — a tech skills platform serving more than 15,000 users — on incorporating the design systems into their product.

{% include callout.html type = "pullquote" content = "Air Force higher-ups have been so impressed with the MyPCS progress to date. Apparently, the original folks who worked MyPCS weren't able to do nearly as much in three years as BESPIN was able to in three months." cite_name = "James "Guideaux" Crocker" cite_title = "BESPIN Chief Technology Officer" %}

**To enable self-service adoption, we built tooling and governance processes alongside the component libraries.** Designers could access the design systems through libraries in Sketch and Figma. Developers could pull code components compatible with Flutter, React, and Web Components. An interactive Storybook demo site showed the design systems in action, and written guidelines helped teams apply them consistently. We also created a governance process for requesting and developing new components, ensuring the systems grew in response to real user needs rather than ad hoc additions.
{% endcapture %}

{% capture results %}
- **Delivered two USAF-tailored design systems** — Carbon Forge for complex, data-rich applications and Material Atlas for simpler, user-friendly products — covering the full range of BESPIN's product portfolio
- **Three USAF product teams adopted the design systems** within the initial engagement, including REMIS, the Electronic Flight Bag calculator, and MyPCS, with additional teams expressing interest
- **Built design libraries in Sketch and Figma, and code repositories in Flutter, React, and Web Components**, enabling designers and developers to use the systems independently
- **Established a component governance process** that gave teams a structured way to request and develop new components, ensuring the design systems grew consistently and in response to user needs
- **Reduced redundant design and engineering work** by replacing from-scratch component development with pre-built, pre-approved, WCAG 2.0-accessible elements that teams could reuse across products
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
