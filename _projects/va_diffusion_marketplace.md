---
layout: default
title_tag: Veterans Affairs
title: Creating a knowledge platform for improving healthcare
permalink: /work/experience/va-diffusion-marketplace/
redirect_from:
  - /work/va-diffusion-marketplace/
image: /img/projects/va_diffusion_marketplace/diffusion-marketplace.svg
image_description: Doctors, administrators, and veteran patients interacting through digital panes.
feature_image:
feature_image_description:
order: 3700
display: true
tags: [service delivery, research & design, software delivery, veterans, healthcare, becca bartola, lesley evans, tom black, aera hoffman, tomi obikunle, elisa lee]
excerpt: A knowledge management platform for improving how the Veterans Affairs delivers healthcare to veterans through the dissemination of promising clinical and administrative practices.
project_members:
  - becca-bartola
  - tomi-obikunle
  - elisa-lee
  - lesley-evans
  - tom-black
  - aera-hoffman
technologies:
  - Ruby / Rails
  - U.S. Web Design System
  - HTML / CSS / Sass
  - JavaScript
  - CircleCI
  - Terraform
  - Docker
  - Amazon Web Services
practices:
  - User research
  - Design studios
  - Comparative analysis
  - Technical discovery
  - User experience design
  - Branding design
  - Visual design
  - Design system
  - Accessibility design
  - Responsive web design
  - Agile development
  - DevSecOps
  - Open-source development
  - Cloud hosting
news_posts:
  - title: VA innovators see home-grown ideas spread far and wide across veterans health network
    url: https://federalnewsnetwork.com/veterans-affairs/2019/10/va-innovators-see-home-grown-ideas-spread-far-and-wide-across-veterans-health-network/
  - title: FedHealthIT 2020 Innovation Award Winners Announced
    url: https://www.fedhealthit.com/2020/02/fedhealthit-2020-innovation-award-winners-announced/
project_url:
project_cta:
source_code_url: https://github.com/agilesix/diffusion-marketplace
---

{% capture summary %}
The Veterans Affairs (VA) needs a way to systematically identify and spread the
adoption of proven clinical and administrative practices across its healthcare
delivery network. We were brought in to build a knowledge management platform
in order to achieve this important goal.
{% endcapture %}

{% capture challenge %}
The VA operates the nation's largest healthcare system, called
the Veterans Healthcare Administration (VHA). It consists of 150 medical
centers and nearly 1,400 community-based outpatient clinics, community
living centers, Vet centers, and domiciliary. Together, these healthcare
facilities, and the more than 53,000 licensed healthcare practitioners,
provide comprehensive care to more than 8.3 million veterans each year.

When proven healthcare practices emerge in one or more of the VHA's operations,
how do you systematically identify and spread their adoption across the
VHA's healthcare delivery network? That's the challenge the VA has been facing,
and it's an important one to solve given the life-saving implications.
{% endcapture %}

{% capture solution %}
In collaboration with [Agile Six](https://agile6.com/), we've been
working with the VHA to address this challenge through the delivery of a knowledge management
platform called the Diffusion Marketplace. The purpose of this platform is to empower VHA
practitioners and other employees to identify and disseminate promising healthcare practices.

We've aligned our delivery approach to the [VA's Digital Service Handbook](https://department-of-veterans-affairs.github.io/va-digital-service-handbook/digital-standards)
and focused our initial product strategy on figuring out how to design an
experience that leads to the wider adoption of three life-saving and cost-saving
practices (for example, rapid naloxone delivery). These practices have already been
proven to work at a small subset of the VHA's healthcare facilities.

After validating our primary design solution through research and prototyping,
we rapidly iterated toward the release of beta and production versions of the
platform — with an initial collection of over 50 practices.

Following production launch, our team has focused on continually improving the platform,
including:

- Expanding the number of practices, such as hospital-acquired pneumonia prevention,
and the rate at which they're adopted
- Developed a new practice editor feature that empowers practice editors to update
their content directly and helps ensure the site has the most up-to-date information
- Improved the home and search experience to balance the competing needs of targeted
searches with exploratory browsing

We have since launched a public version of the site. Our innovators are grateful 
that they can now share their work with partners outside the VA, and we continue to hear 
from VA leadership how proud they are to tell everyone about the Marketplace. As one veteran noted: 

{% include callout.html
  type = "pullquote"
  content = "I had no idea the VA had as many programs as they do. The Marketplace is a great resource for Veterans. VMET is a program that would have really helped a friend of mine’s son. He was a Iraq and Afghanistan war Veteran and ended up committing suicide by cop. The police are not always the best ones to deal with those issues. FLOW3 is a great program. Anything that can speed up the care and treatment is a definite need. Naloxone, while it shows is limited currently is one of those programs that hopefully spreads. A lot of Vets end up with addiction problems and this could really save lives. The stuff you all are working on can really make a difference."
%}
{% endcapture %}

{% capture results %}
- Delivered an alpha version of the platform within two months
- Launched a beta version with a small user base in the summer of 2019
- Launched a public version of the platform in fall of 2021
- Expanded the number of practices to 177 in total
- Facilitated the adoption of 158 practices through the platform itself
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
