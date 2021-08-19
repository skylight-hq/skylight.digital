---
layout: toolkit
title: Images | Skylight Accessibility Guide
description: How we work with images.
tags: [accessibility, web accessibility, section 508, guide]
permalink: /work/toolkits/accessibility-guide/images/
sidenav: accessibility_guide
content_type: Toolkit
toolkit_name: accessibility-guide
---

# Images

When using images on a page, you must provide an alternate method for that content. This can be provided in multiple ways. You can provide this information with a caption, `alt` attribute (`alt` tag), `title` attribute, or `aria-label` attribute. If an image has text, all the text in the image must be provided in the alternate content. No matter which method is used, an `alt` or title attribute must be provided, even if the attribute is blank.

## Testing

1. Using the web developer tool, select images > Display Alt Attributes & Outline All Images.
2. Inspect each `alt` attribute for the following:
  * A unique description of the image is provided
  * Repeated images used for controls, status indicators, or other programmatic elements have consistent `alt` text
  * Text included in the image should be included in the `alt` when they're important to understanding the image
  * Note: [DHS Trusted Tester](https://www.dhs.gov/trusted-tester) requires all text in an image be included in the `alt` attribute
  * "Image of" or "Photo of" isn't used
  * If the `alt` attribute is empty, ensure the image is purely decorative
  * If the image isn't decorative, make sure the image is described on the page
3. Check outlined images without `alt` attribute by doing the following:
  * Right click the image
  * Select 'Inspect Element'
  * Check for a title attribute for the information normally found on the `alt` attribute

## Examples

### Correct
{: .passes }
<div class="example">
<img class="img-fluid" src="/img/toolkits/accessibility/agile-acquisition-framework.png" alt="Waterfall sign on left cliff. Agile sign on right cliff. Man jumping from left cliff to right cliff.">
</div>

```html
<img class="img-fluid" src="/img/toolkits/accessibility/agile-acquisition-framework.png" alt="Waterfall sign on left cliff. Agile sign on right cliff. Man jumping from left cliff to right cliff.">
```

Preferred method for providing alternate content. Clear `alt` attribute with all text included.

<div class="example">
<img class="img-fluid" src="/img/toolkits/accessibility/agile-acquisition-framework.png" title="Waterfall sign on left cliff. Agile sign on right cliff. Man jumping from left cliff to right cliff.">
</div>

```html
<img class="img-fluid" src="/img/toolkits/accessibility/agile-acquisition-framework.png" title="Waterfall sign on left cliff. Agile sign on right cliff. Man jumping from left cliff to right cliff.">
```

Acceptable, but less compatible with certain assistive technologies. Clear title attribute with all text included.

<div class="example">
<img class="img-fluid" src="/img/toolkits/accessibility/agile-acquisition-framework.png" alt="">
<span>Waterfall sign on left cliff. Agile sign on right cliff. Man jumping from left cliff to right cliff.</span>
</div>

```html
<img class="img-fluid" src="/img/toolkits/accessibility/agile-acquisition-framework.png" alt="">
<span>Waterfall sign on left cliff. Agile sign on right cliff. Man jumping from left cliff to right cliff.</span>
```

Information contained in the image is provided on the page. In most instances, an `alt` attribute would be preferred. Images marked with an empty `alt` (`alt=""`) are considered "Decorative" and not read by AT.

### Incorrect
{: .fails }

<div class="example">
<img class="img-fluid" src="{{'/img/toolkits/accessibility/agile-acquisition-framework.png' | prepend: site.baseurl}}">
</div>

```html
<img class="img-fluid" src="/img/toolkits/accessibility/agile-acquisition-framework.png">
```

Image is missing an `alt` attribute and alternative content.

<div class="example">
<img class="img-fluid" src="/img/toolkits/accessibility/agile-acquisition-framework.png" alt="Man jumping">
</div>

```html
<img class="img-fluid" src="/img/toolkits/accessibility/agile-acquisition-framework.png" alt="Man jumping">
```

`alt` attribute is missing text from image.

<div class="example">
<img class="img-fluid" src="/img/toolkits/accessibility/agile-acquisition-framework.png" alt="Image of waterfall sign on left CLIFF. Agile sign on right cliff. Man jumping from left cliff to right cliff.">
</div>

```html
<img class="img-fluid" src="/img/toolkits/accessibility/agile-acquisition-framework.png" alt="Image of Waterfall sign on left CLIFF. Agile sign on right cliff. Man jumping from left cliff to right cliff.">
```

Avoid using "Image of" or "Picture of" as the screen reader will notify the user that it's an image. Also avoid using all caps as some screen readers will read each letter, for example: C-L-I-F-F.
