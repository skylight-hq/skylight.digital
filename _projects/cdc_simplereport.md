---
layout: default
title_tag: Centers for Disease Control and Prevention
title: Modernizing COVID-19 testing and reporting in non-traditional healthcare settings
permalink: /work/experience/cdc-simplereport/
image: /img/projects/cdc_simplereport/cdc-simplereport.svg
image_description: A swab test being administered and recorded on a tablet
feature_image:
feature_image_description:
feature_image_shadow:
order: 0
display: true
tags: [service delivery, research & design, software delivery, devops, cloud & platforms, data & analytics, apis, security & privacy, healthcare, leslie-garner-franklin, victor-zapanta, laura-king, rebecca-lubitzmarchena, kenny-nieh, maya-benari, adam-weber, emma-stephenson, nathan-carter, josh-dorothy, jesse-skeets, nick-clyde, elisa-lee, nick-bristow, shashank-khandelwal, chris-cairns, phoebe-espiritu]
excerpt: A free tool that makes it easy for COVID-19 testing sites to record results for rapid point-of-care tests and quickly report data to public health departments.
project_members:
  - leslie-garner-franklin
  - victor-zapanta
  - laura-king
  - rebecca-lubitzmarchena
  - kenny-nieh
  - maya-benari
  - adam-weber
  - emma-stephenson
  - nathan-carter
  - josh-dorothy
  - jesse-skeets
  - nick-clyde
  - elisa-lee
  - nick-bristow
  - shashank-khandelwal
  - chris-cairns
  - phoebe-espiritu
technologies:
  - HTML / CSS
  - Storybook
  - Chromatic
  - U.S. Web Design System
  - Figma
  - React in TypeScript with Apollo
  - Nightwatch
  - Java / Spring Boot
  - GraphQL
  - Liquibase
  - SmartyStreets
  - PostgreSQL
  - Terraform
  - Microsoft Azure
  - Docker
  - Okta
  - Experian
  - Twilio
  - SendGrid
  - GitHub
  - SonarCloud
practices:
  - Product management
  - Lean startup
  - Design system
  - Service design
  - User experience design
  - Generative user research
  - Evaluative user research
  - Branding design
  - Visual design
  - Content strategy
  - Content design
  - Content guidelines
  - Plain-language writing
  - Responsive web design
  - Accessibility design
  - Agile development
  - Rapid prototyping
  - Open-source development
  - DevSecOps
  - Data management
  - Identity and access management
  - User growth marketing
news_posts:
  - title: New COVID-19 reporting tool is another patch for the US's rickety health data system
    url: https://www.theverge.com/22311478/rapid-covid-test-data-cdc-nursing-home-usds-arizona
project_url: https://simplereport.gov
project_cta: See the site
source_code_url: https://github.com/CDCgov/prime-simplereport
---

{% capture summary %}
  <p>
    COVID-19 turned places like schools and nursing homes into testing sites. We worked with the CDC to launch a free, time-saving tool that makes it easy for these non-traditional sites to record results for rapid point-of-care tests and quickly report critical data to public health departments.
  </p>
{% endcapture %}

{% capture challenge %}
  <p>
    To respond quickly to COVID-19, public health departments need complete, reliable, and actionable disease incidence data. The COVID-19 positivity rate informs policy interventions, such as mask guidance, stay-at-home orders, limits on indoor activities, or the closures of non-essential businesses.
  </p>

  <p>
    The scope of the pandemic meant hospitals, clinics, and doctors offices were unable to handle all the necessary testing. Some of it needed to be moved to non-traditional point-of-care (POC) testing facilities, such as K-12 schools, retirement communities,  and correctional facilities. However, collecting and sending accurate testing data in these settings is often difficult. At these sites, reporting can be haphazard and labor-intensive — if it happens at all. Non-traditional POC testing facilities often lack IT infrastructure to send data to public health departments. Reporting is done on paper and then faxed to the appropriate department. The unconventional nature of these testing facilities can also create discomfort for people who are asked to share their demographic information, leading to incomplete and lower-quality data for health departments.
  </p>

  <p>
    Even when using existing reporting tools (for example, the National Healthcare Safety Network), testing sites often manually track test results and later input them into the system for submission to public health departments.
  </p>

  <p>
    Existing tools in this space are typically built for medical professionals, whereas individuals who conduct POC, rapid COVID-19 testing aren't always familiar with the latest technologies, and testing isn't their primary job. As one interviewee noted:
  </p>

