---
layout: post
title: "Migration plan"
date: 2016-09-28
---

1. set all incoming email on hold for both servers

2. stop any cronjobs on both servers by commenting them out

3. stop both webservers

4. take backup of EBI database simultaneously alongside the next step

5. perform the export from Sanger

6. perform the import into EBI

7. start EBI webserver

8. spot check migration

9. send a few test emails

10. trickle real mail in

11. release remaining held mail into EBI RT

12. resume cronjobs

1. Can't be done for the Sanger instance.  It would cause enormous disruption to production sequencing, amongst other things.  Tim proposes the following: 


1a.  Set incoming email to hold on EBI RT server

1b.  For all Sanger addresses which feed into queues to be migrated, forward them to their new EBI address, where they will queue up because of 1a.

1c.  Clone the Sanger RT instance database VM, and point the rtsrv-dev machine I've been using at it

1d.  Upgrade the cloned RT database to 4.2.12

