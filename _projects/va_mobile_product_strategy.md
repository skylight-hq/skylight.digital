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
  - "Microconsulting"
  - "APIs"
  - "Veterans"
  - "Healthcare"
excerpt: "A mobile product strategy that gave the VA an evidence-based roadmap, decision framework, and architecture for delivering a flagship app to veterans."
project_members:
  - sean-johnson
  - chris-cairns
technologies:
  - "Zoom"
  - "Google Workspace"
  - "Git"
  - "GitHub"
practices:
  - "Primary research"
  - "Secondary research"
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
We developed a mobile product strategy for the U.S. Department of Veterans Affairs (VA) — part of our microconsulting work with the VA's API platform. The report had three parts: a roadmap for a Minimum Viable Product (MVP), a decision framework, and a recommended architecture. Together, they gave the VA an evidence-based foundation for delivering a flagship mobile app to veterans, service members, caregivers, and dependents.
{% endcapture %}

{% capture challenge %}
The VA serves millions of veterans through hundreds of online services. Those services lived across dozens of standalone mobile apps and a responsive website not built for mobile. Veterans switching between prescriptions, claims, appointments, and secure messaging had to move between multiple tools with inconsistent experiences.

Large consumer-facing organizations — banks, insurers, healthcare systems — had already consolidated their mobile presence into flagship apps. These single applications serve as the primary mobile touchpoint for a brand. The VA recognized this trend and saw an opportunity to improve how veterans interacted with its digital services.

The path forward wasn't obvious. The VA had three questions to answer. Which features belonged in a native app versus the mobile web? What technical approach to use? And how to sequence an MVP starting with the most common veteran needs? They wanted an outside perspective grounded in industry research and direct veteran input.
{% endcapture %}

{% capture solution %}
We approached the work as a research engagement, using four methods:

- A comparative analysis of 17 flagship mobile apps across healthcare, banking, and insurance
- A technical teardown of six iOS apps
- Interviews with product teams at organizations like Mayo Clinic and USAA
- Conversations with veterans about their mobile needs and constraints

The findings shaped three deliverables.

**The architecture: thin client, thick API.** The research revealed clear patterns. Companies in the private sector built their flagship apps natively, used device-specific features, and invested in open source ecosystems. But the VA had constraints those companies didn't — accessibility requirements, spotty rural connectivity, older devices, and federal authentication standards. We proposed a "thin client, thick API" architecture that separated the mobile experience from backend services. The split let the VA borrow the private-sector patterns while still meeting its own constraints.

**The decision framework: a way to weigh native vs. web vs. hybrid for any VA app, not a single prescription.** We built a way for the VA to choose among five development paths: mobile web, progressive web application, hybrid, cross-platform native, or full native. The framework compared each path across user experience, development speed, accessibility, and long-term maintenance.

**The MVP roadmap: sequencing nearly 30 features.** The roadmap covered user actions like biometric login, prescription refill, claims status, and secure messaging. We tagged each by launch priority and by whether it needed to be native or could fall back to a responsive web experience.

The three pieces together gave the VA a strategic foundation that covered architecture through feature sequencing. The flagship mobile app launched from that foundation. The VA launched VA: Health and Benefits in 2021. It has since surpassed three million downloads.
{% endcapture %}

{% capture results %}
- **Analyzed 17 flagship mobile apps** across healthcare, banking, and insurance — including Bank of America, USAA, Capital One, Mayo Clinic, Zocdoc, and FollowMyHealth — to establish a private-sector benchmark
- **Conducted a technical teardown of six iOS apps** to identify architecture patterns and inform the VA's build-versus-buy decision framework
- **Defined an MVP roadmap of nearly 30 user actions and features**, categorized by launch priority and native-versus-web implementation
- **Delivered a mobile product strategy under the $10,000 federal micropurchase threshold**, showing that strategic foundation work can fit a fast, low-friction procurement vehicle
- **Published the full report as open source** with no copyright restrictions, making it reusable for any agency facing the same questions
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
