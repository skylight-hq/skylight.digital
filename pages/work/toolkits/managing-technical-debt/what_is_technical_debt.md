---
layout: toolkit
title: What technical debt is | Skylight Managing Technical Debt Guide
description: A description of what technical debt is, including different types and consequences.
permalink: /work/toolkits/managing-technical-debt/what-is-technical-debt/
sidenav: managing_technical_debt
content_type: Toolkit
---

# What technical debt is

## Financial metaphor

Let's assume you're developing a software product. When you make short-term compromises to its code or design quality (perhaps addressing a known bug with a band-aid solution instead of a more comprehensive solution), you're making the product more difficult for yourself or someone else to continue to develop, test, and maintain in the future. This is the concept of technical debt, which is similar to financial debt. For example, the extra effort required to finish your incomplete work represents the principal portion of the debt. And the extra time it takes to work with your unwieldy code or design, until it's fixed, represents the interest portion.

![A grid of the four types of technical debt. Reckless and deliberate, reckless and inadvertent, prudent and deliberate, prudent and inadvertent.](/img/toolkits/technical_debt/tech-debt-interest-payments.svg)

Like financial debt, not all technical debt is bad debt. For example, taking out a mortgage on a home that you pay back within 15 years and sell for a 175 percent return is good debt. Conversely, racking up a huge credit card balance on a luxury yacht with no means to pay it back is reckless.

With software, it's perfectly reasonable to release early with known limitations in order to capture a time-bound opportunity or meet a compliance deadline, as long as there's staff in place to address those limitations after the launch. Another great way to leverage technical debt is to quickly run a product experiment (à la lean startup). If the experiment doesn't yield the desired results, you can remove the feature and not even bother repaying the debt. Of course, if you keep the feature, then it must be finished, and you can do that with the benefit of what you learned from the experiment. So the aim of most software development experiments shouldn't be to achieve a completely debt-free product. Instead, you want a product with [whatever level of quality is necessary to give the development team enough stamina to go faster for longer](https://martinfowler.com/bliki/DesignStaminaHypothesis.html).

## Types of technical debt

Just like you'll find in the financial world, there are different kinds of technical debt. Martin Fowler, a leading software expert, classifies technical debt into four types, as shown in the quadrants below.

![A grid of the four types of technical debt. Reckless and deliberate, reckless and inadvertent, prudent and deliberate, prudent and inadvertent.](/img/toolkits/technical_debt/tech-debt-types.svg)

While the result in each case is the accumulation of more technical debt, each of these types is created by different circumstances:

* **Reckless/Deliberate Debt:** The team feels time pressured and knowingly violates best practices without any forethought into how to address the consequences. Another scenario: management lacks sufficient funding to hire enough senior experts to direct and review the work of junior programmers, but decides to take the risk anyway.
* **Prudent/Deliberate Debt:** The team decides that the value of shipping a "quick and dirty solution" now is worth the cost of incurring debt. They're fully aware of the consequences, however, and have a plan in place to address them.
* **Reckless/Inadvertent:** The team is ignorant of best practices, and their lack of knowledge of effective development practices leads them to make a big mess of the codebase.
* **Prudent/Inadvertent:** Even with great programmers, the team delivers an extrinsically valuable solution, only to realize how they should have (intrinsically) designed it. (Often the process of software development is as much learning as it is coding.)

## The consequences of technical debt

From annoying bugs to crippled projects, the effects of technical debt manifest in a variety of pernicious ways. Jim Highsmith's technical debt curve, modified below from his article, *The Financial Implications of Technical Debt*, illustrates what happens as technical debt grows within a software product over time:

* The **cost (or difficulty)** of changing the software or project increases, eventually to the point where the code can no longer be feasibly maintained
* The **ability to respond to the needs of customers** decreases, making them extremely unhappy
* The **predictability of results** decreases, making management highly distrustful (producing accurate estimates of the time or money related to software with a high amount of debt is nearly impossible).

![A graph showing how the cost of change increases over time when you have technical debt, and that hurts your ability to meet user needs.](/img/toolkits/technical_debt/tech-debt-cost-of-change.svg)

How do projects end up on the far right of the curve? And why is that a bad place to be? As Highsmith explains in his article, *The Financial Implications of Technical Debt*:

> One problem with technical debt is that the impact can be slow-growing and somewhat hidden. To the question 'fix the technical debt, or build new features' we know how it's usually answered. As it gets worse, customers complain about slow delivery, increasing the pressure to take more shortcuts, which increases the technical debt, which slows the delivery process, which increases customer dissatisfaction, in a rapidly spiraling vicious cycle. Unfortunately, by the time many organizations are paying attention, all the solutions are bad ones: 1) do nothing and it gets worse, 2) replace/rewrite the software (expensive, high risk, doesn't address the root cause problem), or 3) systematically invest in incremental improvement.

Customers aren't the only ones who [suffer the consequences](http://www.infoq.com/articles/managing-technical-debt) (annoying bugs, missing features, etc.) of technical debt:

* **Friendly help desk staff** will field more support calls.
* **Software operations teams** lose sleep patching the system at all hours of the day.
* **Management** gets bad publicity due to bugs, delays, security issues, or outages.
* **Developers** have to deal with the bad work of other developers, which [may cause turnover](https://www.industriallogic.com/blog/technical-debt-considered/).

Now that you understand what technical debt is, learn more about [how to manage it](/work/toolkits/managing-technical-debt/managing-technical-debt/).
