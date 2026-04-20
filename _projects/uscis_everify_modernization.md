---
layout: default
title_tag: "U.S. Citizenship and Immigration Services"
title: "Modernizing employment eligibility verification"
permalink: /work/experience/uscis-everify-modernization/
redirect_from:
  - /work/uscis-everify-modernization/
image: /img/projects/uscis_everify_modernization/employment-eligibility-verification.svg
image_description: "A person using a punchcard to enter work."
feature_image:
feature_image_description:
feature_image_shadow:
order: 1500
display: true
tags:
  - "service delivery"
  - "software delivery"
  - "legacy modernization"
  - "devops"
  - "cloud & platforms"
  - "data & analytics"
  - "apis"
  - "security & privacy"
  - "homeland security"
  - "citizenship & immigration"
  - "josh dorothy"
  - "nick bristow"
  - "jay danielian"
excerpt: "A modernized E-Verify system that gave over 800,000 employers faster, more reliable employment eligibility verification — built through an incremental migration of legacy services to the cloud."
project_members:
  - josh-dorothy
  - nick-bristow
  - jay-danielian
technologies:
  - "HTML / CSS"
  - "JavaScript / React / Redux"
  - "Ruby / Rails"
  - "Groovy"
  - "JMeter"
  - "APIs"
  - "Microservices"
  - "Swagger"
  - "Amazon Web Services"
  - "Docker"
  - "Jenkins"
  - "Chef"
  - "Packer"
  - "Elasticsearch"
  - "Sequel"
  - "Git / GitHub"
practices:
  - "Accessibility review"
  - "Agile development"
  - "Rapid prototyping"
  - "API-first development"
  - "Microservices architecture"
  - "RESTful / SOAP API architecture"
  - "Legacy reengineering / strangler pattern"
  - "Data engineering"
  - "DevSecOps"
  - "Containerization"
  - "Cloud hosting"
  - "Automated documentation"
  - "Co-located teams"
news_posts:
  - title: "E-Verify Modernization Launch"
    url: https://www.uscis.gov/e-verify-modernization-launch
  - title: "Shutdown caused surge for E-Verify, but modernization helped"
    url: https://federalnewsnetwork.com/insight-of-the-month/2019/04/shutdown-caused-surge-for-e-verify-but-modernization-helped/
  - title: "USCIS Unveils New Round of Enhancements to E-Verify"
    url: https://ogletree.com/insights-resources/blog-posts/uscis-unveils-new-round-of-enhancements-to-e-verify/
  - title: "USCIS Releases Improvements to E-Verify System"
    url: https://www.globalimmigrationblog.com/2018/04/uscis-releases-improvements-to-e-verify-system/
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
E-Verify is the system that U.S. Citizenship and Immigration Services (USCIS) operates for employers to confirm the eligibility of their employees to work in the United States. Working with [Excella](https://www.excella.com/), we provided API design and technical expertise that helped modernize and relaunch E-Verify — migrating 225 million historical cases, replacing legacy services with cloud-deployed microservices, and delivering a faster, more reliable experience for over 800,000 enrolled employers.
{% endcapture %}

{% capture challenge %}
E-Verify sits at the intersection of private employers and federal records held by the Social Security Administration (SSA) and the Department of Homeland Security. At the time of the modernization, more than 800,000 employers relied on the system to verify new hires' work eligibility — making it one of the highest-traffic transactional services in the federal government. But the underlying technology hadn't kept pace with that demand.

Employers experienced slow verification times, confusing interfaces, and error-prone data entry workflows that undermined confidence in results. Rather than guiding users through a clear process, the case creation and management workflow required too many steps — and official terminology didn't always match the language employers actually used. Incomplete or abandoned enrollments signaled that the onboarding experience itself was a barrier.

The modernization couldn't start clean. A web of legacy services, databases, and real-time third-party integrations — including direct connections to SSA — had to remain operational throughout the transition. Without careful sequencing, any change risked disrupting a service that employers depended on daily. The team needed to build and optimize new capabilities while simultaneously maintaining the existing system, navigating that tension without a single day of downtime.
{% endcapture %}

{% capture solution %}
Working with Excella, we helped USCIS modernize E-Verify's architecture and relaunch the system using a strangler pattern — replacing legacy components incrementally rather than attempting a high-risk, all-at-once migration. Each new service went live alongside the old one, absorbing traffic gradually until the legacy component could be retired.

**We replaced aging services with modern, cloud-deployed frameworks** hosted on Amazon Web Services. Rewriting these services in current languages and deploying them as microservices gave the team the flexibility to update individual components without destabilizing the broader system — a critical requirement given E-Verify's uptime demands.

**The data-retrieval layer received a full rewrite to eliminate query bottlenecks.** The existing object-relational mapping code created performance chokepoints that slowed verification lookups, especially under heavy concurrent load. Reengineering this layer reduced the time employers spent waiting for results and improved the system's capacity to handle traffic spikes — a benefit that proved its value when a post-government-shutdown surge hit in early 2019.

**We migrated 225 million historical cases into an Elasticsearch datastore** to replace the legacy search infrastructure. Doing so required reconfiguring the data ingestion pipeline's architecture and upgrading the clustering hardware that managed the loading process. The result was fast, flexible searching across the full case history — a capability the previous system couldn't offer at scale.

**An API-based microservice simulating SSA's system gave the team a safe testing environment.** Because E-Verify depends on real-time data exchanges with SSA, the team needed a way to validate API integrations without touching production systems. The simulation microservice made integration testing repeatable and reliable, reducing the risk of launch-day failures.
{% endcapture %}

{% capture results %}
- **Relaunched E-Verify in April 2018** with modernized infrastructure, improved usability, and faster verification times for over 800,000 enrolled employers
- **Migrated 225 million historical cases** into an Elasticsearch datastore, enabling fast searching across the full case history
- **Replaced legacy services with cloud-deployed microservices** using a strangler pattern that maintained continuous uptime throughout the transition
- **Delivered an SSA simulation microservice** that enabled safe, repeatable API integration testing without impacting production systems
- **Built a modernized architecture that absorbed a post-shutdown traffic surge** in early 2019, validating that the new infrastructure could handle demand spikes the legacy system would have struggled with
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
