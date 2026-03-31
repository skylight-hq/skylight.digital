---
layout: default
title_tag: "TalkTo"
title: "Making it possible to text any business and get a fast answer"
permalink: /work/experience/talkto/
redirect_from:
  - /work/talkto/
image: /img/projects/talkto/talkto.svg
image_description: "A person texting with a shopkeeper."
feature_image:
feature_image_description:
feature_image_shadow:
order: 2800
display: true
tags:
  - "service delivery"
  - "research & design"
  - "software delivery"
  - "product management"
  - "sean johnson"
excerpt: "A messaging service that let consumers text any business and receive a response within minutes, eliminating the frustration of phone calls and hold times."
project_members:
  - sean-johnson
technologies:
  - "HTML / CSS"
  - "JavaScript / Backbone"
  - "APIs"
  - "iOS SDK"
  - "Android SDK"
  - "Python / Django"
  - "Erlang / XMPP"
  - "PostgreSQL"
  - "Twilio"
  - "Amazon Web Services"
  - "Git / GitHub"
practices:
  - "Product management"
  - "User research"
  - "User experience design"
  - "Lean startup"
  - "User growth marketing"
  - "Mobile-first design"
  - "Agile development"
  - "DevSecOps"
  - "API-first development"
  - "RESTful API architecture"
  - "Web and native apps"
  - "Cloud hosting"
news_posts:
  - title: "TalkTo, New App That Lets You Text A Business, Might End Automated Phone Operators For Good"
    url: https://www.huffpost.com/entry/talkto-new-app_n_2157401
  - title: "Path Talk: Not Only Can You Text Friends, You Can Text Any Business In The U.S."
    url: https://www.fastcompany.com/3032179/path-talk-not-only-can-you-text-friends-you-can-text-any-business-in-the-us
  - title: "TalkTo Allows Consumers To SMS Any Local Business And Get A Quick Response"
    url: https://techcrunch.com/2011/09/13/talkto-allows-consumers-to-sms-any-local-business-and-get-a-quick-response/
  - title: "TechCrunch Disrupt SF Battlefield Semifinals: The Judges React"
    url: https://techcrunch.com/2011/09/14/techcrunch-disrupt-sf-battlefield-semifinals-the-judges-react/
  - title: "Disrupt Finalist TalkTo Brings Its SMS-Based Communication Platform To The Web"
    url: https://techcrunch.com/2012/11/13/disrupt-finalist-talkto-brings-its-sms-based-communication-platform-to-the-web/
  - title: "Path Looks To Combine Commerce And Messaging With TalkTo Acquisition, Release Of New 'Talk' App"
    url: https://techcrunch.com/2014/06/20/path-talk-talkto/
  - title: "Path spins out dedicated messaging app that'll let you text businesses too"
    url: https://www.engadget.com/2014-06-20-path-talk.html
  - title: "Path Launches a Messaging App, Acquires TalkTo"
    url: https://thenextweb.com/apps/2014/06/20/path-launches-standalone-messaging-app-acquires-concierge-service-talkto/
  - title: "TalkTo raises $3 million for app that lets you text questions to businesses"
    url: https://archive.boston.com/business/technology/innoeco/2012/04/talkto_raises_3_million_for_ap.html
  - title: "25 Standout Apps From 2012"
    url: https://mashable.com/2012/12/03/apps-2012/
  - title: "27 Genius New Products You Had No Idea Existed"
    url: https://www.buzzfeed.com/peggy/genius-new-products-you-had-no-idea-existed
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
TalkTo was a messaging service that let consumers text any business — from a local restaurant to a government office — and receive a response within minutes. Before joining Skylight, Sean Johnson served as product manager for TalkTo, helping the team build a platform that replaced frustrating phone calls with the speed and convenience of text messaging.
{% endcapture %}

{% capture challenge %}
Consumers had few good options for getting quick answers from local businesses. Calling meant navigating phone trees, waiting on hold, and hoping someone picked up — a process most people found annoying enough to avoid altogether. For simple questions like "are you open tomorrow?" or "do you have this in stock?", the effort of a phone call far outweighed the complexity of the question.

The problem wasn't just inconvenient for consumers. Businesses missed out on potential customers who gave up rather than call. Small businesses in particular lacked the staff or technology to offer real-time digital communication, even as their customers increasingly preferred texting over talking. The gap between how people wanted to communicate and how businesses were set up to respond kept widening.

Text messaging had become the dominant communication channel for millions of people, yet no service existed to bridge the gap between consumers and the businesses they wanted to reach. The opportunity was clear: build a platform that let people text any business — even ones that had never heard of the service — and guarantee a fast response.
{% endcapture %}

{% capture solution %}
The product was simple from the user's perspective: type a question — a reservation request, a product inquiry, a store hours check — and TalkTo routed it to the business and delivered a response, typically within five minutes. Sean Johnson and the TalkTo team built web and native mobile applications that made this work for **any business in the United States**, even ones with no digital presence and no knowledge that the service existed.

Speed and reliability were non-negotiable, which shaped every technical decision. The team chose **Erlang and the Extensible Messaging and Presence Protocol (XMPP) for the backend** because Erlang's architecture supports massively scalable soft real-time systems with high availability — exactly what a five-minute response guarantee demanded. The rest of the stack — Python and Django for the web application, PostgreSQL for data persistence, and Twilio for SMS routing — balanced rapid development with production-grade performance.

**Because the core interaction was text-based, the team took a mobile-first approach from day one.** Most users reached for their phones first, so native iOS and Android apps were prioritized alongside the web experience. This ensured the service met users where they already were — on their mobile devices, ready to text.

The TechCrunch Disrupt stage in 2011 served as both a **launch platform and a demand validation milestone.** Audience response and judge feedback confirmed the market appetite, and the team used that momentum to refine the product, expand coverage, and raise $3 million in venture funding through lean startup practices — validating quickly and iterating based on real usage data.
{% endcapture %}

{% capture results %}
- **Named a TechCrunch Disrupt SF 2011 finalist**, launching to a national audience and validating consumer demand for text-based business communication
- **Averaged a five-minute business-to-consumer response time**, making text messaging a viable alternative to phone calls for everyday business inquiries
- **Raised $3 million in venture funding** to expand the platform's coverage and scale the team
- **Recognized as one of Mashable's 25 standout apps of 2012**, alongside coverage from BuzzFeed and other major publications
- **Acquired by Path in 2014**, with TalkTo's place-messaging technology integrated into Path's standalone Talk messaging app
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
