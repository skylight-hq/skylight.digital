---
layout: default
title_tag: "Centers for Disease Control and Prevention"
title: "Streamlining data processing to drive timely public health action"
permalink: /work/experience/cdc-dibbs-lac-pilot/
image: /img/projects/cdc_dibbs_lac_pilot/dibbs-pipeline.svg
image_description: "Two workers in yellow safety gear patching a pipe, which is connected to a computer atop a desk. A person is working at the computer."
feature_image:
feature_image_description:
feature_image_shadow:
order: 130
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
  - "amrita bhatti"
  - "peggy chau"
  - "nick clyde"
  - "matt goldberg"
  - "marcelle goggins"
  - "brandon mader"
  - "dan paseltiner"
  - "emma stephenson"
  - "ann millspaugh"
  - "brady fausett"
  - "robert mitchell"
excerpt: "A modular data pipeline that automatically processes and enriches electronic case reporting and electronic laboratory reporting data to improve data quality, disease monitoring, and case investigation."
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
project_url: https://dibbs.tools
project_cta: "See the site"
source_code_url:
---

{% capture summary %}
The Los Angeles County (LAC) Department of Public Health needed timely access to electronic case reporting (eCR) data to monitor and respond to disease outbreaks. As part of the [Data Integration Building Blocks (DIBBs)](/work/experience/cdc-dibbs/) engagement with the Centers for Disease Control and Prevention (CDC), we worked with LAC to develop a modular data pipeline that automatically processes and enriches multiple data streams — including eCR and electronic laboratory reporting (ELR) data — to improve data quality, case investigation, and downstream analysis.
{% endcapture %}

{% capture challenge %}
Timely access to eCR data is critical for public health departments to respond swiftly to disease outbreaks, especially during a public health emergency. Public health departments receive an automated feed of eCR data from private healthcare organizations and use this data to find case report information from a patient's electronic health records (EHRs). This can include a patient's demographics, diagnoses, comorbidities, occupation, travel history, immunizations, and medications — information that can help inform case investigation and public health data analysis.

Unfortunately, not all public health jurisdictions can effectively manage the flow of incoming eCR data. Due to technical limitations with their existing disease surveillance system, the LAC Department of Public Health faced challenges with processing eCR files, leaving this rich source of data largely inaccessible to their disease surveillance teams. Because LAC's disease surveillance system couldn't process eCR data fields, they set up a separate, patchwork data workflow to collect eCR data. As a result, LAC had siloed processing systems for different data types, conflicting data standards, record duplication, and poor record linkage. Epidemiologists at LAC also had to spend a considerable amount of time manually cleaning data after it was processed.

Rather than this fragmented data infrastructure, LAC wanted to have a single, standard processing approach for a wide range of data types, including eCR and ELR. To efficiently monitor and respond to disease outbreaks, LAC also needed to improve the overall quality of the data processed through its disease surveillance infrastructure. Better, more reliable data reduces the need for manual cleaning and makes downstream analysis and case investigation less onerous for epidemiologists and other public health staff.
{% endcapture %}

{% capture solution %}
**Building on a [previous pilot](/work/experience/cdc-dibbs-vdh-pilot/) with the Virginia Department of Health,** Skylight worked with LAC as part of a multi-year CDC and U.S. Digital Service (USDS, now U.S. DOGE Service) [initiative focused on pandemic readiness and interoperability](https://www.cdc.gov/data-modernization/php/index.html). The team developed and deployed an open-source, cloud-based pipeline — composed of modular software components known as [Data Integration Building Blocks (DIBBs)](/work/experience/cdc-dibbs/) — that significantly reduces the time it takes for LAC's disease surveillance teams to receive and act upon public health data while improving its quality.

**Discovery research grounded the pipeline in LAC's operational reality.** The team mapped eCR workflows, identified product support needs, and assessed which eCR data fields were most valuable to LAC's disease surveillance teams — insights that determined which DIBBs modules to deploy and how to configure them. Because the data challenges were intertwined with workflow changes, the team ran a year-long iterative development process with weekly agile ceremonies and regular product demonstrations, refining the pipeline alongside the staff who would use it.

**Testing against real-world workflows validated both the technology and the adoption path.** The team compared pre-pilot and post-pilot data processing to measure record linkage performance and data quality, and chose Hepatitis A case investigators as the test case for evaluating public health impact — a disease team with clear, measurable workflows. User acceptance testing with LAC staff surfaced adoption barriers early enough to address them before rollout. And to ensure LAC wouldn't depend on Skylight long-term, the team built a Handoff Hub — a compendium of resources enabling LAC staff to run and customize the pipeline on their own.

**LAC now has access to an automated feed of analysis-ready eCR data** with fields relevant to downstream disease teams. The pipeline also processes ELR data, making it easier to analyze across data streams using a single source of truth. LAC continues to expand access to processed eCR data for additional teams, including the HIV and STD prevention team and the Community Outbreak Team focused on viral respiratory pathogens.

**The pilot's insights apply far beyond Los Angeles.** The data challenges LAC faced — siloed systems, low-quality data, manual cleaning — are common across public health jurisdictions. Through this work, the DIBBs team gained insights on how to adapt modular, open-source solutions for disease surveillance systems nationwide.
{% endcapture %}

{% capture results %}
- **LAC staff can create program-specific data marts in a few hours** rather than months, giving disease teams access to processed eCR data for case investigation and analysis
- **Case investigators on the Hepatitis team receive eCR data 95% faster** (from 20 hours to 1 hour)
- **Case investigators can quickly and easily identify positive Hepatitis A cases** in an aggregated tabular format (versus sifting through individual HTML files) resulting in ~12 minutes of time savings per Hepatitis A case
- **Pipeline saves LAC technical staff 6 hours a week** by eliminating the need to manually run data processing scripts
- **Pipeline processes ELR data at a near 100% success rate** without requiring significant modifications, enabling LAC disease teams to access and analyze cleaned ELR data
- **LAC staff can operate the pipeline independently** and continuously expand use of eCR data to new program areas
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
