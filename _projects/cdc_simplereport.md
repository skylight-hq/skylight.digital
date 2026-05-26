---
layout: default
title_tag: "Centers for Disease Control and Prevention"
title: "Simplifying disease testing and reporting for under-resourced sites"
permalink: /work/experience/cdc-simplereport/
image: /img/projects/cdc_simplereport/cdc-simplereport.svg
image_description: "A swab test being administered and recorded on a tablet."
feature_image: /img/projects/cdc_simplereport/cdc-simplereport.gif
feature_image_description: "Walkthrough of SimpleReport."
feature_image_shadow: true
order: 100
display: true
tags:
  - "Service delivery"
  - "Research & design"
  - "Software delivery"
  - "DevOps"
  - "Cloud & platforms"
  - "Data & analytics"
  - "APIs"
  - "Security & privacy"
  - "Public health"
excerpt: "A free tool that makes it easy for non-traditional and under-resourced facilities to record and report diagnostic test results to public health departments."
project_members:
  - laura-king
  - kenny-nieh
  - emma-stephenson
  - nathan-carter
  - rin-concordia
  - alis-akers
  - zedd-shmais
  - nick-clyde
  - bob-zhao
  - elisa-lee
  - dan-sass
  - jayna-wallace
  - merethe-hansen
  - laura-kerry
  - nick-blake
  - johanna-delpino
  - ryan-gaddis
  - tomi-obikunle
  - mike-brown
  - boban-ljuljdjurovic
  - leslie-garner-franklin
  - josh-dorothy
  - nick-bristow
  - chris-cairns
  - maya-benari
  - phoebe-espiritu
  - sarah-george-hager
  - shashank-khandelwal
  - rebecca-lubitzmarchena
  - tim-niehoff
  - jesse-skeets
  - charlye-tran
  - adam-weber
  - victor-zapanta
  - bobby-wells
technologies:
  - "HTML"
  - "CSS"
  - "Storybook"
  - "Chromatic"
  - "U.S. Web Design System"
  - "Figma"
  - "Mural"
  - "React"
  - "TypeScript"
  - "Apollo"
  - "Nightwatch"
  - "Cypress"
  - "Lighthouse"
  - "Java"
  - "Spring Boot"
  - "GraphQL"
  - "Liquibase"
  - "PostgreSQL"
  - "Terraform"
  - "Microsoft Azure"
  - "Docker"
  - "Okta"
  - "Twilio"
  - "SendGrid"
  - "Git"
  - "GitHub"
  - "ZenHub"
  - "SonarCloud"
  - "Dependabot"
  - "Snyk"
practices:
  - "Product management"
  - "Lean startup"
  - "Design system"
  - "Service design"
  - "User experience design"
  - "User research"
  - "Visual design"
  - "Content design"
  - "Responsive design"
  - "Accessibility design"
  - "Agile development"
  - "Rapid prototyping"
  - "Open-source development"
  - "DevSecOps"
  - "Data management"
  - "Identity and access management"
  - "User growth marketing"
news_posts:
  - title: "Building Software Tools That Saved Frontline COVID-19 Testers 400,000 Hours"
    url: https://www.usds.gov/impact-report/2024/covid-reporting/
  - title: "New COVID-19 reporting tool is another patch for the US's rickety health data system"
    url: https://www.theverge.com/22311478/rapid-covid-test-data-cdc-nursing-home-usds-arizona
  - title: "A Model for Participatory Public Digital Infrastructure"
    url: https://civicunrest.com/2022/08/10/model-for-participatory-tech
project_url: https://simplereport.gov
project_cta: "See the site"
source_code_url: https://github.com/CDCgov/prime-simplereport
---

{% capture summary %}
During COVID-19, public health departments had to collect test results from a flood of new data sources. K-12 schools, nursing homes, and other non-traditional sites — many with no experience in public health reporting — were suddenly part of the data pipeline. We worked with the Centers for Disease Control and Prevention (CDC) to build and launch a tool that made reporting easy for them. Since November 2020, over 17,000 facilities have recorded and reported over 8 million test results. We're now expanding the tool beyond COVID-19 to flu, RSV, and HIV reporting.
{% endcapture %}

