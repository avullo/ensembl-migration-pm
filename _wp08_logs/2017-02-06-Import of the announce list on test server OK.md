---
layout: post
title: "Import of the announce list on test server OK"
date: 2017-02-06
---

Struggling to do mail routing tests as EBI does not manage the ensembl.org domain and aliases, despite the domain is owned by EBI.

Emails are going via SANGER mail server, but because SANGER doesn't have direct access to our mailman server, the 20 aliases (2 lists x 10 aliases - admin, buounce, join, etc) will have to get redirect to EBI <list>@ebi.ac.uk mailserver (we need to create an extra set of them on out site) which in turn will redirect them to our mailman server.

Will have a dedicated mailman server for ensembl.org on our site, as the one that EBI uses does not allow different domain that ebi.ac.uk to be used on it. 

