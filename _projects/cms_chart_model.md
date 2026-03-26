---
layout: default
title_tag: Centers for Medicare & Medicaid Services
title: Helping rural hospitals use data to improve financial stability and access to care
permalink: /work/experience/cms_chart_model/
image: /img/projects/cms_chart_model/idos.svg
image_description: On the left, a doctor checks a patient's heartbeat. On the right, the same person walks a dog outside.
feature_image:
feature_image_description:
feature_image_shadow:
order: 1150
display: true
tags: [transformation, research & design, product management, data & analytics, healthcare, jamie song]
excerpt: A research-driven data strategy that helped rural hospitals better access and use critical information to make decisions about financial stability and care delivery.
project_members:
  - jamie-song
technologies:
  - Box
  - Google Workspace
  - Microsoft SharePoint
  - Microsoft Teams
  - Zoom
practices:
  - Data strategy
  - Service design
  - Stakeholder interviews
  - User interviews
  - User research
  - Information gathering
  - Primary research
  - Secondary research
  - Research analysis and synthesis
  - Prototyping
  - Rapid prototyping
  - Usability testing
  - User-centered design
  - Analysis of alternatives
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
Rural hospitals needed better access to usable data to sustain operations and improve care — but existing systems made that difficult. We partnered with the Center for Medicare & Medicaid Innovation (CMMI) to develop a research-driven data strategy and prototype solutions that helped providers make more informed decisions while improving visibility into system-wide challenges.
{% endcapture %}

{% capture challenge %}
Rural hospitals across the United States were under significant financial and operational strain. The COVID-19 pandemic intensified these challenges, accelerating closures and increasing pressure on already fragile systems.

![Map of rural hospital closures by state since 2005.](/img/projects/cms_chart_model/rural-hospital-closures-map.svg){: .mb-0 }

Source: Cecil G. Sheps Center for Health Services Research, University of North Carolina; image modified from [The Pew Charitable Trusts](https://www.pewtrusts.org/en/research-and-analysis/blogs/stateline/2020/01/31/rural-americas-health-crisis-seizes-states-attention).
{: .caption }

To address these challenges, CMMI launched the Community Health Access and Rural Transformation (CHART) model. CHART aimed to improve outcomes and access to care by funding new approaches to service delivery.

However, many rural providers lacked the tools and infrastructure needed to use data effectively. Critical information about cost, performance, and regional dynamics was difficult to access, fragmented across systems, or required significant manual effort to analyze.

{% include callout.html
  type = "pullquote"
  content = "We send reports out to a third party to have them written. We don't have a lot of funds to do that. It's hard to get data out. We go with bare minimum reporting because system-generated reports aren't useful."
  cite_name = "Rural hospital executive"
%}

As a result, providers often relied on incomplete or anecdotal information when making high-stakes decisions about services, staffing, and financial sustainability.

CMMI needed a clearer understanding of these challenges — and a path toward making data more accessible, actionable, and useful for rural providers.
{% endcapture %}

{% capture solution %}
We partnered with CMMI, the U.S. Digital Service (USDS), and Innovation Development and Operations Services (IDOS) vendors to develop a data strategy grounded in real user needs.

We began with in-depth research across nearly a dozen hospitals, engaging executives, analysts, and frontline staff. Through interviews and service design mapping, we uncovered how data flowed across systems, where breakdowns occurred, and what information providers actually needed to make decisions.

From these insights, we identified key data gaps and prioritized the types of information most valuable to providers — including disease prevalence, peer cost comparisons, and hospital quality metrics.

We then translated these insights into tangible solutions. First, we prototyped dashboards using Centers for Medicare & Medicaid Services (CMS) financial and quality data. Next, we tested and iterated with users to refine usability and information hierarchy. Then, we identified opportunities to streamline access to high-value data and evaluated off-the-shelf tooling options aligned to user needs.

{% include callout.html
  type = "pullquote"
  content = "We don't have access to this kind of data anywhere else right now. This is helpful for honing in on areas to improve care."
  cite_name = "Rural hospital executive"
%}

In parallel, we helped stakeholders adopt human-centered design practices — such as continuous user research and usability testing — to ensure future solutions remained grounded in real-world needs.

This approach not only improved immediate access to data, but also established a foundation for more sustainable, user-centered data strategy and decision-making.
{% endcapture %}

{% capture results %}
- Led the CHART model team's first discovery sprints with participating providers
- Conducted 11 in-depth interviews across hospital leadership and operational roles
- Developed and tested prototype dashboards based on real provider needs
- Identified critical data gaps and opportunities to improve decision-making
- Helped establish user research as a core practice within the program
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
