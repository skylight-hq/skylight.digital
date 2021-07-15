---
layout: blog_post
title: Public domain procurement
permalink: /thoughts/blog/public-domain-procurement/
redirect_from:
  - /blog/public-domain-procurement/
content_type: BlogPosting
image: /img/blog/public_domain_procurement/creative-commons-public-domain.svg
image_description: Creative Commons Public Domain badge symbol.
image_display: true
order: 700
tags: [procurement, chris cairns]
excerpt: Avoiding vendor lock-in situations is just one of many reasons that the government should consider using public domain procurements.
authors:
  - Chris Cairns
date_published: 2017-07-24
date: 2017-07-24
---
Many of the federal government's functions are enhanced or enabled through the production of *custom* data, software, and other assets. Contractors do a lot of this production work. Over the years, I've seen a number of cases in which the government has mistakenly or unknowingly allowed a contractor to claim copyright over these assets, yielding nightmarish vendor lock-in situations. Reversing such lock-in sometimes involves the government paying a king's ransom in order to reclaim rightful ownership, but only after years of bitter negotiations and "non-competitive" contract extensions. The biggest losers end up being taxpayers who are forced to pay a multiplier of the original production cost. End users suffer, too, because everyone's attention is consumed with legal matters over improving their experience.

So what can the government do to protect itself and better serve citizens? Under the Federal Acquisition Regulation, the government is entitled to "<a href="https://www.acquisition.gov/far/html/Subpart%2027_4.html">unlimited rights</a>" over any asset (such as data or software) that's delivered to it. That means the government can reuse the asset over and over again without ever being charged for it.

In constructing [18F's Agile Delivery Services Marketplace](/work/experience/agile-delivery-services-marketplace/), I, along with several others, went to great lengths to assert the government's unlimited rights at the contract-vehicle level, which is a blanket purchase agreement (BPA) under the General Services Administration's (GSA's) IT Schedule 70. Not only that, we took it one step further by transferring ownership rights to the public domain using the following language, courtesy of <a href="https://www.linkedin.com/in/noahkunin/">Noah Kunin</a> and many legal reviews:

**15.0 DATA RIGHTS AND OWNERSHIP OF DELIVERABLES**

<blockquote cite="https://ads.18f.gov/assets/ADS_RFQ_Final.pdf" markdown="1">
It's GSA's intent that any data or deliverable created as a result of a task order under this BPA be committed to the public domain.

Contracting Officers are encouraged to designate in task orders the following items as property of GSA with the intention of committing the items to the public domain: all data, documents, graphics and code created under this BPA including but not limited to, plans, reports, schedules, schemas, metadata, architecture designs, and the like; new open source software created by the Contractor and forks or branches of current open source software where the Contractor has made a modification; new tooling, scripting configuration management, infrastructure as code, or any other final changes or edits to successfully deploy or operate the software.
</blockquote>

We did so for a number of reasons:

- To prevent vendor lock-in situations.
- To avoid the government paying twice for something it had already purchased.
- To promote asset reuse, both inside and outside of the government. Code reuse, for example, saves time and money, fosters stronger and more secure systems, and can even spur economic growth and innovation.
- To encourage public participation in the development of assets alongside vendors. By committing everything to the public domain, issues around third-party licensing are avoided.
- To focus vendors, under the watchful eye of public scrutiny, on producing the highest quality results for the government.

It's also for these reasons that I encourage the government (attention: contracting officers) to explore using the same or similar <a href="https://ads.18f.gov/assets/ADS_RFQ_Final.pdf">contractual language</a> in future procurements. Keep in mind that such language is only part of the solution to realizing the benefits of public domain procurement. You also need a way to make the procured assets publicly accessible, which tools like <a href="https://github.com/">GitHub</a> are designed to do.
