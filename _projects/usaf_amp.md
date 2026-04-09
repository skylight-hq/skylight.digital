---
layout: default
title_tag: "U.S. Air Force"
title: "Streamlining the Air Force's base inprocessing"
permalink: /work/experience/usaf-amp/
image: /img/projects/usaf_amp/amp.svg
image_description: "A person filling out a checklist."
feature_image:
feature_image_description:
feature_image_shadow:
order: 2100
display: true
tags:
  - "service delivery"
  - "research & design"
  - "software delivery"
  - "defense"
  - "air force"
  - "lucas newman"
  - "jesse skeets"
  - "adam weber"
  - "gianna buda"
excerpt: "A digital application that simplifies and automates base inprocessing for airmen and the staff who support them."
project_members:
  - lucas-newman
  - jesse-skeets
  - adam-weber
  - gianna-buda
technologies:
  - "HTML / CSS"
  - "Material-UI"
  - "Flutter"
  - "Express"
  - "React"
  - "Keycloak"
  - "AWS / Terraform"
practices:
  - "Lean startup"
  - "User research"
  - "User experience design"
  - "Content design"
  - "Design system"
  - "Wireframing"
  - "Agile development"
  - "Pair programming"
  - "DevSecOps"
  - "Cloud hosting"
news_posts:
  - title: "2020 Vice Chief's Challenge winners announced"
    url: https://www.af.mil/News/Article-Display/Article/2511269/2020-vice-chiefs-challenge-winners-announced/
  - title: "BESPIN LinkedIn post"
    url: https://www.linkedin.com/posts/bespin_bespinaf_apps_softwaredevelopment-activity-6849312109856075776-Qog2/
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
As part of our [digital transformation work with BESPIN](/work/experience/usaf-bespin-transformation-support/), we built Airmen Mobile Processing (AMP) — a digital application that replaced the U.S. Air Force's (USAF) paper-based inprocessing workflow with centralized task tracking for service members going through a permanent change of station (PCS). Working as a subcontractor to Mo Studio, the team delivered a mobile-friendly tool that won the Vice Chief of the Air Force Innovation Challenge and established a reusable component model for BESPIN's mobile development pipeline.
{% endcapture %}

{% capture challenge %}
Airmen frequently move bases — sometimes every two years — through the PCS process. Air Force bases function as self-contained cities, so transitioning to a new installation means navigating unfamiliar surroundings while completing a stack of administrative tasks. A streamlined inprocessing experience helps airmen hit the ground running and reduces the burden on the staff responsible for processing them.

At the time, inprocessing ran on paper forms and PDFs that airmen filled out and hand-delivered to offices across the base. For someone adjusting to a new environment — sometimes while helping a spouse or children settle in — carrying forms to offices they'd never visited was disorienting and frustrating.

The paper-based system was equally painful for administrators. Because forms moved physically from person to person, administrators had no way to see where an airman stood until paperwork arrived on their desk. Incomplete forms created bottlenecks: until one office finished its portion and handed off, downstream personnel couldn't begin theirs. Long processing timelines rippled across the entire base community.
{% endcapture %}

{% capture solution %}
Working as a subcontractor to Mo Studio, we partnered with BESPIN to tackle a problem that touched every airman who moved bases. Research at six Air Force installations — interviews with senior personnel, PCS administrators, and service members across ranks — confirmed what the complaints suggested: a workflow built on paper binders with no way to track progress.

**A single digital interface replaced the entire paper workflow.** AMP gave airmen a centralized view of every inprocessing task — what's done, what's in progress, what's next — accessible from any authorized device on base. Airmen didn't need a complex system; they needed one place that showed them everything, instead of a stack of forms carried to offices they'd never visited.

**For administrators, AMP solved the visibility problem that paper couldn't.** A real-time dashboard showed each airman's processing status at a glance — no waiting for physical handoffs, no guessing which office had the paperwork. Administrators could create, update, and delete tasks directly, and downstream offices no longer sat idle waiting for upstream forms to arrive.

**A built-in base personnel directory addressed the other half of the PCS experience.** Airmen transferring to an unfamiliar installation could find contact information and office locations for every step in their checklist, reducing the disorientation that came with navigating a new base.

**AMP also proved that BESPIN could ship mobile applications quickly using standardized components.** By using pre-screened, reusable building blocks, the team shortened the development cycle and gave BESPIN a template it could apply to future mobile projects across the Air Force. That template became the foundation for the [Mobile Application Starter Kit (MASK)](/work/experience/usaf-mask/) — turning a single inprocessing tool into a reusable model for the factory's mobile pipeline.
{% endcapture %}

{% capture results %}
- **Won the Vice Chief of the Air Force Innovation Challenge**, validating AMP's approach to modernizing base operations
- **Replaced the paper-based inprocessing workflow** with a centralized digital interface that let airmen track and complete tasks from a single screen
- **Gave administrators real-time visibility** into every airman's processing status, eliminating the blind spots and bottlenecks caused by sequential paper handoffs
- **Established a reusable component model** for BESPIN's mobile application pipeline, providing standardized building blocks for future projects across the Air Force
- **Extended AMP's functionality beyond inprocessing** to support ongoing task management at the base level
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
