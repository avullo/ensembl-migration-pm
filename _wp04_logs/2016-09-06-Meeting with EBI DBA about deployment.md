---
layout: post
title: "Meeting with EBI DBA about deployment"
date: 2016-09-06
---

Summary from meeting with Andy B:

Agreed to have data duplication so that we can have failover between HH and HX 
Andy B will request 2 x 5 VMs (in the 'Rogue State') with appropriate disc, other resources (CPU, RAM) to be decided later, and reviewed once in production.
Steve to report on AWS resources
We're generally following the setup of eg-publicsql.ebi.ac.uk, with the expectation of production taking over routine updating.
Steve to request MySQL4 binary and mysql conf from Sanger. Will see if we can up the no of connections allowed from 1024 to 2048
We will copy data from /nfs to the instances, with a recopy after the 86 DBs are ready
Enable query log on MySQL4 instances to see if they are used; can disable ourselves if reqd.
We will have access to the filesystem as ens-mysql user, so will be also able to look at the slow query log if we want to.
Andy B is going to look into other ways of accessing user stats - oracle enterprise and load balancer logs.
Aim is to switch DNS in Oct/Nov.
If the 87 databases need patching (5.1 to 5.6) these will be done seperately from the others using a test instance.
No live backups of MySQL4 instances, and unlikely to need live backups of MySQL5 instances

