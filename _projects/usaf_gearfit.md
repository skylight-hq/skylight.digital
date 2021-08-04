---
layout: default
title_tag: U.S. Air Force
title: Modernizing the management of personal protective equipment
permalink: /work/experience/usaf-gearfit/
image: /img/projects/usaf_gearfit/gearfit.svg
image_description: Gear technician helping a female pilot put on her helmet.
feature_image:
feature_image_description:
feature_image_shadow:
order: 5
display: true
tags: [service delivery, research & design, product management, software delivery, legacy modernization, devops, cloud & platforms, data & analytics, apis, security & privacy, defense, air force, mical nobel, phoebe espiritu, lesley evans, adam weber, nick clyde, mitchell sipus, maya benari, kari hodges, eric richards, nicole campbell, andrew wagner, kenny nieh, nicole wright, taylor curtiss]
excerpt: A digital platform for transforming how the U.S. Air Force manages personal protective equipment.
project_members:
  - nicole-campbell
  - kenny-nieh
  - eric-richards
  - nick-clyde
  - andrew-wagner
  - adam-weber
  - phoebe-espiritu
  - maya-benari
  - mical-nobel
  - mitchell-sipus
  - lesley-evans
  - kari-hodges
  - nicole-wright
  - taylor-curtiss
technologies:
  - HTML / CSS / Sass
  - JavaScript / React
  - Polaris Design System
  - U.S. Web Design System
  - Java / Spring Boot
  - APIs
  - MySQL
  - Docker
  - Amazon Web Services
practices:
  - Product management
  - Lean startup
  - Service design
  - User research
  - Comparative analysis
  - Design studios
  - User experience design
  - Branding design
  - Visual design
  - Technical discovery
  - Design system
  - Responsive web design
  - Accessibility design
  - Agile development
  - API-first development
  - DevSecOps
  - Containerization
  - Cloud hosting
  - User growth marketing
news_posts:
  - title: New direction for female-specific flight equipment
    url: https://www.af.mil/News/Article-Display/Article/1801680/new-direction-for-female-specific-flight-equipment/
  - title: New bill aims to get better-fitting equipment to women in the military
    url: https://www.stripes.com/news/us/new-bill-aims-to-get-better-fitting-equipment-to-women-in-the-military-1.609795
  - title: AFLCMC division to launch new feedback App
    url: https://www.afmc.af.mil/News/Article-Display/Article/2203362/aflcmc-division-to-launch-new-feedback-app/
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
Providing better-fitting gear to aircrew, particularly female pilots, is one of
the U.S. Air Force's (USAF's) top priorities. Their Human Systems Division (HSD) engaged us
to build a platform for modernizing how they manage personal protective equipment (PPE).
{% endcapture %}

{% capture challenge %}
Key personnel who work for organizations in the defense, security, safety, and
healthcare fields often experience critical issues with ill-fitting gear
that compromise their job performance, their personal safety, and the safety
of others. These organizations generally don't have sufficient data and systems
in place to meet the complex protective equipment needs of their diverse workforce.

For the U.S. Air Force's Human Systems Division, solving this problem
is a top priority that goes all the way up to the
<a href="https://www.af.mil/News/Article-Display/Article/1801680/new-direction-for-female-specific-flight-equipment/">Secretary</a>,
and <a href="https://www.stripes.com/news/us/new-bill-aims-to-get-better-fitting-equipment-to-women-in-the-military-1.609795">even Congress</a>.

Female pilots in particular lack consistent access to — or, at least,
awareness of — properly-fitting tactical gear and equipment options, exposing
them to serious injury or mission failure.

{% include callout.html
  type = "pullquote"
  content = "In certain situations, having ill-fitting gear, such as harnesses and survival vests, can result in a loss of life. If an aircrew member ejects from the aircraft with equipment that doesn't fit, they can be severely injured or lose their life."
  cite_name = "Captain Lauren Ellis"
  cite_title = "U.S. Air Force"
%}
{% endcapture %}

