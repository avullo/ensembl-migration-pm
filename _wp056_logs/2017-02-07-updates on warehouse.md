---
layout: post
title: "updates on warehouse"
date: 2017-02-07
---

There are some areas coming out of warehouse volumes that are differently named, and these areas will be affected by making the volumes read0-only:

- /warehouse/ens-variation01
- /warehouse/ensdb_arch_wh07
- /warehouse/exalead_wh01
- /nfs/ensnfs-webdev  (this area comes from your wareghsoue space, but was mounted onto NFS to give path continuity)

/warehouse/vectorbase has not being used by the vectorbase team recently. This is free to go readonly. They might want to have a poke at it once this is moved to EBI. Same thing with /warehouse/ens-variation01

web is happy for /warehouse/exalead_wh01 to be RO and asked for /nfs/ensnfs-* to be left alone for the moment.

