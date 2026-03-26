---
layout: default
title_tag: Centers for Disease Control and Prevention
title: Piloting a faster pipeline for public health data analysis
permalink: /work/experience/cdc-dibbs-vdh-pilot/
redirect_from:
  - /cdc-public-health-data-infrastructure-pilot/
  - /work/experience/cdc-public-health-data-infrastructure-pilot/
image: /img/projects/cdc_dibbs_vdh_pilot/dibbs-vdh-prototype.svg
image_description: Someone using a tablet with multiple items (vaccines, labs, patient records) flying in from all sides and being dropped into a single screen view.
feature_image:
feature_image_description:
feature_image_shadow:
order: 132
display: true
skip_index: false
tags: [service delivery, research & design, product management, software delivery, legacy modernization, devops, cloud & platforms, data & analytics, apis, security & privacy, open government, public health, bryan britten, graham smith, peggy chau, kenneth chow, nick clyde, ryan gaddis, matt goldberg, spencer kathol, brandon mader, dan paseltiner, ann millspaugh, brady fausett, robert mitchell]
excerpt: A prototype data ingestion pipeline that increases data processing speed, automates manual processes, and enables public health agencies to better analyze data and share findings to drive timely public health action and decision-making.
project_members:
  - bryan-britten
  - peggy-chau
  - kenneth-chow
  - nick-clyde
  - brady-fausett
  - ryan-gaddis
  - matt-goldberg
  - brandon-mader
  - ann-millspaugh
  - robert-mitchell
  - dan-paseltiner
  - spencer-kathol
  - graham-smith
technologies:
  - Python
  - APIs
  - FHIR
  - Microservices
  - YAML
  - Git / GitHub
  - Terraform
  - Microsoft Azure
  - Azure DevOps
  - Azure Managed FHIR Server
  - Mural
  - Slack
  - Zoom
practices:
  - Product management
  - User research
  - User experience design
  - Agile development
  - Rapid prototyping
  - API-first development
  - Data engineering
  - Data management
  - DevSecOps
  - Security / privacy compliance
  - Containerization
  - Cloud hosting
  - Hybrid-cloud architecture
  - Virtual collaboration
news_posts:
  - title: Data Integration Building Blocks (DIBBs)
    url: https://www.cdc.gov/data-modernization/php/technologies/about-dibbs.html
project_url: https://dibbs.tools/
project_cta: See the site
source_code_url:
---

{% capture summary %}
As part of our broader work with the Centers for Disease Control and Prevention (CDC) to [build a response-ready public health data system](/work/experience/cdc-dibbs/), we partnered with the Virginia Department of Health (VDH) to build a prototype data pipeline that processes high volumes of incoming COVID-19 data faster, breaks down silos between data streams, and turns raw information into meaningful intelligence for public health action.
{% endcapture %}

{% capture challenge %}
Data coming into state, tribal, local, and territorial (STLT) public health agencies is often messy, unstandardized, and incomplete. At the same time, epidemiologists lack the tools to efficiently turn that data into meaningful intelligence. During a public health crisis, this combination can slow down the entire pipeline — from ingestion to processing to analysis.

{% include callout.html
  type = "pullquote"
  content = "Our epidemiologists waste 80% of their time cleaning data and can't do useful analysis. The end goal…is to free up that 80% of their time to do actual public health work."
%}

VDH experienced exactly this problem during the COVID-19 pandemic. The state's surveillance system relied on time- and resource-intensive manual processes — multiple staff members, siloed systems, and an Excel spreadsheet that scheduled when different data streams could be processed to avoid overloading the system. With the high volume and spikes of COVID-19 data, processing was slow, systems timed out, and there was no single source of truth.

VDH wanted to combine electronic lab reports, electronic case reports, and vaccination data into a single database where epidemiologists could quickly perform analyses with minimal manual effort. Local jurisdictions also wanted to geocode the data to identify gaps in vaccination coverage and conduct targeted outreach — like holding vaccination drives in schools or apartment complexes. But VDH's existing system introduced inefficiencies and uncertainty that compromised data sharing, delayed public health action, and eroded confidence in the integrity of the data itself.
{% endcapture %}

{% capture solution %}
As part of a broader initiative between the CDC and U.S. Digital Service to modernize public health data infrastructure, we partnered with VDH to experiment with new approaches for storing, processing, and linking incoming data streams.

First, we engaged in discovery to map VDH's data workflow end to end — from the receipt of public health data through processing to analysis. That research revealed where the bottlenecks were and what VDH's epidemiologists actually needed to do their jobs.

Next, we built a cloud-based prototype data processing pipeline that brought VDH's disparate data streams together into a single database, using the Fast Healthcare Interoperability Resources standard to standardize data elements. The pipeline automatically standardized, deduplicated, geocoded, and linked incoming data. It created patient-level records for analysis and converted raw data into a tabular, human-readable format — enabling epidemiologists to quickly find the information they needed.

We constructed this prototype using a set of open-source, modular tools known as [Data Integration Building Blocks](/work/experience/cdc-dibbs/) (DIBBs). From a software deployment perspective, DIBBs are accessible via RESTful APIs and containerized so that all operating needs are bundled into a single package, making them easy to deploy to cloud environments or on-premises. When combined, DIBBs create customizable pipelines that can increase data processing speed across a wide range of incoming public health data formats — including electronic case reporting, electronic lab reports, and vaccination records.

Finally, we developed a [white paper](https://github.com/CDCgov/dibbs-ecr-viewer/blob/main/publications/DMI_VAWhitePaper_V3.pdf) documenting findings from the pilot so other STLTs could apply the same approaches to their own data challenges.
{% endcapture %}

{% capture results %}
- Built a prototype DIBBs pipeline that significantly improved data processing speed and broke down silos between different data streams
- VDH went from handling 5,800 incoming HL7 messages per hour, at peak, to 20,000 messages per hour
- Reduced patient record duplication by 19% across data streams (lab reports, case reports, and vaccinations)
- DIBBs pipeline can generate a tabular, analysis-ready data mart for ~380,000 patient resources in under 15 minutes
- Lessons from the pilot are informing additional DIBBs products for STLTs across the country
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
