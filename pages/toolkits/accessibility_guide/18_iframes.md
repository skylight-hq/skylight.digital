---
layout: toolkit
title: iFrames | Skylight Accessibility Guide
description: "How we deal with iFrames"
tags: [accessibility, web accessibility, section 508, guide]
permalink: /work/toolkits/accessibility-guide/iframes/
sidenav: accessibility_guide
content_type: Toolkit
toolkit_name: accessibility-guide
---

# iFrames

When using `iframe`s, it's important that all content contained in them is accessible.

## Testing

1. Identify all `iframe`s on a page.
2. Using the keyboard, navigate to each frame to ensure content is accessible.
3. Check the `title` or `name` attribute of each frame for a description of the content.

## Examples

{:.fails}
### Fails

<iframe src="../iframeform/"></iframe>

```html
<iframe src="../iframeform/"></iframe>
```

> This `iframe` doesn't have a title or name.

<iframe src="../iframeform/" name="Provide an address form"></iframe>

```html
<iframe src="../iframeform/" name="Provide an address form"></iframe>
```

> This `name` isn't correct.

{:.passes}
### Passes

<iframe src="../iframeform/" title="Provide Name Form"></iframe>

```html
<iframe src="../iframeform/" title="Provide Name Form"></iframe>
```

> Correct `title` is provided. This would also pass if this information was in a `name` attribute.
