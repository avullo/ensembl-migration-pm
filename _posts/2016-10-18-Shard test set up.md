---
layout: post
title: "Shard test set up"
date: 2016-10-18
---

s1 releases 48-63, 10.2TB

s2 releases 64-71, 9.6TB

s3 releases 72-77, 9.2TB

s4 releases 78-83, 9.1TB

s5 releases 84-86, 4.7TB, perhaps with 6.5TB allocated to allow space for release 87

We monitor the VMs with Nagios and will keep a load history. Within the database instance we can switch on the slow query log (but not the general log) and possibly use Nagios plug-ins. We could consider finer resolution for the more recent releases (eg s5 for 84-85, s6 for 86 and then s7 for 87) to gauge their popularity more accurately. We're already stretching the originally-envisaged resources by sharding, it's just a case how far we want/can afford to take that; a single, monolithic server (whether at Sanger or EBI) could never scale to handle an infinite stream of releases.

We do not currently have enough disc space at Sanger for release 87 (due 29th November).The priority is to migrate this ASAP so five shards for now sounds good.

We will need to patch the 87 databases from 5.1 to 5.6 (they are being produced at Sanger one last time).

We should also keep an eye on the main martdb.ensembl.org instance; that will reach 25Tb in about June of next year 

