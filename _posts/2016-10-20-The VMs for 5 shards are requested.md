---
layout: post
title: "The VMs for 5 shards are requested"
date: 2016-10-20
---

DBAs to configure them as soon as they arrive. External access needs to be configured by the network team.

Given the uncertainties on sharding, they don't know whether the end-of-October migration deadline can be met.

One suggestion would be if Sanger haven't got any space is to migrate martdb.ensembl.org soon, freeing up disc space at Sanger and giving us more time to move ensembldb.ensembl.org.

The 43.6TB archive of r48-86 presents a problem. The sql-aware proxy (ProxySQL) will not allow cross-database (cross-release) queries and would require tables to be fully-qualified in each query, ie 'db_name.table_name' rather than 'use db_name; select ... from table_name;'. We need to establish how big a problem this presents.
Not being able to support cross database queries is not that significant a problem, but having to have fully qualified table names is a show stopper (our APIs have not been designed to create namespaced queries).

An alternative to using a proxy would be to instruct the anonymous sql-user to go to server-x for a certain set of releases and to server-y for the next set, etc. DBAs don't know whether this is feasible. As long as it's transparent for users, ie they connect on 3306/5306 and the loadbalancer or proxy does the rest, then this would work. If technically possible.


