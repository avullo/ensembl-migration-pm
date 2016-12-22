---
layout: post
title: "Follow up on volume synch"
date: 2016-12-20
---

Main question is how rapidly a large directory structure can be made public. Lets take /nfs/ensemblftp/PUBLIC/pub/release-87 as an example - this is 1.3Tb and we'd typically assemble it over a number of days as finished data is available to us. We then want to make the entire directory tree public in one go. What strategies do they recommend for this, and how "instantaneous" would they be?

From sysinf:
We can snapmirror the data every 30 mins to try to keep the data up to date as possible.    How long a particular snapmirror transfer takes will depend on how much data you have changed.  What I can tell you is that the snapmirror protocol is block based and extremely efficient so in terms of comparison to other tools,  it is going to be one of the 
fastest.

It sounds like we at least need to ensure that you are able to create a snapshot so you have a baseline for a release.  How many snapshots (i.e. releases) do you think you will need to have online?   If you need lots of them,  it can be very expensive in terms of space as you may be keeping multiple copies of data.   If you are keeping a limited number of previous versions,   it will be much more manageable.

Looking at your transfers now,  they run at 15 mins past every hour.   A quick look tells me they taking no longer than 30 secs but perhaps you are not making any changes to that data in the past week?

From Dan:
So, the release cycle we have is to build up a set of release files of ~2tb over about 2-3 weeks. This should not be available to the public via the FTP site until we are ready to release the website, at which point it needs to be published more or less instantaneously.

Outside of this time, changes will be very minimal until the next cycle starts - so for the moment we're not making any changes.

