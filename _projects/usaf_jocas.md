---
layout: default
title_tag: U.S. Air Force
title: Revamping an outdated cost accounting system
permalink: /work/experience/usaf-jocas/
redirect_from:
  - /work/experience/usaf_jocas/
image: /img/projects/usaf_jocas/jocas.svg
image_description: An accounting professional using a modern tablet to perform accounting functions, with an old desktop system in the background.
feature_image:
feature_image_description:
feature_image_shadow:
order: 28
display: true
tags: [service delivery, research & design, software delivery, legacy modernization, devops, cloud & platforms, data & analytics, apis, security & privacy, defense, air force, laura king, peggy chau, gabriel ramirez, ari perez]
excerpt: A modernized system for the U.S. Air Force to perform critical cost accounting functions.
project_members:
  - laura-king
  - peggy-chau
  - gabriel-ramirez
  - ari-perez
technologies:
  - HTML / CSS
  - JavaScript / React / TypeScript
  - Carbon Design System
  - Node
  - APIs
  - GraphQL
  - GitLab CI/CD
  - Terraform
  - Docker
  - NGINX
  - Gitlab CI/CD
  - AWS (Cloud One)
  - AWS Elastic Beanstalk (Cloud One)
  - AWS Lambda (Cloud One)
  - AWS RDS Oracle (Cloud One)
  - Git / GitLab
practices:
  - User research
  - Technical discovery
  - User experience design
  - Lean startup
  - Design system
  - Responsive design
  - Accessibility
  - Agile development
  - API-first development
  - Legacy reengineering / strangler pattern
  - Data management
  - DevSecOps
  - Security / privacy compliance
  - Containerization
  - Cloud hosting
  - Automated documentation
  - Remote teams
news_posts:
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
  <p>
    The U.S. Air Force's (USAF's) Job Order Cost Accounting System (JOCAS) II is
    roughly a 30-year-old cost accounting system that supports billions of dollars
    in annual financial transactions. As a subcontractor to Fearless, we're helping
    to revamp the user experience, technical architecture, and technology stack of
    this complex legacy financial system.
  </p>
{% endcapture %}

{% capture challenge %}
  <p>
    JOCAS II is a large, complex, outdated system that the USAF currently relies on to
    capture and report on full project costs, generate bills for reimbursable efforts,
    facilitate informed financial decisions, and stay in compliance with federal
    financial regulations.
  </p>

  <p>
    It was built in the early 1990s using a suite of proprietary technology solutions from Oracle.
    The system is comprised of 300+ database tables and 300+ software modules (Oracle Forms,
    Oracle Reports, C processes, PL/SQL packages) with an estimated 2.8 million lines of code.
    It also interacts with a number of different financial and human resource systems.
  </p>

  <p>
    The system supports thousands of users across various USAF communities, including Major
    Range and Test Facility Bases and the Defense Security Service. These users experience
    multiple pain points because of how JOCAS II was originally implemented. For example:
  </p>

  <ul>
    <li>
      Account lockout rules and long loading times often prevent access to the system
    </li>

    <li>
      The user interface requires extensive training and reference documentation on how to use
    </li>

    <li>
      Poor usability leads to data entry errors and long task completion times
    </li>

    <li>
      Parts of the interface are so insufficiently designed that critical data can't be captured
      effectively to ensure accurate labor entry and cost accounting
    </li>

    <li>
      Workflow gaps risk compliance with government regulations and security vulnerabilities
    </li>

    <li>
      Each Air Force base has a separate database, which makes unified data management and
      reporting extremely difficult
    </li>
  </ul>

  <p>
    Because of these issues, the USAF decided to launch a modernization initiative called
    JOCAS III. And sought an experienced digital team who could help execute the transformation
    in a low-risk, high-value way.
  </p>
{% endcapture %}

{% capture solution %}
  <p>
    As a subcontractor to <a href="https://fearless.tech/">Fearless</a>, we're working together
    with the JOCAS program team to incrementally build out a new system alongside the old one,
    until all its key functionalities are replaced — a proven architectural approach known
    as the <a href="https://martinfowler.com/bliki/StranglerFigApplication.html">strangler pattern</a>.
  </p>

  <p>
    After conducting extensive user research and technical discovery, we decided that
    the best place to start the modernization process is with the Labor Entry, Approvals,
    and Adjustments component of JOCAS II, which supports over 12,000 users. Employees
    use this component to track, obtain approval, and get paid for how much time they
    spend on projects, factoring in pay differentials such as overtime and night shifts.
    We're re-engineering this functionality as a separate application, an effort which
    has involved:
  </p>

  <ul>
    <li>
      Redesigning the user experience to better meet the needs of users — employees,
      supervisors, and admins
    </li>

    <li>
      Streamlining workflows, such as employee timecard approval, to better meet federal
      financial regulations
    </li>

    <li>
      Rebuilding it using a modern technical architecture and technology stack
    </li>

    <li>
      Consolidating data from nine Oracle database instances to a single cloud-hosted database
    </li>

    <li>
      Interfacing with the legacy databases to keep data synchronized until they're no longer needed and can be decommissioned
    </li>
  </ul>

  <p>
    Once deployed and made available to users, this new application will serve as a
    reusable infrastructure for accelerating the modernization of the other functional
    components in JOCAS II (such as Personnel Management and Cost Accounting), until it's
    completely replaced by JOCAS III.
  </p>
{% endcapture %}

{% capture results %}
  <ul>
    <li>
      Designed a minimum viable product (MVP) for the Labor Entry, Approvals, and
      Adjustments functionality
    </li>

    <li>
      Rapidly developed a prototype of the MVP
    </li>

    <li>
      Began the process of migrating and consolidating legacy data to the cloud database
    </li>

    <li>
      Preparing to beta test the MVP
    </li>

    <li>
      Conducting exploratory research to further evolve the MVP and modernize other
      functionalities within JOCAS II
    </li>
  </ul>
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
