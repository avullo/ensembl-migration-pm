---
layout: post
title: "Many non Ensembl EBI queues need to migrate as well (13 queues)."
date: 2016-03-21
---

Queue name	Tickets (16/3/16)
ensembl-helpdesk	14861
ensembl-genomes	1326
1000genomes	1704
ensemblweb	6506
ebi-dgva-admin	440
ebi-ega-helpdesk	10310
ebi-era-admin	9
ebi-micromes	3426
ebi-pombase	2636
vega	611
gencode	1
havana	233
	
total	42063


There's consensus on buying the consultancy together, very expensive (estimated 10 days @ 2000$/day). 
3 migration options:
1. Move it all across, strip anything that's not our ticket from the DB and have our Sanger RT at EBI
2. Do point 1 but have it as an archive and use the EBI RT
3. Merge into the EBI archive

Paul F has vetoed the 2nd option. Option 1 seems very unlikely considering EBI has just merged two RTs together. That leaves us with option 3 and that's the most expensive/troublesome option.

