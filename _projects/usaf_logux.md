---
layout: default
title_tag: U.S. Air Force
title: Modernizing aircraft maintenance systems
permalink: /work/experience/usaf-logux/
image: /img/projects/usaf_logux/logux.svg
image_description: Three aircraft mechanics looking at a jet.
feature_image: 
feature_image_description:
order: 2150
display: true
tags: [service delivery, research & design, legacy modernization, defense, air force, zack gehin, charlye tran]
excerpt: A sustainable, cost-effective, comprehensive solution for aircraft mechanics to streamline their documentation process.
project_members:
  - zack-gehin
  - charlye-tran
technologies:
  - Google Material Design
  - JavaScript / React / Redux
  - Java / Spring Boot
  - SOAP API
practices:
  - User research
  - Technical discovery
  - User experience design
  - Design system
  - Custom design system
  - Responsive design
  - Accessibility
  - Virtual teams
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
The U.S. Air Force (USAF) set a goal to modernize aircraft maintenance operations through two applications: Battle Record Information Core Environment (BRICE) and Weapons/Armament Reporting Log and Control (WARLOC). We rebuilt these mission-critical systems as part of an initiative to create a sustainable, cost-effective, comprehensive solution for aircraft maintenance that eliminates the need for error-prone paper documentation, provides offline capabilities on the flightline, and, ultimately, keeps pilots safer.
{% endcapture %}

{% capture challenge %}
To keep pilots safe and planes mission-ready, the USAF needs to ensure that aircraft are in good working order, which means performing general and weapons maintenance on over 5,300 aircraft while keeping immaculate records. Currently, maintainers use paper forms for documentation while they perform maintenance on the flightline. At the end of a long, difficult shift, maintainers spend hours of additional time duplicating documentation about their repairs from paper forms to their internal record keeping and data management system. This effort wastes time, delays shift turnover, and increases the potential for transcription errors. 

According to Master Sergeant Daniel Brierton, who has worked in aircraft maintenance for 10 years:

{% include callout.html
  type = "pullquote"
  content = "When we signed up for aircraft maintenance, the image in our head was not sitting at a desk. Maintainers are here to fix jets."
%}

While a previous system — BRICE 1.0 —  was built by a third-party vendor to reduce the workload for general aircraft maintenance, the software operations and maintenance costs were high due to the use of proprietary technology. Additionally, BRICE 1.0 didn’t have the ability to operate offline, which is essential for an application used on the flightline. Airfields typically have unstable internet connection due to aircraft signal interference, especially if located overseas where internet may be harder to access. Maintainers often work offline but need real-time consistency in audit trails to ensure maintenance records are accurate and securely documented. Due to its high costs and lack of offline capability, BRICE 1.0 turned out to be unsustainable. After only 14 months of use, the application was decommissioned and maintenance units returned to the arduous process of tracking general maintenance through paper documents on the flightline. 

The USAF took this as an opportunity to modernize their aircraft maintenance systems — both general maintenance and weapons maintenance — which has its own specialized tasks.

{% endcapture %}

{% capture solution %}

In partnership with Fearless, we worked together with the USAF’s BESPIN and A4 Logistics (A4L) teams to build out LogUX, a platform housing two mission-critical applications: BRICE 2.0 — used to track overall maintenance of USAF aircraft — and WARLOC — responsible for keeping aircraft war-fighting ability at maximum efficiency. 
Our primary role was to redesign the aircraft maintenance experience through these two applications. To accomplish that, we employed a variety of human-centered design practices. 

For example, we carried out onsite research through visits to Nellis and Gunter Air Force bases. During these visits, we shadowed users, interviewed leaders and maintainers, developed prototypes, and iterated on these prototypes through a series of usability tests. By engaging users where the work is done — in this case on the flightline — we discovered a number of issues and user needs that hadn’t previously been identified. 

After continuous onsite research and usability reviews of iterative prototypes, the Skylight team completely re-engineered the functionality of BRICE and WARLOC, building a brand new information architecture and user interface. This effort involved: 
- Starting with redesigning the user experience to focus on the highest-value user problem — documenting aircraft repairs 
- Rebuilding BRICE and WARLOC to use a modern technical architecture and technology stack that can be replicated by BESPIN to deliver mobile solutions for the USAF
- Incrementally building out a mobile system that gives maintainers the ability to document maintenance in real-time
- Building this new interface to connect directly with the existing system of record
- Adding the ability for maintainers to use applications offline, which is pivotal to workflow since there's limited or non-existant internet connectivity on the flightline
- Designing the interface to communicate to the user when the application is offline or online and that the data is synced
- Ensuring offline mode could secure and encrypt data (so it can’t be scanned) and retain data (so it can’t get lost)

Our efforts improved the ease of documenting aircraft repairs and, in turn, increased the efficiency of maintainers. According to Major Jonathan Jordan, Headquarters Air Force Reserve A6 logistics IT policy and strategy branch chief:

{% include callout.html
  type = "pullquote"
  content = "If each maintainer saved an hour of time by using the app, as many reported in the acceptance testing, this would result in over five million hours of recouped time on maintenance tasks Air Force-wide."
%}

Once deployed and made available to users, these new systems offer a sustainable, cost-effective solution for maintainers to streamline their documentation process. Ultimately, the less time maintainers spend on paperwork and transcribing data (after they’ve been on the flightline all day), the more time they can spend keeping pilots safe and planes mission-ready.

{% endcapture %}

{% capture results %}
- Rebuilt functionality of mission-critical applications in three months with lower maintenance cost
- Drove product buy-in through onsite research and relationship building, overcoming cultural and behavioral obstacles
- Developed offline mode to better align applications with user needs in airbases and on the flightline
- Streamlined aircraft maintenance documentation process, reducing the need for inefficient paperwork
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
