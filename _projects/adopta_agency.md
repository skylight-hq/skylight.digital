---
layout: default
title_tag: Adopta.Agency
title: Crowdsourcing improvements to government open data
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
excerpt: A civic crowdsourcing model that enabled developers and organizations to improve government datasets and transform them into usable APIs.
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
Before joining Skylight, Kin Lane created Adopta.Agency — a civic crowdsourcing model that enabled developers and organizations to improve government open datasets and transform them into usable APIs. Backed by the Knight Foundation, the project demonstrated that distributed contributors could systematically increase the quality and accessibility of public data at a scale no single agency could achieve alone.
{% endcapture %}

{% capture challenge %}
Following implementation of the White House's [Open Data Policy](https://project-open-data.cio.gov/policy-memo/), federal agencies released thousands of datasets to the public. The mandate was a landmark step toward transparency — but releasing data and making it usable turned out to be two very different things.

Many datasets were incomplete, inconsistently formatted, or missing the structure needed to integrate into applications. Developers who wanted to build on public data often spent more time cleaning and interpreting it than using it. As a result, much of the government's open data investment sat underutilized — technically available, but practically inaccessible.

The core problem was one of scale. No single agency had the capacity to clean, structure, and maintain thousands of datasets on an ongoing basis. What was missing wasn't more policy — it was a model that could harness outside contributors to improve public data systematically, the way open-source communities improve software.
{% endcapture %}

{% capture solution %}
Kin designed Adopta.Agency around a simple insight: the same open-source collaboration model that works for software could work for data. Rather than asking agencies to fix everything themselves, he created a framework that enabled anyone — developers, civic technologists, organizations — to contribute structured improvements to public datasets.

First, he built the [blueprint process](https://adopta-agency.github.io/adopta-blueprint/) — an open, step-by-step guide that walked contributors through improving a dataset incrementally. Participants could start by cleaning and structuring raw data into JSON, then progress to transforming it into a fully functional API. Each step added value without requiring contributors to take on the entire dataset at once.

Next, he chose GitHub as the collaboration platform. This gave distributed contributors a transparent, version-controlled environment for working on shared datasets — the same workflow developers already used for code. The approach lowered the barrier to entry and made every improvement visible and reusable.

Then, with grant funding from the Knight Foundation, he built a working prototype and applied it to five federal datasets spanning the U.S. Federal Budget, the Veterans Affairs Open Data Portal, Department of Education Tech Data, My Brother's Keeper, and ClinicalTrials.gov. Each dataset produced a reusable blueprint pattern that others could follow to replicate the approach across government.
{% endcapture %}

{% capture results %}
- Secured grant funding from the Knight Foundation to develop and prototype the model
- Applied the approach to five federal datasets, producing a working proof of concept
- Created five reusable blueprint patterns that enabled others to replicate dataset improvements independently
- Demonstrated a scalable civic crowdsourcing model for improving government open data — without requiring additional agency resources
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
