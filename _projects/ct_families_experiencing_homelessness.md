---
layout: default
title_tag: State of Connecticut
title: Developing a smarter tool to support families experiencing homelessness
permalink: /work/experience/ct-families-experiencing-homelessness/
image: /img/projects/ct_families_experiencing_homelessness/families-experiencing-homelessness.svg
image_description: A social worker holding a device and discussing housing options with a family.
feature_image:
feature_image_description:
feature_image_shadow:
order: 45
display: true
tags: [research & design, product management, early childhood, social safety net, data & analytics, lara kohl, gabriel ramirez]
excerpt: Helping the State of Connecticut better leverage data and information to support families with young children experiencing homelessness.
project_members:
  - lara-kohl
  - gabriel-ramirez
technologies:
  - Mural
  - Smartsheets
  - Caseworthy
  - SQL
practices:
  - User research
  - Journey mapping
  - Technical discovery
  - User experience design
  - Agile development
  - Rapid prototyping
news_posts:
  - title: Governor Lamont Creates Task Force on Housing and Supports for Vulnerable Populations
    url: https://portal.ct.gov/Office-of-the-Governor/News/Press-Releases/2019/07-2019/Governor-Lamont-Creates-Task-Force-on-Housing-and-Supports-for-Vulnerable-Populations
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
  <p>
    As part of a state-wide effort to better understand and support vulnerable
    populations experiencing homelessness in Connecticut, we were asked
    to gather specific research insights around families with young children
    and explore opportunities to address their complex challenges.
    In response, we conducted in-depth research and identified a targeted
    technical solution to help improve a critical tool that's used to
    connect families with housing solutions.
  </p>
{% endcapture %}

{% capture challenge %}
  <p>
    In July 2019, <a href="https://portal.ct.gov/Office-of-the-Governor/News/Press-Releases/2019/07-2019/Governor-Lamont-Creates-Task-Force-on-Housing-and-Supports-for-Vulnerable-Populations">Connecticut Governor Ned Lamont</a>
    announced a multi-agency effort to find ways to better support vulnerable
    populations facing or experiencing homelessness in the state.
  </p>

{% include callout.html
  type = "pullquote"
  content = "This task force will take a data-driven approach to seek a better understanding
      of this population, and to pilot better ways to make sure we can quickly meet
      all of a household's critical needs, stabilizing them more quickly, and achieving
      better outcomes for these Connecticut residents as well as for our publicly
      funded systems."
  cite_name = "Lisa Tepper Bates"
  cite_title = "Co-chair, Governor's Task Force"
%}

  <p>
    We were asked to support this effort by focusing on families with young children from
    birth to age five, in collaboration with Governor Lamont's Task Force, the Office of Early
    Childhood (OEC), and the Department of Housing.
  </p>
{% endcapture %}

{% capture solution %}
  <p>
    Better understanding the needs and challenges families face in seeking state
    services was the first step in our work to scope out potential solutions.
  </p>

  <p>
    We conducted in-depth research that included interviews with government agencies,
    community partners, and families with young children experiencing homelessness.
  </p>

  <p>
    Through this research, we found that infants are the
    <a href="https://www.acf.hhs.gov/sites/default/files/opre/opre_homefam_brief3_hhs_children_02_24_2017_b508.pdf">most likely age group to experience homelessness.</a>
    Yet, families with young children experiencing homelessness are often underrepresented
    in official counts due to a variety of reasons including not being officially
    counted as homeless while living with other people, having children who are too
    young to be tracked in the public school system, and not interfacing with support
    services that might identify homelessness. Significantly, a lack of steady and
    safe child care also makes it difficult, and perhaps impossible, for families
    experiencing homelessness to seek employment or access support services.
  </p>

  <p>
    Above all, agencies and programs working with families often don't have tools
    or data systems needed to collaborate or collect data on the complex, interrelated
    challenges facing these families, making it difficult for state agencies to
    choose interventions that best meet their needs.
  </p>

  <p>
    As a result of what we learned, we identified an opportunity to improve
    the usefuless and usability of a tool called the family by-name list. This tool
    is used by groups of providers that coordinate efforts to end homelessness in communities
    across Connecticut. These groups are known as Coordinated Access Networks (CANs).
    CANs rely on the family by-name list to identify vulnerable families to be prioritized
    for housing. Improving the family by-name list would make it easier for CANs to refer
    families to housing and other support services, and would also streamline data collection and
    analysis for program planning.
  </p>

  <p>
    To show how these improvements could be made, we delivered detailed recommendations
    as part of our research report, as well as design and technical prototypes.
  </p>
{% endcapture %}

{% capture results %}
  <ul>
    <li>
      Conducted three months of research and discovery that produced a better
      understanding of the complex needs of families experiencing homelessness
    </li>

    <li>
      Using SQL, developed and delivered a prototype of an improved family by-name
      list to improve usefulness and usability
    </li>

    <li>
      Created a data dictionary to accompany the prototype family by-name
      list to help providers understand and align data fields
    </li>

    <li>
      Provided design prototypes for future user interfaces focused on better
      serving families
    </li>

    <li>
      Provided guidance for future family by-name list fields and data to
      be developed based on our research, including a Family Data Handbook
    </li>
  </ul>
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
