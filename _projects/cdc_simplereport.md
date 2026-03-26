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
  - "service delivery"
  - "research & design"
  - "software delivery"
  - "devops"
  - "cloud & platforms"
  - "data & analytics"
  - "apis"
  - "security & privacy"
  - "public health"
  - "leslie garner franklin"
  - "victor zapanta"
  - "laura king"
  - "rebecca lubitzmarchena"
  - "kenny nieh"
  - "maya benari"
  - "adam weber"
  - "emma stephenson"
  - "nathan carter"
  - "josh dorothy"
  - "jesse skeets"
  - "nick clyde"
  - "elisa lee"
  - "nick bristow"
  - "shashank khandelwal"
  - "chris cairns"
  - "phoebe espiritu"
  - "rin concordia"
  - "alis akers"
  - "zedd shmais"
  - "bob zhao"
  - "tim niehoff"
  - "dan sass"
  - "jayna wallace"
  - "merethe hansen"
  - "charlye tran"
  - "laura kerry"
  - "nick blake"
  - "sarah george hager"
  - "johanna delpino"
  - "boban ljuljdjurovic"
  - "ryan gaddis"
  - "tomi obikunle"
  - "mike brown"
  - "bobby wells"
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
  - "HTML / CSS"
  - "Storybook"
  - "Chromatic"
  - "U.S. Web Design System"
  - "Figma"
  - "Mural"
  - "Respondent"
  - "React in TypeScript with Apollo"
  - "Nightwatch"
  - "Cypress"
  - "Lighthouse"
  - "Java / Spring Boot"
  - "GraphQL"
  - "Liquibase"
  - "SmartyStreets"
  - "PostgreSQL"
  - "Terraform"
  - "Microsoft Azure"
  - "Docker"
  - "Okta"
  - "Experian"
  - "Twilio"
  - "SendGrid"
  - "Git / GitHub"
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
  - "Generative user research"
  - "Evaluative user research"
  - "Branding design"
  - "Visual design"
  - "Content strategy"
  - "Content design"
  - "Content guidelines"
  - "Plain-language writing"
  - "Responsive web design"
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
During the COVID-19 pandemic, public health departments faced the challenge of collecting diagnostic test results from an unprecedented number of new data sources, including non-traditional testing facilities like K-12 schools and nursing homes — many with no prior experience in public health reporting. We worked with the Centers for Disease Control and Prevention (CDC) to build and launch a time-saving tool that's made it easy for over 17,000 of these facilities to record and report over 8 million test results since November 2020. As we continue supporting CDC's COVID-19 reporting efforts, we're expanding this tool to streamline reporting for other infectious diseases.
{% endcapture %}

{% capture challenge %}
To respond to disease outbreaks quickly, public health departments need complete, reliable, and actionable disease incidence data. For example, during the COVID-19 pandemic, the test positivity rate informed policy interventions, such as mask guidance, stay-at-home orders, and limits on indoor activities. Simply put — better data enables public health departments to make informed decisions quicker, which helps all of us.

At the height of the COVID-19 pandemic, testing expanded outside of traditional health settings to facilities such as K-12 schools and retirement communities. However, collecting and sending accurate testing data in these settings was difficult — if it happened at all. Non-traditional point-of-care testing facilities typically lacked IT infrastructure to send data to public health departments. Many recorded test results on paper then faxed them to the appropriate department, a time-consuming process that was usually outside a test administrator's primary job. Patients were also less likely to provide demographic information in these unconventional settings, leading to incomplete and lower-quality data for health departments.

Adding to the complexity were health departments' differing requirements. As one interviewee who reports to multiple jurisdictions noted:

{% include callout.html
  type = "pullquote"
  content = "It's a challenge to do the test, put it on paper, then go back and enter it in both formats — for the county and state."
%}

Even when facilities did have tools to track patients and results, many lacked the ability to automatically report to their jurisdictions in the different formats that they required.

On the receiving end, public health departments had to process manual reports sent from a variety of locations, which took time and resulted in errors. This manual and cumbersome process made it difficult to act fast and stay informed.
{% endcapture %}

{% capture solution %}
**We helped CDC and the U.S. Digital Service (USDS, now U.S. DOGE Service) launch and grow [SimpleReport]({{ page.project_url }}),** a free tool that makes it easy for non-traditional testing sites to record rapid test results and report them to public health departments. The tool serves as both a workflow and reporting platform — sites use it to manage patients and results, and SimpleReport automatically sends structured data to health departments via ReportStream in whatever format and cadence each jurisdiction requires. No fax machines, no manual data entry, no duplicate reporting.

{% include callout.html
  type = "pullquote"
  content = "Going from what we were doing to this is awesome. It's very easy to use."
%}

**After assuming full management of SimpleReport from our USDS partners, we focused on making it easier to adopt at scale.** We redesigned the account creation, login, and password reset experiences to speed up onboarding while maintaining security. We added bulk CSV upload so facilities could report large volumes of results without entering them one at a time. And we built an analytics dashboard and one-click results download to reduce reporting burden beyond what goes to public health departments.

**We kept the platform reliable through continuous deployment and 24/7 on-call support.** Automated service monitoring and close coordination with CDC's support team kept issues from reaching end users. When a feature's code passes testing, it's live for users within 20 minutes. We also integrated accessibility reviews into design and engineering workflows to maintain Web Content Accessibility Guidelines (WCAG) Level AA compliance throughout.

**With the COVID-19 foundation in place, we expanded SimpleReport to cover additional infectious diseases.** We added support for multiplex devices that test for both COVID-19 and flu, then partnered with California's Department of Public Health to launch flu and respiratory syncytial virus (RSV) reporting for facilities that previously had no way to report electronically. We also established a pilot with the Los Angeles County Department of Public Health to support HIV and STI reporting — proving that the tool's modular design could adapt to new diseases without rebuilding the core platform.

**The result is public health reporting infrastructure that didn't exist before** — connecting thousands of facilities that were invisible to surveillance systems and giving them a path to report on whatever comes next. SimpleReport isn't just a COVID-era tool; it's the structural groundwork for faster, more complete responses to future health crises.
{% endcapture %}

{% capture results %}
- **Over 8.2 million tests** reported since launch (from January 2021 to April 2024)
- **Over 17,300 facilities** reporting tests through SimpleReport
- **All 50 states represented,** as well as other U.S. territories and Canadian provinces
- **More than 2.3 million text messages** sent notifying patients of their test results
- **Cited as a Data Modernization Initiative (DMI) success story** in a presentation to CDC Director Dr. Walensky for its "game-changing" work in Alaska
- **Support for flu reporting launched in July 2023** and RSV reporting went live in January 2024 following a successful pilot with California
- **More than 1,150 facilities in five states** have joined the flu and RSV pilot
- **Over 143,000 flu test results and over 4,200 RSV test results** reported through SimpleReport
- **Support for HIV reporting** is scheduled to go live in April 2024 with the Los Angeles Community Health Project
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
