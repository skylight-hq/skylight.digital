---
layout: default
title_tag: State of Connecticut
title: Building an improved data collection tool for early childhood care and education
permalink: /work/experience/ct-ece-reporter/
image: /img/projects/ct_ece_reporter/ece-reporter.svg
image_description: A teacher sitting with a young child at a table and a computer screen in the background showing a green checkmark.
feature_image:
feature_image_description:
feature_image_shadow:
order: 400
display: true
tags: [service delivery, research & design, product management, software delivery, legacy modernization, devops, cloud & platforms, data & analytics, apis, security & privacy, early childhood, social safety net, healthcare, education, chris given, julia hogan, cailyn hansen, victoria suwardiman, ashley treni, abby raskin, kyle magida, marvo dolor, amelia wellers, olivia lucas, jordan guinn, nick bristow, brandon mader, derek tam, alex curtis, lucas newman, becca bartola, priscilla peralta, gordon farrell, josh dorothy, johanna delpino]
excerpt: A user-friendly data collection tool to get accurate information from early care and education providers about the children under their care in Connecticut.
project_members:
  - becca-bartola
  - priscilla-peralta
  - gordon-farrell
  - nick-bristow
  - johanna-delpino
  - josh-dorothy
  - brandon-mader
  - lucas-newman
  - alex-curtis
  - derek-tam
  - chris-given
  - cailyn-hansen
  - victoria-suwardiman
  - ashley-treni
  - abby-raskin
  - kyle-magida
  - marvo-dolor
  - olivia-lucas
  - jordan-guinn
  - julia-hogan
  - amelia-wellers
technologies:
  - HTML / CSS
  - U.S. Web Design System
  - Carbon Design System
  - JavaScript / TypeScript / React
  - Express
  - .NET Core
  - JSON API
  - Metabase
  - IdentityServer
  - SQL Server
  - PostgreSQL
  - Amazon Web Services
  - Git / GitHub
practices:
  - Product management
  - User research
  - Technical discovery
  - User experience design
  - Lean startup
  - Design system
  - Responsive design
  - Accessibility
  - Agile development
  - Open-source development
  - API-first development
  - RESTful API architecture
  - Data management
  - DevSecOps
  - Security / privacy compliance
  - Containerization
  - Cloud hosting
news_posts:
project_url: https://ece-reporter.ctoec.org/
project_cta: See the site
source_code_url: https://github.com/ctoec
---

{% capture summary %}
The Connecticut Office of Early Childhood (OEC) wanted to improve their existing data collection systems 
so they could make data-driven decisions around early childhood education in their state. 
Skylight built OEC a new and improved data collection tool to help gather high-quality data from early childcare and education providers 
and to make it easier for those providers to report data.
{% endcapture %}

{% capture challenge %}
Connecticut’s Office of Early Childhood (OEC) oversees and funds a network of more than 400 early childhood care and education providers in the state. The importance of high-quality care and education for children can’t be overstated — these services improve children’s lives by providing a strong foundation for lifelong learning and cognitive and social development. They offer safe, predictable, and consistent environments for children to learn in, while also providing their parents with childcare, which gives them stability to get and keep better jobs. 

One of OEC’s primary roles within Connecticut’s early childcare and education ecosystem is to distribute funding to its network of providers. Maintaining accurate enrollment data from providers is key to OEC’s funding decisions. It allows OEC to know how many qualified children are under which provider’s care. Making the right funding decisions is crucial, since funding has a direct impact on the kinds of programs and services that providers are able to offer to the children they serve. However, OEC’s existing data collection tool wasn’t able to provide clear visibility into enrollment data. 

OEC’s existing tool posed a number of usability challenges to providers, including barriers around updating or correcting existing data, which led to the creation of duplicate child records and identification (ID) numbers. Providers were also opting against using the tool, instead storing data individually in siloed systems like PowerSchool, QuickBooks, Excel, or even physical files. As a result, data quality and transparency from providers was poor, and OEC was in the tough position of having to make important funding decisions without an accurate picture of enrollment data.

OEC needed a data system that both eased the reporting burden on providers and improved the quality and utility of data. To put the problem plainly: OEC wanted to make data-informed decisions, but were missing good data.
{% endcapture %}

{% capture solution %}
To help OEC gather high-quality data from early childcare and education providers and to make it easier for those providers to report data, Skylight built OEC a new and improved data collection tool. This tool, known as the Early Childhood Education (ECE) Reporter, offers a more user-friendly interface, which was designed to consolidate providers’ monthly reporting tasks and allow for more control over the data they enter. The ECE Reporter also makes better use of existing data to link and consolidate records, reducing manual entry errors and eliminating the need for providers to create a unique ID for each child. 

In our effort to improve the data collection process and build a better reporting tool, the Skylight team conducted the following activities:

- Built a centralized database so enrollment data could be stored and collected in a standardized format
- Improved the user interface and overall user experience of the  reporting dashboard to make it easier for providers to regularly upload data 
- Added a data visualization feature with filters to help OEC make data-informed decisions
- Developed a probabilistic matching algorithm to “deduplicate” child records and IDs to get more accurate enrollment numbers
- Integrated agile and iterative practices described in the [U.S. Digital Services Playbook](https://playbook.cio.gov/#play4) to get useful working software into the hands of users as soon as possible 
- With ECE Reporter, the provider experience is significantly improved. Providers can easily log in, upload their most up-to-date enrollment data, see a detailed enrollment summary for each individual site, and continuously update their rosters. 

As one user put it:

{% include callout.html
  type = "pullquote"
  content = "One of the easiest data portals ever…I entered 30 individual kids and it didn’t even take me 30 minutes. It was very quick."
%}

By leveraging this improved enrollment data, OEC can now make funding decisions with more precision and identify where outlier issues, like fraud, may exist. This not only helps them be efficient stewards of taxpayer dollars, but also ensures that they’re funding qualified students in qualified programs. This improves the quality of education and outcomes for children in the care of providers. 

To ensure long-term impact of the ECE Reporter, the Skylight team is also enabling OEC to take over operation and maintenance of the system. This process involves:

- Updating various scripts so OEC team members can manage different aspects of the project, such as data visualization and system maintenance 
- Strengthening test coverage 
- Refactoring the code by replacing obscure code with more streamlined, readable code 
- Providing clear documentation of processes
- DevOps work to make the transition more seamless

With these systems in place, OEC is now better positioned to maintain the ECE Reporter so that it can continually benefit from insights into enrollment data. Not only that, OEC sees the ECE Reporter as a model for modernizing its existing data systems across other programs and agencies within the State of Connecticut.
{% endcapture %}

{% capture results %}
- Brought on 508 users and 220 providers to ECE Reporter, who regularly update data on a monthly basis
- Gathered high-quality data on 397 program sites (e.g., schools, learning centers), tracking over 14k enrollments
- Resolved child record  and ID duplication issue to improve quality and accuracy of enrollment data
- Enabling OEC to take over operation and maintenance of ECE Reporter in order to facilitate long term usage
{% endcapture %}

{% include project.html
  summary = summary
  challenge = challenge
  solution = solution
  results = results
%}
