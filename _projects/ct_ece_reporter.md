---
layout: default
title_tag: State of Connecticut
title: Building an improved data collection tool for early childhood care and education
permalink: /work/experience/ct-ece-reporter/
feature_image: /img/projects/ct_ece_reporter/ece-reporter.gif
feature_image_description: Animated view of the ECE Reporter dashboard and monthly reporting workflow.
image: /img/projects/ct_ece_reporter/ece-reporter.svg
image_description: A teacher sitting with a young child at a table and a computer screen in the background showing a green checkmark.
feature_image_shadow: true
order: 210
display: true
tags: [service delivery, research & design, product management, software delivery, legacy modernization, devops, cloud & platforms, data & analytics, apis, security & privacy, early childhood, social safety net, healthcare, education, chris given, julia hogan, cailyn hansen, victoria suwardiman, ashley treni, abby raskin, kyle magida, marvo dolor, amelia wellers, olivia lucas, jordan guinn, nick bristow, brandon mader, derek tam, alex curtis, lucas newman, becca bartola, priscilla peralta, gordon farrell, josh dorothy, johanna delpino]
excerpt: A user-friendly data collection tool to get accurate information from early care and education providers about the children under their care in Connecticut.
project_members:
  - becca-bartola
  - priscilla-peralta
  - gordon-farrell
  - nick-bristow
  - johanna-delpino
  - josh-dorothy
  - brandon-mader
  - lucas-newman
  - alex-curtis
  - derek-tam
  - chris-given
  - cailyn-hansen
  - victoria-suwardiman
  - ashley-treni
  - abby-raskin
  - kyle-magida
  - marvo-dolor
  - olivia-lucas
  - jordan-guinn
  - julia-hogan
  - amelia-wellers
technologies:
  - HTML / CSS
  - U.S. Web Design System
  - Carbon Design System
  - JavaScript / TypeScript / React
  - Express
  - .NET Core
  - JSON API
  - Metabase
  - Terraform
  - Docker
  - IdentityServer
  - SQL Server
  - PostgreSQL
  - Amazon Web Services
  - Git / GitHub
practices:
  - Product management
  - User research
  - Technical discovery
  - User experience design
  - Lean startup
  - Design system
  - Responsive design
  - Accessibility
  - Agile development
  - Open-source development
  - API-first development
  - RESTful API architecture
  - Data management
  - DevSecOps
  - Security / privacy compliance
  - Containerization
  - Cloud hosting
news_posts:
project_url: https://ece-reporter.ctoec.org/
project_cta: See the site
source_code_url: https://github.com/ctoec
---

{% capture summary %}
The Connecticut Office of Early Childhood (OEC) needed cleaner, more reliable enrollment data to support funding decisions — without adding work for early childhood care and education providers. Skylight built the Early Childhood Education (ECE) Reporter, a modern reporting portal and data platform that streamlined monthly reporting and improved statewide visibility into enrollment.
{% endcapture %}

{% capture challenge %}
The Connecticut Office of Early Childhood (OEC) oversees and funds a statewide network of more than 400 early childhood care and education providers. These programs help set children up for long-term success, and they also give families dependable childcare that supports stability and workforce participation.

Funding decisions depend on accurate enrollment information — specifically, knowing how many eligible children are enrolled at each provider site. When enrollment data is incomplete or inconsistent, it’s harder to allocate resources fairly and quickly, and it becomes difficult to understand what’s happening across the system.

Before Skylight’s engagement, OEC’s existing data collection system made that difficult. Providers often couldn’t easily update or correct records, which led to duplicate child profiles and inconsistent identification numbers. Many providers opted out of the system altogether, instead tracking enrollment in disconnected tools like PowerSchool, QuickBooks, spreadsheets, or even paper files.

The result was a fragmented, unreliable view of statewide enrollment. Data was hard to reconcile, often outdated, and difficult to trust — leaving OEC in the position of making high-impact funding decisions without the clarity needed to do so confidently.

OEC needed a system that made accurate reporting the easiest path for providers, while giving the agency a consistent, high-quality data foundation.
{% endcapture %}

{% capture solution %}
Skylight partnered with OEC to design and build a modern enrollment reporting system — the Early Childhood Education (ECE) Reporter — focused on usability, data quality, and long-term sustainability.

The ECE Reporter streamlined monthly reporting into a single, user-friendly workflow that gave providers more control over their data. It leveraged existing information to link and reconcile records across reporting periods, reducing manual entry, minimizing errors, and eliminating the need for providers to create or manage unique child IDs.

To deliver this solution, the Skylight team:

- Built a centralized, standardized data store for statewide enrollment data
- Redesigned the reporting dashboard to simplify uploads, corrections, and ongoing maintenance
- Added flexible data visualizations and filters to support analysis and decision-making
- Developed a probabilistic matching algorithm to identify and resolve duplicate child records
- Used agile, iterative delivery practices aligned with the [U.S. Digital Services Playbook](https://playbook.cio.gov/#play4) to get working software into users’ hands early and often

The outcome was a reporting experience that providers chose to use. Providers could log in, upload current enrollment data, review site-level summaries, and maintain accurate rosters without re-entering the same information month after month.

{% include callout.html
  type = "pullquote"
  content = "One of the easiest data portals ever — I entered 30 individual kids and it didn’t even take me 30 minutes. It was very quick."
%}

For OEC, the improved data foundation enabled more precise funding decisions and better visibility into outliers and potential issues. This strengthened stewardship of public funds while ensuring resources reached qualified children in qualified programs — ultimately supporting better outcomes across the early childhood system.

To ensure long-term impact, Skylight also supported OEC in taking full ownership of the platform. This transition included:

- Updating operational scripts to support internal data visualization and system management
- Strengthening automated test coverage
- Refactoring the codebase to improve readability and maintainability
- Producing clear, accessible technical and operational documentation
- Performing DevOps work to support a smooth handoff and ongoing operation

With these capabilities in place, OEC was well positioned to maintain and evolve the ECE Reporter over time. The platform also served as a blueprint for modernizing data systems across other programs and agencies within the State of Connecticut.
{% endcapture %}

{% capture results %}
- Enabled 508 users across 220 providers to submit and maintain enrollment data on a monthly basis
- Collected standardized enrollment data from 397 program sites, covering more than 14,000 enrollments
- Reduced duplication of child records and IDs, improving accuracy and confidence in enrollment counts
- Transitioned full operation and maintenance of the ECE Reporter to OEC to support long-term sustainability
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
