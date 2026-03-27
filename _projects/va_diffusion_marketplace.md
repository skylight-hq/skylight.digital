---
layout: default
title_tag: "Veterans Affairs"
title: "Spreading proven healthcare innovations across the VA"
permalink: /work/experience/va-diffusion-marketplace/
redirect_from:
  - /work/va-diffusion-marketplace/
image: /img/projects/va_diffusion_marketplace/diffusion-marketplace.svg
image_description: "Doctors, administrators, and veteran patients interacting through digital panes."
feature_image: /img/projects/va_diffusion_marketplace/diffusion-marketplace.gif
feature_image_description: "Walkthrough of the VA Diffusion Marketplace product."
feature_image_shadow: true
order: 800
display: true
tags:
  - "service delivery"
  - "research & design"
  - "software delivery"
  - "veterans"
  - "healthcare"
  - "becca bartola"
  - "lesley evans"
  - "tom black"
  - "aera hoffman"
  - "tomi obikunle"
  - "elisa lee"
  - "nick blake"
  - "camille villa"
  - "emmanuel nwakire"
excerpt: "A knowledge management platform that helped the VA identify and spread proven healthcare innovations across 150 medical centers and nearly 1,400 clinics."
project_members:
  - camille-villa
  - nick-blake
  - becca-bartola
  - tomi-obikunle
  - elisa-lee
  - emmanuel-nwakire
  - lesley-evans
  - tom-black
  - aera-hoffman
technologies:
  - "Ruby / Rails"
  - "U.S. Web Design System"
  - "HTML / CSS / Sass"
  - "JavaScript"
  - "GitHub Actions"
  - "Docker"
  - "Amazon Web Services"
practices:
  - "User research"
  - "Design studios"
  - "Comparative analysis"
  - "Technical discovery"
  - "User experience design"
  - "Branding design"
  - "Visual design"
  - "Design system"
  - "Accessible design"
  - "Responsive web design"
  - "Agile development"
  - "DevSecOps"
  - "Open-source development"
  - "Cloud hosting"
news_posts:
  - title: "Sharing health care Innovation, VHA IE Diffusion Marketplace now open to the public"
    url: https://news.va.gov/96270/sharing-health-care-innovation-vha-ie-diffusion-marketplace-now-open-to-the-public/
  - title: "VA innovators see home-grown ideas spread far and wide across veterans health network"
    url: https://federalnewsnetwork.com/veterans-affairs/2019/10/va-innovators-see-home-grown-ideas-spread-far-and-wide-across-veterans-health-network/
  - title: "FedHealthIT 2020 Innovation Award Winners Announced"
    url: https://www.fedhealthit.com/2020/02/fedhealthit-2020-innovation-award-winners-announced/
project_url: https://marketplace.va.gov
project_cta: "See the site"
source_code_url: https://github.com/department-of-veterans-affairs/diffusion-marketplace
---

{% capture summary %}
In collaboration with [Agile Six](https://agile6.com/), we built the Diffusion Marketplace — a knowledge management platform that helped the Veterans Health Administration (VHA) identify, share, and spread proven clinical and administrative innovations across its healthcare delivery network. The platform houses 262 innovations and has facilitated 3,770 successful adoptions, turning individual facility breakthroughs into system-wide improvements.
{% endcapture %}

{% capture challenge %}
The VA operates the nation's largest healthcare system. The VHA consists of 150 medical centers and nearly 1,400 community-based outpatient clinics, community living centers, Vet centers, and domiciliary. Together, these facilities and more than 53,000 licensed healthcare practitioners provide comprehensive care to more than 8.3 million veterans each year.

At that scale, innovation often stayed local. When a medical center developed a practice that improved outcomes — a faster naloxone delivery protocol, a better approach to chronic pain management — it typically remained within that facility. There was no systematic way for other VHA sites to discover what had been tried, what had worked, and how to replicate it.

The result was a healthcare system where life-saving and cost-saving innovations went unshared, and practitioners across the country solved the same problems independently. The VHA needed a way to turn isolated successes into a shared body of knowledge.
{% endcapture %}

{% capture solution %}
In collaboration with [Agile Six](https://agile6.com/), **we built a knowledge management platform called the Diffusion Marketplace** to give VHA practitioners and employees a single place to discover, evaluate, and adopt proven healthcare innovations. We aligned the delivery to the [VA's Digital Service Handbook](https://department-of-veterans-affairs.github.io/va-digital-service-handbook/digital-standards) and focused the initial product strategy on a concrete problem: how to accelerate adoption of three tried-and-tested innovations that had already proven effective at a small subset of VHA facilities.

After validating the core experience through research and prototyping, we iterated rapidly toward beta and production releases — launching with an initial collection of 50 innovations. The design balanced two competing user needs that surfaced in research: **targeted searches for practitioners who knew what they were looking for, and exploratory browsing for those who didn't.** Getting that balance right was critical to driving adoption across a user base that ranged from frontline clinicians to administrators.

Growth and sustainability became the focus after launch. We built an innovation editor feature that let innovation owners update their own content directly, keeping the platform current without bottlenecking on a central team. **We also redesigned the home and search experience** as the innovation catalog grew, refining the information architecture to handle five times the content it launched with.

The platform eventually expanded beyond internal VA use. We launched a public-facing version so that external healthcare providers could learn from VA innovations, and added a [community feature](https://marketplace.va.gov/communities/va-immersive) highlighting virtual reality and augmented reality treatments. The result was **a living knowledge base that turned individual facility breakthroughs into a system-wide resource for improving veteran care.**

{% include callout.html
  type = "pullquote"
  content = "I had no idea the VA had as many programs as they do. The Marketplace is a great resource for Veterans. A lot of Vets end up with addiction problems and this could really save lives. The stuff you all are working on can really make a difference."
  cite_name = "U.S. Veteran"
%}

VA innovators could share their work with partners outside the VA for the first time, and VA leadership regularly cited the Marketplace as a point of pride.
{% endcapture %}

{% capture results %}
- **Delivered an alpha within two months** and launched a beta with a small user base in summer 2019
- **Launched a public version in fall 2021,** extending access beyond VA employees to external healthcare providers and the general public
- **Expanded the platform from 50 to 262 innovations,** making proven practices from individual facilities discoverable system-wide
- **Facilitated 3,770 successful innovation adoptions** across the VA health network, turning isolated facility practices into shared, replicable solutions
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
