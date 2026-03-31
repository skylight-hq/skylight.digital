---
layout: default
title_tag: "Transportation Security Administration"
title: "Jumpstarting cloud adoption"
permalink: /work/experience/tsa-cloud-adoption/
redirect_from:
  - /work/tsa-cloud-adoption/
image: /img/projects/tsa_cloud_adoption/cloud-jumpstarter.svg
image_description: "An engineer using jumper cables on a cloud."
feature_image:
feature_image_description:
feature_image_shadow:
order: 3300
display: true
tags:
  - "transformation"
  - "devops"
  - "cloud & platforms"
  - "security & privacy"
  - "homeland security"
  - "chris cairns"
  - "shashank khandelwal"
excerpt: "Before strarting Skylight, Chris Cairns and Shashank Khandelwal helped the Transportation Security Administration accelerate its transition to a cloud-based operating model."
project_members:
  - chris-cairns
  - shashank-khandelwal
technologies:
  - "Amazon Web Services"
  - "Microsoft Azure"
  - "Octopus Deploy"
  - "Jenkins"
  - "Splunk"
  - "Git / GitHub"
practices:
  - "Agile cloud migration"
  - "Hybrid-cloud architecture"
  - "Infrastructure as code"
  - "Continuous integration"
  - "Deployment automation"
  - "Security controls automation"
  - "Training and coaching"
  - "Civic recruiting"
news_posts:
  - title: "A Culture of Innovation Is Key to TSA's Cloud Strategy"
    url: https://www.govloop.com/a-culture-of-innovation-is-key-to-tsas-cloud-strategy/
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
Before starting Skylight, Chris Cairns and Shashank Khandelwal led an initiative at 18F to jumpstart the Transportation Security Administration's (TSA's) adoption of a cloud-based operating model. By pairing TSA with a specialized team of site reliability engineers, they helped the agency chart a practical path from costly on-premise infrastructure to modern cloud operations.
{% endcapture %}

{% capture challenge %}
TSA's Chief Information Officer organization was spending heavily to maintain on-premise IT infrastructure, and imminent budget cuts threatened to make those costs unsustainable. The cloud offered a way forward — lower operating expenses, greater scalability, and a foundation for modern development practices — but the organization lacked the hands-on experience needed to make the transition.

The gap wasn't just technical. TSA's existing teams didn't have deep expertise in cloud architecture, automated deployment pipelines, or the DevOps practices required to operate reliably in a cloud environment. Without that knowledge, a large-scale migration risked becoming another costly initiative that stalled before delivering results. The agency needed a strategy that would build internal capability while demonstrating early wins fast enough to justify the investment.
{% endcapture %}

{% capture solution %}
A wholesale migration would have replicated the same big-bang risk that plagued waterfall software projects — what Chris Cairns and Shashank Khandelwal called "cloudfall." As members of 18F, they designed a phased approach instead, pairing TSA with an expert team of site reliability engineers to build momentum through manageable, iterative steps.

**The first move was migrating two low-risk applications within a few months.** These early migrations gave leadership immediate, concrete insight into the organizational changes the shift would require — spanning structure, culture, talent, practices, tooling, and vendor relationships. Starting small reduced risk while producing tangible evidence that the cloud model could work for TSA.

Each migration also served as a proving ground for **DevSecOps practices that TSA hadn't used before.** Infrastructure as code, continuous integration, and automated security controls demonstrated how cloud-native approaches could improve both speed and reliability. These weren't abstract concepts — they were working patterns the team applied to real TSA applications.

The engagement's lasting value came from what it left behind. Through hands-on training, coaching, and hiring support, Cairns and Khandelwal ensured the agency wouldn't remain dependent on outside expertise. The goal was a **self-sustaining cloud operation**, not a one-time migration.
{% endcapture %}

{% capture results %}
- **Projected savings of tens of millions of dollars** by transitioning away from on-premise infrastructure, helping TSA address impending budget reductions
- **Migrated two applications to the cloud within a few months,** providing leadership with a working proof of concept and a clear picture of the organizational changes required for broader adoption
- **Established a phased, agile migration strategy** for TSA's application portfolio, replacing the risk of a "big bang" migration with an iterative approach that built confidence at each step
- **Introduced DevSecOps practices** — including infrastructure as code, continuous integration, and automated security controls — that modernized how TSA built and operated applications
- **Built internal cloud and DevOps competencies** through training, coaching, and civic recruiting, positioning TSA to sustain the transformation independently
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
