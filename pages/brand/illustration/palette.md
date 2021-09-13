---
layout: toolkit
title: Palette | Skylight Brand Guidelines
description:
tags:
permalink: /brand/illustration/palette/
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
# Palette

To create unity and cohesion within the brand, we use color in a specific way.

The limited color palette, combined with the offset outlines, creates a sophisticated, lighthearted, and positive tone.
</div>
</div>

<div class="row brand__content-section">
<div class="col-md-8">
  <div class="section__container p-5">
    {% assign color = site.data.color %}
    <div class="row">
      {% for item in color.primary %}
        <div class="swatch__container col-4 px-1">
          <div class="swatch--content" style="background-color:#{{ item.value }}">
            <p>{{ item.token }}</p>
            <p>{{ item.token }}</p>
          </div>
          <p class="hex-val brand__hex ml-2">
            <span class="hex-val">#{{ item.value }}</span>
            {% include copy_hex_button.html %}
          </p>
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

<script type="text/javascript">
  $( document ).ready(function() {
    $('button.btn-copy-hex').click(function(){
      var text = $(this).siblings('.hex-val').text().toUpperCase();
      navigator.clipboard.writeText(text);
    })
  });
</script>
