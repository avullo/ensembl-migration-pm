---
layout: post
title: "Location and shared virtual user for the backups"
date: 2017-02-10
---


Location is /nfs/production/panda/ensembl/embassy

We should also back up the databases and data_files as well as the VMs - we don't have any copies of the 5.1 versions of the dbs and as the data_files are ever increasing in size we might not be able to fit them on the Embassy disc if we had to restore them from FTP later. This will add about another 35Tb.

