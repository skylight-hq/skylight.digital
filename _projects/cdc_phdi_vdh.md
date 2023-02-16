---
layout: default
title_tag: Centers for Disease Control and Prevention
title: Piloting a pipeline that improves public health data processing and analysis
permalink: /work/experience/cdc-public-health-data-infrastructure-pilot/
redirect_from:
  - /cdc-public-health-data-infrastructure-pilot/
image: /img/projects/cdc_phdi_vdh/phdi-vhd-prototype.svg
image_description: Someone using a tablet with multiple items (vaccines, labs, patient records) flying in from all sides and being dropped into a single screen view.
feature_image:
feature_image_description:
feature_image_shadow:
order: 500
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
  bryan britten,
  peggy chau,
  kenneth chow,
  nick clyde,
  ryan gaddis,
  matt goldberg,
  spencer kathol,
  brandon mader,
  dan paseltiner,
  ann millspaugh,
  brady fausett,
  jill fromewick,
  marcelle goggins]
excerpt: A prototype data ingestion pipeline that increases data processing speed, automates manual processes, and enables public health agencies to better analyze data and share findings to drive timely public health action and decision-making.
project_members:
  - peggy-chau
  - kenneth-chow
  - nick-clyde
  - ryan-gaddis
  - matt-goldberg
  - ann-millspaugh
  - brandon-mader
  - dan-paseltiner
  - brady-fausett
  - jill-fromewick
  - marcelle-goggins
  - bryan-britten
  - spencer-kathol
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
source_code_url: https://github.com/CDCgov/phdi 
---

{% capture summary %}
The Virginia Department of Health (VDH) needed to process high volumes of incoming COVID-19 data and turn it into meaningful intelligence. We worked with the CDC and U.S. Digital Service (USDS) to build a prototype data ingestion pipeline that improves data processing and analysis to more efficiently inform public health action.
{% endcapture %}

{% capture challenge %}
Data coming into state, tribal, local, and territorial (STLT) public health agencies is often messy, unstandardized, and incomplete. At the same time, epidemiologists lack the tools and methods to efficiently turn incoming data into meaningful intelligence that can drive timely public health action. During a public health crisis, this combination can slow down the entire data pipeline, from ingestion to processing to analysis. As one public health official noted: 

{% include callout.html
  type = "pullquote"
  content = "Our epidemiologists waste 80% of their time cleaning data and can't do useful analysis. The end goal…is to free up that 80% of their time to do actual public health work."
%}

The Virginia Department of Health experienced exactly this problem during the COVID-19 pandemic. Virginia’s public health data surveillance system relied on time- and resource-intensive manual processes (involving multiple staff members, siloed systems, and an Excel spreadsheet that scheduled when different data streams could be processed to avoid overloading). As a result of these methods, along with the high volume and spikes in COVID-19 data throughout the pandemic, data processing was slow, systems timed out, and there was no single source of truth for incoming data.

VDH wanted to improve their processes for making incoming data from healthcare partners analysis-ready to more efficiently inform public health action. Specifically, they wanted to combine different data streams (electronic lab reports, electronic case reports, and vaccinations) into a single database, where they could then quickly and easily perform analyses with minimal manual effort. Additionally, local jurisdictions within Virginia wanted to geocode the data to identify gaps in vaccination and then perform targeted outreach, such as holding vaccination drives within schools or apartment complexes. 

However, as it stood, VDH’s existing system introduced inefficiencies and uncertainty into data processing, compromised their ability to share data analysis and findings to inform public health action, and ultimately reduced confidence in the integrity of the data itself.
{% endcapture %}

{% capture solution %}
In partnership with the CDC and USDS, Skylight was tasked with establishing a set of best practices for data processing, storage, and exchange, working with VDH as a pilot partner for experimentation. 

In an effort to improve VDH’s data infrastructure, our team:

- Engaged in discovery efforts to establish an understanding of the workflow at VDH, from the receipt of public health data through processing to analysis
- Built a prototype for VDH that brought disparate data streams together into a single database with standardized data elements
- Developed a white paper as a central reference point for learnings from the pilot project to apply to other STLTs

This project resulted in the creation of a working prototype — a cloud-based, off-the-shelf data pipeline where raw datasets (vaccines, case reports, and lab results) can be processed in a single place. Within this system, data is standardized, deduplicated, geocoded, and linked, and patient-level records are created to use for analysis. The prototype saves time and effort, increases data processing speed, creates a single source of truth for incoming data, and removes the need for duplicative processes. 

Based on this work, we’ve extended the pilot with VDH to develop analysis tools, and, ideally, implement the prototype pipeline in a live data environment. 

Additionally, while the tools developed as part of the VDH prototype focus on data ingestion and processing, the learnings from this pilot project also help in the development of a comprehensive set of “Building Blocks,” (i.e., modular software services that STLTs can integrate into their current workflows, reducing the need for manual processes and creating more efficient access to better quality data).

The next phase of work for our team will be to apply the learnings from the VDH prototype to prioritize, develop, and scale modular Building Blocks with a wide range of STLT partners to solve other healthcare data-related challenges.
{% endcapture %}

{% capture results %}

- Built prototype data ingestion pipeline that significantly improved data processing speed, monitoring, and ease of use
- Reduced patient record duplication by 19% across data streams (lab reports, case reports, and vaccinations)
- System went from being able to handle 5,800 incoming HL7 messages per hour, at peak, to 20,000 messages per hour
- System generates a tabular, analysis-ready data mart for ~380,000 patient resources in under 15 minutes
- Continuing to pilot prototype with near real-time data from VDH to test and iterate on the current Building Blocks
  {% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
