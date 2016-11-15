---
layout: post
title: "Vega in Embassy"
date: 2016-10-31
---

Next year we'll be running Vega from Embassy and treating it like an e! archive site. 

- Vega website at Sanger runs on bare metal so we should clone the ensweb-archive-86 instance and then reconfigure it be a Vega website
- We'll need about 100Gb of storage for the Vega DBs - there's space on the existing Embassy archive for that
- Vega Solr search requires a lot less disc than Ensembl search. Assuming that it's easier to clone an already migrated instance than to reimport another OVA from Sanger, how could we create it from ensweb-search-86 ? Clone, delete all files, and then reclone but specifying less disc ?

- FTP site can go onto ftp.ensembl.org. 

When we have the databases ready in Jan / Feb Steve will copy them across to /nfs and we can add them to the existing MySQL

We should clone ensweb-archive-86 and ensweb-search-86 and then respectively (i) git update and convert to Vega, and (ii) convert search to use the vega shards and then replicate indexes from the master at Sanger. The Vega search indexes are 350Gb smaller than the Ensembl one

