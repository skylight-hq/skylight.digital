---
layout: blog_post
title: "Key trends in mobile app development, part 2: Making sense of the trends"
permalink: /thoughts/blog/key-trends-in-mobile-app-development-part-2-making-sense-of-the-trends/
content_type: BlogPosting
image: /img/blog/mobile_app_dev_trends/mobile-app-dev-trends-2.svg
image_description: Three people standing around a huge mobile device and pointing at a chart on the screen.
image_display: true
order: 3000
tags: [mobile, product, engineering, apis, sean johnson]
excerpt: The landscape of mobile app development has evolved greatly over the past decade. Here we discuss how to make sense of the trends discussed in Part 1 of our two-part blog post series.
authors:
  - Sean Johnson
date_published: 2020-05-23
date: 2020-05-23
---

*In [Part 1](/thoughts/blog/key-trends-in-mobile-app-development-part-1-the-trends/) of this two-part blog post series, we discussed two key trends that are shaping the landscape of mobile application development today. Here we discuss how to make sense of these trends with the three important takeaways that can guide our path forward and provide the technical approach we need to develop modern mobile apps.*

## Key takeaway #1: The perennial questions remain the same

Despite the march of mobile app development progress and new approaches, the same perennial questions that've long guided the decision between mobile web and native app development still persist as the key deciding factors today.

### Seamless updates vs. app store discoverability

Distribution, distribution, distribution.

Frequency of updates is a key factor that can push you away from mobile app store distribution towards the continual updates of mobile web, Progressive Web Apps (PWAs), and some mobile hybrids.

Another important consideration here is existing user behavior. If your users are already conditioned to visiting your website on their mobile device, then there's more flexibility. A mobile-app-like experience for the website visitor can leave the user never even considering the need for a native app. The website can also serve as an onramp to a PWA.

If a significant portion of your user's existing behavior is to first go to a mobile app store, and then resort to other channels when they don't find what they need (phone calls, for example), then the mobile app store still represents a critical distribution point that mandates the presence of at least a hybrid mobile app.

Ultimately, for a PWA, we have to ask: Will users understand that they can "install" the website and have it behave like a mobile app?

Do note that Apple removed the formerly useful add-to-home-screen-mobile-web-action convenience, which is now a step removed behind the share dialog, making PWA "installation" on Safari/iOS less friendly and less likely.

### Availability of necessary mobile device functions and SDKs

Can a given development approach access the needed mobile functionality to deliver on the product vision?

The gap closes, but then the gap widens again. The web and hybrid development options presented here move forward in an attempt to close the gap between the platform software development kits (SDKs) that are available and what can be utilized with their approach. At times, the progress can be frustratingly slow, and it's a game with no end, since each year mobile platforms continue to expand and innovate, providing an ever-moving target for non-native development approaches to chase.

It'd be futile in this post to catalog the exact coverage of platform capabilities to various development approaches, as it's dependent on so many implementation choice details. It's changing all the time, and the particular SDKs that matter to the decision of which approach to use are entirely project dependent.

We can, however, make some very broad and imprecise statements about the state of things in 2019 that provide some flavor about where things stand today.

 **Web and cross-platform access:**

- Camera
- Location
- Maps
- Calendar (write)
- Motion sensing
- Gestures
- Payments
- Push notifications (Android)

**Native SDKs only (may or may not be wrapped and exposed in various approaches):**

- Biometric authentication
- Calendar (read)
- Contacts
- Voice assistants
- NLP/machine learning/AI libraries and chips
- Push notifications (iOS)
- App loading screen
- Messaging
- Speech/voice
- AR/VR
- Native graphics (animation, image, game, shaders, PDF, etc.)
- Bluetooth

### User's perceived feel and performance

Finally, a dominant question in mobile app development has always been: Can we make the app feel right to the user? What are the users expectations and tolerances? What message will our app's feel send? Is it the message we want to send? These are important questions that product and technology people on mobile app development teams wrestle with when deciding on their mobile app development approach.

The technical answers to these questions are a factor of providing a native or native-seeming user interface (UI) that follows the platform's UI guidelines, and that looks and behaves like the system apps and other ubiquitous apps that users are also using on the platform. Performance is another key technical variable that strongly impacts users' perception of the app, as is the app's behavior in challenging and unusual network environments (is the app merely blank when there's no or slow network, or is it clearly there, but reporting connectivity challenges, or is it fully functional with cached data?). Finally, the app taking advantage of, or ignoring the platform's various extra-app affordances (notifications, lock screen, voice assistant, battery conservation, background services, watch support, calendar, contact, and app integration), can impact a user's perception of the app as minimal or premium.

