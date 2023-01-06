---
layout: default
title_tag: Veterans Affairs
title: Creating a knowledge platform for improving healthcare
permalink: /work/experience/va-diffusion-marketplace/
redirect_from:
  - /work/va-diffusion-marketplace/
image: /img/projects/va_diffusion_marketplace/diffusion-marketplace.svg
image_description: Doctors, administrators, and veteran patients interacting through digital panes.
feature_image: /img/projects/va_diffusion_marketplace/vadm-animation.gif
feature_image_description: Animation of searching the marketplace, selecting a program, viewing its details, and locating a participating provider on a map.
order: 800
display: true
tags: [service delivery, research & design, software delivery, veterans, healthcare, becca bartola, lesley evans, tom black, aera hoffman, tomi obikunle, elisa lee, nick blake, camille villa]
excerpt: A knowledge management platform for improving how the Veterans Affairs delivers healthcare to veterans through the dissemination of promising clinical and administrative innovations.
project_members:
  - camille-villa
  - nick-blake
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
adoption of proven clinical and administrative innovations across its healthcare
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

When proven healthcare innovations emerge in one or more of the VHA's operations,
how do you systematically identify and spread their adoption across the
VHA's healthcare delivery network? That's the challenge the VA has been facing,
and it's an important one to solve given the life-saving implications.
{% endcapture %}

{% capture solution %}
In collaboration with [Agile Six](https://agile6.com/), we've been
working with the VHA to address this challenge through the delivery of a knowledge management
platform called the Diffusion Marketplace. The purpose of this platform is to empower VHA
practitioners and other employees to identify and disseminate promising healthcare innovations.

We aligned our delivery approach to the [VA's Digital Service Handbook](https://department-of-veterans-affairs.github.io/va-digital-service-handbook/digital-standards)
and focused our initial product strategy on figuring out how to design an
experience that would lead to the wider adoption of three tried and tested life-saving and cost-saving
innovations (e.g., rapid naloxone delivery). These innovations have already been
proven to work at a small subset of the VHA's healthcare facilities.

After validating our primary design solution through research and prototyping,
we rapidly iterated toward the release of beta and production versions of the
platform — with an initial collection of over 50 innovations.

Following production launch, our team has focused on continually improving the platform,
including:

- Expanding the number of innovations and the rate at which they're adopted
- Developing a new innovation editor feature that empowers innovation editors to update
their content directly and helps ensure the site has the most up-to-date information
- Improving the home and search experience to balance the competing needs of targeted
searches with exploratory browsing
- Launching a public version of the site to share cutting edge VA innovations to a wider audience

{% include callout.html
  type = "pullquote"
  content = "I had no idea the VA had as many programs as they do. The Marketplace is a great resource for Veterans. A lot of Vets end up with addiction problems and this could really save lives. The stuff you all are working on can really make a difference."
  cite_name = "U.S. Veteran"
%}

Our innovators are grateful that they can now share their work with partners outside the VA, and we continue to hear 
from VA leadership how proud they are to tell everyone about the Marketplace. 
{% endcapture %}

{% capture results %}
- Delivered an alpha version of the platform within two months
- Launched a beta version with a small user base in the summer of 2019
- Launched a public version of the platform in fall of 2021
- Expanded the number of innovations to 177 in total
- Facilitated the adoption of 158 innovations through the platform itself
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
