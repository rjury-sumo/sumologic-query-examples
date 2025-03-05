# Parsers For Asana

## Parser:
```
| json "gid","event_type","resource.name","resource.email","resource.resource_type","event_category", "created_at", "actor.name", "actor.email","context.client_ip_address" as gid, event_type, resource_name, resource_email, resource_type, event_category, created_at, actor_name, actor_email, ip nodrop
 
```
### Use Cases:
Content Export by Resource, Deletion Events, Events by Access Token Authorization, Events by App Authorization, Events by Role Change, Events by Team Status, Events by User Authorization, Geo Locations of User Logins, Password Change Events, Recent Access Control Events, Recent Admin Settings, User Login Events Over Time, User Logins from Risky Locations, Users Invited


