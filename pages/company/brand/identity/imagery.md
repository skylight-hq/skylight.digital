---
layout: toolkit
title: Imagery
description: Capturing Skylight’s work through imagery is essential to telling a compelling story about our impact on public services. We offer guidance around what makes our visual style distinctive and provide tips on what makes an effective visual.
tags:
permalink: /company/brand/identity/imagery/
sidenav: brand_identity
content_type: Toolkit
toolkit_name: brand
class: brand
redirect_from:
  - /brand/identity/imagery/
---

<div class="brand__content-section grid">
  <header class="grid__heading" markdown="1">
## Illustration
  </header>
  <div class="grid__image section__container p-5">
    <figure class="mb-0">
      <img class="w-100" src="/img/services-microconsulting.svg" alt="A few people collaborating on a large project (small people holding big pencils, filling out a larger than life chart)">
    </figure>
    <figure class="mb-0">
      <img class="mt-5" src="/img/projects/va_diffusion_marketplace/diffusion-marketplace.svg" alt="Doctors, administrators, and veteran patients interacting through digital panes.">
    </figure>
  </div>
  <div class="grid__content" markdown="1">
We use illustration as our primary visual style. It makes us feel different and vibrant, and helps us tell better stories through art. Illustrations are a key part of Skylight’s brand.

Creating new artwork? You should check out our [illustration brand guidelines](/brand/illustration/principles/).
  </div>
</div>

<div class="brand__content-section grid">
  <header class="grid__heading" markdown="1">
## Photography
  </header>
  <div class="grid__image section__container p-5">
    <figure class="mb-0">
      <img class="" src="/img/brand/identity/imagery/photography.jpg" alt="Two airmen sitting inside an aircraft">
    </figure>
    <figure class="mb-0">
      <img class="mt-5" src="/img/brand/identity/imagery/photography-2.jpg" alt="A woman pointing to Post-it Notes on a wall while people watch and listen">
    </figure>
  </div>
  <div class="grid__content" markdown="1">
When sharing photos, we want to feature real people with real-life stories to tell. Capture a sense of place by showing activities with teammates, customers, and partners.

Facial expressions, clothing, and hair/makeup should look natural (not over-the-top stock).

Every image should tell a story. There are a few tricks we can use to make sure your message comes across to viewers:

{%- assign imagery = site.data.brand.imagery -%}
{%- for trick in imagery.photography.story_tricks.rules %}
- {{ trick }}
{%- endfor %}
</div>
</div>

<div class="brand__content-section grid">
  <header class="grid__heading" markdown="1">
## Portraits
  </header>
  <div class="grid__image section__container p-5">
    <div class="row no-gutters mb-0">
      <div class="col-sm-6">
        <img class="" src="/img/people/gabriel-ramirez.jpg" alt="Gabriel Ramirez headshot">
      </div>
      <div class="col-sm-6 mt-5 mt-sm-0">
        <img class="" src="/img/people/maya-benari.jpg" alt="Maya Benari headshot">
      </div>
    </div>
  </div>
  <div class="grid__content" markdown="1">
{{ site.data.brand.imagery.portraits.description | strip }}
  </div>
</div>
