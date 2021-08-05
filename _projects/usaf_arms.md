---
layout: default
title_tag: U.S. Air Force
title: Modernizing the information management of aviation resources
permalink: /work/experience/usaf-arms/
redirect_from:
  - /work/experience/usaf_arms/
image: /img/projects/usaf_arms/arms.svg
image_description: An Air Force parachutist jumping out of a plan, with digital components in the background.
feature_image:
feature_image_description:
feature_image_shadow:
order: 25
display: true
tags: [service delivery, research & design, software delivery, legacy modernization, devops, cloud & platforms, data & analytics, apis, security & privacy, defense, air force, zack gehin, josh dorothy, colin craig, laura king, andrew lloyd, chun yen]
excerpt: A modernized system for the U.S. Air Force to better manage aviation resources and aircrew readiness.
project_members:
  - zack-gehin
  - josh-dorothy
  - colin-craig
  - laura-king
  - andrew-lloyd
  - chun-yen
technologies:
  - HTML / CSS
  - JavaScript / Vue.js
  - Tailwind UI
  - Go
  - APIs
  - Microservices
  - Swagger
  - GitLab CI/CD
  - Terraform
  - Docker
  - Jenkins
  - Groovy
  - PostgreSQL
  - Amazon Web Services
  - Git / GitLab
practices:
  - User research
  - Technical discovery
  - User experience design
  - Lean startup
  - Design system
  - Responsive design
  - Accessibility design
  - Agile development
  - API-first development
  - Microservices architecture
  - RESTful / SOAP API architecture
  - Legacy reengineering / strangler pattern
  - Data management
  - DevSecOps
  - Security / privacy compliance
  - Containerization
  - Cloud hosting
  - Automated documentation
  - Remote teams
news_posts:
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
The U.S. Air Force's (USAF's) Aviation Resource Management System (ARMS) is a critical
tool for collecting, managing, and reporting data about aviation resources and aircrew
readiness. As a subcontractor to Fearless, we're helping to revamp the user experience,
technical architecture, and technology stack of this complex legacy system.
{% endcapture %}

{% capture challenge %}
ARMS is a mission-critical application that the USAF uses to track and manage flight
data for about 65,000 aircrew and parachutists — including flying hours, flight and
jump schedules, readiness information, and training and evaluation. It consists of
seven different functional modules, such as Jumps (jump training records management)
and Training (student profile management and accomplishments).

About 2,800 aviation resource managers rely on ARMS to perform over two million transactions
per week. These users experience multiple pain points because of how the existing system
was originally built, including:

- The information architecture and interaction design make it difficult to complete
tasks efficiently and effectively
- Each Air Force base has a separate database, so individuals' training data doesn't
transfer when they go to a new base
- Parts of the system don't sync in real time, creating a problem for go-no-go
determinations (such as whether it's safe for a parachutist to jump)
- Older servers weren't designed for current loads, and crashes require going back to
pen-and-paper forms
- The slow speed of running reports eats up a lot of valuable time

Because of these issues, the USAF decided to modernize ARMS and sought an experienced
digital team who could help do so in a way that delivers immediate value and safeguards
continuity of mission operations.
{% endcapture %}

{% capture solution %}
As a subcontractor to [Fearless](https://fearless.tech/), we're working together
with the ARMS program team to incrementally build out a new system alongside the old one,
until all its key functionalities are replaced — a proven architectural approach known
as the [strangler pattern](https://martinfowler.com/bliki/StranglerFigApplication.html).

After conducting extensive user research and technical discovery, we decided that the best
place to start the modernization process was with the Jumps Module. Aviation resource
managers use this module to manage the jump training records of parachutists. We
re-engineered this functionality as a separate application, an effort which involved:

- Redesigning the user experience to better meet the needs of aviation resource managers
- Rebuilding it using a modern technical architecture and technology stack
- Interfacing with the old component to migrate and keep data synchronized until
it's no longer needed and can be decommissioned

This new application serves as a resusable infrastructure for accelerating the
modernization of the other six modules and eventually all of ARMS, so the old
one can be retired.
{% endcapture %}

{% capture results %}
- Rapidly developed a prototype of the new Jumps Module to demonstrate the
feasibility of our modernization approach, earning stakeholder buy-in
- Preparing to launch a production version of the new application
- Beginning the process of modernizing the other modules of ARMS,
starting with user research and technical discovery
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
