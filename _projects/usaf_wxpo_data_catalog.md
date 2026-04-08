---
layout: default
title_tag: "U.S. Air Force"
title: "Modernizing weather data delivery for the Air Force"
permalink: /work/experience/usaf-wxpo-data-catalog/
image: /img/projects/usaf_wxpo_data_catalog/wxpo-weather-data-catalog.png
image_description: "An airman stands under an umbrella while weather data rains down around them."
feature_image:
feature_image_description:
feature_image_shadow:
order: 1250
display: true
tags:
  - "service delivery"
  - "research & design"
  - "product management"
  - "software delivery"
  - "defense"
  - "air force"
  - "pri kiser"
  - "tiffany nieh"
  - "ashton tu"
excerpt: "A searchable data catalog that replaced manual spreadsheets and gave the U.S. Air Force Weather Systems Program Office visibility into how weather data flows to customers."
project_members:
  - pri-kiser
  - tiffany-nieh
  - ashton-tu
technologies:
  - "Confluence"
  - "Elasticsearch"
  - "Figma"
  - "HTML / CSS"
  - "JavaScript / React"
  - "Jira"
  - "Material-UI"
  - "Mattermost"
  - "Microsoft Teams"
  - "Slack"
  - "Splunk"
  - "Trello"
practices:
  - "Accessibility design"
  - "Agile development"
  - "Consulting"
  - "Design system"
  - "Lean product"
  - "Product management"
  - "Prototyping"
  - "Service design"
  - "User research"
  - "User-centered design"
  - "Workshop facilitation"
news_posts:
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
As part of our [work modernizing weather intelligence delivery for the Air Force](/work/experience/usaf-wxpo-weather-modernization/), we built a searchable data catalog that replaced fragmented manual processes with an intuitive application for managing weather data across the Department of Defense. The catalog gives Weather Systems Program Office (WxPO) staff full visibility into the data life cycle — from ingestion to customer subscription — for the first time.
{% endcapture %}

{% capture challenge %}
While most of our WxPO work focused on user-facing applications, a parallel problem sat underneath: WxPO had no reliable way to manage and track the weather data that powered everything else.

Staff searched for available data products in Excel spreadsheets with more than 100,000 rows — a slow, error-prone process that made it nearly impossible to discover what data was available or who was receiving it. Data systems contained disparate, archaic products that didn't work well together. WxPO couldn't track data from ingestion to customer delivery, so problems went undetected until they surfaced in operations.

The manual workarounds compounded the issue. Even routine tasks required toggling between disconnected tools and reconciling information by hand. Without a structured approach to data management, every question about what was available, who was subscribed, and where problems originated required someone who'd been around long enough to know the answer from memory.
{% endcapture %}

{% capture solution %}
**We applied user-centered design principles from the start,** engaging users, developers, and stakeholders on a regular basis to validate assumptions and ensure the product reflected how people actually worked — not just how existing systems assumed they did.

Research uncovered **workflows that had never been documented.** We turned discovery findings into detailed maps of data journeys and internal processes, making visible the institutional knowledge that had previously lived only in individuals' heads. Many of these workflows were invisible to anyone trying to diagnose problems or plan improvements.

A new data taxonomy **brought structure to previously unorganized information.** We created a data tree and labeling system that gave current and future users a common vocabulary for describing data products — a prerequisite for any searchable system. Outcome-oriented roadmaps helped the team focus on a viable path forward.

Armed with this research, we **built a searchable catalog application** that replaced the unwieldy spreadsheets. The application lets WxPO users locate data by type, subscribe products to their customers, view details about each data set, and add additional data — all in one place instead of scattered across disconnected tools.

The catalog gave WxPO **visibility it had never had before:** where data comes from, which products are available, and who's receiving them. That visibility empowered staff to be proactive about potential issues and gave them better information for troubleshooting. Early versions generated interest beyond the original team, prompting planning to expand from a single product into a platform for different data needs across the Air Force.
{% endcapture %}

{% capture results %}
- **Replaced 100,000+ row Excel spreadsheets** with a searchable, intuitive catalog application for weather data discovery and subscription
- **Documented previously unmapped data workflows** and delivery processes, creating a shared foundation for diagnosing issues and planning improvements
- **Created a data taxonomy and labeling system** that established a common vocabulary for current and future users across WxPO
- **Gave staff end-to-end visibility** into data sources, availability, and customer subscriptions — reducing time spent searching for information and enabling proactive issue detection
- **Generated interest from other Air Force organizations**, prompting planning to expand from a single product to a multi-user platform
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
