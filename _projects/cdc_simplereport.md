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
To respond to disease outbreaks quickly, public health departments need complete, reliable, and actionable disease incidence data. For example, during the COVID-19 pandemic, the test positivity rate informed policy interventions, such as mask guidance, stay-at-home orders, and limits on indoor activities. Simply put—better data enables public health departments to make informed decisions quicker, which helps all of us.

At the height of the COVID-19 pandemic, testing expanded outside of traditional health settings to facilities such as K-12 schools and retirement communities. However, collecting and sending accurate testing data in these settings was difficult—if it happened at all. Non-traditional point-of-care testing facilities typically lacked IT infrastructure to send data to public health departments. Many recorded test results on paper then faxed them to the appropriate department, a time-consuming process that was usually outside a test administrator's primary job. Patients were also less likely to provide demographic information in these unconventional settings, leading to incomplete and lower-quality data for health departments.

Adding to the complexity were health departments' differing requirements. As one interviewee who reports to multiple jurisdictions noted:

{% include callout.html
  type = "pullquote"
  content = "It's a challenge to do the test, put it on paper, then go back and enter it in both formats — for the county and state."
%}

Even when facilities did have tools to track patients and results, many lacked the ability to automatically report to their jurisdictions in the different formats that they required.

On the receiving end, public health departments had to process manual reports sent from a variety of locations, which took time and resulted in errors. This manual and cumbersome process made it difficult to act fast and stay informed.
{% endcapture %}

{% capture solution %}
**To strengthen the infrastructure of COVID-19 testing and reporting**, the Centers for Disease Control and Prevention (CDC) and the U.S. Digital Service launched a multi-year initiative focused on pandemic readiness and interoperability. We've supported this work by helping to launch and grow [SimpleReport]({{ page.project_url }}), a free tool that makes it easy to record results for rapid disease testing and quickly report data to public health departments.

SimpleReport is designed to be used as both a workflow and reporting tool for non-traditional and under-resourced test sites, regardless of whether or not they have a digital connection to a public health department's disease surveillance system. SimpleReport results are automatically sent to public health departments via a single point of connection called ReportStream, which is also part of this initiative. As one interviewee described the reporting process:

{% include callout.html
  type = "pullquote"
  content = "Going from what we were doing to this is awesome. It's very easy to use."
%}

SimpleReport sends test results to public health departments in the format and at the cadence that they request. SimpleReport also provides structured data to health departments, so they don't have to spend time on additional clean-up.

**After our team fully assumed SimpleReport management from our USDS partners, we focused on making the tool as easy to use as possible while expanding its functionality.** We enabled scaling by redesigning the account creation, login, and password reset experiences, which sped up onboarding while maintaining security. To prove the ability to support other diseases, we added test result recording for multiplex devices, which test for both COVID-19 and flu. We grew SimpleReport's reporting capabilities by adding and iterating on a feature that allows users to upload test results in bulk using a CSV file. Additionally, we eased reporting that facilities need to do beyond public health, including adding one-click results download and an analytics dashboard.

**We've maintained high performance** by implementing automated service monitoring, working closely with the CDC support team to resolve end-user issues, and providing 24/7 on-call engineering support. We use continuous integration and continuous deployment practices for secure and fast development—for example, when the code for a feature is tested and done, it's live in the actual application for users 20 minutes later. **We've also ensured SimpleReport meets high web accessibility standards (WCAG Level AA)** by integrating reviews in design and engineering workflow.

**As we continue to support ongoing COVID-19 reporting, we're expanding SimpleReport for use with additional infectious diseases beyond COVID-19 to ensure pandemic readiness.** We've worked with California's Department of Public Health to support the reporting of flu and respiratory syncytial virus (RSV) results from facilities who didn't have a way to report results electronically. We've also established a pilot with the Los Angeles County Department of Public Health to provide a reporting solution for organizations conducting HIV and STI testing. Additionally, we've created and circulated a communication plan to current and new SimpleReport users to explain and publicize the new functionality for additional diseases and provide an overview of how to report these results.

In addition to reducing the burden for non-traditional and under-resourced facilities who test for conditions besides COVID-19, this work ensures that SimpleReport has the flexibility necessary to be quickly deployed for the next pandemic. By building out and linking public health infrastructure where these connections didn't exist before, SimpleReport is fundamentally changing how disease incidence reporting happens in the U.S., laying the structural groundwork for efficient and effective responses to future health crises.
{% endcapture %}

{% capture results %}
- **Over 8.2 million tests** have been reported since launch (from January 2021 to April 2024)
- **Over 17,300 facilities** have reported tests through SimpleReport
- The tool has been used to test patients from **all 50 states**, as well as other U.S. territories and Canadian provinces
- **More than 2.3 million text messages** sent notifying patients of their test result
- SimpleReport was used as an example of a Data Modernization Initiative success story in a presentation to CDC Director Dr. Walensky for its "game-changing" work in Alaska
- Following a successful pilot with California, support for flu reporting launched in July 2023 and RSV reporting went live in January 2024, with **more than 1,150 facilities in five states** reporting over 206,000 flu test results and over 20,000 RSV test results
- **Support for HIV and STI reporting** is in pilot phase with the Los Angeles Community Health Project
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
