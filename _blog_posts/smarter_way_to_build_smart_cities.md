---
layout: blog_post
title: A smarter way to build Smart Cities
permalink: /thoughts/blog/a-smarter-way-to-build-smart-cities/
redirect_from:
  - /blog/a-smarter-way-to-build-smart-cities/
content_type: BlogPosting
image: /img/blog/smarter_way_to_build_smart_cities/smart-city.svg
image_description: Smart city functions such as health and transportation.
image_display: true
order: 2500
tags: [internet of things, geoff mulligan]
excerpt: Smart cities offer the promise of making people's lives more convenient, secure, and sustainable. Here we offer city leaders smarter ways for realizing that promise.
authors:
  - Geoff Mulligan
date_published: 2019-06-23
date: 2019-06-23
---

In every corner of the country and around the world, leaders are *trying* to make their cities "smarter." These projects are often in response to specific and on-going demands — such as parking, overcrowding, noise, and pollution — while others have started to address broader goals — such as reduction of energy consumption, improvement of traffic flow, or sustainability. But as is often the case with grand ideas, many are taking the wrong approach. It's simply impossible, in one sweep, to build a Smart City. Just as the internet and the web didn't spring forth fully formed, as if from some "master plan," Smart Cities must be built as organic, independent, and yet connected pieces. As Stewart Brand cogently argued, even[ buildings have to learn](https://www.amazon.com/How-Buildings-Learn-Happens-Theyre/dp/0140139966) in steps.

A Smart City roadmap is invaluable, laying out a direction to help set expectations. However, it shouldn't define specific cross-system technologies and implementation details, nor plan for all projects to launch or complete simultaneously. Each problem in the roadmap must be addressed with a separate solution, then stitched together by open standards and open [Application Programming Interfaces](https://en.wikipedia.org/wiki/Application_programming_interface) (APIs) — each built as an independent service. That's how Smart Cities must grow if we want them to succeed — learning by iteration.

## Today's problem

In the rush to "capture the market," companies are selling "complete visions" — though incomplete solutions – of how their systems can solve the ills that plague the modern city. City planners, managers, and officials get sold the idea that these companies have some kind of silver bullet that, in a single solution, integrates all city functions and enhances their capabilities, thus making them work together efficiently. But this belies the true nature of the problem: None of us are smart enough to fully appreciate or understand the complexity of managing all the functions that go into making a city work. The sheer diversity of the systems ensures that no single technology can be applied as "the" solution. In addition, the timeframe for implementing these disparate programs can vary widely, meaning that technology selected at the start of one project will likely be obsolete by the start of another.

Worse yet, these companies are also selling and deploying products that are based on closed, proprietary systems. They include proprietary radios, single-purpose hardware, proprietary software and protocols, and closed web applications and portals. These designs constrain innovation and interfere with interoperability between newer and older systems, often saddling the new with the constraints of the past. This is like the Trojan Horse — a solution that requires all future systems to use these proprietary systems, thereby locking the city into that particular vendor for the rest of their days, limiting design and technology choices, and stifling innovation and adoption of newer technology.

It's not all gloom and doom, though. With the application of open systems and implementation of a service-oriented architecture, we'll be able to build future technology that can integrate more seamlessly with previous technology investments.

## Choose a different path

We've learned from the lean-agile community to build success in small, incremental steps rather than one grand leap. But with the different needs, design patterns, and timeframes, how is it possible to accomplish building a Smart City in small steps? It's done by leveraging the nature of the internet itself, complete with open standards and open APIs. By decoupling every system and eliminating hidden interfaces, we can relieve the pressures of time and technology interdependencies, thereby allowing greater innovation in each separate project while "future proofing" the design decisions.

We use different materials and architecture to construct buildings with differing purposes (hospitals vs. homes vs. high-rises), but there's a consistency even within these varying buildings for standard electrical and plumbing connections. Smart City projects can adopt this same design pattern. This means that for a parking project, the city can pick the most appropriate communication technology while requiring that the system be built on open standard protocols that underlie the internet (for example, HTTP, IP, TCP, and [MQTT](https://en.wikipedia.org/wiki/MQTT)), use data formats such as JSON or XML, and have open APIs.

## Greater than the sum of the parts

Instead of a complete Smart City that's decades in the making, city managers can instead look for "low-hanging fruit" or "greatest pain point" and more quickly build a point solution, knowing that it can be easily connected to any future systems in a scalable and secure manner. A smart parking system for city streets or a parking garage built using [LoRa](https://en.wikipedia.org/wiki/LoRa) today can be connected to a city traffic management system built using [NBIoT](https://en.wikipedia.org/wiki/Narrowband_IoT) next year, as long as both use open APIs and avoid closed, proprietary solutions including "[walled garden](https://en.wikipedia.org/wiki/Closed_platform)" cloud solutions.

The next city improvement project — a smart street light system, for example — might require a completely different communication technology from the previous parking system. Streetlights are up high and more distributed than parking meters or parking spaces in a garage. Streetlights have power, whereas a parking sensor will likely be battery-operated. These different requirements would necessitate the use of different communication technologies, but both systems can be interconnected through common protocols and APIs. Through open APIs, this interconnectivity doesn't need to be designed in from the beginning but can be added after each of the separate systems is installed.

For example, the streetlight system installed today could be connected to traffic flow sensors installed tomorrow. The two systems may use completely different communication technologies and protocols. This new combination — streetlight and traffic flow sensors connected through open APIs — could offer an innovative solution for reducing streetlight energy usage by dimming lights when there are no cars, but increasing the brightness prior to the cars arrival based on messages from the traffic flow system.

The use and adherence to open APIs and microservices brings another benefit — *decoupled velocity*. This means that even concurrent projects can be built at different speeds and rolled out at different times, yet combined when each is completed and functional. As in the example above, the smart streetlight project might end up taking longer to deploy because of the sheer number of devices, whereas the traffic flow sensors might be installed sooner. Open APIs release each system from timing interdependencies and implementation speed.

## Vendor lock-in and future-proofing

Another benefit of open standards and APIs is the elimination of vendor lock-in, which is when a vendor wins all future business because they alone are holding the keys to the design and the data. Vendor lock-in squelches innovation: You're only as innovative as the vendor wants to be or lets you be. If a city needs a design or solution that isn't in the vendor's current portfolio, the city's choices become wait, pay more to have the vendor add it to their roadmap, or go outside the ecosystem and use some sort of gateway (but gateways are *evil*, see below) to translate protocols and data and interconnect the systems.

Instead, open standards and APIs bring the ability to incorporate and evolve with newer technologies and systems. But, much like vendor lock-in, you can run afoul of technology lock-in. Imagine having built a Smart City project requiring the use of videotape and now not being able to adopt streaming technologies because they're incompatible. Technology changes rapidly; in just a few years, we've moved from 2G to 3G and now to 5G in the cellular environment. By using open standards to decouple the higher-layer protocols from the lower layers, technology can evolve and systems using older tech can easily interconnect. In this way, a system deployed using 4G today can interoperate with 5G systems tomorrow and 6G and 7G systems in a few years.

## The underpinnings of innovation

Avoiding vendor and technology lock-in is critical for innovation. Nothing will be more detrimental to a city's infrastructure and future than to be bound to a vendor and have to ask for permission to enhance or extend the systems' functionality. As new technology comes to the market and new services are brought out to solve other city issues, the ability to quickly test and connect them to existing solutions is necessary for offering evolving solutions and bringing more opportunities for innovation and cost reductions. When you embark on your next project, ask your vendors — "Do you use open standard protocols?" and "How are your APIs and data published?"

## Avoid these traps — the "evil" gateway and "private clouds"

One tool that many vendors attempt to leverage to show openness and interoperability is the "gateway." They claim that they provide, or can build, a gateway to connect to other systems. Gateways are a never-ending trap on so many levels:

* They're a single point of failure
* They're a single point of attack for hackers
* They require complex coordination between systems
* Maintenance and updates are costly or non-existent
* Updates need to be managed
* They add extra costs for hardware and power
* They're **closed and proprietary**

The second trap is private clouds and walled gardens. The vendor will claim that they use "all of the open internet standards," listing protocol after protocol, but they use these protocols only to send the data (*your* data) into a closed, proprietary cloud system — locking it away so that only they have the keys. This is akin to building a road that leads to a cul-de-sac, which is blocked by a locked gate that only lets traffic in. Then, new systems must be built to connect through this cloud, likely via closed and proprietary interfaces. In the end, only other systems in this closed ecosystem can be used for future projects, thereby limiting innovation and increasing time and costs. Sending data to the cloud isn't a panacea, as many vendors would like to suggest.

## Who owns the data —  that is, YOUR data

In Smart City projects the goals of improving city services or infrastructure are the leading driver for implementation, but the greatest benefits will come from the availability of the data gathered from these projects and new systems. Unfortunately, many of the Smart City systems being proffered today lock away access to the data in walled gardens, as mentioned before. It's imperative that the data is sent to city-owned and managed servers, or the city's [data lake](https://en.wikipedia.org/wiki/Data_lake) or available without license through open APIs. Only in this way will the city and future Smart City projects be able to use and leverage the wealth of information and the underlying real value of these types of projects.

A related concern surrounding data ownership is the rights to the use and sale of the data created by the Smart City project — a valuable commodity. Throughout the life of the project, it should be clear that the city owns ALL RIGHTS to the data. The vendor may not access, distribute, or sell any of the data whether in raw form or aggregated without the explicit permission of the city. Only in this way will you be able to protect the rights and privacy of the city and its citizens.

## Choosing the right project

By adopting open standards and APIs, you're now able to embark on a Smart City project without having to solve all other city projects at the same time or constrain them with the choices made today. But choosing the "right" project is important. In some cases, it's prudent to choose a small, fast, low-cost project. This allows you to get your feet wet, test vendors, accomplish a project in a short time, and hopefully succeed; but if you fail, fail fast, learn, and move on. However, sometimes there are problems with these projects — they may have little impact and they may cause others to look upon them as "ho hum."

An alternative is to choose a project that's a large "pain point" for the city. By definition, these projects have great visibility and impact, but may have far greater risk and take much longer to complete. They don't generally meet the rules for lean-agile, but the small "safe" projects may not show off the true benefits that a Smart City can bring. Solve this by using divide and conquer. Rather than implementing smart parking across the entire city, choose to focus on a particularly congested city section or single parking structure.

## Building success

When a city is becoming smarter by investing in a Smart City project, use this checklist to evaluate the project:

* Does it start small and scale well? This is better than a monolithic solution that requires a gigantic investment.
* Is it locking the city into technologies, or, even worse, vendors? Does it exclude other vendors?
* Is it open? What protocols are used? Are the APIs published and open?
* Did the vendor mention or require (evil) gateways?
* Does it solve a problem for the city quickly, even if it's only a small problem?
* What will the city be able to learn from taking on this project?
* Who owns the data?

Through the strict application and requirement of openness, your Smart City project can be delivered in a way that's quick, beneficial, evolvable, and scalable. Our cities can, and will, become smarter and better places to live through small steps and open standards — open APIs and [microservices](https://en.wikipedia.org/wiki/Microservices) are the foundational stepping stones to that future.

## Looking to make your Smart City initiative a success?

Skylight possess a unique combination of expertise in the Internet of Things, open systems, APIs, microservices, lean-agile, legacy modernization, and user-centered design. We'd love to [work with you](/connect/contact/) on making your city smarter.
