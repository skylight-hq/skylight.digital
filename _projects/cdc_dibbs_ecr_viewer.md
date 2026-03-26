---
layout: default
title_tag: Centers for Disease Control and Prevention
title: Surfacing actionable insights from electronic case reporting data
permalink: /work/experience/cdc-dibbs-ecr-viewer/
image: /img/projects/cdc_dibbs_ecr_viewer/dibbs-ecr-viewer.svg
image_description: Public health staff member viewing a stack of screens through a magnifying glass.
feature_image: /img/projects/cdc_dibbs_ecr_viewer/dibbs-ecr-viewer.gif
feature_image_description: Walkthrough of eCR Viewer MVP
feature_image_shadow: true
order: 120
display: true
tags: [
    service delivery,
    research & design,
    product management,
    software delivery,
    legacy modernization,
    devops,
    cloud & platforms,
    data & analytics,
    apis,
    security & privacy,
    open government,
    public health,
    nick bristow,
    kenneth chow,
    mary crawford,
    gordon farrell
    matt goldberg,
    janki kaneria,
    boban ljuljdjurovic,
    josh nygaard,
    emma stephenson,
    angela the,
    sarah tress,
    mary yeh,
  ]
excerpt: A tool that improves the usability of electronic case reporting (eCR) data by displaying a summary of key data contained in an eCR file so that public health staff can quickly find the information they need.
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
  - Python
  - APIs
  - FHIR
  - Microservices
  - YAML
  - Git / GitHub
  - Terraform
  - Microsoft Azure
  - Azure DevOps
  - Azure Managed FHIR Server
  - Mural
  - Figma
  - Slack
  - Zoom
  - AWS
  - S3 Bucket
  - Amazon RDS for PostgreSQL
  - Elasticsearch
  - AWS Fargate
  - Rhapsody
practices:
  - Product management
  - User research
  - User experience design
  - Agile development
  - Rapid prototyping
  - API-first development
  - Data engineering
  - Data management
  - DevSecOps
  - Security / privacy compliance
  - Containerization
  - Cloud hosting
  - Hybrid-cloud architecture
  - Virtual collaboration
project_url: https://dibbs.tools
project_cta: See the site
source_code_url: https://github.com/CDCgov/dibbs-ecr-viewer
skip_index: false
---

{% capture summary %}
Electronic case reporting (eCR) offers a robust infrastructure for public health departments to automatically collect reportable clinical information. Together with the Centers for Disease Control and Prevention (CDC) and U.S. Digital Service (USDS, now U.S. DOGE Service), we've built an intuitive tool that uncovers key information from eCR files to help manage the influx of data and make it more usable.
{% endcapture %}

{% capture challenge %}
To reduce the burden of manual reporting on healthcare providers, the Association of Public Health Laboratories, the Council of State and Territorial Epidemiologists, and the CDC established an automated way to send case report information from electronic health records to public health departments.
This process, known as eCR, is intended to make disease reporting faster and easier by replacing manual case reports that are traditionally sent by mail, phone, and fax.
It works like this: When data corresponding to a reportable condition (e.g., COVID-19) is entered into a patient's health record, a case report is automatically generated and sent to the appropriate public health agencies so they can record, track, and investigate individual cases.
This automated approach has the potential to significantly streamline both the case ascertainment and case investigation process.

Implementation progress continued in 2024, with 53% of jurisdictions now receiving eCR data for at least three-quarters of their reportable conditions, improving the completeness and timeliness of critical case data. However, many public health departments still face barriers to integrating eCR data in their existing workflows. The volume of information may make it difficult for public health staff to figure out why the eCR was sent to them and where it should go next. To add to this challenge, eCR data is structured for computer-to-computer communications and therefore doesn't come to public health departments in a format that's easy for humans to read. Because of formatting challenges and the overwhelming volume of eCR data, it can take significant time and effort for public health staff to review incoming eCRs.

As one epidemiologist put it:

{% include callout.html
  type = "pullquote"
  content = "You can just scroll on forever for some of these eCRs and never find what you're looking for."
%}

To fulfill the promise of eCR, public health staff need to be able to quickly find key information from incoming eCR data so they can take timely public health action.
{% endcapture %}

{% capture solution %}
**Under the umbrella of the CDC and USDS pandemic-readiness and interoperability initiative,** we aimed to make eCR data more usable for public health staff. To do this, we developed the eCR Viewer, an intuitive interface that surfaces a summary of condition-specific information in a more readable format at the top of the eCR file. Using the eCR Viewer, public health staff can easily find data relevant to the reportable condition. The eCR Viewer also orders and organizes data consistently regardless of which electronic medical record system generated the eCR. Because the eCR Viewer makes it easier for public health staff to find clinical information for case investigation, eCR becomes a more useful data source, thereby reducing the need to manually contact healthcare providers.

**First, we conducted discovery activities** with staff at public health departments to understand how eCR fits into case ascertainment and case investigation workflows.

**Next, we developed concept designs** of the eCR Viewer and gathered feedback from users to develop a lightweight minimum viable product.

**Then, we built out the product vision and measurement plan** to ensure the eCR Viewer will meet the intended impact for time savings.

**We partnered with the General Dynamics Information Technology team** to integrate the eCR Viewer into the CDC's National Electronic Disease Surveillance System Base System (NBS) with pilot jurisdictions. We identified pilot jurisdictions to test and validate the eCR Viewer in their public health data workflows — NBS pilot partners include the states of Maine and Tennessee.

**Finally, we established a separate pilot partnership with the city of Philadelphia** to evaluate using the eCR Viewer outside of a surveillance system as a web-based tool hosted by CDC.

Initial results from our research efforts have been promising:

{% include callout.html
  type = "pullquote"
  content = "It is incredibly challenging to show and teach and get end users to use eCR when you can't view all the data. This viewer will be absolutely a game changer to get people to understand the value of eCR."
  cite_name = "Epidemiologist"
%}

We've since commenced pilots with jurisdictions to test the eCR Viewer in a production data environment and further validate the tool's downstream public health impact. Our aim is to scale the eCR Viewer with a wide range of jurisdictions to turn eCR into the go-to data source for case ascertainment and investigation.

Importantly, the eCR Viewer isn't simply a standalone software tool. It works in concert with a wider portfolio of [open-source, modular tools](/work/experience/cdc-dibbs/) developed by Skylight that help solve a range of critical public health data challenges.
Together, these tools enable jurisdictions to build flexible, modern, and performant data systems that improve the larger public health data infrastructure of the United States.
{% endcapture %}

{% capture results %}
- Completed design and development of an eCR Viewer minimum viable product and validated its potential time savings with public health staff
- Based on user testing with a lightweight minimum viable product, the eCR Viewer allows staff to process a singular eCR file for case ascertainment in five clicks rather than twenty-five clicks
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
