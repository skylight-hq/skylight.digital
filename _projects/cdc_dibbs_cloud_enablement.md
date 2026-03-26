---
layout: default
title_tag: "Centers for Disease Control and Prevention"
title: "Enabling flexible cloud hosting for public health data"
permalink: /work/experience/cdc-dibbs-cloud-enablement/
image: /img/projects/cdc_dibbs_cloud_enablement/dibbs-cloud-enablement.svg
image_description: "A woman climbing a step ladder to flip a light switch embedded in a cloud."
feature_image:
feature_image_description:
feature_image_shadow:
order: 131
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
  - "open government"
  - "public health"
  - "rin concordia"
  - "kyle planeaux"
  - "mary crawford"
  - "alis akers"
excerpt: "Enabling public health agencies to modernize disease surveillance infrastructure through flexible, cost-effective cloud hosting options."
project_members:
  - rin-concordia
  - kyle-planeaux
  - mary-crawford
  - alis-akers
technologies:
  - "APIs"
  - "Docker"
  - "FHIR"
  - "Microservices"
  - "YAML"
  - "Git / GitHub"
  - "Terraform"
  - "Microsoft Azure (Key Vault, Container Apps, WAF, Gateways, App Service)"
  - "Octopus Deploy"
  - "Snyk"
  - "TfSec"
  - "MkDocs"
  - "Slack"
  - "Zoom"
practices:
  - "Product management"
  - "User research"
  - "Agile development"
  - "Rapid prototyping"
  - "Automated documentation"
  - "Containerization"
  - "Data management"
  - "Deployment automation"
  - "DevSecOps"
  - "Identity and access management"
  - "Infrastructure as code"
  - "Open-source development"
  - "Programmatic deployment scripts"
  - "Security / privacy compliance"
  - "Technical discovery"
  - "Cloud hosting"
  - "Hybrid-cloud architecture"
  - "Virtual collaboration"
  - "Remote teams"
project_url: https://dibbs.tools
project_cta: "See the site"
source_code_url: https://github.com/CDCgov/dibbs-cloud
news_posts:
---

{% capture summary %}
State, tribal, local, and territorial (STLT) public health agencies have struggled to handle the pace and volume of incoming case data when responding to disease outbreaks. As part of the [Data Integration Building Blocks (DIBBs)](/work/experience/cdc-dibbs/) engagement with the Centers for Disease Control and Prevention (CDC) and U.S. Digital Service (USDS, now U.S. DOGE Service), we're providing STLTs with flexible cloud hosting options that enable them to upgrade and scale their data systems with modern software — without the cost and maintenance burdens of building cloud infrastructure from scratch.
{% endcapture %}

{% capture challenge %}
The COVID-19 pandemic exposed significant gaps in our nation's public health data infrastructure, revealing a widespread need to modernize antiquated, disconnected data systems. STLT public health agencies weren't able to reliably process large influxes of COVID-19 case data, leading to issues with downstream disease detection, reporting, and investigation. Emerging threats like mpox continue to test those limits, as many legacy systems simply can't scale fast enough to handle significant volumes of incoming case data.

To efficiently process ever-growing amounts of data, STLTs need to integrate modern digital services — like cloud hosting — into their data environment. Cloud hosting gives STLTs the flexibility to acquire computing infrastructure as needs evolve, modernize aging data systems, and scale to handle the high volumes and intermittent flow of public health data — especially during a crisis.

While many STLTs recognize the need for cloud adoption, they often face real obstacles. Some lack the internal technical capacity to migrate their data infrastructure. Others face the cost of hosting and maintaining cloud systems, which requires dedicated IT personnel and consistent funding that aren't always available. As a result, STLTs that want to leverage cloud hosting are often stuck without the means to do so.
{% endcapture %}

{% capture solution %}
**CDC's centrally-hosted Azure environment removes the biggest barrier to adoption.** As part of a multi-year CDC and USDS [initiative focused on pandemic readiness and interoperability](https://www.cdc.gov/data-modernization/php/index.html), Skylight is enabling STLTs with modern cloud hosting infrastructure. Through CDC's Azure cloud environment, STLTs can access a portfolio of cloud-based [Data Integration Building Blocks](/work/experience/cdc-dibbs/) (DIBBs) to modernize their data systems without the cost and maintenance burdens of hosting their own infrastructure locally. CDC's cloud environment follows the same security and privacy policies as other widely used, externally facing CDC applications like [SimpleReport](/work/experience/cdc-simplereport/) and ReportStream. Onboarding, updates, and scaling are quick and free.

**A hybrid model accommodates jurisdictions with stricter compliance requirements.** Some STLTs face regulatory or data security constraints that make full central hosting impractical. These jurisdictions may prefer a hybrid approach — leveraging CDC's centrally-hosted environment for processing while maintaining other parts of their data infrastructure locally, without CDC hosting or retaining the data. To support these flexible arrangements, we've leveraged Octopus Deploy, an industry-standard deployment tool that lets us treat each STLT with the individuality it needs. Software updates can go directly to STLTs with proper permissions and legal agreements, without their IT departments having to manually install anything.

**Terraform templates give STLTs full self-hosted control.** For jurisdictions that want to host DIBBs services directly, we've created a series of open-source Terraform templates that allow DevOps personnel to rapidly assemble cloud infrastructure from prewritten modules. Searchable documentation makes the process even easier.

**These tiered hosting options move STLTs closer to cloud adoption regardless of their starting point** — whether in their own environment or CDC's centrally-hosted one. The goal is to equip resource-constrained jurisdictions with the tools to build modern, scalable disease surveillance infrastructure that works for both daily operations and emergent public health action.
{% endcapture %}

{% capture results %}
- **Deployed DIBBs infrastructure** to a centrally-hosted CDC cloud environment, establishing the foundation for STLT adoption
- **Onboarding four STLTs** — Alabama, Idaho, Dallas, and Chicago — to pilot centrally-hosted DIBBs infrastructure
- **Rolled out a proof-of-concept deployment engine** that facilitates updates to locally-hosted DIBBs, reducing maintenance burden on STLT IT staff
- **Making centrally-hosted DIBBs products available** to additional interested STLT pilot partners through ongoing CDC collaboration
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
