---
layout: default
title_tag: "Department of Labor"
title: "De-risking a legacy system modernization"
permalink: /work/experience/dol-legacy-system-modernization/
redirect_from:
  - /work/dol-legacy-system-modernization/
image: /img/projects/dol_legacy_system_modernization/legacy-system-modernization.svg
image_description: "A person operating a conveyor belt that transforms old computers into modern tablets."
feature_image:
feature_image_description:
feature_image_shadow:
order: 3600
display: true
tags:
  - "procurement"
  - "legacy modernization"
  - "labor"
  - "robert read"
  - "chris cairns"
excerpt: "Used code forensics and API prototyping to reduce risk and improve planning for a high-stakes legacy modernization at the Department of Labor."
project_members:
  - robert-read
  - chris-cairns
technologies:
  - "HTML / CSS"
  - "JavaScript"
  - "Twitter Bootstrap"
  - "Python"
  - "APIs"
  - "AJAX"
  - "SQLAlchemy"
  - "DB2 / DB2 stored procedures"
  - "Puppet"
  - "Automated testing frameworks"
  - "Amazon Web Services"
  - "Git / GitHub"
practices:
  - "Spike solutions"
  - "Rapid prototyping"
  - "API encapsulation"
  - "Automated testing"
  - "Artificial data"
  - "Programmatic deployment scripts"
  - "Cloud hosting"
  - "Virtual collaboration"
news_posts:
project_url:
project_cta:
source_code_url: https://github.com/18F/dol-whisard
---

{% capture summary %}
Before founding Skylight, Robert Read and Chris Cairns used code forensics and API prototyping through 18F to de-risk a high-stakes legacy modernization at the Department of Labor (DOL). The agency's Wage and Hour Division relied on an aging system called WHISARD to support labor law enforcement, but its complexity and lack of documentation created major delivery risk. They built a technical spike that proved a web-based modernization approach could work — giving DOL a practical basis for planning the broader rewrite with far less uncertainty.
{% endcapture %}

{% capture challenge %}
The Wage Hour Investigative Support and Reporting Database (WHISARD) was an aging, desktop-based system with little usable documentation and deeply embedded business logic. Modernizing it required more than replacing the interface — it meant understanding whether the underlying system could realistically support a safer, incremental transition.

The risks were significant. WHISARD's stored procedures encoded years of business rules that no one had fully cataloged, and the underlying data was sensitive and potentially tied to litigation. Any meaningful prototype had to recreate a valid working environment around legacy DB2 infrastructure without using production records — a constraint that made even basic feasibility testing difficult.

DOL needed a way to test modernization assumptions early, before committing to a larger rewrite effort. Without that evidence, the agency faced a familiar trap: investing heavily in a full modernization with no proof that the approach would work.
{% endcapture %}

{% capture solution %}
**Rather than attempting a full modernization, they framed the work as a risk-reduction exercise.** The goal wasn't to rebuild WHISARD — it was to prove that a modern web-based interface could work on top of the existing system's business logic. That framing kept the scope tight and the timeline short.

Because WHISARD's documentation was sparse, the only reliable source of truth about how the system behaved was the code itself. **They recreated a working DB2 environment using entirely artificial data,** then conducted extensive analysis of the system's stored procedures and business rules to map the logic that any modernization effort would need to preserve.

**A lightweight Python-based web service layer interfaced directly with the legacy database** and exposed key functionality through APIs. This API-encapsulation approach made it possible to create a browser-based demonstration showing how a modern web interface could operate while still relying on existing in-place business rules.

The spike gave DOL something most legacy modernizations lack at the outset: **concrete evidence that the approach would work.** Instead of speculating about feasibility, the agency could see a working example of how the legacy system and a future modernized experience could coexist — and use it as a basis for scoping, budgeting, and planning the broader rewrite.
{% endcapture %}

{% capture results %}
- **Built a technical spike** that demonstrated a viable path for modernizing WHISARD through API encapsulation of legacy stored procedures
- **Validated key technical assumptions** before a larger rewrite began, reducing the risk of costly missteps during full modernization
- **Gave DOL a clearer basis for acquisition planning,** including scope, approach, and cost estimates grounded in working code rather than theoretical analysis
- **Proved that legacy business rules and stored procedures could be reused** in a modern web-based architecture, avoiding the need to rewrite decades of embedded logic from scratch
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
