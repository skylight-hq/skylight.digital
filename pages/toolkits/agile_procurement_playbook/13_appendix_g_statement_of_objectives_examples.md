---
layout: toolkit
title: Appendix G&#58; Statement of Objectives examples | Skylight Agile Procurement Playbook
description: A guide on how to apply the principles of agile to procurement.
tags: [digital procurement, digital acquisition, agile acquisition, agile procurement, guide]
permalink: /work/toolkits/agile-procurement-playbook/appendix-g-statement-of-objectives-examples/
sidenav: agile_procurement_playbook
content_type: Toolkit
---

# Appendix G: Statement of Objectives examples

## Example #1: Modern Payment Services for the Medicare Fee for Service (FFS) Program Statement of Objectives (SOO)

###  Overview and background information

As we create modernized systems at the Centers for Medicare & Medicaid Services (CMS), it also creates the need for those systems to be able to communicate via real-time, system-to-system interfaces, powered by industry-standard, open-source technology for APIs. One of the most critical areas for systems across CMS to interoperate with is with the Medicare claims ecosystem. For instance, the Quality Payment Program (QPP) currently relies on a once-a-year flat file transfer of payment adjustments to the Medicare Administrative Contractors (MACs) to implement the actual payment rules that form the purpose of the entire program. As other CMS systems modernize to provide more information in real time, as well as rapidly implementing new functionality to keep up with the constant innovations in Medicare, the inflexibility of the shared systems that are responsible for claims processing will continue to grow as a barrier to innovation if not addressed. The shared systems, as the system that processes approximately 1.2 billion claims a year, worth close to $400 billion dollars, must be able to change to meet the needs of the future, without disruption to the critical services provided in the present.

A promising step in this direction is the Medicare fee-for-service modernization effort led jointly by the Applications Management Group (AMG), the Provider Billing Group (PBG), and the Medicare Contractor Management Group (MCMG) at CMS. Together with an existing shared systems maintainer, they've embarked on an effort to identify specific projects within the shared systems that are effective incremental steps towards modernization and have been building out proofs of concept to determine the viability of each project. The U.S. Digital Service (USDS) has recently joined this effort, bringing an additional focus on identifying modules of the system that may be separated from the mainframe deployment and deployed into a production-ready cloud environment, enabling fully automated unit testing, integration, deployment, and monitoring and alerting practices, as well as the use of a wider array of open source tools and current industry standard technologies.

The Medicare **Fee for Service (FFS) shared systems** are comprised of four different systems: the Fiscal Intermediary Shared System (FISS) which processes Medicare Part A claims and some Medicare Part B claims, the Multi-Carrier System (MCS) which processes the bulk of Medicare Part B claims, the ViPS Medicare System (VMS) for durable medical equipment (DME), prosthetics, orthotics, and supplies claims, and the Common Working File (CWF), which provides a "national view" of claims processing, and performs additional eligibility verification, utilization history, and pre-payment validation from that perspective. Together, these four systems form the key core of systems which determine if and how Medicare claims are paid out. These systems are currently hosted on the CMS Virtual Data Centers (VDCs) and consist of COBOL programs running on IBM z/OS mainframes in IBM's Customer Information Control System (CICS) environment. The primary users of these systems are the Medicare Administrative Contractors (MACs), who are responsible for receiving and processing claims from healthcare providers in a timely and efficient manner. The MACs interface with the shared systems through green-screen terminal interactions, and via flat-file uploads and downloads from the shared systems. In addition, each of the MACs has built their own "mid-tier" systems, which are proprietary systems designed to handle the workload and interface with the shared systems.

The ongoing modernization effort is an attempt to take an incremental approach to modernization &mdash; it focuses on finding portions or aspects of the shared systems which may be good "proof of concepts" for a particular goal, and then setting a team to achieve that goal. The goals of modernization are plentiful and varied, but they include updating the languages and tools to current industry standards to allow the system to be updated more easily and more frequently, refactors of the code to resolve specific pain points, and modernizing the way that the shared systems interact with other systems. This last point is critical, as CMS is very interested to adopt an Application Program Interface (API)-first approach to FFS modernization, making the functionality of the shared systems accessible via a modern, REST API. This approach will drive innovation in the way downstream systems make use of the systems and their data, leading to better experiences for providers, beneficiaries, and the entire Medicare community.

