---
layout: default
title_tag: Centers for Disease Control and Prevention
title: Streamlining data processing to drive timely public health action
permalink: /work/experience/cdc-dibbs-lac-pilot/
image: /img/projects/cdc_dibbs_lac_pilot/dibbs-pipeline.svg
image_description: Two workers in yellow safety gear patching a pipe, which is connected to a computer atop a desk. A person is working at the computer.
feature_image:
feature_image_description:
feature_image_shadow:
order: 130
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
  amrita bhatti,
  peggy chau,
  nick clyde,
  matt goldberg,
  marcelle goggins,
  brandon mader,
  dan paseltiner,
  emma stephenson,
  ann millspaugh,
  brady fausett,
  robert mitchell]
excerpt: A cutting-edge, modular data pipeline that automatically processes and enriches multiple data streams, including electronic case reporting (eCR) data and electronic lab reports (ELR), to improve data quality, disease monitoring, and case investigation.
project_members:
  - amrita-bhatti
  - peggy-chau
  - nick-clyde
  - brady-fausett
  - marcelle-goggins
  - matt-goldberg
  - brandon-mader
  - ann-millspaugh
  - robert-mitchell
  - dan-paseltiner
  - emma-stephenson
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
  - title: Case Surveillance News — September 2023
    url: https://archive.cdc.gov/www_cdc_gov/nndss/trc/news/issues/case-surveillance-news-202309.html
project_url: https://dibbs.tools/
project_cta: See the site
source_code_url:
---

{% capture summary %}
As part of our broader work to [build a response-ready public health data system](/work/experience/cdc-dibbs/), we partnered with the Los Angeles County (LAC) Department of Public Health to develop and deploy a cutting-edge, modular data pipeline that automatically processes and enriches multiple data streams — including electronic case reporting (eCR) and electronic laboratory reporting (ELR) data — to improve downstream data analysis and case investigation.
{% endcapture %}

{% capture challenge %}
Timely access to eCR data is critical for public health departments to respond swiftly to disease outbreaks, especially during a public health emergency. Public health departments receive an automated feed of eCR data from private healthcare organizations — after passing through the Association of Public Health Laboratories AIMS platform — and use it to find case report information from a patient's electronic health records. This can include demographics, diagnoses, comorbidities, occupation, travel history, immunizations, and medications — information that can help inform case investigation and public health data analysis. Unfortunately, not all public health jurisdictions can effectively manage the flow of incoming eCR data.

Due to technical limitations with their existing disease surveillance system, the LAC Department of Public Health faced challenges processing eCR files, leaving this rich source of data largely inaccessible to their disease surveillance teams. Because LAC's system couldn't process eCR data fields, they set up a separate, patchwork data workflow to collect eCR data. As a result, LAC had siloed processing systems for different data types, conflicting data standards, record duplication, and poor record linkage. Epidemiologists also had to spend considerable time manually cleaning data after it was processed.

LAC wanted a single, standard processing approach for a wide range of data types, including eCR and ELR. To efficiently monitor and respond to disease outbreaks, LAC also needed to improve the overall quality of data processed through its disease surveillance infrastructure. Better, more reliable data reduces the need for manual cleaning and makes downstream analysis and case investigation less onerous for epidemiologists and other public health staff.
{% endcapture %}

{% capture solution %}
As part of a broader initiative between the Centers for Disease Control and Prevention and U.S. Digital Service to modernize public health data infrastructure, we partnered with LAC to improve its disease surveillance infrastructure. [Building on a previous pilot with the Virginia Department of Health](/work/experience/cdc-dibbs-vdh-pilot/), we developed and deployed a cutting-edge, modular data pipeline to automatically process and enrich multiple data streams, including COVID-19 eCR files and ELR data. This open-source, cloud-based pipeline — composed of modular software components referred to as [Data Integration Building Blocks](/work/experience/cdc-dibbs/) (DIBBs) — significantly reduces the time it takes for LAC's disease surveillance teams to receive and act on public health data, while also improving data quality.

Over the course of the year-long pilot, we conducted discovery research to understand eCR workflows, identify product support needs, and assess the value of processing eCR data for LAC disease surveillance teams. We engaged LAC staff in an iterative software development process with weekly agile ceremonies and regular product demonstrations to continuously refine the pipeline. We also performed user acceptance testing to identify and mitigate barriers to adoption, compared pre-pilot and post-pilot data processing to measure record linkage performance and data quality, and evaluated how the DIBBs pipeline affected the experience of case investigators monitoring Hepatitis A. To support a smooth transition, we developed a compendium of resources — a Handoff Hub — that enables LAC staff to independently operate and customize the pipeline.

Following the successful pilot, LAC now has access to an automated feed of analysis-ready eCR data with fields relevant to downstream disease teams. They can also use the pipeline to process ELR data, making it easier to perform analysis across data streams using a single source of truth. LAC continues to leverage the DIBBs pipeline infrastructure to give additional disease teams access to processed eCR data, including the HIV and STD prevention team and the Community Outbreak Team.

Many of the data issues present in LAC's disease surveillance infrastructure — such as siloed, low-quality data — are common across public health jurisdictions. Through this pilot, we gained insights on how to use and adapt modular, open-source solutions to solve data challenges for multiple disease surveillance systems across the country.
{% endcapture %}

{% capture results %}
- Case investigators on the Hepatitis team can receive eCR data 95% faster — from 20 hours to 1 hour
- LAC staff can create program-specific data marts in a few hours rather than months, giving disease teams access to processed eCR data for case investigation and analysis
- Case investigators can quickly identify positive Hepatitis A cases in an aggregated tabular format, resulting in approximately 12 minutes of time savings per case
- Pipeline saves LAC technical staff 6 hours a week by eliminating the need to manually run data processing scripts
- Pipeline processes ELR data at a near 100% success rate without significant modifications, enabling LAC disease teams to access and analyze cleaned ELR data
- LAC staff can operate the pipeline independently and continuously expand use of eCR data to new program areas
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
