---
layout: post
title: "FTP volume synch clarification from sysinf"
date: 2016-12-15
---

From Dan:
First, this is the volume in question:
Filesystem                         1K-blocks        Used   Available Use% Mounted on
vnas-ensemblftp:/ivol_ensemblftp 71403831296 49116182720 22287648576 69% /nfs/ensemblftp

So, our planned usage is to copy a large-ish amount of data (1-2Tb) onto this file system once every 2-3 months, representing a release.

Whilst the copy of new data onto the volume will be iterative over a number of days, we want to make all this data publicly accessible as quickly as possible at release time, preferably instantaneously, so users aren't seeing partial loads on the site.

For instance, we want to populate a new release directory e.g. /nfs/ensemblftp/PUBLIC/pub/release-88, but only have it accessible once the directories below are fully populated e.g. by changing permission. However, it was not clear what the lag time would be between making these changes in HX and having them live in HH. If you can provide more information, that'd be great.

Marc said he'd look into strategies for doing this but we agreed that it would make sense initially to have the mirroring to london triggered by our group rather than being automatic, and that Marc would provide a script for us to run as ensemblftp when we're ready to go live.

From sysinf:
The volume is currently snapmirrored at 15 minutes past the hour every hour. This means that the data is synced to an offsite volume. This can be increased to a maximum of every 30 minutes.

The advantage of a regular snapmirror is that it means that the snapmirror target is kept more regularly up to date. If the target is not updated regularly,  it also means that when an update does occur, it takes much longer to transfer the data and will be more unpredictable as to when it will complete. The regular snapmirror, also means that we have a regular backup of this data to an offsite location. It means that if we lose the source,  we can quickly switch to the target volume with little loss of data.

In terms of setting up an adhoc release process for the team, this would need to be discussed with Pete. In the first instance we try to use recognised released mechanisms that the sysinf team have setup to avoid having many individually created scripts that can be difficult to 
maintain and document. Or,  we rely on out of the box Vendor applications that can easily be setup and managed such as in this case, the NetApp snapmirror application which is an excellent replication tool.

