---
layout: default
title_tag: TalkTo
title: Developing a consumer-to-business messaging service
permalink: /work/experience/talkto/
redirect_from:
  - /work/talkto/
image: /img/projects/talkto/talkto.svg
image_description: A person texting with a shopekeeper.
feature_image:
feature_image_description:
feature_image_shadow:
order: 2800
display: true
tags: [service delivery, research & design, software delivery, product management, sean johnson]
excerpt: A messaging service that let consumers text any business, and receive an immediate response.
project_members:
  - sean-johnson
technologies:
  - HTML / CSS
  - JavaScript / Backbone
  - APIs
  - iOS SDK
  - Android SDK
  - Python / Django
  - Erlang / XMPP
  - PostgreSQL
  - Twilio
  - Amazon Web Services
  - Git / GitHub
practices:
  - Product management
  - User research
  - User experience design
  - Lean startup
  - User growth marketing
  - Mobile-first design
  - Agile development
  - DevSecOps
  - API-first development
  - RESTful API architecture
  - Web and native apps
  - Cloud hosting
news_posts:
  - title: "TechCrunch Disrupt SF Battlefield Semifinals: The Judges React"
    url: https://techcrunch.com/2011/09/14/techcrunch-disrupt-sf-battlefield-semifinals-the-judges-react/
  - title: TalkTo Allows Consumers To SMS Any Local Business And Get A Quick Response
    url: https://techcrunch.com/2011/09/13/talkto-allows-consumers-to-sms-any-local-business-and-get-a-quick-response/
  - title: TalkTo raises $3 million for app that lets you text questions to businesses
    url: http://archive.boston.com/business/technology/innoeco/2012/04/talkto_raises_3_million_for_ap.html
  - title: 25 Standout Apps From 2012 (Mashable)
    url: http://mashable.com/2012/12/03/apps-2012/#lSiclUoQeaqs
  - title: 27 Genius New Products You Had No Idea Existed
    url: https://www.buzzfeed.com/peggy/genius-new-products-you-had-no-idea-existed?utm_term=.ncZqOnZ2R#.iyZDPyQnA
  - title: Path Looks To Combine Commerce And Messaging With TalkTo Acquisition, Release Of New 'Talk' App
    url: https://techcrunch.com/2014/06/20/path-talk-talkto/
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
TalkTo was a popular digital messaging service that let consumers
text any business — such as a local grocery store or
government office — using their mobile or desktop device, and
receive a response within minutes.
{% endcapture %}

{% capture challenge %}
People find traditional ways of communicating with businesses
(such as via telephone) annoying and inefficient.
{% endcapture %}

{% capture solution %}
Given the rise and convenience of text messaging, Sean Johnson and the TalkTo
team created web and native mobile versions of an application that lets consumers
text any business, even those that've never heard of TalkTo, and receive
a response within five minutes. Speed and reliability were critical aspects of the
user experience so Erlang, which is known for its ability to support massively
scalable soft real-time systems with requirements on high availability, was chosen
as the back end.
{% endcapture %}

{% capture results %}
- TechCrunch Disrupt runner-up
- Averaged business-to-consumer text response time of five minutes
- Acquired by Path
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
