---
layout: default
title_tag: "U.S. Air Force"
title: "Modernizing a mission-critical cost accounting system"
permalink: /work/experience/usaf-jocas/
redirect_from:
  - /work/experience/usaf_jocas/
image: /img/projects/usaf_jocas/jocas.svg
image_description: "An accounting professional using a modern tablet to perform accounting functions, with an old desktop system in the background."
feature_image:
feature_image_description:
feature_image_shadow:
order: 1200
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
  - "laura king"
  - "peggy chau"
  - "gabriel ramirez"
  - "ari perez"
  - "gordon farrell"
excerpt: "An incremental modernization of the Air Force's 30-year-old cost accounting system, starting with the component serving over 12,000 users."
project_members:
  - laura-king
  - peggy-chau
  - gordon-farrell
  - gabriel-ramirez
  - ari-perez
technologies:
  - HTML / CSS
  - JavaScript / React / TypeScript
  - Carbon Design System
  - Node
  - APIs
  - GraphQL
  - GitLab CI/CD
  - Terraform
  - Docker
  - NGINX
  - AWS (Cloud One)
  - AWS Elastic Beanstalk (Cloud One)
  - AWS Lambda (Cloud One)
  - AWS RDS Oracle (Cloud One)
  - Git / GitLab
practices:
  - User research
  - Technical discovery
  - User experience design
  - Lean startup
  - Design system
  - Responsive design
  - Accessibility
  - Agile development
  - API-first development
  - Legacy reengineering / strangler pattern
  - Data management
  - DevSecOps
  - Security / privacy compliance
  - Containerization
  - Cloud hosting
  - Automated documentation
  - Remote teams
news_posts:
  - title: "JOCAS II v7.0 Oracle upgrade and hardware refresh"
    url: https://www.afmc.af.mil/News/Article-Display/Article/3059199/jocas-ii-v70-oracle-upgrade-and-hardware-refresh/
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
As part of our [digital transformation work with BESPIN (Business Enterprise Systems Product INnovation)](/work/experience/usaf-bespin-transformation-support/), we helped modernize the U.S. Air Force's (USAF) Job Order Cost Accounting System (JOCAS) — a roughly 30-year-old financial system supporting billions of dollars in annual transactions across 14 bases. We worked with [Fearless](https://fearless.tech/) and the JOCAS program team to redesign the user experience, rebuild the technical architecture, and establish reusable infrastructure for full system replacement.
{% endcapture %}

{% capture challenge %}
JOCAS II serves as the USAF's backbone for capturing and reporting full project costs, generating bills for reimbursable work, supporting informed financial decisions, and maintaining compliance with federal financial regulations. Thousands of users across Air Force communities — including Major Range and Test Facility Bases and Research Labs within Air Force Materiel Command (AFMC) — depend on it daily.

Built in the early 1990s on a suite of proprietary Oracle technologies, the system had grown to more than 300 database tables and 300 software modules — encompassing Oracle Forms, Oracle Reports, C processes, and PL/SQL packages — totaling an estimated 2.8 million lines of code. It also exchanged data with multiple external financial and human resource systems.

The system's age showed in nearly every interaction. Between account lockouts, slow load times, and an interface that demanded extensive training, even basic tasks required multiple attempts. An employee trying to log overtime hours or a supervisor approving timecards had to navigate screens that obscured the data they needed — and in some areas, the design was so outdated that critical information couldn't be captured at all.

Beyond usability, the system carried structural risks. Workflow gaps threatened compliance with federal financial regulations and introduced potential security vulnerabilities. Each Air Force base operated its own separate database, making unified data management and cross-base reporting extremely difficult. Even when individual bases resolved local issues, the system as a whole remained inconsistent and hard to govern.
{% endcapture %}

{% capture solution %}
**We replaced the legacy system incrementally rather than all at once** — using the [strangler pattern](https://martinfowler.com/bliki/StranglerFigApplication.html) to build new functionality alongside the old system until each component could be fully retired. Across 14 bases and 2.8 million lines of code, a big-bang migration would have been too risky. Instead, we kept the existing system operational while proving out modern alternatives one piece at a time.

**User research and technical discovery identified where to start.** The Labor Entry, Approvals, and Adjustments component served over 12,000 users — employees who relied on it to track time spent on projects, obtain supervisor approval, and ensure accurate pay calculations, including differentials for overtime and night shifts. Because it touched the most people and carried direct payroll consequences, it was the highest-impact place to prove the approach.

**We redesigned the user experience around the needs of employees, supervisors, and administrators.** The original interface required extensive training and couldn't capture critical data reliably, so the new design focused on reducing friction and making workflows intuitive. Streamlined approval processes — such as employee timecard review — brought the system into better alignment with federal financial regulations.

Under the hood, we replaced the legacy Oracle stack with a modern cloud-hosted architecture. The team rebuilt the component using React, Node, GraphQL, and Amazon Web Services (AWS) on the Department of Defense's (DoD) Cloud One environment — containerized with Docker, automated with Terraform, and deployed through GitLab continuous integration / continuous delivery (CI/CD) pipelines. Interfaces with the legacy databases kept data synchronized during the transition, ensuring continuity until the old infrastructure could be decommissioned.

**The new Labor Entry application established reusable infrastructure for future phases.** Architecture patterns, CI/CD pipelines, and design standards built during this first component now provide a proven foundation — both technical and methodological — for modernizing the remaining JOCAS II modules, including Personnel Management and Cost Accounting, on the path to full replacement.
{% endcapture %}

{% capture results %}
- **Delivered a modern Labor Entry application serving over 12,000 USAF users**, replacing the most widely used component of a 30-year-old system with an intuitive, accessible interface
- **Simplified workflows that previously required extensive training and reference documentation**, giving employees and supervisors a streamlined path for time tracking, approvals, and pay calculations
- **Moved the first JOCAS II component from a proprietary Oracle stack to a modern, cloud-hosted architecture** on the DoD's Cloud One environment, establishing a deployment pipeline that automates builds, testing, and releases
- **Kept the legacy system fully operational during the transition** using the strangler pattern, eliminating the risks of an all-at-once migration across 14 Air Force bases
- **Established reusable infrastructure for future modernization phases**, providing architecture patterns, CI/CD pipelines, and design standards that accelerate replacement of remaining JOCAS II components
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
