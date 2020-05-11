---
title: Language
description: "How we tell assistive technology what language a page is in"
permalink: /work/toolkits/accessibility-guide/language/
layout: toolkit-accessibility
sidenav: accessibility_guide
---

Setting the language of your site allows assistive technology to interacts with your content correctly. Assistive technology will read foreign languages, but they need to know when the main language of the page and when the content's language differs from the page's default.

## Testing

1. Open the inspector panel.
2. Locate the main ```html``` tag.
  * **If the ```lang``` attribute isn't set to the correct language, this is a failure.**
3. Identify any content that differs from the default language, make sure the content has its own ```lang``` attribute set with that language.
  * **Any alternate language content not set constitutes a failure.**

## Examples

{:.fails}
### Fails

Sus ojos son verdes.

> This text is Spanish and lacks a ```lang``` attribute.

{:.passes}
### Passes

<p lang="es">Sus ojos son verdes.</p>

> This text passes because the ```lang="es"``` attribute identifies its content as Spanish.
