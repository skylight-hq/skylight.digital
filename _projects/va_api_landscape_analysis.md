---
layout: default
title_tag: Veterans Affairs
title: Identifying valuable datasets for turning into APIs
permalink: /work/experience/va-api-landscape-analysis/
redirect_from:
  - /work/va-api-landscape-analysis/
image: /img/projects/va_api_landscape_analysis/api-machine.svg
image_description: Two people operating a machine that turns data into APIs.
feature_image:
feature_image_description:
order: 150
display: true
tags: [microconsulting, apis, open government, veterans, kin lane, chris cairns, robert read]
excerpt: Giving the Veterans Affairs insight into which of their vast collection of public datasets would be most valuable to the veteran community in the form of APIs.
project_members:
  - kin-lane
  - chris-cairns
  - robert-read
technologies:
  - Custom spidering script
  - HTML / CSS / Sass
  - JavaScript
  - Twitter Bootstrap
  - GitHub Pages / Jekyll
  - Git / GitHub
  - Amazon Web Services
  - Mural
practices:
  - Spidering
  - Semantic analysis
  - User research / KJ technique
  - Workshop facilitation
  - Research analysis and synthesis
  - Design system
news_posts:
project_url: https://skylight-hq.github.io/va-api-landscape/
project_cta: See the report
source_code_url: https://github.com/skylight-hq/va-api-landscape
---

{% capture summary %}
The Veterans Affairs' (VA's) API Platform Management team needed help
developing a near-term roadmap of APIs to deliver. So we provided an
analysis of the VA's millions of public datasets and recommended which
of these resources would be good candidates for turning into APIs, based
on potential value to the veteran community.
{% endcapture %}

{% capture challenge %}
The VA has produced millions of public datasets over the
years in support of the veteran community. These resources tell a story
about how much demand there is for accessing them. The VA's API Platform
Management team needed that insight in order to help formulate a near-term
roadmap of valuable APIs to deliver.
{% endcapture %}

{% capture solution %}
To address this challenge, we conducted an API landscape analysis that involved:

- Developing and running a spidering script that crawled all the VA web
properties and performed a weighted semantic analysis on resources such
XML files, CSV files, HTML tables, HTML forms, XLS/XLSX files, and other
machine-readable formats
- Conducting user research with veterans and their supporters to learn more about
what types of data resources would be most valuable to them if made more available
and accessible on the web, mobile devices, and other platforms
- Analyzing and synthesizing the results of the spidering process and the user research- i>
Preparing a report that detailed our methodology, analysis results, and
recommendations for resources to prioritize as APIs

In our report, we also made recommendations for how the VA can improve the
quality of their analytical information so that resource ranking can be done more efficiently and effectively in the future.
{% endcapture %}

{% capture results %}
- Delivered the project under the federal procurement micropurchase threshold of $10,000
- Crawled over 1 million URLs and evaluated over 20,000 data files
- Informed the VA's near-term API roadmap, which incorporated many of the
APIs we recommended for delivery
- Published the report in the open and with no copyright, making it free to
anyone who wants to learn from and reuse the content
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
