---
layout: default
title_tag: "Centers for Disease Control and Prevention"
title: "Surfacing actionable insights from electronic case reporting data"
permalink: /work/experience/cdc-dibbs-ecr-viewer/
image: /img/projects/cdc_dibbs_ecr_viewer/dibbs-ecr-viewer.svg
image_description: "Public health staff member viewing a stack of screens through a magnifying glass."
feature_image: /img/projects/cdc_dibbs_ecr_viewer/dibbs-ecr-viewer.gif
feature_image_description: "Walkthrough of eCR Viewer MVP."
feature_image_shadow: true
order: 120
display: true
tags:
  - "service delivery"
  - "research & design"
  - "product management"
  - "software delivery"
  - "legacy modernization"
  - "devops"
  - "cloud & platforms"
  - "data & analytics"
  - "apis"
  - "security & privacy"
  - "open government"
  - "public health"
  - "nick bristow"
  - "kenneth chow"
  - "mary crawford"
  - "gordon farrell"
  - "matt goldberg"
  - "janki kaneria"
  - "boban ljuljdjurovic"
  - "josh nygaard"
  - "emma stephenson"
  - "angela the"
  - "sarah tress"
  - "mary yeh"
excerpt: "An intuitive interface that helps public health staff quickly find actionable information from electronic case reporting files, improving case investigation workflows."
project_members:
  - nick-bristow
  - kenneth-chow
  - mary-crawford
  - gordon-farrell
  - matt-goldberg
  - janki-kaneria
  - boban-ljuljdjurovic
  - josh-nygaard
  - lina-roth
  - emma-stephenson
  - angela-the
  - sarah-tress
  - mary-yeh
technologies:
  - "Python"
  - "APIs"
  - "FHIR"
  - "Microservices"
  - "YAML"
  - "Git / GitHub"
  - "Terraform"
  - "Microsoft Azure"
  - "Azure DevOps"
  - "Azure Managed FHIR Server"
  - "Mural"
  - "Figma"
  - "Slack"
  - "Zoom"
  - "AWS"
  - "S3 Bucket"
  - "Amazon RDS for PostgreSQL"
  - "Elasticsearch"
  - "AWS Fargate"
  - "Rhapsody"
practices:
  - "Product management"
  - "User research"
  - "User experience design"
  - "Agile development"
  - "Rapid prototyping"
  - "API-first development"
  - "Data engineering"
  - "Data management"
  - "DevSecOps"
  - "Security / privacy compliance"
  - "Containerization"
  - "Cloud hosting"
  - "Hybrid-cloud architecture"
  - "Virtual collaboration"
project_url: https://dibbs.tools
project_cta: "See the site"
source_code_url: https://github.com/CDCgov/dibbs-ecr-viewer
news_posts:
---

{% capture summary %}
Public health departments struggle to use and sort through incoming electronic case reporting (eCR) data. As part of our Skylight engagement with the Centers for Disease Control and Prevention (CDC) and U.S. Digital Service (USDS, now U.S. DOGE Service), we built an intuitive interface that surfaces key information from eCR files to make them more useful for monitoring the spread of reportable conditions. The eCR Viewer is one component of a broader portfolio of [open-source tools](/work/experience/cdc-dibbs/) designed to modernize public health data infrastructure.
{% endcapture %}

{% capture challenge %}
To reduce the burden of manual reporting on healthcare providers, the Association of Public Health Laboratories (APHL), the Council of State and Territorial Epidemiologists (CSTE), and the CDC established an automated way to send case report information from electronic health records (EHRs) to public health departments.

This process, known as eCR, is intended to make disease reporting faster and easier by replacing manual case reports that are traditionally sent by mail, phone, and fax. When data corresponding to a reportable condition (e.g., COVID-19) is entered into a patient's EHR, a case report is automatically generated and sent to the appropriate public health agencies so they can record, track, and investigate individual cases. This automated approach has the potential to significantly streamline both the case ascertainment and case investigation process.

