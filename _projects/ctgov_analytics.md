---
layout: default
title_tag: State of Connecticut
title: Enabling self-management of a web traffic analytics system
permalink: /work/experience/ctgov-analytics/
image: /img/projects/ctgov_analytics/gov-analytics.svg
image_description: People standing around a big computer and looking at a screen displaying analytical data.
feature_image:
feature_image_description:
feature_image_shadow:
order: 50
display: true
tags: [service delivery, data & analytics, open government, cailyn hansen, colin craig, gabriel ramirez]
excerpt: Giving the State of Connecticut insight into website usage and trends to better serve the needs of their constituents.
project_members:
  - cailyn-hansen
  - colin-craig
  - gabriel-ramirez
technologies:
  - HTML / CSS / SVG
  - JavaScript / JSON
  - Amazon S3
  - Amazon CloudFront
  - Google Analytics
practices:
  - User research
  - Agile development
  - Open-source development
  - Cloud hosting
  - Third-party integration
project_url: https://analytics.ct.gov/
project_cta: See the site
source_code_url: https://github.com/CTOpenData/analytics.ct.gov
---

{% capture summary %}
The State of Connecticut manages multiple websites and analytics accounts, which
makes it hard to get a holistic view of their web properties. Needing a
streamlined solution, we customized an open-source tool to quickly deliver a
consolidated analytics dashboard.
{% endcapture %}

{% capture challenge %}
The State of Connecticut wanted to make date-driven decisions when developing new
digital resources, but accessing analytics was a cumbersome process and employees
weren't confident in the data. In the past, they had worked with external teams
that developed solutions and then handed them off for maintenance. The team was
maintaining the solutions using some software development processes but wasn't
sure if they were following best practices.
{% endcapture %}

{% capture solution %}
Members of our team were originally instrumental in developing
<a href="https://analytics.usa.gov/">analytics.usa.gov</a>,
and knew they could reuse the
<a href="https://github.com/18F/analytics.usa.gov">open-source code</a>
to develop a similar tool for the State of Connecticut. The original open-source
analytics tool wasn't developed for a Windows environment so we used this development
project as a way to coach the team on software development best practices.

Knowing that previous consultants had developed solutions that were difficult
to maintain, we decided it was critical to success for the team to feel
confident maintaining the solution. To do that, we partnered with their
data stakeholder and worked in tandem with her to conduct user research,
design the solution, and even commit some code. By customizing open-source
code and coaching the team throughout the process, we were able to make the
best use of taxpayer dollars and enable the State of Connecticut's team to
maintain the solution.

Now, agencies have insight into which websites and pages are used and how
they're used which informs future projects. Moreover, citizens of Connecticut
can view the information and use the open-source project to build other data
visualizations.
{% endcapture %}

{% capture results %}
- Delivered an analytics dashboard using customized open-source code
- Involved and enabled the department's team to develop and maintain the solutions using software development best practices
- Increased data transparency to the State of Connecticut's agencies and citizens
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
