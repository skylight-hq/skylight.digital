---
layout: blog_post
title: "Case management: a study in non-traditional economics for government"
permalink: /thoughts/blog/case-management-a-study-in-non-traditional-economics-for-government/
redirect_from:
  - /blog/case-management-a-study-in-non-traditional-economics-for-government/
content_type: BlogPosting
image: /img/blog/case_management/paper-case-files-pile.svg
image_description: Case worker overstressed by huge a pile of paper case files to work through.
image_display: true
order: 100
tags: [engineering, modernization, procurement, robert read, chris cairns]
excerpt: Case management systems are commonplace and largely overlap. Agencies and vendors should consider innovative models for cooperating with one another in order to reduce duplicative efforts.
authors:
  - Robert Read
  - Chris Cairns
date_published: 2017-06-14
date: 2017-06-14
---
Fundamentally, government is about getting things done and getting things done requires keeping track of problems. In government, these problems are often called cases. A case could be a pothole, a criminal investigation, a water leak, a disability claim, or an industrial accident. No matter the precise situation, the citizens demand accountability and efficiency demands organized record keeping. It isn't surprising, therefore, in the information age that most governments require computer-based *case management systems*.

We've personally been in contact with case management systems for the Social Security Administration, the Department of Labor, and tangentially the <a href="https://www.codeforamerica.org/blog/2015/11/30/a-new-approach-to-procuring-government-technology-in-california/">California Child Welfare System program</a>.

## Recognizing overlap

Every case management system is different &mdash; but not *that* different. All case management systems have essential fundamentals in common:

- **Database:** all are fundamentally a database application.
- **Attachments:** all require supporting documents such as a picture of the pothole.
- **Information Architecture:** all fundamentally have an information architecture that's similar, which includes data elements such as cases, supporting evidence, dates, and relations to specific persons such as a suspect or complainant.
- **Access Control:** most require some sort of access control as to whom is permitted to read or write the cases.
- **Fields:** all require additional fields of data, but there are a limited number of types of such fields such as names, dates, currencies, free-form-text, and percentages.
- **User Interface (UI):** most require some sort of user interface.
- **Business Rules:** all require specific business rules such as "a pothole case isn't closed until we have a photo of the repaired pothole or a signature from a supervisor."

The Business Rules are in fact the aspect of a case management system that's most specific to that system. If we think about how much overlap there's between any two case management systems, no matter how wildly different their apparent purposes are, such as potholes and terror attacks, we can build a table estimating the general overlap in these systems:

- Database: 100%
- Attachments: 100%
- Architecture: 90%
- Access Control: 90%
- Fields: 80%
- UI: 70%
- Business Rules: 15%

## Cooperation for agencies

Now, what is a government employee who must build, buy, enhance, or rewrite a case management system supposed to do with this knowledge? How can this affect your strategy in providing the best possible service to your citizens?

Let us apply a bit of game theory to your problem. We assert that these are the rules of the game:

- You are motivated almost entirely by what is best for your citizens.
- You are interested in the long-term benefit to your citizens.

Now, what should your strategy be?

Richard Stallman has pointed out that software is fundamentally different from a sandwich.  Only one of us can eat a sandwich. However, if you get some software, it harms you not in the least for someone else to use the same software &mdash; in fact, it may be strongly to your benefit. If you were developing a new subdivision and said,

<blockquote class="post-blockquote">
<p>"I intend to ignore the existing American 110V/60Hz alternating current standard and instead believe that our people are best served by using a custom household system of 166V alternating at 32Hz."</p>
</blockquote>

You would most likely receive a strong talking-to. In the unlikely event that you succeeded, your constituents would be very unhappy with your overvoltage destroyed all their light bulbs and computers. There are, in fact, electrical standards for how such things should be done. They may be arbitrary, but they can't be ignored.

Yet it isn't uncommon today for different case management systems to be created in complete isolation, with little attempt to understand the possibility of leveraging opportunities for cooperation. Of course, seeking such opportunities cost time and money, so we must examine what the potential reward for such effort would be.

First of all, don't fall into the trap of believing your case management system is more complicated than it really is. If a vendor argues that your system is really quite complex and requires a large effort, your finger should be itching for an opportunity to rise and point at the door as you say: "Get out of my office!" Unfortunately, there's no absolute way to avoid this trap, but always be on your guard. If your head is spinning from considering the ways in which your system is different than some other system, you'll focus on the difference and not the commonalities.

Let us hypothetically assume that each of the seven areas of overlap above is about 14% of the total effort of building any specific case management system. The the commonality between any two chosen at random is likely to be:

