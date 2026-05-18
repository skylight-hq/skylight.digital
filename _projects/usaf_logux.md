---
layout: default
title_tag: "U.S. Air Force"
title: "Modernizing aircraft maintenance documentation"
permalink: /work/experience/usaf-logux/
image: /img/projects/usaf_logux/logux.svg
image_description: "Three aircraft mechanics looking at a jet."
feature_image:
feature_image_description:
feature_image_shadow:
order: 2150
display: false
tags:
  - "service delivery"
  - "research & design"
  - "legacy modernization"
  - "defense"
  - "air force"
  - "zack gehin"
  - "charlye tran"
excerpt: "A prototype platform for digitizing aircraft maintenance documentation, designed to replace error-prone paper workflows for U.S. Air Force flightline maintainers."
project_members:
  - zack-gehin
  - charlye-tran
technologies:
  - "Google Material Design"
  - "JavaScript / React / Redux"
  - "Java / Spring Boot"
  - "SOAP API"
practices:
  - "User research"
  - "Technical discovery"
  - "User experience design"
  - "Design system"
  - "Custom design system"
  - "Responsive design"
  - "Accessibility"
  - "Virtual teams"
news_posts:
  - title: "BRICE app simplifies maintenance action, saves time"
    url: https://www.af.mil/News/Article-Display/Article/1725511/brice-app-simplifies-maintenance-action-saves-time/
  - title: "App moves aircraft maintenance log to the flight line"
    url: https://www.defenseone.com/defense-systems/2019/07/app-moves-aircraft-maintenance-log-to-the-flight-line/191604/
  - title: "Air Force's new aircraft maintenance app cuts down record-keeping hassles"
    url: https://fedscoop.com/air-force-aircraft-maintenance-app-brice/
  - title: "USAF unveils BRICE mobile app to save time for aircraft maintainers"
    url: https://www.airforce-technology.com/news/usaf-brice-mobile-app-maintainers/
project_url:
project_cta:
source_code_url:
skip_index: true
---

{% capture summary %}
As part of our [digital transformation work with BESPIN (Business Enterprise Systems Product INnovation)](/work/experience/usaf-bespin-transformation-support/), we prototyped LogUX. It's a platform designed to replace error-prone paper documentation with a secure, offline-capable digital experience for U.S. Air Force (USAF) aircraft maintainers. Working with [Fearless](https://fearless.tech/) and the USAF's A4 Logistics team, we ran onsite research, redesigned the user experience, and built a working prototype. Maintainers could document repairs in real time on the flightline.
{% endcapture %}

{% capture challenge %}
Keeping pilots safe and planes mission-ready requires meticulous maintenance records across more than 5,300 USAF aircraft. After completing repairs on the flightline, maintainers spent hours each shift transcribing handwritten paper forms into the Integrated Maintenance Data System — the Air Force's central maintenance database. The process wasted time, delayed shift turnovers, and introduced transcription errors into safety-critical records. The cost added up to hundreds of millions of dollars in lost productivity across the force.

{% include callout.html
  type = "pullquote"
  content = "When we signed up for aircraft maintenance, the image in our head was not sitting at a desk. Maintainers are here to fix jets."
%}

A previous system — the Battle Record Information Core Environment (BRICE) 1.0 — had tried to digitize general maintenance documentation. But it relied on proprietary technology that drove up costs. More critically, BRICE 1.0 couldn't operate offline. Airfields typically have unstable connectivity due to aircraft signal interference, especially at overseas locations. Maintainers needed to work offline while keeping real-time consistency in audit trails. BRICE 1.0 couldn't meet that bar. After 14 months, the Air Force decommissioned the application, and maintenance units reverted to paper.

Rather than starting over, the USAF treated the failure as an opportunity. The goal: rethink both general maintenance and weapons maintenance documentation — two distinct workflows with their own specialized requirements — through a single, sustainable platform.
{% endcapture %}

{% capture solution %}
LogUX housed two applications: BRICE 2.0 for overall aircraft maintenance tracking, and WARLOC, its weapons maintenance counterpart. We worked with Fearless and the USAF's BESPIN and A4 Logistics teams, applying user-centered design so the solution matched real flightline conditions.

**Research at Nellis and Gunter Air Force bases showed how maintainers actually worked** — not how documentation described their work. We shadowed users on the flightline, interviewed maintenance leaders, developed prototypes, and iterated through usability tests. Engaging users where repairs happened uncovered pain points that hadn't surfaced through prior requirements gathering, like the gap between official gear nomenclature and the shorthand maintainers actually used.

**The redesign focused both BRICE and WARLOC on the highest-value problem: documenting aircraft repairs.** Findings from onsite research and usability reviews drove a new information architecture, streamlined interface, and modern technology stack that BESPIN could replicate across future mobile solutions.

**Offline-first architecture answered the flightline's connectivity problem head-on.** At overseas locations especially, signal interference from aircraft leaves airfields with limited or no internet access. The application let maintainers document repairs in real time regardless of connectivity. Clear status indicators showed whether the app was online or offline and whether data had synced. Encryption and retention safeguards meant nothing got lost between sync cycles.

**Connecting the new applications directly to the existing system of record closed the loop.** The manual transcription step that had consumed hours after every shift was gone. Instead of walking back to a desktop terminal to re-enter handwritten notes, maintainers could complete documentation alongside the repair itself. The result was an end-to-end digital workflow from flightline to official record.

{% include callout.html
  type = "pullquote"
  content = "If each maintainer saved an hour of time by using the app, as many reported in the acceptance testing, this would result in over five million hours of recouped time on maintenance tasks Air Force-wide."
%}
{% endcapture %}

{% capture results %}
- **Prototyped two applications in three months** — BRICE 2.0 and WARLOC — using a modern, open-source technology stack that reduced long-term maintenance costs compared to the proprietary BRICE 1.0
- **Validated significant time savings during acceptance testing**, with maintainers reporting about one hour saved per shift — projecting to over five million hours Air Force-wide at full scale
- **Designed offline-first capability** with encryption and data retention, addressing the flightline connectivity gaps that had sunk BRICE 1.0
- **Demonstrated the end-to-end workflow** from flightline repair documentation to the official system of record, eliminating the manual transcription step
- **Produced design and technical insights that informed the A4 Logistics team's approach to future mobile solutions**, including offline architecture patterns, flightline usability findings, and a reusable technology stack
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
