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
project_cta: "See the tools"
source_code_url: https://github.com/CDCgov/dibbs-ecr-viewer
news_posts:
---

{% capture summary %}
Public health departments struggle to sort through incoming electronic case reporting (eCR) data to find the information they need for case investigation. As part of the [Data Integration Building Blocks (DIBBs)](/work/experience/cdc-dibbs/) engagement with the Centers for Disease Control and Prevention (CDC) and U.S. Digital Service (USDS, now U.S. DOGE Service), we built the eCR Viewer — an intuitive interface that surfaces key information from eCR files, making them more useful for monitoring the spread of reportable conditions.
{% endcapture %}

{% capture challenge %}
To reduce the burden of manual reporting on healthcare providers, the Association of Public Health Laboratories (APHL), the Council of State and Territorial Epidemiologists (CSTE), and the CDC established an automated way to send case report information from electronic health records (EHRs) to public health departments.

This process, known as eCR, is intended to make disease reporting faster and easier by replacing manual case reports that are traditionally sent by mail, phone, and fax. When data corresponding to a reportable condition (e.g., COVID-19) is entered into a patient's EHR, a case report is automatically generated and sent to the appropriate public health agencies so they can record, track, and investigate individual cases. This automated approach has the potential to significantly streamline both the case ascertainment and case investigation process.

Implementation progress continued in 2024, with 53% of jurisdictions now receiving eCR data for at least three-quarters of their reportable conditions. However, many public health departments still face barriers to integrating eCR into their existing workflows. The volume of information in each file — which includes the patient's entire health record, not just the reportable condition — makes it difficult for staff to figure out why the eCR was sent and where it should go next. Adding to the challenge, eCR data is structured for computer-to-computer communication and doesn't arrive in a format that's easy for humans to read. Because of these formatting challenges and the overwhelming volume of data, it can take significant time and effort for public health staff to review incoming eCRs.

{% include callout.html
  type = "pullquote"
  content = "You can just scroll on forever for some of these eCRs and never find what you're looking for."
%}

Finding critical information from eCR data can feel like looking for a needle in a haystack. Because eCR data is so difficult to sort through, many public health jurisdictions still choose to manually contact healthcare providers for clinical information — a time-consuming and onerous process for both healthcare providers and public health departments. To fulfill the promise of eCR, public health staff need to be able to quickly find key information from incoming eCR data so they can take timely public health action.
{% endcapture %}

{% capture solution %}
**Skylight developed the eCR Viewer as part of a multi-year CDC and USDS [initiative focused on pandemic readiness and interoperability](https://www.cdc.gov/data-modernization/php/index.html)** to make eCR data more usable for public health staff. The tool surfaces a summary of condition-specific information in a readable format at the top of each eCR file, so staff can quickly find what's relevant to the reportable condition. It also orders and organizes data consistently regardless of which electronic medical record system generated the eCR — making it significantly easier to find clinical information for case investigation and reducing the need to manually contact healthcare providers.

**User research revealed a clear design principle: surface the right information first.** The team conducted discovery with public health staff and found that the core problem wasn't the volume of eCR data itself — it was that condition-relevant information was buried deep inside each file with no consistent structure. That insight drove the eCR Viewer's central design decision: present a condition-specific summary at the top of every eCR in a readable, consistent format. The team tested concept designs with users, iterated toward a lightweight minimum viable product (MVP), and established a measurement plan to validate time savings and adoption impact.

**The team embedded the eCR Viewer into CDC's existing surveillance infrastructure** rather than building a standalone tool. We partnered with General Dynamics Information Technology (GDIT) to integrate the eCR Viewer into CDC's National Electronic Disease Surveillance System (NEDSS) Base System (NBS) with pilot jurisdictions, including the states of Maine and Tennessee. We also established a separate pilot with the city of Philadelphia to evaluate the eCR Viewer as a web-based tool hosted by CDC outside of a surveillance system — testing whether the approach could work across different deployment models.

Initial results from our research efforts have been promising:

{% include callout.html
  type = "pullquote"
  content = "It is incredibly challenging to show and teach and get end users to use eCR when you can't view all the data. This viewer will be absolutely a game changer to get people to understand the value of eCR."
  cite_name = "Epidemiologist"
%}

**Pilots commenced in summer 2024** to test the eCR Viewer in production data environments and further validate the tool's downstream public health impact. The aim is to scale across a wide range of jurisdictions and turn eCR into the go-to data source for case ascertainment and investigation. Importantly, the eCR Viewer isn't a standalone product — it works in concert with a wider portfolio of [open-source, modular tools](/work/experience/cdc-dibbs/) that together enable jurisdictions to build flexible, modern data systems that improve the larger public health data infrastructure.
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
