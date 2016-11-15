---
layout: post
title: "Increased number of cores on mysql-vm-072"
date: 2016-11-03
---

They are all still being fully utilised without any appreciable IO workload, and the load on the server is not dropping but rather seems to be increasing. There is still 12 GiB free RAM on the server, don't think increasing the RAM would be useful without any indications that it would be used for anything other than filesystem cache.

An increase in connection limit for all genebuild machines is expected for tomorrow.

