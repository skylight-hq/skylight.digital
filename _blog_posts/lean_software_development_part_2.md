---
layout: blog_post
title: "Lean software development, part 2: Choosing agile or lean software development"
permalink: /thoughts/blog/lean-software-development-part-2-choosing-agile-or-lean-software-development
content_type: BlogPosting
image: /img/blog/lean_software_development/starting-point.svg
image_description: Person looking at a fork in the road.
image_display: true
tags: [engineering, product, sean johnson]
excerpt: Agile software development has become the safe, default choice. However, there are contexts where lean software development can provide a decisive advantage over agile. Here we explore what to consider when choosing between each approach.  
authors:
  - Sean Johnson
date_published: 2022-01-11
date: 2022-01-11
---
_“Nobody ever got fired for buying IBM.”_ — 1980s

If you’ve heard this saying about buying IBM, have you considered what it means?
It’s not really about IBM; it’s about the safety of the herd. What made IBM such a safe choice was its ubiquity. It’s hard to blame someone for making the same choice as everyone else. Buying your mainframe from another vendor was risking your career. If the project failed for any reason, it was easy to blame the choice to not go with IBM as an unsafe risk that didn’t pay off.

_“Nobody ever got fired for using agile.”_ — 2020s

Luckily for us, we’ve entered a similar period of ubiquity for agile software development. For the last twenty years the risk takers have done the hard work to create a safe, default choice for everyone creating software. The herd is now using agile. Our projects may still fail, but no one’s going to blame our choice to use agile as the cause.
Should we go with the herd? We do want to avoid unnecessary risk, but not at the cost of making good choices for our projects. A “safe” choice can be risky if it’s not a good fit. Buying IBM wasn’t always the best option, and there are contexts where agile isn’t the best software development choice. You should understand when **lean software development** can provide a decisive advantage over agile.

