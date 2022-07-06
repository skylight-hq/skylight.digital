---
layout: default
title_tag: Veterans Affairs
title: Creating a tool for governing APIs
permalink: /work/experience/va-api-scorecard-mvp/
redirect_from:
  - /work/va-api-scorecard-mvp/
image: /img/projects/va_api_scorecard_mvp/api-scorecard.svg
image_description: People working around a scorecard for APIs.
feature_image:
feature_image_description:
feature_image_shadow:
order: 3000
display: true
tags: [microconsulting, apis, open government, victor zapanta, nick bristow, kin lane, robert read, chris cairns]
excerpt: A minimum viable product enabling the Veterans Affairs to start learning how best to govern their growing portfolio of APIs.
project_members:
  - victor-zapanta
  - nick-bristow
  - kin-lane
  - robert-read
  - chris-cairns
technologies:
  - HTML / CSS / Sass
  - JavaScript
  - U.S. Web Design System
  - Balsamiq
  - YAML
  - GitHub Pages
  - Jekyll
  - Git / GitHub
  - OAuth
practices:
  - User research
  - User experience design
  - Design system
  - Lean startup
  - Agile development
  - Rapid prototyping
  - Open-source development
  - Identity and access management
  - API governance
news_posts:
project_url: https://skylight-hq.github.io/va-api-scorecard/
project_cta: See the site
source_code_url: https://github.com/skylight-hq/va-api-scorecard
---

{% capture summary %}
The Veterans Affairs (VA) needed to start preparing for how best to govern
their growing portfolio of APIs. So we built them a minimum viable
product (MVP) of an API Scorecard governance tool.
{% endcapture %}

{% capture challenge %}
The VA recently launched an initiative called API Platform Management.
The purpose of this new enterprise-wide program is to transform how the
VA shares digital services through APIs. Success requires good API governance,
so VA leaders hypothesized that creating an API Scorecard tool for use by
teams and management could help with:

- Establishing a common understanding of the VA's API delivery lifecycle and
what success looks like at each stage
- Enabling teams to keep management informed of status, progress, and health,
and alert them to any issues requiring special attention
- Giving management visibility into how teams are doing, where they need help,
and what governance decisions need to be made
- Giving stakeholders insight into the value of the VA's portfolio of APIs
- Reinforcing best practices among teams for delivering APIs successfully

The VA needed a <em>lean</em> way to further flesh out and test this idea.
{% endcapture %}

{% capture solution %}
To address this need, we assembled a cross-functional team with expertise in
UX design, software engineering, and API governance. Through a series of
rapid iterations, we created an MVP of the API Scorecard governance tool.

We used GitHub Pages to serve as a public front end and private back end for
the application, a technique pioneered by a member of the Skylight team.
This approach avoided the additional time, cost, and complexity associated
with setting up a secure back-end server environment, thus keeping things lean.

We also worked with the VA to not only define the stages of their
API lifecycle, but also the "delivery success criteria" that governs
how projects move from one stage to the next. We made both the stages
and the criteria configurable with the application's YAML files.
{% endcapture %}

{% capture results %}
- Delivered the MVP under the federal procurement micropurchase threshold of $10,000
- Enabled the VA to begin experimenting with how best to govern their portfolio of APIs
- Released all the source code in the open and with no copyright, making it
freely available for anyone to reuse
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
