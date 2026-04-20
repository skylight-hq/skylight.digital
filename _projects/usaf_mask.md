---
layout: default
title_tag: "U.S. Air Force"
title: "Accelerating mobile application development in the Air Force"
permalink: /work/experience/usaf-mask/
image: /img/projects/usaf_mask/mask.svg
image_description: "An airman using a technology starter kit."
feature_image:
feature_image_description:
feature_image_shadow:
order: 2000
display: true
tags:
  - "research & design"
  - "software delivery"
  - "devops"
  - "cloud & platforms"
  - "security & privacy"
  - "defense"
  - "air force"
  - "lucas newman"
  - "jesse skeets"
  - "adam weber"
  - "gianna buda"
excerpt: "A mobile application starter kit that gave U.S. Air Force software teams pre-vetted templates, tooling, and documentation to ship production-quality apps faster."
project_members:
  - lucas-newman
  - jesse-skeets
  - adam-weber
  - gianna-buda
technologies:
  - "Flutter"
  - "Express"
  - "React"
  - "Keycloak"
  - "Terraform"
  - "AWS (Cloud One)"
practices:
  - "Lean startup"
  - "User research"
  - "User experience design"
  - "Agile development"
  - "DevSecOps"
  - "Cloud hosting"
news_posts:
  - title: "BESPIN Advances Web App Development and Delivery with Newly Integrated Pipeline"
    url: https://www.airforcebes.af.mil/News/Display/Article/3681362/bespin-advances-web-app-development-and-delivery-with-newly-integrated-pipeline/
  - title: "Meet BESPIN, the Air Force startup driving the switch to mobile"
    url: https://www.defenseone.com/defense-systems/2020/06/meet-bespin-the-air-force-startup-driving-the-switch-to-mobile/195045/
  - title: "Transforming Into a Mobile-First Military"
    url: https://www.afcea.org/signal-media/transforming-mobile-first-military
  - title: "BESPIN Software Factory Tips For Secure Mobile App Development"
    url: https://govciomedia.com/bespin-software-factory-tips-for-secure-mobile-app-development/
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
As part of our [digital transformation work with BESPIN (Business Enterprise Systems Product INnovation)](/work/experience/usaf-bespin-transformation-support/), we created the Mobile Application Starter Kit (MASK) — a set of pre-vetted templates, tooling, and documentation that gave U.S. Air Force (USAF) software teams a clear, repeatable path from project kickoff to production. Working with Mo Studio, we delivered MASK to cut months of setup time and reduce redundant security work across BESPIN's growing portfolio of mobile products.
{% endcapture %}

{% capture challenge %}
Across the Air Force, mobile applications have become essential to improving airmen's quality of life, mission success, and safety. Airmen aren't always in front of a computer — they need tools that work on the flight line, in base housing, and at bases around the globe. That demand has made delivering production-quality mobile applications a priority for the USAF's digital transformation.

BESPIN, the USAF software factory driving this shift, stood at the center of the mobile push. Getting mobile and web applications into production was BESPIN's core mission, but the path to production in a defense environment wasn't easy — and it looked different for each use case. Every team building a new mobile application had to start from scratch, assembling the same foundational components that previous teams had already built. Building [AMP](/work/experience/usaf-amp/) — a mobile inprocessing tool — had demonstrated what was possible, but the authentication, infrastructure, and deployment work that made it production-ready couldn't easily transfer to the next project.

The duplication wasn't just inefficient — it compounded the security burden. In a defense environment, every component has to be vetted through cybersecurity review. Common building blocks that could've been reviewed once were instead being reviewed repeatedly by different teams, slowing delivery and consuming scarce security resources.

Many of the airmen assigned to BESPIN application teams were early in their software engineering careers. Without institutional guidance on approved technologies, ecosystem dependencies, or deployment processes, teams spent weeks navigating decisions that more experienced engineers would've resolved quickly. The lack of standardized documentation and tooling meant slower development cycles, higher costs, and inconsistent technical approaches across the portfolio.
{% endcapture %}

{% capture solution %}
**We designed MASK to give BESPIN teams a clear production path from day one.** Working with Mo Studio, we paired project templates with the documentation and tooling airmen need to navigate BESPIN's development and deployment ecosystem.

**MASK included three distinct starter templates — for mobile apps, APIs, and web dashboards — each built on BESPIN-approved technology stacks.** Rather than forcing each new team to research, select, and get approval for their own tooling, MASK bundled pre-vetted choices into ready-to-use project scaffolds. Teams could clone a template and start building application logic immediately instead of spending weeks on infrastructure decisions.

**Ecosystem documentation addressed the onboarding gap that templates alone couldn't solve.** Teams also needed to know how BESPIN's internal ecosystem fit together — which teams owned which capabilities, why a team might need a particular service, how to connect with them, and how dependencies flowed. For airmen new to software development, these guides removed the guesswork that had previously slowed project kickoffs.

Duplicated security work was another drag on velocity. **A duplicate-detection script identified security chores already completed by other teams,** so new projects didn't have to repeat reviews unnecessarily. Combined with pre-vetted infrastructure configurations built on Terraform and AWS (Cloud One), MASK significantly lightened the security burden for new applications entering BESPIN's pipeline.

**By standardizing the path to production, MASK gave BESPIN teams the foundation to focus on solving the right problem for their fellow airmen** — building user-centered features rather than wrestling with tooling and security processes.
{% endcapture %}

{% capture results %}
- **Created three production-ready templates** for mobile apps, APIs, and web dashboards, saving teams months of time selecting approved technologies and completing baseline security chores
- **Built ecosystem documentation and onboarding guides** that map BESPIN's internal teams, tooling dependencies, and deployment processes for airmen new to software development
- **Developed a duplicate-detection script** that identifies previously completed security chores, eliminating redundant cybersecurity reviews across BESPIN's application portfolio
- **Delivered pre-vetted infrastructure tooling** built on Terraform and AWS (Cloud One) to guide teams through deployment without starting from scratch
- **Equipped airmen to build mobile applications in-house** by providing standardized resources that reduced the technical barrier to entry for BESPIN teams new to software development
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
