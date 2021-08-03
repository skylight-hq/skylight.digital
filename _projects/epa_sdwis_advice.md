---
layout: default
title_tag: Environmental Protection Agency
title: Helping a modernization program chart a new path forward
permalink: /work/experience/epa-sdwis-advice/
image: /img/projects/epa_sdwis_advice/epa-sdwis-advice.svg
image_description: People standing around a really large glass and inspecting it.
feature_image:
feature_image_description:
feature_image_shadow:
order: 165
display: true
tags: [microconsulting, software delivery, devops, legacy modernization, procurement, environment, josh dorothy, chris given]
excerpt: Advising the Environmental Protection Agency on how to proceed with an ailing system modernization effort.
project_members:
  - josh-dorothy
  - chris-given
technologies:
  - Google Workspace
practices:
  - Workshop facilitation
  - Information gathering
  - Analysis and synthesis
  - Consulting
news_posts:
project_url:
project_cta:
source_code_url:
---

{% capture summary %}
  <p>
    The Environmental Protection Agency (EPA) needed an independent consulting
    review of the state of their Safe Drinking Water Information System (SDWIS)
    modernization initiative, including their development contract. We were brought
    in to facilitate a health-check assessment workshop in order to help the EPA
    chart a smart path forward.
  </p>
{% endcapture %}

{% capture challenge %}
  <p>
    The EPA's Safe Drinking Water Information System contains data about
    public water systems and violations of EPA's drinking water regulations.
    In 2017, the EPA launched an initiative called SDWIS Prime to transform
    the data architecture of SDWIS. Under the old architecture,
    U.S. states maintained separate distributed tracking systems for data.
    The EPA wanted to migrate this historical data into a new, centralized
    architecture maintained by the agency.
  </p>

  <p>
    The EPA was concerned about the progress of this architecture, as well as
    the viability of migrating large volumes of historical data to their new
    system. Among the concerns they faced, there were several complicating factors:
  </p>

  <ul>
    <li>
      High degree of complexity due to an overreliance by states on data tables;
    </li>

    <li>
      A lack of transactional records for much of the data, making it difficult to
      audit or track changes to the data pipeline; and
    </li>

    <li>
      A new and completely unfamiliar data schema for SDWIS Prime, which made
      importing and exporting the data difficult. Transformations would have
      to be routinely performed to ingest data, and it'd have to be undone
      again every time the system exported information to a state due to the
      custom application of the output format.
    </li>
  </ul>

  <p>
    In addition, difficulty with DevOps practices such as delivery cadence,
    non-uniform environments between systems, and a lack of comprehensive
    testing strategy slowed down the SDWIS Prime development.
  </p>
{% endcapture %}

{% capture solution %}
  <p>
    We worked with EPA technical staff to lead an assessment workshop where
    we conducted a comprehensive review of the state of the SDWIS Prime initiative,
    including existing technical practices and technologies.
    During this workshop, we worked with the team to understand and ingest all available
    information, as well as synthesize this knowledge into a discrete set of concerns
    that we could use to present recommendations. Over the course of a 4-hour
    consultation, Skylight charted:
  </p>

  <ul>
    <li>
      The background and history of the SDWIS program
    </li>

    <li>
      The team's understanding of the progress of the new data system
    </li>

    <li>
      The known pain points and obstacles to successful implementation
    </li>
  </ul>

  <p>
    We synthesized this information into an analytic technical and recommendation
    report that we delivered to the EPA two days after the consultation.
  </p>
{% endcapture %}

{% capture results %}
  <ul>
    <li>
      Delivered a four-page, analytically-synthesized report to the EPA addressing
      our understanding of the state of SDWIS Prime and including recommendations
      for pivoting resources going forward
    </li>

    <li>
      Report served as an important catalyst to bridge the communication gap
      between the EPA's technical teams and leadership
    </li>

    <li>
      Report enabled the EPA to make smarter decisions about how to proceed with their
      development contract
    </li>
  </ul>
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
