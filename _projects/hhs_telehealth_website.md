---
layout: default
title_tag: U.S. Department of Health and Human Services
title: Advancing nationwide adoption of telehealth in response to COVID-19
permalink: /work/experience/hhs-telehealth-website/
redirect_from:
  - /work/experience/hhs-telehealth/
image: /img/projects/hhs_telehealth_website/telehealth.svg
image_description: Phone screen with telehealth session underway.
feature_image:
feature_image_description:
feature_image_shadow:
order: 2
display: true
tags: [service delivery, research & design, devops, healthcare, suzanne chapman, abby raskin, victor zapanta, rebecca lubitzmarchena, nick bristow, lara kohl, ashley treni, maya benari, gabriel ramirez, chris cairns]
excerpt: To help medical providers and the public navigate telehealth information and resources during the COVID-19 public health emergency and beyond, we launched a site to do just that.
project_members:
  - suzanne-chapman
  - abby-raskin
  - victor-zapanta
  - rebecca-lubitzmarchena
  - nick-bristow
  - lara-kohl
  - ashley-treni
  - maya-benari
  - gabriel-ramirez
  - chris-cairns
technologies:
  - HTML / CSS
  - U.S. Web Design System
  - Sketch
  - InVision
  - JavaScript
  - Jekyll
  - Ruby
  - Node
  - Lighthouse
  - GitHub Actions
  - Amazon Web Services
  - Google Analytics
  - Touchpoints
  - Git / GitHub
practices:
  - User research
  - User experience design
  - Visual design
  - Usability testing
  - Content strategy
  - Content design
  - Plain-language writing
  - Content guidelines
  - Responsive web design
  - Moderated user research
  - Unmoderated user research
  - Rapid prototyping
  - Agile development
  - DevOps
news_posts:
  - title: "COVID-19 &#124; Five Things to Know About Telehealth During the COVID-19 Pandemic"
    url: https://youtube.com/embed/1gK1dfWUKsA?rel=0
  - title: Health Providers&#58; Join the Telehealth Revolution
    url: https://www.hiv.gov/blog/health-providers-join-telehealth-revolution
  - title: Product lessons from the front lines of COVID-19 civic tech response
    url: https://digital.gov/2020/10/16/product-lessons-from-the-front-lines-of-covid-19-civic-tech-response/
project_url: https://telehealth.hhs.gov/
project_cta: See the site
source_code_url:
---

{% capture summary %}
Under the nationwide COVID-19 emergency declaration, telehealth plays a significant
role in the nation's healthcare system, allowing patients to access medical care from home.

New and rapidly-evolving policies during the crisis expedited telehealth coverage and
availability, along with the need for information about how to provide or use it.

Our team worked with the Human Resources and Services Administration (HRSA),
partners across the U.S. Department of Health and Human Services (HHS),
and the Presidential Innovation Fellows, to translate the latest guidelines and best
practices into plain-language content for the 1M+ healthcare providers and 300M+ patients
across the U.S.
{% endcapture %}

{% capture challenge %}
The pandemic has created an unprecedented strain on the country's medical system.

Telehealth, medical care that doesn't require in-person contact between medical workers
and patients, can protect healthcare providers and the public from unnecessary exposure
to disease. Remote healthcare is a convenient option for many people even under ordinary
circumstances, but it's an especially important tool during a public health crisis.

New government policies and flexibilities broaden how telehealth is delivered and what's
covered during the emergency period, but the information about these quickly-evolving
options isn't always easy to find or understand.

The urgent need to disseminate information during the public health emergency necessitated
an unusually tight timeline for launching this work; our challenge was to quickly
centralize the most relevant information so that providers and the public could
understand whether telehealth meets their needs and how to take advantage of it.
{% endcapture %}

{% capture solution %}
Our team quickly moved from concept to working code. In just a few weeks, we launched
[Telehealth.HHS.gov](https://telehealth.hhs.gov/) — a website to help medical
providers and the public ("patients") navigate telehealth options in the midst of a peaking pandemic.

Luckily, we weren't starting <em>completely</em> from scratch. We leveraged robust open-source tools
(such as the U.S. Web Design System), proven digital delivery best practices like user-centered
design, and our team's combined years of experience launching public digital services (and maybe
a bit of adrenaline!).

To reach this solution we:

- Interviewed physicians and members of the public (people who might use telehealth as patients)
to understand their familiarity with telehealth, where they go for information today, and
potential barriers to providing or using telehealth
- Prioritized content, validated early prototypes, and defined an initial product direction in
line with business needs
- Consulted subject-matter experts for feedback and content reviews- i>
Ran moderated and unmoderated user research studies to further validate and iterate on designs
and content as we approached launch day
- Drafted a content guide alongside the product itself to make sure we held ourselves to high-quality
content standards, even at our rapid pace (and to guide future content development)

Following the initial launch, we revised and released new content, such as:

- Best-practice guides for providers on specialized topic areas, including telehealth in emergency
departments and direct-to-consumer telehealth
- Tips for finding free or low-cost telehealth services through a health center
- Guidance on how to improve telehealth access, equity, and accessibility
{% endcapture %}

{% capture results %}
- Designed and built the first iteration of Telehealth.HHS.gov within a few weeks
- Held interviews and unmoderated research studies with over 75 participants ahead of the first launch
- 75% of all responses to "Is this page useful?" survey have been "yes"
- Successfully transitioned the site and scope of our services to a large contractor
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
