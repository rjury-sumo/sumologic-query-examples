# Parsers For Box

## Parser:
```
| json "created_at","ip_address","event_type","created_by.name","created_by.login" as messagetime,src_ip,event_type, src_user,src_login nodrop
| json "source.name","source.login","source.type"  as dest_user,dest_login, item_type nodrop
```
### Use Cases:
Access Types Over Time, Administrative Activities, Collaboration Details, Collaborations by Item, Recent Login Devices Added, Resources Moved or Copied, Shared Resources, Top 10  Resource Consumers, Top 10 Automated Users, Top 10 Failed Logins, Top 10 Logins by IP, Top 10 Logins by User, Top 10 Most Accessed Resources, Top 10 Most Downloaded or Viewed Resources, Top 10 Resource Creators, Users with Most Collaboration Activities



## Parser:
```
| json "created_at","ip_address","event_type","created_by.name","created_by.login" as messagetime,src_ip,event_type, src_user,src_login nodrop
| json "source.name","source.login","source.type"  as dest_user,dest_login, item_type nodrop 
```
### Use Cases:
Access Types Over Time, Collaboration Details, Collaborations by Item, Resources Moved or Copied, Shared Resources, Top 10  Resource Consumers, Top 10 Automated Users, Top 10 Logins by IP, Top 10 Logins by User, Top 10 Most Accessed Resources, Top 10 Most Downloaded or Viewed Resources, Top 10 Resource Creators, Users with Most Collaboration Activities



## Parser:
```
| json "event_type"
| json "source.name","source.type" as item_name1,item_type1 nodrop 
| json "source.role","source.status","source.item.name","source.item.type","created_by.name","source.accessible_by.login","source.accessible_by.name" as role,status,item_name2,item_type2,src_user, dest_login,dest_user nodrop 
```
### Use Cases:
Collaboration Details, Collaborations by Item, Shared Resources, Users with Most Collaboration Activities



## Parser:
```
| json "event_type" as event_type
```
### Use Cases:
Access Types Over Time, Collaboration Details, Collaborations by Item, Shared Resources, Top 10  Resource Consumers, Top 10 Most Downloaded or Viewed Resources, Top 10 Resource Creators, Users with Most Collaboration Activities



## Parser:
```
| json "event_type","created_by.name","created_by.login","created_at","ip_address" as event_type,src_user,src_login, messagetime, src_ip nodrop 
```
### Use Cases:
Access Types Over Time, Collaboration Details, Collaborations by Item, Recent Login Devices Added, Resources Moved or Copied, Shared Resources, Top 10  Resource Consumers, Top 10 Automated Users, Top 10 Logins by IP, Top 10 Logins by User, Top 10 Most Accessed Resources, Top 10 Most Downloaded or Viewed Resources, Top 10 Resource Creators, Users with Most Collaboration Activities



## Parser:
```
| json "event_type","source.role","source.status","source.item.name","source.item.type","created_by.name","created_by.login","source.accessible_by.login","source.accessible_by.name" as event_type,role,status,item_name,item_type,src_user,src_login, dest_login1,dest_user1 nodrop 
| json "event_type","created_by.login","created_by.name","source.user_name" as  event_type, src_login,src_user,dest_user nodrop
```
### Use Cases:
Collaboration Details, Collaborations by Item, Shared Resources, Users with Most Collaboration Activities



## Parser:
```
| json "event_type","source.type","source.name" as event_type,item_type,item_name nodrop 
| json "source.item_type", "source.item_name","event_type","created_at","created_by.login","created_by.name","ip_address" as item_type,item_name, event_type, messagetime,src_login,src_user,src_ip  nodrop 
```
### Use Cases:
Access Types Over Time, Collaboration Details, Collaborations by Item, Resources Moved or Copied, Shared Resources, Top 10  Resource Consumers, Top 10 Most Accessed Resources, Top 10 Most Downloaded or Viewed Resources, Top 10 Resource Creators, Users with Most Collaboration Activities



## Parser:
```
| json "recorded_at","event_type","created_by.name","created_by.login","source.name","source.type","source.shared_link.access" as messagetime,event_type, src_user,src_login,item_name,item_type, access
| json "created_at","event_type","source.item_name","source.item_type","created_by.name","created_by.login","ip_address" as messagetime,event_type,item_name,item_type,src_user,src_login,src_ip nodrop
```
### Use Cases:
Collaboration Details, Collaborations by Item, Shared Resources, Users with Most Collaboration Activities



## Parser:
```
| json "recorded_at","event_type","source.role","source.status","source.item.name","source.item.type","created_by.name","source.accessible_by.login","source.accessible_by.name" as messagetime,event_type,role,status,item_name,item_type,src_user,dest_login,dest_name nodrop
| json "created_at","event_type","source.folder_name","created_by.name","created_by.login","ip_address","source.user_name" as messagetime,event_type,item_name,src_user,src_login,src_ip,dest_name nodrop
```
### Use Cases:
Collaboration Details, Collaborations by Item, Shared Resources, Users with Most Collaboration Activities



## Parser:
```
| json "source.type", "event_type","created_at","created_by.name","source.name","source.parent.name" as resource_type,event_type, created_at, src_user, resource_name,parent_name nodrop
| json "source.type", "source.item_name","event_type","created_at","created_by.login","created_by.name","ip_address" as item_type,item_name, event_type, messagetime,src_login,src_user,src_ip  nodrop 
```
### Use Cases:
Collaboration Details, Collaborations by Item, Shared Resources, Top 10 Resource Creators, Users with Most Collaboration Activities



## Parser:
```
| json "source.type", "event_type","recorded_at","created_by.login","created_by.name","source.name","source.parent.name","source.created_by.login","source.created_by.name" as resource_type,event_type, time,src_login,src_user, resource_name,parent_name,owner_login,owner 
| json "source.type", "source.item_name","event_type","created_at","created_by.login","created_by.name","ip_address" as item_type,item_name, event_type, time,src_login,src_user,src_ip  nodrop 
```
### Use Cases:
Collaboration Details, Collaborations by Item, Shared Resources, Top 10 Most Downloaded or Viewed Resources, Top 10 Resource Creators, Users with Most Collaboration Activities



## Parser:
```
| json "source.type","source.name", "event_type","recorded_at","created_by.login","created_by.name","source.parent.name","source.created_by.login","source.created_by.name" as item_type,item_name, event_type, time,src_login,src_user, parent_name,owner_login,owner nodrop  
| json "source.type", "source.item_name","event_type","created_at","created_by.login","created_by.name","ip_address" as item_type,item_name, event_type, time,src_login,src_user,src_ip  nodrop 
```
### Use Cases:
Collaboration Details, Collaborations by Item, Shared Resources, Top 10  Resource Consumers, Top 10 Most Downloaded or Viewed Resources, Top 10 Resource Creators, Users with Most Collaboration Activities



## Parser:
```
| json "source.type","source.name","source.parent.name","created_by.login","created_by.name","source.path_collection.entries[1].name","source.path_collection.entries[1].type","recorded_at" as resource_type, resource_name, parent_name,src_user_login, src_user,  dest_name,dest_type,messagetime nodrop
| json "source.type", "source.item_name","event_type","created_at","created_by.login","created_by.name","ip_address" as item_type,item_name, event_type, messagetime,src_login,src_user,src_ip  nodrop 
```
### Use Cases:
Access Types Over Time, Collaboration Details, Collaborations by Item, Resources Moved or Copied, Shared Resources, Top 10  Resource Consumers, Top 10 Most Downloaded or Viewed Resources, Top 10 Resource Creators, Users with Most Collaboration Activities


