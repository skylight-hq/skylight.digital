---
layout: toolkit
title: Language | Skylight Accessibility Guide
description: How we tell assistive technology what language a page is in.
tags: [accessibility, web accessibility, section 508, guide]
permalink: /work/toolkits/accessibility-guide/language/
sidenav: accessibility_guide
content_type: Toolkit
toolkit_name: accessibility-guide
---

# Language

Setting the language of your site allows assistive technology to interact with your content correctly. Assistive technology will read foreign languages, but it needs to know the main language of the page and when the content's language differs from the page's default.

## Testing

1. Open the inspector panel.
2. Locate the main ```html``` tag.
  * **If the ```lang``` attribute isn't set to the correct language, this is a failure.**
3. Identify any content that differs from the default language, make sure the content has its own ```lang``` attribute set with that language.
  * **Any alternate language content not set constitutes a failure.**

## Examples

{:.fails}
### Fails

<div class="example">
Sus ojos son verdes.
</div>

This text is Spanish and lacks a ```lang``` attribute.

{:.passes}
### Passes

<div class="example">
<p lang="es">Sus ojos son verdes.</p>
</div>

This text passes because the ```lang="es"``` attribute identifies its content as Spanish.
