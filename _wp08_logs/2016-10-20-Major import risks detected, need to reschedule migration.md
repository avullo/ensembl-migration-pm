---
layout: post
title: "Major import risks detected, need to reschedule migration"
date: 2016-10-20
---

Possible risk posed to the EBI RT queue in the event of a mis-import of the queues. Andy C's fears are in the event of a mis-import and without taking our RT services down any problems would require the use of the RT shredder to reset the instance and Ensembl queues to the last workable version (restoring from backup is not an option if the service remains live).

EBI has taken the decision that with the work they've done to bring the import down to less than 24hrs it's now possible to close down EBI queues over a weekend with minimal disruption. That would be better for an external user as we reduce overall downtime from 3 week days to 1.

The new plan is to close the EBI RT system over a weekend meaning should the import fail we can rollback to the last database snapshot rather than deleting from a live database. Sanger export will happen on a Friday meaning 1 working day downtime for all Sanger based queues and no working day downtime for all existing EBI queues.

Import tentatively scheduled for the 11th November pending confirmation of a number of people on our side.