{% capture solution %}
To address this challenge, HSD engaged us to build a digital platform called
GearFit. The current product vision for GearFit encompasses several important
capabilities, such as user-driven feedback, issues reporting & analytics, case
management, catalog management & ordering, and training videos. The target
population of users includes all aircrew who use PPE (for example, pilot,
flight engineer, navigator) and the operational groups responsible for making
sure they're supplied with suitable gear. These operational groups include aircrew
flight equipment technicians who service aircrew and help resolve their equipment
issues (for example, fixing oxygen masks), requirements managers who translate
feedback on gear issues into actionable requirements (for example, identifying
gear defects), and supply-chain professionals who make acquisition and logistical
decisions based on these requirements (for example, ordering permanent modifications
to gear).

Given the complexity associated with this ambitious endeavor, we've focused our
efforts on breaking down the overall problem into more manageable sub-problems so that
we can quickly deliver appropriate solutions. Over time, these solutions will
form a “suite of products” unified by a common design system, technology stack,
and technical architecture.

We started off the project by conducting a series of service design activities,
including service blueprinting. This gave us and HSD a more holistic understanding
of the problem space and targeted opportunities for improvement.

Together, we decided to prioritize the first phase of our work on improving how gear-fitment
issues are surfaced by aircrew, particularly female pilots. Historically, HSD hasn't
had an effective means for collecting such information in a reliable, organized, and
accessible way. As we dug into this particular problem area, we found out several reasons why:

- In general, there wasn't a well-defined process for collecting feedback on gear issues
from aircrew and communicating what was being done to address them.
- Issues were being raised through disparate communication channels, such as email,
social media groups, and direct conversations. This left information that could be
valuable for the purposes of analysis and coordinated action scattered all over the place.
- Safety issues that are life-threatening are usually prioritized, while daily comfort
issues associated with uniforms and gear are often overlooked. However, daily comfort issues have
the potential for long-term consequences.
- Aircrew are equipped with dozens of different types of gear with names that aren't
plain language and are hard to remember (for example, Helmet 55/P, Anti-G Garment
Cutaway). This made communicating issues extremely difficult, often requiring aircrew
to sift through catalogs of items to find the right identifiers.
- Some issues with gear are highly personal in nature and embarrassing to share with others.- i>
There's still the prevalence of a “tough-it-out” culture within the military that can
make service members, including aircrew, reluctant to seek help.
- If you think your life is busy and hectic, try walking in the shoes of a female pilot.
There's virtually no slack in their schedules, especially during training sessions or
mission runs.

To address this problem area, we created and launched a minimum viable product (MVP)
for gathering gear-fitment feedback from aircrew, targeted initially at female pilots.
We designed the application to be fast, simple, and psychologically safe for aircrew
to use. To help accomplish that, we created an experience where aircrew don't have to
think about what type of gear they're looking to provide feedback on. This involved
integrating with a third-party asset management system to pull in data about which
gear is assigned to them. We also provided an option for users to submit feedback
anonymously to avoid potential feelings of embarrassment. As part of the rollout, we
launched a marketing and communications campaign to help overcome cultural and
behavioral barriers to using the application — for example, “sitting in your pee
isn't a rite of passage.” As a result of these efforts, a growing population of
aircrew have started to use the application. And for the first time, HSD is
able to collect and access quality data on gear issues from a central location,
enabling them to better coordinate and communicate response actions.

With this foundation in place, the next phase of our work will largely focus on
solving the problem of how to optimize translating feedback from aircrew into
actionable requirements. GearFit's Phase 2 MVP will focus on: channelizing feedback
data to the proper program office or requirement manager, assisting with case management,
and leveraging feedback data to provide trends and analysis to leadership. In addition,
the team will  focus on continually improving the feedback application and expanding user
adoption, including additional aircrew and other types of personnel such as maintainers and
medical professionals.
{% endcapture %}

{% capture results %}
- Delivered an alpha version of the gear-fitment-feedback
application within three months
- Launched a beta version in production to a user
base of 700+ female pilots in March 2020
- Drove initial aircrew adoption of the application, despite cultural and
behavorial obstacles, through a marketing and communications campaign
- Demoed work to, and received praise from, former Secretary of
the Air Force, Barbara Barrett, and her Chief of Staff,
General David Goldfein
- Continually improving the feedback application and expanding user adoption- i>
Began second phase of work, focused on optimizing translation of
feedback from aircrew into actionable requirements
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