However, public health departments face significant barriers to integrating eCR into their existing workflows. When an eCR file arrives, it contains far more than information on the reportable condition — it also includes data from a patient's entire health record, such as demographics, diagnoses, comorbidities, occupation, immunizations, and medications. The volume of information makes it difficult for public health staff to understand why the eCR was sent and where it should go next. Additionally, eCR data doesn't come in an easily-readable format. Each eCR file contains pages and pages of data that don't appear in a consistent order or with consistent formatting. Because of these formatting challenges and the overwhelming volume of information, it can take significant time and effort for public health staff to review incoming eCRs.

{% include callout.html
  type = "pullquote"
  content = "You can just scroll on forever for some of these eCRs and never find what you're looking for."
%}

Finding critical information from eCR data can feel like looking for a needle in a haystack. Because eCR data is so difficult to sort through, many public health jurisdictions still choose to manually contact healthcare providers for clinical information — a time-consuming and onerous process for both healthcare providers and public health departments. To fulfill the promise of eCR, public health staff need to be able to quickly find key information from incoming eCR data so they can take timely public health action.
{% endcapture %}

{% capture solution %}
**Building an intuitive interface for public health data.** As part of the CDC and USDS partnership focused on modernizing pandemic preparedness and disease surveillance infrastructure, Skylight developed the eCR Viewer — an intuitive interface that surfaces a summary of condition-specific information in a more readable format at the top of the eCR file. Using the eCR Viewer, public health staff can easily find data relevant to the reportable condition. The tool orders and organizes data consistently regardless of which electronic medical record system generated the eCR, making it significantly easier for public health staff to find clinical information for case investigation and reducing the need to manually contact healthcare providers.

**Conducting research and building the solution.** The Skylight team conducted generative research with staff at public health departments to understand how eCR fits into case ascertainment and case investigation workflows. We developed concept designs of the eCR Viewer and gathered feedback from users to develop a lightweight minimum viable product (MVP). Building on this research foundation, we established a product vision and measurement plan to ensure the eCR Viewer would meet the intended impact for time savings and user adoption.

**Integrating with existing systems and piloting.** We partnered with the General Dynamics Information Technology (GDIT) team to integrate the eCR Viewer into the CDC's National Electronic Disease Surveillance System (NEDSS) Base System (NBS) with pilot jurisdictions. We identified pilot partners including the states of Maine and Tennessee to test and validate the eCR Viewer in their public health data workflows. Additionally, we established a separate pilot partnership with the city of Philadelphia to evaluate using the eCR Viewer outside of a surveillance system as a web-based tool hosted by CDC.

Initial results from our research efforts have been promising:

{% include callout.html
  type = "pullquote"
  content = "It is incredibly challenging to show and teach and get end users to use eCR when you can't view all the data. This viewer will be absolutely a game changer to get people to understand the value of eCR."
  cite_name = "Epidemiologist"
%}

**Pilots commenced with jurisdictions in summer 2024** to test the eCR Viewer in a production data environment and further validate the tool's downstream public health impact. Our aim is to scale the eCR Viewer across a wide range of jurisdictions to turn eCR into the go-to data source for case ascertainment and investigation.
{% endcapture %}

{% capture results %}

- **Completed design and development of an eCR Viewer MVP** and validated its potential time savings with public health staff
- **eCR processing reduced from 25 clicks to 5 clicks** — based on user testing with a lightweight MVP, the eCR Viewer enables staff to process a singular eCR file for case ascertainment in five clicks rather than twenty-five clicks
- **Queue processing time reduced from 4.5 months to one week** — based on user journey mapping in Maine, the eCR Viewer enables staff to process all eCR files in a queue (over 5,000) in just one week rather than 4.5 months
- **Three pilot jurisdictions committed** to testing the eCR Viewer in production environments, with kickoff commencing in summer 2024

{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
