---
layout: blog_post
title: "Key trends in mobile app development, part 1: The trends"
permalink: /thoughts/blog/key-trends-in-mobile-app-development-part-1-the-trends/
content_type: BlogPosting
image: /img/blog/mobile_app_dev_trends/mobile-app-dev-trends-1.svg
image_description: A person viewing business charts on their mobile phone.
image_display: true
order: 2900
tags: [mobile, product, engineering, apis, sean johnson]
excerpt: The landscape of mobile app development has changed considerably over the past decade. Here we discuss the two key trends that are shaping how mobile applications are developed today.
authors:
  - Sean Johnson
date_published: 2020-05-22
date: 2020-05-22
---

It's been well over a decade since the launch of Apple's App Store in July of 2008 and Google's Android Market (now Google Play) one month later in August. A decade is a long time in any type of app development. Development technology has always been fast to evolve, and the rate of change is only increasing. Mobile app development isn't immune to this, in fact, since 2008, mobile has been one of the main drivers of changes in how we develop applications.

If you're launching a new mobile app development initiative, or rationalizing an existing portfolio of mobile applications, it's important that you don't root your decision-making back in 2008, but instead understand the mobile app development landscape as it stands today.

Skylight [recently conducted an evaluation of the mobile app development landscape for the U.S. Department of Veterans Affairs](/work/experience/va-mobile-product-strategy/) as part of the their work to consolidate its diverse portfolio of mobile assets into a single flagship mobile app to better serve veterans. In conducting this evaluation, we identified two key trends and three key takeaways that help define a modern approach to mobile app development. Part 1 of this two-part blog series explains the key trends, and [Part 2](/thoughts/blog/key-trends-in-mobile-app-development-part-2-making-sense-of-the-trends/) will cover the important takeaways. Together these trends and takeaways help guide the technical approach needed to develop mobile apps today.

## Key trend #1: There are new options in mobile app development

In the past, there was a binary decision to be made between developing native mobile apps for each mobile platform (at least iOS and Android, and possibly others) or relying on a responsive, mobile web application to bring your functionality to website visitors inside a mobile web browser. This decision was governed by the significant limitations of mobile web apps and mobile browsers, and by the significant time and expense of having multiple native mobile app development efforts.

![Old mobile app development options, which included either mobile web or native.](/img/blog/mobile_app_dev_trends/old-binary-mobile-options.svg)

In the last several years, new developments have made this decision more complex. There are now hybrid options in between the two traditional choices.

![New mobile app development options, which include either mobile web, progressive web app, hybrid, cross-platform-native, or native.](/img/blog/mobile_app_dev_trends/new-multi-mobile-options.svg)

It's important to understand each of these new hybrid alternatives, as well as where things currently stand with the original options. Let's look at each, moving from mobile web along the continuum to fully native mobile apps.

### Mobile web

The viability of responsive mobile web apps has continued to increase, largely due to faster mobile device CPUs, better mobile JavaScript interpreters, and the increased robustness of web frameworks (for example, React and Angular) to build full-featured, client-centric web apps (client centrality is a requirement for Progressive Web Apps, see below).

It's never been easier, or less expensive (in both time and cost), to develop the equivalent functionality of a native app in a mobile web browser. But that's not to say it's particularly easy or inexpensive to do. It largely depends on the goal. The closer to a native app experience you try to achieve with mobile web technology, the closer the time and expense is to native app development. In fact, trying to achieve a perfect match to a native app experience on any given platform using mobile web technologies isn't actually possible today, and the attempt will ultimately cost more than developing a native app for the platform.

Why is there still a gap between what can be done on mobile web and with a native app? Though continued progress has been made in performance and in exposing device features to mobile apps such as location, audio/image/video capture, multi-touch, gesture and inertia input, app launching, and payments, there *hasn't* been the same progress in making mobile web apps *feel* native to mobile users. Even if specific hardware access or platform SDK access *isn't* required by an app, there *still* remains an insurmountable gap in feel that can jeopardize this approach.

Ultimately user expectations may push us away from a pure web experience and dictate that we have a presence as an app on the mobile home screen, and that certain key mobile app functions be present, which brings us to our first hybrid option, the Progressive Web App (PWA).

### Progressive web apps

The next step towards embracing a mobile platform directly is to use recently-developed mobile web extensions, creating what's known as a Progressive Web App. PWAs have been [embraced by the Android ecosystem](https://web.dev/progressive-web-apps/), and Apple has followed suit in the iOS ecosystem (but with less enthusiasm, particularly in the area of access to device notifications).

