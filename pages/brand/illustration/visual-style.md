---
layout: toolkit
title: Visual style
description: We want our audience to immediately recognize a Skylight illustration. To do that, we follow a few simple guidelines to ensure consistency, from our color palette to our use of lines and fill. Use this guidance to create illustrations that are uniquely Skylight.
tags:
permalink: /brand/illustration/visual-style/
sidenav: brand_illustration
content_type: Toolkit
toolkit_name: brand
class: brand
---

<div class="row brand__content-section">
<div class="col-md-8">
  <figure class="section__img p-5">
    <img class="" src="/img/brand/identity/colors/intro.svg" alt="">
  </figure>
</div>
<div class="col-md-4" markdown="1">
## Palette

To create unity and cohesion within the brand, we use color in a specific way.

The limited color palette, combined with the offset outlines, creates a sophisticated, lighthearted, and positive tone.
</div>
</div>

<div class="row brand__content-section">
  <div class="col-md-8">
    <div class="section__container p-5">
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
  </div>
<div class="col-md-4" markdown="1">
## Primary colors

Choose one bright primary color per illustration. Outlines should be black. Use light  gray minimally as needed.
</div>
</div>

<div class="row brand__content-section">
<div class="col-md-8">
  <div class="section__container p-5">
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
</div>
<div class="col-md-4" markdown="1">
## Skin and hair

Use skin and hair colors as needed to reflect the diversity in the world around us. These colors serve as a base to get started — they can get adjusted slightly to ensure contrast with the other colors in the illustration.
</div>
</div>

<div class="row brand__content-section">
<div class="col-md-8">
  <div class="section__img p-5 flex-column">
    <div class="row">
      <div class="col-12 text-center">
        <img class="" src="/img/brand/illustration/general-guidance.svg" alt="A caretaker with children sitting around a table and playing with blocks with a computer in the background. Gear technician helping a female pilot put on her helmet.">
      </div>
    </div>
  </div>
</div>
<div class="col-md-4" markdown="1">
## General guidance

To maintain consistency our illustrations use color, lines, and fills in a similar way.

1. Use hair and skin colors, as needed, to represet the diverse world.
1. Creating texture with patterns adds personality to the images.
1. Accent minimally with light gray.
1. Illustrations are crafted using offset outlines with selected fills.
1. Organizational clothing (such as military uniforms) is an exception to the limited palette it should reflect real life.
{: .list--circle }
</div>
</div>

{% include js/copy-hex.js %}