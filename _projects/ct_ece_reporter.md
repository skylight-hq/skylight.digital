---
layout: default
title_tag: State of Connecticut
title: Building a data collection tool that supports young children
permalink: /work/experience/ct-ece-reporter/
image: /img/projects/ct_ece_reporter/ece-reporter.svg
image_description: A teacher sitting with a young child at a table and a computer screen in the background showing a green checkmark.
feature_image:
feature_image_description:
feature_image_shadow:
order: 400
display: true
tags: [service delivery, research & design, product management, software delivery, legacy modernization, devops, cloud & platforms, data & analytics, apis, security & privacy, early childhood, social safety net, healthcare, education, chris given, julia hogan, cailyn hansen, victoria suwardiman, ashley treni, abby raskin, kyle magida, marvo dolor, amelia wellers, olivia lucas, jordan guinn, nick bristow, brandon mader, derek tam, alex curtis, lucas newman, becca bartola, priscilla peralta, gordon farrell, josh dorothy]
excerpt: A user-friendly data collection tool to get accurate information from early care and education providers about the children in their care in Connecticut.
project_members:
  - becca-bartola
  - priscilla-peralta
  - gordon-farrell
  - nick-bristow
  - josh-dorothy
  - brandon-mader
  - lucas-newman
  - alex-curtis
  - derek-tam
  - chris-given
  - cailyn-hansen
  - victoria-suwardiman
  - ashley-treni
  - abby-raskin
  - kyle-magida
  - marvo-dolor
  - olivia-lucas
  - jordan-guinn
  - julia-hogan
  - amelia-wellers
technologies:
  - HTML / CSS
  - JavaScript / React
  - U.S. Web Design System
  - .NET Core
  - JSON API
  - IdentityServer
  - SQL Server
  - Amazon Web Services
  - Azure DevOps
  - Git / GitHub
practices:
  - Product management
  - Lean startup
  - User research
  - Technical discovery
  - User experience design
  - Visual design
  - Design system
  - Responsive design
  - Accessibility design
  - Agile development
  - Open-source development
  - API-first development
  - RESTful API architecture
  - Data management
  - DevSecOps
  - Security / privacy compliance
  - Containerization
  - Cloud hosting
news_posts:
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
The Connecticut Office of Early Childhood (OEC) wanted to improve their existing data
collection systems to better understand and evaluate the impact of their work
with young children and their families. As a first step in that effort,
we're building a pilot data collection tool to help OEC gather data from
early care and education providers, ease the burden on users,
and improve data quality.

{% include callout.html
  type = "pullquote"
  content = "The amount of paperwork I have to submit is overwhelming, sometimes. Honestly, this would be a blessing. We're supposed to be running centers and helping families."
  cite_name = "Anna Ruggiero"
  cite_title = "Executive Director, Children's Adventure Center, Sandyhook, CT"
%}
{% endcapture %}

{% capture challenge %}
OEC works towards a vision where all young children in the state are safe,
healthy, learning, and thriving. They do this through early childhood
policy development as well as critical program and service support
for families, educators, child care providers, and communities.
With over 70% of families with young children in the state in need
of some form of child care, understanding the effectiveness of OEC's
programs is critical to the well-being of Connecticut's children and families.

Recognizing that accurate data is at the heart of truly understanding
the impact of existing programs, making funding decisions, and planning
for the future, OEC decided to focus on improving their existing data
collection tools and systems starting with the Early Childhood Information
System (ECIS). ECIS is used by early care and education providers to gather
and store important data about children in their care. However, it poses a
number of usability challenges to providers, including barriers around
updating or correcting existing data, the existence of duplicate records
and identification (ID) numbers per child, and unused reporting features
due to inaccurate data.

The challenge for us was to decrease the burden on early child care and
education providers as they enter data into the system and to improve
the quality and utility of ECIS data for all users.
{% endcapture %}

{% capture solution %}
Together with OEC, we're piloting a data collection tool to improve the data
collection process for early child care and education providers who currently
use ECIS. This new tool will offer a more user-friendly interface, designed to
consolidate providers' monthly reporting tasks and allow for more control over
the data they enter. This pilot will also make better use of existing data to
link and consolidate records, reducing manual entry errors and eliminating the
need for providers to create a unique ID for each child.  With a data collection
process that works better for early child care providers, OEC will have more
reliable data to better evaluate outcomes.

Additionally, in an effort to get useful working software into the hands of
users as soon as possible, the design and development of the pilot integrates
successful agile and iterative practices described in
the [U.S. Digital Services Playbook](https://playbook.cio.gov/#play4).

OEC envisions that this project will be used as a model for collecting and
matching better data about the early development and education of every
young child who has received funding from the state, and a starting point
to better integrate existing data systems across other OEC programs and agencies.
{% endcapture %}

{% capture results %}
- Completed design of a minimum viable product (MVP)
- Deployed the MVP in a January 2020 pilot
- Helping OEC move the needle towards better understanding the well-being
  of the children and families they serve
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
