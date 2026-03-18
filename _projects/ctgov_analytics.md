---
layout: default
title_tag: State of Connecticut
title: Making government web analytics accessible and actionable
permalink: /work/experience/ctgov-analytics/
image: /img/projects/ctgov_analytics/gov-analytics.svg
image_description: People gathered around a large screen displaying web analytics data and trends.
feature_image:
feature_image_description:
feature_image_shadow:
order: 2300
display: true
tags: [service delivery, data & analytics, open government, cailyn hansen, colin craig, gabriel ramirez]
excerpt: A centralized analytics dashboard that gave Connecticut agencies and the public clear, real-time insight into how government websites are used.
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
Connecticut needed a simpler way to understand how residents were using its digital services. We built a centralized, open-source analytics dashboard that unified data across websites, improved trust in analytics, and enabled both agencies and the public to make more informed decisions.
{% endcapture %}

{% capture challenge %}
The State of Connecticut managed multiple websites and analytics accounts, making it difficult to get a clear, unified view of how people were using its digital services.

Accessing analytics required navigating fragmented systems, and employees lacked confidence in the data they were seeing. Previous solutions had been developed by external vendors and handed off without sufficient knowledge transfer, leaving internal teams unsure how to maintain or improve them.

As a result, analytics were underutilized, limiting the state's ability to make data-informed decisions about digital services.
{% endcapture %}

{% capture solution %}
We identified an opportunity to build on proven open-source work and deliver a solution that the state could fully own and sustain.

Drawing on our experience developing [analytics.usa.gov](https://analytics.usa.gov/), we adapted its [open-source codebase](https://github.com/18F/analytics.usa.gov) to create a similar analytics dashboard for Connecticut. We customized the tool to meet the state's needs and ensured it worked within its technical environment.

Equally important, we partnered closely with the state team throughout the process. Rather than delivering a finished product and handing it off, we worked side by side to:

- Conduct user research to understand analytics needs and gaps  
- Design a dashboard that made data easier to access and interpret  
- Customize and extend the open-source solution  
- Coach the team on modern software development practices  

This approach ensured the solution was not only effective, but also maintainable by the state’s internal team.

The resulting platform provided real-time insight into how government websites were being used. Agencies could better understand user behavior and prioritize improvements, while the public gained transparent access to usage data and an open-source foundation for further analysis.
{% endcapture %}

{% capture results %}
- Delivered a centralized analytics dashboard using customized open-source code  
- Enabled internal teams to confidently maintain and extend the platform using modern development practices  
- Increased visibility into how residents use government websites, improving decision-making across agencies  
- Expanded public access to government data through an open, transparent analytics platform  
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
