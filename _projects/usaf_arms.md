---
layout: default
title_tag: "U.S. Air Force"
title: "Modernizing the information management of aviation resources"
permalink: /work/experience/usaf-arms/
redirect_from:
  - /work/experience/usaf_arms/
image: /img/projects/usaf_arms/arms.svg
image_description: "An Air Force parachutist jumping out of a plane, with digital components in the background."
feature_image:
feature_image_description:
feature_image_shadow:
order: 1100
display: true
tags:
  - "service delivery"
  - "research & design"
  - "software delivery"
  - "legacy modernization"
  - "devops"
  - "cloud & platforms"
  - "data & analytics"
  - "apis"
  - "security & privacy"
  - "defense"
  - "air force"
  - "zack gehin"
  - "josh dorothy"
  - "colin craig"
  - "laura king"
  - "andrew lloyd"
  - "chun yen"
  - "jennifer herzberg"
  - "david mcclatchey"
  - "josh nygaard"
excerpt: "A modernized aviation resource management system that helps the U.S. Air Force track flight data, training records, and aircrew readiness more reliably."
project_members:
  - jennifer-herzberg
  - david-mcclatchey
  - zack-gehin
  - josh-dorothy
  - colin-craig
  - laura-king
  - andrew-lloyd
  - chun-yen
  - josh-nygaard
technologies:
  - "HTML / CSS"
  - "JavaScript / Vue.js"
  - "Tailwind UI"
  - "Go"
  - "APIs"
  - "Microservices"
  - "Swagger"
  - "GitLab CI/CD"
  - "Terraform"
  - "Docker"
  - "Jenkins"
  - "Groovy"
  - "PostgreSQL"
  - "Amazon Web Services"
  - "Git / GitLab"
practices:
  - "User research"
  - "Technical discovery"
  - "User experience design"
  - "Lean startup"
  - "Design system"
  - "Responsive design"
  - "Accessibility design"
  - "Agile development"
  - "API-first development"
  - "Microservices architecture"
  - "RESTful / SOAP API architecture"
  - "Legacy reengineering / strangler pattern"
  - "Data management"
  - "DevSecOps"
  - "Security / privacy compliance"
  - "Containerization"
  - "Cloud hosting"
  - "Automated documentation"
  - "Remote teams"
news_posts:
  - title: "BESPIN advances web app development and delivery with newly integrated pipeline"
    url: https://www.airforcebes.af.mil/News/Display/Article/3681362/bespin-advances-web-app-development-and-delivery-with-newly-integrated-pipeline/
  - title: "Air Force rolling out ARTEMIS to modernize aviation resource management"
    url: https://federalnewsnetwork.com/air-force/2024/12/air-force-rolling-out-artemis-to-modernize-aviation-resource-management/
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
As part of our [digital transformation work with BESPIN](/work/experience/usaf-bespin-transformation-support/), we modernized the U.S. Air Force's (USAF) Aviation Resource Management System (ARMS) — the system that tracks flight data, training records, and readiness for roughly 65,000 aircrew members and parachutists. Working as a subcontractor to [Fearless](https://fearless.tech/), we replaced fragmented per-base databases with a centralized, real-time architecture — starting with the highest-stakes module and establishing reusable patterns for the remaining six.
{% endcapture %}

{% capture challenge %}
ARMS is a mission-critical application that about 2,800 aviation resource managers rely on to perform over two million transactions per week. The system spans seven functional modules — including Jumps (jump training records) and Training (student profiles and accomplishments) — and touches everything from flying hours and jump schedules to go-no-go readiness determinations.

The system's original architecture created problems at every level. Fragmented databases meant each Air Force base operated its own instance, so an individual's training data didn't transfer when they moved to a new installation. Parts of the system didn't sync in real time, which undermined the accuracy of safety-critical decisions like whether a parachutist was cleared to jump. When aging servers couldn't handle current transaction volumes, crashes forced managers back to pen-and-paper forms.

Day-to-day usability compounded the technical debt. The information architecture and interaction design made routine tasks slow and error-prone, and running reports consumed time that aviation resource managers couldn't afford to lose. These issues threatened both operational readiness and the safety of the aircrew ARMS was built to support.
{% endcapture %}

{% capture solution %}
Replacing a system that 2,800 people depend on for two million weekly transactions isn't something you can do in a single cut. As a subcontractor to [Fearless](https://fearless.tech/), we partnered with the ARMS program team and adopted the [strangler pattern](https://martinfowler.com/bliki/StranglerFigApplication.html) — building the new system alongside the old one and replacing functionality module by module, so the Air Force never lost access to a tool it used every day.

**We started with the highest-stakes module.** Through user research and technical discovery, we identified the Jumps Module — which tracks jump training records for parachutists — as the right entry point. Outdated data in this module could affect safety decisions about whether someone was cleared to jump. The pain was acute, the user base was well-defined, and a visible win here would build confidence in the broader modernization.

**A centralized, real-time data layer replaced the fragmented per-base databases.** The re-engineered Jumps Module ran on a modern stack — Vue.js, Go, microservices, and PostgreSQL on AWS — that eliminated the data-doesn't-transfer problem airmen had lived with for years. To keep records synchronized during the transition, we built interfaces with the legacy system — so managers never lost access to historical data while the new architecture proved itself.

The new architecture was only half the problem. Rather than replicating the old interface on new technology, we rethought the information architecture and interaction design around the tasks managers performed most often. Routine workflows got faster, reporting became less painful, and error-prone steps were simplified or eliminated.

**With the Jumps Module complete, the reusable infrastructure it established became the blueprint for the remaining six.** Shared patterns for authentication, data synchronization, and deployment meant subsequent modules wouldn't start from scratch. Once the approach proved out, we transitioned all work to the ARMS Program Management Office for ongoing execution.
{% endcapture %}

{% capture results %}
- **Launched a modernized Jumps Module** with a redesigned user experience, centralized data architecture, and real-time synchronization — replacing the fragmented per-base database model
- **Eliminated stale data from safety-critical decisions** by giving aviation resource managers a single, real-time source of truth for jump training records across installations
- **Established reusable infrastructure and shared patterns** — including authentication, data sync, and deployment pipelines — to accelerate modernization of the remaining six ARMS modules
- **Transitioned all work to the ARMS Program Management Office**, enabling the Air Force to continue the modernization effort independently with the architecture and patterns in place
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
