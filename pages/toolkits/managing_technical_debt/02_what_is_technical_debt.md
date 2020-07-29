---
layout: toolkit
title: What is technical debt? | Managing Technical Debt Guide
description:
tags: [digital talent, digital talent management, talent modernization, guide]
permalink: /work/toolkits/managing-technical-debt/what-is-technical-debt/
sidenav: managing_technical_debt
content_type: Toolkit
---

# What is technical debt?

NOTE: NEED TO CHANGE TAGS THEN DELETE THIS LINE

Let’s assume we’re developing a software product. When we make short-term compromises to its code or design quality (perhaps addressing a known bug with a band-aid solution instead of a more comprehensive solution), we’re making the product more difficult for someone else to continue to develop, test, and maintain in the future. We’re choosing to forego a clean and elegant solution that will help someone later on in favor of a solution that’s easy for us to write right now, because the clean solution will take more time but deliver the same functionality as the messy solution. This tradeoff illustrates a concept called technical debt. Technical debt is a financial metaphor that software developers use to talk to managers about the “hidden” costs associated with a system’s architecture and codebase (for example, changing requirements addressed with a “quick fix,” bugs deferred in favor of new development, design weaknesses, or aging third-party libraries). Technical debt can be thought of similarly to financial debt. For example, the extra effort required to finish incomplete work represents the principal portion of the debt. And the extra time it takes to work with unwieldy code or design, until it’s fixed, represents the interest portion.

(IMAGE GOES HERE)

As in the financial world, there are different kinds of technical debt. Martin Fowler, a leading software expert, classifies technical debt into four types, as shown in the quadrants below.

## Types of technical debt

(IMAGE GOES HERE)

While the result in each case is the accumulation of more technical debt, each of these types is created by different circumstances:
 
- **Reckless/Deliberate Debt**: The team feels time pressured, and knowingly violates best practices without any forethought into how to address the consequences. Another scenario: management lacks sufficient funding to hire enough senior experts to direct and review the work of junior programmers, but decides to take the risk anyway.
- **Prudent/Deliberate Debt**: The team decides that the value of shipping a “quick and dirty solution” now is worth the cost of incurring debt. They’re fully aware of the consequences, however, and have a plan in place to address them.
- **Reckless/Inadvertent**: The team is ignorant of best practices, and their lack of knowledge of effective development practices leads them to make a big mess of the codebase.
- **Prudent/Inadvertent**: Even with great programmers, the team delivers an extrinsically valuable solution, only to realize how they should have (intrinsically) designed it. (Often the process of software development is as much learning as it is coding.)

## Is technical debt always bad?

An important consideration to note is that, like financial debt, not all technical debt is bad debt. For example, taking out a mortgage on a home that you pay back within 15 years and sell for a 175 percent return is good debt. Conversely, racking up a huge credit card balance on a luxury yacht with no means to pay it back is reckless. With software, it’s perfectly reasonable to release early with known limitations in order to capture a time-bound market opportunity or meet a compliance deadline, as long as there’s staff in place to address those limitations after the launch. Another great way to leverage technical debt is to quickly run a market experiment (a la lean startup). If the experiment doesn’t yield the desired results, you can remove the feature and not even bother repaying the debt. Of course, if you keep the feature, then it must be finished, and you can do that with the benefit of what you learned from the experiment. So the aim of most software development experiments shouldn’t be to achieve a completely debt-free product. Instead, you want a product with [whatever level of quality is necessary to give the development team enough stamina to go faster for longer](http://martinfowler.com/bliki/DesignStaminaHypothesis.html).

## Additional readings and resources

- https://martinfowler.com/bliki/TechnicalDebt.html
Additional discussion on the metaphor of technical debt and some of the nuances therein.

- https://www.productplan.com/glossary/technical-debt/
An examination of some of the nuances of technical debt, including how it can be leveraged as a tool as well as what isn’t technical debt.

- https://hackernoon.com/there-are-3-main-types-of-technical-debt-heres-how-to-manage-them-4a3328a4c50c
A look at managing some of the different types of intentional vs. unintentional technical debt, including strategies for using your backlog.

- https://insights.sei.cmu.edu/sei_blog/2019/05/managing-the-consequences-of-technical-debt-5-stories-from-the-field.html
Several examples of how real organizations and companies confronted different kinds of technical debt.
