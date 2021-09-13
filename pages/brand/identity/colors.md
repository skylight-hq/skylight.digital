---
layout: toolkit
title: Colors | Skylight Brand Guidelines
description:
tags:
permalink: /brand/identity/colors/
sidenav: brand_identity
content_type: Toolkit
toolkit_name: brand
class: brand
families:
  - blue
  - green
  - red
  - ochre
  - gray
---

<div class="row brand__content-section">
<div class="col-md-8">
  <figure class="section__img p-5">
    <img class="" src="/img/brand/identity/colors/intro.svg" alt="">
  </figure>
</div>
<div class="col-md-4" markdown="1">
# Colors

## Intro

The world is a diverse and wonderful place. We want to reflect that in how we work, whom we work with, and the colors we use — that's why we've developed a bright and beautiful palette.
{: .mb-0 }
</div>
</div>

<div class="row brand__content-section">
<div class="col-md-8">
  <div class="section__container p-5">
    <div class="swatch__container brand-swatch">
      <div class="row no-gutters">
        <div class="col-4 swatch-group">
          <div class="swatch bg-blue"></div>
          <p>blue-200</p>
          <p class='hex-val'>#1d5392</p>
          <button class="btn btn-link btn-copy-hex" title="Copy hex code" data-toggle="tooltip">
            <span class="sr-only">Copy hex code</span>
            <i class="fal fa-copy"></i>
          </button>
        </div>
        <div class="col-4 swatch-group">
          <div class="swatch bg-blue-light"></div>
          <p>blue-100</p>
          <p>#1d5392</p>
        </div>
        <div class="col-4 swatch-group">
          <div class="swatch bg-ochre-40"></div>
          <p>ochre-40</p>
          <p>#FBE8BE</p>
        </div>
      </div>
      <div class="row no-gutters mt-4">
        <div class="col-4 swatch-group">
          <div class="swatch bg-ink"></div>
          <p>gray-300</p>
          <p>#1c1d20</p>
        </div>
        <div class="col-4 swatch-group">
          <div class="swatch bg-gray-darker"></div>
          <p>gray-200</p>
          <p>#37383b</p>
        </div>
        <div class="col-4 swatch-group">
          <div class="swatch border"></div>
          <p>white</p>
          <p>#ffffff</p>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="col-md-4" markdown="1">
## Primary palette

The Skylight brand mainly uses blue, gray, and light yellow. The blue is the accent color for the gray text. The light ochre is a tertiary color used for backgrounds.
</div>
</div>

<div class="row brand__content-section">
<div class="col-md-8">
  <div class="section__container p-5">
    <div class="swatch__container brand-swatch">
      <div class="row no-gutters">
        <div class="col-4 swatch-group">
          <div class="swatch bg-red-100"></div>
          <p>red-100</p>
          <p>#df635c</p>
        </div>
        <div class="col-4 swatch-group">
          <div class="swatch bg-yellow"></div>
          <p>ochre-100</p>
          <p>#f4c55c</p>
        </div>
        <div class="col-4 swatch-group">
          <div class="swatch bg-green-100"></div>
          <p>green-100</p>
          <p>#80b690</p>
        </div>
      </div>
      <div class="row no-gutters mt-4">
        <div class="col-4 swatch-group">
          <div class="swatch bg-gray-80"></div>
          <p>gray-80</p>
          <p>#76767b</p>
        </div>
        <div class="col-4 swatch-group">
          <div class="swatch bg-gray-40"></div>
          <p>gray-40</p>
          <p>#bbbbbd</p>
        </div>
        <div class="col-4 swatch-group">
          <div class="swatch bg-gray-20"></div>
          <p>gray-20</p>
          <p>#ddddde</p>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="col-md-4" markdown="1">
## Secondary palette

Skylight’s secondary palette contains the rest of the color logos. We use these colors, along with blue, in illustrations.

We use the gray colors for text, charts, etc.
</div>
</div>

<div class="row brand__content-section">
<div class="col-md-8">
  <div class="section__container p-5">
    {% assign color = site.data.color %}
    <div class="row">
      {% for family in page.families %}
        <div class="swatch__col col-md-6">
          <h3>{{ family | capitalize }}</h3>
          {% for item in color[family] %}
            <div class="swatch__container swatch__container--vertical">
              <div class="swatch--content swatch--vertical bg-{{ item.token }}">
                <p>{{ item.token }}</p>
                <p>{{ item.token }}</p>
              </div>
              <p class="brand__hex">#{{ item.value }}</p>
            </div>
          {% endfor %}
        </div>
      {% endfor %}
    </div>
  </div>
</div>
<div class="col-md-4" markdown="1">
## Tints

To provide a practical range of values for web/screen applications, we’ve extended the original base palette (indicated by the -100 suffix).

We also added labels to each swatch so you can check whether there’s sufficient contrast to meet WCAG AA standards.
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
