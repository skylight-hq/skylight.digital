---
layout: default
title_tag: "Veterans Affairs"
title: "Defining the VA's flagship mobile app strategy"
permalink: /work/experience/va-mobile-product-strategy/
redirect_from:
  - /work/va-mobile-product-strategy/
image: /img/projects/va_mobile_product_strategy/va-flagship-mobile-app.svg
image_description: "A veteran using a VA flagship mobile app."
feature_image:
feature_image_description:
feature_image_shadow:
order: 2600
display: true
tags:
  - "microconsulting"
  - "apis"
  - "veterans"
  - "healthcare"
  - "sean johnson"
  - "chris cairns"
excerpt: "A mobile product strategy that gave the VA an evidence-based roadmap for delivering a flagship app to veterans."
project_members:
  - sean-johnson
  - chris-cairns
technologies:
  - "Zoom"
  - "Google Workspace"
  - "Git / GitHub"
practices:
  - "Primary research"
  - "Secondary research"
  - "Comparative analysis"
  - "User interviews"
  - "Lean startup"
  - "Research analysis and synthesis"
news_posts:
  - title: "VA health and benefits app reaches 3 million downloads"
    url: https://news.va.gov/press-room/va-health-and-benefits-app-reaches-3-million-downloads/
  - title: "VA health and benefits mobile app reaches 1M downloads"
    url: https://news.va.gov/111424/health-benefits-mobile-app-reaches-1m-downloads/
  - title: "VA's New Mobile App Centralizes Veteran Services"
    url: https://govciomedia.com/vas-new-mobile-app-centralizes-veteran-services/
  - title: "VA is Working to Add New Features to its Health and Benefits App"
    url: https://www.nextgov.com/digital-government/2023/01/va-working-add-new-features-its-health-and-benefits-app/382350/
  - title: "Creating a flagship mobile app to meet Veterans' needs"
    url: https://adhoc.team/2022/01/26/creating-flagship-mobile-app-to-meet-veterans-needs/
project_url: https://github.com/skylight-hq/VA-Micropurchase-Repo/blob/master/2018-13-2018_VA%20Flagship_Mobile_Application/Deliverables/Skylight%20Digital%20LLC/va_flagship_mobile_application_analysis_summary.md
project_cta: "See the report"
source_code_url:
---

{% capture summary %}
As part of our microconsulting work with the VA's API platform, we developed a mobile product strategy for the Department of Veterans Affairs (VA). The report gave the VA an MVP roadmap, a decision framework for choosing among mobile development approaches, and a recommended architecture for delivering a flagship mobile app to veterans, service members, caregivers, and dependents.
{% endcapture %}

{% capture challenge %}
The VA serves millions of veterans through hundreds of online services, but those services were scattered across dozens of standalone mobile apps and a responsive website that wasn't optimized for mobile use. Veterans navigating prescriptions, claims, appointments, and secure messaging had to move between multiple tools with inconsistent experiences.

Large consumer-facing organizations — banks, insurers, healthcare systems — had already consolidated their mobile presence into flagship apps: single, comprehensive applications that serve as the primary mobile touchpoint for a brand. The VA recognized this trend and saw an opportunity to improve how veterans interacted with its digital services.

The path forward wasn't obvious, though. The VA needed to understand which features belonged in a native app versus the mobile web, what technical approach to use, and how to sequence an MVP that served the most common veteran needs first. They sought an outside perspective grounded in industry research and direct veteran input.
{% endcapture %}

{% capture solution %}
**We combined our own mobile delivery expertise with extensive design and technical research to build a strategy grounded in evidence, not assumptions.** The work spanned a comparative analysis of 17 flagship mobile apps across healthcare, banking, and insurance; a technical teardown of six iOS apps to understand real-world architecture decisions; interviews with product teams at organizations like Mayo Clinic and USAA; and conversations with veterans to understand their mobile needs and constraints.

The research revealed patterns that shaped every recommendation in the report. Comparable flagship apps in the private sector were built natively, made extensive use of device-specific capabilities, and invested in the open source development ecosystem. But the VA had constraints the private sector didn't face — accessibility requirements, spotty rural connectivity, older devices, and federal identity authentication standards. **We designed our recommendations to account for those realities,** proposing a "thin client, thick API architecture" that separated the mobile experience from the backend services.

From the technical analysis, we built a decision framework for choosing among mobile development approaches — mobile web, progressive web application, hybrid, cross-platform native, or full native. Rather than prescribing a single answer, **the framework gave VA leadership a structured way to weigh tradeoffs** between user experience, development speed, accessibility, and long-term maintenance.

We also defined an MVP roadmap covering nearly 30 user actions and features, from biometric login and prescription refill to claims status and secure messaging. Each feature was categorized by launch priority and whether it required native implementation or could fall back to a responsive web experience. The result was **a complete strategic foundation — from architecture to feature sequencing — that helped pave the way for the VA's flagship mobile app.** The VA launched VA: Health and Benefits in 2021, and it has since surpassed three million downloads.
{% endcapture %}

{% capture results %}
- **Analyzed 17 flagship mobile apps** across healthcare, banking, and insurance — including Bank of America, USAA, Capital One, Mayo Clinic, Zocdoc, and FollowMyHealth — to establish a private-sector benchmark
- **Conducted a technical teardown of six iOS apps** to identify architecture patterns and inform the VA's build-versus-buy decision framework
- **Defined an MVP roadmap of nearly 30 user actions and features,** categorized by launch priority and native-versus-web implementation
- **Delivered a comprehensive mobile product strategy** under the federal procurement micropurchase threshold of $10,000
- **Published the full report as open source** with no copyright restrictions, making it freely available for reuse
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
