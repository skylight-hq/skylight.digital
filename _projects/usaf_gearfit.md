---
layout: default
title_tag: U.S. Air Force
title: Modernizing equipment feedback loops
permalink: /work/experience/usaf-gearfit/
image: /img/projects/usaf_gearfit/gearfit.svg
image_description: Gear technician helping a female pilot put on her helmet.
feature_image:
feature_image_description:
feature_image_shadow:
order: 110
display: true
tags: [service delivery, research & design, product management, software delivery, legacy modernization, devops, cloud & platforms, data & analytics, apis, security & privacy, defense, air force, mical nobel, phoebe espiritu, lesley evans, adam weber, nick clyde, mitchell sipus, maya benari, kari hodges, eric richards, nicole campbell, andrew wagner, kenny nieh, nicole wright, taylor curtiss, gianna buda, sarah tress, sarah george hager, david mcclatchey, lina roth, nick blake, priscilla peralta]
excerpt: Digital tools and modern processes that transform how the U.S. Air Force manages equipment.
project_members:
  - nick-blake
  - priscilla-peralta
  - nicole-wright
  - taylor-curtiss
  - sarah-tress
  - lina-roth
  - david-mcclatchey
  - gianna-buda
  - sarah-george-hager
  - andrew-wagner
  - nicole-campbell
  - kenny-nieh
  - eric-richards
  - nick-clyde
  - adam-weber
  - phoebe-espiritu
  - maya-benari
  - mical-nobel
  - mitchell-sipus
  - lesley-evans
  - kari-hodges
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
Providing better-fitting gear to underrepresented aircrew, such as female pilots, is one of the U.S. Air Force’s (USAF) top priorities. Their Human Systems Division (HSD) engaged us to modernize the processes and technologies that allow aircrew to get the equipment they need to perform their best.
{% endcapture %}

{% capture challenge %}
Organizations in the defense, security, safety, and healthcare fields often lack the data and systems to meet the complex equipment needs of their diverse workforce. This can result in critical issues that compromise job performance and safety. For the U.S. Air Force’s Human Systems Division, solving this problem is a top priority that goes all the way up to the Secretary, and even Congress. 

{% include callout.html
  type = "pullquote"
  content = "In certain situations, having ill-fitting gear, such as harnesses and survival vests, can result in a loss of life. If an aircrew member ejects from the aircraft with equipment that doesn't fit, they can be severely injured or lose their life."
  cite_name = "Captain Lauren Ellis"
  cite_title = "U.S. Air Force"
%}

To address this challenge, HSD engaged us to build a digital platform called GearFit. In 2020, we launched a minimum viable product (MVP) to gather gear-fitment feedback from aircrew, initially targeted at female pilots. After we relaunched on an Air Force-wide platform in 2022 and marketed it through channels such as the AF Portal, the platform received a spike in submissions. As a growing population of aircrew have used GearFit, we’ve shifted our focus to address the systems around equipment feedback. 

Historically, the USAF hasn't had a defined method for gathering, routing, and responding to gear fitment issues. As a result, HSD has been unable to consolidate and analyze feedback, which has hampered their ability to make improvements. For aircrew, learning and communicating about equipment is also difficult. Aircrew often don’t have time to find the name of gear, let alone provide feedback about it. In addition, many avoid seeking help because of the “tough-it-out” culture of the military.

To enable the USAF to successfully gather feedback about gear and respond by providing safe, suitable gear, we set out to tackle these challenges:
- Flow of information: To make an impact, data submitted to GearFit needs to reach the people in the USAF who can enact the appropriate long-term changes. When proper gear is available, information about it must reach the aircrew who needs it.
- Staffing: HSD needs real people to manage and respond to gear feedback, but has limited staffing and funding. 
- Data analysis: To take informed action, HSD and other decision-makers need a way to view data holistically and find trends. 
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
- Some issues with gear are highly personal in nature and embarrassing to share with others.
- There's still the prevalence of a “tough-it-out” culture within the military that can
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
aircrew have started to use the application. And, for the first time, HSD is
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
- Continually improving the feedback application and expanding user adoption
- Began second phase of work, focused on optimizing translation of
feedback from aircrew into actionable requirements
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