{% include callout.html
  type = "pullquote"
  content = "It's a challenge to do the test, put it on paper, then go back and enter it in both formats — for the county and state."
%}

  <p>
    On the receiving end, public health departments have to process manual reports sent from a variety of locations — a time-consuming and error-prone process. This can make it difficult to act fast, particularly in cases that require follow-up and contact tracing. Simply put: Better data enables public health departments to make informed decisions quicker, which helps all of us.
  </p>
{% endcapture %}

{% capture solution %}
  <p>
    To strengthen COVID-19 testing data, the Centers for Disease Control and Prevention (CDC) and the U.S. Digital Service (USDS) launched a multi-year collaboration called the <a href="https://www.cdc.gov/surveillance/pdfs/PRIME_1-sheet_single-page.pdf">Pandemic-Ready Interoperability Modernization Effort</a> (PRIME). Skylight's been supporting this work in partnership with USDS by helping launch <a href="{{ page.project_url }}">SimpleReport</a>, a free tool that makes it easy for non-traditional COVID-19 testing sites, such as schools, jails, and nursing homes, to record results for rapid POC tests and quickly report data to public health departments.
  </p>

  <p>
    SimpleReport is designed to be used as both a workflow and reporting tool for any POC test, regardless of whether or not it has a digital connection. This eliminates the need for POC testing sites to invest in IT or systems that won't have broad, long-term use. SimpleReport results are automatically sent to public health departments via a single point of connection called ReportStream, which is also part of PRIME. SimpleReport results are delivered in the format, and at the cadence, of public health requests, leading to a more accurate data sample. Not only that, SimpleReport provides structured data to health departments, so they don't have to spend time on additional clean-up.
  </p>

  <p>
    Our team's focused on continually improving the tool by:
  </p>

  <ul>
    <li>
      Building, designing, and launching the app's landing page within weeks to make sure any testing site interested in SimpleReport had all the necessary info to sign up
    </li>
    <li>
      Developing a new patient experience feature for the product, allowing patients to complete their own pre-screening questions, thereby providing improved privacy for patients and more complete data for health departments
    </li>
    <li>
      Building out the app's mobile experience
    </li>
    <li>
      Redesigning the account creation, login, and password reset experience to massively speed up the onboarding process
    </li>
    <li>
      Providing research and content support to ReportStream, a cloud-based data routing and cleaning tool, to improve the experience onboarding new states to the product
    </li>
    <li>
      Supporting PRIME-wide communications by creating messages and tools they can use to frame the problem and position their solutions with a broader audience
    </li>
  </ul>

  <p>
    We believe getting more organizations and facilities to use SimpleReport is critical to providing more timely, accurate, and automated COVID-19 data for public health action and emergency response. As one interviewee described it:
  </p>

{% include callout.html
  type = "pullquote"
  content = "Going from what we were doing to this is awesome. It's very easy to use."
%}

  <p>
    SimpleReport also provides longer term opportunities for more equitable service by improving race, gender, and ethnicity standards in reporting. We're testing concepts intended to improve patient demographics data by having patients enter their own information rather than responding to a verbal questionnaire. In addition, all patient-facing content will be available in Spanish.
  </p>

  <p>
    By building out and linking public health infrastructure where these connections didn't exist before, SimpleReport and ReportStream are fundamentally changing how disease incidence reporting is happening in the U.S. These tools are laying the structural groundwork for efficient and effective responses to future health crises.
  </p>
{% endcapture %}

{% capture results %}
  <ul>
    <li>
      Over 85,000 tests have been performed since launch (Jan–Jun 2021)
    </li>
    <li>
      Over 400 organizations (supporting over 700 testing facilities)
    </li>
    <li>
      Users describe how easy it is to use
    </li>
    <li>
      Saves an estimated three minutes of manual reporting per test, which means results are getting reported more efficiently
    </li>
  </ul>
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
