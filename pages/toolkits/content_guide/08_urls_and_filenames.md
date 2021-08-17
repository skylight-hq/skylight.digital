---
layout: toolkit
title: URLs and filenames | Skylight Content Guide
description: A guide on how to write clear, accessible, and user-friendly content at Skylight.
tags: [content, style elements, guide]
permalink: /work/toolkits/content-guide/urls-and-filenames/
sidenav: content_guide
content_type: Toolkit
toolkit_name: content-guide
---

# URLs and filenames

## Creating URLs

URLs should be short, memorable, easy to type, and well-structured. Your control over your URL may be limited, but you should do what you can with the pieces you can control.

In the vast majority of cases, everything a user can reach on your site should have a distinct URL that a user can bookmark and use later to reach that same location.

When creating URLs, use dashes to separate words, omit articles (a/an/the), use the stems of verbs (/make-thing/ rather than /making-thing/), and avoid extraneous terms.


### Domains

It’s not necessary to have www. at the start of a domain. This is a holdover from the early internet. Any domain that has a www level should also work if that level is omitted.

Domain names should be short, using abbreviations unless those are likely to be meaningless to users.

If a domain level has more than one word, you should strongly consider separating the words with dashes to make sure users read them the way you intend. If Skylight had a project called EARS that for some reason needed a two-level domain, that domain should be skylight-ears.digital and not skylightears.digital (ears.skylight.digital would probably be the ideal).

Domains are case-insensitive. They should be written as lowercase.


### Paths

Again, the shorter the better, but long paths are more excusable than long domains.

Paths are typically understood as hierarchies that become increasingly specific: /our-style/urls-and-filenames/ reflects that urls-and-filenames is part of our-style. If this were a much larger guide, it’s possible that it could be divided further, for example /our-style/urls-and-filenames/creating-urls/.

Each level of a path should make it possible to find the content beneath it:

* The content at the root level should reflect that /our-style/ is present.
* /our-style/ should make it easy to find urls-and-filenames/.

Conversely, the user should be able to remove a level from the path and end up at the parent of the original content.

Paths should be designed to be sensible for the user, not to reflect internal technical or bureaucratic structure. For example, filename extensions like .php should be avoided as they reflect the internal technology used on the server (and will not reflect even that if the site later changes to a different technology).

When separating words in a path, use hyphens. Hyphens are commonly understood by search engines to indicate word breaks (whereas other separators, like underscores, are not).

Paths are case-sensitive. They should be lowercase, regardless of what they contain, as uppercase letters make them more difficult to type (and to remember).


### Examples

#### Domain names

* **Starting point:** www.longnamecreationservice.departmentoflongnames.bureauofnames.gov.
* **Slight improvement:** longnamecreationservice.departmentoflongnames.bureauofnames.gov.
* **Rationale:** www is unnecessary and omitting it makes the URL easier to type.

* **Minor improvement:** long-name-creation-service.departmentoflongnames.bureauofnames.gov.
* **Rationale:** Hyphens make the URL easier to read. The same would be true for the other levels of the domain, but we’re assuming you don’t have control over those in these examples.

* **Major improvement:** long-name-creation-service.bureauofnames.gov.
* **Rationale:** The user doesn’t need the URL to reflect that the service belongs to the Department of Long Names.

* **Even Better:** lncs.bureauofnames.gov.
* **Rationale:** This is shorter and easier to type. However, it relies on users thinking of the service by that abbreviation.

* **Ideal:** make-long-names.bureauofnames.gov.
* **Rationale:** If the users aren’t familiar with that abbreviation, a shorter description of what the service does is better to have as the lowest level of the domain.


#### Paths

* **Starting point:** /services/default/php/forms/departmentoflongnames/longnamecreationservice/<br>index.php?action=create.
* **Minor improvement:** /services/default/php/forms/departmentoflongnames/longnamecreationservice/<br>index.php.
* **Rationale:** Assuming that creation is the most likely action users will want to take, make it the default and strip the requirement for the query string.

