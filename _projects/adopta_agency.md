---
layout: default
title_tag: Adopta.Agency
title: Creating a scalable model to improve government open data
permalink: /work/experience/adopta-agency/
redirect_from:
  - /work/adopta-agency/
image: /img/projects/adopta_agency/api-launcher.svg
image_description: A person using a catapult to launch a boulder inscribed with the acronym API.
feature_image:
feature_image_description:
feature_image_shadow:
order: 4500
display: true
tags: [service delivery, apis, open government, kin lane]
excerpt: Designed a civic crowdsourcing model that enabled developers and organizations to improve government datasets and turn them into usable APIs.
project_members:
  - kin-lane
technologies:
  - APIs
  - OpenAPI Specification
  - Git / GitHub
  - GitHub Pages
  - Jekyll
  - YAML
practices:
  - API design
  - API deployment
  - API management
  - Civic crowdsourcing
news_posts:
  - title: Federal Agency Dataset Adoption
    url: https://www.knightfoundation.org/grants/201551217/
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
Government agencies released thousands of open datasets, but many remained difficult to use. Adopta.Agency created a scalable, open model that enabled anyone to improve datasets and transform them into usable APIs — making public data more accessible, reusable, and valuable.
{% endcapture %}

{% capture challenge %}
Following implementation of the White House's [Open Data Policy](https://project-open-data.cio.gov/policy-memo/), federal agencies produced thousands of open datasets. However, many were incomplete, inconsistently formatted, or difficult to integrate into applications.

As a result, much of this data remained underutilized. Improving and maintaining datasets at scale exceeded the capacity of individual agencies, creating a need for a new model that could expand access and usability without relying solely on government resources.
{% endcapture %}

{% capture solution %}
Adopta.Agency introduced a civic crowdsourcing model for improving government open data.

At the center of this model was an [open blueprint process](http://adopta-agency.github.io/adopta-blueprint/) that guided contributors through structured steps to improve a dataset. Participants could incrementally increase value — first by cleaning and structuring data into JSON, and then by transforming it into a fully functional API.

The model leveraged GitHub as a collaboration platform, enabling distributed contributors to work transparently and iteratively on shared datasets.

With support from the Knight Foundation, a prototype was developed and applied to five federal datasets. This work produced a set of reusable blueprint patterns that others could follow to replicate and scale dataset improvements across government.
{% endcapture %}

{% capture results %}
- Secured grant funding from the Knight Foundation to support development and prototyping  
- Designed and launched the Adopta.Agency blueprint process for improving open datasets  
- Applied the model to five federal datasets, including the U.S. Federal Budget, Veterans Affairs Open Data Portal, Department of Education Tech Data, My Brother's Keeper, and ClinicalTrials.gov  
- Created five reusable blueprint patterns that enabled others to replicate and scale dataset improvements  
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
