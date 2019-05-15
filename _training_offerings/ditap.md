---
layout: default
title_tag: Digital IT Acquisition Professional Training
title: Register for our next course
location: Online + Washington, DC
image: /img/ditap-icon.png
start_date: August 14, 2019
end_date: March 20, 2020
cost: $6,500
permalink: /training/ditap/
excerpt: Our API expertise delivered in bite-sized, high-impact chunks.
tags: [api microconsulting, apis, microconsulting]
instructors:
  - chris-cairns
  - robert-read
  - lesley-evans
---

{% capture summary %}
  <p>
    We are now registering for our next course that runs from {{ page.start_date }} to {{ page.end_date }}. Each course spans 6 months with a combination of remote and in-person attendance. 
  </p>
{% endcapture %}

{% capture dates %}
  <p>
    This session of the course will require the following in-person dates to complete the course:
  </p>
  <ul>
    <li>August 20-23, 2019</li>
    <li>November 20-23, 2019</li>
    <li>March 1-4, 2020</li>
  </ul>
{% endcapture %}

{% capture cost %}
  <p>
    <strong>The cost is $6500.</strong> Included in the tuition is:
  </p>
  <ul>
    <li>6 months of digital acquisition training</li>
    <li>Access to all course materials and online learning platform</li>
    <li>Access to our training team, who will be available for 1-on-1 sessions during non-classroom hours</li>
    <li>Collaboration and networking opportunities</li>
  </ul>
{% endcapture %}

{% capture instructors %}
  <h3 class="header-display-3 mb-2 mt-5 pt-2">Meet your instructors</h3>
  {% assign member_count = page.instructors.size %}
  {% for member in page.instructors %}
    {% assign emp = site.data.team | where: 'name', member | first %}
    <div class="row mt-4">
      <div class="col-sm-4">
        <div role="img" class="employee-img" style="background-image: url({{emp.image}});" title="Photo of {{emp.short_name}}"></div>
      </div>
      <div class="col-sm-8">
        <div class="p-sm-3">
          <h4 class="mb-3">{{emp.full_name}}</h4>
          <p>{{emp.bio}}</p>
        </div>
      </div>
    </div>
  {% endfor %}
{% endcapture %}

{% include training.html
  summary = summary
  dates = dates
  cost = cost
  instructors = instructors
%}