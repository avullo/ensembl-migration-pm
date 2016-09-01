---
layout: post
title: "Proposed FTP layout"
date: 2016-07-15
---

### Proposed FTP layout 

75TB usable ftp space in London and Hinxton. One of them will be a read-only copy (ideally London). Can ingest data only to one (the read-write). ftp service will initially live in one location. They will be mirrored. There's no failover at the moment, semi-manual process.

Data ingest in Hinxton. Serving from London, ie. 2 load balanced ftp servers in London. Mirror every hour. No failover, no need to go too complicated here since this is a failover for files we need from FTP to run the website not for external users (?!) ftp.ensembl.org to point to LDC and ftp-ensembl.ebi.ac.uk to point to a HX FTP/HTTP server and manage the switchover manually.

