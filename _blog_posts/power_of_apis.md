---
layout: blog_post
title: "Maximizing the power of APIs: balancing freedom and control"
permalink: /thoughts/blog/maximizing-the-power-of-apis-balancing-freedom-and-control/
redirect_from:
  - /blog/maximizing-the-power-of-apis-balancing-freedom-and-control/
content_type: BlogPosting
image: /img/blog/power_of_apis/power-of-apis.png
image_description: An arm showing a flexed muscle enclosed within API computing symbols.
image_display: true
order: 2000
tags: [apis, service delivery, robert read]
excerpt: If an organization really wants to empower its users, it needs a way to provide maximum power to the user with both safety and security. APIs allow you to design a solution that's not simply the average of these extremes, but rather provides 90% of the power with 99% of the security.
authors:
  - Robert Read
date_published: 2018-05-08
date: 2018-05-08
---

Application Programming Interfaces (APIs) allow a providing organization to give others the ability to programmatically use the data, algorithms, and computers of the providing organization while retaining control.

It's easy to give others full use of your data and computers if you don't need to retain control &mdash; just send them your passwords, and then they can do anything they want. Obviously, this is a bad idea. It's *too free*. The opposite extreme is to not allow any access at all, which while perfectly safe and is also *perfectly useless*.

If an organization really wants to empower its users, it needs a way to provide maximum power to the user with both safety and security.

APIs allow us to design a solution that's not simply the average of these extremes, but rather provides 90% of the power with 99% of the security. The key is that APIs provide **PROGRAMMATIC** access to your resources.

## APIs vs. UIs

Computers are fundamental tools for understanding data. If you impede your customer's ability to leverage their own programs, you severely limit their ability to understand your data. Yet many of us, following custom started in the 90s, think first of producing an HTML page, or user interface (UI) to render data.

This tends to produce data in small, page-sized chunks that anyone can understand. However, it also limits the ability to comprehend all of the data in its entirety.

An analogy may be taken from the handling of rare manuscripts. A curator may choose to allow people only to read a precious manuscript  in a special, climate-controlled room turning the pages with cotton gloves. Instead, they may photograph each page once and put the photo on the internet. A vastly larger number of scholars can study the manuscript in this mode. In a sense, offering it to all who wish to come to your reading room seems more egalitarian, because it doesn't require that anyone have a computer. In practice, however, it tremendously limits the number of persons who can leverage the work. The best course of action is to do both.

Analogously, if you offer access to your data through a website, a human being may be able to access any individual datum conveniently. However, many other uses of the data that can be accomplished programmatically can't be accomplished through a website &mdash; or at least not easily.

