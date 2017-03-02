---
layout: post
title: "updates on warehouse"
date: 2017-02-07
---

There are some areas coming out of warehouse volumes that are differently named, and these areas will be affected by making the volumes read0-only:

- ens-variation01
- ensdb_arch_wh07
- exalead_wh01
- ensnfs-webdev  (this area comes from your wareghsoue space, but was mounted onto NFS to give path continuity)

vectorbase directory has not being used by the vectorbase team recently. This is free to go readonly. They might want to have a poke at it once this is moved to EBI. Same thing with ens-variation01

web is happy for /warehouse/exalead_wh01 to be RO and asked for /nfs/ensnfs-* to be left alone for the moment.

