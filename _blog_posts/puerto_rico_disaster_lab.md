---
layout: blog_post
title: "Puerto Rico, a disaster lab: Three research proposals"
permalink: /thoughts/blog/puerto-rico-a-disaster-lab-three-research-proposals/
redirect_from:
  - /blog/puerto-rico-a-disaster-lab-three-research-proposals/
content_type: BlogPosting
image: /img/blog/puerto_rico_disaster_lab/hurricane-maria.svg
image_description: Hurricane Maria engulfing Puerto Rico.
image_display: true
order: 2300
tags: [people and culture, internet of things, robert read]
excerpt: Puerto Rico is a natural testing-ground for disaster resilience technologies due to its unique characteristics. Here we present three research project ideas in the Internet of Things space.
authors:
  - Robert Read
date_published: 2018-10-02
date: 2018-10-02
---

On June 29th through July 1st, I had the [pleasure](https://medium.com/public-invention/trip-report-from-meshing-with-data-hackathon-2018-bayamon-puerto-rico-7c8e77d67c74) of acting as professional mentor for the "Meshing with Data" Hackathon in [Bayamón, Puerto Rico](https://en.wikipedia.org/wiki/Bayam%C3%B3n,_Puerto_Rico). The purpose of the hackathon was to explore mesh radio systems as reliable alternatives to cellular data services, a need brought home by Hurricane Maria and made possible by recent technological advances, [LoRa](https://www.lora-alliance.org/) not being the least of them.

![Picture of a downed powerline.](/img/blog/puerto_rico_disaster_lab/downed-powerline.png)

The hackathon was very successful as hackathons go, but any one-weekend event can only accomplish so much. During some downtime when none of the eight teams seemed to want my help, I sat down with some leaders of the Puerto Rico technical community to articulate unique "opportunities" that Puerto Rico has. Some of these are advantages, some of these are disadvantages. Having attempted a [disaster relief mission](https://www.presidentialinnovation.org/news/relief-mission-to-puerto-rico) to Puerto Rico 71 days after Hurricane Maria, I've witnessed firsthand the resilience and optimism of Puerto Ricans and their ability to deflect adversity or turn it to their advantage.

In this article, I summarize those unique characteristics and add my own ideas: three research projects in the Internet of Things (IoT) space that Puerto Rico is uniquely positioned to undertake. I place these ideas in the public domain &mdash; anyone may act on these ideas and even take the names I've assigned to them. Although Skylight would like to act on these ideas, we're unlikely to do so alone and proffer these ideas in hope that enough energy and interest will build around them for someone to, for example, write a grant to implement them.

## Puerto Rico: a disaster lab

Our brainstorming included Ruth Silva, Froilan Irizarry, Javier Malavé, and Sasha Méndez. We later presented these ideas to Professors Eliana Valenzuela and Patricia Ordoñez, Jose Quinones, who hosted the hackathon, and Nel Hernandez.

Here was our original scribing:

![Graphical transcription of a whiteboard brainstorming session on how Puerto Rico is essentially a disaster lab.](/img/blog/puerto_rico_disaster_lab/scribing.svg)

I've interpreted this in text at the end of this article, but let me try to explain it in prose. I think it was Sasha Méndez who articulated the idea that Puerto Rico *is* a "Disaster Lab" &mdash; and she's right.

### Geography

Puerto Rico's [geography](https://en.wikipedia.org/wiki/Geography_of_Puerto_Rico) is in many ways an ideal laboratory for natural disasters. In the first place, it's a medium-sized island (3,515 square miles), which is neither too small nor too big. It's big enough that it has mountains, a dry forest, a rainforest, coastal regions, and beaches, but it's small enough that you can reach any point on the island with an SUV in two hours.

![Puerto Rico's unique geography.](/img/blog/puerto_rico_disaster_lab/map-terrain.svg)

The mountains of Puerto Rico are very steep, rugged, and covered with dense vegetation making this terrain hard to cover with cell towers, or any other radio technology. However, a lot of people live in communities in these mountains, and so the need for telecommunications is great. This disadvantage is a perfect challenge for testing radio technology.

Puerto Rico, being in the Caribbean, is frequently struck by tropical storms and hurricanes, of which Hurricane Maria in 2017 was a catastrophic example. Additionally, Puerto Rico suffers from frequent landslides.

### Culture and politics

Puerto Rico has a well-developed startup culture and 24.6% of the population over 25 have a college degree. As an island, Puerto Ricans are "insular" &mdash; ideas don't cross the barrier into the island easily, but once there, they tend to spread quickly.

Politically, Puerto Rico is divided into 78 semi-autonomous and somewhat competitive [municipalities](https://en.wikipedia.org/wiki/Municipalities_of_Puerto_Rico). This means that it's quite possible to find a municipality incented to try a new idea.

![Puerto Rico's many municipalities.](/img/blog/puerto_rico_disaster_lab/municipalities.svg)

### Infrastructure

The power infrastructure of Puerto Rico was severely damaged by Hurricane Maria and remains fragile and likely to be damaged in the future.

Additionally, Puerto Rico has double the [US average](https://www.npr.org/sections/money/2011/10/27/141766341/the-price-of-electricity-in-your-state) of $0.12/kWh [electricity costs](https://www.nrel.gov/docs/fy15osti/62708.pdf) at $0.24/kWh, which incentivizes research on renewables.

Puerto Rico has little public transport, so it's a very road-based region. Landslides are a common problem, which occasionally isolates small communities or individuals, creating a need for, for example, drone-based delivery or emergency supplies.

![Picture of a landslide caused by Hurricane Maria.](/img/blog/puerto_rico_disaster_lab/landslide.png)

## A proposal: project-based-research planning

In short, Puerto Rico is an ideal place for investigating and testing emergency- and resiliency-oriented radio and power technology.

By showing a small amount of technical and architectural leadership, we can capitalize on unique geographic, cultural, and structural opportunities that Puerto Rico has to focus its local talent and attract off-island sponsorship to research projects of global value.

I propose that we identify specific projects that can be the focus of research efforts, meaning specifically that someone should initiate and seek funding for these or similar projects. Skylight has [published](/blog/story-of-a-darpa-proposal/) the story of it's attempt to get a DARPA grant focusing on LoRa technology. We're open to potentially partnering on these projects, but probably aren't going to execute them in the absence of energetic partners. An ideal partnership would include researchers living in Puerto Rico, grants from outside Puerto Rico, and collaborating leadership from both inside and outside Puerto Rico.

### Puerto Rican technological branding

In order to raise the profile of these three projects, I recommend branding them as "Puerto Rican" projects. This may motivate students to participate in small components, and may motivate sponsors and funding agencies to support these projects, all of which can be open-source projects reused nationally and internationally. However, each project may be of interest to Americans in general based on the famous catastrophe of Hurricane Maria, which creates a recognizable "Puerto Rican" brand. The brand should come to mean "expert in communication and power technology related to natural disasters."

### A loose research program

Rather than execute another competitive hackathon, it might be possible to execute a subsequent cooperative "HackWeekend" or "CooperateAthon" organized around specific goals. With some work performed ahead of time to establish APIs, unit tests, and overall project organization, it might be possible to create a list of projects that would all build toward a unified goal. Possibly this preparation could challenge and bring together electrical engineers, biologists, data scientists, computer programmers, designers, and project managers. Such a HackWeekend could even include field work of some kind.

To prepare for such a HackWeekend, information architects and technical community leaders would seek to prepare ahead of time:

1. Formally-defined API declarations, which would structure and guide implementations.

2. Formally-defined automated tests based on "mock" implementations that would inform and guide implementations.

3. A breakdown of projects including a loose ranking of intellectual difficulty and level-of-effort to guide participants in selecting projects.

4. Publication mechanisms, such as open-source outlets, media coverage, and, not least, academic publications, which would be a target of the research project.

We've created an [interactive map](https://www.plectica.com/maps/D26TZT0CX?present=1) that represents our proposal graphically.

## Three specific Puerto Rican-branded projects

### The Puerto Rican Fast Map Project: crowdsourcing map-based data

The Puerto Rican Fast Map Project seeks to be the simplest possible way to crowdsource map-based data. It was born of the need for such data about power and drinking water availability after Hurricane Maria.

![Puerto Rico as a connected network grid.](/img/blog/puerto_rico_disaster_lab/fast-map.svg)

**Draft project breakdown:**

1. Create an API that extracts geolocation from photos automatically. ([EXIF.js](https://github.com/exif-js/exif-js) is a tool for this.) Offer this is as a free, PR-branded API to the world. This could be an exercise in API design and throttling. Possibly the mobile app "WhatsApp" could be used instead of extracting geolocation from an image.

2. Create an API that supports time-limited support for a dynamic geolocation database at zero cost.

3. Create a map visualization, using something like [Leaflet](https://leafletjs.com/), that can be integrated with the above two APIs to allow very easy construction of map visualizations that can be fed by simple cell-phone usages.

4. Create a paid service, possibly using [Twilio](https://www.twilio.com/), that offers phone number(s) that a message can be texted to. For example, an NGO could be pay $100 for a one-weekend use of such a phone number. All images texted to this phone number would be collected and added to the database, including with the geolocation.

5. Integrate this as an [Ushahidi](https://www.ushahidi.com/) deployment or other commercial-off-the-shelf map software. That is, after a weekend of collecting data via the said system, the result is a permanent Ushahidi deployment that allows data analysis after-the-fact and permanently, even if the text number for data insertion has expired. This project may require a small extension to the open-source Ushahidi system; this extension would be contributed back to Ushahidi.

6. This project could be tested by integrating with a research project in the realm of zoology, botany, or geology, such as performing a species survey of a remote region of PR.

### The Puerto Rican Boa Project: WiFi lifeline

The Puerto Rican Boa Project is named after the endemic [Puerto Rican boa](https://en.wikipedia.org/wiki/Puerto_Rican_boa), a play on the fact that roads snake up into the mountains. It's based on the fundamental observation that restoring communication alongs roads is efficient and tends to reach large portions of the population in an rough terrain where people live along roads.

![Graphical drawing of a snake overlaid on a Google map image of a mountainous Puerto Rican terrain.](/img/blog/puerto_rico_disaster_lab/snake-road.svg)

A high percentage of Puerto Ricans have smartphones. That means that providing WiFi or Bluetooth connectivity along a road, even if backed by a very low-bandwidth, text-only internet, would allow most people to transmit and receive critical emergency information in the absence of normal cellular service.

**Draft project breakdown:**

1. Assuming internet connectivity at only one endpoint, create an ability to cover a 10-mile stretch of mountainous road with a system that allows anyone along the road to connect their phone to the internet via WiFi. Possibly this could be done with very good WiFi antennas, or possibly with a LoRa radio system or with directionally beamed WiFi systems.

2. Demonstrate the ability of users to: (a) find and connect to the system; (b) use it for emergency purposes; (c) use it for non-emergency purposes, such as sending videos to loved ones or downloading videos; (d) measure the achieved bandwidth along the entire stretch of road; and (e) demonstrate this connectivity at every ½ mile interval along the road, no exceptions.

3. Demonstrate the ability to deploy this system within 6 hours.

4. Demonstrate the ability to retrieve this equipment within 6 hours.

### The Llorosa (Puerto Rican Tanager) Project: tracking every fragile person

In the immediate aftermath of Hurricane Maria, people could not find their loved ones because the electronic communication networks were completely destroyed. The purpose of the Llorosa Project is to be able to find and track fragile persons under all circumstances, including the failure of major infrastructure. The Llorosa Project is named after the [Puerto Rican Tanager](https://en.wikipedia.org/wiki/Puerto_Rican_tanager), a small, fragile bird endemic to Puerto Rico.

![Picture of an elderly woman across an illustration of a tanager.](/img/blog/puerto_rico_disaster_lab/woman-tanager.svg)

This is a combined data science/computer science project. It involves both abstract algorithmics and practical mapping.

Suppose there's a network of nodes (llorosas) that all have positions. Each llorosa can report its position at particular point in time to a network it's part of it. One can imagine an initial state in which every llorosa is part of a single network.

Now, imagine that the network is attacked in some way, for example by being cut, forming two disconnected networks. In an extreme case, a single llorosa may be completely isolated from all others. The fundamental goal of the Llorosa Project is to keep all nodes connected to the net, so that all people have access to first responders.

When the network is divided, each connected net continues to be able to obtain updated information of its connected nodes, but loses contact with all others. A network is restored by taking a physical action in the real world. The last-known location of the other nodes provides a valuable guide to the restoration of the network. For example, a radio may be situated midway between the closest nodes of the two meshes, as computed from their last known locations.

Although there may be some graph-theoretic mathematics required in this project, it's  more likely a research program of integrating technologies and techniques with software. Evolving radio technology may constantly change the best approach. Today, if the cellular data system fails or a llorosa node enters an area lacking cell service, LoRa technology may provide a low-bandwidth means of restoring connectivity. The [GoTenna Mesh](https://www.gotenna.com/pages/mesh?gclid=Cj0KCQjwm6HaBRCbARIsAFDNK-hgUARFmLhYQpME56JSWZYVOaJ6M65HU7HmgsZq2ig4UZZAuCjOcCMaAkH6EALw_wcB&gclsrc=aw.ds) product could be used in planned forays into unconnected territory. In the future some new radio meshing technology, such as Bluetooth meshing, might be the fastest means of reconnection.

In terms of personae and use cases, we can easily imagine a personal situation that the Llorosa Project can improve. Imagine an elderly person who lives by herself in the mountains. Perhaps she has cell phone service most of the time, but a storm damages an antenna, cutting her from the main network. The Llorosa Project provides something we don't have today: an ability to identify that she, and possibly her neighbors, are now isolated from electronic communication with the main network of the island. Because the Llorosa Project uses a geographic information system (GIS) of some kind, it also provides guidance in how to fix the problem, possibly by providing a low-bandwidth solution until a higher bandwidth solution can be restored. The lowest bandwidth solution might be someone driving up to their community to check on them.

**Draft project breakdown:**

1. Research into previous studies on healing of geographic networks and graph theory.

2. Development of testable procedures for healing the network. This could be practiced by creating and artificially cutting GoTenna Mesh networks. Alternatively, LoRa radio meshes created using LoRa Gateways could be used.

3. Integration of dynamic data, including timestamps and health status, with a GIS, such as Ushahidi, or other systems.

4. Research and testing of integrating dual-technology networks, such as a LoRa network on the edge of normal cellular service.

5. Research into emergency management policies. For example, suppose a single Llorosa is lost from the net. What period of lost connectivity should be considered dangerous enough to be a high-priority? When a high-priority situation occurs, how should remediation resources be deployed? If a large number of high-priority situations occur at the same time, how should they be triaged?

## Conclusions and a call to action

Although any company is welcome to take these proposals and build a product from them, in order to act on these proposals in an open, communal way, I recommend the following specific actions:

* A cooperative, non-competitive hackathon hosted in Puerto Rico could connect students and Puerto Rican leaders with off-island technology providers and sponsors.

* Preparation in the form of defining APIs, architecture, and a decomposition of the projects into implementable chunks would allow hackathon-sized teams to cooperate to significantly accomplish one of these projects in a single weekend.

* A research grant could provide equipment and logistical support to undertake these with appropriate technology.

* Finally, directly connecting leaders inside and outside Puerto Rico who are interested in these projects could nucleate the projects, bringing together commercial interests with humanitarian disaster relief interests.

*At Skylight, we encourage our team members to pursue meaningful and impactful activities such as this. If you're interested in being part of our team, [consider joining us](/careers/join/).*
