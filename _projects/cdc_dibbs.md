---
layout: default
title_tag: "Centers for Disease Control and Prevention"
title: "Building a response-ready public health data system"
permalink: /work/experience/cdc-dibbs/
redirect_from:
  - /cdc-public-health-data-infrastructure/
  - /work/experience/cdc-public-health-data-infrastructure/
image: /img/projects/cdc_dibbs/dibbs.svg
image_description: "A person stacking some blocks on a table."
feature_image:
feature_image_description:
feature_image_shadow:
order: 110
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
  - "alis akers"
  - "nick bristow"
  - "rin concordia"
  - "mary crawford"
  - "gordon farrell"
  - "jill fromewick"
  - "ryan gaddis"
  - "matt goldberg"
  - "marcelle goggins"
  - "janki kaneria"
  - "andrew kasper"
  - "laura king"
  - "boban ljuljdjurovic"
  - "brandon mader"
  - "rob mitchell"
  - "robert mitchell"
  - "josh nygaard"
  - "dan paseltiner"
  - "kyle planeaux"
  - "lina roth"
  - "emma stephenson"
  - "angela the"
  - "sarah tress"
  - "ashton tu"
  - "mary yeh"
  - "bob zhao"
  - "bryan britten"
  - "kenneth chow"
  - "nick clyde"
  - "brady fausett"
  - "spencer kathol"
  - "ann millspaugh"
  - "tim niehoff"
  - "peggy chau"
  - "tomi obikunle"
  - "graham smith"
  - "jesse skeets"
excerpt: "An open-source, modular toolkit that helps public health agencies automate data processing and build modern, response-ready data infrastructure."
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
  - title: "CDC Data Modernization Efforts Accelerate Nation's Ability to Detect and Rapidly Respond to Health Threats"
    url: https://www.cdc.gov/media/releases/2024/p0411-CDC-data-modernization.html
  - title: "CDC and USDS: Innovation through Partnership"
    url: https://www.cdc.gov/surveillance/data-modernization/partnerships/usds-innovation.html
  - title: "CDC Advances Data Strategy to Speed Public Health Response"
    url: https://govciomedia.com/cdc-advances-data-strategy-to-speed-public-health-response/
project_url: https://dibbs.tools
project_cta: "See the site"
source_code_url: https://github.com/CDCgov/dibbs-site
---

{% capture summary %}
Data Integration Building Blocks (DIBBs) are a set of open-source, modular tools that enable public health agencies to improve the collection, analysis, and use of data — helping to build a modern and efficient public health data infrastructure that works for all diseases and conditions. We're developing DIBBs with the Centers for Disease Control and Prevention (CDC) and U.S. Digital Service (USDS, now U.S. DOGE Service) so the U.S. can deliver timely, relevant, and actionable data to decision-makers at all levels of government.
{% endcapture %}

{% capture challenge %}
Public health authorities at all levels of government rely on data to understand and address public health challenges. This means that robust systems are critical at every step of the data journey — from patient to public health and back. However, outdated, siloed, and fragile systems often disrupt the flow of data, delaying detection and response. The COVID-19 pandemic exposed these weaknesses, highlighting the urgent need to improve the collection, analysis, and use of public health data. Many state, tribal, local, and territorial (STLT) health departments struggled to manage the overwhelming volume and variety of incoming healthcare data, with outdated tools buckling under pressure and failing to handle non-standard inputs, such as data from questions like, "Have you lost your sense of taste or smell?"

Breaking down silos, reducing STLT data collection and reporting burdens, and fostering seamless collaboration are essential. In other words, the U.S. public health system must become "response-ready" to proactively address crises and mitigate harm when they occur.
{% endcapture %}

{% capture solution %}
**In an effort to strengthen the U.S. public health data infrastructure,** the CDC has established a [Public Health Data Strategy](https://www.cdc.gov/public-health-data-strategy/php/index.html) through the Office of Public Health Data, Surveillance, and Technology, as well as launched a multi-year modernization initiative with USDS focused on pandemic readiness and interoperability. We support this work in partnership with CDC and USDS, applying agile principles and user-centered design methods to develop and support adoption of open-source, modular tools — DIBBs — that public health departments can use to process and transform data.

**DIBBs are modular tools designed for the collection, processing, and analysis of public health data,** significantly reducing the time it takes for STLTs to act on critical information. Much like LEGO blocks that can be stacked to create different shapes, DIBBs can be combined in various configurations to form flexible and efficient data pipelines. These tools automate data processing, enhance data quality, and ensure completeness, enabling public health departments to better detect, investigate, and respond to health threats. Public health agencies can also tailor the system by selecting and deploying the specific DIBBs they need, creating a customized pipeline that suits their unique requirements.

![Illustration showing several blocks, some of which are interconnected with pipelines.](/img/projects/cdc_dibbs/dibbs-logo.svg){: .mb-0 }

Different configurations of DIBBs depending on user needs.
{: .caption }

**We've partnered with a variety of STLTs** to develop and iterate on DIBBs products that reduce manual processes and solve public health data challenges. To date, we've conducted user research with STLT staff who interact with condition-specific diseases along the data life cycle (e.g., collection, ingestion, management, analysis, and visualization).

**We built and piloted a [prototype DIBBs pipeline](/work/experience/cdc-dibbs-vdh-pilot/)** with the Virginia Department of Health that processed incoming COVID-19 data faster, created a source of truth, and removed the need for duplicative processes.

**Next, we deployed a [cloud-based DIBBs pipeline](/work/experience/cdc-dibbs-lac-pilot/)** with the Los Angeles County Department of Public Health to process and enrich multiple data streams, including electronic case reporting (eCR) data and electronic laboratory reporting (ELR), improving downstream data analysis and case investigation.

**We've also developed and piloted an [intuitive interface](/work/experience/cdc-dibbs-ecr-viewer/)** that surfaces key information from eCR files to make them more useful for monitoring the spread of reportable conditions.

**Finally, we've provided [flexible cloud hosting infrastructure](/work/experience/cdc-dibbs-cloud-enablement/)** that enables STLTs to quickly upgrade and scale their data systems with DIBBs to meet the scope and scale of emerging public health threats.

By piloting, developing, and scaling a modular set of tools that can be combined into flexible, performant products for STLTs, our work is helping to create modern public health data infrastructure that works for all diseases and conditions — a system that will enable public health agencies to receive timely, relevant, and actionable data.
{% endcapture %}

{% capture results %}
- **Developed and iterated on a set of modular DIBBs** that can be combined together to improve the speed, accuracy, and completeness of public health data
- **Partnered with the Virginia Department of Health** to build and pilot a cloud-based prototype DIBBs pipeline as a proof of concept for future DIBBs products
- **Developed API documentation** enabling STLTs to explore how to integrate DIBBs products into their existing data environments
- **Deployed a modular DIBBs pipeline with Los Angeles County's Department of Public Health** that automates processes and enriches multiple data streams, including eCR and ELR data
- **Piloted eCR Viewer with multiple STLTs** to make eCR data more useful for monitoring the spread of reportable conditions
- **Developed cloud infrastructure hosted by CDC** to facilitate adoption and implementation of DIBBs by STLTs
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
