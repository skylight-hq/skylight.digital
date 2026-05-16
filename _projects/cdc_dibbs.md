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
  - "Git / GitHub"
  - "Terraform"
  - "Docker"
  - "Microsoft Azure"
  - "Amazon Web Services"
  - "Elasticsearch"
  - "Figma"
  - "Slack"
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
  - "Infrastructure as code"
  - "Open-source development"
news_posts:
  - title: "CDC Data Modernization Efforts Accelerate Nation's Ability to Detect and Rapidly Respond to Health Threats"
    url: https://www.cdc.gov/media/releases/2024/p0411-CDC-data-modernization.html
  - title: "CDC and USDS: Innovation through Partnership"
    url: https://www.cdc.gov/data-modernization/php/index.html
  - title: "CDC Advances Data Strategy to Speed Public Health Response"
    url: https://govciomedia.com/cdc-advances-data-strategy-to-speed-public-health-response/
project_url: https://dibbs.tools
project_cta: "See the tools"
source_code_url:
---

{% capture summary %}
Data Integration Building Blocks (DIBBs) are open-source, modular tools that help public health agencies improve how they collect, analyze, and use data. The goal is a modern public health data infrastructure that works across diseases and conditions. We're developing DIBBs with the Centers for Disease Control and Prevention (CDC) and the U.S. Digital Service (USDS, now U.S. DOGE Service) so the country can deliver timely, actionable data to decision-makers at every level of government.
{% endcapture %}

{% capture challenge %}
Public health authorities at every level of government rely on data to understand and address health challenges. The data journey runs from patient to public health and back — and every step needs systems that work. But outdated, siloed, and fragile systems often disrupt that flow, delaying detection and response.

The COVID-19 pandemic exposed those weaknesses. Many state, tribal, local, and territorial (STLT) health departments struggled with the volume and variety of incoming healthcare data. Outdated tools buckled under pressure and failed to handle non-standard inputs — like data from a question as new as "Have you lost your sense of taste or smell?"

The stakes extend beyond any single outbreak. Without modern, interoperable data systems, the same bottlenecks that hampered the COVID-19 response will recur with the next public health crisis. The U.S. public health system needs to become "response-ready" — able to proactively detect and address threats rather than scrambling to catch up after they arrive.
{% endcapture %}

{% capture solution %}
**We partnered with CDC and USDS to design, build, and scale open-source tools** that help public health departments process and transform data. The work supports CDC's [Public Health Data Strategy](https://www.cdc.gov/public-health-data-strategy/php/index.html) and a broader multi-year modernization initiative focused on pandemic readiness and interoperability. We apply agile principles and user-centered design, conducting research with STLT staff across the data life cycle so the tools solve real problems.

The design philosophy behind DIBBs is modularity. **The tools are composable, much like building blocks that can be stacked in different configurations.** Each DIBBs tool handles a specific function — ingesting data, standardizing formats, enriching records, or surfacing information. Agencies select and combine the ones they need to fit their environment. This approach automates manual data processing, improves data quality, and gives public health departments room to adapt as requirements change.

![Illustration showing several blocks, some of which are interconnected with pipelines.](/img/projects/cdc_dibbs/dibbs-logo.svg){: .mb-0 }

Different configurations of DIBBs depending on user needs.
{: .caption }

Proving the approach required real-world validation, not just a working prototype. We developed and tested DIBBs through a series of pilots with STLT partners, each one feeding back into the product.

The first pilot was a [prototype pipeline with the Virginia Department of Health (VDH)](/work/experience/cdc-dibbs-vdh-pilot/). It processed incoming COVID-19 data faster, created a single source of truth, and eliminated duplicative manual work. We then scaled to a [production pipeline with the Los Angeles County (LAC) Department of Public Health](/work/experience/cdc-dibbs-lac-pilot/). The pipeline processed multiple data streams — including electronic case reporting (eCR) and electronic laboratory reporting (ELR) data — improving downstream analysis and case investigation.

Alongside the pipelines, we developed and piloted a [viewer interface](/work/experience/cdc-dibbs-ecr-viewer/) that surfaces key information from eCR files. The viewer makes the files more useful for monitoring reportable conditions. To lower the barrier to adoption, we also stood up [cloud hosting infrastructure](/work/experience/cdc-dibbs-cloud-enablement/). STLTs can now deploy and scale DIBBs without building their own environments from scratch.

Each pilot refined the tools and validated the modular approach at increasing scale. **The result is a growing set of open-source building blocks that agencies can adopt on their own.** That foundation works across diseases and conditions, and grows with the program.
{% endcapture %}

{% capture results %}
- **VDH increased data throughput from 5,800 to 20,000 HL7 messages per hour** and reduced patient record duplication by 19% through a [prototype DIBBs pipeline](/work/experience/cdc-dibbs-vdh-pilot/) that proved the modular approach
- **LAC Hepatitis case investigators receive eCR data 95% faster** (from 20 hours to 1 hour) via a [production pipeline](/work/experience/cdc-dibbs-lac-pilot/) that processes and enriches multiple data streams, including eCR and ELR data
- **eCR processing reduced from 25 clicks to 5 clicks** through an [intuitive viewer interface](/work/experience/cdc-dibbs-ecr-viewer/) piloted with multiple STLTs to make eCR data more useful for monitoring reportable conditions
- **Deployed DIBBs to a centrally-hosted CDC cloud environment** and began [onboarding four STLTs](/work/experience/cdc-dibbs-cloud-enablement/) — Alabama, Idaho, Dallas, and Chicago — to pilot the infrastructure
- **Developed API documentation** enabling STLTs to explore how to integrate DIBBs products into their existing data environments
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
