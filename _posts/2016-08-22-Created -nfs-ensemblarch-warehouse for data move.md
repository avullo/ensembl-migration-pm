---
layout: post
title: "Created /nfs/ensemblarch/warehouse for data move"
date: 2016-08-22
---

300TB warehouse is not enough to accomodate ensembldb/mart/ftp/nfs and actual Sanger warehouse alltogether. warehouse will probably move later
cannot move staging to ens-dump for the shutdown, as it does not have enough room to build mart (deadline Sep 2), the disk on ens-dump had limits in the attached disk size.
Sanger systems could reattach the storage from st-1/2 to different machines.

Plan:
1. We'll announce that we're shutting down processes on staging-1/2 on Thursdy afternoon and all pipelines need to finish by then
2. We'll copy everything from staging-1/2 to ens-staging3 on Thursday afternoon
3. We'll cross our fingers that staging-1/2 come back to life, but need confirmation from systems that they'll be able to source a suitable replacement in a day or two in the event it doesn't come back.

