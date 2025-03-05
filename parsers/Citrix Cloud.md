# Parsers For Citrix Cloud

## Parser:
```
| json "recordId","eventType","targetDisplayName","targetEmail","beforeChanges.AccessType","afterChanges.AccessType","actorType","message.en-US","actorDisplayName" as record_id,event_type,target_name, target_email, access_type_before, access_type_after, actor_type, message, actor_name nodrop
 `n```
### Use Cases:
Actor Distribution, Administrator Events Summary, Administrator Group Created, Administrator Group Deleted, Administrators Created, Administrators Deleted, Administrators Invitation Status, Administrators Roles/Permissions Updated, Client Administrators Created, Client Administrators Deleted, Client, Group Administrator Events Summary, Event Type Distribution, Group Administrators Roles/Permissions Updated, Pending Administrator Invitations, Recently Added Administrator Groups, Recently Added Administrators, Recently Added Client Administrators, Recently Invited Administrators



## Parser:
```
| json "recordId","eventType","targetDisplayName","targetEmail","beforeChanges.AccessType","afterChanges.AccessType","actorType","message.en-US","actorDisplayName" as record_id,event_type,target_name, target_email, access_type_before, access_type_after, actor_type, message, actor_name nodrop
| json "recordId","eventType","targetDisplayName","targetEmail","beforeChanges.AccessType","afterChanges.AccessType","actorType","message.en-US","actorDisplayName" as record_id,event_type,target_name, target_email, access_type_before, access_type_after, actor_type, message, actor_name nodrop
 `n```
### Use Cases:
Actor Distribution, Administrators Created, Administrators Deleted, Event Type Distribution, Pending Administrator Invitations, Recently Added Administrators, Recently Invited Administrators


