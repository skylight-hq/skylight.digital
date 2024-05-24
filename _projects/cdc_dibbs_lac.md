---
layout: default
title_tag: Centers for Disease Control and Prevention
title: Streamlining data processing to drive timely public health action
permalink: /work/experience/cdc-data-integration-building-blocks-lac-pilot/
image: /img/projects/cdc_dibbs_lac/dibbs-pipeline.svg
image_description: Two workers in yellow safety gear patching a pipe, which is connected to a computer atop a desk. A person is working at the computer. 
feature_image:
feature_image_description:
feature_image_shadow:
order: 130
display: true
tags:
  [service delivery,
  research & design,
  product management,
  software delivery,
  legacy modernization,
  devops,
  cloud & platforms,
  data & analytics,
  apis, security & privacy,
  open government,
  healthcare,
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
  robert mitchell,]
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
  - MURAL
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
project_url: https://cdcgov.github.io/dibbs-site 
project_cta: See the site
source_code_url: https://github.com/CDCgov/phdi
---

{% capture summary %}
The Los Angeles County (LAC) Department of Public Health needed timely access to electronic case reporting (eCR) data to monitor and respond to disease outbreaks. We worked with the Centers for Disease Control and Prevention (CDC) and U.S. Digital Service (USDS) to develop a cutting-edge, modular data pipeline that enabled LAC to automatically process and enrich multiple data streams, including eCR data and electronic lab reports (ELR), to improve downstream data analysis and case investigation.
{% endcapture %}

{% capture challenge %}
Timely access to eCR data is critical for public health departments to respond swiftly to disease outbreaks, especially during a public health emergency. 
Public health departments receive an automated feed of eCR data from private healthcare organizations and use this data to find case report information from a patient’s electronic health records (EHRs). 
This can include a patient's demographics, diagnoses, comorbidities, occupation, travel history, immunizations, and medications — information that can help inform case investigation and public health data analysis. 
Unfortunately, not all public health jurisdiction’s can effectively manage the flow of incoming eCR data. 

Due to technical limitations with their existing disease surveillance system, the LAC Department of Public Health faced challenges with processing eCR files, leaving this rich source of data largely inaccessible to their disease surveillance teams. 
Because LAC’s disease surveillance system couldn’t process eCR data fields, they set up a separate, patchwork data workflow to collect eCR data. As a result, LAC had siloed processing systems for different data types, conflicting data standards, record duplication, and poor record linkage. 
Epidemiologists at LAC also had to spend a considerable amount of time manually cleaning data after it was processed.

Rather than this fragmented data infrastructure, LAC wanted to have a single, standard processing approach for a wide range of data types, including eCR and electronic lab records (ELRs). 
To efficiently monitor and respond to disease outbreaks, LAC also needed to improve the overall quality of the data processed through its disease surveillance infrastructure. 
Better, more reliable data reduces the need for manual cleaning and makes downstream analysis and case investigation less onerous for epidemiologists and other public health staff.
{% endcapture %}

{% capture solution %}
As part of the wider CDC and USDS [Pandemic-Ready Interoperability Modernization Effort](https://www.cdc.gov/surveillance/data-modernization/partnerships/usds-innovation.html) (PRIME), 
Skylight worked with LAC to improve its disease surveillance infrastructure. Building on a [previous pilot](/work/experience/cdc-data-integration-building-blocks-vdh-pilot/) with the 
Virginia Department of Health, the Skylight team developed and deployed a cutting-edge, modular data pipeline to automatically process and enrich multiple data streams, 
including COVID-19 eCR files and ELRs. This open-source, cloud-based pipeline — composed of modular software components referred to as [Data Integration Building Blocks](/work/experience/cdc-data-integration-building-blocks/) (DIBBs) — significantly 
reduces the time it takes for LAC’s disease surveillance teams to receive and act upon public health data, while also improving the quality of that data. 

Over the course of the year-long pilot, the DIBBs team:

- Conducted discovery research to understand eCR workflows, identify product support needs, and assess the value of processing eCR data for LAC disease surveillance teams
- Engaged LAC staff in an iterative software development process with weekly agile ceremonies and regular product demonstrations to continuously refine the pipeline 
- Performed user acceptance testing with LAC staff to identify and mitigate barriers to adoption for the DIBBs pipeline
- Compared the performance of LAC’s pre-pilot data processing to data processing after the DIBBs pipeline was deployed to test record linkage performance and measure data quality
- Evaluated how the DIBBs pipeline affected the experience of case investigators that monitor and report on Hepatitis A to assess the pipeline’s public health impact
- Developed a compendium of resources (i.e., Handoff Hub) for LAC staff to use post-pilot that enables them to independently operate and customize the pipeline 

Following the successful pilot, LAC now has access to an automated feed of analysis-ready eCR data with fields relevant to downstream disease teams. They also can use the pipeline to 
process ELR data, which makes it easier to perform analysis across data streams using a single source of truth. LAC continues to leverage the DIBBs pipeline infrastructure to give 
additional disease teams access to processed eCR data, including the HIV and STD prevention team and the Community Outbreak Team (focused on viral respiratory pathogens).

Many of the public health data issues present in LAC's disease surveillance infrastructure (e.g., siloed, low-quality data) are common across public health jurisdictions. 
Through the LAC pilot, the DIBBs team gained insights on how to use and adapt our modular, open-source solutions to solve data challenges for multiple disease surveillance systems across public health jurisdictions.
{% endcapture %}

{% capture results %}
- LAC staff can create program-specific data marts in a few hours rather than months, giving disease teams access to processed eCR data for case investigation and analysis 
- Case investigators on the Hepatitis team receive eCR data 95% faster (from 20 hours to 1 hour) 
- Case investigators can quickly and easily identify positive Hepatitis A cases in an aggregated tabular format (versus sifting through individual HTML files) resulting in ~12 minutes of time savings per Hepatitis A case
- Pipeline saves LAC technical staff 6 hours a week by eliminating the need to manually run data processing scripts
- Pipeline processes ELR data at a near 100% success rate without requiring significant modifications, enabling LAC disease teams to access and analyze cleaned ELR data 
- LAC staff can operate the pipeline independently and continuously expand use of eCR data to new program areas
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
