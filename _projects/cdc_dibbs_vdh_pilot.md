---
layout: default
title_tag: "Centers for Disease Control and Prevention"
title: "Piloting a pipeline that improves public health data processing and analysis"
permalink: /work/experience/cdc-dibbs-vdh-pilot/
redirect_from:
  - /cdc-public-health-data-infrastructure-pilot/
  - /work/experience/cdc-public-health-data-infrastructure-pilot/
image: /img/projects/cdc_dibbs_vdh_pilot/dibbs-vdh-prototype.svg
image_description: "Someone using a tablet with multiple items (vaccines, labs, patient records) flying in from all sides and being dropped into a single screen view."
feature_image:
feature_image_description:
feature_image_shadow:
order: 132
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
  - "bryan britten"
  - "graham smith"
  - "peggy chau"
  - "kenneth chow"
  - "nick clyde"
  - "ryan gaddis"
  - "matt goldberg"
  - "spencer kathol"
  - "brandon mader"
  - "dan paseltiner"
  - "ann millspaugh"
  - "brady fausett"
  - "robert mitchell"
excerpt: "A prototype data ingestion pipeline that processes incoming public health data faster, automates manual processes, and enables better analysis to inform timely public health action."
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
  - "Python"
  - "APIs"
  - "FHIR"
  - "Microservices"
  - "YAML"
  - "Git / GitHub"
  - "Terraform"
  - "Microsoft Azure"
  - "Azure DevOps"
  - "Azure Managed FHIR Server"
  - "Mural"
  - "Slack"
  - "Zoom"
practices:
  - "Product management"
  - "User research"
  - "User experience design"
  - "Agile development"
  - "Rapid prototyping"
  - "API-first development"
  - "Data engineering"
  - "Data management"
  - "DevSecOps"
  - "Security / privacy compliance"
  - "Containerization"
  - "Cloud hosting"
  - "Hybrid-cloud architecture"
  - "Virtual collaboration"
news_posts:
  - title: "Improving Public Health Data Pipelines"
    url: https://archive.cdc.gov/www_cdc_gov/surveillance/data-modernization/technologies/public-health-data-pipelines.html
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
As part of our broader work building [Data Integration Building Blocks (DIBBs)](/work/experience/cdc-dibbs/) with the Centers for Disease Control and Prevention (CDC), we partnered with the Virginia Department of Health (VDH) to address critical challenges in processing high volumes of COVID-19 data. Working with the U.S. Digital Service (USDS, now U.S. DOGE Service), we built a prototype data ingestion pipeline that improves data processing speed, automates manual processes, and enables better analysis to inform timely public health action.
{% endcapture %}

{% capture challenge %}
Data coming into state, tribal, local, and territorial (STLT) public health agencies is often messy, unstandardized, and incomplete. At the same time, epidemiologists lack the tools and methods to efficiently turn incoming data into meaningful intelligence that can drive timely public health action. During a public health crisis, this combination can slow down the entire data pipeline, from ingestion to processing to analysis. As one public health official noted:

{% include callout.html
  type = "pullquote"
  content = "Our epidemiologists waste 80% of their time cleaning data and can't do useful analysis. The end goal…is to free up that 80% of their time to do actual public health work."
%}

The Virginia Department of Health experienced exactly this problem during the COVID-19 pandemic. Virginia's public health data surveillance system relied on time- and resource-intensive manual processes (involving multiple staff members, siloed systems, and an Excel spreadsheet that scheduled when different data streams could be processed to avoid overloading). As a result of these methods, along with the high volume and spikes in COVID-19 data throughout the pandemic, data processing was slow, systems timed out, and there was no single source of truth for incoming data.

VDH needed a unified approach: combine lab reports, case reports, and vaccination records into a single database where epidemiologists could analyze data with minimal manual effort. Local jurisdictions also wanted to geocode the data to identify vaccination gaps and target outreach — holding drives at schools or apartment complexes, for example. But VDH's existing system couldn't support any of this. It introduced inefficiencies and uncertainty into data processing, compromised the ability to share findings, and ultimately eroded confidence in the integrity of the data itself.
{% endcapture %}

{% capture solution %}
**Skylight partnered with VDH as part of a multi-year CDC and USDS [initiative focused on pandemic readiness and interoperability](https://www.cdc.gov/data-modernization/php/index.html)** to experiment with new approaches for storing, processing, and linking different incoming data streams.

Before building anything, the team needed to understand where the problems actually lived. **The team mapped VDH's data workflow end-to-end** — from the receipt of public health data through processing to analysis — identifying bottlenecks, manual handoffs, and data quality issues. That discovery work shaped the design of a cloud-based prototype pipeline that brought disparate data streams together into a single database, using the Fast Healthcare Interoperability Resources (FHIR) standard to normalize data elements. The team also developed a white paper capturing learnings from the pilot for other STLTs to apply to their own modernization efforts.

The resulting pipeline transformed how VDH worked with COVID-19 data. Lab reports (ELR), case reports (eCR), and vaccination records (VXU) could now answer urgent public health questions with far less manual effort. **Data that moved through the pipeline was standardized, deduplicated, geocoded, and linked** — and patient-level records were created automatically for analysis. The pipeline also converted raw data into a tabular, human-readable format, enabling epidemiologists to quickly find the information they needed without sifting through raw files.

What made the pipeline reusable beyond Virginia was its architecture. The team built the prototype from a set of tools known as [Data Integration Building Blocks](/work/experience/cdc-dibbs/) (DIBBs) — **containerized services accessible via RESTful APIs** that can be combined into customizable pipelines for a wide range of public health data formats. Because each block is self-contained and cloud-deployable, STLTs can assemble pipelines that fit their specific infrastructure and data needs.

Lessons from the VDH pilot shaped the broader DIBBs portfolio, informing additional products that STLTs can use to **modernize their data systems.** The team continues to test and iterate on DIBBs with a wider range of public health departments and disease surveillance systems.
{% endcapture %}

{% capture results %}
- **Built a prototype DIBBs pipeline that significantly improved data processing speed** and broke down silos between different streams
- **Reduced patient record duplication by 19%** across data streams (lab reports, case reports, and vaccinations)
- **VDH increased throughput from 5,800 to 20,000 incoming HL7 messages per hour** at peak capacity
- **DIBBs pipeline generates a tabular, analysis-ready data mart for ~380,000 patient resources in under 15 minutes**
- **Continuing to pilot and iterate** on the DIBBs pipeline with additional STLTs and disease surveillance systems
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
