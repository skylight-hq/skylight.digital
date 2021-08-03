---
layout: default
title_tag: U.S. Air Force
title: Designing at scale through design systems
permalink: /work/experience/usaf-bespin-design-system/
image: /img/projects/usaf_bespin_design_system/design-system.svg
image_description: A pair of hands moving objects around to make a pattern.
feature_image:
feature_image_description:
feature_image_shadow:
order: 35
display: true
tags: [service delivery, research & design, defense, air force, maya benari]
excerpt: A comprehensive design system enabling one of the U.S. Air Force’s largest digital solution centers to ship products to users with greater speed and quality.
project_members:
  - maya-benari
technologies:
  - U.S. Web Design System
  - Google Workspace
  - Git / GitLab
practices:
  - User research
  - Visual design audit
  - User interface component inventory
  - Workshop facilitation
  - Information gathering
  - Analysis and synthesis
  - Consulting
  - Prototyping
news_posts:
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
  <p>
    The U.S. Air Force’s (USAF’s) Business Enterprise Systems Product INnovation (BESPIN)
    group needed help scaling their design capacity. We’re working with them to implement
    a design system that’ll enable their growing number of teams to achieve higher efficiency
    and quality when building digital products.
  </p>
{% endcapture %}

{% capture challenge %}
  <p>
    BESPIN is one of the USAF’s strategic digital solution centers, along with Kessel Run,
    SpaceCAMP, and others. BESPIN’s mission is to deliver digital transformation outcomes
    for partner organizations throughout the USAF and the broader defense community —
    including the <a href="https://www.airforcebes.af.mil/">Business Enterprise Systems Directorate</a>,
    which manages a billion-dollar portfolio of IT systems supporting enterprise-wide
    functions such as finance, logistics, and human resources.
  </p>

  <p>
    Since launching in early 2019, BESPIN has grown to over 200 military, civilian, and
    contractor personnel working together on 20+ products. Many of the products that
    BESPIN teams work on must support complex mobile use cases, such as unreliable
    network connections and pilots who wear a "knee board" with a device mounted to
    their leg (sometimes at odd angles).
  </p>

  <p>
    As BESPIN has grown, so has the need to improve the speed and quality at which their
    teams design products across web and mobile platforms.
  </p>

  <p>
    The problem of designing at scale isn’t unique to BESPIN, and has driven high-tech
    organizations — from 18F to Google — to change the way they design products by
    incorporating design systems.
  </p>

  <p>
    The purpose of a design system is to equip teams with a shared library of reusable
    elements, guided by clear standards, so they can:
  </p>

  <ul>
    <li>
      Develop products faster by leveraging pre-made elements, such as a
      visual style or web form, instead of repeatedly building similar ones
      from scratch
    </li>

    <li>
      Create higher quality and cohesive user experiences across different
      products and platforms via consistent design guidance
    </li>

    <li>
      Enhance cross-functional communication and collaboration between designers
      and developers through a shared design language
    </li>

    <li>
      Level up abilities to ship meaningful products to users quickly through a
      system that explains how to do so
    </li>

    <li>
      Waste less time on version control issues, such as incorporating bug fixes
      or enhancements — with a design system, updates are made once and populate
      all occurrences
    </li>

    <li>
      Spend more time focusing on larger, more strategic user-experience problems
    </li>
  </ul>

  <p>
    In recognizing these benefits, BESPIN engaged us to implement a comprehensive
    design system tailored to the unique needs of their design environment.
  </p>
{% endcapture %}

{% capture solution %}
  <p>
    To create an organizational-wide design system for BESPIN, we started off by
    conducting research to learn more about their designers’ needs, pain points,
    workflow processes, and tools. From <a href="/thoughts/blog/maya-benari-accelerating-the-development-of-high-quality-products/">our team’s experience in building robust design systems</a>,
    such as the U.S. Web Design System, we know that identifying
    common patterns in the current design environment is critical for being able
    to pinpoint high-impact opportunities for improvement.
  </p>

  <p>
    Our research process featured a number of techniques, including a visual design audit,
    a user interface component inventory, and several rounds of interviews.
  </p>

  <p>
    As a result of our research, we found that:
  </p>

  <ul>
    <li>
      Overall, current Air Force design doesn’t meet the expectations of users, and is
      often viewed as outdated, overwhelming, and disjointed.
    </li>

    <li>
      Designers look toward existing design systems, such as Google’s Material Design, for
      inspiration, but these systems can be opinionated and their patterns don’t always work
      for Air Force projects, especially mobile use cases, and need to be modified.
    </li>

    <li>
      In most cases, teams want something they can use out of the box with little change.
      Others who are more comfortable with making changes and have the resources, want a
      solid foundation that they can build upon and mold to fit their needs.
    </li>

    <li>
      Because product teams lack access to a unified system for design, this has led to a
      number of issues — such as breakdowns in product direction and difficulty maintaining
      design quality while trying to keep up with the pace of agile release cycles.
    </li>
  </ul>

  <p>
    Based on these learnings, we recommended implementing a BESPIN design system with the
    following considerations:
  </p>

  <ul>
    <li>
      Leverages a proven design system, such as Carbon, as the foundation
    </li>

    <li>
      Aligns with the Air Force brand
    </li>

    <li>
      Anchored in solid design principles and validated by user testing
    </li>

    <li>
      Sets reasonable defaults and enables the flexibility to adapt according
      to the needs of the project
    </li>

    <li>
      Takes into account Air Force-specific design patterns, particularly complex
      mobile use cases
    </li>
  </ul>

  <img src="/img/projects/usaf_bespin_design_system/project-design-system.svg" alt="Illustrates how a design system serves as for the foundation for a web design system and a mobile design system, from which project design systems can be created for specific auidences.">
  <p class="caption">Source: Modified from <a href="https://spotify.design/article/reimagining-design-systems-at-spotify">Spotify</a></p>

  <p>
    The next phase of our work will focus on creating a comprehensive design system
    with BESPIN based on the above considerations, enabling teams to build products
    with greater speed and quality.
  </p>
{% endcapture %}

{% capture results %}
  <ul>
    <li>
      Gained insights into BESPIN’s needs for scaling design through designer-focused research
    </li>

    <li>
      Recommended BESPIN-specific considerations for a design system and got buy-in
      from leadership and designers
    </li>

    <li>
      Preparing to move into the implementation phase
    </li>
  </ul>
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