{:.post-table}
| Area           | Size (S) | Commonality (C) | Code-in-Common (S*C) |
|----------------|----------|-----------------|----------------------|
| Database       | 14%      | 100%            | 14%                  |
| Attachments    | 14%      | 100%            | 14%                  |
| Architecture   | 14%      | 90%             | 12.6%                |
| Access Control | 14%      | 90%             | 12.6%                |
| Fields         | 14%      | 80%             | 11.2%                |
| UI             | 14%      | 70%             | 9.8%                 |
| Business Rules | 14%      | 15%             | 2.1%                 |
| **Sum**        | **98%**  |                 | **76.3%**            |

In other words, your system could well have 76% commonality with any given other case management system. Although this is just a model and must be taken with a grain of salt, the basis of all computer science is finding commonalities which can be abstracted away to simplify a problem. We can name many such examples of existing tools that have been identified and abstracted to produce common, reusable tools, in what Simon Wardley has identified as "commoditization."

These components could be drawn on a three-layer business diagram:

![A 3-layer diagram of a case management system.](/img/blog/case_management/case-management-system-diagram.png)

First among these is the relational database. There is no excuse for building a case management on anything other than an off-the-shelf free database. I hope that the world will explore better ways to store data; I personally don't like relational databases, and am a fan of the "not-only-SQL" movement. But if you're government employee building a case management system, you might not be a researcher in computer science, nor an expert in how to select competing NoSQL technologies. So my advice to use is to stick with commodity components, such as MySQL or PostgreSQL.

Let us suppose that you happen to find Jane Jones, who also has a case management problem and that you indeed have a 76.3% overlap with her. If you can cut a deal with her to each pay half of the cost of the common part, you should each be able to pay 38.15% for that part. Since your business rules and some other details aren't the same, you'll each have to pay 23.7% of the total price with no opportunity for saving. But, if you can form such a cooperation, you've each paid only 61.85% of what you'd have paid on your own, and your taxpayers take home a 40% savings.

It may be hard to find Ms. Jones, but a 5% timebox of your effort seems justified since a 40% savings is possible.

If we extrapolate this to a general rule, you should support any standards and consortia and cooperation that might help you. Since it's probably not your job to create and lead such consortia, you can at least devote a small timebox to trying to find them and agreeing to support and join them if circumstances allow.

Now suppose that you and Jane have contracted your system, and you're approached by James Jackson, who also has a similar system, and wants to be cut in on the same deal. You of course are happy to go thirdsies with James, which is even better than going halfsies with just Jane. But it's also the case that you can't be renegotiating everything every month. You can predict that at some point it won't be worth your time to bring in another partner, even if in theory it decreases your costs further.

The way to save yourself this hassle is simply to demand that the software that you and Jane are developing be made free-libre open source from the first line. By doing this you and Jane are in effect saying:

<blockquote class="post-blockquote">
<p>"We know that there are many systems out there that are similar to this, and we'd like you to get the benefit of our system, and we'd like to benefit from your system. So we've demanded that our system, except for our business rules, is freely reusable so that we can freely reuse contributions to it which we hope you'll make. However, we can't spend all of our time helping you figure out how to use this, so we're attempting to distribute that burden across all potential users."</p>
</blockquote>

## Objections

Inevitably two substantive objections will be raised to this approach, and a few specious ones driven by fear and cupidity.

The first substantive objection is this: We're making something more useful, so how can that be easier?

You're wise to raise such an objection; after all, it's harder to make two sandwiches than to make one. However, we must also understand that we aren't making sandwiches. In fact, we aren't dealing with scarce resources at all. The code is infinitely replicable; replicating it has a marginal cost of zero. The time and energy to write the code is indeed a scarce resource, but we're specifically attempting to leverage that as highly as possible by sharing it as much as possible.

We believe rather than being like sandwich-making, this is more like invention, and the Inventor's Paradox applies. To quote the <a href="https://en.wikipedia.org/wiki/Inventor%27s_paradox">Wikipedia article</a>:

<blockquote class="post-blockquote" cite="https://en.wikipedia.org/wiki/Inventor%27s_paradox">
<p>"The <strong>inventor's paradox</strong> is a phenomenon that occurs in seeking a solution to a given problem. Instead of solving a specific type of problem, which would seem intuitively easier, it can be easier to solve a more general problem, which covers the specifics of the sought after solution. The <em>inventor's paradox</em> has been used to describe phenomena in mathematics, programming, and logic, as well as other areas that involve critical thinking."</p>
</blockquote>

