---
layout: post
title: "Dev and production accounts"
date: 2017-01-09
---

We have a working sandbox, http://ves-hx-78.ebi.ac.uk:12000/index.html, (not fully functional but a good start) and a working dev Solr. Not knowing how our production / dev filesystems are going to work is going to hold us back.

Issues:

- When will the new GPFS backed filesystems (eg /nfs/public/release) be available for us to use on our production web servers ?

- To populate these filesystems we will need them mounted on a dev machine - by that I mean one that is not used in production. How can we do this ?

- Who will provide our dev web servers - www-prod or another team ?

- What file systems will be available on our dev servers ? As well as read access to /nfs/public/release etc we will need dev areas equivalent to these




