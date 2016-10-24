---
layout: post
title: "Warehouse copy to EBI"
date: 2016-10-21
---

Dan has made the request, as several of the Ensembl teams have requested an increase in the number of concurrent connections for the mysql-ens-compara-prod-n and mysql-ens-genebuild-prod-n machines to 1024. They say that is required for their pipelines, with most connections sleeping at any time, with a maximum of several hundred active connections. 
ens_srch_01 done (will need updating for 87: www and grch37), now copying ensembl-0[1-3]