The Inventor's Paradox doesn't apply to every situation, but we can reasonably expect it to apply to case management systems. The only thing that's really distinctive about a case management system is the business rules specific to a given situation. The more we can treat the rest of the system as a set of functionality to be shared by systems, the better off we are.

The second substantive objections is this: The vendors I'm talking to are hoping to make a profit reselling the commonality of this system to other government agencies. They claim that if I insist it be open source, they will lose that profit incentive, and will have to charge me more.

The claim that the vendors are making here is potentially technically true, but isn't a valid reason for purchasing a closed-source system. The money they stand to make reselling the system you pay for to Jane and James is to them uncertain and risky. It is far better for them that you, Jane, and James agree to cooperate in the purchase ahead of time, which decreases their risk. Any profit they hope for in addition to this is sheer greed because it's based not on the quality of the system they're providing, but on the deceptive nature of the number of times they can inefficiently resell the same system.

So we can imagine that you're sitting at a table with Jane on your right and James on your left and from across the table comes the assertion: "This will cost you three times as much if you demand that we make it open source." And you look at Jane and she nods and you look at James and he nods and say "Okay." And then each of you pays one-third of the higher price, and everyone, including the vendor, is better off.

In other words, it's economically more efficient to cooperate on code reuse before the purchase than to allow the vendor to arrange for haphazard code reuse after the purchase. Vendors who support this cooperation, whether with an "invisible hand" or open source or through social interaction with other agencies and vendors should be rewarded.

You will also occasionally hear the specious argument that has been called "security through obscurity." Someone will likely say that it'll be easier to hack your system if the code is kept a secret. Debunking this hooey is beyond the scope of this article. We refer you to <a href="https://18f.gsa.gov/2014/11/26/how-to-use-more-open-source/">"How to use more open source in your next federal IT acquisition"</a> for a related discussion.

In addition to greater economic efficiency, demanding an open, freely reusable source code has other benefits. It naturally forces a separation or *modularization* of your business rules from the rest of the system. This is precisely what you want, because your business rules may be subject to change from a regulatory or legislative body. If your business rules are in a separate module clearly separate from other features of your complete system, it's unlikely that a business rule change will force you to rewrite more than just your own business rule module.

Finally, there's another compelling reason for demanding open source for case management systems, which is to avoid inefficiency across time.

Government systems last a long time, often longer than any one officer holds his or her office. However, you have a duty to consider your future users and future taxpayers. The best way to ensure that your system is inexpensive to maintain is to make sure it's open source from the start. For example, when a maintenance contract must be renegotiated, it's a tremendous benefit for all potential bidders to be able to see the code they're bidding on. This decreases uncertainty and therefore risk, and therefore the cost of maintenance. Perhaps even more importantly, an open-source system decreases the intrinsic advantage that the author of the code has in bidding on further work related to it. It is economically inefficient to place the original author in a privileged position where they can extract a greater profit margin from you. Making all code open source mitigates somewhat the intrinsic advantage that the original firm that developed the code has on bidding for future related work.

## Strategies

Another way of looking at this is that you, as an officer of the government, should drive the continued commoditization of this technology both for the benefit of your own constituents and for everyone as a whole. This is a noble, but rather daunting, task. But there's only one way to eat an elephant: one bite at a time. So here are some specific suggestions for you can serve yourself while serving the greater case management community:

- Remember that, in the end, your system is just some business rules on top of a database. Be suspicious when anyone tries to obfuscate this simple fact.
- Actively seek cooperation.
- Support any related consortia.
- Demand free/libre open source licensing and publication from the beginning of the project for any code that you pay for.
- Demand that the business rules be kept as cleanly separated from the rest of your system as possible.

You don't have to pay to make it easy for others to reuse your system; making it open source is enough.

The fundamental strategy for agencies, however, is based on how you spend your time: government employees must dedicate a small fraction of their time to seeking cooperation in order to obtain the savings benefit of huge overlaps between case management systems.

The fundamental strategy for vendors is similar: vendors need to focus on building case management systems in ways that can be reused across both space and time. This will require vendors to devote a certain amount of time to activities which support this cooperation: creating open standards, communicating with other vendors, and writing clear APIs (application programming interfaces) and automated tests and documentation of the system.

## Conclusion

Case management systems are commonplace and largely overlap. Agencies and vendors need to cooperate across both time and space by creating consortia, or less formal means of cooperating. In order to do this, architectural and API standards need to be explored and explained. Agencies need to support a small but significant amount of time for their officers and agents to collaborate with other agencies to form consortia. Vendors need to provide leadership in this area, and this is article is our initial attack on that problem.
