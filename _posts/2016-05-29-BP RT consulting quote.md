---
layout: post
title: "BP RT consulting quote"
date: 2016-05-29
---

BP will provide EBI ten days of professional services, a mixture of Professional Services and development, to achieve the following tasks:
1. Upgrade the Sanger instance to 4.2.12 to leverage RT’s core serializer/importer feature. In order to achieve EBI’s goal of extracting specific queues from one instance to another, Best Practical will need to extend RT’s serializer.The serializer extension work will require 3-5 days of development time for Best Practical to assure that it will meet EBI’s
needs.
2. EBI will create a test RT instance and do a test import using the newly updated rt-serializer/importer tool. This step will ensure that EBI can check the imported data and confirm it looks ok and to report and fix any bugs and try again until the data looks right.
3. Once EBI has confirmed that the import was successful, they will take a good backup. BP will provide guidance and assistance on running rt-serializer/importer and updating configurations in the EBI system for:
* Configurations for new email addresses including any queue configuration details.
* Put any special email handling code in place to manage old tickets. BPS can help with an email plugin to redirect
responses from the old ticket id to the newly assigned one since all tickets will have new IDs.
* Update LDAP integration as necessary to handle new users.
* Apply an manual updates needed for imported scrips.

