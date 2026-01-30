---
layout: default
title_tag: U.S. Air Force
title: Modernizing equipment feedback loops
permalink: /work/experience/usaf-gearfit/
image: /img/projects/usaf_gearfit/gearfit.svg
image_description: Gear technician helping a female pilot put on her helmet.
feature_image: /img/projects/usaf_gearfit/gearfit.gif
feature_image_description: Walkthrough of the GearFit product.
feature_image_shadow: true
order: 409
display: true
tags: [service delivery, research & design, product management, software delivery, legacy modernization, devops, cloud & platforms, data & analytics, apis, security & privacy, defense, air force, mical nobel, phoebe espiritu, lesley evans, adam weber, nick clyde, mitchell sipus, maya benari, kari hodges, eric richards, nicole campbell, andrew wagner, kenny nieh, nicole wright, taylor graue, gianna buda, sarah tress, sarah george hager, david mcclatchey, lina roth, nick blake, priscilla peralta, ashton tu]
excerpt: A secure feedback-to-action loop that helps the U.S. Air Force turn personal protective equipment feedback into coordinated action.
project_members:
  - nick-blake
  - ashton-tu
  - priscilla-peralta
  - nicole-wright
  - taylor-graue
  - sarah-tress
  - lina-roth
  - david-mcclatchey
  - gianna-buda
  - nicole-campbell
  - kenny-nieh
  - nick-clyde
  - eric-richards
  - andrew-wagner
  - adam-weber
  - phoebe-espiritu
  - maya-benari
  - mical-nobel
  - mitchell-sipus
  - lesley-evans
  - sarah-george-hager
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
  - title: "Around the Air Force: next Chief of Space Operations, new COVID vaccine, GearFit"
    url: https://youtu.be/65w9JbNWrOo?t=86
  - title: AFLCMC division to launch new feedback App
    url: https://www.afmc.af.mil/News/Article-Display/Article/2203362/aflcmc-division-to-launch-new-feedback-app/
  - title: New application lets airmen give feedback on their gear 
    url: https://www.airandspaceforces.com/new-application-lets-airmen-give-feedback-on-their-gear/
  - title: "AFLCMC Leadership Log Episode 87: meet the GearFit team"
    url: https://www.youtube.com/watch?v=v4qIqrQZQkw
  - title: "GearFit shortens feedback loop"
    url: https://www.af.mil/News/Article-Display/Article/3102717/gearfit-shortens-feedback-loop/
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
GearFit is a secure feedback platform that connects U.S. Air Force (USAF) aircrew members directly to the teams responsible for acquiring and sustaining personal protective equipment. Built with the Air Force Life Cycle Management Center (AFLCMC)’s Human Systems Division (HSD), GearFit has helped the USAF turn frontline feedback into decision-quality data — enabling faster prioritization and clearer action. The same secure feedback-to-action loop can apply to other mission-critical organizations that issue gear at scale — where fit, performance, and sustainment directly affect safety, readiness, and cost.
{% endcapture %}

{% capture challenge %}
Before GearFit, the USAF didn’t have a single, authoritative way to collect, route, and analyze gear issues from the field. Feedback arrived through fragmented channels — emails, informal conversations, and ad hoc reporting — making it hard to see patterns, set priorities, assign ownership, or know whether anything changed as a result.

That gap was especially costly because gear fitment is a closed-loop process. Issues must be identified clearly, communicated in shared language, routed to the right program owners, translated into requirements, and sustained through acquisition, fielding, training, and maintenance. When any part of that loop broke down, critical signals were lost and improvements slowed.

Existing methods like surveys, email, and phone calls couldn’t reliably support centralized, decision-quality data collection at scale — or the secure access and analysis needed to act quickly and consistently.

For aircrew members, reporting also carried too much friction. Official gear names and part numbers — the gear identifiers people needed to reference — weren’t intuitive, operational tempo left little time for administrative reporting, and cultural pressure discouraged reporting anything short of immediate emergencies. When visibility did increase, submission volume could outpace the capacity to triage and respond without stronger workflows and staffing support.

