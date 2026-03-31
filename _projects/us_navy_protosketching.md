---
layout: default
title_tag: "U.S. Navy"
title: "Better decisions through protosketching"
permalink: /work/experience/us-navy-protosketching/
redirect_from:
  - /work/us-navy-protosketching/
image: /img/projects/us_navy_protosketching/protosketching.svg
image_description: "Two people using brushes to draw a wireframe."
feature_image:
feature_image_description:
feature_image_shadow:
order: 4100
display: true
tags:
  - "microconsulting"
  - "research & design"
  - "product management"
  - "defense"
  - "navy"
  - "robert read"
  - "tom black"
excerpt: "A rapid protosketching session helped the Navy Reserve make a critical mobile product strategy decision for Ready-2-Serve in a single afternoon."
project_members:
  - robert-read
  - tom-black
technologies:
  - "HTML / CSS"
  - "JavaScript"
  - "Twitter Bootstrap"
  - "Temporary URLs"
  - "Heroku"
  - "Git / GitHub"
practices:
  - "Design pattern library"
  - "Rapid prototyping"
  - "User story writing and estimation"
  - "User testing"
  - "Responsive web design"
  - "Open-source development"
  - "Cloud hosting"
news_posts:
  - title: "Are you Ready-2-Serve? The Navy Reserve has launched its new mobile app"
    url: https://dailydefensenews.wordpress.com/2016/11/01/are-you-ready-2-serve-the-navy-reserve-has-launched-its-new-mobile-app/
project_url:
project_cta:
source_code_url: https://github.com/18F/r2s
---

{% capture summary %}
Before founding Skylight, Robert Read and Tom Black used a technique they pioneered at 18F — protosketching — to help the Navy Reserve make a critical mobile product strategy decision for its Ready-2-Serve (R2S) platform. By building a functional prototype in a single afternoon, they gave the R2S project team the evidence it needed to choose between native mobile apps and responsive web design.
{% endcapture %}

{% capture challenge %}
The Navy Reserve needed to modernize how sailors wrote and managed orders for their reserve duties. The existing process wasn't accessible on mobile devices — a significant gap for personnel who needed to handle duty-related tasks outside of a desktop environment. Making mobile access available was a clear priority, but the path forward wasn't obvious.

The core question was whether to invest in native mobile applications or adopt responsive web design. Each approach carried different cost, maintenance, and timeline implications, and getting the answer wrong would mean months of misallocated development effort. In a traditional procurement environment, answering that kind of question typically required a lengthy requirements-writing phase and contractor engagement before any working software materialized — a timeline that didn't match the urgency of the Reserve's need.
{% endcapture %}

{% capture solution %}
Rather than debating the mobile strategy in the abstract, Robert Read and Tom Black set out to answer it with working software. They applied a technique they'd pioneered at 18F called protosketching — building a **clickable prototype in three hours or less** so that real design and technology decisions could be grounded in something tangible.

**The afternoon was structured as three one-hour sprints.** In each sprint, the team wrote user stories that captured the Reserve's core mobile requirements, and developers immediately translated those stories into a functional mock-up. Using HTML, CSS, JavaScript, and Twitter Bootstrap for responsive layout, they created a mobile website that simulated the key functionality R2S needed — viewable on phones and laptops alike.

Bootstrap's responsive framework rendered the mock-up cleanly on both mobile devices and a projector, giving the R2S team something no requirements document could: a **firsthand look at the user experience** they were deciding on. The session demonstrated that responsive web design could meet the Reserve's mobile requirements without the overhead of building and maintaining separate native applications. This informed the mobile product strategy for what eventually became the Ready-2-Serve platform — the Navy Reserve's first operational Bring Your Own Device program in the Department of Defense.
{% endcapture %}

{% capture results %}
- **De-risked a major platform decision in a single afternoon** — the R2S team chose a mobile strategy backed by a working prototype rather than theoretical analysis
- **Demonstrated responsive web design as a viable path** for the Navy Reserve's mobile needs, avoiding the cost and complexity of native app development
- **Produced a functional mock-up in three hours** using three one-hour sprints, showing that meaningful technical exploration doesn't require a lengthy procurement cycle
- **Informed the mobile strategy for Ready-2-Serve**, which launched as the Navy Reserve's first Bring Your Own Device program in the Department of Defense
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
