---
layout: default
title_tag: "State of Connecticut"
title: "Making government web analytics accessible and actionable"
permalink: /work/experience/ctgov-analytics/
image: /img/projects/ctgov_analytics/gov-analytics.svg
image_description: "People gathered around a large screen displaying web analytics data and trends."
feature_image:
feature_image_description:
feature_image_shadow:
order: 2300
display: true
tags:
  - "service delivery"
  - "data & analytics"
  - "open government"
  - "cailyn hansen"
  - "colin craig"
  - "gabriel ramirez"
excerpt: "A centralized, open-source analytics dashboard that gives Connecticut agencies and the public real-time insight into how government websites are used."
project_members:
  - cailyn-hansen
  - colin-craig
  - gabriel-ramirez
technologies:
  - "HTML / CSS / SVG"
  - "JavaScript / JSON"
  - "Amazon S3"
  - "Amazon CloudFront"
  - "Google Analytics"
practices:
  - "User research"
  - "Agile development"
  - "Open-source development"
  - "Cloud hosting"
  - "Third-party integration"
news_posts:
project_url: https://analytics.ct.gov/
project_cta: "See the site"
source_code_url: https://github.com/CTOpenData/analytics.ct.gov
---

{% capture summary %}
Analytics.ct.gov is a centralized, open-source dashboard that gives Connecticut state agencies and the public real-time insight into how government websites are used. Built by adapting a proven federal open-source codebase, the platform unified fragmented analytics data and empowered state teams to own and sustain the solution themselves.
{% endcapture %}

{% capture challenge %}
The State of Connecticut operated dozens of websites, each with its own analytics account. Getting a unified picture of how residents interacted with government digital services meant navigating fragmented systems — and even then, employees often didn't trust the numbers they found. Without reliable data, analytics rarely informed decisions about which services to improve or expand.

The roots ran deeper than technology. External vendors had built previous analytics tools and handed them off without adequate knowledge transfer, leaving internal teams unsure how the systems worked. Maintenance became uncertain. Improvements stalled. Over time, staff stopped relying on analytics altogether, and the state lost a critical feedback loop between resident behavior and service delivery.

Agencies couldn't tell which digital services needed attention, and the public had no window into how their government's online presence was performing.
{% endcapture %}

{% capture solution %}
**Rather than building from scratch, we adapted a proven federal codebase.** Our team had helped develop [analytics.usa.gov](https://analytics.usa.gov/), so we drew on that experience and its [open-source code](https://github.com/18F/analytics.usa.gov) to create a Connecticut-specific dashboard. Starting from a validated foundation cut development time and gave the state a platform architecture already tested at scale.

**User research shaped what the dashboard showed and how it showed it.** Interviews with agency staff revealed gaps in how they accessed and interpreted analytics — many didn't know where to find the data they needed, and those who did often questioned its accuracy. The redesigned dashboard surfaced key metrics like real-time visitors, top pages, traffic sources, and device breakdowns in a format readable at a glance.

**Capacity-building ran parallel to development.** Instead of handing off a finished product, we worked side by side with state staff, coaching them on modern development practices so they could maintain, extend, and improve the platform on their own. The goal was a solution that would outlast the engagement.

**The resulting platform opened up web traffic data to both agencies and the public.** Agency teams could now see which services residents used most and prioritize improvements accordingly. The public gained the same access — along with the underlying open-source code for independent analysis.
{% endcapture %}

{% capture results %}
- **Launched a centralized analytics dashboard** that unified web traffic data across Connecticut state government websites into a single, publicly accessible view
- **Adapted a federally validated open-source codebase** from analytics.usa.gov, reducing development time while delivering a proven platform architecture
- **Built internal capacity for long-term ownership** by coaching state staff on modern development practices, enabling them to maintain and extend the platform independently
- **Improved agency decision-making** by giving teams real-time insight into how residents interact with government digital services
- **Expanded public transparency** by making government web traffic data openly accessible alongside the platform's open-source code
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
