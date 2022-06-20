---
layout: default
title_tag: U.S. Air Force
title: Accelerating mobile application development in the Air Force
permalink: /work/experience/usaf-mask/
image: /img/projects/usaf_mask/mask.svg
image_description: An airman using a technology starter kit.
feature_image: 
feature_image_description:
order: 2575
display: true
tags: [research & design, software delivery, devops, cloud & platforms, security & privacy, defense, air force, lucas newman, jesse skeets, adam weber, gianna buda]
excerpt: By enabling airmen to rapidly build mobile products in-house, the U.S. Air Force can accelerate the delivery of mission value, reduce application development costs, and grow the skill sets of its force.
project_members:
  - lucas-newman
  - jesse-skeets
  - adam-weber
  - gianna-buda
technologies:
  - Flutter
  - Express
  - React
  - Keycloak
  - Terraform
  - AWS (Cloud One)
practices:
  - Lean startup
  - User research
  - User experience design
  - Agile development
  - DevSecOps
  - Cloud hosting
news_posts:
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
The U.S. Air Force (USAF) is using mobile applications to improve airmen’s quality of life, mission success, and safety. As a subcontractor to Mo Studio, and in collaboration with Business Enterprise Systems Product INnovation (BESPIN), we created a starter kit for future application teams entering the BESPIN ecosystem, streamlining the process for developing custom mobile and web applications for the USAF.  
{% endcapture %}

{% capture challenge %}
Digital transformation is critical to the USAF’s mission of modernizing its operations. That means being able to deliver digital solutions for airmen across multiple channels and platforms — particularly mobile. Airmen aren’t always sitting in front of a computer. They need mobile applications to accomplish life and mission tasks where they are: on the flight line, in base housing, or deployed on various bases around the globe. This need creates high demand for delivering production-quality mobile applications. BESPIN, a young software factory within the Air Force driving this shift toward mobile applications, is a key part of the USAF’s digital transformation. 

Getting a mobile or web application into production early and often is a primary goal for any software application team; however the path to production in a defense environment isn’t always easy, and it’s often different for each use case. At present, each team in BESPIN building a mobile application has to build all the parts from scratch. However, there are common application components that don’t need to be built by each new application team over and over again (e.g., authenticating, sending email or other notifications). This is especially important in a defense environment, since each component has to be vetted by security. If we can reduce the security burden by providing pre-vetted components, it makes the jobs of individual teams easier. 

Given that many of the airmen assigned to BESPIN application development teams are new to software engineering, 
there’s not always a technical expert or resource to consult when teams are starting out. 
A lack of institutional guidance results in slower development times and higher costs. 
When kicking off a project, airmen need clear documentation and proven techniques to help speed up the development process.

Since the future of BESPIN relies on airmen to deliver applications quickly and cost effectively, 
they need clear pathways and standardization to reduce as much technical burden as possible.

{% endcapture %}

{% capture solution %}
To provide a clear production path for mobile applications within BESPIN, Mo Studio and Skylight created the Mobile Application Starter Kit (MASK). MASK is a resource for BESPIN that provides airmen with distinct project templates for mobile apps, APIs, and “admin” dashboards, and documentation on how to use these templates. MASK also offers necessary guidance on how to navigate the development and deployment of custom mobile applications within BESPIN. For example, MASK offers direction on key aspects of the development process, such as:
- What teams do what 
- Why you might need a team’s tooling 
- How to connect with said team
- The dependencies within the ecosystem

MASK will greatly reduce the time mobile application teams need to develop high-quality software within BESPIN, cutting costs and improving outcomes. Through templating, documentation, and tooling, MASK will save teams months of time choosing appropriate and approved tech and completing security chores. In addition, by building mobile products in-house, BESPIN teams can focus on solving the right problem and improving the user experience for their fellow airmen, rather than worrying about tooling (and, to some extent, security for common components).  

Through MASK, we helped accelerate the future development and deployment of mobile applications through BESPIN, and, in turn, advanced broader digital transformation within the USAF.
{% endcapture %}

{% capture results %}
- Created three templates for mobile app, API, and web app to save teams months of time in choosing appropriate/approved tech and completing security chores
- Provided guidance on how to use the templates, including documentation and a script to identify duplicate security chores, as well as infrastructure tooling to guide BESPIN teams through the development and deployment of custom mobile applications
- Improved technical skill sets of airmen, allowing them to build mobile applications in-house and reduce development costs
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
