---
layout: default
title_tag: Centers for Disease Control and Prevention
title: Building a response-ready public health data system
permalink: /work/experience/cdc-dibbs/
redirect_from:
  - /cdc-public-health-data-infrastructure/
  - /work/experience/cdc-public-health-data-infrastructure/
image: /img/projects/cdc_dibbs/dibbs.svg
image_description: A person stacking some blocks on a table.
feature_image:
feature_image_description:
feature_image_shadow:
order: 110
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
  apis,
  security & privacy,
  open government,
  public health,
  alis akers,
  nick bristow,
  eric buckley,
  rin concordia,
  mary crawford,
  gordon farrell,
  jill fromewick,
  ryan gaddis,
  matt goldberg,
  marcelle goggins,
  alex hayward,
  janki kaneria,
  andrew kasper,
  laura king,
  boban ljuljdjurovic,
  brandon mader,
  rob mitchell,
  robert mitchell,
  josh nygaard,
  dan paseltiner,
  kyle planeaux,
  lina roth,
  emma stephenson,
  angela the,
  sarah tress,
  ashton tu,
  mary yeh,
  bob zhao,
  bryan britten,
  kenneth chow,
  nick clyde,
  brady fausett,
  spencer kathol,
  ann millspaugh,
  tim niehoff,
  peggy chau,
  tomi obikunle,
  graham smith,
  jesse skeets]
excerpt: An open-source, modular toolkit designed to automate data processing, reduce manual effort, and address critical data challenges within a modern public health data infrastructure.
project_members:
  - alis-akers
  - nick-bristow
  - eric-buckley
  - rin-concordia
  - mary-crawford
  - gordon-farrell
  - jill-fromewick
  - ryan-gaddis
  - matt-goldberg
  - marcelle-goggins
  - alex-hayward
  - janki-kaneria
  - andrew-kasper
  - laura-king
  - boban-ljuljdjurovic
  - brandon-mader
  - rob-mitchell
  - robert-mitchell
  - josh-nygaard
  - dan-paseltiner
  - kyle-planeaux
  - lina-roth
  - emma-stephenson
  - angela-the
  - sarah-tress
  - ashton-tu
  - mary-yeh
  - bob-zhao
  - bryan-britten
  - kenneth-chow
  - nick-clyde
  - brady-fausett
  - spencer-kathol
  - ann-millspaugh
  - tim-niehoff
  - peggy-chau
  - tomi-obikunle
  - graham-smith
  - jesse-skeets
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
project_url: https://cdcgov.github.io/dibbs-site/
project_cta: See the site
source_code_url: https://github.com/CDCgov/phdi
---

{% capture summary %}
To effectively respond to public health threats, the U.S. needs a “public health data system” that can deliver timely, relevant, and actionable data. We’re working with the Centers for Disease Control and Prevention (CDC) and U.S. Digital Service (USDS) to develop a set of open-source, modular tools that enable public health agencies to improve the collection, analysis, and use of data, ultimately helping to build a modern public health data infrastructure that works for all diseases and conditions.
{% endcapture %}

{% capture challenge %}
The United States relies on data to understand and react to public health challenges. Think of the U.S. public health data system as a river where the flow of data moves upstream — from independent healthcare partners (e.g., hospitals, medical offices, and testing facilities), through state, tribal, local, and territorial (STLT) public health agencies, all the way to the federal level, where the data informs national policy recommendations. As such, robust systems are critical at every level to enable a steady, smooth flow of data. Unfortunately, over the course of the COVID-19 pandemic, this public health data river became more of a trickle. 

Breakdowns along the data flow were common as a result of siloed, antiquated, and brittle systems, leading to delayed detection and response. For instance, STLTs faced difficulties in handling both the volume and variety of healthcare data that arrived at their front door. COVID-19 showed that public health departments weren’t ready for sudden bursts of increased data volume as their data processing tools buckled under the pressure. STLTs were also unprepared for ad-hoc changes to the data they received, for example, non-standard data generated from questions like: “Have you lost your sense of taste or smell?” Furthermore, the changing nature of regulations require STLTs to handle new data formats that legacy systems are unable to process and analyze efficiently. 

