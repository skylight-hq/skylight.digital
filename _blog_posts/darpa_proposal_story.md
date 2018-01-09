---
layout: blog_post
title: Story of a DARPA Proposal
permalink: /blog/story-of-a-darpa-proposal/
content_type: BlogPosting
image: /img/blog/darpa_proposal_story/darpa-iot.jpg
image_description: Stylized image of the DARPA logo conveying the concept of the Internet of Things.
image_display: true
order: 1100
tags: [digital services delivery, internet of things, robert read]
excerpt: A brief story of our experience submitting a proposal to DARPA to conduct research on the latest Low Power Wide Area Network technology.
authors:
  - Robert Read
date_published: 2018-01-09
date: 2018-01-09
---

[Geoff Mulligan](/about/#geoff-mulligan) is a pioneer in the Internet of Things (IoT) space and Chairman of the <a href="https://www.lora-alliance.org/" target="&#95;blank">LoRa Alliance</a>. When he suggested that we apply for a <a href="https://www.darpa.mil/" target="&#95;blank">DARPA</a> grant to exercise and prove out the latest Low Power Wide Area Network (LPWAN) technology, I was a little nervous about the DARPA mystique &mdash; were we good enough to really do something like that? Would it be good for Skylight even if we won? After all, doing a good job on a research grant is a heavy burden and research is unpredictable.

This particular idea was to build a distributed gunshot analysis system that could be very rapidly deployed using a sensor net of LoRa connected sensors. In theory, such a net could accurately geolocate gunshots. This seemed like it could save lives. It would also be an interesting real-world test of the LoRa capability.

![Dense Sense infographic.](/img/blog/darpa_proposal_story/dense-sense-infographic.png)

As the idea sank in, it became clear that we had the talent to perform the work. I am a computer scientist, but I build robots and can also build circuit boards; we had [Kin Lane](/about/#kin-lane), who could design an open API-driven platform for us; we had [John Teeter](/about/#john-teeter) and [Chris Cairns](/about/#chris-cairns), both of whom know how to build large systems and we had another ace in the hole <a href="http://blindgoat.org/" target="&#95;blank">Dr. Martin Smith</a>, who was a practical geophysics researcher who could do all the needed signal processing in his sleep.

So we started putting the grant proposal together. I spent about a week on it; there were probably three weeks total labor involved. Chris, as our Managing Partner, had to do a lot of it: getting a solid budget and all the other paperwork done was no joke. I worked a lot with Martin and Geoff come up with a phased approach that would mitigate risk by letting us test each major risk factor independently.

In the end we proposed covering a 10-square-mile test area with up to 30 sensors, each of which would have a battery, a microphone, minimal signal processing, and a LoRa radio chip. The data would be collected via the LoRaWAN and sent to our open platform. The platform would have pluggable processing, of which relative simple gunshot detection and geolocation would be the first plug-in. Each sensor would cost about $35; in other words, they would be almost "throwable" &mdash; you could just pitch them out of a moving truck to cover the area.

Unfortunately DARPA didn't fund it; they wanted more specific hypothesis-testing than we wrote-up.

We are proud of the work we did, so we are placing our <a href="https://github.com/skylight-hq/darpa-dense-sense-proposal/blob/master/README.md" target="&#95;blank">research grant proposal online</a> in the spirit of radical transparency and fierce openness, which is part of Skylight's company principles. We have written this story to share our experience with other firms that might be considering something similar.

We have not yet decided if we will move forward with this. We welcome comments and communications from firms that might be interested in cooperating in the IoT space.