{% capture challenge %}
To respond to disease outbreaks quickly, public health departments need complete, reliable, and actionable data. During COVID-19, the test positivity rate informed every policy decision — mask guidance, stay-at-home orders, limits on indoor activities. Better data leads to faster, better-informed public health action.

At the height of the pandemic, testing expanded outside traditional health settings to places like K-12 schools and retirement communities. Collecting accurate testing data in these settings was hard — if it happened at all. Non-traditional point-of-care testing facilities typically lacked the IT infrastructure to send data to public health departments. Many recorded test results on paper and faxed them in. That was time-consuming, error-prone, and usually outside a test administrator's primary job. Patients were also less likely to provide demographic information in these settings, leaving health departments with incomplete data.

Health departments' differing requirements added another layer. As one interviewee who reports to multiple jurisdictions put it:

{% include callout.html
  type = "pullquote"
  content = "It's a challenge to do the test, put it on paper, then go back and enter it in both formats — for the county and state."
%}

Even when facilities had tools to track patients and results, many couldn't automatically report to their jurisdictions in the formats each one required. On the receiving end, public health departments had to process manual reports from a variety of locations. That took time and introduced errors. The whole loop was too slow to act on.
{% endcapture %}

{% capture solution %}
We helped CDC and the U.S. Digital Service (USDS, now U.S. DOGE Service) launch and grow [SimpleReport]({{ page.project_url }}), a free tool that lets non-traditional testing sites record rapid test results and report them to public health departments. The tool is both a workflow and a reporting platform. Sites use it to manage patients and results, and SimpleReport automatically sends structured data to health departments via ReportStream — in whatever format and cadence each jurisdiction requires. No fax machines, no manual data entry, no duplicate reporting.

{% include callout.html
  type = "pullquote"
  content = "Going from what we were doing to this is awesome. It's very easy to use."
%}

Once we took over full management of SimpleReport from our USDS partners, the focus shifted to adoption at scale. **Onboarding was the growth bottleneck, not the testing workflow itself.** We redesigned the account creation, login, and password reset experiences to speed up onboarding while keeping security tight. We added bulk CSV upload so facilities could report large volumes without entering results one at a time. And we built an analytics dashboard and one-click results download to reduce reporting burden beyond what goes to public health departments.

**Reliability wasn't a feature — it was the reason facilities trusted the tool with patient records.** Automated service monitoring, continuous deployment, and 24/7 on-call support kept issues from reaching end users. When a feature's code passes testing, it's live for users within 20 minutes. We also built accessibility reviews into design and engineering workflows to maintain Web Content Accessibility Guidelines (WCAG) Level AA compliance throughout.

With the COVID-19 foundation in place, the team turned to a bigger question: could SimpleReport work for other diseases? **Multiplex support proved the foundation was reusable beyond COVID-19.** We added support for multiplex devices that test for both COVID-19 and flu. We then partnered with California's Department of Public Health to launch flu and respiratory syncytial virus (RSV) reporting for facilities that had no other way to report electronically. We also set up a pilot with the Los Angeles County Department of Public Health for HIV and sexually transmitted infection (STI) reporting. Each expansion proved the tool's modular design could adapt to new diseases without rebuilding the core platform.

The result is public health reporting infrastructure that didn't exist before. **It connects thousands of facilities that were invisible to surveillance systems** and gives them a path to report on whatever comes next. SimpleReport isn't just a COVID-era tool. It's the structural groundwork for faster, more complete responses to future health crises.
{% endcapture %}

{% capture results %}
- **Over 17,300 facilities** reporting tests through SimpleReport across **all 50 states,** as well as other U.S. territories and Canadian provinces
- **Over 8.2 million tests** reported since launch (from January 2021 to April 2024)
- **More than 2.3 million text messages** sent notifying patients of their test results
- **Cited as a Data Modernization Initiative (DMI) success story** in a presentation to CDC Director Dr. Walensky for its "game-changing" work in Alaska
- **Support for flu reporting launched in July 2023** and RSV reporting went live in January 2024 following a successful pilot with California
- **More than 1,150 facilities in five states** have joined the flu and RSV pilot, reporting **over 143,000 flu test results and over 4,200 RSV test results**
- **Support for HIV reporting** is scheduled to go live in April 2024 with the Los Angeles Community Health Project
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
