---
layout: default
title_tag: "United Nations"
title: "Increasing website accessibility for conference attendees"
permalink: /work/experience/united-nations-accessibility-support/
image: /img/projects/united_nations_accessibility/accessibility.svg
image_description: "Several people standing around a large webpage and performing accessibility tasks on it."
feature_image:
feature_image_description:
feature_image_shadow:
order: 2500
display: true
tags:
  - "microconsulting"
  - "research & design"
  - "nick bristow"
excerpt: "Applied Web Content Accessibility Guidelines 2.0 to make the United Nations' 2019 Global Platform for Disaster Risk Reduction conference website accessible to persons with disabilities."
project_members:
  - nick-bristow
technologies:
  - "Chrome Web Developer Toolkit"
  - "Colour Contrast Analyzer"
  - "Google Accessibility Audit Tools"
  - "JavaScript / HTML"
  - "Wave"
practices:
  - "WCAG 2.0"
  - "Live redevelopment"
  - "User testing"
  - "User test scenarios"
news_posts:
project_url: https://www.unisdr.org/conference/2019/globalplatform/home
project_cta: "See the site"
source_code_url:
---

{% capture summary %}
The United Nations (UN) 2019 Global Platform for Disaster Risk Reduction conference website didn't meet Web Content Accessibility Guidelines (WCAG) 2.0 standards, leaving visitors with disabilities unable to fully access event information. We audited the site, fixed the underlying code, and validated the results with persons with disabilities — all within two weeks before the conference opened.
{% endcapture %}

{% capture challenge %}
The Global Platform for Disaster Risk Reduction is the UN's flagship event for coordinating international efforts to reduce disaster risk, drawing thousands of delegates from governments, international organizations, and civil society. The 2019 conference website served as the primary channel for attendees to find schedules, register, and access event materials — but it didn't meet WCAG 2.0 accessibility standards.

The gaps spanned multiple areas: images lacked proper alternative text, color contrast ratios fell below minimum thresholds, interactive elements were missing keyboard-accessible outlines, and navigation structures didn't support screen readers. For attendees who relied on assistive technology, the site was effectively unusable for key tasks.

With the conference just weeks away, the UN Office for Disaster Risk Reduction's technology team needed to both identify every accessibility deficiency and fix it — fast enough to meet the event deadline without disrupting the live site.
{% endcapture %}

{% capture solution %}
Using [Skylight's Accessibility Guide](/work/toolkits/accessibility-guide/) as the framework, we opened with a comprehensive audit that systematically evaluated images, color contrast ratios, keyboard navigation, outlines, and other content against WCAG 2.0 criteria. Every deficiency went into a **prioritized report** so the UN's technology team could see the full scope of work ahead.

**Fixes happened directly in the live codebase** — there was no time to stage changes for a future release. We rewrote the underlying HTML and JavaScript to add proper alternative text to images, correct contrast ratios, restore keyboard-accessible outlines, and restructure navigation elements for screen reader compatibility. Working on the live site meant compliance would be in place before the first attendees arrived.

Automated checks alone couldn't confirm real usability. We validated the fixes by **testing with persons with disabilities** who use screen readers and keyboard-only navigation, confirming that the technical changes translated into genuine accessibility improvements.

The engagement's final deliverable looked beyond the conference itself. We provided **accessibility development guidelines** that gave the UN's technology team a reference for maintaining WCAG 2.0 compliance on future conference sites without outside support.
{% endcapture %}

{% capture results %}
- **Completed the full accessibility audit and remediation in two weeks**, meeting the conference deadline for the 2019 Global Platform for Disaster Risk Reduction
- **Achieved WCAG 2.0 compliance** across the conference website, covering images, color contrast, keyboard navigation, and screen reader support
- **Validated fixes through usability testing with persons with disabilities**, confirming that technical changes produced real accessibility gains
- **Delivered accessibility development guidelines** enabling the UN's technology team to maintain compliance independently on future conference sites
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
