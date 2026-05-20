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
excerpt: "A modular data pipeline that gave the Los Angeles County Department of Public Health automated, analysis-ready electronic case reporting data — cutting case investigator wait times from 20 hours to one."
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
project_cta: "See the tools"
source_code_url:
---

{% capture summary %}
The Los Angeles County (LAC) Department of Public Health needed timely access to electronic case reporting (eCR) data to track disease outbreaks. As part of the [Data Integration Building Blocks (DIBBs)](/work/experience/cdc-dibbs/) engagement with the Centers for Disease Control and Prevention (CDC), we deployed a modular data pipeline with LAC. The pipeline now automatically processes and enriches both eCR and electronic laboratory reporting (ELR) data, improving data quality, case investigation, and downstream analysis.
{% endcapture %}

{% capture challenge %}
Public health departments need fast access to eCR data to respond to disease outbreaks. Healthcare organizations send an automated feed of eCR files containing rich patient context — demographics, diagnoses, comorbidities, occupation, travel history, immunizations, and medications. That context can drive case investigation and analysis.

But not all jurisdictions can process the feed. LAC's disease surveillance system couldn't handle eCR data fields, so the team had set up a separate, patchwork workflow to collect them. The result was siloed processing for different data types, conflicting standards, duplicate records, and weak record linkage. Epidemiologists spent significant time cleaning the data by hand after it landed.

LAC wanted one standard processing approach across data types, including eCR and ELR. They also needed the underlying data quality to improve, so case investigation and analysis would stop being so manual.
{% endcapture %}

{% capture solution %}
We worked with LAC as part of a multi-year CDC and U.S. Digital Service (USDS, now U.S. DOGE Service) [initiative on pandemic readiness and interoperability](https://www.cdc.gov/data-modernization/php/index.html). Building on a [previous pilot with the Virginia Department of Health](/work/experience/cdc-dibbs-vdh-pilot/), we organized the work around four phases.

**We started where most pipeline projects skip: the existing workflow.** The team mapped eCR workflows with LAC staff, identified product-support needs, and ranked which eCR data fields mattered most to LAC's disease surveillance teams. Those insights determined which DIBBs modules to deploy and how to configure them. The pipeline needed to reflect how LAC's teams actually worked, not just how data flowed on a diagram.

**Modular meant LAC could swap any block without rebuilding the pipeline.** The team developed and deployed a cloud-based pipeline composed of modular software components — the Data Integration Building Blocks. Because the data challenges were intertwined with workflow changes, we ran a year-long iterative process with weekly agile ceremonies and regular product demos, refining the pipeline alongside the staff who would use it.

**Validation testing ran against real disease workflows, not synthetic data.** The team compared pre-pilot and post-pilot processing to measure record linkage and data quality. We picked the Hepatitis A case investigators as the test case for public health impact — a disease team with clear, measurable workflows. User acceptance testing with LAC staff surfaced adoption barriers early enough to address them before rollout.

**Independence wasn't documentation — it was a working operations playbook LAC ran themselves.** To ensure LAC wouldn't depend on us long-term, the team built a Handoff Hub — a compendium of resources letting LAC staff run and customize the pipeline on their own. LAC now has an automated feed of analysis-ready eCR data with fields routed to the right disease teams. The pipeline also processes ELR data, giving LAC a single source of truth across data streams. The HIV and STD prevention team and the Community Outbreak Team focused on viral respiratory pathogens are next.

The challenges LAC faced — siloed systems, low-quality data, manual cleaning — are common across public health jurisdictions. Through this work, the DIBBs team learned how to adapt modular, open-source solutions for disease surveillance nationwide.
{% endcapture %}

{% capture results %}
- **Cut case investigator wait time by 95%** — Hepatitis A case investigators now receive eCR data in one hour instead of 20
- **Processes ELR data at near 100% success rate** without significant modifications, giving disease teams cleaned ELR data alongside eCR
- **Saves ~12 minutes per Hepatitis A case** by giving investigators an aggregated tabular view instead of individual HTML files
- **Frees 6 hours of technical staff time per week** by eliminating manual data-processing scripts
- **Reduces program-specific data mart creation from months to hours**, expanding eCR access to new disease teams without an engineering project
- **Transferred operational ownership to LAC**, so the agency runs the pipeline itself and continues to expand eCR use across disease programs
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
