---
layout: post
title: "Migration update"
date: 2016-09-02
---

ensembldb/martdb - we have the data here and we are in contact with the EBI DBAs, but at this moment we can't be sure of being able to run these services from EBI in time for the next release (86) due in 3 weeks time. Plan is therefore to release 86 on Sanger and migrate as soon after that as we can. 

Steve has requested meeting with EBI DBA to figure out how to deploy instances now that we have data and HW. 

This is an outline of what we have at Sanger:

 We have five servers and need to transfer all five.
  
a) martdb.ensembl.org on port 3316. Disc space is 2.1Tb and will not change. Running MySQL 4.1.20. These are old databases and the compatibility of newer versions of MySQL with the APIs out there is unknown.
  
b) martdb.ensembl.org on port 5316. Disc space is 20Tb and will increase by ~1Tb each release (ie 4-5Tb per year). Running MySQL 5.1.72 but should be updgraded to 5.6.
  
c) ensembldb.ensembl.org on port 4306. Disc space is 4.4Tb and will not change. These databases cannot be upgraded to version 5 due to known incompatibilities with the API versions out there.
  
d) ensembldb.ensembl.org on ports 3337. Disc space is 8.6 Tb and will grow by 1.3Tb each release (ie 5-6Tb per year). Running MySQL 5.1.72 but should be updgraded to 5.6
  
e) ensembldb.ensembl.org on ports 3306 and 5306. Disc space is 43.6 Tb and will grow each year - by at least 1.3Tb each release but likely more as new sepecies and data types get added. Running MySQL 5.1.72 but should be updgraded to 5.6.
  
With these being public facing we would like the primary servers to be in HH with a backup at HX. At Sanger we currently have just two servers for these (one for ensembldb, one for martdb) and our hardware requisition reflected this - 4 VMs (2 in HH, 2 in HX), each of 8 cores with 32Gb RAM. Silver storage.
  
Filesystems are read only. All databases are MyISAM.

