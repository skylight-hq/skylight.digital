---
layout: default
title_tag: Carrot
title: Building an asynchronous communication platform for distributed teams
permalink: /work/experience/carrot/
redirect_from:
  - /work/opencompany/
  - /work/carrot/
image: /img/projects/carrot/carrot.svg
image_description: Multiple people reading a shared company update, representing asynchronous communication.
feature_image:
feature_image_description:
feature_image_shadow:
order: 2400
display: true
tags: [service delivery, research & design, product management, software delivery, apis, sean johnson]
excerpt: An open-source communication platform that helped distributed teams stay aligned through structured, long-form updates — without the noise of real-time chat.
project_members:
  - sean-johnson
technologies:
  - HTML / CSS
  - JavaScript / ClojureScript / React
  - WebSockets
  - Clojure
  - APIs
  - iOS SDK
  - Android SDK
  - Microservices
  - RethinkDB
  - Amazon Web Services
  - Git / GitHub
practices:
  - User research
  - User experience design
  - Lean startup
  - User growth marketing
  - Responsive web design
  - Agile development
  - DevSecOps
  - API-first development
  - RESTful, HATEOAS API architecture
  - Microservices architecture
  - Third-party integration
  - Open-source development
  - Web and native apps
  - Cloud hosting
news_posts:
  - title: Who Are The Biggest Disruptors of 2019? The Answer May Surprise You
    url: https://www.inc.com/jonathan-steiman/five-innovative-startups-to-watch-in-2019.html
  - title: Carrot - Leadership communication for growing and distributed teams
    url: https://www.producthunt.com/posts/carrot-3c283ae5-337a-409b-b48f-72f15dbcc454
  - title: The best digital products 2019
    url: https://www.notion.so/The-best-digital-products-2019-177f19f9f8e448ffa4e605089a071935
project_url:
project_cta:
source_code_url: https://github.com/open-company
---

{% capture summary %}
Skylight's Sean Johnson designed and built Carrot — an open-source, asynchronous communication platform for distributed teams. Where tools like Slack optimized for real-time conversation, Carrot optimized for clarity: structured updates, topic-based discussions, and a reading experience that didn't require everyone to be online at the same time.
{% endcapture %}

{% capture challenge %}
By the mid-2010s, real-time chat tools had become the default communication layer for distributed teams. But the always-on model came with a cost. Important updates disappeared into fast-moving channels. Staying informed meant staying connected — constantly. And the more a team grew, the worse the signal-to-noise ratio became.

The problem hit leaders and individual contributors differently but equally hard. For leaders, it was a visibility problem: there was no reliable way to communicate priorities, share context, or know whether the team had actually absorbed what mattered most. For individuals, it was a focus problem: every notification was an interruption, and the fear of missing something important kept people tethered to their screens.

The underlying issue wasn't that teams needed less communication — it was that they needed a different kind. Real-time chat optimized for speed and presence. What distributed teams actually needed was a tool that optimized for clarity and asynchronous participation.
{% endcapture %}

{% capture solution %}
Sean designed Carrot around a bet: that the best communication tool for distributed teams wouldn't look like chat at all. Instead of optimizing for real-time presence, he built a platform that optimized for thoughtful, structured communication people could engage with on their own schedule.

The core model centered on narrative-driven updates rather than fragmented chat threads. Leaders and team members published structured posts — context-rich, topic-specific — that created focused discussions underneath. Conversations stayed attached to the update that prompted them, so context was never lost in a scroll of unrelated messages.

Technically, he built Carrot as the open-source [OpenCompany](https://github.com/open-company) platform using an API-first, microservices architecture that supported web and mobile applications. The stack — ClojureScript and React on the front end, Clojure microservices on the back end, with WebSockets for real-time interaction where it mattered — was designed to feel as responsive as chat without demanding constant attention.

The result was a product that let distributed teams stay aligned without being always-on — reducing noise while keeping the conversations that mattered visible and persistent.
{% endcapture %}

{% capture results %}
- Built and launched a full asynchronous communication platform spanning web, iOS, and Android
- Named one of Inc. Magazine's biggest disruptors of 2019 and featured on Product Hunt's best digital products of 2019
- Grew an early user base and validated product-market fit through iterative research and testing
- Open-sourced the underlying OpenCompany platform to enable broader adoption and community contribution
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
