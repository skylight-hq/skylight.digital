---
layout: default
title_tag: Department of Labor
title: De-risking a legacy system modernization
permalink: /work/experience/dol-legacy-system-modernization/
redirect_from:
  - /work/dol-legacy-system-modernization/
image: /img/projects/dol_legacy_system_modernization/legacy-system-modernization.svg
image_description: Someone operating a conveyor belt that's transforming old computers into modern tablets.
feature_image:
feature_image_description:
feature_image_shadow:
order: 3600
display: true
tags: [procurement, legacy modernization, labor, robert read, chris cairns]
excerpt: Using code forensics and modern API practices to dramatically de-risk the modernization of a legacy system at the Department of Labor.
project_members:
  - robert-read
  - chris-cairns
technologies:
  - HTML / CSS
  - JavaScript
  - Twitter Bootstrap
  - Python
  - APIs
  - AJAX
  - SQLAlchemy
  - DB2 / DB2 stored procedures
  - Puppet
  - Automated testing frameworks
  - Amazon Web Services
  - Git / GitHub
practices:
  - Spike solutions
  - Rapid prototyping
  - API encapsulation
  - Automated testing
  - Artifical data
  - Programmatic deployment scripts
  - Cloud hosting
  - Virtual collaboration
news_posts:
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
The Wage and Hour Division (WHD) at the Department of Labor (DOL) has been
relying on an aging system, called Wage Hour Investigative Support
and Reporting Database (WHISARD), to support its labor law enforcement activities.
The entire system needs modernized, which includes replacing the existing
desktop-only user interface (UI) with a new web-based UI. By careful inspection
of the code and experimentation, we created a deep "spike" solution that allows a small
fraction of the system to be implemented with a web-based system using in-situ business
rules and stored procedures. This spike served as a basis for planning the entire
rewrite of WHISARD, thus de-risking the whole project.
{% endcapture %}

{% capture challenge %}
The existing technology behind WHISARD was ancient and nearly undocumented. In order to
have a functioning spike, a complete and valid environment would have to be duplicated.
Because the data was sensitive and potentially subject to litigation, we'd have
to work entirely with artificially-created data.
{% endcapture %}

{% capture solution %}
After setting up a DB2 instance with artifical data and extensive study
of the stored procedures, we were able to interface to the database with a
simple Python program that implemented a web service interface. This allowed
a simple but possibility-expanding, browser-based demo.
{% endcapture %}

{% capture results %}
The spike solution dramatically reshaped the DOL's acquisition plan, including
cost estimates, by proving that an API-encapsulation approach could work and be
expanded at minimal risk.
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
