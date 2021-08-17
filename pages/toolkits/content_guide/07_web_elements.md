---
layout: toolkit
title: Web elements | Skylight Content Guide
description: A guide on how to write clear, accessible, and user-friendly content at Skylight.
tags: [content, style elements, guide]
permalink: /work/toolkits/content-guide/web-elements/
sidenav: content_guide
content_type: Toolkit
toolkit_name: content-guide
---

# Web elements

This section lays out our style in regards to Skylight’s website. While we wrote these guidelines with the Skylight website in mind, you’re welcome to use them for client websites if you don’t have existing guidelines.


## Guidelines

### Alt text

Alt text is a way to label images, and it's especially important for people who can’t see the images on our website. Alt text should describe the image in a brief sentence or two. It should be used on all non-decorative images.

For more on how and why we use alt text, read [writing for accessibility](/work/toolkits/content-guide/writing-for-accessibility/).


### Buttons

Buttons should always contain actions. The language should be clear and concise. Use sentence case for buttons. It’s OK to use an ampersand in button copy.

Standard website buttons include:

* Log in
* Sign up
* Subscribe
* Contact us


### Callouts

To highlight certain features of the text, you’ll want to consider adding a callout. Below are the different types of callouts we use at Skylight:


#### Example

Provides an example of something related to the text. Features a light gray border.

This is an “example” callout.
{: .example }


#### Pull quote

Emphasizes a particular quote separate from the main text. Features a blue background.

{% include callout.html
  type = "pullquote"
  content = "We had been training on agile for some time, and before, we understood all the ingredients. But this workshop brought all the ingredients together and showed us how to bake a cake."
  cite_name = "Tamara Srzentic"
  cite_title = "Deputy Director, Office of Innovation at CHHS"
%}


#### Block Quote

Accentuates a longer quote (four lines or more). Block quotes are indented from the main text, but remain integrated within it.

> “One problem with technical debt is that the impact can be slow-growing and somewhat hidden. To the question ‘fix the technical debt, or build new features’ we know how it’s usually answered. As it gets worse, customers complain about slow delivery, increasing the pressure to take more shortcuts, which increases the technical debt, which slows the delivery process, which increases customer dissatisfaction, in a rapidly spiraling vicious cycle.”


#### Note

Provides the reader with information on further resources to check out (e.g., reading list, resources list). Features a light blue box, with an “i” icon.

This is a “note” callout.
{: .callout--note }


#### Tip

Offers the reader an actionable piece of advice (e.g., “do this”). Tips are more integrated with the substance of the text. Features a yellow box with a “lightbulb” icon.

This is a “tip” callout.
{: .callout--tip }


#### News / Case study

Highlights additional content that’s separate from the substance of the main text (e.g., links to news articles, case studies). Features a light gray box with a blue border.

<aside class="news-coverage callout">
  <h2>News callout</h2>
  <ul>
    <li>
      <a href="#">46 States and Territories to Receive Preschool Development Grants</a>
    </li>
    <li>
      <a href="#">Preschool Development Birth Through Five Renewal Grant Summary</a>
    </li>
  </ul>
</aside>


#### Code block

Highlights a section of code. Features roboto mono text, light gray box, and light grey border.

```html
<title>Page Titles - Skylight Accessibility</title>
```

### Checkboxes

Use sentence case for checkboxes.


### Drop-down menus

Use sentence case for menu names and menu items.


### Forms

Form titles should clearly and quickly explain the purpose of the form.

Use sentence case for form titles and form fields.

Keep forms as short as possible.

Only request information that we need and intend to use. Don’t ask for information that could be considered private or personal, including gender. If you need to ask for gender, provide a field the user can fill in on their own, not a drop-down menu.


### Headings and subheadings

Headings and subheadings organize content for readers. They should include the most relevant keywords and cover/highlight the main point(s) of the page.

Headings and subheadings are written in sentence case. Avoid using end punctuation except for question marks or when a heading is two or more sentences.

Organize headings and subheadings hierarchically, with headings first, followed by subheadings in order. (An H2 will nestle under H1, an H3 under H2, and on down.) Avoid skipping heading levels (for example, don’t start with an H3 — use CSS if you want a small H2).

