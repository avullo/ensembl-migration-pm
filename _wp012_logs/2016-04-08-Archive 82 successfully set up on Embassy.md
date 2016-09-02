---
layout: post
title: "Archive 82 successfully set up on Embassy"
date: 2016-04-08
---

Archive 82 successfully set up on Embassy. Checked the basic pages, sessions, search and biomart, but not yet looked at the more obscure pages which rely extensively on helper applications, nor at flat files.

After archive 82 successful set up, the plan is try to focus on more "target" archives with different operating systems.

Ensembl Version 54 (called ensembl-archive-36), is an etch machine(!) and so is only six years past the date when debian stopped providing security updates. As well as migrating this to EBI, it might be worth us seeing if we can push this forward at least a release or so. It might not be easy, but worth trying. We're only exposing port 80, so we mainly need to make sure httpd and nginx are watertight (most, but not all of the attack surface). Ensembl version 67 (ensembl-archive-67) is a lenny box. Also worth a go with. (A mere four years without security updates).
From 73 onwards we are on ubuntu precise, which isn't EOL for another year yet, the same as the existing trial of 82.

