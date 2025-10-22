# Parsers For Box

**Box/Box Collaborations and Shares - New/Collaboration Details**
```
_sourceCategory = Labs/Box  type "event_type" (  collaboration  !collab )
// the following json is for User events
//| json "recorded_at","event_type","source.role","source.status","source.item.name","source.item.type","created_by.name","source.accessible_by.login","source.accessible_by.name" as messagetime,event_type,role,status,item_name,item_type,src_user,dest_login,dest_name nodrop
| json "created_at","event_type","source.folder_name","created_by.name","created_by.login","ip_address","source.user_name" as messagetime,event_type,item_name,src_user,src_login,src_ip,dest_name nodrop
```

**Box/Box Collaborations and Shares - New/Collaborations by Item**
```
_sourceCategory = Labs/Box  type "event_type" ( collab or shared)
| json "event_type"
| where (event_type matches "COLLAB*") or (event_type matches "ITEM_SHARED*")
| json "source.name","source.type" as item_name1,item_type1 nodrop 
| json "source.role","source.status","source.item.name","source.item.type","created_by.name","source.accessible_by.login","source.accessible_by.name" as role,status,item_name2,item_type2,src_user, dest_login,dest_user nodrop 
```

**Box/Box Collaborations and Shares - New/Shared Resources**
```
_sourceCategory = Labs/Box  type "event_type" ("ITEM_SHARED_CREATE" or "ITEM_SHARED" or share)
// the following json is for User events
//| json "recorded_at","event_type","created_by.name","created_by.login","source.name","source.type","source.shared_link.access" as messagetime,event_type, src_user,src_login,item_name,item_type, access
| json "created_at","event_type","source.item_name","source.item_type","created_by.name","created_by.login","ip_address" as messagetime,event_type,item_name,item_type,src_user,src_login,src_ip nodrop
```

**Box/Box Collaborations and Shares - New/Users with Most Collaboration Activities**
```
_sourceCategory = Labs/Box  type "event_type" ( collaboration !collab )
// the following json is for User events
//| json "event_type","source.role","source.status","source.item.name","source.item.type","created_by.name","created_by.login","source.accessible_by.login","source.accessible_by.name" as event_type,role,status,item_name,item_type,src_user,src_login, dest_login1,dest_user1 nodrop 
| json "event_type","created_by.login","created_by.name","source.user_name" as  event_type, src_login,src_user,dest_user nodrop
```

**Box/Box Collaborations and Shares/Collaboration Details**
```
_sourceCategory={{_sourceCategory}}  type "event_type" (  collaboration  !collab )
// the following json is for User events
//| json "recorded_at","event_type","source.role","source.status","source.item.name","source.item.type","created_by.name","source.accessible_by.login","source.accessible_by.name" as messagetime,event_type,role,status,item_name,item_type,src_user,dest_login,dest_name nodrop
| json "created_at","event_type","source.folder_name","created_by.name","created_by.login","ip_address","source.user_name" as messagetime,event_type,item_name,src_user,src_login,src_ip,dest_name nodrop
```

**Box/Box Collaborations and Shares/Collaborations by Item**
```
_sourceCategory={{_sourceCategory}}  type "event_type" ( collab or shared)
| json "event_type"
| where (event_type matches "COLLAB*") or (event_type matches "ITEM_SHARED*")
| json "source.name","source.type" as item_name1,item_type1 nodrop 
| json "source.role","source.status","source.item.name","source.item.type","created_by.name","source.accessible_by.login","source.accessible_by.name" as role,status,item_name2,item_type2,src_user, dest_login,dest_user nodrop 
```

**Box/Box Collaborations and Shares/Shared Resources**
```
_sourceCategory={{_sourceCategory}}  type "event_type" ("ITEM_SHARED_CREATE" or "ITEM_SHARED" or share)
// the following json is for User events
//| json "recorded_at","event_type","created_by.name","created_by.login","source.name","source.type","source.shared_link.access" as messagetime,event_type, src_user,src_login,item_name,item_type, access
| json "created_at","event_type","source.item_name","source.item_type","created_by.name","created_by.login","ip_address" as messagetime,event_type,item_name,item_type,src_user,src_login,src_ip nodrop
```

**Box/Box Collaborations and Shares/Users with Most Collaboration Activities**
```
_sourceCategory={{_sourceCategory}}  type "event_type" ( collaboration !collab )
// the following json is for User events
//| json "event_type","source.role","source.status","source.item.name","source.item.type","created_by.name","created_by.login","source.accessible_by.login","source.accessible_by.name" as event_type,role,status,item_name,item_type,src_user,src_login, dest_login1,dest_user1 nodrop 
| json "event_type","created_by.login","created_by.name","source.user_name" as  event_type, src_login,src_user,dest_user nodrop
```

**Box/Box Resource Access/Access Types Over Time**
```
_sourceCategory={{_sourceCategory}} type "event_type"  ((ITEM and !SHARED) or COMMENT_CREATE or TASK or LOCK !COLLAB)
| timeslice 1h
| json "event_type" as event_type
```

