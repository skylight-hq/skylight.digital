---
layout: default
title_tag: Agile Delivery Services Marketplace
title: Creating a new model for procuring software development services
permalink: /work/experience/agile-delivery-services-marketplace/
redirect_from:
  - /work/agile-delivery-services-marketplace/
image: /img/projects/agile_delivery_services_marketplace/agile-delivery-services-marketplace.svg
image_description: A person selecting a digital service from a marketplace shelf.
feature_image:
feature_image_description:
feature_image_shadow:
order: 3200
display: true
tags: [procurement, chris cairns, robert read]
excerpt: Designed and launched a new marketplace model for procuring software development services that enabled agencies to evaluate real capability, accelerate delivery, and reduce risk.
project_members:
  - chris-cairns
  - robert-read
technologies:
  - Google Workspace
  - Git / GitHub
  - GitHub Pages
  - Jekyll
  - Adobe Connect
practices:
  - Lean startup
  - Market research
  - Customer research
  - Acquisition planning
  - Vendor outreach
  - Challenge-based acquisition
  - Best-value contracting
  - Public-domain contracting
  - Oral presentations
news_posts:
  - title: GSA's agile RFI beginning of 'systemic change' in IT acquisition
    url: http://federalnewsradio.com/management/2015/01/gsas-agile-rfi-beginning-of-systemic-change-in-it-acquisition/
  - title: GSA's new contract to feed hunger for agile IT development services
    url: http://federalnewsradio.com/technology/2015/02/gsas-new-contract-to-feed-hunger-for-agile-it-development-services/
  - title: Failure is an option for GSA's new 18F agile contract
    url: http://federalnewsradio.com/technology/2015/06/failure-is-an-option-for-gsas-new-18f-agile-contract/
  - title: GSA Developing Contract for Agile Delivery Services
    url: http://www.fedweek.com/fedweek-information-technology/gsa-developing-contract-agile-delivery-services/
  - title: GSA takes a big step towards baking agile into federal procurement
    url: https://govfresh.com/2015/01/gsa-takes-big-step-towards-baking-agile-federal-procurement/
  - title: Say goodbye to 100 page RFPs – 18F found another way
    url: http://www.federaltimes.com/story/government/acquisition/2015/07/27/18f-show-dont-tell/30737575/
  - title: 18F awards 16 spots on new Agile BPA
    url: http://www.federaltimes.com/story/government/acquisition/gsa-gwac/2015/08/28/agile-bpa-awards/71327396/
  - title: 18F steps up its acquisition game
    url: https://washingtontechnology.com/articles/2015/08/14/insights-soloway-18f-progress.aspx
  - title: Ohio Launches Highly Anticipated 18F-Style RFP
    url: http://www.govtech.com/data/Ohio-Launches-Highly-Anticipated-18F-Style-RFP.html
  - title: Guidelines for Agile, Challenge-based Procurement
    url: https://hackernoon.com/guidelines-for-agile-challenge-based-procurement-4531ff335422
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
Before founding Skylight, Chris Cairns and Robert Read designed and launched the Agile Delivery Services Marketplace — a new model for procuring software development services that replaced traditional written proposals with working prototypes. Built as a Blanket Purchase Agreement under GSA's IT Schedule 70, the marketplace gave agencies a pre-vetted pool of vendors who had proven they could deliver, not just describe it. The model was widely recognized and adopted by agencies and programs across government.
{% endcapture %}

{% capture challenge %}
In the wake of the Healthcare.gov launch failure, federal agencies increasingly recognized that agile delivery was the path forward for software. But recognizing the need and acting on it were two different things — existing procurement processes made it nearly impossible to identify vendors who could actually do the work.

The fundamental problem was how vendors were evaluated. Traditional procurement relied on written proposals — documents that rewarded strong writing and incumbency over real delivery capability. A vendor could describe agile practices fluently without ever having shipped working software using them. Agencies had no reliable way to tell the difference.

The resulting risks compounded. Vendor lock-in limited agencies' ability to course-correct. Procurement timelines stretched for months or years. And when contracts were finally awarded, agencies often discovered too late that their vendor couldn't deliver. What was needed wasn't a better way to evaluate proposals — it was a way to evaluate actual work.
{% endcapture %}

{% capture solution %}
Chris and Robert designed the marketplace around a single principle: make vendors prove they can do the work before they get the contract.

First, they replaced written proposals with a prototype challenge. Instead of submitting documents, vendors built working software using [openFDA](https://open.fda.gov/) as the data source — giving evaluators direct evidence of each vendor's design, development, and delivery capability. This "show, don't tell" approach made it possible to distinguish between vendors who understood agile and those who could execute it.

Next, they tackled vendor lock-in. A [public-domain contracting clause](/thoughts/blog/public-domain-procurement/) ensured that all deliverables — code, data, and documentation — remained government-owned. This meant agencies could switch vendors or bring work in-house without losing access to what had already been built.

Then, they built the contracting infrastructure to make the marketplace usable at scale. The vehicle combined a Blanket Purchase Agreement under GSA's IT Schedule 70 with ready-to-use solicitation templates, performance work statements, and oral evaluation guides — giving agencies everything they needed to run a procurement in weeks rather than months.
{% endcapture %}

{% capture results %}
- Attracted more than 700 participants to industry outreach events and received more than 200 prototype-based submissions via public GitHub repositories
- Evaluated all submissions within weeks using a three-person team and awarded contracts to 17 vendors
- Successfully defended the evaluation approach through 8 formal protests
- Recognized by industry, Congress, and the Office of Management and Budget as a model for procuring software development services
- Influenced multiple federal, state, and local agencies to adopt similar approaches
- Enabled nearly a dozen agencies to achieve improved software delivery outcomes through better vendor selection
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
