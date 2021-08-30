---
layout: toolkit
title: Transferring data | Skylight Data Sharing Playbook
description: How to transfer data, including de-identifying data in order to protect the privacy and rights of individuals.
tags: [data sharing, data culture, guide]
permalink: /work/toolkits/data-sharing-playbook/transferring-data/
sidenav: data_sharing_playbook
content_type: Toolkit
---

# Transferring data

## De-identify data as needed

Depending on the data request, the data owner may need to de-identify data in order to protect the privacy and rights of individuals. There are a number of ways to de-identify data, and these are summarized below.

### Removing PII and confidential data

One way to de-identify data is to remove all of the fields that could be used to identify a specific individual from the data. Examples include names, phone numbers, and birthdays. (For more information about confidential data, see the section [document critical data elements](/work/toolkits/data-sharing-playbook/safeguarding-data#document-critical-data-elements).)

### Aggregating data

Data owners can also choose to aggregate data. This is accomplished by providing counts of specific fields for a dataset. For example, sensitive fields like birthday and address can be converted to age range and zip code in order to provide the counts of each age group living in a specific area.

When aggregating data, it's important to ensure that groups aren't split up so much that it's still possible to identify individuals. For example, if you're aggregating data based on any one of school, test scores, grade, or race and ethnicity, the counts can't be small enough for someone to identify individual students.

<div class="callout--note" markdown="1">
### Recommended reading

- [Guidance Regarding Methods for De-identification of Protected Health Information in Accordance with the Health Insurance Portability and Accountability Act (HIPAA) Privacy Rule](https://www.hhs.gov/hipaa/for-professionals/privacy/special-topics/de-identification/index.html)
- [Guidelines for Data De-Identification or Anonymization](https://www.educause.edu/focus-areas-and-initiatives/policy-and-security/cybersecurity-program/resources/information-security-guide/toolkits/guidelines-for-data-deidentification-or-anonymization)
- [De-Identification of Personal Information](https://nvlpubs.nist.gov/nistpubs/ir/2015/NIST.IR.8053.pdf)
- [Guide to Basic Data Anonymization Techniques](https://iapp.org/media/pdf/resource_center/Guide_to_Anonymisation.pdf)
</div>

## Choose the right method for transferring data

Once the parties have agreed to share data, it's time to consider the logistics of transferring the data. The method will vary based on the sensitivity of the data.

### Open and public data

Data that's open to the public doesn't require a secure channel for data transfer. Some options that might be suited for file transfers are:

- Email for small data files
- Commercial cloud storage solutions (Dropbox, Google Drive, Microsoft Office OneDrive, Amazon AWS, etc.) for large data files
- FTP (File Transfer Protocol) for large data files

### Zipping on Windows OS

To accelerate data transfers and save disk space, zip the data files before initiating a data transfer. To zip a file:

1. Right-click on the file
2. Navigate to "Send to" option
3. Click on Compressed (zipped) folder

### Non-public data

All data that isn't open to the public should be transferred through secure channels. These data include data governed by HIPAA, FERPA, or state laws and data that are confidential, subject to misuse, or simply not authorized for public consumption due to outstanding approval.

Failure to transfer non-public data securely may result in harm to citizens, lawsuits filed against the responsible government office, and severe professional consequences for the offending employee. It's important to pay careful attention when sharing non-public data. Secure channels may include:

1. Encrypted email service for small data files
2. SFTP (SSH File Transfer Protocol) for large data files
3. Approved and encrypted external drives for large data files

### Zipping and encryption on Windows OS

To accelerate secure data transfer, zip and encrypt data files before initiating a data transfer.

To zip a file:

1. Right-click on file or folder
2. Navigate to "Send to" option
3. Click on "Compressed (zipped) folder"

To encrypt a file:

1. Right-click on the zipped folder and open "Properties"
2. Under the "General" tab, click "Advanced"
3. Check the "Encrypt contents to secure data" box
