---
layout: default
title_tag: Department of Labor
title: De-risking a legacy system modernization
permalink: /work/experience/dol-legacy-system-modernization/
redirect_from:
  - /work/dol-legacy-system-modernization/
image: /img/projects/dol_legacy_system_modernization/legacy-system-modernization.svg
image_description: A person operating a conveyor belt that transforms old computers into modern tablets.
feature_image:
feature_image_description:
feature_image_shadow:
order: 3600
display: true
tags: [procurement, legacy modernization, labor, robert read, chris cairns]
excerpt: Used code forensics and API prototyping to reduce risk and improve planning for a high-stakes legacy modernization at the Department of Labor.
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
  - Artificial data
  - Programmatic deployment scripts
  - Cloud hosting
  - Virtual collaboration
news_posts:
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
The Department of Labor’s Wage and Hour Division relied on a legacy system called WHISARD to support labor law enforcement. The system needed to be modernized, but its age, complexity, and lack of documentation created major delivery risk. We built a technical spike that proved a web-based modernization approach could work by reusing existing business rules and stored procedures through an API layer. That prototype gave DOL a practical basis for planning the broader rewrite with far less uncertainty.
{% endcapture %}

{% capture challenge %}
WHISARD was an aging, desktop-based system with little usable documentation and deeply embedded business logic. Modernizing it required more than replacing the interface — it meant understanding whether the underlying system could realistically support a safer, incremental transition.

The risks were significant. To build a meaningful prototype, we had to recreate a valid working environment around legacy DB2 infrastructure and stored procedures. At the same time, because the underlying data was sensitive and potentially tied to litigation, we could not use production records and had to work entirely with artificial data.

DOL needed a way to test modernization assumptions early, before committing to a larger rewrite effort.
{% endcapture %}

{% capture solution %}
We approached the problem as a risk-reduction exercise.

After recreating a working DB2 environment with artificial data, we conducted extensive analysis of the system’s stored procedures and business logic. We then built a lightweight Python-based web service layer that interfaced directly with the legacy database and exposed key functionality through APIs.

This made it possible to create a browser-based demonstration that showed how a modern web interface could operate while still relying on existing in-place business rules. Rather than speculating about feasibility, DOL could see a working example of how an API-encapsulation approach could bridge the legacy system and a future modernized experience.
{% endcapture %}

{% capture results %}
- Built a technical spike that demonstrated a viable path for modernizing WHISARD through API encapsulation
- Reduced modernization risk by validating key assumptions before a larger rewrite began
- Improved acquisition planning by giving DOL a clearer basis for scope, approach, and cost estimates
- Showed that legacy business rules and stored procedures could be reused in a modern web-based architecture
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
