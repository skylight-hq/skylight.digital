---
layout: default
title_tag: "Centers for Medicare & Medicaid Services"
title: "Modernizing how the nation measures healthcare quality"
permalink: /work/experience/cms-iqies/
image: /img/projects/cms_iqies/iqies.svg
image_description: "A doctor taking a woman's blood pressure."
feature_image:
feature_image_description:
feature_image_shadow:
order: 2900
display: true
tags:
  - "service delivery"
  - "research & design"
  - "software delivery"
  - "legacy modernization"
  - "healthcare"
  - "victor zapanta"
  - "nick bristow"
excerpt: "Helped modernize a critical CMS system used by thousands of healthcare providers and surveyors nationwide to submit and evaluate quality-of-care data."
project_members:
  - victor-zapanta
  - nick-bristow
technologies:
  - "HTML / CSS"
  - "JavaScript / React / Redux"
  - "Jest / Mocha / Karma / Jasmine / Supertest"
  - "U.S. Web Design System"
  - "Adobe XD"
  - "Balsamiq"
  - "InVision"
  - "Amazon Web Services"
  - "Git / GitHub"
practices:
  - "User research"
  - "User experience design"
  - "Design leadership"
  - "Design system"
  - "Accessibility design"
  - "Virtual collaboration"
  - "Agile development"
  - "Cloud hosting"
news_posts:
  - title: "CMS Announces the Release of the Internet Quality Improvement and Evaluation System (iQIES)"
    url: https://qtso.cms.gov/news-and-updates/cms-announces-release-internet-quality-improvement-and-evaluation-system-iqies
  - title: "Internet Quality Improvement and Evaluation System (iQIES) for Home Health Agencies is Now Available"
    url: https://qtso.cms.gov/news-and-updates/internet-quality-improvement-and-evaluation-system-iqies-home-health-agencies-now
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
The Internet Quality Improvement and Evaluation System (iQIES) is a nationwide platform that thousands of healthcare providers and surveyors use daily to submit patient assessment data and evaluate quality of care for Medicare and Medicaid beneficiaries. As a subcontractor to [Ventera](https://ventera.com/), we helped modernize iQIES from a legacy desktop application into a cloud-based, user-centered system — improving the user experience, establishing a scalable design system, and delivering key parts of the modern front end.
{% endcapture %}

{% capture challenge %}
The Centers for Medicare & Medicaid Services (CMS) relies on quality reporting systems to monitor and improve care across the country's healthcare providers — from long-term care hospitals and skilled nursing facilities to home health agencies and hospices. For years, this work ran through a set of legacy desktop applications: the Quality Improvement and Evaluation System (QIES), the Certification and Survey Provider Enhanced Reports (CASPER) system, and the Automated Survey Processing Environment (ASPEN). Together, these systems collected patient assessment data, generated quality measures, and supported the survey and certification process that determines whether providers meet federal standards.

But the legacy architecture had become a barrier. Providers could only access the systems through a virtual private network or the CMS network, which limited when and where they could submit data or review reports. The interfaces had grown complex and inconsistent over time, making it harder for staff to complete routine tasks efficiently. And because each system had evolved independently, there was no shared design language or consistent user experience across them.

The modernization effort — consolidating these systems into iQIES — was already underway when Skylight joined. The challenge wasn't just rebuilding the technology. It was ensuring that the new system actually worked better for the people using it: that interfaces were intuitive, that design decisions were grounded in research rather than assumptions, and that the front-end engineering could scale as iQIES expanded to cover more provider types over time.
{% endcapture %}

{% capture solution %}
As a subcontractor to [Ventera](https://ventera.com/), we joined the iQIES modernization with a focus on three areas where the effort needed the most help: user-centered design practices, a scalable design system, and modern front-end engineering. **We started by strengthening the connection between user research, design, and engineering** — introducing practices that ensured user needs informed product decisions rather than getting lost between teams. This meant embedding researchers alongside designers and developers so that findings from user interviews translated directly into interface improvements.

From that foundation, **we built a collaborative design system** that gave teams a shared vocabulary for building consistent, accessible interfaces. Before the design system, each team made independent choices about layout, interaction patterns, and component styling — which produced the kind of inconsistency that made the legacy systems hard to use. The design system established reusable components and clear guidelines, enabling teams to produce maintainable interfaces without reinventing decisions on every screen.

**We then engineered key parts of the application's front end** using React, Redux, and the U.S. Web Design System. The technical work wasn't just about building features — it was about establishing patterns that other teams could follow as iQIES expanded to additional provider types. By aligning front-end architecture with the design system, we ensured that new modules could be built consistently and that the application remained accessible and performant as it grew.

The result was a modernization effort that improved not only what users saw, but how the teams behind the system worked together. **Embedding user-centered practices directly into the delivery process** meant that design quality wouldn't depend on any single team's involvement — the methods were part of how iQIES got built.
{% endcapture %}

{% capture results %}
- **Delivered a modern front-end experience** for a nationwide healthcare quality reporting system, replacing legacy desktop interfaces with a cloud-based, accessible web application
- **Built a reusable design system** that enabled teams to produce consistent, accessible interfaces across provider types and modules
- **Embedded user-centered design practices** into the development process, strengthening collaboration between research, design, and engineering teams
- **Supported iQIES's phased rollout** across multiple provider types, including long-term care hospitals, home health agencies, and hospices
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