The product answers to these questions are about the user, the brand, and the expectations the user brings to their interactions. Progress can be made in answering these questions with interviews, focus groups, competitive analysis, and various analytics and survey approaches.

## Key takeaway #2: Native performance and feel is the deciding factor in the private sector

Despite all the advances in non-native mobile development techniques, the user can still feel the difference between a native app, a cross-platform native app, a hybrid app, and a PWA or mobile website. They each have a different performance profile, a different match to platform expectations, and they each send a different message to the user. There's not a bad vs. good message here, but they are different messages, and that message can often be a deciding factor in which approach is used.

In evaluating flagship mobile apps in the private sector (largely healthcare, insurance, and financial services), and in discussions and community participation with development and product teams (largely informal), it's clear that these brands universally chose to send a premium message with a native-first approach. That's not to say every last bit is developed natively to the platform, but it's clear that they pick the spots where it's OK to use the web, and where they need to be seen as cutting edge, and they tend to make these distinctions clear to the user, usually not going to great lengths to disguise their web presence within their apps.

## Key Takeaway #3: There are smart ways to do native app development

### Blended approach

All the parts of a native app shouldn't be created equally.

In approximate terms, mobile app usage follows a Pareto distribution where 80% of the user interactions and value in mobile apps are focused around just 20% of the functionality.
Development teams should look to optimize the performance and native feel of this 20% of the application, and can then consider supplementing the app with web views and other hybrid approaches for all the other edge cases and ancillary paths and functions that represent the other 20% of the app usage (but 80% of the total footprint).

Users have proven to be quite tolerant of the non-native portions of native apps, especially when the separation is clear, concise, and sensical. In other words, don't try to fake it. Make the critical user interactions native, and make the tertiary functions of the app clearly a mobile web experience.

### Thin client, thick API architecture

Native mobile app development is often based on an architecture similar to the one shown below. Substantial code and logic, beyond what's minimally needed to invoke the native platform UI and SDK services, is developed in a thicker than necessary client. Numerous services are accessed directly by the client in client dependent ways (be they formats, protocols, libraries, etc.) and data, configuration, user profiles, and so on are kept locally in the app in platform specific-data solutions. The end result is a relatively shallow, shared common application programming interface (API), and substantial functionality locked up in each client, in platform specific code and approaches.

