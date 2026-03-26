---
layout: default
title_tag: State of Connecticut
title: Improving how early childhood data is collected and used statewide
permalink: /work/experience/ct-ece-reporter/
feature_image: /img/projects/ct_ece_reporter/ece-reporter.gif
feature_image_description: Animated view of the ECE Reporter dashboard and monthly reporting workflow.
image: /img/projects/ct_ece_reporter/ece-reporter.svg
image_description: A teacher sitting with a young child at a table and a computer screen in the background showing a green checkmark.
feature_image_shadow: true
order: 210
display: true
tags: [service delivery, research & design, product management, software delivery, legacy modernization, devops, cloud & platforms, data & analytics, apis, security & privacy, early childhood, social safety net, healthcare, education, chris given, julia hogan, cailyn hansen, victoria suwardiman, ashley treni, abby raskin, kyle magida, marvo dolor, amelia wellers, olivia lucas, jordan guinn, nick bristow, brandon mader, derek tam, alex curtis, lucas newman, becca bartola, priscilla peralta, gordon farrell, josh dorothy, johanna delpino]
excerpt: A modern reporting platform that made it easier for providers to submit accurate data while giving the state a reliable foundation for funding and policy decisions.
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
Connecticut's Office of Early Childhood (OEC) needed accurate, timely enrollment data to make fair funding decisions — but existing tools made reporting difficult for providers and unreliable for the state. We built the Early Childhood Education (ECE) Reporter, a modern reporting platform that improved data quality, reduced provider burden, and gave OEC a trusted, statewide view of enrollment.
{% endcapture %}

{% capture challenge %}
OEC funds a statewide network of more than 400 early childhood providers, and funding decisions depend on knowing how many eligible children are enrolled at each site.

However, the existing data collection system made accurate reporting difficult. Providers struggled to update or correct records, leading to duplicate child profiles and inconsistent identifiers. Many opted out entirely, instead managing enrollment in disconnected systems such as spreadsheets, accounting tools, or paper records.

As a result, enrollment data was fragmented, outdated, and difficult to trust. OEC was left making high-impact funding decisions without a reliable understanding of what was happening across the system.

OEC needed a solution that made accurate reporting the easiest path for providers while creating a consistent, high-quality data foundation for the state.
{% endcapture %}

{% capture solution %}
We partnered with OEC to design and build the ECE Reporter — a modern enrollment reporting system focused on usability, data quality, and long-term sustainability.

The platform simplified monthly reporting into a single, intuitive workflow that gave providers more control over their data while reducing effort and errors.

We delivered this through several key steps. First, we built a centralized, standardized data store for statewide enrollment data. Next, we redesigned the reporting experience to simplify uploads, corrections, and ongoing maintenance. Then, we added flexible data visualizations and filters to support analysis and decision-making. We also developed a probabilistic matching algorithm to identify and resolve duplicate child records. Finally, we used iterative delivery aligned with the [U.S. Digital Services Playbook](https://playbook.cio.gov/#play4) to get working software into users' hands early.

This approach created a reporting experience that providers actively chose to use. They could upload data, review site-level summaries, and maintain accurate rosters without re-entering information month after month.

{% include callout.html
  type = "pullquote"
  content = "One of the easiest data portals ever — I entered 30 individual kids and it didn't even take me 30 minutes. It was very quick."
%}

For OEC, the improved data foundation enabled more precise funding decisions and greater visibility into anomalies such as duplicate records and unusual enrollment patterns. This strengthened stewardship of public funds while ensuring resources reached the children and programs that needed them most.

We also supported long-term sustainability by helping OEC take full ownership of the platform — improving code quality, strengthening test coverage, documenting operations, and enabling a smooth DevOps handoff.

As a result, OEC gained not just a better system, but a durable foundation for managing and evolving its data infrastructure over time.
{% endcapture %}

{% capture results %}
- Enabled 508 users across 220 providers to submit and maintain monthly enrollment data
- Standardized reporting across 397 program sites
- Provided visibility into more than 14,000 enrollments statewide
- Reduced duplicate child records and improved confidence in enrollment counts
- Transitioned full ownership of the platform to OEC for long-term sustainability
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
