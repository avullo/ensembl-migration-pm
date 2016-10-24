---
layout: post
title: "Search archive machines EBI-ified"
date: 2016-10-19
---

The search machines have all been EBI-ified, and we should be able to get to them all via bastion with the usual details, via ssh.

The next thing Dan needs to do is to sort out the ownership of the search server processes (we want to move them all to the single www-ens user) and then he can start firing up individual apaches and tomcats and see what the services look like.