![Traditional mobile architecture that's heavy on the client layer.](/img/blog/mobile_app_dev_trends/traditional-mobile-architecture.svg)

This traditional native mobile architecture isn't easy to avoid, and it isn't due to poor architectural decisions by the development teams. It's more attributable to the structure of the project, and the independent nature in which each mobile platform is targeted.

At best, these native mobile clients tend to be developed as independent development streams done at the same time, in the same organization, but more often the two mobile platform teams are much more isolated than that. They tend to be isolated in time (develop for one platform first and another platform later) and by organization (develop against one platform internally and contract out the other, or contract out both to separate organizations).

These project decisions can all but prohibit the development of a superior architecture for native development: the thin client, thick API architecture. With this approach, a single development team is tasked with developing a solution targeting multiple mobile platforms, exactly as you would do if you were using a mobile web, hybrid mobile, or native cross-platform development approach.

![Modern mobile web architecture where the client layer is thin and the backend is thick from making heavy use of APIs.](/img/blog/mobile_app_dev_trends/thin-client-thick-api-architecture.svg)

A strong development team working on a native mobile development project under these more ideal conditions will be able to leverage a thin client, thick API architecture. They can minimize data storage and direct service access in the mobile clients, and keep the unshareable aspects of the native clients as thin as possible. They'll be able to spend more time developing common services and business logic, used by both clients, and will agree on common formats, protocols, and service APIs. Ultimately, they'll have both the motivation and the opportunity to avoid incidental, rather than essential platform differences.

## Making an informed decision

We're excited to expose these key mobile development trends and takeaways to decision makers, and expect that every development team and agency's approach to fulfilling its mission can be improved by learning about trends in the development of mobile applications. There are also important, project-specific caveats to the development trends noted in this blog series that must be accounted for in the decision-making process.

The trends identified here are having key impacts on mobile development in the private sector (primarily healthcare and financial services). Government decision-makers can't afford to ignore these trends, since they directly impact the expectations users have of their mobile app offerings, but it's also critical that each agency and project keep their unique mission in mind at all times. There are project-specific considerations that need to be factored into mobile app development decisions, such as:

- Acceptability of various forms of biometric authentication
- App accessibility to aging and disabled users
- Users with older devices and technology
- Other form factors (desktop, tablet, TVs, car) and environments (hospitals, libraries)
- Rural/low/no-network bandwidth users
- Development and sourcing limitations that are different than in the private sector

Ultimately the agencies and their service providers are the experts on what impact these project-specific considerations may have, and on what other important considerations are missing from this list.

The decisions we face when launching a new mobile app development initiative, or rationalizing an existing portfolio of mobile applications have never been more difficult than they are today. Let's ensure these decisions are rooted in the mobile app development landscape as it stands today, and not in the past.

<div class="callout--note" markdown='1'>
## Further reading

The following is a list of additional reading about items contained in this blog series. These items aren't a bibliography of sources, but instead are a set of potential next steps to explore.
</div>

### Mobile Web Apps

- [Mobile Web on Wikipedia](https://en.wikipedia.org/wiki/Mobile_Web)

- [Responsive web design on Wikipedia](https://en.wikipedia.org/wiki/Responsive_web_design)

- [11 powerful examples of responsive web design](https://www.invisionapp.com/inside-design/examples-responsive-web-design/)

- [Adaptive vs. Responsive Web Design](https://uxplanet.org/adaptive-vs-responsive-web-design-eead0c2c28a8)

- [Choose your strategy: Mobile-First Web Design vs. Responsive Web Design](https://darwindigital.com/mobile-first-versus-responsive-web-design/)

### Progressive Web Apps

- [PWA on Wikipedia](https://en.wikipedia.org/wiki/Progressive_Web_Apps)

- [Google / Chrome Progressive Web Apps](https://developers.google.com/web/progressive-web-apps/)

- [Progressive Web Apps: What is it all about?](https://indylogix.com/progressive-web-apps/)

<!-- - [A gallery of progressive web apps](https://pwa.rocks/) -->

### Hybrid Mobile Apps

- [What is a Hybrid Mobile App?](https://developer.telerik.com/featured/what-is-a-hybrid-mobile-app/)

- [The 7 Best Hybrid App Development Frameworks for 2018](https://www.konstantinfo.com/blog/the-best-hybrid-app-development-frameworks/)

- [The Top 5 Hybrid Mobile App Frameworks for 2018](https://www.websoptimization.com/blog/hybrid-mobile-app-frameworks/)

<!-- - [Best Hybrid App Development Frameworks in 2018](https://blogs.systweak.com/2018/04/best-hybrid-app-development-frameworks/) -->

- [Benefits and Disadvantages of Hybrid Mobile Apps](http://brookscanavesi.com/uncategorized/benefits-disadvantages-hybrid-mobile-applications/)

- [React Native](https://facebook.github.io/react-native/)

- [Cordova](https://cordova.apache.org/)

- [Ionic](https://ionicframework.com/)

- [Titanium](http://www.appcelerator.com/mobile-app-development-products/)

- [PhoneGap](https://phonegap.com/)

- [Framework7](https://framework7.io/)

- [Onsen UI](https://onsen.io/)

### Cross-platform Native Apps

- [Xamarin on Wikipedia](https://en.wikipedia.org/wiki/Xamarin)

- [Visual Studio Tools for Xamarin](https://visualstudio.microsoft.com/xamarin/)

- [Dart on Wikipedia](https://en.wikipedia.org/wiki/Dart_(programming_language))

- [Dart](https://www.dartlang.org/)

- [Flutter on Wikipedia](https://en.wikipedia.org/wiki/Flutter_(software))

- [Flutter](https://flutter.io/)

### Targeted Native Apps

- [Kotlin on Wikipedia](https://en.wikipedia.org/wiki/Kotlin_(programming_language))

- [Kotlin](https://kotlinlang.org/)

- [Android Development Platform](https://developer.android.com/)

- [Swift on Wikipedia](https://en.wikipedia.org/wiki/Swift_(programming_language))

- [Swift](https://swift.org/)

- [iOS Development Platform](https://developer.apple.com/ios/)

### Comparisons

- [Native vs. Web vs. Hybrid Apps — What's the Difference? (2017)](https://blog.markgrowth.com/native-vs-web-vs-hybrid-apps-whats-the-difference-1df4c5e4bc50)

<!-- - [Advantages and Disadvantages of Hybrid Mobile Apps Development (2017)](https://www.quape.com/hybrid-mobile-apps-development/) -->

- [Pros and Cons of Native, Hybrid and Web Apps (2016)](https://www.valagroup.com/fi/2016/09/pros-cons-native-hybrid-web-apps/)

- [Native vs. Hybrid App Development (2016)](http://blog.icreon.us/launch/native-vs-hybrid-development)

- [Pros and Cons of Cross-Platform Mobile App Development (2016)](https://www.infoq.com/articles/mobile-cross-platform-app-development)
