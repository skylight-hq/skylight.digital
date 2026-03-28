---
layout: default
title_tag: "State of Connecticut"
title: "Building a trusted enrollment data foundation for early childhood programs"
permalink: /work/experience/ct-ece-reporter/
feature_image: /img/projects/ct_ece_reporter/ece-reporter.gif
feature_image_description: "Animated view of the ECE Reporter dashboard and monthly reporting workflow."
image: /img/projects/ct_ece_reporter/ece-reporter.svg
image_description: "A teacher sitting with a young child at a table and a computer screen in the background showing a green checkmark."
feature_image_shadow: true
order: 210
display: true
tags:
  - "service delivery"
  - "research & design"
  - "product management"
  - "software delivery"
  - "legacy modernization"
  - "devops"
  - "cloud & platforms"
  - "data & analytics"
  - "apis"
  - "security & privacy"
  - "early childhood"
  - "social safety net"
  - "healthcare"
  - "education"
  - "chris given"
  - "julia hogan"
  - "cailyn hansen"
  - "victoria suwardiman"
  - "ashley treni"
  - "abby raskin"
  - "kyle magida"
  - "marvo dolor"
  - "amelia wellers"
  - "olivia lucas"
  - "jordan guinn"
  - "nick bristow"
  - "brandon mader"
  - "derek tam"
  - "alex curtis"
  - "lucas newman"
  - "becca bartola"
  - "priscilla peralta"
  - "gordon farrell"
  - "josh dorothy"
  - "johanna delpino"
excerpt: "A modern reporting platform that made it easier for early childhood providers to submit accurate enrollment data while giving Connecticut a reliable foundation for funding and policy decisions."
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
  - "HTML / CSS"
  - "U.S. Web Design System"
  - "Carbon Design System"
  - "JavaScript / TypeScript / React"
  - "Express"
  - ".NET Core"
  - "JSON API"
  - "Metabase"
  - "Terraform"
  - "Docker"
  - "IdentityServer"
  - "SQL Server"
  - "PostgreSQL"
  - "Amazon Web Services"
  - "Git / GitHub"
practices:
  - "Product management"
  - "User research"
  - "Technical discovery"
  - "User experience design"
  - "Lean startup"
  - "Design system"
  - "Responsive design"
  - "Accessibility"
  - "Agile development"
  - "Open-source development"
  - "API-first development"
  - "RESTful API architecture"
  - "Data management"
  - "DevSecOps"
  - "Security / privacy compliance"
  - "Containerization"
  - "Cloud hosting"
news_posts:
  - title: "Introducing ECE Reporter"
    url: https://www.ctoec.org/news/introducing-ece-reporter/
project_url: https://ece-reporter.oec.ct.gov/
project_cta: "See the site"
source_code_url:
---

{% capture summary %}
As part of our [digital transformation work](/work/experience/ct-oec-digital-transformation/) with the Connecticut Office of Early Childhood (OEC), we built the Early Childhood Education (ECE) Reporter — a modern platform that streamlined how more than 200 providers submit enrollment data for state-funded programs. ECE Reporter replaced a fragmented data collection process with an intuitive reporting workflow, giving OEC a trusted, statewide view of enrollment to inform fair funding decisions.
{% endcapture %}

{% capture challenge %}
OEC funds a statewide network of more than 400 early childhood providers through programs like Child Day Care, School Readiness, Smart Start, and State Head Start. Fair distribution of those funds depends on knowing how many eligible children are enrolled at each site — but the existing data collection system made accurate reporting difficult for the providers responsible for submitting it.

The tools available to providers were cumbersome and inflexible. Updating or correcting records was error-prone, leading to duplicate child profiles and inconsistent identifiers across the system. Many providers opted out of the state's data tools entirely, instead tracking enrollment in spreadsheets, accounting software, or paper records. This meant OEC was collecting data from some providers through the official system and getting nothing — or unreliable information — from others.

The consequences went beyond data quality. OEC was making high-impact funding decisions without a reliable understanding of enrollment across the system. Duplicate records inflated counts, missing providers created blind spots, and there was no consistent way to identify anomalies or trends. OEC needed a solution that made accurate reporting the easiest path for providers while building a data foundation the state could trust.
{% endcapture %}

{% capture solution %}
**We designed and built ECE Reporter as a modern enrollment reporting system** focused on three goals: making reporting easy for providers, improving the quality of the underlying data, and ensuring the platform could be sustained by OEC long-term. Following the [U.S. Digital Services Playbook](https://playbook.usds.gov/#play4), we used iterative delivery to get working software into providers' hands early and adjusted based on real feedback.

The platform centered on a single, intuitive monthly reporting workflow. Providers could upload enrollment data, review site-level summaries, and maintain accurate rosters without re-entering the same information month after month. **Behind that simple interface, we built a centralized, standardized data store** that replaced the patchwork of disconnected spreadsheets and legacy systems with a single source of truth for statewide enrollment data.

{% include callout.html
  type = "pullquote"
  content = "One of the easiest data portals ever — I entered 30 individual kids and it didn't even take me 30 minutes. It was very quick."
%}

Data quality was a core design challenge, not an afterthought. **We developed a probabilistic matching algorithm to identify and resolve duplicate child records** — a problem that had inflated enrollment counts and eroded trust in the data. We also added flexible data visualizations and filters that gave OEC staff the ability to spot anomalies, track enrollment patterns, and conduct analysis that had previously required manual effort.

To ensure OEC could own and evolve the platform independently, **we invested in long-term sustainability throughout the engagement** — improving code quality, strengthening test coverage, documenting operations, and enabling a smooth DevOps handoff. OEC gained not just a better reporting system but a durable foundation for managing its data infrastructure over time.
{% endcapture %}

{% capture results %}
- **Brought 508 users across 220 providers** onto the platform to submit and maintain monthly enrollment data
- **Standardized reporting across 397 program sites,** replacing fragmented spreadsheets and paper records with a single statewide data store
- **Provided visibility into more than 14,000 enrollments** statewide, giving OEC a trusted foundation for funding and policy decisions
- **Reduced duplicate child records** through probabilistic matching, improving confidence in enrollment counts
- **Transitioned full ownership of the platform to OEC,** enabling the agency to sustain and evolve the system independently
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
