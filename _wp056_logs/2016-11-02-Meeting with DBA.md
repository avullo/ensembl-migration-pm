---
layout: post
title: "Meeting with DBA"
date: 2016-11-02
---

List of actions:

- Andy B/Rich to increase cores on mysql-ens-compara-prod-1 to 8 and Matthieu to monitor and report back
- Andy B to reparameterise all new machines according to planned usage
- Andy B to increase connection limit to 1024 on mysql-ens-genebuild-prod-1 and mysql-ens-variation-prod-2 and Thibaut/Sarah to test pipelines and report back
- Dan S to contact sysinf about cactus monitoring on MySQL servers
- Andy B to look into requests for upgrading mysql-ens-reg-prod-1 and creating mysql-ens-reg-prod-2 (tickets #95173 and #90611) and Alessandro to add these to the spreadsheet
- Dan S to look into separate server dedicated to hive and tuned for InnoDB only

Manuela and Andy B had a meeting with Pete Jokinen and it is feasible (and already in use at EBI) a mechanism to place a condition based on load for LSF to decide about throttling. AndyB and Pete will work on this over the next days and get back to use asap.

