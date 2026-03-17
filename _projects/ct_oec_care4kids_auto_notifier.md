---
layout: default
title_tag: State of Connecticut
title: Piloting solutions that make it easier for families to access affordable child care
permalink: /work/experience/ct-oec-care4kids-auto-notifier/
image: /img/projects/ct_oec_care4kids_auto_notifier/care4kids-auto-notifier.svg
image_description: A family with young children sitting together, with a mobile phone in the background showing a green status checkmark.
feature_image:
feature_image_description:
feature_image_shadow:
order: 1300
display: true
tags: [service delivery, research & design, product management, software delivery, early childhood, social safety net, economic development, abby raskin, ashley treni, victoria suwardiman, cailyn hansen, gabriel ramirez, marvo dolor, amelia wellers]
excerpt: An SMS-based pilot that helped families better understand their Care 4 Kids renewal status while revealing broader opportunities to improve the child care subsidy experience in Connecticut.
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
The Care 4 Kids program, sponsored by the Office of Early Childhood (OEC) and administered by United Way, helps eligible families in Connecticut afford child care. To support efforts to improve the subsidy renewal experience, we partnered with OEC and United Way to design and test a lightweight SMS-based notification pilot. The pilot aimed to improve transparency, reduce uncertainty for families, and generate practical insight into how the broader application process could work better.
{% endcapture %}

{% capture challenge %}
Care 4 Kids plays an important role in helping low- to moderate-income families pay for child care, but renewing benefits had become frustrating and difficult for many applicants.

A combination of factors — including the rollout of a new case management system — contributed to a growing application backlog, a high volume of incomplete applications, and confusion about application status. Families often had little visibility into whether their renewal materials had been received or what would happen next. Providers were also affected, since delays and uncertainty in the subsidy process created stress for the families they served.

After conducting user research and interviews, we found that communication was one of the clearest pain points in the renewal experience. Families were often asked to resend materials, use multiple submission methods, or wait long periods without confirmation that anything had been received.

{% include callout.html
  type = "pullquote"
  content = "Mailed it in originally. They said they never received it, sent again. They never received it so I did everything at that point — fax and upload. Had to do it all over again after that...still hadn't received anything back from Care 4 Kids at that point."
  cite_name = "Parent"
%}

OEC and United Way were open to testing practical, low-risk improvements that could reduce uncertainty for families while also helping the program learn where communication and process design needed to improve.
{% endcapture %}

{% capture solution %}
We focused on identifying a solution that could be designed, tested, and refined quickly while addressing one of the most immediate needs families described: knowing whether their renewal documents had been received and what to expect next.

In response, we designed and launched a pilot centered on application renewal status updates. Co-designed with OEC and United Way, the pilot used an SMS-based notification tool to alert parents when United Way received documents related to their Care 4 Kids application. Participants could also request and receive information about processing timelines by text at any time.

We built the minimum viable product in four weeks, then launched and live-tested the pilot with nearly 180 participants over a three-month period. Throughout the intervention, we used phone, text, and online surveys to collect feedback before, during, and after the pilot.

This approach allowed us to test not only whether text-message updates improved the applicant experience, but also whether a lightweight communication intervention could reveal broader opportunities to improve trust, clarity, and service delivery across the renewal process.
{% endcapture %}

{% capture results %}
- Launched a pilot project to build and test an SMS-based notification tool for Care 4 Kids renewal applicants
- Increased average satisfaction with Care 4 Kids communication among surveyed pilot participants
- Increased parent confidence by 19% that documents were being received by United Way
- Generated broader recommendations to address additional communication gaps, confusion, and service design issues in the application submission process

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
