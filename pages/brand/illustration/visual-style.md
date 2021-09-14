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
            <!-- <p>{{ item.token }}</p>
            <p>{{ item.token }}</p> -->
          </div>
          <p class="brand__hex ml-0">
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

{% capture img_desc_1 %}
Use hair and skin colors, as needed, to represent the diverse world.

Accent minimally with light gray.

Creating texture with patterns adds personality to the images.
{% endcapture %}

{% capture img_desc_2 %}
Illustrations are crafted using offset outlines with selected fills.

Organizational clothing (such as military uniforms) is an exception to the limited palette — it should reflect real life.
{% endcapture %}

<div class="row brand__content-section">
<div class="col-md-8">
  <div class="section__img p-5 flex-column">
    <div class="row">
      <div class="col-md-6 order-md-2">
        <img class="mb-2" src="/img/projects/ct_oec_website_redesign/oec-website-redesign.svg" alt="A caretaker with children sitting around a table and playing with blocks with a computer in the background.">
      </div>
      <div class="col-md-6 caption">{{ img_desc_1 | markdownify }}</div>
    </div>
    <div class="row mt-5">
      <div class="col-md-6 order-md-2">
        <img class="mb-2" src="/img/projects/usaf_gearfit/gearfit.svg" alt="Gear technician helping a female pilot put on her helmet.">
      </div>
      <div class="col-md-6 caption">{{ img_desc_2 | markdownify }}</div>
    </div>
  </div>
</div>
<div class="col-md-4" markdown="1">
## General guidance

To maintain consistency our illustrations use color, lines, and fills in a similar way.
</div>
</div>

<script type="text/javascript">
  $( document ).ready(function() {
    $('button.btn-copy-hex').click(function(){

      let btn = $(this)
      let text = btn.siblings('.hex-val').text().toUpperCase();
      let original_text = btn.attr('data-original-title')

      btn.attr('data-original-title', 'Copied!')
          .tooltip('show');
      navigator.clipboard.writeText(text);

      setTimeout(function(){
        btn.attr('data-original-title', original_text)
      }, 1000);
    })
  });
</script>
