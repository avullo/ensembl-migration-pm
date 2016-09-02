---
layout: post
title: "FTP storage and servers"
date: 2016-08-03
---

ensemblftp is now on the dedicated link to Sanger. once logged in you see two subfolders,

ensemblorg -> on the EBI cluster /nfs/ftp/ensemblorg
ensemblftp -> on the EBI cluster /nfs/ensemblftp  

Can start with transfers right now, can use aspera but need to perform a number of re-syncs of Sanger based FTP to EBI based FTP before we are sure the service is ready to go live. ascp can provide resuming and do some basic comparison of files (or full md5 if you need to) and move it across. Asier installing rsync or we go for aspera?

Setting up the FTP servers in London.

