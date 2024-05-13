---
layout: default
title_tag: U.S. Air Force
title: Bringing user-centered design to the Air Force’s weather data infrastructure
permalink: /work/experience/usaf-wxpo-data-catalog/
image: /img/projects/usaf_wxpo_data_catalog/wxpo-weather-data-catalog.png
image_description: An airman stands under an umbrella while weather data rains down around them.
feature_image:
feature_image_description:
feature_image_shadow:
order: 1250
display: true
tags: [Service delivery, Research & design, Product management, Software delivery, Air Force, pri kiser, tiffany nieh, ashton tu]
excerpt: We worked with the Air Force’s weather data analysis organization to transform how data flows into weather applications.
project_members:
  - pri-kiser
  - tiffany-nieh
  - ashton-tu
technologies:
  - Confluence
  - Elasticsearch
  - Figma
  - HTML / CSS
  - JavaScript / React
  - Jira
  - Mattermost
  - Material-UI
  - Microsoft Teams
  - Slack
  - Splunk
  - Trello
  - Zoom
practices:
  - Accessibility design
  - Agile development
  - Collaborative design workshops
  - Consulting
  - Design pattern library
  - Lean product
  - Participatory design
  - Persona development
  - Product management
  - Prototyping
  - Service design
  - User research
  - User-centered design
  - Workshop facilitation
news_posts:
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
The U.S. Air Force (USAF) Weather Systems Program Office (WxPO) wanted to modernize their systems and processes to make critical weather data more available to a wide range of consumers. We used human-centered design (HCD) to create a robust and intuitive data product.
{% endcapture %}

{% capture challenge %}
Many customers depend on WxPO weather data to perform their day-to-day operations. Air traffic controllers, pilots, civilian weather forecasters and others in the Department of Defense (DoD) and beyond use WxPO products to inform decisions and execute important tasks. To support their customers’ critical work, WxPO needs to ensure they deliver accurate and timely weather data.

Historically, though, the office has relied on manual, slow, and outdated processes. Their data systems contain disparate, archaic data products that don’t work well together. This prevents WxPO from tracking data throughout the process, from ingestion to customer subscription and beyond.

Saddled with these workflows and systems, WxPO faces challenges such as:
- Inability to efficiently and effectively support customers, since WxPO lacks visibility into the data flow and can’t easily  identify where and how problems arise
- Unnecessary time and errors resulting from manual processes and systems that don’t integrate (for example, WxPO users searched for available data products in Excel spreadsheets with more than 100,000 rows)
- Lack of awareness into available data products, as products are cataloged in Excel and not easily searchable

WxPO needs a robust data product and modern, responsive approaches to managing and serving data.
{% endcapture %}

{% capture solution %}
To solve these challenges, we used human-centered design principles to build an application that makes it easier for WxPO to get their customers the weather data they need.

We engaged with users, developers, and stakeholders on a regular basis, conducting research, gathering feedback, and validating assumptions throughout the entire development process. We then turned this rigorous research into useful documentation about workflows and data journeys — an important foundation for addressing issues with WxPO processes (many of which had never been documented). Our activities such as prioritizing product initiatives, organizing data structures (through the creation of a data tree and data labeling taxonomy), and outcome-oriented roadmaps then helped the team focus on a viable path forward. 

Armed with extensive research and a clear sense of priorities, we built an intuitive application that streamlines the complexities of weather data delivery. The application is a searchable catalog consisting of several types of weather data. Once they locate the data they need, WxPO users can subscribe products to their customers, view details about the data, and add additional data. 

The application allows more visibility into where data comes from, whether certain types of data are available, and who the data is going to. This empowers users to be more proactive about potential issues and gives them more information to solve problems when they do arise. It also saves time searching for data.

Our initial versions of the application have already begun to improve the efficiency and effectiveness of the weather data analysis process as a whole. The application has also received interest from other parts of the Air Force, and we’ve started to plan for the shift from being a single product to a platform that supports many types of users with different data needs.
{% endcapture %}

{% capture results %}
- Facilitated workshops with stakeholders to drive strategy and product priorities
- Used HCD practices to create a data taxonomy, enabling mutual intelligibility for current and future users
- Bridged communication gap and tightened feedback loops between product teams and users, enabling greater responsiveness
- Successfully incorporated HCD and agile methodologies into the development process, generating interest from other product teams
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
