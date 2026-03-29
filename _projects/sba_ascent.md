---
layout: default
title_tag: "Small Business Administration"
title: "Helping female entrepreneurs succeed"
permalink: /work/experience/sba-ascent/
image: /img/projects/sba_ascent/sba-ascent.svg
image_description: "A woman sitting at her desk and using an online learning platform."
feature_image:
feature_image_description:
feature_image_shadow:
order: 2700
display: true
tags:
  - "service delivery"
  - "devops"
  - "cloud & platforms"
  - "apis"
  - "economic development"
  - "andrew wagner"
excerpt: "A digital learning platform that gives female entrepreneurs free, self-paced access to business growth resources backed by research."
project_members:
  - andrew-wagner
technologies:
  - "HTML / CSS"
  - "Brightspot CMS"
  - "Ruby / Rails"
  - "JavaScript / React / Redux"
  - "Semantic UI"
  - "APIs"
  - "Amazon Web Services"
  - "Docker"
  - "Git / GitHub"
practices:
  - "Lean startup"
  - "Agile development"
  - "REST API wrapper"
  - "DevOps"
  - "Open-source development"
  - "Cloud hosting"
  - "Virtual teams"
news_posts:
  - title: "SBA Launches New, Free Online Digital Learning Platform"
    url: https://www.sba.gov/article/2021/jan/11/sba-launches-new-free-online-digital-learning-platform
  - title: "The Ascent Digital Platform Expands: SBA Introduces Course in Government Contracting"
    url: https://www.sba.gov/article/2022/feb/07/ascent-digital-platform-expands-sba-introduces-course-government-contracting-online-digital-learning
  - title: "SBA Introduces Two New Courses, Partnerships and Entrepreneurial Leadership to Ascent"
    url: https://www.sba.gov/article/2022/apr/19/sba-introduces-two-new-courses-partnerships-entrepreneurial-leadership-ascent-online-digital
  - title: "The SBA Announces Expansion of Ascent Online Digital Platform Programming"
    url: https://www.sba.gov/article/2022/sep/21/sba-announces-expansion-ascent-online-digital-platform-programming
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
Ascent is a free digital learning platform that gives female entrepreneurs self-paced access to business growth resources — from strategic marketing and access to capital to disaster recovery and government contracting. Built as a joint initiative between the Small Business Administration (SBA), the White House, the Department of Labor's Women's Bureau, and the Department of the Treasury, Ascent has helped tens of thousands of women business owners build skills and scale their businesses since its January 2021 launch.
{% endcapture %}

{% capture challenge %}
Women entrepreneurs start and own nearly half of all businesses in the United States, employ 9.4 million workers, and generate $1.9 trillion in revenue across every industry. Despite that economic impact, many lacked a centralized, free resource for the kind of practical business education — access to capital, marketing strategy, leadership development — that could help them move from surviving to growing.

SBA set out to close that gap with Ascent, an online learning platform built on the open-source Brightspot content management system (CMS). The vision was ambitious: curated learning "journeys" featuring video, self-assessments, expert interviews, and downloadable tools — all available 24/7 at no cost. But the technical challenge was just as real. Brightspot offered strong content management capabilities out of the box, yet its default front-end experience couldn't deliver the kind of polished, interactive learning interface the platform demanded. Heavy customization inside the CMS would have locked SBA into a fragile, hard-to-maintain codebase. Doing too little would have produced a generic experience that didn't meet the needs of its audience. SBA needed an architecture that used Brightspot's strengths without being constrained by its limitations.
{% endcapture %}

{% capture solution %}
As a subcontractor to [Fearless](https://fearless.tech/), we provided technical leadership to define and implement a decoupled architecture for Ascent. Rather than modifying Brightspot's internals or accepting its default front end, the team chose a middle path: use the CMS for what it does best — content modeling and management — while building a fully independent front-end experience.

The centerpiece was a **custom API wrapper** that programmatically interacted with Brightspot's content layer. This wrapper served as a clean boundary between the CMS and the React-based front end, allowing design and development teams to iterate on the learning experience without being constrained by CMS templates or rendering logic. The approach preserved Brightspot's full feature set for content editors while giving front-end engineers the freedom to build interactive elements — video players, self-assessments, progress tracking — that the default CMS couldn't support.

**Before committing to the architecture, the team validated it through a spike solution.** The spike proved that the custom API approach could reliably surface Brightspot content into a React front end, giving SBA the confidence to move forward without the risk of a costly mid-project pivot.

Because the front end and CMS were decoupled, SBA could update learning content independently of the application code — and vice versa. That flexibility has supported Ascent's **continued expansion from its initial five learning journeys to nine and counting.**
{% endcapture %}

{% capture results %}
- **Validated the decoupled architecture through a spike solution**, confirming that a custom API wrapper could reliably bridge Brightspot and a React front end before full development began
- **Delivered 11 content modules at launch** featuring video, audio, downloadable worksheets, interactive self-assessments, and other learning materials across five initial learning journeys
- **Launched the platform publicly in January 2021** as a joint initiative between SBA, the White House, the Department of Labor, and the Department of the Treasury
- **Reached nearly 50,000 businesses** in Ascent's first year, providing women entrepreneurs with free, self-paced access to business growth education
- **Supported continued platform expansion** from five learning journeys at launch to nine — including government contracting, partnerships, entrepreneurial leadership, and growing globally — enabled by the decoupled architecture's flexibility
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
