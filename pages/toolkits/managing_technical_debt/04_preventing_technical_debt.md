---
layout: toolkit
title: Preventing technical debt | Managing Technical Debt Guide
description:
tags: [digital talent, digital talent management, talent modernization, guide]
permalink: /work/toolkits/managing-technical-debt/preventing-technical-debt/
sidenav: managing_technical_debt
content_type: Toolkit
---

# Preventing technical debt

Up until this point, we’ve talked mostly about how to deal with technical debt after the fact. So what can you do to minimize accumulating bad or unnecessary technical debt in the first place? Here are strategies aimed at preventing technical debt altogether.

- **Embrace agile development methodologies**. It’s no secret that Skylight advocates for agile development methodologies. That’s because agile offers a framework of proven process and technical practices (for example, frequent iterations, retrospectives, [continuous integration](https://en.wikipedia.org/wiki/Continuous_integration), [refactoring](https://en.wikipedia.org/wiki/Code_refactoring), [automated testing](https://en.wikipedia.org/wiki/Test_automation), [collective code ownership](https://en.wikipedia.org/wiki/Extreme_programming_practices#Collective_code_ownership), [definition of done](https://18f.gsa.gov/2015/04/24/agile-developments-secret-weapon-transparency/), work-in-progress limits) for creating high-quality software and avoiding technical debt from the start.
 
- **Give thoughtful consideration to the architecture**. Choose languages, databases, and frameworks with careful consideration of the project needs, and consider the strengths and weaknesses of those choices. Make each of those decisions from modern, open-source, and stable projects. Changing these bigger decisions is expensive and hard.
 
- **Use good software design practices**. The best laid architecture choices are often insufficient to handle the unknowable future. For example, it may be necessary to extract services from a monolith, or switch databases for stability and consistency. The goal of good software design is to reduce the cost of change, whether that change is the addition of a feature or big architectural changes. Cross-language concepts like [loose coupling](https://en.wikipedia.org/wiki/Loose_coupling), [cohesion](https://en.wikipedia.org/wiki/Cohesion_%28computer_science%29), and [YAGNI](http://martinfowler.com/bliki/Yagni.html) (“You Aren’t Gonna Need It”) help any project reduce debt. In addition, each programming paradigm has best practices with [SOLID](https://en.wikipedia.org/wiki/SOLID_(object-oriented_design)) design principles being applicable to [both functional and object oriented languages](http://programmers.stackexchange.com/questions/165356/equivalent-of-solid-principles-for-functional-programming).
 
- **Understand user needs and conduct solution experiments**. Don’t get married to a technical solution or approach too quickly, particularly one that is complex and hard to reverse. Unfortunately, automated tools can’t detect bad architecture decisions or technology choices. Take the time to understand user needs and to explore a range of solutions through experimentation or prototyping to arrive at an answer (referred to as a [spike solution](http://www.extremeprogramming.org/rules/spike.html) in agile).
 
- **Be prudent about incurring technical debt**. Sometimes it’s prudent to accept technical debt for short-term tactical reasons, but be sure it doesn’t cause irreversible damage and you’re prepared to pay it down in the future.
 
- **Continuously inspect code quality**. There are a number of tools for automatically analyzing the quality of your code and alerting you of potential hotspots (for example, coding standards violations or code duplications). Include these tools as part of your continuous integration strategy. Additionally, adopt pair-working practices such as [peer code review](https://en.wikipedia.org/wiki/Software_peer_review) and [pair programming](https://18f.gsa.gov/2015/05/04/pair-programming-why-two-heads-are-better-than-one/) as daily rituals. Finding and fixing problems immediately is the best insurance against the compounding effects of unpaid technical debt.
 
- **Measure your technical debt**. Measure your product’s technical debt to provide early warning signs of potential problems. Track metrics for code quality, code coverage, velocity rates, defect rates, defect resolution rates, and others. Automated tools are good for some of these.
 
- **Reducing technical debt should be part of your culture**. As Scott Ambler [notes](https://disciplinedagiledelivery.wordpress.com/2013/11/10/technical-debt/), technical debt isn’t going to fix itself. Encourage and empower developers to [refactor code opportunistically](http://martinfowler.com/bliki/OpportunisticRefactoring.html), always leaving the code better off than it was before. Create an environment in which developers and management collaborate together on controlling technical debt. This requires open, honest, and frequent lines of communication, as well as a shared understanding of the benefits of keeping technical debt in check. Sometimes simple refactorings won’t be enough to reverse debt. For example, rewriting a backend component in a different programming language. This is a strategic decision that requires a high level of trust and transparency between developers and management.

## Additional readings and resources

- https://www.compuware.com/pay-off-and-prevent-technical-debt/
A discussion of practices and factors stemming directly from agile that can be used to monitor and prevent future technical debt.

- https://sourcelevel.io/blog/6-practices-to-use-linters-to-reduce-and-prevent-technical-debt
Discussion of how to user linters and lint tests to prevent the accumulation of technical debt.
