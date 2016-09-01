---
layout: post
title: "Shadowland FTP endpoint & C."
date: 2016-08-19
---

Steve asked warehouse subdir /nfs/ensemblarch/ftp to store FTP data.

Requisition machines/internal beta testing/data move: haven't yet been assigned (one of us or web depending on time), need to set up asana/gaant for that

Missing "redirect domain from Sanger to EBI" from plan

Well we have two modes

1. Partial redirection. Ask sanger to redirect X.ensembl.org to EBI load balancers.
2. Total redirection. All services (or most) need to be here at EBI with rules on the EBI LBs to either point to the right internal resource (we need a service map) or back to Sanger. Sanger will switch their DNS expiry to 5 minutes a week or so before the move. When the switch happens EBI sets their expiry to a reasonable amount of time. Overall effect is within 5 minutes ensembl.org will move from Sanger to EBI.

