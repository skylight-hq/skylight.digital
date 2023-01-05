---
layout: default
title_tag: U.S. Air Force
title: Creating software products at scale with design systems
permalink: /work/experience/usaf-bespin-design-system/
image: /img/projects/usaf_bespin_design_system/design-system.svg
image_description: A pair of hands moving objects around to make a pattern.
feature_image:
feature_image_description:
feature_image_shadow:
order: 1300
display: true
tags: [service delivery, transformation, research & design, product management, software delivery, legacy modernization, defense, air force, maya benari, zack gehin, liz fox, karthik patil, laura kerry, ashton tu, kyle planeaux, mike brown]
excerpt: Comprehensive design systems enabling the U.S. Air Force to ship software products to users with greater speed and quality.
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
  - Carbon Design System
  - Figma
  - Flutter
  - Git / GitLab
  - GitLab CI/CD
  - HTML / CSS / Sass
  - HTML / CSS / SVG
  - JavaScript / HTML
  - JavaScript / React / TypeScript
  - Material-UI
  - Sketch
  - Stencil
  - Storybook
  - U.S. Web Design System
  - Web Components
practices:
  - Accessibility design
  - Accessibility review
  - Agile development
  - Automated testing
  - Branding design
  - Card sorting
  - Collaborative design workshops
  - Design leadership
  - Design pattern library
  - Design studios
  - Design system
  - DevOps
  - Information gathering
  - Legacy reengineering / strangler pattern
  - Pairing
  - Primary research
  - Product management
  - Prototyping
  - Responsive design
  - Usability testing
  - User experience design
  - User interface component inventory
  - User interviews
  - User-centered design
  - Virtual collaboration
  - Virtual teams
  - Visual design
  - Visual design audit
  - WCAG 2.0
  - Web and native apps
  - Workshop facilitation
news_posts:
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
The U.S. Air Force’s (USAF) needs a way to build higher quality software products faster. In partnership with the USAF Business Enterprise Systems Product INnovation (BESPIN)’s Design Studio, we’re building and implementing design systems to help scale the USAF’s design and engineering capacity.
{% endcapture %}

{% capture challenge %}
BESPIN is one of the USAF’s strategic digital solution centers, along with Kessel Run, SpaceCAMP, and others. BESPIN’s mission is to deliver digital transformation outcomes for partner organizations throughout the USAF and broader defense community. This includes the [Business Enterprise Systems Directorate](https://www.airforcebes.af.mil/),
which manages a billion-dollar portfolio of IT systems supporting enterprise-wide functions such as finance, logistics, and human resources.

BESPIN advances its mission by managing a portfolio of 20+ products and supporting other USAF software through the Design Studio, a team that establishes design standards and provides product design services to the USAF.  While products across the BESPIN and USAF ecosystem vary, many share common pain points: The user experience (UX) and user interface (UI) often don’t meet the expectations of those who rely on them to accomplish critical tasks, and many are seen as outdated, overwhelming, or disjointed. 

For the designers and engineers who build USAF products, lack of access to a unified system for design has led to a number of issues. Teams can experience unclear product direction, breakdowns in the handoff between design and engineering, redundant work, and difficulty maintaining quality while keeping to the pace of agile release cycles. While many teams look to existing design systems for inspiration, these don’t always work for the Air Force and require customization. 

To improve the speed and quality with which USAF teams design web and mobile products, BESPIN engaged us to create comprehensive design systems tailored to the unique needs of the USAF design environment.
{% endcapture %}

{% capture solution %}
As part of the BESPIN Design Studio team, we’re building out and implementing two design systems to support a range of software products across the USAF. Design systems are shared libraries of reusable design and code elements, guided by clear standards. Our design systems help teams:
Develop products faster by leveraging pre-made elements, such as a visual style or web form, instead of repeatedly building similar ones from scratch
Create higher quality and cohesive user experiences across different products and platforms with consistent design guidance
Enhance cross-functional communication and collaboration between designers and developers through a shared design language
Waste less time on version control issues — such as incorporating bug fixes and enhancements — since updates to components happen once and populate all occurrences
Achieve a WCAG 2.0 accessibility standard with little effort, as accessibility is included in components from the start
Spend more time focusing on larger, more strategic user-experience problems

To create the design systems, we started by conducting research with BESPIN teams to learn more about design and engineering needs, pain points, workflow processes, and tools. The research process relied on a number of techniques, including a visual design audit, a user interface component inventory, and several rounds of interviews to identify common patterns in the current design and coding environment. 

Based on team needs and existing tech stacks, we proposed two different design systems to meet the varied use cases across the BESPIN and greater USAF ecosystems: Carbon Forge, built on IBM’s Carbon Design System, and Material Atlas, built on Google Material Design. The former is best suited to complex, data rich applications, while the latter supports simpler, user-friendly products. Through workshops and share-outs with the USAF Chief Experience Officer, USAF design community, and the BESPIN ecosystem, we received feedback and collaboratively adapted the design systems with colors, typography, accessibility standards, and other features to work with USAF visual identity and needs — such as a dark mode for legibility during nighttime operations.

The Design Studio has begun to leverage the design systems to improve applications within and beyond the BESPIN ecosystem. In our work with the Reliability and Maintenance Information System (REMIS), an application that manages maintenance on all aircraft and equipment, we’ve adapted Carbon Forge to design and implement UI/UX improvements within their legacy system. Proving out a different use case, we used Material Atlas to create a soon-to-be-released Electronic Flight Bag (EFB) calculator application requested by airmen who need to make in-flight calculations. We’re currently advising the team behind Digital University — a tech skills platform with more than 15,000 users — about how to incorporate our design systems. Speaking about another project that used the Material Atlas for a redesign, one stakeholder said:

{% include callout.html type = "pullquote" content = "Air Force higher-ups have been so impressed with the MyPCS progress to date. Apparently, the original folks who worked MyPCS weren't able to do nearly as much in three years as BESPIN was able to in three months." cite_name = "James “Guideaux” Crocker" cite_title = "BESPIN Chief Technology Officer" %}

The Design Studio team is also developing tools and processes to scale the design system across the USAF. Designers and developers can use the design systems on their own with design libraries in the common design tools Sketch and Figma; access code components that work with multiple tech stacks; read guidelines for using the design systems; and see the design systems in action on Storybook, an interactive demo site. We’ve also created a governance process for teams to request and develop new components, ensuring the design systems grow consistently, with high quality, and in response to user needs. 

Going forward, we’ll continue to leverage the design systems in the Design Studio’s work to improve the USAF’s digital products through better design and code. We’ll also continue to build on the design systems, spread the word, and create tools that help boost their adoption, ultimately increasing the USAF digital capacity.
{% endcapture %}

{% capture results %}
- Gained insights into BESPIN’s needs for scaling design through designer- and developer-focused research
- Recommended USAF-specific considerations for two design systems and got buy-in from USAF Chief Experience Officer, BESPIN leadership, designers, and developers
- Built out design libraries in Sketch and Figma, and code repos with Flutter, React, and Web Components
- Three USAF product teams are currently using BESPIN design systems, and we continue to receive interest from additional product teams
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
