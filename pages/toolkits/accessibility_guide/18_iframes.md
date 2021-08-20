---
layout: toolkit
title: iFrames | Skylight Accessibility Guide
description: How we deal with iFrames.
tags: [accessibility, web accessibility, section 508, guide]
permalink: /work/toolkits/accessibility-guide/iframes/
sidenav: accessibility_guide
content_type: Toolkit
toolkit_name: accessibility-guide
---

# iFrames

When using `iFrame` elements, it's important that all content contained in them is accessible.

## Testing

1. Identify all `iFrame` elements on a page.
2. Using the keyboard, navigate to each frame to ensure content is accessible.
3. Check the `title` or `name` attribute of each frame for a description of the content.

## Examples

{:.fails}
### Fails

<div class="example example--code">
  <div class="row">
    <div class="col-sm-1"></div>
    <iframe height='400' class='border col-sm-10' src="../iframeform/"></iframe>
    <div class="col-sm-1"></div>
  </div>
</div>

```html
<iframe src="../iframeform/"></iframe>
```

This `iFrame` doesn't have a title or name.

<div class="example example--code">
  <div class="row">
    <div class="col-sm-1"></div>
    <iframe height='400' class='border col-sm-10' src="../iframeform/" name="Provide an address form"></iframe>
    <div class="col-sm-1"></div>
  </div>
</div>

```html
<iframe src="../iframeform/" name="Provide an address form"></iframe>
```

This `name` isn't correct.

{:.passes}
### Passes

<div class="example example--code">
  <div class="row">
    <div class="col-sm-1"></div>
    <iframe height='400' class='border col-sm-10' src="../iframeform/" title="Provide Name Form"></iframe>
    <div class="col-sm-1"></div>
  </div>
</div>

```html
<iframe src="../iframeform/" title="Provide Name Form"></iframe>
```

Correct `title` is provided. This would also pass if this information was in a `name` attribute.
