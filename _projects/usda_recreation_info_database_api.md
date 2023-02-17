---
layout: default
title_tag: U.S. Department of Agriculture
title: Advocating for API-accessible recreation data
permalink: /work/experience/usda-recreation-information-database-api/
redirect_from:
  - /work/recreation-information-database-api/
image: /img/projects/usda_recreation_information_database_api/recreation-api.svg
image_description: Two people camping with one of them using a mobile device.
feature_image:
feature_image_description:
feature_image_shadow:
order: 4600
display: true
tags: [procurement, microconsulting, apis, open government, agriculture, kin lane]
excerpt: Sharing expertise of APIs to improve a critical solicitation for the next generation of Recreation.gov.
project_members:
  - kin-lane
technologies:
  - OpenAPI Specification
  - API Umbrella
practices:
  - API design
  - API management
  - API service composition
news_posts:
  - title: Advocates Call for Open Data in Outdoor Recreation
    url: http://www.govtech.com/opinion/Advocates-Call-for-Open-Data-in-Outdoor-Recreation.html
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
When the U.S. Department of Agriculture's (USDA) Recreation.gov
contract came up for rebid, the request for proposal (RFP) had insufficient
language regarding an API for accessing the website's data layer,
called the Recreation Information Database (RIDB). Without a good API in place,
the Recreation.gov website would be the only source for browsing national
park information from RIDB, thus limiting the potential for mobile and other
forward-thinking types of applications. Proposing the right language helped
reduce the USDA's risk of procuring the wrong solution.
{% endcapture %}

{% capture challenge %}
The [Recreation.gov RFP](https://www.fbo.gov/index?s=opportunity&mode=form&id=3c740c1e5b809e5ecd99a4cf8a0467b3&tab=core&_cview=0)
was going to close in two weeks. To align this effort with its
[Open Data Policy](https://project-open-data.cio.gov/policy-memo/),
the White House sought urgent advice on how to make the RFP more API-focused so that the next
generation of Recreation.gov could not only serve mobile users, but also foster future
innovation via an external API developer community.
{% endcapture %}

{% capture solution %}
Working as an API evangelist, Kin Lane answered the White House's
call-to-civic-action by [proposing critical language changes to the RFP](http://apievangelist.com/2014/10/16/i-need-help-to-make-sure-the-dept-of-agriculture-leads-with-apis-in-their-parks-and-recreation-rfp/)
to ensure that vendor proposals reflected an API-based solution approach
using best practices such as RESTful API design, supporting documentation,
and software development kits (or SDKs).

Following the rework and release of the RFP, Kin engaged even further in
helping to make the RIDB API a success by building a user and
developer community around it, as well as collaborating with industry
and government to explore [innovative economic models for monetizing access to national park data](http://apievangelist.com/2015/08/24/setting-a-precedent-when-charging-for-high-volume-access-to-government-apis/).
{% endcapture %}

{% capture results %}
- Shaped the final RFP for Recreation.gov, which resulted in the development and
release of a [public RIDB API](https://usda.github.io/RIDB/)
- Facilitated innovative thinking around the monetization of government's public data
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
