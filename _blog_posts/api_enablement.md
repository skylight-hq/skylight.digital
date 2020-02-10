---
layout: blog_post
title: Quick wins for legacy systems through API enablement
permalink: /thoughts/blog/quick-wins-for-legacy-systems-through-api-enablement/
redirect_from:
  - /blog/quick-wins-for-legacy-systems-through-api-enablement/
content_type: BlogPosting
image: /img/blog/api_enablement/api-benefits-napkin.png
image_description: Two people at a happy hour looking at a napkin describing the benefits of API enablement.
image_display: true
order: 1300
tags: [apis, digital services delivery, robert read, kin lane]
excerpt: A lighthearted, mock email between two government program managers discussing the immediate benefits of API enablement as a precursor to modernizing a legacy system.
authors:
  - Robert Read
  - Kin Lane
date_published: 2018-02-14
date: 2018-02-14
---

*The following email print-out was found sticking to a Metro air vent somewhere east of 14th in Washington DC.*

Hey Terri,

The questions you raised at the happy hour the other night really stuck with me. Like you, as a program manager of a legacy system, I sometimes don't know how to chip away at this beast I'm responsible for. As I mentioned, my arguments for a full rewrite are going nowhere under the current budget.

However, I've been giving the matter some thought and discussing it with my friends &mdash; the ones you mockingly called the "fanboy nerdlings" the other night.

They've suggested API enablement as a precursor to a modernization strategy. At first I thought this was another fad, but they've made some compelling arguments for three big benefits of API enablement, and I thought I'd share them with you &mdash; especially in light of your security concerns, which are even worse than mine, given the sensitive nature of the data in your legacy system.

First, they claim that we can quickly, in less than a month, enable an API on top of existing code (obviously we need a contractor for this) that will allow us to build a mobile app to access the most-used parts of the app. Ever since we got "The Mobile Directive" from the brass, I've been worrying about how to make a smart-phone friendly app for at least our core functionality. They claim that if we had an API, we could build a prototype mobile app in just a month that securely accesses the most important 20% of the app. I'll believe it when I see it, but that's a short enough time that I can triple it for good measure and ask those idiot contractors working for me now to do it &mdash; and triple the estimate &mdash; before I have to rebid the contract. Having a prototype, however lame, would get the Big Boss off my back, if you know what I mean.

Secondly, and this one means more for you, they claim we could securely open an API that would allow read-only reporting. That is, they can let the database be safely queried in only a limited fashion to make reports. They promise this could be done giving access to only certain tables and not allowing raw SQL to be executed, which would be bad &mdash; I think. They claim that they can "throttle" it so that the computational demands can be limited, and even a naive denial-of-service attack wouldn't do anything. Plus they can let us control the keys to the API. I'm a little hazy on how people could link the data in different tables without using SQL, but they claim it can be done. I know you've got that Department of Justice ruling to deal with saying you have to release those incident statistics publicly &mdash; I wonder if this might be the best way for you to do it?

Thirdly, they claim this is a way to "fence off a swamp." For nerds they use a lot of earthy language. Apparently "swamp" is programmer-slang for "bug-generator," by which they mean the especially sucky parts of the code where most of the problems lie. The idea is you build the API, and then demand a unit test suite from Contractor A written against the API, and then get Contractor B to try to rewrite the swamp. Since the unit test suite runs against the existing legacy app, that means that when B gives you the code, you can test it and be (pretty) sure it won't screw things up too badly. I'm skeptical of this, but it has to be better than closing your eyes and praying, which is what I've been doing for the last three bug-fix releases &mdash; and you know what happened last time. Maybe that part of your code written by the D-Team (as you called them) could be rewritten this way as well.

Anyway, maybe let me know if you want to get together and talk about it.  They drew it for me a a napkin &mdash; I'll send you a picture &mdash; but they claim that if you "whiteboard it out" it'll make more sense.