Addressing these challenges was a priority at the highest levels of leadership, including the [Secretary of the Air Force](https://www.af.mil/News/Article-Display/Article/1801680/new-direction-for-female-specific-flight-equipment/) and [Congress](https://www.stripes.com/news/us/new-bill-aims-to-get-better-fitting-equipment-to-women-in-the-military-1.609795).

{% include callout.html
  type = "pullquote"
  content = "In certain situations, having ill-fitting gear, such as harnesses and survival vests, can result in a loss of life. If an aircrew member ejects from the aircraft with equipment that doesn’t fit, they can be severely injured or lose their life."
  cite_name = "Captain Lauren Ellis"
  cite_title = "U.S. Air Force"
%}

As a result, decision-makers lacked centralized, decision-quality data on gear issues, and aircrew members lacked confidence that raising concerns would lead to meaningful change.
{% endcapture %}

{% capture solution %}
Skylight partnered with AFLCMC’s HSD to build GearFit as both a product and an operating model for equipment feedback — designed to work within the realities of military operations and to scale over time. The effort began in 2019 after female aviators raised fitment concerns at an AFWERX event and was initiated through the Small Business Innovation Research authority.

**First, we reduced the reporting burden for aircrew members.** GearFit’s submission flow was optimized for speed on authorized devices, reduced cognitive load, and supported sensitive reporting. To remove the “what’s this gear called?” barrier, GearFit integrated with an asset management system so users could reference assigned gear without searching catalogs or memorizing item names. An anonymous submission option further lowered barriers to participation. We launched the initial minimum viable product in the field, iterated based on real-world use, and expanded access as adoption proved out.

**Next, we made feedback actionable for the teams responsible for responding.** As adoption grew, we introduced role-based access and workflows for action officers (triage leads) and subject matter experts, enabling consistent triage, coordination, and escalation. We expanded the model to include collaborators, so specialized expertise could be pulled in when needed and response didn’t depend on a single person or inbox.

**Then, we made trends visible beyond a single program office.** We piloted recurring Data Reports to surface patterns and priorities across submissions, validated their value through stakeholder research, and used the findings to guide ongoing analytics development. In parallel, the team explored early artificial intelligence prototypes to help summarize, cluster, and flag high-risk feedback. That work informed how GearFit could support analytics and triage at scale in the future.

**To support both reporting quality and adoption, we built GearWiki,** a centralized knowledge hub with gear guidance and common solutions to reduce repeat issues and close information gaps. We paired GearWiki with targeted communications that encouraged aircrew members to submit feedback and set expectations about how submissions would be reviewed, who would see the data, and how feedback could lead to action — helping reduce cultural barriers to reporting.

**With these foundations in place, GearFit scaled.** In 2022, the platform was replatformed to the Department of Defense’s Cloud One environment and launched via the Air Force Portal, enabling broader and more sustained adoption. A broader promotion that year drove a surge in submissions, validating demand and reinforcing the need for scalable triage capacity as usage grew.
{% endcapture %}

{% capture results %}
- Delivered an alpha version within three months and launched a production beta to 700+ female pilots in March 2020, then expanded from an initial pilot to 3,500+ female aircrew members across 10 Major Commands
- Reached 4,400+ registered users and approximately 1,000 submissions, establishing a centralized source of decision-quality field feedback
- Increased submission volume by roughly 1,000% after moving to lower-friction authentication, including 800+ submissions in a six-month period following the Air Force Portal launch
- Identified 50+ gear improvement opportunities requiring procurement action and provided data supporting multiple in-progress requirement changes and updates to gear already in service
- Surfaced critical safety and fitment issues, including a field-driven short-term mitigation for a parachute harness fitment issue while longer-term requirements moved forward
- Uncovered unit-level training gaps based on recurring submission patterns and improved awareness through 75+ pages of gear guidance in GearWiki
- Generated interest from other organizations exploring similar feedback loops, including the U.S. Navy and the Canadian Armed Forces
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
