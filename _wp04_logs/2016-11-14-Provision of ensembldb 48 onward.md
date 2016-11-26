---
layout: post
title: "Provision of ensembldb 48 onward"
date: 2016-11-14
---

DBA figured out with the Cloud team a way of provisioning a 50TB server for ensembldb-48onward, which will allow convenient migration of filesystem mountpoints (to which we can symlink from the instance data directory) to a sharded solution once we're ready with that. It'll be possible to migrate by re-presenting the data rather than having to copy tens
of TB.

We should have that in next the few days, in both HH and HX.

