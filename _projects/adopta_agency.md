---
layout: default
title_tag: "Adopta.Agency"
title: "Crowdsourcing improvements to government open data"
permalink: /work/experience/adopta-agency/
redirect_from:
  - /work/adopta-agency/
image: /img/projects/adopta_agency/api-launcher.svg
image_description: "A person using a catapult to launch a boulder inscribed with the acronym API."
feature_image:
feature_image_description:
feature_image_shadow:
order: 4500
display: true
tags:
  - "Service delivery"
  - "APIs"
  - "Open government"
excerpt: "A civic crowdsourcing model that enabled developers and organizations to improve government datasets and transform them into usable APIs."
project_members:
  - kin-lane
technologies:
  - "OpenAPI Specification"
  - "Git"
  - "GitHub"
  - "GitHub Pages"
  - "Jekyll"
  - "YAML"
practices:
  - "API design"
  - "API deployment"
news_posts:
  - title: "Federal Agency Dataset Adoption"
    url: https://www.knightfoundation.org/grants/201551217/
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
Before joining Skylight, Kin Lane created Adopta.Agency — a civic crowdsourcing model that enabled developers and organizations to improve government open datasets and transform them into usable APIs. Backed by the Knight Foundation, the project demonstrated that distributed contributors could systematically increase the quality and accessibility of public data at a scale no single agency could achieve alone.
{% endcapture %}

{% capture challenge %}
Following implementation of the White House’s [Open Data Policy](https://obamawhitehouse.archives.gov/sites/default/files/omb/memoranda/2013/m-13-13.pdf), federal agencies released thousands of datasets to the public. The mandate was a landmark step toward transparency. But releasing data and making it usable turned out to be two very different things.

Many datasets were incomplete, inconsistently formatted, or missing the structure needed to integrate into applications. Developers who wanted to build on public data often spent more time cleaning and interpreting it than using it. Much of the government’s open data investment sat underutilized — technically available, but practically inaccessible.

The core problem was one of scale. No single agency had the capacity to clean, structure, and maintain thousands of datasets on an ongoing basis. What was missing wasn’t more policy. It was a model that could harness outside contributors to improve public data systematically, the way open-source communities improve software.
{% endcapture %}

{% capture solution %}
**Kin designed Adopta.Agency around a simple insight: the same open-source collaboration model that works for software could work for data.** Rather than asking agencies to fix everything themselves, he created a framework that let anyone — developers, civic technologists, organizations — contribute structured improvements to public datasets.

The key design challenge was making contribution accessible. Most civic technologists were comfortable with code, but not with the messy work of cleaning and structuring government datasets. Kin built [the blueprint process](https://adopta-agency.github.io/adopta-blueprint/) to bridge that gap. **The blueprint broke contribution into small, value-adding steps — JSON cleanup first, full API last.** Participants didn't need to take on the entire dataset at once; each step added value on its own.

**He chose GitHub as the collaboration platform for a deliberate reason: civic technologists already lived there.** GitHub gave distributed contributors a transparent, version-controlled environment for working on shared datasets — the same workflow developers already used for code. The barrier to entry wasn’t learning a new tool. It was just applying familiar skills to a new domain. Every improvement was visible, reviewable, and reusable.

With grant funding from the Knight Foundation, Kin built a working prototype and applied it to five federal datasets — the U.S. Federal Budget, the Veterans Affairs Open Data Portal, Department of Education Tech Data, My Brother’s Keeper, and ClinicalTrials.gov. **Five different agencies, five different data types — the same blueprint worked across all of them.** Each dataset produced a reusable pattern others could follow.
{% endcapture %}

{% capture results %}
- **Secured grant funding from the Knight Foundation** to develop and prototype the model
- **Applied the approach to five federal datasets,** producing a working proof of concept across diverse agencies and data types
- **Created five reusable blueprint patterns** that enabled others to replicate dataset improvements independently
- **Demonstrated a scalable civic crowdsourcing model** for improving government open data — without requiring additional agency resources
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
