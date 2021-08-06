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
order: 230
display: true
tags: [service delivery, apis, open government, kin lane]
excerpt: A civic movement designed to encourage people to "adopt" government's open datasets, and improve the way these datasets are shared with the public.
project_members:
  - kin-lane
technologies:
  - APIs
  - OpenAPI Specification
  - Git / GitHub
  - Github Pages
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
[Adopta.Agency](http://adopta.agency/) is a civic movement designed
around an [open blueprint process](http://adopta-agency.github.io/adopta-blueprint/)
that enables anyone to improve an open government dataset and move it one step forward by
producing JSON or two steps forward by launching an open API.
{% endcapture %}

{% capture challenge %}
Following the implementation of the White House's
[Open Data Policy](https://project-open-data.cio.gov/policy-memo/),
federal agencies produced thousands of open datasets, many of which needed
cleaning-up and translation into a JSON format for reuse in other applications.
Given the enormity of this undertaking, public stakeholders needed an innovative
model for scaling the evolution of the government's open datasets.
{% endcapture %}

{% capture solution %}
To address this challenge, Kin Lane established
[Adopta.Agency](http://adopta.agency/),
a civic movement based upon a civic-crowdsourcing model for
evolving the government's open data. Crowdsourcing is facilitated
via an [open blueprint process](http://adopta-agency.github.io/adopta-blueprint/)
that runs on GitHub and provides step-by-step guidance to anyone who
wants to "adopt" and improve an open government dataset.


As part of this work, Kin obtained grant funding from the Knight Foundation to create a prototype that focused on identifying, improving, and making datasets more accessible
and shareable. The prototype was applied to five separate open
government datasets that resulted in five blueprint patterns, all of
which are available on GitHub for reuse in other open government
dataset adoptions.
{% endcapture %}

{% capture results %}
- Obtained grant funding from the Knight Foundation
- Developed the Adopta.Agency blueprint process
- Applied the blueprint to five federal datasets, including U.S.
  Federal Budget, Veterans Affairs Open Data Portal, Department
  of Education Tech Data, My Brother's Keeper, and ClinicalTrials.gov
- Developed five reusable blueprint patterns from those adoptions
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
