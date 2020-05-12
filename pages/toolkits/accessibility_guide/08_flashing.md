---
layout: toolkit
title: Flashing | Skylight Accessibility Guide
description: "How we deal with flashing"
tags: [accessibility, web accessibility, section 508, guide]
permalink: /work/toolkits/accessibility-guide/flashing/
sidenav: accessibility_guide
content_type: Toolkit
toolkit_name: accessibility-guide
scripts:
  - js/accessibility/flashing.js
---

# Flashing

Flashing is generally a bad idea. It can cause all sorts of issues, from seizures to motion sickness. If you absolutely must have a flashing element, there are a few things to consider.

## Testing

Failure at any step below constitutes a 508 compliance issue.

1. Look for elements that contain flashing.
  * Scrolling or blinking text
  * Scrolling or blinking page elements
  * Videos that contain flickering or flashing
  * GIFs that contain flickering or flashing
2. Check if you can determine the frequency of "flashing."
3. Check that the rate of flashing is less than 3 Hz (3 times a second), or scroll delay is set to >= 400.

## Examples

{:.fails}
### Fails

<div class="row">
  <div class="col-sm-5">
    <p>
      <button class="btn btn-primary" type="button" id="blinkbutton">
        Click to see non-compliant flashing
      </button>
    </p>
  </div>
  <div class="col-sm-3">
    <p class="blink" style="display:none;">Blinking Text</p>
  </div>
</div>

> This blinking text fails because the rate of flashing can't be determined and its greater than 3Hz.
