---
layout: default
title_tag: United Nations
title: Increasing website accessibility for conference attendees
permalink: /work/experience/united-nations-accessibility-support/
image: /img/projects/united_nations_accessibility/accessibility.svg
image_description: Several people standing around a large webpage and performing accessibility tasks on it.
feature_image:
feature_image_description:
feature_image_shadow:
order: 65
display: true
tags: [microconsulting, research & design, nick bristow]
excerpt: Applying a globally-accepted accessibility framework to make United Nations’ conference web content accessible to persons with disabilities.
project_members:
  - nick-bristow
technologies:
  - Chrome Web Developer Toolkit
  - Colour Contrast Analyzer
  - Google Accessibility Audit Tools
  - JavaScript / HTML
  - Wave
practices:
  - WCAG 2.0
  - Live redevelopment
  - User testing
  - User test scenarios
news_posts:
project_url: https://www.unisdr.org/conference/2019/globalplatform/home
project_cta: See the site
source_code_url:
---

{% capture summary %}
  <p>
    The United Nations’ (UN’s) 2019 Global Platform for Disaster Risk Reduction conference
    website didn’t meet the Web Content Accessibility Guidelines (WCAG) 2.0 and
    needed to meet standards for visitors with disabilities. We were brought in
    to audit the website and fix the accessibility issues so it met globally-accepted
    standards.
  </p>
{% endcapture %}

{% capture challenge %}
  <p>
    With their conference just weeks away, the UN’s technology team knew
    the 2019 Global Platform for Disaster Risk Reduction website didn’t meet the
    WCAG 2.0 accessibility standards. To meet the standards and the UN Office for
    Disaster Risk Reduction’s commitment to accessibility, the technology team needed
    to act fast.
  </p>
{% endcapture %}

{% capture solution %}
  <p>
    Leveraging <a href="/work/toolkits/accessibility-guide/">Skylight’s Accessibility Guide</a>,
    we kicked off the project with a compliance audit of the conference website’s accessibility deficiencies
    and generated a report of pressing issues. The audit included a review of images,
    colors, contrast ratios, outlines, and other content. Working with the internal team,
    we fixed the underlying issues and rewrote code to make the website meet the WCAG 2.0
    accessibility standards. Finally, we tested the website with persons with
    disabilities who use screen readers and keyboard inputs. The work was
    completed in two weeks to meet the conference deadline.
  </p>
{% endcapture %}

{% capture results %}
  <ul>
    <li>
      Completed the accessibility audit and fixes in two weeks, just in time for
      the conference
    </li>

    <li>
      Provided accessibility development guidelines to enable future self-management
    </li>
  </ul>
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
