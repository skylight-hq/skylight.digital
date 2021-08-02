---
layout: toolkit
title: CSS dependence | Skylight Accessibility Guide
description: How we deal with CSS.
tags: [accessibility, web accessibility, section 508, guide]
permalink: /work/toolkits/accessibility-guide/css/
sidenav: accessibility_guide
content_type: Toolkit
toolkit_name: accessibility-guide
---

# CSS dependence

CSS dependence refers to sites that rely on CSS to be functional or understandable. This is a concern for accessibility because most assistive technology ignores CSS.

For example, images displayed through CSS are completely ignored by assistive technology. Images loaded by CSS don't have `alt` attributes and would require the image's content to be displayed in some other manner on the page. It's recommended that all CSS images be decorative and content images be on the page with `<img>` tags.

Another common CSS dependence issue is content order. Content can be reordered with CSS. This can be an issue because assistive technology will read the content in a different order. Content should be ordered without CSS.

## Testing

1. Disable CSS.
2. Check for missing information (images, text, etc.).
3. Check for code or other items the developer doesn't want you to see.
  * Confusing elements shouldn't be present such as CSS, JavaScript, or other code.
4. Check for overlapping text.
5. Check that the content order makes sense with and without CSS.
