---
layout: post
title: "Monitoring VM on Embassy"
date: 2016-11-01
---

Plan to move monitoring off of control and 1-18 (where they currently reside) and onto a separate small VM in embassy today.

This will help because:

1. the monitor script has been shown to be flaky when unexpected things happen (like the LDAP crashing and taking home directories with it). This is fair enough (but should be fixed in the end) but shouldn't take out either 1-18 or control (which is doing DNS), if it fails;

2. it will all be in one place;

3. we can migrate it more easily out of embassy if we extend this to other places.

Going to call it (surprise, surprise) monitoring.

