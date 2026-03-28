---
layout: default
title_tag: "State of Connecticut"
title: "Testing a faster way to keep families informed about child care subsidies"
permalink: /work/experience/ct-oec-care4kids-auto-notifier/
image: /img/projects/ct_oec_care4kids_auto_notifier/care4kids-auto-notifier.svg
image_description: "A family with young children sitting together, with a mobile phone in the background showing a green status checkmark."
feature_image:
feature_image_description:
feature_image_shadow:
order: 1300
display: true
tags:
  - "service delivery"
  - "research & design"
  - "product management"
  - "software delivery"
  - "early childhood"
  - "social safety net"
  - "economic development"
  - "abby raskin"
  - "ashley treni"
  - "victoria suwardiman"
  - "cailyn hansen"
  - "gabriel ramirez"
  - "marvo dolor"
  - "amelia wellers"
excerpt: "An SMS-based pilot that helped families understand their Care 4 Kids renewal status while revealing broader opportunities to improve the child care subsidy experience in Connecticut."
project_members:
  - abby-raskin
  - ashley-treni
  - victoria-suwardiman
  - cailyn-hansen
  - gabriel-ramirez
  - marvo-dolor
  - amelia-wellers
technologies:
  - "Twilio"
  - "Ruby / Rails"
  - "MySQL"
  - "Git / GitHub"
practices:
  - "Product management"
  - "User research"
  - "Collaborative design workshops"
  - "Surveys"
  - "Agile development"
  - "Rapid prototyping"
  - "DevSecOps"
news_posts:
  - title: "Child Care Providers Wait for Payments as State Transitions to New Care4Kids Computer System"
    url: https://ctnewsjunkie.com/2019/01/18/20190118_child_care_providers_wait_for_payments_as_state_transitions_to/
  - title: "CT child care subsidy backlog slowly getting paid"
    url: https://www.ctpost.com/local/article/CT-child-care-subsidy-backlog-slowly-getting-paid-13734815.php
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
As part of our [digital transformation work](/work/experience/ct-oec-digital-transformation/) with the Connecticut Office of Early Childhood (OEC), we designed and tested a lightweight SMS-based pilot that helped families track the status of their Care 4 Kids child care subsidy renewals. Co-created with OEC and United Way, the pilot improved transparency for nearly 180 families while generating practical insight into how the broader renewal process could work better.
{% endcapture %}

{% capture challenge %}
Care 4 Kids helps low- to moderate-income families in Connecticut pay for child care, but the renewal experience had become frustrating and opaque for many applicants. A combination of factors — including the rollout of a new case management system, a 20% increase in new applications, and thousands of reauthorizations coming due simultaneously — contributed to a growing backlog, a high volume of incomplete applications, and widespread confusion about application status.

For families, the problem was fundamentally about uncertainty. After submitting renewal materials, applicants often had no way to confirm whether their documents had been received or what would happen next. Many were asked to resend materials, use multiple submission methods, or wait for long periods without any acknowledgment. Providers were affected too — delays in the subsidy process created financial stress for child care workers who depended on timely payments.

{% include callout.html
  type = "pullquote"
  content = "Mailed it in originally. They said they never received it, sent again. They never received it so I did everything at that point — fax and upload. Had to do it all over again after that...still hadn't received anything back from Care 4 Kids at that point."
  cite_name = "Parent"
%}

After conducting user research and interviews, we found that communication was the clearest pain point in the renewal experience. OEC and United Way were open to testing a practical, low-risk improvement that could reduce uncertainty for families while also helping the program learn where its communication and process design needed to change.
{% endcapture %}

{% capture solution %}
The most immediate need families described was simple: knowing whether their renewal documents had been received and what to expect next. **We designed a pilot centered on that single, high-value interaction** — an SMS-based notification tool that alerted parents when United Way received documents related to their Care 4 Kids application. Participants could also text at any time to request information about processing timelines.

Co-designed with OEC and United Way, the pilot was deliberately lightweight. **We built the minimum viable product in four weeks** using Twilio and Ruby on Rails, then launched and live-tested it with nearly 180 participants over a three-month period. The rapid timeline reflected a deliberate strategy: rather than building a comprehensive system, we tested whether a focused communication intervention could meaningfully improve the applicant experience.

Throughout the pilot, we collected structured feedback to measure impact. **We used phone, text, and online surveys to gather data before, during, and after the intervention** — tracking not just whether families found the texts helpful, but whether the pilot revealed broader patterns in how the renewal process broke down.

The approach tested two hypotheses at once. The first was whether text-message updates could reduce uncertainty and improve satisfaction for individual families. The second was whether a lightweight intervention could **surface systemic opportunities to improve trust, clarity, and service delivery** across the entire renewal process — insights that would be harder to uncover through research alone.
{% endcapture %}

{% capture results %}
- **Built and launched an SMS notification pilot in four weeks,** testing a low-risk approach to improving communication for Care 4 Kids renewal applicants
- **Increased parent confidence by 19%** that renewal documents were being received by United Way
- **Improved average satisfaction** with Care 4 Kids communication among surveyed pilot participants
- **Generated actionable recommendations** to address communication gaps, process confusion, and service design issues in the broader application submission workflow

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
