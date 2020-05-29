---
layout: blog_post
title: "Containers: thinking inside the box"
permalink: /thoughts/blog/containers-thinking-inside-the-box/
redirect_from:
  - /blog/containers-thinking-inside-the-box/
content_type: BlogPosting
image: /img/blog/containers_thinking_inside_the_box/containers.svg
image_description: A huge stack of cargo containers with a person sitting inside one of them and working on a computer.
image_display: true
order: 1800
tags: [devops, josh dorothy]
excerpt: Containers enable software portability across a wide range of computing environments. Here's what you need to know about their budgetary, technical, and organizational value.
authors:
  - Josh Dorothy
date_published: 2018-04-29
date: 2018-04-29
---

Maybe you've experienced this: your organization's software development process is a tar pit. No matter what you or your team does, it feels like you're stuck, spending most of your time, energy, and money on infrastructure issues, technical debt, and an inefficient release lifecycle.

You're not alone &mdash; we've been there too. There's no magic bullet, unfortunately, but there *is* a powerful tool to start to fight back: containers and the magic of immutable infrastructure. By using containers to address your technical bottlenecks, you get the breathing room you need to address your organizational pains.

## The cost of business as usual

To start, I should mention that containerization isn't just a technical solution &mdash; it's also a budgetary one. Why? Too often, an hour of software development doesn't result in one hour of work product, due to architectural complexity or overhead caused by infrastructure issues. These inefficiencies are particularly insidious due to the fact that they can't be fixed by better code &mdash; they must be fixed through better *processes*.

Consider a common deployment scenario: an operations team controls a group of physical servers, which it uses to provision virtual machines (VMs) for use by various application teams. The configuration and provisioning is entirely manual, or partially automated but still triggered manually. Every single change to these VMs must pass through a group in charge of deployment, and typically take a few days or longer to be approved and implemented.

Does the above scenario work? Sure, but it's coarse-grained with significant overhead. Developers can't control their own environment, forcing them to spend energy accounting for project delays instead of product development. Significant time is spent creating new VMs using manual, error-prone steps.

VMs often take more resources than they truly need, and correcting this after the fact often involves downtime for the hosted application. Moreover, scaling physical servers vertically by buying increasingly-powerful machines is expensive and subject to diminishing returns.

These combined inefficiencies significantly impact a budget. You're paying for nothing. Moreover, consider the secondary impacts on application availability and employee morale and happiness, which can in turn affect hiring costs, project deadlines, and organizational goodwill. Even worse, these problems are compounded by the size and inefficiency of your organization. For example, what happens if each change requests takes a week instead of two days?

## Containers and your budget

Immutable infrastructure is a powerful way to address these process and technical inefficiencies. Put simply, immutable infrastructure is the clean separation between data and everything else. That "everything else" &mdash; application code, infrastructure configuration, and related services and dependencies &mdash; is never changed in production. Instead, it's versioned together with the code ahead of time and replaced with every deployment.

Containers are a key technology enabler for immutable infrastructure, moving infrastructure dependencies from the operating system (OS) level into the container. This enables infrastructure and application code to be tested and deployed together as a single unit. By doing so, developers avoid surprises at deployment time, knowing that a container will behave the same in production as it did in development. This removes the need to have a team managing the provisioning and configuration of individual VMs and empowers developers to account for the unique needs of their application.

Because containers are provisioned ahead of time, they can be quickly started, stopped, and moved, meaning changes can be deployed quickly and containers auto-scaled as needed to deal with load. Deployments are uniform and repeatable, reducing unforeseen downtime. And, because containers run the same on any machine, expensive custom machines can be replaced with commodity servers.

All of the above can be done manually, but containerization truly shines as part of a continuous integration / continuous deployment (CI/CD) pipeline. Complicated and error-prone manual deploys can be replaced with a routine swap out of a container running old code with a new one, triggered automatically by merged code changes. Hours or days of deployment overhead and potential downtime can be reduced to seconds. This is time that can be spent focusing on development quality, and the savings apply equally to new development, maintenance work, or bug fixes. These improvements result in less errors and more rapid developer feedback with higher development velocity *and* overall quality.

