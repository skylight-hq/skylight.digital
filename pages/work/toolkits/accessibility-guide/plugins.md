---
layout: toolkit
title: Plugins | Skylight Accessibility Guide
description: How we deal with plugins.
permalink: /work/toolkits/accessibility-guide/plugins/
sidenav: accessibility_guide
content_type: Toolkit
toolkit_name: accessibility-guide
---

# Plugins

Plugins provide extended functionality not native to the browser. Examples include PDF, Flash, Shockwave, Silverlight, and Java.

Anytime a plugin is used on a page, they must be tested for accessibility.

<div class="callout--tip" markdown='1'>
**Note**<br>
Flash always fails for accessibility but is often given an exception.
</div>

## Testing

1. Identify any plugins on the page.
2. Identify a link to download each plugin.
 * Plugin download links can be provided on a single page. Ensure this page is referenced on pages that require plugins.
3. Check each plugin for accessibility.
  * Most plugins have a VPAT available on the manufacturer's website which lists its accessibility findings.
