---
layout: blog_post
title: New bug bounty program solution to secure government digital services
permalink: /blog/new-bug-bounty-program-solution-to-secure-government-digital-services/
content_type: BlogPosting
image: /img/blog/bug_bounty_solution_announcement/bugs-eating-computer.png
image_description: Illustration of bugs eating a computer with a crosshair over one of them, conveying the concept of a bug bounty.
image_display: true
order: 1500
tags: [digital services delivery, chris cairns]
excerpt: Integrating bug bounties into government's DevSecOps processes can produce far more robust and secure digital services. Here's a look at our new bug bounty solution.
authors:
  - Chris Cairns
date_published: 2018-02-24
date: 2018-02-24
---

Citizens expect public digital services to be useful, usable, and *secure*. When the security of these services are compromised and exploited by malicious actors, *real* people are put at risk of any number of cyber-related crimes such as identity theft. As stewards of public trust, the government must hold itself to the highest, most appropriate levels of security standards in order to protect the people it serves. Unfortunately, the combination of limited resources and expanding attack surface areas are creating even more opportunities for adversaries. To counteract this trend, more and more organizations are embracing the use of bug bounties, a crowdsourced approach to security research. Through the power of the crowd, bug bounties can uncover <a href="https://www.bugcrowd.com/how-it-works/">8x more critical vulnerabilities</a> than traditional penetration testing and security assessments.

At Skylight, we know firsthand how integrating bug bounties into government's DevSecOps processes &mdash; even before systems are deployed into production ("shift-left security") &mdash; can produce far more robust and secure services. That's why we're excited to announce our new bug bounty solution.

## Some background

For those new to crowdsourced approaches to white hacking, bug bounties are programs in which organizations pay rewards to independent security researchers who find and report hackable vulnerabilities in their systems. The <a href="https://blog.cobalt.io/the-history-of-bug-bounty-programs-50def4dcaab3">first official pay-for-bugs program</a> was launched by Netscape in 1995. Since then, Google (<a href="https://www.google.com/about/appsecurity/programs-home/">Security Reward Programs</a>), Facebook (<a href="https://www.facebook.com/BugBounty/">Bug Bounty</a>), Microsoft (<a href="https://technet.microsoft.com/en-us/library/dn425036.aspx">Bug Bounty Programs</a>), and many other high-tech companies have launched their own successful programs. In 2016, bug bounties made their way into the federal government for the first time when the Department of Defense (DoD) launched the <a href="https://www.wired.com/story/hack-the-pentagon-bug-bounty-results/">"Hack the Pentagon" pilot</a>. The DoD ended up resolving more than 138 unique vulnerabilities found by 58 different security researchers. Recognizing the success of the DoD's pilot, several other agencies have begun looking into and experimenting with bug bounty programs &mdash; such as <a href="https://www.army.mil/article/178473/army_secretary_issues_challenge_with_hack_the_army_program">Hack the Army</a> and <a href="https://www.defense.gov/News/News-Releases/News-Release-View/Article/1164012/air-force-issues-challenge-to-hack-the-air-force/">Hack the Air Force</a>. Not to be outdone, even Congress is <a href="http://thehill.com/policy/cybersecurity/358231-lawmakers-look-to-bug-bounties-but-experts-warn-of-unexpected-workload">looking into formalizing the use of bug bounties</a> as a standard federal security practice.

## How we can support you

For most government organizations, bug bounty programs represent a new approach to protecting their digital ecosystems. Spinning up and running your own successful bug bounty program is certainly manageable; however, there are a number of moving pieces that must be carefully orchestrated. We're here to help you learn and master that process. Our support services cover the entire lifecycle of a bug bounty program.

![Four phases of Skylight's bug bounty lifecycle support services.](/img/blog/bug_bounty_solution_announcement/bug-bounty-services.png)

### Bootcamp

Our Bug Bounty Bootcamp is a one-day event that instructs you and other stakeholders on what bug bounties are and how to plan and execute a successful program, covering all the key areas that must be addressed. As part of this training, we dive deep into several different case studies (e.g., Google Security Reward Programs, DoD's Hack the Pentagon), survey and demo commercial bug bounty platforms, facilitate a collaborative workshop in which we launch a mock program, and assess whether your organization is ready for a bug bounty program. Our aim is to equip you with all the critical knowledge, tools, and templates that you need to move forward successfully.

**The great thing about this Bootcamp is that it's scoped and priced within the federal government's <a href="https://www.acquisition.gov/far/html/Subpart%2013_2.html">micropurchase threshold</a>.**

### Design & Preparation

Based on what your specific organizational needs and testing requirements are, we work with you to design and prepare for a successful bug bounty program. If this is your first one, we recommend starting out with a pilot program to test the waters. Some of the key activities at this stage include:

- Assembling the bug bounty team who will support the program (e.g., engaging key stakeholders from across the organization, responding to bug reports, making awards, building relationships with the security research community), including the team's leader (e.g., Chief Information Security Officer) who will own and champion the program.
- Setting the initial scope of the assessment. That is, what **digital assets** (e.g., 3&ndash;5 public-facing websites, all web services under a particular domain, a highly-sensitive system in pre-production) and **bug types** (e.g., XSS, SQL injection) you want &mdash; and don't want &mdash; researchers to focus on.
- Determining what type of program you want to run. For example, it could be **private** (invite-only) or **public** (open to the collective intelligence of thousands) coupled with a **Vulnerability Disclosure Program** (open-door policy to anyone who wants to report a security flaw).
- Calibrating the rewards structure based on your available budget.
- Choosing and setting up a bug bounty platform &mdash; such as Bugcrowd or HackerOne &mdash; for receiving, organizing, analyzing, understanding, and offering rewards for vulnerability reports from third-party researchers. (We don't recommend trying to build-out and manage this infrastructure yourself.)
- Priming your vulnerability management processes to handle the influx of new reports that will come and need to be triaged and remediated. This includes highlighting how triages are handled and designating remediation teams.
- Crafting your policy/rules page. This page commonly contains your disclosure policy, rules of engagement, scope, service-level agreements (e.g., time to respond to a new report, time to bounty after validation), and other important information.

### Launch

Once you're fully prepared, we work with you to launch and iterate on your program. A few of the main activities include:

- Receiving vulnerability reports from security researchers and coordinating the validation, prioritization, and remediation of those reported flaws within the target service-level agreements.
- Adjusting elements of the program (e.g., policy/rules page, bounty amounts), if need be, to ensure researchers are hitting the right targets and reporting the types of bugs that you want to see.
- Incentivizing more participation and increasing the volume of reports through such actions as increasing the scope, adding more hackers, and increasing the bounty amounts.

### Scaling & Improvement

Over the course of the launch stage, you'll gain valuable experience running bug bounties within the context of your organization. You should have ironed out a lot of the major kinks and be in a position to ramp the program up and leverage it to drive improvements to your organization's security culture and coding practices. Some of the key activities at this stage include:

- Scaling the program. This could mean increasing the scope to include more digital assets and types of bugs, opening it up to more hackers, increasing the bounty rewards, or any combo thereof. In doing so, you might need to iterate through the design & preparation and launch phases again.
- Optimizing bug bounty and vulnerability management processes to handle a larger volume of reports.
- Leveraging bug bounty data to perform an analysis of the root causes behind systemic issues (e.g., XSS keeps popping-up) with your existing security and software development practices. This is particularly useful for gaining insight into the performance of specific contractors.

## Let's get secure!

If you're interested in chatting with us about how we could support your bug bounty initiative, [we'd love to hear from you](https://skylight.digital/hire-us/).
