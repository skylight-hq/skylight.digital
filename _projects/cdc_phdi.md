---
layout: default
title_tag: Centers for Disease Control and Prevention
title: Building a response-ready public health data system
permalink: /cdc-public-health-data-infrastructure/
image: /img/projects/cdc_phdi/phdi.svg
image_description: A person stacking blocks on a table.
feature_image:
feature_image_description:
feature_image_shadow:
order: 210
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
  tomi obikunle,
  graham smith,
  jesse skeets,
  brady fausett,
  jill fromewick,
  marcelle goggins]
excerpt: An open-source, modular set of tools for collecting, processing, and analyzing public health data that can be combined to solve the bespoke data needs of public health department’s as part of a modern public health data infrastructure.
project_members:
  - bryan-britten
  - peggy-chau
  - kenneth-chow
  - nick-clyde
  - ryan-gaddis
  - matt-goldberg
  - spencer-kathol
  - ann-millspaugh
  - brandon-mader
  - tomi-obikunle
  - graham-smith
  - jesse-skeets
  - dan-paseltiner
  - brady-fausett
  - jill-fromewick
  - marcelle-goggins
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
To effectively respond to public health threats, the U.S. needs a public health data system that can deliver timely, relevant, and actionable data. We’re working with the Centers for Disease Control and Prevention (CDC) and U.S. Digital Service (USDS) to develop modular software tools, using agile principles and human-centered design, that enable public health agencies to improve the collection, analysis, and use of data, ultimately helping to build a modern public health data infrastructure that works for all diseases and conditions.
{% endcapture %}

{% capture challenge %}
The United States relies on data to understand and react to public health challenges. Think of the U.S. public health data system as a river where the flow of data moves upstream — from independent healthcare partners (e.g., hospitals, medical offices, and testing facilities), through state, tribal, local, and territorial (STLT) public health agencies, all the way to the federal level, where the data informs national policy recommendations. As such, robust systems are critical at every level to enable a steady, smooth flow of data. Unfortunately, over the course of the COVID-19 pandemic, this public health data river became more of a trickle. 

Breakdowns along the data flow were common as a result of siloed, antiquated, and brittle systems, leading to delayed detection and response. For instance, STLTs faced difficulties in handling both the volume and variety of healthcare data that arrived at their front door. COVID-19 showed that public health departments weren’t ready for sudden bursts of increased data volume as their data processing tools buckled under the pressure. STLTs were also unprepared for ad-hoc changes to the data they received, for example, non-standard data generated from questions like: “Have you lost your sense of taste or smell?” Furthermore, the changing nature of regulations require STLTs to handle new data formats that legacy systems are unable to process and analyze efficiently. 

The COVID-19 pandemic revealed that the U.S. needs to significantly improve the collection, analysis, and use of public health data. This requires data systems that are coordinated, interoperable, and supported by shared services developed on agile principles and human-centered design, with modern, adaptable tooling that meets user needs. It means building a secure and scalable data infrastructure to enable timely, complete data sharing for public health action, breaking down silos that keep critical data disconnected, and reducing the burden on STLTs for collecting and reporting data. In other words, the U.S. public health system needs to be “response-ready” to address public health crises before they happen and reduce harm if and when they do.
{% endcapture %}

{% capture solution %}
In an effort to strengthen the U.S. public health data infrastructure, the CDC established the [Data Modernization Initiative (DMI)](https://www.cdc.gov/surveillance/data-modernization/index.html) as well as launched a multi-year collaboration with the USDS called the [Pandemic-Ready Interoperability Modernization Effort (PRIME)](https://www.cdc.gov/surveillance/pdfs/PRIME_1-sheet_single-page.pdf). Skylight supports this work in partnership with USDS, with a focus on developing and providing access to open source, modular software and tooling, known as “Building Blocks,” for use by STLTs.

Building Blocks are a set of tools for data collection, processing, and analysis, encompassing all points of the data workflow, from systems and messaging support to deliverables for epidemiologists. They’re modular and independent, but when combined together can solve the bespoke data needs of any given STLT. Building Blocks can range in size — some are relatively small and only do one thing, like standardizing patient names, while others can be very big and perform more complex tasks, like standardizing an address while simultaneously fetching the associated census tract, FIPS code, and county. You can think of them like LEGO blocks. Each LEGO block is its own, independent piece, but can fit together to build entire structures. Similarly, while each Building Block targets one specific task, they can also be combined to create larger data ingestion, processing, and analysis pipelines. Importantly, Building Blocks are designed with common inputs and outputs making them composable across STLTs and enabling easy integration into existing workflows. 

Our team has partnered with a variety of STLTs to develop and iterate on Building Blocks that reduce manual processes and solve public health data-related challenges. Thus far, our efforts have involved:
- Building a cloud-based data pipeline “starter kit” that comes with a core set of Building Blocks to quickly increase data processing speed, create a single source of truth for incoming data, and remove the need for duplicative processes 
- Developing an SDK toolkit that includes the full range of Building Blocks that STLTs can import, experiment with, and integrate into their existing data pipelines
- Setting up a beta program that enables STLTs to collaborate with our team on new or in-development Building Blocks to help improve a part of their data process 
- Conducting focus groups with STLT staff who interact with condition-specific diseases along the data lifecycle (e.g., collection, ingestion, management, analysis, and visualization)
- Establishing a Community of Practice to connect with STLTs interested in offering feedback on Building Blocks, contributing code, and helping govern an eventual open source community 

These activities will help define, prioritize, pilot, and, ultimately, scale Building Blocks across a wide range of STLTs with various technical capabilities. By establishing a modular set of Building Blocks that STLTs can easily integrate into existing data systems, our work is helping to create modern public health data infrastructure that works for all diseases and conditions — a system that will enable public health agencies to deliver timely, relevant, and actionable data. 
{% endcapture %}

{% capture results %}

- [Partnered with Virginia Health Department](https://skylight.digital/cdc-public-health-data-infrastructure-pilot/) to build and pilot a cloud-based data pipeline “starter kit” with a quick start approach to solve some of the main challenges STLTs face, namely data ingestion, geocoding, and deduplication
- Developed SDK toolkit and API documentation enabling STLTs to easily import and integrate modular Building Blocks into their existing data environments 
- Working with Los Angeles County on piloting a Geocoding Building Block to automatically link patient data with standardized geolocation (e.g., census tract, county, address)
- Gathered insights from public health department staff through user-centered focus groups to understand data-related frustrations and ideal outcomes 

  {% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