The COVID-19 pandemic revealed that the U.S. needs to significantly improve the collection, analysis, and use of public health data. This requires data systems that are coordinated, interoperable, and supported by shared services developed on agile principles and human-centered design, with modern, adaptable tooling that meets user needs. It means building a secure and scalable data infrastructure to enable timely, complete data sharing for public health action, breaking down silos that keep critical data disconnected, and reducing the burden on STLTs for collecting and reporting data. In other words, the U.S. public health system needs to be “response-ready” to address public health crises before they happen and reduce harm if and when they do.
{% endcapture %}

{% capture solution %}
In an effort to strengthen the U.S. public health data infrastructure, the CDC has established a [Public Health Data Strategy](https://www.cdc.gov/ophdst/public-health-data-strategy/) through the Office of Public Health Data, Surveillance, and Technology (OPHDST) , as well as launched a multi-year collaboration with the USDS called the [Pandemic-Ready Interoperability Modernization Effort](https://www.cdc.gov/surveillance/data-modernization/partnerships/usds-innovation.html) (PRIME). Skylight supports this work in partnership with USDS, with a focus on developing and providing access to a set of open-source, modular tools, known as Data Integration Building Blocks (DIBBs), that public health departments can use to process and transform data. 

DIBBs are modular tools designed for the collection, processing, and analysis of public health data, significantly reducing the time it takes for STLTs to act on critical information. Much like LEGO blocks that can be stacked to create different shapes, DIBBs can be combined in various configurations to form flexible and efficient data pipelines. These tools automate data processing, enhance data quality, and ensure completeness, enabling public health departments to better detect, investigate, and respond to health threats. Public health agencies can also tailor the system by selecting and deploying the specific DIBBs they need, creating a customized pipeline that suits their unique requirements.

Different configurations of DIBBs depending on user needs

Our current portfolio of DIBBs includes:
- Validation
- FHIR Converter
- Standardization
- Geocoding
- Record Linkage
- Flat Formatter
- PHDC Converter
- eCR Viewer
- eCR Refiner
- Orchestration 

Our team has partnered with a variety of STLTs to develop and iterate on DIBBs products that reduce manual processes and solve public health data challenges. Thus far, we have:

- Conducted user research with STLT staff who interact with condition-specific diseases along the data lifecycle (e.g., collection, ingestion, management, analysis, and visualization)
- Built and piloted a [prototype DIBBs pipeline](https://skylight.digital/work/experience/cdc-dibbs-vdh-pilot/) with the Virginia Department of Health that processed incoming COVID-19 data faster, created a source of truth, and removed the need for duplicative processes
- Deployed a [cloud-based DIBBs pipeline](https://skylight.digital/work/experience/cdc-dibbs-lac-pilot/) with the Los Angeles County Department of Public Health to process and enrich multiple data streams, including electronic case reporting (eCR) data and electronic lab reports (ELR), improving downstream data analysis and case investigation
- Developed and piloted an [intuitive interface](https://skylight.digital/work/experience/cdc-dibbs-ecr-viewer/) that surfaces key information from eCR files to make them more useful for monitoring the spread of reportable conditions
- Provided [flexible cloud hosting infrastructure](https://skylight.digital/work/experience/cdc-dibbs-cloud-enablement/) that enables STLTs to quickly upgrade and scale their data systems with DIBBs to meet the scope and scale of emerging public health threats

By piloting, developing, and scaling a modular set of tools that can be combined into flexible, performant products for STLTs, our work is helping to create modern public health data infrastructure that works for all diseases and conditions — a system that will enable public health agencies to deliver timely, relevant, and actionable data.
{% endcapture %}

{% capture results %}

- Developed and iterated on a set of modular DIBBs that can be combined together to improve the speed, accuracy, and completeness of public health data
- Partnered with the Virginia Department of Health to build and pilot a cloud-based prototype DIBBs pipeline as a proof of concept for future DIBBs products
- Developed API documentation enabling STLTs to explore how to integrate DIBBs products into their existing data environments
- Worked with the Los Angeles County’s Department of Public Health to deploy a cutting edge, modular DIBBs pipeline that automates processes and enriches multiple data streams, including eCR and eLR data
- Piloted a workflow optimization tool known as eCR Viewer with multiple STLTs to make eCR data more useful
- Developed cloud infrastructure hosted by CDC to facilitate adoption and implementation of DIBBs by STLTs

  {% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
