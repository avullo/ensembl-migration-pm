---
layout: post
title: "Location and shared virtual user for the backups"
date: 2017-02-10
---


/nfs/production/panda/ensembl/embassy
[ensw@ebi-cli-001 embassy]$ ls -l
total 6
drwxr-sr-x 2 ensw ensembl 0 Feb 10 16:00 databases
drwxr-sr-x 2 ensw ensembl 0 Feb 10 16:00 data_files
drwxr-sr-x 2 ensw ensembl 0 Feb 10 16:00 machine_images

We should also back up the databases and data_files as well as the VMs - we don't have any copies of the 5.1 versions of the dbs and as the data_files are ever increasing in size we might not be able to fit them on the Embassy disc if we had to restore them from FTP later. This will add about another 35Tb