The idea behind a PWA is to provide some important missing capabilities to mobile web apps that would otherwise require a native application:

- Home screen presence
- Resource caching, fast loading
- An app load screen
- Offline support
- Service worker threads off of the main JavaScript user interface (UI) thread
- Push notifications (with some limitations, including substantial ones on iOS)

However, important gaps remain with PWAs that need to be considered by product teams:

- Access to mobile app store distribution
- Access to device hardware and platform software development kits (SDKs) outside the scope of the PWA definition
- True native feel to the user experience (UX)
- Native level of performance

The PWA is still a relatively rare thing for users to encounter, and many users have no experience using them. It's not clear that less-technically-savvy users will understand or be comfortable with the PWA installation sequence, which happens from your website, not in an app store. Ultimately user expectations may dictate distribution through an app store, which brings us to our next hybrid option, the hybrid mobile app.

### Hybrid mobile apps

The next option along the hybrid spectrum brings us to the first choice that results in a traditionally-distributed mobile app. The hybrid mobile app approach is to take a client-centric mobile web app, a PWA essentially, but rather than running it in the device browser as a result of a website visit, instead it's hosted in a web view inside a generated native container app. The resulting app is distributed to users via a mobile app store.

Hybrid apps have been with us for some time, and there are numerous options and frameworks that target different web development technologies (Angular, React, and various mobile UI-centric frameworks). They also provide varying amounts of exposure to the platform native SDKs.

Developing a hybrid mobile app uses web technologies (particularly HTML, CSS, and JavaScript) to create a non-web mobile app experience. This choice is often more about reusing developer skills rather than reusing an existing responsive website. There's opportunity for common shared code and code reuse between a responsive mobile website and a hybrid mobile app, but it'll be less than you expect if your intent is to fully embrace the creation of a near-native experience in the app.

The primary advantage of hybrid apps are:

- Access to app store distribution
- Single cross-platform codebase
- Access to additional device hardware and SDKs through application programming interface (API) wrappers
- Options for developing targeted native extensions to tap into all of the device hardware and SDKs

It's worth noting that despite typically using just one codebase to target multiple mobile platforms (for example, iOS and Android), the more native the app feels, and the more native features the hybrid app takes advantage of, the more platform-specific code and styling will exist in the hybrid app, increasing its complexity.

Many of the downsides of having a native app vs. utilizing the open web exist with a hybrid mobile app include:

- Overhead of submission to multiple app stores
- Gated release cycle through app stores
- Subjugation of authority to the app store owner

The gated release cycle is partially addressed with hybrid mobile apps. Significant portions of the app can be released to production without a release through the app store, as long as the native portions of the container app aren't changed.

Ultimately using a web view as the UI container shares most of the same drawbacks as with both PWAs and mobile websites in its inability to faithfully mimic the feel and performance of a native app. There remains an uncanny valley, and users know when they're using web technology in an app.

Ultimately user expectations around app performance and feel may dictate abandoning web technologies, which brings us to the last of the hybrid options, the cross-platform native app.

### Cross-platform native apps

The next option on the hybrid spectrum is to eschew web technology (namely HTML, CSS, and JavaScript) as the building block components of the UI, and instead embrace native app development.

The key distinction of this option, however, is the rejection of independent development efforts to target each mobile platform (for example, iOS and Android). Rather than targeting the native UI SDK of the platform, using the native programming language of the platform, this option uses a cross-platform UI SDK and a cross-platform language to develop a single native app codebase that targets different platforms.

