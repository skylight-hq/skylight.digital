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
As part of our [digital transformation work with BESPIN](/work/experience/usaf-bespin-transformation-support/), we redesigned the Air Force Fitness Management System II (AFFMS II) — the tool every uniformed airman uses to generate fitness reports for promotions, deployments, and performance reviews. The project replaced one of the most notoriously frustrating user experiences in the Air Force with a streamlined single-page interface that over 500,000 airmen now use to view and download their reports.
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
The redesign effort began after complaints from airmen caught the attention of the Chief Master Sergeant of the Air Force — the highest enlisted level of leadership. The Air Force engaged us to improve the experience, a natural fit given our ongoing work establishing a [Design Studio for BESPIN](/work/experience/usaf-bespin-design-studio/).

Even though our own team members were regular AFFMS II users, we started by **gathering a broader range of perspectives.** Interviews with personnel across a spectrum of ranks and job functions at BESPIN, combined with desk research into social media posts and Reddit threads, gave us a clear picture of both the systemic pain points and the workarounds airmen had improvised.

**Rapid prototyping and testing with airmen drove every design decision.** We created wireframes, tested content and layouts with users, iterated based on their feedback, and used the U.S. Web Design System to accelerate front-end development and ensure accessible, browser-compatible components. Airmen from BESPIN led the effort, with our team providing user experience design, front-end development, and delivery management support.

The result was a **streamlined single-page interface with clear data and the most-used actions front and center.** Airmen could now view and download fitness reports without fighting through nested menus. As one airman put it:

{% include callout.html
  type = "pullquote"
  content = "I saw it last week and it blew my mind. I wasn't even expecting it or knew it was launching. It's beautiful."
  cite_name = "TheGainsWizard, Reddit"
  cite_url = "https://www.reddit.com/r/AirForce/"
%}

The project's visibility reached the highest levels of Air Force leadership. In December 2020, Air Force Chief of Staff Gen. Charles Q. Brown Jr. released action orders describing a people-first approach to reviewing personnel and talent management systems. The AFFMS II redesign delivered on that vision — and signaled to the force that leadership takes the **airman experience seriously.**
{% endcapture %}

{% capture results %}
- **Delivered a single-page application** that replaced a notoriously frustrating six-tab-deep navigation with a streamlined interface for viewing and downloading fitness reports
- **Improved the AFFMS II experience for over 500,000 airmen**, eliminating a pain point that had persisted for years across the entire Air Force
- **Earned recognition from the Chief Master Sergeant of the Air Force**, who promoted the redesign to airmen via social media to over 1,000 likes
- **Adopted as a case study by the Air Force's Chief Experience Officer** to advance user-centered design adoption across the service
- **Led to the establishment of a new BESPIN [Design Studio](/work/experience/usaf-bespin-design-studio/) service** focused on providing rapid-response solutions to critical design challenges
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
