---
layout: default
title_tag: "U.S. Department of Agriculture"
title: "Advocating for API-accessible recreation data"
permalink: /work/experience/usda-recreation-information-database-api/
redirect_from:
  - /work/recreation-information-database-api/
image: /img/projects/usda_recreation_information_database_api/recreation-api.svg
image_description: "Two people camping with one of them using a mobile device."
feature_image:
feature_image_description:
feature_image_shadow:
order: 4600
display: true
tags:
  - "procurement"
  - "microconsulting"
  - "apis"
  - "open government"
  - "agriculture"
  - "kin lane"
excerpt: "An advocacy effort that reshaped a critical USDA solicitation so the next generation of Recreation.gov would expose its data through a public API — unlocking mobile apps and third-party innovation."
project_members:
  - kin-lane
technologies:
  - "OpenAPI Specification"
  - "API Umbrella"
practices:
  - "API design"
  - "API management"
  - "API service composition"
news_posts:
  - title: "Advocates Call for Open Data in Outdoor Recreation"
    url: https://www.govtech.com/opinion/advocates-call-for-open-data-in-outdoor-recreation.html
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
Before joining Skylight, Kin Lane helped reshape a major U.S. Department of Agriculture (USDA) solicitation so the next generation of Recreation.gov would require an API for its underlying data layer — the Recreation Information Database (RIDB). The advocacy work ensured that the federal government's primary outdoor recreation platform wouldn't remain a closed website, opening the door for mobile apps, third-party tools, and a broader developer community.
{% endcapture %}

{% capture challenge %}
Recreation.gov is the federal government's primary portal for reserving campsites, permits, and recreational activities across a dozen participating agencies. When USDA's multi-year contract for the site came up for rebid in 2014, the request for proposal (RFP) contained insufficient language about making the site's data layer — RIDB — accessible through an API.

Without a strong API requirement, Recreation.gov would remain the only way to browse national park and recreation information from the database. That meant no mobile apps, no third-party tools, and no external developer community building innovative experiences on top of the data. The federal government's own [Open Data Policy](https://obamawhitehouse.archives.gov/sites/default/files/omb/memoranda/2013/m-13-13.pdf) called for making government information open and machine-readable by default, but the RFP as written didn't reflect that mandate.

With only two weeks before the solicitation closed, the White House sought urgent outside expertise. If the language didn't change before vendors submitted proposals, the next decade of Recreation.gov risked locking public recreation data behind a single website with no programmatic access.
{% endcapture %}

{% capture solution %}
Kin Lane, working as an API evangelist, answered the White House's call for civic action. [Writing publicly about the needed changes](https://apievangelist.com/2014/10/16/i-need-help-to-make-sure-the-dept-of-agriculture-leads-with-apis-in-their-parks-and-recreation-rfp/), he outlined what the solicitation should require: a RESTful API design, supporting documentation, and software development kits so that developers could build on top of the recreation data.

**He proposed critical language changes to the RFP** that would ensure every vendor proposal reflected an API-first approach rather than treating programmatic access as an afterthought. The revisions shifted the solicitation from one that would have perpetuated a closed system to one that mandated open, standards-based data access.

**Once the reworked RFP went out, Kin helped build a user and developer community around the RIDB API.** He engaged with industry and government stakeholders to drive adoption, demonstrating how third-party developers could create mobile apps and tools that extended the value of federal recreation data well beyond what a single website could offer.

**He also collaborated with USDA and industry partners to explore [innovative economic models for monetizing high-volume API access](https://apievangelist.com/2015/08/24/setting-a-precedent-when-charging-for-high-volume-access-to-government-apis/).** The work set a precedent for how government agencies could keep API access free for typical users while establishing fair pricing for commercial-scale consumers — balancing open data principles with sustainable operations.
{% endcapture %}

{% capture results %}
- **Shaped the final RFP for Recreation.gov** to require an API-based solution approach, ensuring the next generation of the federal outdoor recreation platform would support programmatic data access
- **Contributed to the development and release of a [public RIDB API](https://usda.github.io/RIDB/)** that opened federal recreation data to mobile apps, third-party tools, and external developers
- **Built a user and developer community** around the RIDB API, driving adoption and demonstrating the value of open recreation data
- **Established a precedent for government API monetization** by exploring fair pricing models that kept access free for typical users while sustaining high-volume commercial use
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
