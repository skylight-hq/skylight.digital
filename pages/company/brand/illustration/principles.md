---
layout: toolkit
title: Principles
description: We’re a purpose-driven company, and much of our content is focused on trying to highlight the value of working with Skylight. Keeping our principles in mind will help you create illustrations that embody our values and best represent our identity.
tags:
permalink: /company/brand/illustration/principles/
sidenav: brand_illustration
content_type: Toolkit
toolkit_name: brand
class: brand
redirect_from:
  - /brand/illustration/principles/
---

<div class="row">
<div class="col-md-9" markdown="1">
## Core principles

The following six principles will help you design effective Skylight illustrations.

<div class="example" markdown="1">
{%- assign illustration = site.data.brand.illustration -%}
{%- for principle in illustration.principles %}
## {{ forloop.index }}. {{ principle.name }}

{{ principle.description }}
{% endfor -%}
</div>
</div>
</div>
