---
layout: post
title: "Available back up options from Cloud team"
date: 2017-01-27
---

There's a script to backups machines using PowerCLI (A Windows machine with PowerShell and PowerCLI is needed. Also valid credential to access the vCenter):

http://www.simonlong.co.uk/blog/2010/05/05/powercli-a-simple-vm-backup-script/

Also there is a free version of the Veeam Backup software (Windows is needed also)

https://www.veeam.com/virtual-machine-backup-solution-free.html

And other free alternative:

http://www.thinware.net/Products/ThinwarevBackup/tabid/202/Default.aspx

Maybe the fastest way is to use a windows machine available and use PowerCLI,
delegate some permissions in vCenter and use a separate datastore/disk for the
backups.

I would also give a try to Veeam Free, but a powerful windows machines is
normally needed.

