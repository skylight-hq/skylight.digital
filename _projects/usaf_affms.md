---
layout: default
title_tag: "U.S. Air Force"
title: "Redesigning how the Air Force accesses fitness reports"
permalink: /work/experience/air-force-fitness-management-system/
image: /img/projects/usaf_affms/air-force-fitness-management-system.svg
image_description: "An airman using the AFFMS app on her mobile device."
feature_image: /img/projects/usaf_affms/air-force-fitness-management-system.gif
feature_image_description: "Walkthrough of the redesigned Air Force Fitness Management System."
feature_image_shadow: true
order: 1000
display: true
tags:
  - "service delivery"
  - "research & design"
  - "defense"
  - "air force"
  - "zack gehin"
  - "shashank khandelwal"
  - "maya benari"
excerpt: "A redesigned interface for accessing fitness reports, improving one of the most frustrating user experiences for over 500,000 airmen."
project_members:
  - zack-gehin
  - shashank-khandelwal
  - maya-benari
technologies:
  - "HTML / CSS"
  - "U.S. Web Design System"
  - "Sketch"
practices:
  - "User research"
  - "Design workshops"
  - "User experience design"
  - "Visual design"
  - "Accessibility design"
  - "Content design"
  - "Information architecture"
  - "Design system"
  - "Wireframing"
  - "Prototyping"
  - "Agile development"
  - "Pairing"
news_posts:
  - title: "Chief Bass' Instagram post (1,000+ likes)"
    url: https://www.instagram.com/p/CLVMxeJsH82/
  - title: "BESPIN LinkedIn post"
    url: https://www.linkedin.com/posts/bespin_the-air-force-fitness-management-system-activity-6792794630925635584-HGLy
  - title: "Reddit thread: Now if this isn't a historic AF moment I don't know what is"
    url: https://www.reddit.com/r/AirForce/comments/kotxmh/we_did_it_affms_ii_has_been_updated/
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
As part of our [digital transformation work with BESPIN](/work/experience/usaf-bespin-transformation-support/), we redesigned the Air Force Fitness Management System II (AFFMS II) — the tool every uniformed airman uses to generate fitness reports for promotions, deployments, and performance reviews. The redesign replaced one of the most notoriously frustrating user experiences in the Air Force with a streamlined single-page interface that over 500,000 airmen now use to view and download their reports.
{% endcapture %}

{% capture challenge %}
AFFMS II records fitness assessment results to ensure that airmen are fit for duty. At any moment, airmen need to be able to perform physically demanding activities, from hasty vehicle recoveries to casualty evacuations. Most of the 500,000+ airmen who rely on the system need to access it three to five times a year.

{% include callout.html
  type = "pullquote"
  content = "Every uniformed airman should be physically fit, regardless of age, gender, or duty assignment. Physical fitness directly and positively impacts health, general fitness, duty performance, and mission readiness."
%}

The fitness reports AFFMS II generates carry real consequences. They're referenced when airmen are considered for awards or promotions and are routinely included in Officer and Enlisted Performance Reviews. Airmen who receive "unsatisfactory" scores can't be deployed. Some base commanders ask for assessment reports before granting leave. In short, it's essential that airmen can effectively use AFFMS II on a regular basis.

However, the site's usability was so poor that it had become a punchline across the Air Force. The link to access fitness reports was buried six tabs deep in a menu that disappeared if you accidentally moved your cursor off one of the tabs. Airmen joked that navigating the menu was proof they had hands steady enough to be a surgeon. Others shared workarounds involving specific browsers or browser developer tools to reach hidden links — none of which were sustainable. To download a simple report, airmen had to make multiple frustrating attempts, wasting time they didn't have.
{% endcapture %}

{% capture solution %}
The redesign started after complaints from airmen reached the Chief Master Sergeant of the Air Force — the highest enlisted level of leadership. Our existing work establishing a [Design Studio](/work/experience/usaf-bespin-design-studio/) through BESPIN meant we already had a team embedded in the environment and ready to move.

Airmen on our team used AFFMS II regularly themselves, but personal frustration isn't the same as research. **Interviews across ranks and desk research into Reddit threads and social media revealed a consistent pattern:** the pain wasn't about one broken feature — it was about a simple task buried under layers of navigation. Every airman needed the same thing (view and download a fitness report), and the interface made that one action unreasonably hard.

**A single-page interface replaced the entire multi-tab navigation.** The most-used actions — viewing and downloading fitness reports — went front and center, eliminating the six-tab journey airmen had been fighting through. Prototyping rapidly and testing layouts with airmen at each stage, we built on the U.S. Web Design System for accessible, browser-compatible components. Airmen from BESPIN led the implementation while we provided design, front-end, and delivery management support.

The reaction was immediate:

{% include callout.html
  type = "pullquote"
  content = "I saw it last week and it blew my mind. I wasn't even expecting it or knew it was launching. It's beautiful."
  cite_name = "TheGainsWizard, Reddit"
  cite_url = "https://www.reddit.com/r/AirForce/"
%}

In December 2020 — the same month Air Force Chief of Staff Gen. Charles Q. Brown Jr. released action orders calling for a people-first approach to personnel systems — the redesign went live. It became a visible proof point that **the airman experience could change quickly when the right team focused on it.**
{% endcapture %}

{% capture results %}
- **Replaced a notoriously frustrating six-tab-deep navigation** with a single-page interface for viewing and downloading fitness reports
- **Improved the AFFMS II experience for over 500,000 airmen**, eliminating a pain point that had persisted for years across the entire force
- **Earned promotion from the Chief Master Sergeant of the Air Force**, who shared the redesign with airmen across social media
- **Adopted as a model by the Air Force's Chief Experience Officer** for advancing user-centered design across the service
- **Helped establish the BESPIN [Design Studio](/work/experience/usaf-bespin-design-studio/)** as a rapid-response design service, demonstrating the value of focused design expertise for airman-facing systems
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