* **Slight improvement:** /services/default/php/forms/departmentoflongnames/longnamecreationservice/.
* **Rationale:** The default page should be delivered automatically, making the inclusion of index.php unnecessary. Also, hide the technical details (.php).

* **Major Improvement:** /departmentoflongnames/longnamecreationservice/.
* **Rationale:** Users don’t need to know the technical setup of the site.

* **Slight Improvement:** /department-of-long-names/long-name-creation-service/.
* **Rationale:** Words should be separated with hyphens.

* **Even Better:** /department-of-long-names/lncs/.
* **Rationale:** As above, if the users are familiar with the abbreviation, use it to make the path shorter.

* **Ideal:** /department-of-long-names/make-long-names/.
* **Rationale:** As above, if they aren’t familiar with the abbreviation, use a shorter description of what the server does.


#### Both

* **Starting point:** www.longnamecreationservice.departmentoflongnames.bureauofnames.gov/<br>services/default/php/forms/departmentoflongnames/longnamecreationservice/<br>index.php?action=create.
* **Improvement:** make-long-names.bureauofnames.gov/department-of-long-names/make-long-names/.
* **Rationale:** This combines the suggestions from the previous two sections.

* **Better:** make-long-names.bureauofnames.gov.
* **Rationale:** This is reasonable if the Department of Long Names has only a couple of services that might be popular enough to warrant their own subdomains, particularly if they don’t necessarily fit cleanly into other content and stand alone.

* **Ideal:** bureauofnames.gov/department-of-long-names/make-long-names/.
* **Rationale:** This is reasonable if the Long Name Creation Service is one of many related services that the Department of Long Names provides.


## Maintaining URLs

Users constantly bookmark and share web pages, making the maintenance of permanent and long-lasting URLs an important piece of content management. Broken links obscure the internet landscape.

URLs should never stop working.

This is not as technically challenging as it sounds. If the domain — the high-level domain, not subdomains — is lost, the URLs will be lost, but otherwise it’s entirely possible to keep them working. Planning for them to continue working is the first step in any process that involves new URLs.

Whenever possible, maintain original URLs. In all other cases, set up a redirect for outdated URLs and links; this is almost always a painless task for web managers. There are a variety of ways to accomplish this, some of them requiring more technical work than others. It’s most difficult to accomplish when moving from URLs that include query parameters, as some early website systems did. Sensibly-constructed URLs are easier to migrate.


## Creating filenames

Use hyphens to separate words, just as with URLs.

Lowercase is better, because it’s easier to type and to remember.

Use the right extension — PDFs should have .pdf at the end, JPGs should have .jpg at the end, etc.

Shorter is better, but the content should be descriptive to the user, and it’s better to have long descriptive filenames than short obscure ones. summary-of-pay-gap-findings.pdf is better than paygap.pdf or smmrypgpfnds.pdf.

Avoid the use of special characters beyond the hyphen and period, unless absolutely necessary. Do not include spaces (use hyphens in their place).


## Presenting URLs and filenames in text

Whether beginning with the protocol or not, always lowercase URLs in text. Paths are case-sensitive, however, so their casing must be preserved.

In interactive contexts, particularly web pages, URLs (except when used as examples, as throughout this document) should always be active links. When they’re active links, do not include the protocol in the link text.

In non-interactive contexts, such as print, the protocol can be omitted, assuming http:// and https:// both work and bring the user to the same place.

There are occasions where URLs should be delimited; use &lt; and > for this. This is not normally necessary in interactive contexts where the link is clearly defined, but is most often relevant in email, where the writer may have to guess at what their email program will turn into a link. This is particularly true when URL contains spaces.

Filenames are case-sensitive, and their case should be preserved when they are referred to in text; do not capitalize if beginning a sentence with a filename that begins with a lowercase letter. Filenames may need to be delimited in the same way as URLs.