If you haven’t read [part 1 of this blog series](https://skylight.digital/thoughts/blog/lean-software-development-part-1-the-three-instances-of-lean), you may hear “lean” and be thinking about lean startups or lean product development. You should read part 1 to understand how lean software development differs from these other uses of “lean.”

Before considering the choice between lean software development and agile, it’s helpful to understand the challenges of waterfall methods that led to the creation of both agile and lean. From there, we can best understand the common origin of agile and lean, and how they differ.

## What’s waterfall software development?

Waterfall is a descriptive name, given after the fact, to a whole family of software development methodologies derived from other engineering fields, namely construction, durable goods, hardware engineering, and so on. Waterfall methods break down project activities into a linear sequence. Each activity depends on the output of the prior activity and progress flows in largely one direction (downwards like a waterfall).




I've now been developing software for 30 years, and I've spent the last 10 years leading teams using both lean software development and agile software development methods. Through this work, I've gained a deep understanding of the benefits of agile and lean, and the context in which each of these different approaches excels.

In this three part series I'm going to share what I've learned so you can identify when you should be using elements of lean software development. But first, we need to address a terminology issue.

The term "lean" is frequently used in information technology, but it doesn't mean much on its own because we use "lean" to talk about three different things: lean _startups_, lean _product development_, and lean _software development_. Though they share common historical inspiration, these three uses of "lean" don't have much to do with each other and are independent ideas and practices.

## A brief history of "lean"

"Lean" as a specific technical term originates in the article, "Triumph of the Lean Production System," by John Krafcik in 1988. John studied and described the evolution of manufacturing at Toyota from the 1930s to the 1980s and called the end result, in English, [lean manufacturing](https://en.wikipedia.org/wiki/Lean_manufacturing), which also became known as lean production and eventually just lean.

In this technical use, "lean" means **doing more with less**. That's to say doing more with fewer people, less effort, in a shorter time, in less space, without spare inventory, with less waste along the way, and ultimately with far less money.

Lean manufacturing introduced several key solutions to the problems faced in manufacturing:

* Clear identification of what the customer values
* Mapping of all the steps that create customer value
* Treatment of any steps that don't directly create customer value as waste
* Flow between steps (or pull), rather than pushing inventory from step to step
* Just-in-time inventory
* Batch size reduction
* Continuous improvement until perfection (for example, batch size of 1, no waste)

Lean manufacturing wasn't just influential to manufacturers — the ideas quickly spread to other systems thinkers, and had a profound influence on [The Toyota Way](https://en.wikipedia.org/wiki/The_Toyota_Way), [Six Sigma](https://en.wikipedia.org/wiki/Six_Sigma), and [theory of constraints](https://en.wikipedia.org/wiki/Theory_of_constraints). Most importantly for our purposes here, many of the principles of lean manufacturing can be applied to the creation of software using [lean software development](https://en.wikipedia.org/wiki/Lean_software_development).

### But, what do you mean by lean?

I encourage people not to use "lean" on its own. It's too easy for your audience to be thinking about something completely different than what you're intending to say. If you're talking about lean software development, say so, don't just say lean.

To communicate clearly about lean software development, we need to clarify what we're _not_ talking about. We don't mean a lean _startup_ or lean _product development_.

## The lean startup

The lean startup developed as an answer to the challenge of the bursting of the [dot-com bubble](https://en.wikipedia.org/wiki/Dot-com_bubble) in the late 1990s. The internet bubble was created by too much investor money flowing into startups that didn't have a viable business model.

After the damage was done and the rubble was cleared, several influential thinkers began to deconstruct the source of so many non-viable startups. Alexander Osterwalder wrote a paper on business model validation in 2004, and turned it into the book, _[Business Model Generation: A Handbook for Visionaries, Game Changers and Challengers](https://www.strategyzer.com/books)_, in 2010.

It was Steve Blank in 2005 that gave the lean startup most of its terminology, including "customer development," when he wrote his deconstruction of the bubble and prescription for change in, _[The Four Steps to the Epiphany: Successful Strategies that Win](https://www.wiley.com/en-us/The+Four+Steps+to+the+Epiphany%3A+Successful+Strategies+for+Products+that+Win-p-9781119690375)_, in 2005.

More recently, Eric Ries codified the current practices of the lean startup in 2011 with the best seller, _[The Lean Startup: How Today's Entrepreneurs Use Continuous Improvement to Create Radically Successful Businesses](http://theleanstartup.com/)_.

The primary goal of the [lean startup method](https://en.wikipedia.org/wiki/Lean_startup) is to create a viable business.

The lean startup introduced several key solutions to the problems early startups face:

* Exceptional clarity about the hypothesized business model with a business model canvas
* Experimenting with minimally-viable products
* Focus on the rate of validated learning
* Data-driven decision making and actionable metrics
* A very short and iterative Build-Measure-Learn cycle
* Pivoting the business based on what's learned

The key difference from lean software development is that **lean startup is a method for developing a viable business**, not a process for building software.

## Lean product development

After World War II, Japan rebuilt its economy around excellence in manufacturing, but by the 1980s they hit a wall. Despite world-class-manufacturing capabilities, profitably-satisfying demand for manufactured goods was no longer the fundamental issue. The barrier to future growth of Japanese companies was generating more worldwide demand for their products, and, for that, they needed more desirable products.

To create better products, Japanese companies took many of the core principles of lean manufacturing and adapted them for product development. The most obvious example of this was the [Toyota Product Development System](https://www.shmula.com/the-toyota-product-development-system/344/).

It took time before these ideas spread, but some seminal books in the 2000s brought them to a wider audience. In 2004, Jeremy Liker wrote, _[The Toyota Way: 14 Management Principles from the World's Greatest Manufacturer](https://evolvingagile.wordpress.com/2015/11/18/book-review-the-toyota-way/)_, and in 2006 he wrote, _[The Toyota Product Development System: Integrating People, Process And Technology](https://www.mudamasters.com/en/lean-production/toyota-product-development-system-jmmorgan-jkliker-summary)_, with co-writer James Morgan.

Later, in 2009, Donald G. Reinersten wrote the very actionable guide, _[The Principles of Product Development Flow: Second Generation Lean Product Development](https://www.goodreads.com/book/show/6278270-the-principles-of-product-development-flow)_, putting these practices into the hands of more product developers.

Lean product development provides techniques to get at and solve the core of a customer's problem with a viable product solution:

* Coming up with many alternatives, then rapidly exploring and testing them
* A focus on learning first through rapid learning cycles and deliberately closing knowledge gaps
* Extensive user research and listening to the voice of the customer
* Value-stream mapping
* Autonomous, empowered, and cross-functional product teams

The key difference from lean software development is that **lean product development is a method for creating innovative products**, not a process for building software.

## Lean software development

Lean software development is an answer to a very specific challenge: How can we deliver software into production, with maximal time-to-market and profitability, in situations of certainty about what's needed?

Some smart software developers that faced this challenge realized how analogous the situation is to the manufacturing of physical products. An industrial engineer knows what they're manufacturing — their primary challenge is to maximize manufacturing profitability. The best approach to use is lean manufacturing.

Lean software development was born out of this analogy and the idea that the challenges of manufacturing physical products and software creation are similar. In 2003 Mary and Tom Poppendieck wrote, _[Lean Software Development: An Agile Toolkit](https://www.pearson.com/us/higher-education/program/Poppendieck-Lean-Software-Development-An-Agile-Toolkit/PGM73091.html)_, and in 2006 they wrote _[Implementing Lean Software Development: From Concept to Cash](https://www.pearson.com/us/higher-education/program/Poppendieck-Implementing-Lean-Software-Development-From-Concept-to-Cash/PGM94555.html)_.

Lean software development is a process to deliver _known value_ as quickly and profitably as possible:

* Constantly ask, "Are users getting value from this yet?"
* Map the value-creation stream
* Limit the amount of [work in progress](https://en.wikipedia.org/wiki/Work_in_process) (WIP)
* Reduce waste in the process
* Individual busyness isn't a goal; optimize for the output of software into production

Unlike lean startups and lean product development, **lean software development is a method for building software when time-to-value and waste reduction are the greatest risks to be managed**.

## But aren't agile and lean the same thing?

No, they're not! I'm glad I pretended you asked. These terms are used loosely, but agile software development and lean software development are different answers to **fundamentally different risks**.

Agile software development is a process to manage the risk of spending too much time building the wrong thing. Lean software development is a process to manage the risk of using time and money inefficiently when delivering software for well-understood problems.

### So should you be agile or lean?

Because we unpacked the term lean, and made it clear what lean software development is and isn't, you're now better prepared to consider these two approaches to software development and to answer the question of agile or lean for your own team and projects.

Of the three instances of lean we described, lean software development is the odd duck. It's more directly derivative of lean manufacturing than either lean startup or lean product development, and the three lean approaches don't go together very well. As a lean startup, using lean product development, you're more likely to use agile software development than lean software development.

So which software development approach should you be using? That's an important question, and it's the focus of the next post in this blog series. I'll explain the challenges that led to the creation of agile and lean software development, where they overlap, and how they're different. Most importantly, I'll provide clear guidance on when you should focus on each approach. Then, in the last post in this series, I'll give you practical steps and advice for putting lean software development into practice when it's the right approach.

