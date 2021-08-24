---
layout: toolkit
title: Timeouts | Skylight Accessibility Guide
description: How we deal with timeouts.
tags: [accessibility, web accessibility, section 508, guide]
permalink: /work/toolkits/accessibility-guide/timeouts/
sidenav: accessibility_guide
scripts:
  - js/accessibility/timeouts.js
content_type: Toolkit
toolkit_name: accessibility-guide
---

# Timeouts

If timeouts are used, you must give the user at least 20 seconds to easily request more time.

## Testing

1. Identify any timeouts on the page.
  * Contact the developer to find these.
2. Trigger the time out.
  * **If you're not able to request more time or the request lasts less than 20 seconds, it's a failure.**

## Examples

### Passes
{:.passes}

<div class="example example--code">

  <div class="row">
    <div class="col-sm-12" style='padding-bottom: 1rem;'>
      Fill out this form to see an example of a time out.
    </div>
  </div>

  <form id="pForm">
    <div class="form-group">
      <label for="t1">Field 1</label>
      <input class="form-control" type="text" id="t1">
    </div>
    <div class="form-group">
      <label for="t2">Field 2</label>
      <input class="form-control" type="text" id="t2">
    </div>
    <div class="form-group">
      <label for="t3">Field 3</label>
      <input class="form-control" type="text" id="t3">
    </div>
    <div class="form-group">
      <label for="t4">Field 4</label>
      <input class="form-control" type="text" id="t4">
    </div>
    <div class="form-group">
      <label for="t5">Field 5</label>
      <input class="form-control" type="text" id="t5">
    </div>
  </form>
</div>

This passes because a timeout does occur, but you're given more than 20 seconds to request more time.
