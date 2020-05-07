---
layout: toolkit
title: Appendix E&#58; Design challenge examples
permalink: /work/toolkits/agile-procurement-playbook/appendix-e-design-challenge-examples/
sidenav: agile_procurement_playbook
---

# Appendix E: Design challenge examples

Typically a design challenge should resemble the type of work that the government hopes to procure. This can take a variety of forms, from working software proof-of-concepts to visual artifacts that include user personas and journey maps to examples of what product development would look like through various tools such as Jira and Confluence. It's important that the [Technical Evaluation Panel](../phases-of-an-agile-procurement#technical-evaluation-panel-tep) has a cross representation of digital experts to evaluate the vendor technical solutions for best practices.

## Example #1: MPSM design challenge

Here's an example of a recent [design challenge]((https://fcw.com/blogs/lectern/2019/07/kelman-non-traditional-contractors.aspx)) put on by the Centers for Medicare & Medicaid Services (CMS) for its [Medicare Payment System Modernization](https://usds.gov/projects/medicare-payment-program) (MPSM) initiative:

Imagine that you've come upon the large monolithic legacy system responsible for executing and maintaining the workflow that processes Medicare claims in order to make payments to service providers. The maintenance of the system is proving to be unsustainable as time continues. We want you to modernize this system.

In addition to the existing payment processing system, there are other parts of the agency that are involved in experimental payment workflows that traditionally operated outside of the legacy payment system. We want those experimental workflows incorporated into this modernization effort. This will require the integration of two very different work streams, development processes, and development lifecycles. The Medicare payment processing workflow is ever-evolving to respond to legislative changes and new industry paradigms. The existing system and any subsequent changes to modernize it, must take into consideration the flexibility that's required to quickly react to these types of changes so that business isn't interrupted.

This work is fundamental to the agency's mission and will require teams that can take pragmatic steps toward modernizing the legacy systems as well as supporting new payment workflows in the future. Due to the complexity of the work, teams must be comfortable with requirements that are vague, undefined, or conflicting. Thus, we will not provide a detailed list of requirements. Instead, we'll provide an outline of how we'll evaluate your solution, and a list of the outcomes we'll measure and use in the evaluation.

CMS has given you the following goals while approaching the modernization of this system:

- Sustainability: the system, resources, and processes must maintain their current levels of service during modernization efforts
- Agility: the system needs to evolve, sustainably, at the same speed as the business
- Integration: systems involved in making payments, and other CMS business functions, need the option to use modern technology to interact with the current state of the legacy system
- Usability: users' interaction with the legacy system need to easily identify and extract the exact data they need, when they need it

With the goals provided and as part of this design challenge, CMS wishes you to help develop a longer-term vision and product strategy for this modernization effort.

Because the existing system is so large and has many groups that are involved with maintaining it, there are competing business needs that'll require prioritizing development work. Knowing what to immediately modernize can change based on shifting business requirements. These potential changes shouldn't impact the longer-term vision of the modernization effort.

The business owners of the current system have identified modules that need "modernization." In addition to these modules that currently run on the mainframe to support existing payment methodologies, other business owners are developing new payment methodologies and would like the new system to be flexible enough to accommodate both existing and new methods simultaneously. CMS executives want to understand both why and how the work that you've chosen to do accomplishes the project's goals that CMS has provided and the vision that you've created.

**Business Owner 1:** In order to support existing fee-for-service claims payment processing, maintenance is provided yearly on a specific piece of business logic called "FQHC-Pricer." The pricer that the business owner wants you to address is currently written in COBOL and has been maintained by CMS for 15 years. The pricer is a self-contained module that doesn't require any database access or outside dependencies. These yearly code changes typically take at least eight months to implement due to a waterfall process of requirements gathering, planning, developing, testing, and deploying. The business owner wishes to make changes to the pricer that can be pushed out to production in a much more rapid cadence.

These files don't have the most extensive testing associated with them. CMS policy should have the expected outputs based on inputs but because they're removed from the development lifecycle, their inputs/outputs may or may not match what was actually development. You should plan for these inconsistencies by providing how you'll determine parity and address each discrepancy, if any.

**Business Owner 2:** In order to integrate new payment methodologies into the existing business workflow, creating services that can be reused is desired. One such example of a service is identifying participants. Each new payment methodology, called models, requires identifying participating providers or institutions. Once participants have been identified and other required information provided, that "file" needs to loaded into the legacy system. There are many models, each with their own development teams, that submit participant information to the legacy system in various different formats. The legacy system requires a standardized format. Explain how you'll address the issue of lack of standard submissions and a service-design workflow.

**Deliverables**

You're to prioritize the above business owners' needs with your deliverables and provide justifications for decisions made. These decisions should be in sync with your proposed long-term vision for this system. CMS is looking to you to provide software artifacts that deliver on the business needs and support those artifacts with research, design, and product roadmaps.
