---
layout: post
title: "Archive databases at EBI"
date: 2016-08-23
---

Archive databases for embassy are all at /nfs/ensemblarch/db/ensembldb, although updates will be needed for 86.
Mart dbs are not there yet.

Options for moving to Embassy:
- NFS mount main archive DB disk on bastion host (slower)
- ssh tunnelling through bastion host (reverse SSH tunnel)

transfer can start now but Embassy will be shut down soon. If we use rsync we can resume

