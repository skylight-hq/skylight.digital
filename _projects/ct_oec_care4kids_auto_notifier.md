---
layout: default
title_tag: State of Connecticut
title: Piloting solutions that make it easier for families to access affordable child care
permalink: /work/experience/ct-oec-care4kids-auto-notifier/
image: /img/projects/ct_oec_care4kids_auto_notifier/care4kids-auto-notifier.svg
image_description: Family with young children sitting together with a mobile phone in the background showing a green status checkmark.
feature_image:
feature_image_description:
feature_image_shadow:
order: 1300
display: true
tags: [service delivery, research & design, product management, software delivery, early childhood, social safety net, economic development, abby raskin, ashley treni, victoria suwardiman, cailyn hansen, gabriel ramirez, marvo dolor, amelia wellers]
excerpt: An SMS-based notification tool launched to better support the needs and understand the pain points of families seeking help to pay for child care in Connecticut.
project_members:
  - abby-raskin
  - ashley-treni
  - victoria-suwardiman
  - cailyn-hansen
  - gabriel-ramirez
  - marvo-dolor
  - amelia-wellers
technologies:
  - Twilio
  - Ruby / Rails
  - MySQL
  - Git / GitHub
practices:
  - Product management
  - User research
  - Collaborative design workshops
  - Surveys
  - Agile development
  - Rapid prototyping
  - DevSecOps
news_posts:
  - title: CT child care subsidy backlog slowly getting paid
    url: https://www.ctpost.com/local/article/CT-child-care-subsidy-backlog-slowly-getting-paid-13734815.php
project_url:
project_cta:
source_code_url: https://github.com/ctoec/care-4-kids-auto-notifier
---

{% capture summary %}
The Care 4 Kids program, sponsored by the Office of Early Childhood (OEC)
and administered by United Way, seeks to make child care affordable for
children and their families in Connecticut. To support their efforts to improve
the subsidy application process for children and families, we worked with OEC
and United Way to co-design a process and system for sending text messages to
a subset of families applying to renew their subsidy benefits. The pilot served
to test the value of a lightweight solution to improve transparency and confidence
in the application process, while providing insight into the broader needs of the
program and its stakeholders.
{% endcapture %}

{% capture challenge %}
Care 4 Kids is a program sponsored by OEC and run by United Way that helps
low- to moderate-income families in the state pay for child care. To participate
in the program, families and providers must meet specific eligibility and
application requirements

A number of factors, including a new case management system, created a growing
application backlog and a high percentage of incomplete applications and ineligible
applicants entering the system. Both families and providers who rely on Care 4 Kids
subsidies were becoming increasingly frustrated due to long wait times and
lack of transparency into the process of renewing their benefits. United Way was
open to experimenting with new ways to improve the processing time as well as
increasing trust and confidence in the application process.

After conducting user research and interviews to understand problems and needs
more deeply, several critical issues became clear around communication and
status updates for applicants that helped further inform our solution.

{% include callout.html
  type = "pullquote"
  content = "Mailed it in originally. They said they never received it, sent again. They never received it so I did everything at that point — fax and upload. Had to do it all over again after that...still hadn't received anything back from Care 4 Kids at that point."
  cite_name = "Parent"
%}
{% endcapture %}

{% capture solution %}
Our goal was to identify solutions to user pain points that could be tested and
refined quickly while providing the most impact to Care 4 Kids applicants
(families and children). We aimed to make it easier for families
to get insights into the status of their applications, to increase parent
satisfaction, and improve some of the existing challenges with the backlog.

To do so, we built an agile pilot to support sending application renewal status
updates. Co-designed with OEC and United Way, the pilot featured a SMS-based
notification tool that let parents know when United Way received documents
relevant to their Care 4 Kids application. Parents in this pilot could also
request and receive information about application processing timelines via
text at any time.

We built a minimum viable product within four weeks, then live-tested and
implemented a pilot with nearly 180 participants over a three-month period.
We also conducted phone, text, and online surveys before, during, and after the
intervention period to collect feedback from users.
{% endcapture %}

{% capture results %}
- Launched agile pilot project to build and test SMS-based notification tool
- On a scale of 1–5 where 5 means the greatest satisfaction, surveyed pilot
  participants expressed an overall increase in average satisfaction rating
  from Care 4 Kids communication
- Parents expressed a 19% increase in confidence that documents were
  being received by United Way
- Provided larger-scale recommendations to address areas where pilot results shed
  light on additional gaps, confusion, and communications needs in the application
  submission process

{% include callout.html
  type = "pullquote"
  content = "[I] thought messages were very helpful. You never know when Care 4 Kids receives documents, so it was great to know. Very convenient!"
  cite_name = "Pilot participant"
%}
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
