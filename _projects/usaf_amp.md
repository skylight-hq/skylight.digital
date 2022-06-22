---
layout: default
title_tag: U.S. Air Force
title: Streamlining the Air Force’s base inprocessing
permalink: /work/experience/usaf-amp/
image: /img/projects/usaf_amp/amp.svg
image_description: A person filling out a checklist.
feature_image: 
feature_image_description:
order: 2100
display: true
tags: [service delivery, research & design, software delivery, defense, air force, lucas newman, jesse skeets, adam weber, gianna buda]
excerpt: A digital application that simplifies and automates the process for transitioning to a new base, for both airmen and all who support them.
project_members:
  - lucas-newman
  - jesse-skeets
  - adam-weber
  - gianna-buda
technologies:
  - HTML / CSS
  - Material-UI
  - Flutter
  - Express
  - React
  - Keycloak
  - AWS / Terraform
practices:
  - Lean startup
  - User research
  - User experience design
  - Content design
  - Design system
  - Wireframing
  - Agile development
  - Pair programming
  - DevSecOps
  - Cloud hosting
news_posts:
  - title: BESPIN LinkedIn post
    url: https://www.linkedin.com/posts/bespin_bespinaf-apps-softwaredevelopment-activity-6849312109856075776-Qog2/
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
As a subcontractor to Mo Studio, Skylight helped develop Airmen Mobile Processing (AMP), a digital application that streamlines and automates the U.S. Air Force’s base inprocessing. AMP replaces a cumbersome base inprocessing experience, allowing for more efficient task tracking and completion, while making base transition less stressful for airmen, their families, and the staff who support them.
{% endcapture %}

{% capture challenge %}
Moving is stressful for anyone, but it can be a particular challenge in a complex organization like the U.S. Air Force (USAF). Airmen frequently move bases — sometimes every two years — a transition known as the permanent change of station (PCS) process. Air Force bases are basically self-contained cities, so transitioning to a new base can be a whirlwind experience. Ensuring a streamlined PCS process helps airmen hit the ground running with their duties, while reducing the administrative burden on the staff responsible for processing them.

Currently, the USAF handles base inprocessing using paper forms or PDFs, which are filled out and handed off to various base personnel. Now, imagine putting yourself in an airman's boots during the PCS process — not only do you have to get accustomed to your new base (perhaps while also helping to acclimate your spouse or children), you have to carry around paper forms and deliver them to the appropriate offices in an environment that you’re still learning to navigate. It can be disorienting, not to mention a little frustrating. 

Base inprocessing is also challenging for administrators — the Air Force staff who are responsible for tracking the PCS process. Because inprocessing is managed via paper-based forms, administrators have a hard time knowing where airmen are in their processing status. The use of paper forms can also create bottlenecks in the pipeline — until a form is completed and handed off, it isn’t accessible to other personnel. The entire Air Force is affected by long processing timelines, along with their families. To reduce inefficiencies and make the lives of airmen and their families easier, it’s essential for base inprocessing to be as smooth and seamless as possible.

{% endcapture %}

{% capture solution %}
In collaboration with Mo Studio and the USAF’s Business Enterprise Systems Product INnovation (BESPIN) team, we helped build AMP, a digital application that streamlines and automates base inprocessing for airmen who are going through the PCS process and the staff tasked with processing them.

The AMP team, consisting of Skylight contractors and BESPIN airmen, conducted user research at six Air Force bases. We interviewed users outside the development team, including senior air force personnel and PCS administrators. We learned that administrators currently gather paper forms in stacks of binders. To put it mildly, these are not the most modern ways of working. 

Even though the airmen on our team were regular users of AFFMS II, we wanted to take into account a diversity of user experiences. We conducted preliminary interviews with a variety of personnel at BESPIN, ensuring we covered a spectrum of ranks (officers and enlisted) and job functions. We also conducted desk research by looking at posts and comments on social media platforms like Reddit.

Based on this research, our team conducted the following activities:
- Designed an interface that allows airmen to see tasks in one centralized location and mark tasks in-progress or complete
- Ensured administrators could create, update, and delete tasks 
- Built a dashboard to provide real time visualization of airmen processing status for ease of tracking
- Enabled administrators to quickly verify task completion
- Developed a directory that could list out contact information for base personnel to improve ease of coordination

Through our user-centered development process, we helped deliver a solution that eases the stress and complexity of the inprocessing experience — for both airmen and administrators. In addition to inprocessing, AMP’s feature set can be used for ongoing task completion and monitoring at the base. Furthermore, AMP provides a proof of concept for using pre-screened and standardized components in the development process, which helps BESPIN meet its broader goal of delivering mobile applications quickly and cost effectively. AMP is not only a useful application that streamlines base transition, it also demonstrates the USAF’s commitment to becoming a digitally-powered organization.
{% endcapture %}

{% capture results %}
- Delivered MVP to help airmen more seamlessly track and complete base inprocessing tasks
- Selected as a winner of the Vice Chief of the Air Force (VCSAF) Innovation Challenge
- Provided a proof point for the larger BESPIN goal of standardizing and templating mobile applications
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
