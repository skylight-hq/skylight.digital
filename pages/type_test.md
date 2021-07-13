---
layout: policy
title: Type test
permalink: /type/
---

This is regular text.

> "This is a blockquote."

This is a "tip" callout.
{: .callout--tip }

This is a "note" callout.
{: .callout--note }

This is an "example" callout.
{: .example }

This is a "highlight" callout.
{: .callout--highlight }

<aside class="news-coverage callout">
  <h2>News callout</h2>
  <ul>
    <li>
      <a href="#0" target="_blank">46 States and Territories to Receive Preschool Development Grants</a>
    </li>
    <li>
      <a href="#0" target="_blank">Preschool Development Birth Through Five Renewal Grant Summary</a>
    </li>
  </ul>
</aside>

{% include callout.html
  type = "pullquote"
  content = "We had been training on agile for some time, and before, we understood all the ingredients. But this workshop brought all the ingredients together and showed us how to bake a cake."
  cite_name = "Tamara Srzentic"
  cite_title = "Deputy Director, Office of Innovation at CHHS"
%}

<div class="grid-container">
  <p class="font-weight-bold">Site headings</p>
  <h1>Display / Heading 1 - 64</h1>
  <h1>Heading 1 - 48</h1>
  <h2>Heading 2 - 48</h2>
  <h3>Heading 3 - 28</h3>
  <h4>Heading 4 - 24</h4>
  <h5>Heading 5 - 20</h5>
  <h6>Heading 6 - 16</h6>
  <p>Body - 18</p>

  <div class="page--toolkit">
    <p class="font-weight-bold">Design headings</p>
    <h1>Display / Heading 1 - 64</h1>
    <h1>Heading 1 - 48</h1>
    <h2>Heading 2 - 32</h2>
    <h3>Heading 3 - 24</h3>
    <h4>Heading 4 - 16</h4>
    <h5>Heading 5 - 20</h5>
    <h6>Heading 6 - 16</h6>
    <p class="text-intro">Lead - 24</p>
    <p>Body - 18</p>

    <p class="font-weight-bold">Note:</p>
    <ul>
      <li>h1 is not used on "design headings." Usually starts at h2.</li>
      <li>h5 and h6 generally not in use.</li>
      <li>Pages with banners use h2 size for banner heading.</li>
    </ul>
  </div>
</div>