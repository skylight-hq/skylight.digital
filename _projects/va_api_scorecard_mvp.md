---
layout: default
title_tag: Veterans Affairs
title: Creating a tool for governing APIs
permalink: /work/experience/va-api-scorecard-mvp/
redirect_from:
  - /work/va-api-scorecard-mvp/
image: /img/projects/va_api_scorecard_mvp/api-scorecard.svg
image_description: People working around a scorecard for APIs.
feature_image: /img/projects/va_api_scorecard_mvp/api-scorecard.gif
feature_image_description: Walkthrough of the VA API Scorecard prototype.
feature_image_shadow: true
order: 3000
display: true
tags: [microconsulting, apis, open government, veterans, victor zapanta, nick bristow, kin lane, robert read, chris cairns]
excerpt: A minimum viable product the VA could use to start running real governance conversations across its growing API portfolio.
project_members:
  - victor-zapanta
  - nick-bristow
  - kin-lane
  - robert-read
  - chris-cairns
technologies:
  - "HTML"
  - "CSS"
  - "Sass"
  - "JavaScript"
  - "U.S. Web Design System"
  - "Balsamiq"
  - "YAML"
  - "GitHub Pages"
  - "Jekyll"
  - "Git"
  - "GitHub"
  - "OAuth"
practices:
  - "User research"
  - "User experience design"
  - "Design system"
  - "Lean startup"
  - "Agile development"
  - "Rapid prototyping"
  - "Open-source development"
  - "Identity and access management"
  - "API design"
news_posts:
project_url: https://skylight-hq.github.io/va-api-scorecard/
project_cta: See the site
source_code_url: https://github.com/skylight-hq/va-api-scorecard
---

{% capture summary %}
We built a minimum viable product (MVP) of an API Scorecard governance tool for the U.S. Department of Veterans Affairs (VA) — part of our broader VA API engagement. The Scorecard gave the API Platform Management team a working frame for governance conversations: shared lifecycle stages, agreed success criteria, and a clear portfolio view.
{% endcapture %}

{% capture challenge %}
The VA had launched API Platform Management, an enterprise initiative to transform how the agency shares digital services through APIs. As the portfolio grew, the question wasn't just which APIs to build — it was how to govern them as a coherent program. Without a shared view across delivery teams, leadership couldn't see how the program was actually performing.

VA leaders had a hypothesis: a Scorecard tool, visible to both teams and management, could give the program the structure it needed. It would clarify the API delivery lifecycle and capture what success looks like at each stage. The portfolio-wide view would surface signal that no individual team could provide alone. But the hypothesis was untested. The VA needed a cheap, fast way to find out whether the tool was worth building for real.
{% endcapture %}

{% capture solution %}
We assembled a cross-functional team — design, software engineering, and API governance — and built the MVP through rapid iterations. Two decisions shaped what we shipped: how we built the tool, and what we put in it.

**How we built it: the application is its own back end.** A team member had earlier shown that GitHub Pages — typically used for static front ends — could also serve as a private back end. The trick: read from a private repository with authenticated access. We adopted that pattern for the Scorecard. It cut out the cost, time, and complexity of standing up a separate secure server. That would have ruled out an MVP-scale build inside a micropurchase.

**What's in it: lifecycle stages and success criteria, defined with the VA.** What does it mean for an API to be ready for development, live in production, or mature? The team co-designed both the lifecycle stages and the delivery success criteria that move APIs between them. We then made both configurable through the application's YAML files. The VA could keep refining the governance content as the program learned, without touching the code.

The result was a tool the VA could run experiments with — testing whether their governance hypothesis held up before committing to a production build.
{% endcapture %}

{% capture results %}
- **Delivered a working MVP under the $10,000 federal micropurchase threshold**, including the application, the lifecycle content, and the success criteria
- **Applied a Skylight-pioneered GitHub Pages back-end pattern** that gave the VA a fully functional governance tool without the cost of a separate server environment
- **Made the governance content fully configurable**, so the VA could keep iterating on stages and success criteria as their program matured — without engineering changes
- **Published the source code in the open with no copyright**, making the tool reusable for any agency facing the same API governance question
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