A website is a natural lowest common denominator, and likewise seems egalitarian. Because 95% of your customers don't have the skills to directly use an API, we can't conclude that those 95% won't benefit from API-based access being given to the remaining 5%. In fact, the 5% that can use the API may offer new and unexpected ways of using the data to the other 95%. As I've argued [elsewhere](https://thepolicy.us/the-minimum-government-responsibility-api-first-24cf67b9ec73), offering an API is in a sense the first duty of government, because it gives people the freedom to do all other things.

## An example of balancing freedom and power

On the surface, offering people the ability to run any program they like against your data may seem dangerous, but it's the API that allows you offer this ability without exposing yourself to undue risk.

For example, suppose you have a crime database. People want to calculate statistics against this data, and let's assume that supporting them in doing so is a part of your mission. You could let them actually execute code on your computer or directly against your data. But a bad actor would be able to corrupt your data or tie-up your computers with wasteful queries, preventing others from using the data.

You could deny everyone access, but then someone would be tempted to "scrape" your website to copy all of the data. This would mean that they capture a copy of your data that you have no way to correct. Eventually their data would get out of sync with your data, and they would effectively be reporting erroneous statistics.

The solution to these problems lies in designing an appropriate API that allows efficient computation of statistics against your database.

This approach has a number of advantages for you:

* Because you can provide full statistics, you need only provide them to a limited number of people. "API keys" are they means for doing this. If you force people to use your public website, you lose this power.
* Because you control the statistics that you offer, you can make sure that they can be computed without wasteful computation on your computer. Because it's efficient, you effectively prevent a "denial-of-service" attack, in which, whether by design or accident, someone ties-up your resources preventing access by others.
* Because you're computing the statistics, you can know that they're always up-to-date. There's a single, authoritative system-of-record (sometimes called a *source-of-truth*). Nobody is tempted to copy your data, which would allow the confusion of whose data is correct to arise.
* Because you're offering the API, you can see and monitor the way in which the data is accessed. For example, if you find people are very interested in gun crime, or the time of day in which crime occurs, you can ask yourself what that interest means and if it can be better served.

But perhaps more importantly, this approach offers the consumer of the API many benefits as well:

* Some of the effort of programming is done for the user already, in that you have distilled your work down to specific statistics that are inherently meaningful. The user doesn't have to sort through your documentation to figure this out themselves.
* The consumer doesn't have to set up their own database and figure out how to compute against it.
* The consumer's job of keeping up-to-date with the evolution of the data becomes easier.
* When you offer a new statistic, the consumer can immediately consume it. Shared evolving knowledge is easily communicated to them. Similarly, you may be able to consume their suggestions via open-source sharing easily.

## Representing choices

As a general relationship, the more authority given to the user, the more utility they receive, but the more risk incurred by the host (see diagram "Without an API").

![Diagram showing relationship between risk and utility without an API.](/img/blog/power_of_apis/risk-utility-graph-without-api.png)

However, APIs allow us to break this general relationship between risk and utility. With a well-designed API, it's possible to have low risk and high utility. This is represented in the second figure below titled "With an API."

![Diagram showing relationship between risk and utility with an API.](/img/blog/power_of_apis/risk-utility-graph-with-api.png)

With an API, you can have a solution, such as the example "Compiled Query Menu" that's high utility and low risk. Such an API offers a set of vetted, pre-defined queries, which are guaranteed to run efficiently &mdash; and perhaps documented &mdash; to ensure validity and inform their interpretation. This isn't possible without an API, because there's no solution that offers that much utility without being too free and giving up too much control.

Loosely inspired by Simon Wardley's "[map](http://blog.gardeviance.org/2015/02/an-introduction-to-wardley-value-chain.html)" concept, we can analyze solutions on this two dimensional risk vs. utility diagram. Any proposed solution has a certain risk and a certain utility.  Our goal, of course, is to seek high utility, low risk, and low authority. The figure "With an API" above shows two examples of this. One is access by a "naked" SQL query &mdash; that is, an API could allow arbitrary SQL to be executed on behalf of the user (presumably against a read-only database). This is generally a bad idea. It has a lot of risk that computer resources will be tied-up answering inefficient queries. Moreover, it doesn't offer the highest utility, because the user has to figure out how to write queries themselves, which may be quite burdensome and subject to unexpected change.

If we look at the diagram "With an API" above, we can see a *move* represented by the arrow from *Naked SQL* to *Compiled Query Menu*. This API offers less authority to users because it doesn't allow full queries to be executed. However, it offers higher utility, because the pre-programmed queries represent evolved knowledge about how to extract valuable data from the database. It offers less risk, because it offers better monitoring of what's being performed, a more limited set of actions, and less possibility of executing inefficient queries.

The job of a development team is to think about how to move any solution to the left and higher &mdash; that is, how to offer less authority, less risk, and more utility. It may be useful to place various proposed solutions on this diagram to understand tradeoffs.

Experts such as [Kin Lane](/blog/kin-lane-harnessing-the-connective-power-of-apis/) have described a number of techniques for doing this that can be represented as "moves" on this graph. For example, we can imagine requirements, such as the need to offer personally identifiable information (PII) that greatly increases risk and moves us far to the right on the chart. On the other hand, if we're offering an API to data that's already available to the public, we're starting somewhere on the left side of the chart. Some of the features of API management that are now available "out-of-the-box" greatly improve our position on this chart at low cost, so long as the host actually knows about them and takes advantage of them.

Things that increase risk include:

* Storing PII or sensitive or classified data;
* A heavy reliance on external agencies to deliver web and mobile apps using this data;
* High volume of requests from external actors; and
* Insufficient internal resource to assist users in understanding the data.

Modern API practices and technologies offer a toolbox of techniques that can be thought of as "moves" on our risk/utility chart. Some of these practices decrease risk (moving to the left) or increase utility (moving up) or both.

As an exercise to the reader, think about how each of the practices listed below moves a solution on the risk/utility diagram. Also, think about circumstances when these practices may not be needed, such as when the data you're serving is completely public to begin with, or the API is only offered to 100% trusted internal applications.

1. Provide data responses in comma-separated value form for easy consumption by spreadsheets.
2. Provide HTML responses to make answers easily used by consumers.
3. Log all activity and audit in real-time to manage API consumption.
4. Use automated rate limiting in an API management layer.
5. Force all applications to go through an approval process before being granted API keys.
6. Provide a sandbox and test if applications can use data responsibly.
7. Enforce encryption in storage as well as in transit.
8. Employ three-legged OAuth to govern platform, developer, and user engagement.
9. Subject all applications to regular auditing and review of API usage.
10. Validate request and response schema at API request time.

## Need help leveraging the power of APIs?

API management has grown into a rich field that offers tremendous benefits, but with that power comes many choices that must be made. The risk/utility diagram may be a useful in having executive whiteboard discussions of these choices. [Kin Lane](/blog/kin-lane-harnessing-the-connective-power-of-apis/) is an expert in these issues and is available to [work with you](/connect/contact/).
