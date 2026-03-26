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
  alis akers,
  nick bristow,
  rin concordia,
  mary crawford,
  gordon farrell,
  jill fromewick,
  ryan gaddis,
  matt goldberg,
  marcelle goggins,
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
  - rin-concordia
  - mary-crawford
  - gordon-farrell
  - jill-fromewick
  - ryan-gaddis
  - matt-goldberg
  - marcelle-goggins
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
project_url: https://dibbs.tools/
project_cta: See the site
source_code_url:
---

{% capture summary %}
We're working with the Centers for Disease Control and Prevention (CDC) and U.S. Digital Service (USDS) to develop Data Integration Building Blocks (DIBBs) — a set of open-source, modular tools that enable public health agencies to improve the collection, analysis, and use of data. The goal is a modern public health data infrastructure that delivers timely, relevant, and actionable information to decision-makers at all levels of government, for all diseases and conditions.
{% endcapture %}

{% capture challenge %}
Public health authorities at all levels of government rely on data to understand and address public health challenges. Robust systems are critical at every step of the data journey — from patient to public health and back. But outdated, siloed, and fragile systems have long disrupted the flow of data, delaying detection and response.

The COVID-19 pandemic exposed these weaknesses at scale. Many state, tribal, local, and territorial (STLT) health departments struggled to manage the overwhelming volume and variety of incoming healthcare data. Processing tools buckled under sudden spikes. Legacy systems couldn't handle non-standard inputs — data generated from new questions like "Have you lost your sense of taste or smell?" — or adapt to rapidly changing reporting requirements.

The underlying problem wasn't any single system failure — it was structural. Siloed infrastructure kept critical data disconnected. Manual processes created bottlenecks. And the burden on STLTs for collecting and reporting data left little capacity for analysis or action. To address future crises before they escalate and reduce harm when they occur, the U.S. public health system needs to become "response-ready" — with data infrastructure that's coordinated, interoperable, and built for modern demands.
{% endcapture %}

{% capture solution %}
The CDC established a [Public Health Data Strategy](https://www.cdc.gov/public-health-data-strategy/php/index.html) through the Office of Public Health Data, Surveillance, and Technology to strengthen the nation's public health data infrastructure. We support this work in partnership with CDC and USDS, applying agile principles and human-centered design methods to develop and support adoption of open-source, modular tools known as Data Integration Building Blocks (DIBBs).

DIBBs are designed to significantly reduce the time it takes for STLTs to act on critical public health information. Much like LEGO blocks that can be stacked to create different shapes, individual DIBBs can be combined in various configurations to form flexible, efficient data pipelines. These tools automate data processing, enhance data quality, and ensure completeness — enabling public health departments to better detect, investigate, and respond to health threats. Agencies can tailor the system by selecting and deploying the specific Building Blocks they need, creating a customized pipeline that suits their unique requirements.

![Illustration showing several blocks, some of which are interconnected with pipelines.](/img/projects/cdc_dibbs/dibbs-logo.svg){: .mb-0 }

Different configurations of DIBBs depending on user needs.
{: .caption }

The current portfolio includes Validation, Fast Healthcare Interoperability Resources (FHIR) Converter, Standardization, Geocoding, Record Linkage, Flat Formatter, Public Health Document Container (PHDC) Converter, electronic case reporting (eCR) Viewer, eCR Refiner, and Orchestration.

Our approach centers on partnering directly with STLTs to develop, test, and iterate on DIBBs products that solve real data challenges. We started by conducting user research with STLT staff who interact with condition-specific diseases along the data lifecycle — from collection and ingestion through management, analysis, and visualization. That research has shaped every product decision that followed.

From there, we [built and piloted a prototype pipeline with the Virginia Department of Health](https://skylight.digital/work/experience/cdc-dibbs-vdh-pilot/) that processed incoming COVID-19 data faster, created a single source of truth, and removed the need for duplicative processes. Building on that proof of concept, we [deployed a cloud-based pipeline with the Los Angeles County Department of Public Health](https://skylight.digital/work/experience/cdc-dibbs-lac-pilot/) to process and enrich multiple data streams — including eCR data and electronic lab reports (ELR) — improving downstream data analysis and case investigation. In parallel, we [developed and piloted an intuitive interface called eCR Viewer](https://skylight.digital/work/experience/cdc-dibbs-ecr-viewer/) that surfaces key information from eCR files to make them more useful for monitoring the spread of reportable conditions. And to support broader adoption, we've [provided flexible cloud hosting infrastructure](https://skylight.digital/work/experience/cdc-dibbs-cloud-enablement/) that enables STLTs to quickly upgrade and scale their data systems with DIBBs to meet the scope and scale of emerging public health threats.

By piloting, developing, and scaling a modular set of tools that can be combined into flexible, performant products for STLTs, our work is helping to create modern public health data infrastructure that works for all diseases and conditions — a system that enables public health agencies to receive timely, relevant, and actionable data.
{% endcapture %}

{% capture results %}
- Developed and iterated on a set of modular DIBBs that can be combined to improve the speed, accuracy, and completeness of public health data
- Deployed a cutting-edge, modular pipeline with the Los Angeles County Department of Public Health that automates processes and enriches multiple data streams, including eCR and ELR data
- Built and piloted a prototype pipeline with the Virginia Department of Health as a proof of concept for future DIBBs products
- Piloted eCR Viewer with multiple STLTs to make electronic case reporting data more useful for monitoring reportable conditions
- Developed cloud infrastructure hosted by CDC to facilitate STLT adoption and implementation of DIBBs
- Created API documentation enabling STLTs to explore how to integrate DIBBs products into their existing data environments
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
