---
layout: default
title_tag: Digital IT Acquisition Professional Training
title: Register for a future course
location: Online + Washington, DC
image: /img/ditap-icon.png
display_in_list: false
cost: $6,500
permalink: /training/general/
instructors:
  - chris-cairns
  - robert-read
  - lesley-evans
---

{% capture summary %}
  <p>
    We are now registering for our Digital IT Acquisition Professional Training course. Each course spans 6 months with a combination of remote and in-person attendance. 
  </p>
{% endcapture %}

{% capture date_field %}
  <div class="form-group">
    <label for="dates">Dates</label>
    <select id="dates" name="dates" class="form-control">
      <option>Select a course date</option>
      <option value="later">I'll choose later</option>
      <option value="August 14, 2019 - March 20, 2020">August 14, 2019 - March 20, 2020</option>
    </select>
  </div>
{% endcapture %}

{% capture dates %}
  <p>
    This session of the course will require in-person dates to complete the course.
  </p>
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
  <h3 class="header-display-3 mb-3">Our instructors</h3>
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
  date_field = date_field
  dates = dates
  cost = cost
  instructors = instructors
%}