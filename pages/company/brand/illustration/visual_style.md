---
layout: toolkit
title: Visual style
description: We want our audience to immediately recognize a Skylight illustration. To do that, we follow a few simple guidelines to ensure consistency, from our color palette to our use of lines and fill. Use this guidance to create illustrations that are uniquely Skylight.
tags:
permalink: /company/brand/illustration/visual-style/
sidenav: brand_illustration
content_type: Toolkit
toolkit_name: brand
class: brand
redirect_from:
  - /brand/illustration/visual-style/
---

{%- assign visual_style = site.data.brand.illustration.visual_style -%}

<div class="brand__content-section grid">
  <header class="grid__heading" markdown="1">
## Palette
  </header>
  <figure class="grid__image section__img p-4 p-md-5">
    <img class="w-100" src="/img/brand/illustration/palette.svg" alt="Illustrations in the brand color palette">
  </figure>
  <div class="grid__content" markdown="1">
{{ visual_style.palette.intro }}
</div>
</div>

<div class="brand__content-section grid">
  <header class="grid__heading" markdown="1">
## Primary colors
  </header>
  <div class="grid__image section__container section__img--palette">
    <div class="swatch__container brand-swatch row">
    {% assign color = site.data.color %}
    {% for item in color.primary_illustration %}
      <div class="swatch-group col-6 col-md-4">
        <div class="swatch bg-{{ item.token }}"></div>
        <p>{{ item.token }}</p>
        <p class='hex-val'>#{{ item.value }}</p>
        {% include copy_hex_button.html %}
      </div>
    {% endfor %}
    </div>
  </div>
  <div class="grid__content" markdown="1">
{{ visual_style.primary_colors.rule }}
</div>
</div>

<div class="brand__content-section grid">
  <header class="grid__heading" markdown="1">
## Skin and hair
  </header>
  <div class="grid__image section__container section__img--palette section__img--palette-alt">
    {% assign color = site.data.color %}
    <div class="row">
      {% for item in color.skin %}
        <div class="swatch__container col-4 col-lg-2 px-1">
          <div class="swatch--long" style="background-color:#{{ item.value }}">
          </div>
          <p class="brand__hex ml-0 d-flex">
            <span class="hex-val mr-2">#{{ item.value }}</span>{% include copy_hex_button.html %}
          </p>
        </div>
      {% endfor %}
    </div>
  </div>
  <div class="grid__content" markdown="1">
{{ visual_style.skin_and_hair.rule }}
</div>
</div>

<div class="brand__content-section grid">
  <header class="grid__heading" markdown="1">
## General guidance
  </header>
  <div class="grid__image section__container py-5 px-3 p-md-5">
    <div class="row">
      <div class="col-12 text-center">
        <img class="" src="/img/brand/illustration/general-guidance.svg" alt="Two images: A caretaker with children sitting around a table and playing with blocks with a computer in the background. Gear technician helping a female pilot put on her helmet.">
      </div>
    </div>
  </div>
  <div class="grid__content" markdown="1">
{{ visual_style.general_guidance.intro }}
{% for rule in visual_style.general_guidance.rules %}
1. {{ rule }}
{%- endfor %}
{: .list--circle }
</div>
</div>

<div class="brand__content-section grid">
  <header class="grid__heading" markdown="1">
## Graphic elements
  </header>
  <div class="grid__image section__container py-5 px-3 p-md-5">
    <figure class="text-center mb-0">
      <img class="" src="/img/brand/illustration/graphic-elements.svg" alt="Geometric shapes and a website hero banner">
    </figure>
  </div>
  <div class="grid__content" markdown="1">
{{ visual_style.graphic_elements.intro }}
{% for rule in visual_style.graphic_elements.rules %}
1. {{ rule }}
{%- endfor %}
{: .list--circle .mb-0 }
</div>
</div>

{% include js/copy-hex.js %}
