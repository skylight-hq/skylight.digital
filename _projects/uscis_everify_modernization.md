---
layout: default
title_tag: U.S. Citizenship and Immigration Services
title: Modernizing employment eligibility verification
permalink: /work/experience/uscis-everify-modernization/
redirect_from:
  - /work/uscis-everify-modernization/
image: /img/projects/uscis_everify_modernization/employment-eligibility-verification.svg
image_description: A person using a punchcard to enter work.
feature_image:
feature_image_description:
order: 1500
display: true
tags: [service delivery, software delivery, legacy modernization, devops, cloud & platforms, data & analytics, apis, security & privacy, homeland security, citizenship & immigration, josh dorothy, nick bristow, jay danielian]
excerpt: A modernized digital service for employers to confirm the eligibility of their employees to work in the U.S.
project_members:
  - josh-dorothy
  - nick-bristow
  - jay-danielian
technologies:
  - HTML / CSS
  - JavaScript / React / Redux
  - Ruby / Rails
  - Groovy
  - JMeter
  - APIs
  - Microservices
  - Swagger
  - Amazon Web Services
  - Docker
  - Jenkins
  - Chef
  - Packer
  - Elasticsearch
  - Sequel
  - Git / GitHub
practices:
  - Accessibility review
  - Agile development
  - Rapid prototyping
  - API-first development
  - Microservices architecture
  - RESTful / SOAP API architecture
  - Legacy reengineering / strangler pattern
  - Data engineering
  - DevSecOps
  - Containerization
  - Cloud hosting
  - Automated documentation
  - Co-located teams
news_posts:
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
The U.S. Citizenship and Immigration Services' (USCIS) E-Verify system is
used by employers to confirm the eligibility of their employees to work
in the U.S. As part of USCIS' efforts to modernize E-Verify, we engaged as a
subcontractor to Excella and provided API design and technical expertise
that contributed to the successful relaunch of the system, despite the
complexity of the existing legacy environment.
{% endcapture %}

{% capture challenge %}
Several years ago, USCIS undertook a massive initiative to modernize their
E-Verify system in order to improve the overall user experience. A major
challenge with this modernization has been the need to maintain and
integrate with a myriad of legacy systems, while simultaneously
building out and optimizing the new system.
{% endcapture %}

{% capture solution %}
As a subcontractor to [Excella](https://www.excella.com/), we helped address both
the modernization and relaunch efforts, as well as legacy integration and modernization,
using digital delivery practices. Some of our major contributions included:

- Replacing existing services with new frameworks written
in modern languages and deployed to the cloud
- Enhancing the efficiency of the system's query and information
usage by rewriting the data-retrieval code in the object-relational mapping layer
- Improving performance of the case data ingestion pipeline by
reconfiguring the underlying architecture of the system's data
loading process, as well as upgrading the clustering hardware
responsible for managing the loading
- Creating an API-based microservice in order to simulate the behavior
of a Social Security Administration system, which was needed for
third-party API integration testing
{% endcapture %}

{% capture results %}
- Helped relaunch E-Verify in April of 2018
- Migrated 225 million historical cases into the Elasticsearch
datastore for efficient, fast-searching capability
- Improved the speed of verification for over 800,000 enrolled employers
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
