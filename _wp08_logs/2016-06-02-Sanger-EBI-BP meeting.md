---
layout: post
title: "Sanger/EBI/BP meeting"
date: 2016-06-02
---

Ensembl Goals and Expectations
- Migration of ensembl-helpdesk and associated queues to the EBI RT system
- Attempting to keep to a 48hr downtime period
- Keep communications open on existing tickets
- Migrate all users across
- Emily admin access for things like adding members to queues, global response messages
- Flagging suspect/problematic users


Current BP proposal:
10 days support, split in two main parts:

- export the data from Sanger RT, 3-5 days
- import the data into EBI RT, with the following blockers
  ~ reconcile ticket ids between the two systems
  ~ reconcile user ids and LDAP issues
  ~ add custom scripts
  ~ any other issues that might occur


We have identified the following steps to fulfill the migration:
- update Sanger RT to 4.2.12
- dump out Ensembl data
- upload in a test instance
- run RT validator
- create Ensembl queues at the EBI
- redirect alias to EBI RT
- create backup of existing RT
- upload history to EBI RT


Comments on BP proposal:

- export the data from Sanger RT
TC has used the RT Serializer to dump out all Ensembl queues from Sanger RT, with good success.
He reckons we (he) can do the whole export without help from BP, which would probably half the estimated cost.
The size of the dump is rougly 2.9G.

- reconcile ticket ids between the two systems
When the data is dumped out, the existing ticket id is stored as an additional attribute, sangerID.
When the data is uploaded, it is stored with a new auto-increment id and the sanger ID is used to link old tickets together, as well as replies to existing tickets coming in later.

- reconcile user ids and LDAP issues
LDAP is used for Sanger users on the Sanger RT and for EBI users on the EBI RT.
We don't see it being a problem, as there is no overlap.

- add custom scripts
There are currently none identified and it should be easy to create new ones on request (Emily from Outreach will probably have ideas on what she wants).


Remaining issues:

- coordinate the switch over
Once we start redirecting to the EBI RT, tickets will come in at the EBI with history still at the Sanger.
To avoid this, it is recommended to hold any new emails until the upload is complete.
As this can take several hours, this means the service is effectively down for that period.

  ~ process one queue at a time
The overall downtime will be the same, but each queue will be affected for a shorter period.
There might be issues with tickets linking across queues.

  ~ process only 'recent' (define recent) tickets first, then process the rest of the history.
Once the system is back with the recent tickets, there will be a period where someone could be replying to an old ticket, but that ticket does not yet exist in the system.

  ~ incremental upgrade
Might be the same as the solutions described above.
The RT Serializer can tag processed tickets and dump them in batches.
This was described as experimental.

  ~ process all at once
This guarantees a better integrity of all the data, but means the service is out of action for a longer period of time.

- run RT validator after upload
This would identify any mismatched/missing data but will extend the downtime period.

- identify the required queues
TC listed over a dozen queues which have EBI users.
We are unsure which ones are from Ensembl, although it might be a good opportunity to move them over regardless.
Lists like Ensembl, Vega and Wormbase are definitely Ensembl realm.
I am unsure about RFAM or Havana.
1000g should be included as well.


Actions:
- TC to run a full dump of Ensembl RT data
- SN to create a test instance and upload the dump
- AY to list queues to move over
- All to decide on a strategy for the switch over

