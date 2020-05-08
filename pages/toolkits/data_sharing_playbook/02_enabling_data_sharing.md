---
layout: toolkit
title: Enabling data sharing
permalink: /work/toolkits/data-sharing-playbook/enabling-data-sharing/
sidenav: data_sharing_playbook
---

# Enabling data sharing

## Identify who plays each data-related role.

Identifying who plays each data-related role allows organizations to establish who has the responsibility of fielding external inquiries, designing sharing procedures, and executing requests. The first step in setting up a strong data governance model and maintaining institutional knowledge of the data sharing process is to establish and communicate these roles.

Although the roles below are described separately, the same person may exercise more than one role and may have a separate job title and function. For example, a single contractor may act as both the steward and custodian for the agency's data. In small agencies, the data officer may also fulfill the data owner, custodian, and steward roles. The important takeaway is that agency leadership and the team need to know who's the go-to for each set of responsibilities in the data system.

### Data owner

The data owner is accountable for the quality and security of the data and holds the decision-making authority about data within their domain. The data owner varies by dataset and there may be multiple data owners. For some datasets, a data officer is the data owner, and in others, it may be the program lead.

### Data steward

The data steward is responsible for the governance of data and ensures the fitness of content and metadata. Stewards exercise established processes, policies, guidance, compliance, and rules in this effort. They're usually the subject matter experts and data analysts that work with the data on a daily basis.

### Data custodian

A data custodian is responsible for the technology used to store and transport the data. The role can be filled by either a person or team, and data custodians are usually database administrators, data analysts, or software engineers.

### Legal counsel

Legal counsel is a person or team that can evaluate data access and use and help craft appropriate legal agreements when needed.

### Privacy and compliance officer

This person or team develops and implements policies and procedures to protect individual rights and comply with federal and state law. The privacy and compliance officer also investigates any data incidents and breaches.

## Create and publish a data dictionary.

A publicly available data dictionary helps requesters understand what data your agency owns. It can also help them craft requests that reference specific tables and fields, making the request easier to fulfill. The data dictionary should:

- Describe all of the datasets your agency is responsible for
- Contain information on how each of the datasets was collected
- Define the individual fields in each of the datasets

## Document metadata.

Metadata is a set of information that describes what the fields in a dataset are. It provides data about your data. It includes information such as when and how the data was gathered or any other information that might describe an aspect of the data. It's important to keep detailed notes on the metadata and process by which the data was collected, because this information can facilitate easier and more effective use later on.

One common misconception about metadata is that it's solely the definitions of the various fields you've tracked in the dataset. However, metadata includes much more than these surface-level characteristics. Anything that gives additional information about the nature, structure, or gathering process of the dataset counts as metadata. Some examples of metadata for different types of media include:

- **Photographs / images**: date and time the photo was taken, who took the photo, location where the image was captured, and camera settings used to take the photo
- **Books / reports / documents**: title, author, publishing information, year of publication, table of contents, index, date of last update / modification, and number of pages
- **Emails / communication records**: person sending the communication, person receiving the communication, message text, date and time of correspondence, subject line, IP addresses of sender and responder, and encryption details
- **Spreadsheets / databases**: names of column fields, explanation of fields, number of users / respondents surveyed, number of missing data entries, integrity constraints, data types included in the table, and date and time the information was collected (including multiple records if gathered over a period of time)

When tracking metadata, it's important to:

- Document as much information as you can about the higher-level aspects of a dataset: its source, its update frequency, timestamps of collection, expected level of detail, explanations of tags, data quality, etc.
- Be consistent about the language you use to describe metadata
- Avoid acronyms and language that might be specific to you or your agency, since metadata can help recipients of data sharing understand what a dataset is all about

<div class="callout--alt" markdown="1">
## Recommended reading