Time savings are directly translatable into labor cost savings, and the reduced need for high-end hardware translates into procurement savings. These savings are essential to organizations where significant portions of development budgets are tied up in operations and maintenance (O&M) expenses. While there are upfront costs in moving to a containerized architecture, the return on investment from O&M savings (and a [flattened cost curve](http://www.agilemodeling.com/essays/costOfChange.htm)) is undeniable. These improvements are the end goal of containerization &mdash; returning financial and operational flexibility to organizations so they can deliver better solutions.

## The technical argument

Now that we've looked at the budgetary advantages of moving to containers, let's dig into the technical benefits. While the two are intertwined, there are specific technical aspects of containerization to be aware of, such as security. After all, it does no good to save money by moving to something that's demonstrably less performant or secure. Let's start by looking at containers themselves.

What's a container? At its core, a container is a way to isolate software from the rest of the system. Isolation isn't unique to containers, and has been an area of computer science research for decades. Historically, isolation has been achieved through virtualization: a single physical machine running multiple virtual machines (VMs), a virtualized OS running multiple applications, remote session virtualization, and so on. The general idea is that a scarce underlying resource is virtualized, allowing multiple users to share it.

Exactly what resources are shared, though, is what affects policy and budgets. For instance, suppose you use an OS that has no allowances for virtualization. In a scenario where you run multiple VMs on a single machine, these VMs each require their own copy of that OS, as well as payment of any associated licensing cost. Conversely, suppose you're using a paravirtualized solution and running multiple applications on a single virtualization layer. In this case, the underlying OS can be shared and these licensing costs are eliminated.

Containers offer the cost savings and ease of use of paravirtualized solutions, but also remove the overhead of virtualization through the container runtime. Rather than relying on third-party (and often costly) applications, containers rely on features in the Linux kernel, such as namespacing, to provide secure file system, process, and resource isolation. The runtime also allows containerized processes to access the underlying kernel and hardware resources at minimal overhead compared to traditional virtualization, resulting in more efficient use of the underlying system.

![Graphic comparing the differences between virtual machines and containers.](/img/blog/containers_thinking_inside_the_box/virtual-machines-vs-containers.svg)

A second major advantage that containers offer is the use of a union file system. A union file system consists of multiple filesystem layers joined together. These file systems allow mounting files from other file systems, and, in the case of containers, can be used to directly mount the layers of a container image to a given directory on the host machine. Like a source control system, these layers are versioned and stored in a central repository. This enables them to be pulled and run on any machine having access to this repository. Only updated layers need to be pushed, significantly reducing network bandwidth and deployment times.

As a result, containers can be quickly started, stopped, and updated, enabling rapid responses to both code changes and application load. This makes them a natural fit for CI/CD pipelines, where the goal is increased velocity and reduced risk due to faster feedback. Changes are deployed faster and feedback is received sooner, leading to higher quality code. Containers are versioned, meaning specific features can be easily deployed and, if necessary, rolled back. This is one of the goals of an immutable architecture &mdash; being able to shift variability from the deployment to the build phase, where defects don't impact uptime. Containers are the best way to achieve this.

## Some final considerations

The downside of this approach, however, is that it's more technically demanding. It requires skill sets that organizations like the federal government don't, in general, currently possess and places them in direct competition with private industry for scarce talent. New technology also raises new security concerns &mdash; how do you continue to protect yourself and your users? In today's world the safekeeping of personal data is paramount. You only have to look at the news to see the consequences of indifference.

That's not to say that containerization is beyond any organization; rather, it's simply acknowledging that initial help may have to come from outside and that there will be ramp-up time. In fact, containerization is important for a different reason: technological adoption functions as a signaling mechanism. Organizations all want to hire top talent to drive innovation and technological adoption, but that top talent wants to work with modern technology and processes. Adopting a containerization architecture is a great step into that virtuous cycle.

It's true that in terms of security, some of the advantages of containers could also be security liabilities. For instance, containers maximize sharing of the underlying kernel and hardware to reduce the overhead common to virtualization, but this lack of isolation over a traditional VM can open new attack surfaces. Allowing development teams to package and deploy their own containers without security oversight raises additional concerns. However, it's important to recognize that these potential vulnerabilities aren't actually new, and are just variations on vulnerabilities from previous architectures. Security teams need to engage with the architectural changes and be more closely involved in the development process. This change in security practice leads to more secure applications in the long run, regardless of architecture.

## So, are containers right for you?

Containerization is a powerful tool to increase organizational efficiency and allow you to focus on what really matters &mdash; delivering a better solution. What could you do with a budget that wasn't tied up in infrastructure, technical debt, and an inefficient development lifecycle? We can help you develop a containerization strategy for your organization. [Drop us a line](/connect/contact/) and let's get started.
