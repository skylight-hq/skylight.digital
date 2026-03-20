---
layout: default
title_tag: Small Business Administration
title: Helping female entrepreneurs succeed
permalink: /work/experience/sba-ascent/
image: /img/projects/sba_ascent/sba-ascent.svg
image_description: A woman sitting at her desk and using an online learning platform.
feature_image:
feature_image_description:
feature_image_shadow:
order: 2700
display: true
tags: [service delivery, devops, cloud & platforms, apis, economic development, andrew wagner]
excerpt: A digital learning platform designed to help female entrepreneurs start and grow their businesses with practical, accessible guidance.
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
The Small Business Administration (SBA) needed a digital learning platform tailored to the needs of female entrepreneurs. As a subcontractor to Fearless, we helped deliver a technical solution that maximized the value of an existing open-source product while preserving the flexibility needed to create a distinct, high-quality user experience.
{% endcapture %}

{% capture challenge %}
Female entrepreneurs own nearly half of all businesses in the U.S., employ millions of workers, and generate significant economic impact across every industry. To better support their success, SBA launched Ascent, a free online learning platform built on the open-source Brightspot content management system.

The challenge was to use Brightspot in a way that preserved its strengths without limiting the user experience to what was available out of the box. SBA needed an approach that avoided both heavy customization inside the CMS and the long-term maintenance burden that often comes with heavily modified off-the-shelf software.
{% endcapture %}

{% capture solution %}
As a subcontractor to [Fearless](https://fearless.tech/), we provided technical leadership to help define and implement a more flexible architecture for the platform.

We helped architect and engineer a custom API wrapper that programmatically interacted with Brightspot while keeping the front-end experience decoupled from the CMS itself. This approach allowed the team to leverage Brightspot’s full feature set without constraining the design and development of the learning experience.

The result was a more maintainable, scalable foundation for delivering curated learning content to female entrepreneurs.
{% endcapture %}

{% capture results %}
- Demonstrated through a spike solution that a custom API approach would work with Brightspot and support a robust front-end architecture
- Delivered 11 content modules featuring video, audio, downloadable worksheets, interactive self-assessments, and other learning materials
- Helped launch the platform publicly in January 2021
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
