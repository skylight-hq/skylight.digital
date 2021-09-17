---
layout: toolkit
title: Colors
description: The world is a diverse and wonderful place. We want to reflect that in how we work, whom we work with, and the colors we use — that’s why we’ve developed a bright and beautiful palette.
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
## Brand colors

Each individual color has its own meanings:

- **Blue:** sky, wisdom, dependable, committed
- **Green:** nature, balance, growth, compassion
- **Yellow:** sun/light, optimism, creativity, clarity
- **Red:** energy, passion, authority, confidence

These colors and their meanings help define the way that our audience perceives Skylight’s brand. It also helps us create assets that reflect certain emotions that we want to evoke.
</div>
</div>

<div class="row brand__content-section">
<div class="col-md-8">
  <div class="section__container p-5">
    <div class="swatch__container brand-swatch row">
      {% assign color = site.data.color %}
        {% for item in color.primary %}
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
## Primary palette

The Skylight brand mainly uses blue, gray, and light yellow. The blue is the accent color for the gray text. The light ochre is a tertiary color used for backgrounds.
</div>
</div>

<div class="row brand__content-section">
<div class="col-md-8">
  <div class="section__container p-5">
    <div class="swatch__container brand-swatch row">
      {% assign color = site.data.color %}
        {% for item in color.secondary %}
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
              <p class="brand__hex">
                <span class='hex-val'>#{{ item.value }}</span>
                {% include copy_hex_button.html %}
              </p>
            </div>
          {% endfor %}
        </div>
      {% endfor %}
    </div>
  </div>
</div>
<div class="col-md-4" markdown="1">
## Tints

To provide a practical range of values for web/screen applications, we’ve extended the original base palette (indicated by the `-100` suffix).

We also added labels to each swatch so you can check whether there’s sufficient contrast to meet WCAG AA standards.
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
        btn.tooltip('hide');
      }, 1500);
    })
  });
</script>
