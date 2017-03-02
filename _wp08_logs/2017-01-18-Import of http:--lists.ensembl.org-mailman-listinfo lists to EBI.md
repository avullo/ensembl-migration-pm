---
layout: post
title: "Import of http://lists.ensembl.org/mailman/listinfo lists to EBI"
date: 2017-01-18
---

EBI will create a new instance of mailman for ensembl.org lists (there is no database back-end), import the data and then Sanger will update MX DNS to point to EBI (short downtime), this will maintain the use of ensembl.org domain.

Work breakdown:

- create a EBI hosted mailman (assume this means a Postgres box and web server hosted in HH with failover?)
- advertise that we will close down dev@ensembl.org and annouce@ensembl.org for a period of time
- take a snapshot of the data
- migrate into the aforementioned EBI hosted mailman
- redirect email from dev@ensembl.org and announce@ensembl.org to the new server at EBI

