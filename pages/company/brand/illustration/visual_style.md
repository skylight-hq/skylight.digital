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

<div class="brand__content-section grid">
  <header class="grid__heading" markdown="1">
## Palette
  </header>
  <figure class="grid__image section__img p-4 p-md-5">
    <img class="w-100" src="/img/brand/illustration/palette.svg" alt="Illustrations in the brand color palette">
  </figure>
  <div class="grid__content" markdown="1">
To create unity and cohesion within the brand, we use color in a specific way.

The limited color palette, combined with the offset outlines, creates a sophisticated, lighthearted, and positive tone.
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
Choose one bright primary color per illustration. Outlines should be black. Use light  gray minimally as needed.
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
Use skin and hair colors as needed to reflect the diversity in the world around us. These colors serve as a base to get started — they can get adjusted slightly to ensure contrast with the other colors in the illustration.
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
To maintain consistency our illustrations use color, lines, and fills in a similar way:

1. Use hair and skin colors, as needed, to represent the diverse world
1. Create texture with patterns to add personality to the images
1. Accent minimally with light gray
1. Craft illustrations using offset outlines with selected fills
1. Reflect real life with organizational clothing (such as military uniforms), an exception to the limited palette
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
Geometric shapes (circle, triangle, square) are recurring graphic elements used in both layout design and illustration. Consider the following rules when using these elements:

1. Always outline
2. Rotate and scale as needed
3. Direct focus to important copy (but don’t overpower it)
4. Anchor to illustration vignette when possible
5. Add texture to negative space
{: .list--circle .mb-0 }
</div>
</div>

{% include js/copy-hex.js %}
