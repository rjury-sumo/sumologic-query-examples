# Parsers For Asana

**Asana/Overview/Content Export by Resource**
```
_sourceCategory={{Logsdatasource}}  
| json "gid","event_type","resource.name","resource.email","resource.resource_type","event_category", "created_at", "actor.name", "actor.email","context.client_ip_address" as gid, event_type, resource_name, resource_email, resource_type, event_category, created_at, actor_name, actor_email, ip nodrop
```

**Asana/Overview/Deletion Events**
```
_sourceCategory={{Logsdatasource}}  
| json "gid","event_type","resource.name","resource.email","resource.resource_type","event_category", "created_at", "actor.name", "actor.email","context.client_ip_address" as gid, event_type, resource_name, resource_email, resource_type, event_category, created_at, actor_name, actor_email, ip nodrop
```

**Asana/Overview/Events by Access Token Authorization**
```
_sourceCategory={{Logsdatasource}}  
| json "gid","event_type","resource.name","resource.email","resource.resource_type","event_category", "created_at", "actor.name", "actor.email","context.client_ip_address" as gid, event_type, resource_name, resource_email, resource_type, event_category, created_at, actor_name, actor_email, ip nodrop
```

**Asana/Overview/Events by App Authorization**
```
_sourceCategory={{Logsdatasource}}  
| json "gid","event_type","resource.name","resource.email","resource.resource_type","event_category", "created_at", "actor.name", "actor.email","context.client_ip_address" as gid, event_type, resource_name, resource_email, resource_type, event_category, created_at, actor_name, actor_email, ip nodrop
```

**Asana/Overview/Events by Role Change**
```
_sourceCategory={{Logsdatasource}}  
| json "gid","event_type","resource.name","resource.email","resource.resource_type","event_category", "created_at", "actor.name", "actor.email","context.client_ip_address" as gid, event_type, resource_name, resource_email, resource_type, event_category, created_at, actor_name, actor_email, ip nodrop
```

**Asana/Overview/Events by Team Status**
```
_sourceCategory={{Logsdatasource}}  
| json "gid","event_type","resource.name","resource.email","resource.resource_type","event_category", "created_at", "actor.name", "actor.email","context.client_ip_address" as gid, event_type, resource_name, resource_email, resource_type, event_category, created_at, actor_name, actor_email, ip nodrop
```

**Asana/Overview/Events by User Authorization**
```
_sourceCategory={{Logsdatasource}}  
| json "gid","event_type","resource.name","resource.email","resource.resource_type","event_category", "created_at", "actor.name", "actor.email","context.client_ip_address" as gid, event_type, resource_name, resource_email, resource_type, event_category, created_at, actor_name, actor_email, ip nodrop
```

**Asana/Overview/Geo Locations of User Logins**
```
_sourceCategory={{Logsdatasource}}  
| json "gid","event_type","resource.name","resource.email","resource.resource_type","event_category", "created_at", "actor.name", "actor.email","context.client_ip_address" as gid, event_type, resource_name, resource_email, resource_type, event_category, created_at, actor_name, actor_email, ip nodrop
```

**Asana/Overview/Password Change Events**
```
_sourceCategory={{Logsdatasource}}  
| json "gid","event_type","resource.name","resource.email","resource.resource_type","event_category", "created_at", "actor.name", "actor.email","context.client_ip_address" as gid, event_type, resource_name, resource_email, resource_type, event_category, created_at, actor_name, actor_email, ip nodrop
```

**Asana/Overview/Recent Access Control Events**
```
_sourceCategory={{Logsdatasource}}   
| json "gid","event_type","resource.name","resource.email","resource.resource_type","event_category", "created_at", "actor.name", "actor.email","context.client_ip_address" as gid, event_type, resource_name, resource_email, resource_type, event_category, created_at, actor_name, actor_email, ip nodrop
```

**Asana/Overview/Recent Admin Settings**
```
_sourceCategory={{Logsdatasource}}   
| json "gid","event_type","resource.name","resource.email","resource.resource_type","event_category", "created_at", "actor.name", "actor.email","context.client_ip_address" as gid, event_type, resource_name, resource_email, resource_type, event_category, created_at, actor_name, actor_email, ip nodrop
```

**Asana/Overview/User Login Events Over Time**
```
_sourceCategory={{Logsdatasource}}  
| json "gid","event_type","resource.name","resource.email","resource.resource_type","event_category", "created_at", "actor.name", "actor.email","context.client_ip_address" as gid, event_type, resource_name, resource_email, resource_type, event_category, created_at, actor_name, actor_email, ip nodrop
```

**Asana/Overview/User Logins from Risky Locations**
```
_sourceCategory={{Logsdatasource}}  
| json "gid","event_type","resource.name","resource.email","resource.resource_type","event_category", "created_at", "actor.name", "actor.email","context.client_ip_address" as gid, event_type, resource_name, resource_email, resource_type, event_category, created_at, actor_name, actor_email, ip nodrop
| where event_type in ("user_login_succeeded","user_login_failed","user_logged_out","user_forgot_password_started")
| count_distinct(gid) as frequency by ip
| where isValidIPv4(ip) or isValidIPv6(ip)
| where !isEmpty(ip)
| if(isValidIPv4(ip), if(!isPrivateIP(ip),true,false),true) as is_public
| where is_public
| lookup latitude, longitude, country_code from geo://location on ip = ip 
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code 
```

**Asana/Overview/Users Invited**
```
_sourceCategory={{Logsdatasource}}   "user_invited"
| json "gid","event_type","resource.name","resource.email","resource.resource_type","event_category", "created_at", "actor.name", "actor.email","context.client_ip_address" as gid, event_type, resource_name, resource_email, resource_type, event_category, created_at, actor_name, actor_email, ip nodrop
```