**Box/Box Resource Access/Resources Moved or Copied**
```
_sourceCategory={{_sourceCategory}}  type (MOVE or COPY) event_type
//| json "source.type","source.name","source.parent.name","created_by.login","created_by.name","source.path_collection.entries[1].name","source.path_collection.entries[1].type","recorded_at" as resource_type, resource_name, parent_name,src_user_login, src_user,  dest_name,dest_type,messagetime nodrop
| json "source.type", "source.item_name","event_type","created_at","created_by.login","created_by.name","ip_address" as item_type,item_name, event_type, messagetime,src_login,src_user,src_ip  nodrop 
```

**Box/Box Resource Access/Top 10  Resource Consumers**
```
_sourceCategory={{_sourceCategory}}  type  event_type (DOWNLOAD or PREVIEW )  
//| json "source.type","source.name", "event_type","recorded_at","created_by.login","created_by.name","source.parent.name","source.created_by.login","source.created_by.name" as item_type,item_name, event_type, time,src_login,src_user, parent_name,owner_login,owner nodrop  
| json "source.type", "source.item_name","event_type","created_at","created_by.login","created_by.name","ip_address" as item_type,item_name, event_type, time,src_login,src_user,src_ip  nodrop 
```

**Box/Box Resource Access/Top 10 Most Accessed Resources**
```
_sourceCategory={{_sourceCategory}} type "event_type"  !COLLABORATION  !ADMIN !GROUP !DEVICE  "item_name"
//| json "event_type","source.type","source.name" as event_type,item_type,item_name nodrop 
| json "source.item_type", "source.item_name","event_type","created_at","created_by.login","created_by.name","ip_address" as item_type,item_name, event_type, messagetime,src_login,src_user,src_ip  nodrop 
```

**Box/Box Resource Access/Top 10 Most Downloaded or Viewed Resources**
```
_sourceCategory={{_sourceCategory}}  type  event_type (DOWNLOAD or PREVIEW)
//| json "source.type", "event_type","recorded_at","created_by.login","created_by.name","source.name","source.parent.name","source.created_by.login","source.created_by.name" as resource_type,event_type, time,src_login,src_user, resource_name,parent_name,owner_login,owner 
| json "source.type", "source.item_name","event_type","created_at","created_by.login","created_by.name","ip_address" as item_type,item_name, event_type, time,src_login,src_user,src_ip  nodrop 
```

**Box/Box Resource Access/Top 10 Resource Creators**
```
_sourceCategory={{_sourceCategory}}  type (upload or create) event_type
//| json "source.type", "event_type","created_at","created_by.name","source.name","source.parent.name" as resource_type,event_type, created_at, src_user, resource_name,parent_name nodrop
| json "source.type", "source.item_name","event_type","created_at","created_by.login","created_by.name","ip_address" as item_type,item_name, event_type, messagetime,src_login,src_user,src_ip  nodrop 
```

**Box/Box User Monitoring/Administrative Activities**
```
_sourceCategory={{_sourceCategory}}  type "event_type"  ("NEW_USER" or "DELETE_USER" or "EDIT_USER"  or group or (CHANGE ADMIN))
| json "created_at","ip_address","event_type","created_by.name","created_by.login" as messagetime,src_ip,event_type, src_user,src_login nodrop
| json "source.name","source.login","source.type"  as dest_user,dest_login, item_type nodrop
```

**Box/Box User Monitoring/Recent Login Devices Added**
```
_sourceCategory={{_sourceCategory}}  type device add
| json "event_type","created_by.name","created_by.login","created_at","ip_address" as event_type,src_user,src_login, messagetime, src_ip nodrop 
```

**Box/Box User Monitoring/Top 10 Automated Users**
```
_sourceCategory={{_sourceCategory}}  type "event_type" user authenticate oauth2
| json "created_at","ip_address","event_type","created_by.name","created_by.login" as messagetime,src_ip,event_type, src_user,src_login nodrop
| json "source.name","source.login","source.type"  as dest_user,dest_login, item_type nodrop 
```

**Box/Box User Monitoring/Top 10 Failed Logins**
```
_sourceCategory={{_sourceCategory}}  type "event_type" login
| json "created_at","ip_address","event_type","created_by.name","created_by.login" as messagetime,src_ip,event_type, src_user,src_login nodrop
| json "source.name","source.login","source.type"  as dest_user,dest_login, item_type nodrop
```

**Box/Box User Monitoring/Top 10 Logins by IP**
```
_sourceCategory={{_sourceCategory}}  type "event_type" login
| json "created_at","ip_address","event_type","created_by.name","created_by.login" as messagetime,src_ip,event_type, src_user,src_login nodrop
| json "source.name","source.login","source.type"  as dest_user,dest_login, item_type nodrop
```

**Box/Box User Monitoring/Top 10 Logins by User**
```
_sourceCategory={{_sourceCategory}}  type "event_type" login
| json "created_at","ip_address","event_type","created_by.name","created_by.login" as messagetime,src_ip,event_type, src_user,src_login nodrop
| json "source.name","source.login","source.type"  as dest_user,dest_login, item_type nodrop
```