The ultimate goal of this incremental approach is to develop and create processes and expertise that will accelerate and scale, enabling long-term, large scale modernization in an agile manner. If the shared systems are going to keep up with the pace of innovation in Medicare in the long-term, allowing the system to adapt to needs five, ten, or twenty years in the future that are impossible to predict now, we must develop strategies for making substantial changes and improvements to the system quickly. At this point in time, we don't have the experience to predict and plan changes at that scale, and so our focus is on delivering and learning from smaller scale proof of concepts. We expect these proof of concepts, though they start at a small scale, to form the blueprints for repeatable processes for creating modularity, defining system interdependencies, updating to modern languages and technologies, and in general building a system that we can confidently change at larger scales with confidence that we will not disrupt the critical operations that the system supports in the present.

### How we expect this team to work

We expect a successful Modern Payment Services team to be flexible and competent in solving both infrastructure and application development problems, effectively applying common practices from successful private companies to FFS Modernization efforts. This team will be responsible both for driving progress as a partner on the effort to modernize specific modules of the FFS shared systems, as well as building out the modern infrastructure to host those modernized modules. This is an exploratory effort, and we expect that the specific goals and objectives of the team may shift over time as we learn more about the problem space.

The FFS Modernization project is utilizing the agile methodology, which is a substantial shift from the waterfall-based operation of the core of the FFS shared systems development. This new agile process and existing waterfall process will need to co-exist and effectively interoperate if this modernization is successful. We expect this team to have extensive
experience in effective agile environments, and a deep and thorough understanding of the core principles of the agile approach and why they work. We'll also expect this team to be comfortable explaining and implementing agile without relying on pre-existing frameworks such as Scrum or Kanban, as the team will be expected to first adapt to the existing agile process used for modernization, and then play a role in helping to evaluate and iterate on that process based on its merits in this particular situation, rather than on its adherence to an existing framework. In addition, we expect the team will be generally familiar with tools supporting an agile process and will be able to adopt the tools already in use (for example, JIRA, Confluence, HipChat), as well as suggest new tools as appropriate. These tools will be essential to joining the collaboration with the existing members of the modernization effort, which includes several groups at CMS from the Center for Medicare (CM) and Office of Information Technology (OIT), as well as modernization teams from the existing system maintainer, Perspecta.

### Problem Statement/Objectives

CMS seeks the skills of a **Modern Payment Services** team, which is well-versed in industry standard software architecture and development practices using modern languages and tools, to join this ongoing modernization effort on the FFS shared systems that will enable more flexible development and real-time system-to-system integrations with systems across CMS, such as quality payment systems and provider and beneficiary support systems.

We lay out two objectives below &mdash; one focused on building and maintaining cloud infrastructure, and one focused on a collaborative team joining existing proof of concept efforts undertaken by the maintainer modernization team.

#### Objective 1: Develop, monitor, and maintain a cloud infrastructure for modernized modules, using a DevOps-informed approach to application deployment and maintenance

USDS has begun developing a cloud infrastructure that's ultimately intended to serve as the core environment in which modernized modules will be deployed. We're looking for a team who can continue to iterate, monitor, and maintain this system as the needs and scope of its importance within the shared systems ecosystem evolves. We would expect that this would be a scrum team of 3&ndash;4, focusing on DevOps/SRE competencies, with some app development and project management expertise.

Here are some specific areas of focus for the **Infrastructure** scrum team:

**Enable effective, production-ready cloud operations**

