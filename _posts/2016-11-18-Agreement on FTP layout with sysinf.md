---
layout: post
title: "Agreement on FTP layout with sysinf"
date: 2016-11-18
---

- <ROOT>/pub folder will be renamed to <ROOT>/public.
- inside public a pub folder will exist to keep all actual functionalities.
- a new private folder will be created at Root level. <ROOT>/private
- All services (ftp.http,rsync) will have the root level on the <ROOT>/public
folder.
- The HTTP service will have an extra 'binding' from <ROOT>/private to
<ROOT>/public/private , this way the folder will be seen from the service root
level and your team will be able to manage the ACL from a .htaccess file.

- Regarding backups, daily snapshots are in place for as long as 7 days. There
is more information on this topic on the following link
https://docs.google.com/document/d/14y1CK8e6U7ZOnBNoSfXkELXmfdI5jLSDe7WNHuxp4s4/edit#

- Regarding your concern on how long does it take to move from private to
public, it is expected to be almost immediate since they are on the same
storage .

