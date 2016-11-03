---
layout: post
title: "Request for detail for restricted configuration"
date: 2016-10-27
---

Right now we have the virtual user ensdb able to ssh/scp to ensmysql on the database servers, with no specific restriction on server. The sysadmin/network guys tells they can create an additional virtual user, with server restrictions, to allow the separation of Ens prod from web/public. 

They need from us:

1. virtual user names (ensprod plus ensweb or enspub perhaps?)

2. a list of database aliases for each virtual user, to restrict connections (presumably with overlap on the staging instances)