One of the most viable cross-platform options has been [Xamarin](https://en.wikipedia.org/wiki/Xamarin). Xamarin is a proven solution from an independent company that's owned by Microsoft, and is especially suited for Microsoft/.NET development teams coming to Android and iOS with a C# background.

An emerging option, the [Dart language](https://en.wikipedia.org/wiki/Dart_(programming_language)) with the [Flutter framework](https://en.wikipedia.org/wiki/Flutter_(software)) is supported by Google, and used to develop their own cross-platform apps. This option has more technical risk due to a shorter track record and younger codebase, but is more suitable to development teams coming to Android and iOS mobile development with a dynamic language background, such as Python or Ruby.

It's worth noting that there are quite a few other mobile cross-platform native approaches focused on allowing cross-platform mobile development in particular languages (Java, Python, Ruby, etc.), but these come with substantial technical risk. The development communities are small and the project's longevity tends to be either already-in-question or at long-term risk. Carefully weigh the risks when pursuing cross-platform native approaches that don't have major backing from a substantial application vendor with a vested interest in its own cross-platform mobile apps, as is the case with Xamarin and Dart/Flutter.

Ultimately, user expectations around native feel, or developer friction in not participating in the primary ecosystem for the platform, could lead to a decision to pursue traditional native app development.

### Targeted native apps

The final option is to develop full-native applications. A fully-native app targeting the mobile platform directly is a no-compromise solution that, in many cases, will not be any more expensive than the other options presented, except for the glaringly obvious point that it requires targeting two different mobile platforms with independent codebases, one for Android and one for iOS.

In order to offset supporting just one codebase, the native approach must offer some benefits that are important to the product being developed. These benefits come in the form of native UI feel and responsiveness, and in the rich platform services available (SDKs for biometrics, voice assistants, speech, messaging, artificial intelligence, watches) and hardware capability access (screens, input mechanisms, sensors, GPUs, artificial intelligence chips) with no impedance mismatch. Native app development offers a friction free development approach that's nestled in the heart of the platform's development ecosystem.

Unlike mobile web development and all the hybrid approaches discussed above, native app development doesn't specifically aim to leverage development skills from other domains.

For Android, this means development with [Kotlin](https://en.wikipedia.org/wiki/Kotlin_(programming_language)), Google's preferred language for targeting the Android mobile platform. Java developers with some Android experience will easily transition to Kotlin.

For iOS, native app development today uses the [Swift programming language](https://en.wikipedia.org/wiki/Swift_(programming_language)), Apple's preferred approach, though Objective-C/C++ developers with some iOS experience will pick up Swift swiftly.

## Key trend #2: Mobile development is entering a third phase

The initial phase of mobile development was a massive land grab to place products and brands into the greenfield space of mobile app stores and empty mobile home screens. The initial development options were largely limited to platform-specific native apps using Objective-C on iOS and Java on Android.

After some years, organizations were able to evaluate their early mobile performance, and existing technical communities were able to pivot their focus to mobile. Concerns about native mobile development costs and time-to-market, and a desire to leverage existing skills led to a second phase of mobile development. This second phase sought time and cost reductions from cross-platform solutions, and existing skills reuse from hybrid apps. Both the perception and the reality of less expensive mobile development projects led to a proliferation, really a saturation, of mobile apps. This saturation produced fatigue on both sides of the marketplace, with the organizations and brands trying to manage so many mobile offerings, and with consumers facing an overwhelming choice in app stores and overflowing mobile launch screens on their devices.

The third phase of mobile app development is a reaction to this app fatigue. After experimenting with dozens of single-purpose apps, many organizations are undergoing app consolidation around a premium flagship app. For their part, mobile users are downloading and using less apps than during the app proliferation that marked the second phase. There's now an understanding that users will rarely use more than 25 apps. The new race is to be relevant enough to more discerning and experienced users to earn a spot in their top apps.

Most users are approaching a decade of experience with smartphones. The emphasis of this third phase of app development is on building premium native apps that meet these discerning users increasing platform integration and quality expectations.

Luckily, the timing does seem right for native development projects as both Apple and Google have successfully transitioned their developer ecosystems to Swift and Kotlin, respectively. These new languages are coupled with much refined and more powerful platform SDKs. Native app development has never been more capable or productive.

In addition, the back-end development needed to support mobile apps has matured considerably. Mobile back-end platform-as-a-service (PaaS) and serverless options can be combined with a "thin client, thick API" architectures to drive additional developer productivity.

## What are we to make of these trends?

By digging into these two important trends, we've now laid the groundwork for making better decisions about modern mobile app development.

The first trend is that we have more options to consider now than ever before in the form of hybrid approaches that blend web and mobile development to get us closer to delivering for the three major platforms — Web, iOS, and Android with a single codebase and technology stack. Working almost directly against this trend is the second trend we identified — app consolidation with far fewer applications per user and a significantly higher expectation of quality and native fit to the mobile device.

The fact that two important trends in mobile app development seem to push us in two different directions is what makes this a challenging time. Do we pursue one of the new hybrid options to mobile development and deliver cross-platform experiences with less code? Or, instead, do we build a premium native app experience with the deep hardware and operating system integration that can earn a lasting spot on users' shrinking home screens and attention spans? These questions are obviously not just technical, or even primarily technical, but the answers to them directly impact how we build mobile apps.

In [Part 2](/thoughts/blog/key-trends-in-mobile-app-development-part-2-making-sense-of-the-trends/) of this two-part blog series, we'll shift gears to making sense of these trends with the three important takeaways that can guide our path forward and provide the technical approach we need to develop mobile apps today.
