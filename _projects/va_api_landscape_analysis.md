---
layout: default
title_tag: Veterans Affairs
title: Identifying valuable datasets for turning into APIs
permalink: /work/experience/va-api-landscape-analysis/
redirect_from:
  - /work/va-api-landscape-analysis/
image: /img/projects/va_api_landscape_analysis/api-machine.svg
image_description: Two people operating a machine that turns data into APIs.
feature_image:
feature_image_description:
order: 3500
display: true
tags: [microconsulting, apis, open government, veterans, kin lane, chris cairns, robert read]
excerpt: A two-sided map of the VA's public data surface and what veterans actually need — and a prioritized list of which datasets would be most valuable to turn into APIs.
project_members:
  - kin-lane
  - chris-cairns
  - robert-read
technologies:
  - Custom spidering script
  - HTML / CSS / Sass
  - JavaScript
  - Twitter Bootstrap
  - GitHub Pages / Jekyll
  - Git / GitHub
  - Amazon Web Services
  - Mural
practices:
  - Spidering
  - Semantic analysis
  - User research / KJ technique
  - Workshop facilitation
  - Research analysis and synthesis
  - Design system
news_posts:
project_url: https://skylight-hq.github.io/va-api-landscape/
project_cta: See the report
source_code_url: https://github.com/skylight-hq/va-api-landscape
---

{% capture summary %}
We mapped the U.S. Department of Veterans Affairs (VA) data landscape to find which public datasets would be most valuable as APIs. The work was part of our broader VA API engagement. By pairing a custom spidering analysis with user research, we built a ranked list. The VA's API Platform Management team folded it into their near-term roadmap.
{% endcapture %}

{% capture challenge %}
The VA has produced millions of public datasets over the years to support veterans and the people who serve them. Turning even a fraction of those into APIs would unlock real value. The use cases are everywhere — benefits eligibility checks, mobile apps, and third-party tools that touch veterans' lives every day. But the API Platform Management team couldn't ship them all at once. They needed a way to prioritize.

Prioritization couldn't run on supply or demand alone. Looking only at what data was already machine-readable would skew toward engineering convenience. Looking only at what veterans wanted would miss whether the data existed in usable form. The team needed both views at once. And the lift to assemble them was bigger than the platform team's bandwidth.
{% endcapture %}

{% capture solution %}
To map both sides at once, we built a workflow that paired a custom data crawl with user research. The two views together surfaced prioritized recommendations.

**First, we crawled the VA's public web surface.** A custom spidering script walked every VA web property. For every machine-readable file it found — spreadsheets, tables, forms, and other open formats — it ran a weighted semantic analysis. The crawl built the supply-side map: which datasets exist, where, and in what condition.

**Next, we ran structured user research with veterans and their supporters.** Using affinity mapping — a method for ranking ideas in workshops — we asked which data resources mattered most across web, mobile, and other platforms. That built the demand-side map.

We then merged the two views. Resources that scored high on both axes — machine-readable on the supply side, high-value on the demand side — became the strongest API candidates. The report documented our method, the ranking, and the specific resources we recommended for the near-term roadmap.

**We also wrote a section on how the VA could keep doing this themselves.** Better metadata on the data side would make future ranking faster and more accurate. The report included steps for improving the VA's own data infrastructure so the platform team could rank new resources without outside help each time.
{% endcapture %}

{% capture results %}
- **Crawled more than 1 million URLs and evaluated over 20,000 data files**, building the most complete map of the VA's public data surface that existed at the time
- **Informed the VA's near-term API roadmap**, which adopted many of the resources we recommended for delivery
- **Delivered everything under the $10,000 federal micropurchase threshold**, showing that high-impact data analysis can fit a fast, low-friction procurement vehicle
- **Published the report and source code in the open**, making both the recommendations and the spidering tools reusable for any agency facing the same prioritization question
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