* Headings (H1) give people a taste of what they’re about to read. Use them for page and blog titles.
* Subheadings (H2, H3, etc.) break articles into smaller, more specific sections. They give readers avenues into your content and make it more scannable.


### Line breaks

When inserting a line break, you’ll want to maintain a balance between appropriate line length and effectively communicating your idea. Generally, you should avoid breaking apart a linguistic "whole" or "unit," (e.g., splitting apart an adjective and the noun that it refers to), which can interfere with intended meaning.

For example, you should prioritize line length in the sentence: “I adopted a dog, a cat, three mice, and a goldfish.”

{% capture linebreak-example-1 %}
#### Yes
I adopted a dog, a cat,<br>
three mice, and a goldfish.

#### No
I adopted a dog,<br>
a cat, three mice, and a goldfish
{% endcapture %}

<div class="example">
{{ linebreak-example-1 | markdownify }}
</div>

However, you should prioritize meaning in the sentence: “I can speak ten modern Romance languages and read Latin pretty well.”

{% capture linebreak-example-2 %}
#### Yes
I can speak ten modern Romance languages<br>
and read Latin pretty well.

#### No
I can speak ten modern Romance<br>
languages and read Latin pretty well.
{% endcapture %}

<div class="example">
{{ linebreak-example-2 | markdownify }}
</div>

### Line length

Figuring out the right line length comes down to balancing aesthetics and readability. Somewhere between 45 and 90 characters per line is broadly considered to be a readable line length, with 66 characters being a comfortable target for long texts.

In general, longer line lengths are better suited for cases when the information will likely be scanned, while shorter line lengths are more appropropriate when the information is meant to be read thoroughly and contains a call to action.


### Links

Provide a link whenever you’re referring to something on an external website. Use links to point users to relevant content and trusted external resources.

Don’t include preceding articles (a, an, the, our) when you link text. For example:

- Yes: Read the [Content Guide](#0) for details.
- No: Read [the Content Guide](#0) for details.

If a link comes at the end of a sentence or before a comma, don’t link the punctuation mark. Leave off quotes and italics from titles in linked text in body copy.

Don’t say things like “Click here!” or “Click for more information” or “Read this.” Write the sentence as you normally would, and link relevant keywords. Users should clearly understand where they’re going just by looking at the link. Avoid linking the same keyword to different places (for example, two links that say “form” that go to different places).

Links should look different than regular copy, strong text, or emphasis text. They should have a hover state that communicates they’re interactive, and should have a distinct active and visited state. When setting the hover state of links, be sure to include focus state as well, to help readers using assistive technologies and touch devices.


### Lists

Use lists to present steps, groups, or sets of information. Give context for the list with a brief introduction. Number lists when the order is important, like when you’re describing steps of a process. Don’t use numbers when the list’s order doesn’t matter.

If one of the list items is a complete sentence, use proper punctuation and capitalization on all of the items. If list items are not complete sentences, don’t use punctuation, but do capitalize the first word of each item.


### Navigation

Use sentence case for main navigation and subnavigation.

Navigation links should be clear and concise.


### Quotations

<p>Use curly quotation marks (“”) and apostrophes (‘’), as opposed to straight quotation marks ("") and apostrophes (').</p>


### Radio buttons

Use sentence case for headings and button fields.


### Related articles

Sometimes a long piece of copy lends itself to a list of related links at the end. Don’t go overboard — four is usually plenty.

Related articles should appear in a logical order, following the step down/step up rule: The first article should be a step down in complexity from the current article. The second one should be a step up in complexity to a more advanced article.

If you can, avoid repeating links from the body text in related articles.


### Titles

Titles organize pages and guide readers. A title appears at the beginning of a page and briefly describes the content that follows. Titles also tell search engines what a page is about, and show up in search results. Titles should be unique for each page of the site.

While titles for our internal documents should be written in title case, titles for our website pages are written in sentence case for readability.

Don’t use end punctuation in a title unless the title is a question.


## SEO

We write for humans, not machines. We don't use gross SEO techniques like keyword stuffing to bump search results. But we also want to make it easy for people and search engines to find and share our content. Here are some not-icky ways to do this:

* Organize your page around one topic. Use clear, descriptive terms in titles and headings that relate to the topic at hand.
* Use descriptive headings to structure your page and highlight important information.
* Give every image descriptive alt text.
* Make sure we have metadata for all the pages we’re creating.
