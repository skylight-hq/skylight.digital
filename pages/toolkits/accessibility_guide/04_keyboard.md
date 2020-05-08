---
title: Keyboard access
description: "How we work with keyboards only"
permalink: /work/toolkits/accessibility-guide/keyboard/
layout: toolkit-accessibility
sidenav: accessibility_guide
scripts:
  - js/accessibility/keyboard-access.js
---

Keyboard access to a website is key to the usability of your site. All interactions and information that can be accessed with a mouse **must** be accessible with just a keyboard. This doesn't mean everyone who can't use a mouse will use a keyboard, but alternative AT inputs use keyboard-like inputs to navigate the web.

### Testing

1. Identify all interactions on the page.
2. Using the tab, enter, and space bar, navigate the page and ensure each input and interaction can be triggered.
  * Ensure rollover and hover interactions (help text, etc.) can be triggered as well.
  * **If the user cannot interact with something, or get the information another way, this is a failure.**
3. Make sure the tab order of the page is logical and follows the visual order of elements on the page.
  * **If the tab order is confusing, this is a failure.**
4. Check that the focus is always visible when moving through the page with the tab key.
  * **If you lose focus, on a hidden link or other object when simply tabbing through the page, this is a failure.**
5. Make sure you can tab through the page and get back to the address bar.
  * **If you ever need your mouse to get back to an element, this is a failure.**
6. Keyboard users must be able to easily use and dismiss modal dialog boxes, lightboxes, or other pop-ups.
  * Modal dialog boxes need to trap the keyboard. When a modal dialog box is triggered, the keyboard focus needs to immediately move to the first actionable element in the modal.
  * The keyboard use is confined to the modal dialog box until it's dismissed. When a user moves the keyboard focus past the last element in the modal dialog box, it needs to loop to the beginning of the dialog box.
  * The keyboard user needs to be able to access all controls in the dialog box, especially the controls to dismiss the dialog.
  * **If the keyboard user can't do all of these things, this is a failure.**
  * Ideally, the keyboard user should also be able to dismiss the modal dialog box with the Escape key.
7. If an interaction reveals hidden content.
  * Ensure the focus is moved to the revealed content.
  * If this doesn't happen, check for a programatic description of the change.
8. Check for title attributes providing information not on the screen.
  * **Title attributes which can only be exposed by hovering the mouse over the element are a failure of keyboard access.**
9. Check that the focus never goes to elements that won't be available to somebody using a mouse.

### Examples

<a href="#">Link to nowhere 1</a>

<a href="#">Link to nowhere 2</a>

<a href="javascript:var link = document.getElementById('hiddenContent'); link.setAttribute('style', 'display: block'); link.focus();">Reveal Hidden Content</a>

<div id="hiddenContent" style="display:none;" tabindex='-1'>This div was hidden, now it's not!</div>

```html
<a href="#">Link to nowhere 1</a>
<a href="#">Link to nowhere 2</a>
<a href="javascript:var link = document.getElementById('hiddenContent'); link.setAttribute('style', 'display: block'); link.focus();">
  Reveal Hidden Content
</a>
<div id="hiddenContent"
	 style="display:none;"
	 tabindex='-1'>
	This div was hidden, now it's not!
</div>
```

> Avoid using tabindex of >= 1 as this will disrupt the normal tab order of the page. tabindex of -1 is only appropriate when autofocusing an element not normally interactive.

<h4 id="keyboard-trap">Keyboard Trap</h4>

<a class="sr-only moveFocus" href="#">hidden</a>

<a class="keyboardTrap" href="#">Select to disable keyboard trap</a>

<a class="keyboardTrap" href="#">Select to disable keyboard trap</a>

<a class="keyboardTrap" href="#">Select to disable keyboard trap</a>

<a class="keyboardTrap" href="#">Select to disable keyboard trap</a>

<a class="sr-only moveFocus" href="#">hidden</a>

> This is an example of a keyboard trap. Focus moves in a loop making the rest of the page inaccessible. A quick test is to tab through the page quickly and ensure you can get focus back to the address bar.
