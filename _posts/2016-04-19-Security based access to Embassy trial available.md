---
layout: post
title: "Security based access to Embassy trial available"
date: 2016-04-19
---

Security based access to Embassy trial available. Can only ssh in via "bastion" host. From that machine there is password less ssh, via a key stored there, to any other machine. If necessary for rsync, scp, etc, we can use port forwarding via the bastion. Now moving onto logging and reporting in this package next.

We will not get any extra disc storage for Embassy in the short term. There is none available on the architecture our VMs are on and we will only have more to move our instances to when we've had hardware procured. We will therefore be a bit longer getting into production with this (there's not enough nfs even for the 82 archive).

