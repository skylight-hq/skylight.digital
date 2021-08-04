---
layout: default
title_tag: Small Business Administration
title: Helping female entrepreneurs succeed
permalink: /work/experience/sba-ascent/
image: /img/projects/sba_ascent/sba-ascent.svg
image_description: A woman sitting at her desk and using an online learning website.
feature_image:
feature_image_description:
feature_image_shadow:
order: 75
display: true
tags: [service delivery, devops, cloud & platforms, apis, economic development, andrew wagner]
excerpt: A learning platform designed to help female entrepreneurs start and grow their small businesses successfully.
project_members:
  - andrew-wagner
technologies:
  - HTML / CSS
  - Brightspot CMS
  - Ruby / Rails
  - JavaScript / React / Redux
  - Semantic UI
  - APIs
  - Amazon Web Services
  - Docker
  - Git / GitHub
practices:
  - Lean startup
  - Agile development
  - REST API wrapper
  - DevOps
  - Open-source development
  - Cloud hosting
  - Virtual teams
news_posts:
  - title: SBA Launches New, Free Online Digital Learning Platform
    url: https://www.sba.gov/article/2021/jan/11/sba-launches-new-free-online-digital-learning-platform
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
To further their mission of helping small businesses succeed, the Small
Business Administration (SBA) needed a learning platform focused on
female entrepreneurs. We engaged as a subcontractor to Fearless to
deliver a technical solution that maximizes the use of an existing
open-source-software product without limiting the flexibility needed
to deliver a unique user experience.
{% endcapture %}

{% capture challenge %}
Female entrepreneurs start and own nearly half of all businesses in the U.S.,
employ 9.4 million workers, generate $1.9 trillion in revenue and represent
all industries. To help elevate their success, the SBA launched Ascent, a free
online learning platform based on an existing open-source content management system
(CMS) called Brightspot. A critical challenge was leveraging Brightspot in such a way as
to not only avoid constraining the design of the user experience to what's available
"out-of-the-box," but also to avoid the nightmare of having to maintain a
"custom-off-the-shelf-software" product.
{% endcapture %}

{% capture solution %}
As a subcontractor to [Fearless](https://fearless.tech/), our team provided
additional technical leadership around how best to address this challenge.
In particular, we helped architect and engineer a custom API wrapper that
programmatically makes calls into Brightspot, thereby leveraging its full feature set in
an independent way. This approach gave them the power to create a curated learning
experience for female entrepreneurs.
{% endcapture %}

{% capture results %}
- Demonstrated, using a spike solution, that a customized API would not only work
with Brightspot, but would also provide a robust front-end development
resource for the SBA
- Delivered 11 modules of working content, including video, audio, downloadable
worksheets, interactive self-assessments, and more
- Released to the public in January 2021
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