- Found and nurture a DevOps culture following best practices laid out in [the SRE book](https://landing.google.com/sre/book/index.html)
- Adopt and champion effective tooling to support a DevOps approach, making effective use of tools already available (such as Splunk and New Relic)
- Determine the risk tolerance of the modernized modules and devise processes and infrastructure that ensure an appropriate level of availability
- Implement practical and effective monitoring and alerting to enable efficient detection and response to any discovered defects, availability incidents, or security incidents
- Provide a team capable of fast and effective incident response which mitigates issues within hours, and transparently communicates the incident status to stakeholders
- Incident response should have battle-tested mechanisms for rapidly contacting and collaborating existing shared system developers and maintainers

**Build tools to empower and accelerate development, testing, and deployment in the cloud**

- Design and build infrastructure tooling to enable testing and development that allows all stakeholders to have high confidence that shared system updates function as expected, especially with respect to their interaction and interface with other systems
- Develop performance testing methodologies to ensure that updates will not cause unacceptable negative impacts on nightly batch cycle processing time.
- Build and maintain development, staging, and production environments
- Implement deployment tools that allow for fast, push-button automated deployment and rollback of high-availability applications
- Ensure tools are easy to use for development teams new to or unfamiliar with modern cloud infrastructure, and with varying levels of engineering expertise
- Improve and maintain a continuous integration system to build and test updates
- Ensure the system is highly secure, and has a well understood threat model which is actively monitored and updated
- Help navigate security compliance process to ensure efficient delivery of updates on a regular schedule, for example gaining approval of necessary Security Impact Analyses and supporting the aspects of the shared systems' Security Control Assessments impacted by this work

#### Objective 2: Join and participate in selection, design, development, and deployment of proof of concepts and production modernization modules

The existing modernization team, consisting of CMS (AMG, PBG, MCMG, and USDS) and the maintainer modernization team from Perspecta, is continuing to identify and develop modules that'll provide modern interfaces to the FFS shared systems, allow for more flexible updates to the shared systems, and resolve pain points for providers, beneficiaries, MACs, and maintainers.

We're looking for an Application and Research team to join as members of one or more of the three scrum teams, which are currently working on developing and delivering proof of concepts. We expect this team to bring practical expertise in building modern APIs, architecting modern distributed systems, cloud infrastructure, modern development tools, and agile development processes to the proof of concept process. We also expect for this team to bring a strong user research and service design background, to help inform and advise CMS on the best path for modernization moving forward. The existing members of the team, from the system maintainer Perspecta, have considerable valuable expertise in the FFS system itself, its architecture and functionality, the technologies used to implement it and their strengths and limitations. They're very familiar with the pain points facing the infrastructure and have a number of ideas on how those could be addressed. They're also extremely familiar with the business processes around FFS claims processing, which is valuable information that should be used as the starting point for the user research and service design elements of this team. We're looking for a robust collaboration between these two groups, leveraging the existing strengths of both groups and providing opportunities for each group to learn from the other.

While we don't expect expertise with Medicare claims processing or the shared systems, as Perspecta will be primarily providing that, some prior experience with Medicare claims data or processing would be valuable for this team to have to enable a smoother integration and collaboration with existing teams.

We expect that a team of around 4&ndash;7 would be appropriate for this work, with that team either split between embedding on two existing sprint teams or concentrating on a larger effort on a single sprint team. We expect that this team would have primary competencies in modern application development and API design, user experience research and service design, as well as product and agile project management expertise.

Here are some specific areas we would like this **Application and Research** team to focus on:

**Effective use of modern technologies and methodologies**

- Embed developers on existing sprint teams, writing and review code required to enable each module to be effectively used via a modern interface, and if necessary, deployed into a modern cloud environment
- Effectively utilize modern technology within the modules where it'll add substantial value and is an appropriate solution, while also recognizing areas where the benefits of migrating to a modern technology aren't substantial enough to warrant the move
- Assist in building modern development environment and testing tools to facilitate maintenance and ongoing development of modules
- Ensure that the quality of the system remains high throughout the shift to using modern agile processes for development, testing, and deployment
- Provide mechanisms for thorough and efficient testing, ensuring the rate of defects in the code is at a threshold determined by CMS to be appropriate for the extremely critical sensitivity of this system
- Ensure the system is highly secure, and has a well understood threat model that's actively monitored and updated
- Help navigate security compliance process for cloud environments to ensure efficient delivery of updates on a regular schedule
- Assess and optimize the performance impact of incorporating modernized modules in the existing system

**Collaborative user research to inform, propose, design, and execute on
projects that achieve modernization goals**

- Perform user research to determine the impact (both positive and negative) of each module on providers, beneficiaries, maintainers, MACs (including systems cycle runtimes) and CMS stakeholders, and use that understanding to provide suggestions to leverage technology to maximize the benefit of modernization to the Medicare ecosystem
- Provide input and suggestions, stemming from research into the needs of users and the design of the system, on the overall goals of the FFS modernization program
- Participate in the design and architecture of the proofs of concept and modernized modules in collaboration with the existing sprint teams, providing expertise on effective usage of current industry-standard, open-source technologies
- Develop, execute, and iterate on effective methodologies that allow the regular, efficient deployment of modernized modules to production

### Collaboration with existing groups

We expect this team's work to be highly collaborative. The team will be joining a preexisting modernization effort undertaken by several groups within CMS, a USDS team, as well as a team already highly familiar with the shared systems. The Modern Payment Services teams should identify potential issues that could arise and interfere with their ability to work effectively with the existing team and should have a plan to address those issues. We've outlined important other teams and parties below and specific expectations around each.

#### CMS FFS Modernization Team (OIT/AMG, CM/PBG, CM/MCMG, USDS)

The existing CMS FFS Modernization team consists of stakeholders from the Office of Information Technology's Applications Management Group and Center for Medicare's Provider Billing Group and Medicare Contractor Management Group, as well as members of the U.S. Digital Service at HHS team. These CMS stakeholders serve both as the leadership and product management team for the FFS modernization effort and are responsible for making decisions about what work will be done and the direction of the project.

We expect the Modern Payment Services team to serve a crucial role in working together with the CMS FFS Modernization team on a day-to-day basis, ensuring that their goals are met, and providing information and expert advice on upcoming decisions or project direction.

#### USDS Individual Contributors

In addition to USDS' role as part of the CMS FFS Modernization team, members of USDS are also serving in a number of roles as individual contributors. This includes writing code, doing user research, and generally participating in the FFS Modernization sprints as part of the sprint teams. In general, we're currently providing expertise in areas such as effective implementation of agile, practical design of modern REST APIs, and practical use of cloud services, that we also expect that the Modern Payment Services team to bring their expertise. This role will shift for USDS as the project changes and matures.

We expect the Modern Payment Services team to start by engaging with the USDS individual contributors to learn about what has already been built and what the current state of the project is, and then to continue to build off of the momentum and work that USDS has started.

#### Shared System Maintainer Modernization Team

The Shared System Maintainer Modernization team is a team from Perspecta (the vendor currently responsible for maintaining FISS and MCS) that's focused on identifying and delivering selected proofs of concept for the FFS Modernization team. They've devoted three sprint teams running 3-week sprints, each focusing on a specific proof of concept. The Perspecta team bring expertise in understanding of the way that the FFS systems work, both from a technical implementation perspective, as well as a business perspective. They also have a strong familiarity with the existing waterfall change management system that FFS uses to launch production software.

We expect the Modern Payment Services Application and Research team to join as team members onto one or more of the existing proof of concept teams with Perspecta, to provide complementary expertise and perspective on the modernization effort. Together, we expect that this team will build proof of concepts that serve CMS's modernization goals, and that are turned into production-ready modules that are actually deployed, providing real value to providers, beneficiaries, MACs, and other CMS stakeholders. We also expect that this team will join with Perspecta to carry out user research to provide CMS with information and insight into planning future proofs of concept and modernization modules.

We expect the Modern Payment Services Infrastructure team to build and maintain infrastructure which supports the deployment of proof of concepts and production-ready modernization modules developed by Perspecta which make use of cloud environments. The expectation is that Perspecta developers will be able to easily deploy applications on existing infrastructure, and that the Infrastructure team will be very aware of the needs of the proof of concept sprint teams and work in tandem with them to deliver what they need without becoming an impediment to progress.

### Interaction with other stakeholders

#### CMS Stakeholders

In addition to AMG, MCMG, and PBG, there are a number of other stakeholders within CMS who will be affected by the FFS modernization project. Our expectation for the Modern Payment Services teams is that they'll work to understand the goals and needs of all the CMS stakeholders, and consider those in the design of the infrastructure, in their contributions to the proofs of concept and production modernization modules, and in their advice and input on the direction of the modernization project.

#### Shared System Maintainers and Operators

In addition to the Maintainer Modernization Team, there are other teams involved in maintaining and operating the Shared Systems. Specifically, there are teams who maintain the Virtual Data Centers (VDCs), as well as the testing contractor, STC, responsible for coordinating and executing testing. These teams are responsible for various activities, include deploying the software, maintaining the code for each of the shared systems, testing and monitoring the system, and operating the datacenter.

We expect the Modern Payment Services Infrastructure team to forge a strong working relationship with these operational teams, especially as we push to launch the first production modernization modules. It's essential that this team be involved in the defect and incident response procedures that already exist for the FFS shared systems, so interfacing with the new cloud infrastructure does not create process gaps in the operation of the highly critical existing mainframe infrastructure. It's also essential that the Modern Payment Services Infrastructure team include the existing operators, maintainers, and application developers in their own incident response processes for issues with the cloud infrastructure, so that issues can be solved correctly and efficiently as quickly as possible.

#### Cloud Services Provider

As is common on other CMS projects such as QPP, AWS cloud services are being procured through a vendor who is maintaining a network and compliance framework on top of the existing AWS offerings. On QPP, this was General Dynamics IT (GDIT).

We expect the Modern Payment Services Infrastructure team to forge a strong working relationship with GDIT, so as to effectively work through issues getting services provisioned or configured, understanding and using the existing compliance infrastructure, and running incident response operations.

#### Medicare Administrative Contractors (MACs)

The Medicare Administrative Contractors, or MACs, are private health care insurers that have been awarded a geographic jurisdiction to process Medicare Part A and Part B medical claims, or DME claims for Medicare FFS beneficiaries. CMS relies on a network of MACs to serve as the primary operational contact between the Medicare FFS program and the health care providers enrolled in the program. The MACs are the primary users of the FFS Shared Systems, and also have a substantial amount of involvement and input into how those shared systems work, as well as lots of insight into how the business of Medicare FFS claims work.

One of the key benefits of modernizing the FFS Shared Systems is that it'll enable the MACs to improve the quality and efficiency of the services that they provide to Medicare FFS providers and other claim submitters, by enabling more real-time system-to-system interfaces between the MACs' internal systems and CMS's shared systems.

We expect the Modern Payment Services Application and Research Team, jointly with the existing Maintainer Modernization Team to research and understand the current needs and pain points of the MACs, as well as work directly with MAC implementation teams on proofs of concept their following production modernization modules. The Maintainer Modernization Team should have through their existing work on the shared systems, a baseline of understanding about how the MACs work that can be leveraged and built upon, while the MPS App and Research team is expected to bring strong understanding and experience using modern user research and
[service design](https://en.wikipedia.org/wiki/Service_design) techniques to accurately identify issues and design an effective solution.

### Interaction with non-modernization development and deployment

As part of this modernization undertaking, we're looking to use agile techniques and methodology appropriately, developing a process which is effective at driving improvement and responding to change while also continues to effectively protect the critical availability, performance, and security needs of the system.

The standard development and deployment process for the FFS systems is a typical waterfall deployment process, with planning for changes that will occur in January 2019 beginning six to nine months ahead of time (July 2018 or even earlier). There are four quarterly releases, occurring in January, April, July, and October. The majority of changes that are made to the system are made in one of these four quarterly releases. There does also exist an off-quarterly release process for emergency fixes.

The existing process has been highly effective at meeting the critical availability needs of the system, as well as maintaining the necessary levels of performance and security. To accomplish this, however, has involved a tradeoff which greatly limits the flexibility of the deployment process by reducing the rate at which changes (and thus instability) can be introduced into the system. The limitations of this approach are an underlying cause for many of the pain points that are motivating modernization.

One reason that the FFS Modernization team is piloting a move to a cloud environment is to explore and establish mechanisms by which changes can be made to production systems, meeting the same high availability, performance, and security bar, while also allowing for the high degree of flexibility and rapid response capabilities of a modern, agile development approach. It's our expectation that the Modern Payment Services teams will strive to achieve these objectives as well.

We expect the Modern Payment Services teams to contribute to and help refine agile development, testing, and deployment processes that ensure availability, performance, and security at the same levels as the existing systems. However, we also expect these teams to be cognizant of the fact that we're making incremental changes to the way the FFS teams work, and new processes must not disrupt the existing waterfall process in ways that threaten the quality of the system. To this end, we expect that the Modern Payment Services teams will become familiar with the existing process as well, with help from the existing Maintainer Modernization Team, so that they understand how to interact and integrate with that system in an effective way.
