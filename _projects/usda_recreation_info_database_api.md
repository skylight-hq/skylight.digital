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
excerpt: "An advocacy effort that reshaped a USDA solicitation so the rebuilt Recreation.gov would expose its data through a public API — opening federal recreation data to mobile apps and third-party developers."
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
Before joining Skylight, Kin Lane helped reshape a U.S. Department of Agriculture (USDA) solicitation so the rebuilt Recreation.gov would require a public API for its underlying data — the Recreation Information Database (RIDB). The work opened federal outdoor recreation data to mobile apps, third-party tools, and a developer community that the original procurement would have left out.
{% endcapture %}

{% capture challenge %}
Recreation.gov is the federal government's primary portal for reserving campsites, permits, and recreational activities across roughly a dozen participating agencies. When USDA's multi-year contract for the site came up for rebid in 2014, the request for proposal (RFP) contained insufficient language about exposing the site's data layer — RIDB — through an API.

Without a strong API requirement, Recreation.gov would have remained the only way to browse national park and recreation information from the database. That meant no mobile apps, no third-party tools, and no external developer community building on top of the data. The federal government's own [Open Data Policy](https://obamawhitehouse.archives.gov/sites/default/files/omb/memoranda/2013/m-13-13.pdf) called for making government information open and machine-readable by default, but the RFP as written didn't reflect that mandate.

With only two weeks before the solicitation closed, the White House sought outside expertise. If the language didn't change before vendors submitted proposals, the next decade of Recreation.gov risked locking public recreation data behind a single website with no programmatic access.
{% endcapture %}

{% capture solution %}
Kin, working as an API evangelist, answered the White House's call for civic input. He laid out the needed changes [in public](https://apievangelist.com/2014/10/16/i-need-help-to-make-sure-the-dept-of-agriculture-leads-with-apis-in-their-parks-and-recreation-rfp/), describing what the solicitation should require: a RESTful API design, supporting documentation, and software development kits so vendors couldn't treat programmatic access as an afterthought.

**First, he proposed concrete language changes to the RFP.** The revisions shifted the solicitation from one that would have perpetuated a closed system to one that mandated open, standards-based data access. Every vendor proposal that followed had to reflect an API-first approach.

**Once the reworked RFP went out, he helped build a user and developer community around the new RIDB API.** He engaged industry and government stakeholders to drive adoption, showing how third-party developers could create mobile apps and tools that extended the value of federal recreation data well beyond a single website. The audience was no longer just Recreation.gov.

**He also took on the harder economic question: how to fund high-volume API access at sustainable cost.** Collaborating with USDA and industry partners on [pricing models for commercial-scale consumers](https://apievangelist.com/2015/08/24/setting-a-precedent-when-charging-for-high-volume-access-to-government-apis/), he set a precedent for keeping API access free for typical users while covering the operational cost — balancing open data principles with the realities of running the service.
{% endcapture %}

{% capture results %}
- **Shaped the final RFP for Recreation.gov** to require an API-based solution, ensuring the rebuilt federal outdoor recreation platform would support programmatic data access
- **Contributed to the release of a [public RIDB API](https://usda.github.io/RIDB/)** that opened federal recreation data to mobile apps, third-party tools, and external developers
- **Built a user and developer community** around the RIDB API, driving early adoption and demonstrating the value of open recreation data
- **Set a precedent for government API monetization** by exploring fair-use pricing that kept access free for typical users while sustaining high-volume commercial use
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
