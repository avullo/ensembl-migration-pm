---
layout: post
title: "Public MySQL instance VM names"
date: 2016-09-27
---

We should suggest these:

mysql-ens-publicsql-NN (01-06)

mysql-ens-publicmart-NN (01-04) 

We assume there still be a single external alias (ensembldb.ensembl.org) to a load balancer
Actually, two aliases - ensembldb and martdb, with the port being used to direct to the correct server. Note this setup has not been discussed with web-production. It needs to work though to maintain current service 

