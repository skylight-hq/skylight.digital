---
layout: blog_post
title: Software badness quantified
permalink: /thoughts/blog/software-badness-quantified/
redirect_from:
  - /blog/software-badness-quantified/
content_type: BlogPosting
image: /img/blog/software_badness_quantified/bad-code-quantified.svg
image_description: A person holding a graphing calculator displaying plot data.
image_display: true
tags: [engineering, robert read]
excerpt: Until a more robust model for measuring technical debt is developed, we suggest using a simple formula for measuring the "badness" of a codebase in order to facilitate system improvement decisions.
authors:
  - Robert Read
date_published: 2017-06-15
date: 2017-06-15
---
{% include callout.html
  type = "pullquote"
  content = "If I had more time, I would have written a shorter letter."
  cite_name = "Attribution unclear"
  cite_url = "http://quoteinvestigator.com/2012/04/28/shorter-letter/"
%}

{% include callout.html
  type = "pullquote"
  content = "Succinctness is power."
  cite_name = "Paul Graham"
  cite_url = "http://www.paulgraham.com/power.html"
%}

{% include callout.html
  type = "pullquote"
  content = "Great literature is simply language charged with meaning to the utmost possible degree."
  cite_name = "Ezra Pound"
  cite_url = "https://www.brainyquote.com/quotes/ezra_pound_398432"
%}

Programming, a form of literature, is greatest when it does the most with the least.

The job of a programmer is to produce order out of chaos, and the more compactly that order can be expressed the better.

Although we can all think of exceptions that prove the rule, shorter code is better code in general.

But how is the software architect or executive to make use of this? It's all very well for programmers to talk about regular expressions, lambda-lifting, and higher-order programming, and I wish more did. But many of us are stuck in the dreary dull world of enterprise software where oceans of fluffy code suffocate the user, like a child falling into a vat of cotton candy. Working with enterprise software sometimes feels like beating a cloud.

What's really needed is a model of technical debt that allows software engineers to speak with a precision and certitude similar to accountants and structural engineers. A structural engineer can, with enough study, tell you what load a bridge should bear. An accountant, with enough study, can tell you with some certainty the soundness of a firm by examining the books. Software engineers can't, at present, tell you the soundness of a codebase.

We can, of course, judge a codebase by two active criteria. If people use it, it's valuable. If it's testable, it's somewhat sound, to the extent that our tests measure fitness. But we can't examine a codebase and determine what the maintenance costs will be.

Codebases tend to have <a href="https://18f.gsa.gov/2015/09/04/what-is-technical-debt/">technical debt</a>. That is, they have problems that aren't apparent at first use or inspection, which prevent the evolution of the codebase efficiently and increase the maintenance costs. I'll take my hat off to anyone who can produce a good model of technical debt that's as useful as double-entry bookkeeping.

But in the meantime, I suggest this simple formula for measuring the "badness" of a codebase: **B = L<sup>2.5</sup>**.

Where **B** is the "badness" of the code, and **L** is the number of lines of code in the system.

Obviously, this is a bit of a joke, but there's a grain of truth in any good joke. We don't have a crisp definition of "badness." And two systems can have equal badness with different numbers of lines of code, so this equation can't be, strictly speaking, true. A physicist will point out that a dimensional analysis of this equation produces nothing meaningful at all, whereas E = mc<sup>2</sup> actually produces units of kg * m/s<sup>2</sup> (Joules) on both sides. Nonetheless, if forced to give a rule for code badness in only six symbols, I'll stand behind this one as the best possible.

Q: When can we possibly compare the "badness" of a system to something in order to make a decision?

A: When we compare it to the badness of a modification of the same system.

In other words, badness makes sense relative to improvements in the same system. Using this formula, we can predict that a 10% decrease in the number of lines of code leads to a 23% decrease in bugs and operational cost, and 20% decrease leads to a 43% decrease in bugs and operational costs. Cutting the code length in half reduces the cost to 17% of the original cost. Cutting the code length to 10% of the original reduces the cost to 1.7% of the original. Conversely, expanding the complexity of the system tends to increase the bugs and the cost of adding new enhancements geometrically.

Perhaps I have the exponent wrong. Perhaps we should consider other curves. In the figure below:

- The red line is y = x.
- The purple line is y = x<sup>1.5</sup>.
- The blue line is y = x<sup>2</sup>.
- The green line is y = x<sup>2.5</sup>.
- The amber line is y = x<sup>3</sup>.

![A graph showing the plot curves of different software badness quantification formulas.](/img/blog/software_badness_quantified/software-badness-quantified-graph.svg)

The vertical or y-axis is "badness relative to the original system." The horizontal or x-axis is "lines of code relative to the original system." If you look at where the lines intersect with "x = 0.8" on the grid, it should give you some idea of what each of these curves means.

- The red line says that y = 0.8, or 80% of the badness of the original system.
- The purple says that y = x<sup>1.5</sup>, or 72% of the original badness.
- The blue line is y = x<sup>2</sup>, or 64% of the original badness.
- The green line is y = x<sup>2.5</sup> or 57% of the original badness.
- The amber line is y = x<sup>3</sup> or 52% of the original badness.

I claim that the green line is the best line; that, in general, in a legacy system a 20% decrease in number of lines of code does indeed decrease the overall maintenance cost extended through perpetuity by 43%.

This may seem fantastic. Surely the exponent is too high — maybe B is just the square of the number of lines of code?

But let's consider the total cost of ownership. Suppose there's a 1-million-lines-of-code project, and you could wave a magic wand and make it a 100K-line system with approximately the same quality. This is approximately a change from a 10-person maintenance system to a 1-person maintenance team. Significant, but not 1.7%. But let's now consider the cost of rewriting the system every 10 years to keep up with changes in technology. Rewriting a 100K system is far more manageable. That's something a programmer could probably personally do in one year, as opposed to a team. A team is much harder to manage than a single person — there's significant communication overhead on a team. It's much more expensive to hire a team.

Additionally, the small system could be expected to have 10% of the bugs of the original system. If each bug costs you something in user satisfaction, that surely must be counted. Even more importantly, the cost of fixing each one of these bugs will be less, and the time to turn them around and the danger of introducing a new bug will be much less. The cost of performing enhancements will be considerably less. Taking these things into account, we're now getting much closer to 1.7% the cost of the mega-line project.

It's clear that each increase in complexity costs us multiple times:

1. When we pay for the code in the first place
2. When we have to analyze bugs against the code
3. When we have to fix and test bug fixes
4. When we have to design enhancements
5. When we have to rewrite the code

Consider also that some systems become so complex that attempts to rewrite them fail completely. This is hard to work into a cost estimate, but surely it's a point in favor of a nonlinear decrease in costs as well. In government work, this is perhaps easier to understand. How much would the Air Force pay for more reliable and secure software for its software systems? At some point, bugs and the inability to make enhancements starts to become a strategic problem that can't be expressed on a spreadsheet.

Believe it or not, I'm a mathematician and computer scientist. I like proofs. I love proofs. We aren't operating in the realm of proofs.

We all know the exponent isn't 2.5; I pulled that out of my hat to match my experience rewriting and maintaining legacy systems.

But I'll defend the proposition that the exponent is closer to 2.5 than 2.0, and I hope I've convinced you that 1.5 is out of the question.
