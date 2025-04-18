---
layout: toolkit
title: Links and repetitive content | Skylight Accessibility Guide
description: How we deal with links and repetitive content.
permalink: /work/toolkits/accessibility-guide/links/
sidenav: accessibility_guide
content_type: Toolkit
toolkit_name: accessibility-guide
---

# Links

Links are commonly used to quickly navigate a site when someone is using AT. Often, screen reader users won't read through an entire page to find what they are looking for. They simply move from link to link.

Things become problematic when links only make sense with context. Links such as "Click here" or "Read more" don't make sense without that visual context. It's important that we inspect our sites for these types of links. These links can be made accessible using `title` or `ARIA` attributes, but this isn't ideal. The ideal method for making these links accessible is just to write better link text.

The other issue screen reader and keyboard users come across is lengthy nav bars. These are usually made up of a list of links and with compound menus. They can be quite lengthy to tab through. To alleviate these pains, a skip navigation link should be provided. This is the first link on the page and jumps to an anchor with a `tabindex="-1"`.

## Testing

### Unique links

1. Identify all links on the page.
2. Identify links with the same text.
  * If the link destinations are different, check for `title` or `ARIA` attributes that distinguish them.
3. Identify links with generic text ("Click here", "Read more").
  * Check for the `title` or `ARIA` attributes to provide context or additional off-screen text.

### Links that open in a new window

1. Identify links that open in new windows.
2. Check that `target="_blank"`.
3. Verify that some indication is given programmatically.
  *  `<a href="#" target="_blank" aria-label="Opens in new window">`
  *  `<a href="#" target="_blank" title="Opens in new window">`
  *  `<a href="#" target="_blank">Link<span class="sr-only">Opens in new window</span></a>`

### Skip navigation

1. First compare the pages on the site for links that are repeated at the beginning of the tab order.
  * `Skip Navigation` isn't needed if repetitive nav links aren't used.
2. If the `Skip Navigation` link isn't visible, ensure it becomes visible when it has focus.
3. Find the target of the `Skip Navigation` link.
  * Verify the target is a valid `id`.
  * Verify the target is after the repetitive content and before meaningful content.
  * Verify the target has a `tabindex="-1"` or is included in the tab order (such as a link or a button).
   * This ensures the element will receive focus in Chrome and Safari.
4. Select the `Skip Navigation` link.
5. If visual focus is after the repetitive content, the test is complete.
6. If there is no visual focus, tab again to verify focus is after the repetitive content.

## Examples

{:.passes}
### Passes

<div class="example example--code" markdown="1">
  Home <br> <a href="../" title="home">Click here</a>

  Keyboard access <br> <a href="../keyboard/" aria-label="Keyboard access">Click here</a>
</div>

```html
Home <a href="../" title="home">Click here</a>

Keyboard access <a href="../keyboard/" aria-label="Keyboard access">Click here</a>
```

These links aren't unique, but the ```title``` attribute in the first link gives a screen reader user context and the ```aria-label``` provides the context in the second link.

#### Skip navigation

```html
//This is the code used on this guide
<a class="skip-link visuallyhidden focusable" href="#main">Skip to Main Content</a>
...
<h1 id="mainContent" tabindex="-1" class="mainContent">Links and Repetitive Content</h1>

```
```css
.visuallyhidden {
  border: 0;
  clip: rect(0 0 0 0);
  height: 1px;
  margin: -1px;
  overflow: hidden;
  padding: 0;
  position: absolute;
  width: 1px;
}
.visuallyhidden.focusable:active, .visuallyhidden.focusable:focus {
  clip: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  position: static;
  width: auto;
}
a.skip-link:hover, a.skip-link:active, a.skip-link:focus {
  background-color: #006FC9;
  color: #fff;
}

.mainContent:focus, .mainContent:active {
 	outline: none;
}
```

This is how the "skip navigation" was achieved for the accessibility site. Feel free to use for your own site.
