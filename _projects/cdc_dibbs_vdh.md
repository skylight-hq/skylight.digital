---
layout: default
title_tag: Centers for Disease Control and Prevention
title: Piloting a pipeline that improves public health data processing and analysis
permalink: /work/experience/cdc-data-integration-building-blocks-vhd-pilot/
redirect_from:
  - /cdc-data-integration-building-blocks-vhd-pilot/
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
  graham smith,
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
  robert mitchell,]
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
news_posts:
  - title: Improving Public Health Data Pipelines
    url: https://www.cdc.gov/surveillance/data-modernization/technologies/public-health-data-pipelines.html
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

The Virginia Department of Health experienced exactly this problem during the COVID-19 pandemic. Virginia’s public health disease surveillance system relied on time- and resource-intensive manual processes (involving multiple staff members, siloed systems, and an Excel spreadsheet that scheduled when different data streams could be processed to avoid overloading). As a result of these methods, along with the high volume and spikes in COVID-19 data throughout the pandemic, data processing was slow, systems timed out, and there was no single source of truth for incoming data.

VDH wanted to improve their processes for making incoming data from healthcare partners analysis-ready to more efficiently inform public health action. Specifically, they wanted to combine different data streams (electronic lab reports, electronic case reports, and vaccinations) into a single database, where they could then quickly and easily perform analyses with minimal manual effort. Additionally, local jurisdictions within Virginia wanted to geocode the data to identify gaps in vaccination and then perform targeted outreach, such as holding vaccination drives within schools or apartment complexes.

However, as it stood, VDH’s existing system introduced inefficiencies and uncertainty into data processing, compromised their ability to share data analysis and findings to inform public health action, and ultimately reduced confidence in the integrity of the data itself.
{% endcapture %}

{% capture solution %}
As part of the CDC and USDS [Pandemic-Ready Interoperability Modernization Effort](https://www.cdc.gov/surveillance/data-modernization/partnerships/usds-innovation.html) (PRIME), Skylight partnered with VDH to experiment with new approaches for storing, processing, and linking different incoming data streams.

In an effort to improve VDH’s disease surveillance infrastructure, our team:

- Engaged in discovery efforts to establish an understanding of the data workflow at VDH, from the receipt of public health data through processing to analysis
- Built a cloud-based prototype data processing pipeline for VDH that brought disparate data streams together into a single database using the Fast Healthcare Interoperability Resources (FHIR) standard to standardize data elements
- Developed a [white paper](https://github.com/CDCgov/phdi/blob/main/publications/DMI_VAWhitePaper_V3.pdf) as a central reference point for learnings from the pilot project to apply to other STLTs

The prototype data processing pipeline that resulted from this work helped VDH use lab (ELR), case (eCR), and vaccine (VXU) data to answer urgent COVID-19 public health questions with less manual effort. The pipeline processed incoming data faster, created a source of truth, and removed the need for duplicative processes. Data that moved through this prototype pipeline was standardized, deduplicated, geocoded, and linked, and patient-level records were created to use for analysis. Additionally, the pipeline converted raw data into a tabular, human-readable format (e.g,. spreadsheet), enabling epidemiologists to quickly find data they needed.

Our team constructed this prototype pipeline using a set of open-source, modular tools known as Data Integration Building Blocks (DIBBs). From a software deployment perspective, DIBBs are accessible via RESTful APIs. These services are containerized, so that all of their operating needs are defined and bundled into a single package, making them easy to deploy to cloud environments or on-premises if needed. When combined together, DIBBs create customisable pipelines that can increase data processing speed for incoming data across a wide range of data formats (e.g., eCR, ELR, VXU). 

The project team is applying learnings from this pilot to inform additional DIBBs products that STLTs can use to modernize their data systems. During the next phase of work, our team is working to further test and iterate on DIBBs products with a wide range of public health departments to solve similar data challenges.
{% endcapture %}

{% capture results %}

- Built a prototype DIBBs pipeline that significantly improved data processing speed and broke down silos between different streams
- Reduced patient record duplication by 19% across data streams (lab reports, case reports, and vaccinations)
- Using the prototype pipeline, VDH went from being able to handle 5,800 incoming HL7 messages per hour, at peak, to 20,000 messages per hour
- DIBBs pipeline generates a tabular, analysis-ready data mart for ~380,000 patient resources in under 15 minutes
- Continuing to pilot and iterate on the DIBBs pipeline with additional STLTs and disease surveillance systems
  {% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
