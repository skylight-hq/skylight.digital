---
layout: toolkit
title: Technical and interface writing | Skylight Content Guide
description: A guide on how to write clear, accessible, and user-friendly content at Skylight.
tags: [content, style elements, guide]
permalink: /work/toolkits/content-guide/technical-and-interface-writing/
sidenav: content_guide
content_type: Toolkit
toolkit_name: content-guide
---

# Technical and interface writing

At Skylight, we often write technical documentation, guides, forms, and interface messages. In most of these cases, it’s safe to say the reader is learning something new or troubleshooting. These guidelines will help you write clear, concise instructions, which will provide your reader with the best possible experience.


## Basics


### Do the hard work to make it simple

Help the reader follow along. Break instructions or processes down into individual steps. Use short, simple sentences with words people use in everyday conversation.

Refer to navigation labels, buttons, and menus as they appear in the app or website. Verify the spelling and capitalization as you write. Be specific.

* Yes: In Google Calendar, click “Create.”
* No: Open a new meeting invitation.


### Direct the reader

Start your sentences with active verbs or clear objectives. Focus on what the reader can do rather than what they can’t. (This is known as using positive language.)

* Yes: Sign in to continue.
* No: You cannot continue without signing in.


## Guidelines

### Titles and headings

Be consistent with how you phrase titles. If your guide or tutorial has several pages, stick to the same naming convention for scannability, such as:

* Nouns: Policies, Teams, Offices
* Verbs: Create an account, File a report, Download our data


### Introduction

Include a short two- or three-sentence summary about the document to help the reader confirm whether they’re in the right place.


### Code

When adding instructions to perform a task on a computer, manually adjust the font to use Roboto Mono. This formatting helps content read as a digital artifact. Examples include emails, written text, text messages, and code blocks. See below:

* Use the `legend` element to offer a label within each form element.
* Copy and paste `mkdir /home/foo/doc/bar && cd $_` into Terminal.

In the first example, `legend` is an HTML element and should be styled as code. “Element” is a technical concept and shouldn’t be marked up as code. “Label” is both a concept and an HTML element but is used here in the former sense and should not be styled as code.

Don't capitalize code elements, even at the start of a sentence, unless the term is capitalized in the code itself.

Use [fenced code blocks](https://help.github.com/articles/creating-and-highlighting-code-blocks/) for multi-line code snippets, and specify the language to enable [syntax highlighting on GitHub](https://help.github.com/articles/creating-and-highlighting-code-blocks/#syntax-highlighting):

In JavaScript, to get the current value of a `select` element with an `id` of `mySelect`, use this:

```js
var el = document.getElementById("mySelect");
var value = el.options[el.selectedIndex].value;
```

<br>
Use [straight quotes](http://smartquotesforsmartpeople.com/) within code blocks rather than curly (or smart) quotes.


#### Code-like elements

The same rules apply to pieces of text that must be used exactly as presented, such as passwords or WiFi network names:

* `someCl3v3rN4me` is the name of our WiFi network.
* Your password is `PleaseChangeMeSoon`.


### Interface elements

Use clear verbs to tell readers how to interact with interface elements:

* Choose from drop-down menus.
* Select or deselect checkboxes and radio buttons.
* Click or tap buttons.
* Follow or open links.


### Tables

Tables are generally suitable only for data: two or more “objects” (rows) that share two or more “values” (columns). In tables, column widths are the same for all rows, which can make them easier to scan visually. Tables are [easily navigable for sightless users](http://webaim.org/techniques/tables/) so long as the content is organized in a logical way.


### Links and additional resources

It’s rare that a document lives on its own. Tell people where to go for help if they have questions.

For documentation and guides, you might say:

* For more information, see the [Skylight Content Guide](#0).

To refer the reader to a Slack channel, follow this format:

* Still have questions? Ask in #general.

If your work relates to several other documents, pick the most important ones or gather the links in a section at the bottom.