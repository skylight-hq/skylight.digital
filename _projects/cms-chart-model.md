---
layout: default
title_tag: Centers for Medicare & Medicaid Services
title: Helping rural hospitals use data to improve financial stability and access to care
permalink: /work/experience/cms-chart-model/
image: /img/projects/cms_chart_model/idos.svg
image_description: On the left, a doctor with a stethoscope checks a man's heartbeat. On the right, the same man walks a dog outside.
feature_image:
feature_image_description:
feature_image_shadow:
order: 1150
display: true
tags: [transformation, research & design, product management, data & analytics, healthcare, jamie song]
excerpt: Using a research-driven data strategy to improve rural hospitals’ access to information so they can make better decisions related to financial stability and equitable access to healthcare.
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
We partnered with the Center for Medicare & Medicaid Innovation (CMMI) to provide user research and an actionable data strategy for rural hospitals so they can address critical financial challenges while preserving equitable access to care.
{% endcapture %}

{% capture challenge %}
Throughout America, rural hospitals are at a critical juncture. Already under financial stress, the COVID pandemic amplified the [difficulties they face](https://bipartisanpolicy.org/report/the-impact-of-covid-19-on-the-rural-health-care-landscape/): “since 2005, at least [163 rural hospitals have closed](https://www.pewtrusts.org/en/research-and-analysis/blogs/stateline/2020/01/31/rural-americas-health-crisis-seizes-states-attention), more than 60% of them since 2012,” and a [record 19 in 2020](https://www.axios.com/2022/07/14/rural-hospitals-face-financial-jeopardy).

![Map of rural hospital closures by state since 2005.](/img/projects/cms_cmmi_chart/hospital-closures-map.svg){: .mb-0 }

Source: Modified from [Pew Trusts, “Rural America’s Health Crisis Seizes States’ Attention”](https://www.pewtrusts.org/en/research-and-analysis/blogs/stateline/2020/01/31/rural-americas-health-crisis-seizes-states-attention)
{: .caption }

From a policy perspective, rurality is an important health equity variable: with quality health services pushed further and further away from rural residents, fewer people are able to access the care they need. To address these disparities, and recognizing that many rural providers struggle with [unsustainable financial models](https://www.healthaffairs.org/doi/abs/10.1377/hlthaff.2019.01545), CMMI established a payment and service delivery model called Community Health Access and Rural Transformation (CHART). CHART provides funding to rural providers — such as hospitals, Medicaid state agencies, and local public health departments — to test new ways of delivering high-quality care to their communities, with the ultimate goal of increasing health access and improving health outcomes.

To keep their doors open, rural hospitals need to use their own performance and cost data, together with data from neighboring network hospitals, to precisely balance cost-effectiveness of the services they offer while preserving access to care throughout their region. Yet these providers are also the least likely to have the resources they need to perform this critical analysis.

{% include callout.html type = "pullquote" content = "We send reports out to a third party to have them written. We don’t have a lot of funds to do that. It’s hard to get data out. We go with bare minimum reporting because system-generated reports aren’t useful." cite_name = "Rural hospital executive" %}

Even though an individual hospital CEO might be fluent with data, chronic under-resourcing and cumbersome technology placed significant barriers to getting the data needed to make evidence-based decisions. As a result, we found that many rural providers, with mountains of data functionally inaccessible to them, were resorting to ad hoc and anecdotal decision-making that risked worsening their already unstable financial position.

Hospitals of all sizes need meaningful access to data and the tools to make it actionable. Rural hospitals in particular can’t shoulder the burden of running reports, cleaning data, joining data from disparate sources, or deciding how to present complex data for analysis. They need data strategy and support so they can focus on key insights that drive reliable decisions.
{% endcapture %}

{% capture solution %}
In collaboration with CMMI, the U.S. Digital Service (USDS), and vendor partners under the Innovation Development and Operations Services (IDOS) program, we identified an urgent need for data strategy and better data tooling to enable evidence-based analysis and pinpoint solutions.

Through interviews with staff from nearly a dozen hospitals across the country, ranging from executives at rural hospitals to data analysts, we learned about the challenges these facilities face when trying to access and make sense of their performance data. We performed service design mapping exercises with these groups to understand how they work with data, how their data flows through various systems, and what information they need to make more data-informed decisions about services and care.

Our user interviews helped us formulate hypotheses around the types of data rural hospitals would find most important, like disease prevalence, peer cost comparisons, and hospital quality measures. From there, we used existing financial and hospital performance quality data from the Centers for Medicare & Medicaid Services (CMS) to prototype, test, and iterate on several dashboards. This iterative approach to prototyping allowed us to focus on an intuitive hierarchy of information with relevant visual cues. The providers quickly found that the dashboards filled critical information gaps.

{% include callout.html type = "pullquote" content = "We don’t have access to this kind of data anywhere else right now. This is helpful for honing in on areas to improve care." cite_name = "Rural hospital executive" %}

We then evaluated off-the-shelf data tooling solutions and provided a recommendation taking into account everything we’d learned about rural hospital users and their analysis needs.

Leveraging our research and design experience, we helped stakeholders and other contractors implement new human-centered design practices (e.g., continuous usability testing) to ensure their data analysis products meet users’ needs. CMMI still faces several challenges with scaling user research and discovery processes to other areas of CMMI, but by demonstrating tangible value quickly through research-informed prototypes, we not only gave CMMI valuable insight into the needs of the rural providers they support, but also contributed to the broader cultural shift CMMI is currently undertaking.
{% endcapture %}

{% capture results %}
- Led the CHART model team’s first-ever discovery sprints with model participants
- Conducted 11 interviews with hospital staff across all levels — from rural hospital CEOs to analysts
- Built and iterated on a prototype dashboard, reflecting human needs uncovered in research
- Used this work to help the organization start institutionalizing user research best practices
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
