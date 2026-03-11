---
layout: default
title_tag: Adopta.Agency
title: Making public datasets more accessible
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
excerpt: A civic movement designed to encourage people to "adopt" government open datasets and improve how those datasets are shared with the public.
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
[Adopta.Agency](http://adopta.agency/) is a civic movement built around an [open blueprint process](http://adopta-agency.github.io/adopta-blueprint/) that enables anyone to improve an open government dataset and move it one step forward by producing JSON, or two steps forward by launching an open API.
{% endcapture %}

{% capture challenge %}
Following implementation of the White House's [Open Data Policy](https://project-open-data.cio.gov/policy-memo/), federal agencies produced thousands of open datasets, many of which needed cleanup and translation into JSON for reuse in other applications. Given the scale of that effort, public stakeholders needed an innovative model for improving and expanding the usability of government open data.
{% endcapture %}

{% capture solution %}
To address this challenge, Kin Lane established [Adopta.Agency](http://adopta.agency/), a civic movement based on a civic crowdsourcing model for improving government open data. Participation is guided through an [open blueprint process](http://adopta-agency.github.io/adopta-blueprint/) that runs on GitHub and provides step-by-step instructions for anyone who wants to "adopt" and improve an open government dataset.

As part of this work, Kin secured grant funding from the Knight Foundation to create a prototype focused on identifying, improving, and making datasets more accessible and shareable. The prototype was applied to five separate open government datasets, resulting in five reusable blueprint patterns that were published on GitHub for use in future dataset adoption efforts.
{% endcapture %}

{% capture results %}
- Secured grant funding from the Knight Foundation
- Developed the Adopta.Agency blueprint process
- Applied the blueprint to five federal datasets, including the U.S. Federal Budget, Veterans Affairs Open Data Portal, Department of Education Tech Data, My Brother's Keeper, and ClinicalTrials.gov
- Developed five reusable blueprint patterns from those adoptions
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
