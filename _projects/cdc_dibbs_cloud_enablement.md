---
layout: default
title_tag: Centers for Disease Control and Prevention
title: Flexible cloud hosting options for public health data systems
permalink: /work/experience/cdc-dibbs-cloud-enablement/
image: /img/projects/cdc_dibbs_cloud_enablement/dibbs-cloud-enablement.svg
image_description: A woman climbing a step ladder to flip a light switch embedded in a cloud.
feature_image:
feature_image_description:
feature_image_shadow:
order: 131
display: true
skip_index: false
tags:
  [service delivery,
  research & design,
  product management,
  software delivery,
  legacy modernization,
  devops,
  cloud & platforms,
  data & analytics,
  apis,
  security & privacy,
  open government,
  public health,
  rin concordia,
  kyle planeaux,
  mary crawford,
  alis akers]
excerpt: Enabling public health agencies with flexible cloud hosting options so they can leverage modern, cloud-based software solutions with fewer costs and maintenance burdens.
project_members:
  - rin-concordia
  - kyle-planeaux
  - mary-crawford
  - alis-akers
technologies:
  - APIs
  - Docker
  - FHIR
  - Microservices
  - YAML
  - Git / GitHub
  - Terraform
  - Microsoft Azure (Key Vault, Container Apps, WAF, Gateways, App Service)
  - Octopus Deploy
  - Snyk
  - TfSec
  - MkDocs
  - Slack
  - Zoom
practices:
  - Product management
  - User research
  - Agile development
  - Rapid prototyping
  - Automated documentation
  - Containerization
  - Data management
  - Deployment automation
  - DevSecOps
  - Identity and access management
  - Infrastructure as code
  - Open-source development
  - Programmatic deployment scripts
  - Security / privacy compliance
  - Technical discovery
  - Cloud hosting
  - Hybrid-cloud architecture
  - Virtual collaboration
  - Remote teams
news_posts:
  - title: Data Integration Building Blocks (DIBBs)
    url: https://www.cdc.gov/data-modernization/php/technologies/about-dibbs.html
project_url: https://dibbs.tools/
project_cta: See the site
source_code_url: https://github.com/CDCgov/dibbs-cloud
---

{% capture summary %}
As part of our broader work with the Centers for Disease Control and Prevention (CDC) to [build a response-ready public health data system](/work/experience/cdc-dibbs/), we're helping state, tribal, local, and territorial (STLT) public health agencies adopt flexible cloud hosting infrastructure. By providing accessible cloud options, STLTs can quickly upgrade and scale their data systems with modern software solutions to meet the scope and scale of emerging public health threats.
{% endcapture %}

{% capture challenge %}
The COVID-19 pandemic exposed significant gaps in our nation's public health data infrastructure, revealing a widespread need to modernize antiquated, disconnected data systems. In particular, STLT public health agencies weren't able to reliably process large influxes of COVID-19 case data, leading to issues with downstream disease detection, reporting, and investigation. Emerging public health threats like mpox continue to test the limits of STLT data infrastructure, as many legacy systems simply can't scale fast enough to handle significant volumes of incoming case data.

To efficiently process ever-growing amounts of data, STLTs need to integrate modern digital services — like cloud hosting — into their data environment. With cloud hosting, STLTs can more flexibly acquire the computing infrastructure they need to modernize aging data systems or add new data management capabilities as needs evolve. It can also help them scale their infrastructure to handle the high volumes and intermittent flow of public health data, especially during a public health crisis.

While many STLTs recognize the need for transitioning to a robust and secure cloud environment, they often face obstacles to adoption. They may lack the internal technical capacity to successfully migrate their data infrastructure to the cloud. And hosting cloud infrastructure isn't free — neither is the cost of maintaining these systems. Maintenance requires dedicated IT personnel and consistent funding, which aren't always available. As a result, STLTs that want to leverage cloud hosting to scale and upgrade their data systems with modern software solutions are often stuck without the means to do so.
{% endcapture %}

{% capture solution %}
As part of a broader initiative between the CDC and U.S. Digital Service to modernize public health data infrastructure, we're working to enable STLTs with modern cloud hosting infrastructure. Through CDC's centrally-hosted Azure cloud environment, STLTs can access our portfolio of cloud-based [Data Integration Building Blocks](/work/experience/cdc-dibbs/) (DIBBs) to modernize their data systems without the cost and maintenance burdens of having to host their own cloud infrastructure locally. CDC's cloud environment follows the same security and privacy policies as other widely used, externally facing CDC applications like [SimpleReport](/work/experience/cdc-simplereport/) and ReportStream. Onboarding, updates, and scaling are quick and free.

While leveraging cloud infrastructure hosted by CDC offers a range of benefits — lower costs, fewer maintenance burdens — some jurisdictions face obstacles with regulatory compliance and data security. These STLTs may prefer a hybrid approach, leveraging aspects of a centrally-hosted cloud environment while maintaining other parts of their data infrastructure in a self-hosted environment. With a hybrid approach, STLTs can choose to manage how their data is fed to the centrally-hosted environment for processing — without CDC hosting or retaining the data.

To enable these more flexible, hybrid options for hosting DIBBs infrastructure, we've leveraged Octopus Deploy, an industry-renowned deployment tool, that allows us to treat each STLT with the individuality it needs. For example, our software can go directly to STLTs with the proper permission and legal agreements, without the need for their IT departments to manually install updates. For STLTs who would like full control over their infrastructure and to host DIBBs services directly, we've also created a series of Terraform templates. These templates, available in our [open-source repository](https://github.com/CDCgov/dibbs-cloud), allow STLT DevOps personnel to rapidly assemble a fresh cloud infrastructure from prewritten modules. We've also provided searchable documentation to make the process even easier.

By meeting STLTs where they're at from a compliance or data security standpoint, our DIBBs hosting options move them a step closer to adopting cloud technology — whether in their own cloud environment or in the centrally-hosted CDC environment. Ultimately, by providing flexible and accessible options for cloud hosting, we aim to enable resource-constrained STLTs with the tools to build modern, scalable disease surveillance infrastructure that can be used for both daily and emergent public health action.
{% endcapture %}

{% capture results %}
- Onboarding four STLTs — Alabama, Idaho, Dallas, and Chicago — to pilot centrally-hosted DIBBs infrastructure
- Successfully deployed DIBBs infrastructure to a centrally-hosted CDC cloud environment
- Rolled out a proof-of-concept deployment engine that facilitates updates and improvements to DIBBs hosted locally by STLTs, reducing maintenance effort for IT staff
- Working with the CDC to make centrally-hosted DIBBs products available to additional interested STLT pilot partners
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