- [Manually creating a data dictionary](https://data.nal.usda.gov/manually-creating-data-dictionary)
- [Smithsonian data management best practices](https://data.nal.usda.gov/manually-creating-data-dictionary)
</div>

## Review data for implicit biases.

As organizations become more data-driven, data experts are discovering more instances in which unaccounted biases in data perpetuate racism, sexism, and other forms of discrimination.

The data that government agencies, academic researchers, and other organizations collect most likely contain implicit biases. These biases can be introduced due to:

- **Whose data is collected** &mdash; Does a dataset contain a representative sample of people across different demographics and backgrounds (that is, multiple races, ethnicities, geographic locations, ages, genders, etc.)?
- **Whose data isn't collected** &mdash; Does the data leave out a specific demographic group that might not frequent the service where the data is collected?
- **How the data is collected** &mdash; For example, is the data collected via interview in one area and via a form somewhere else?

Consider possible sources of bias in your agency's data carefully. If you don't identify possible bias, communicate it to data requesters, and work to reduce it, the decisions made based on your data may have unintended, serious societal implications.

### Here's an example of how implicit bias can have unintended consequences:

Researchers discovered that a major health provider's algorithm favored white patients over black patients when deciding who would benefit from extra medical care. The researchers attributed the algorithm's bias to the data that was used to create it. Researchers noted that the health provider attempted to prevent bias by omitting the patient's race in the algorithm. Nevertheless, the algorithm amplified underlying inequities in access to healthcare. In the U.S., white patients incur more medical costs than black patients due to long-standing disparities in wealth and access to healthcare. Because of this difference in access to care, the algorithm perpetuated the disparity by determining that white patients would benefit more from extra medical care than sicker black patients. (Source: [Racial bias in a medical algorithm favors white patients over sicker black patients](https://www.washingtonpost.com/health/2019/10/24/racial-bias-medical-algorithm-favors-white-patients-over-sicker-black-patients/).)

## Work to eliminate possible sources of bias.

Data analysts are ultimately responsible for how they use your agency's data; however, as the data owners and experts, you can help data analysts avoid biases in data that perpetuate racism, sexism, and other forms of discrimination.

First, be open about the limitations of the agency's data to reduce the likelihood that it will be used in ways that have unintended consequences. Second, work towards systemic changes to data collection practices. Finally, require data requesters to demonstrate responsible use of your agency's data. The recommended reading below provides guidance on identifying and eliminating sources of implicit bias.

<div class="callout--alt" markdown="1">
## Recommended reading

 - [Algorithmic Justice League](https://www.ajlunited.org/)
 - [Confronting Structural Racism in Research and Policy Analysis](https://www.urban.org/sites/default/files/publication/99852/confronting_structural_racism_in_research_and_policy_analysis_0.pdf)
 - [Data 4 Black Lives](http://d4bl.org/conference.html)
 - [How I'm fighting bias in algorithms](https://www.ted.com/talks/joy_buolamwini_how_i_m_fighting_bias_in_algorithms)
 - [Racial bias in a medical algorithm favors white patients over sicker black patients](https://www.washingtonpost.com/health/2019/10/24/racial-bias-medical-algorithm-favors-white-patients-over-sicker-black-patients/)
 - [The era of blind faith in big data must end](https://www.ted.com/talks/cathy_o_neil_the_era_of_blind_faith_in_big_data_must_end)
 - [Weapons of Math Destruction](https://www.penguinrandomhouse.com/books/241363/weapons-of-math-destruction-by-cathy-oneil/)
 - [When computers make biased health decisions, black patients pay the price, study says](https://www.latimes.com/science/story/2019-10-24/computer-algorithm-fuels-racial-bias-in-us-healthcare)
</div>

## Develop a data request process.

A clearly documented data request process can facilitate successful requests. This section covers some of the supporting documents to develop as part of a comprehensive data request process.

Remember that the data request process must abide by the regulations and laws that apply to each dataset. For more detailed information, refer to [Establish a privacy policy](/work/toolkits/data-sharing-playbook/safeguarding-data#establish-a-privacy-policy).

### Request form

Ensure that the data requester answers the questions below in order to evaluate the benefits and mitigate the risks of sharing data:

- What's the requestor's contact information and organization?
- What's the purpose of the request?
- How does the requester plan to use the data?
- Who'll have access to the data?
- What are the specific data they're requesting, and what are the specific parameters (such as individual or aggregate data, and over what time period) of that data?
- How frequently will this data be needed? For example, is this a one-time need or a recurring need?
- How long is the requester seeking to keep the data? When and how will the data be destroyed? How's this reported or disseminated to the data owner?

### Flow diagram or detailed narrative of the steps

It's important to have a way to show the data-sharing process from start to finish. Common ways include using a flow diagram or descriptions for each step.

### Data dictionary

A data dictionary describes the agency's data. (See [Create and publish a data dictionary](#create-and-publish-a-data-dictionary).)

### Data request fees

A request fee schedule communicates the cost of requesting data. Each agency may have unique procedures for enacting request fees. We recommend that you consult your agency's legal counsel for specific guidance on fee schedules.
