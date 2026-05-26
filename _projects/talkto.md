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
  - "Service delivery"
  - "Research & design"
  - "Software delivery"
  - "Product management"
excerpt: "A messaging service that let consumers text any business and receive a response within minutes, eliminating the frustration of phone calls and hold times."
project_members:
  - sean-johnson
technologies:
  - "HTML"
  - "CSS"
  - "JavaScript"
  - "Backbone.js"
  - "iOS SDK"
  - "Android SDK"
  - "Python"
  - "Django"
  - "Erlang"
  - "XMPP"
  - "PostgreSQL"
  - "Twilio"
  - "Amazon Web Services"
  - "Git"
  - "GitHub"
practices:
  - "Product management"
  - "User research"
  - "User experience design"
  - "Lean startup"
  - "User growth marketing"
  - "Responsive design"
  - "Agile development"
  - "DevSecOps"
  - "API-first development"
  - "API design"
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
TalkTo was a messaging service that let consumers text any business — from a local restaurant to a government office — and receive a response within minutes. Before joining Skylight, Sean Johnson served as product manager for TalkTo. He helped the team build a platform that replaced frustrating phone calls with the speed and convenience of text messaging.
{% endcapture %}

{% capture challenge %}
Consumers had few good options for getting quick answers from local businesses. Calling meant navigating phone trees, waiting on hold, and hoping someone picked up — a process most people found annoying enough to avoid altogether. For simple questions like “are you open tomorrow?” or “do you have this in stock?”, the effort of a phone call far outweighed the complexity of the question.

The problem wasn’t just inconvenient for consumers. Businesses missed out on potential customers who gave up rather than call. Small businesses in particular lacked the staff or technology to offer real-time digital communication, even as their customers increasingly preferred texting over talking. The gap between how people wanted to communicate and how businesses could respond kept widening.

Text messaging had become the dominant communication channel for millions of people. Yet no service existed to bridge the gap between consumers and the businesses they wanted to reach. The opportunity was clear: build a platform that let people text any business — even ones that had never heard of the service — and guarantee a fast response.
{% endcapture %}

{% capture solution %}
**TalkTo’s core promise was deceptively simple: text any business in the U.S. and get an answer in minutes — even businesses that had never heard of TalkTo.** Sean Johnson and the team built web and native mobile applications around that promise. From the user’s side, the interaction was just texting: type a reservation request, a product inquiry, a store hours check, and a response landed back, typically within five minutes.

Delivering on a five-minute guarantee meant the backend couldn’t buckle under spikes. **The team chose Erlang and the Extensible Messaging and Presence Protocol (XMPP) to handle the real-time scale that promise demanded.** Erlang’s soft real-time architecture and high availability were a fit no general-purpose stack could match. Around that core, Python and Django powered the web app, PostgreSQL persisted data, and Twilio routed short message service (SMS) traffic to consumers.

If the product was text, the surface had to be the phone. **Mobile-first wasn’t a tagline; it was a sequencing decision.** Native iOS and Android apps shipped alongside the web experience, meeting users on the device they were already holding when a question came to mind.

Then came the test of demand. **TechCrunch Disrupt SF 2011 turned the launch into a validation milestone in a single weekend** — finalist status, audience reaction, and judge feedback confirmed the market appetite. The team rode that momentum to refine the product, expand coverage, and raise $3 million in venture funding through lean startup practices.
{% endcapture %}

{% capture results %}
- **Named a TechCrunch Disrupt SF 2011 finalist**, launching to a national audience and validating consumer demand for text-based business communication
- **Averaged a five-minute business-to-consumer response time**, making text messaging a viable alternative to phone calls for everyday business inquiries
- **Raised $3 million in venture funding** to expand the platform’s coverage and scale the team
- **Recognized as one of Mashable’s 25 standout apps of 2012**, alongside coverage from BuzzFeed and other major publications
- **Acquired by Path in 2014**, with TalkTo’s place-messaging technology integrated into Path’s standalone Talk messaging app
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
