# Parsers For Miro

**Miro/Overview/Boards Created and Opened Over Time**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email"  as id, type, team_name, organization_name, ip, createdAt, event, user_name, user_email nodrop
```

**Miro/Overview/Distribution of App Events**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email"  as id, type, team_name, organization_name, ip, createdAt, event, user_name, user_email nodrop
```

**Miro/Overview/Events by Team**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email"  as id, type, team_name, organization_name, ip, createdAt, event, user_name, user_email nodrop
```

**Miro/Overview/Events Over Time**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email"  as id, type, team_name, organization_name, ip, createdAt, event, user_name, user_email nodrop
```

**Miro/Overview/File Events by User**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email", "object.name", "details.type", "details.object"  as id, type, team_name, organization_name, ip, created_at, event, user_name, user_email, board, types, object nodrop
```

**Miro/Overview/Geo - Location of Events**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email"  as id, type, team_name, organization_name, ip, createdAt, event, user_name, user_email nodrop
```

**Miro/Overview/Recent Events Summary**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email"  as id, type, team_name, organization_name, ips, created_at, event, user_name, user_email nodrop
```

**Miro/Overview/Recent File Events Summary**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email", "object.name", "details.type", "details.object"  as id, type, team_name, organization_name, ip, created_at, event, user_name, user_email, board, types, object nodrop
```

**Miro/Overview/Total Board Events**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email"  as id, type, team_name, organization_name, ip, createdAt, event, user_name, user_email nodrop
```

**Miro/Overview/Total Events**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email"  as id, type, team_name, organization_name, ip, createdAt, event, user_name, user_email nodrop
```

**Miro/Security Events/Account(s) Created**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email"  as id, type, team_name, organization_name, ip, createdAt, event, user_name, user_email nodrop
```

**Miro/Security Events/Account(s) Deleted**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email"  as id, type, team_name, organization_name, ip, createdAt, event, user_name, user_email nodrop
```

**Miro/Security Events/Distribution of Sign-in Events**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email"  as id, type, team_name, organization_name, ip, createdAt, event, user_name, user_email nodrop
```

**Miro/Security Events/Sign-in  Events by Authentication Methods**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email", "details.authType"  as id, type, team_name, organization_name, ip, createdAt, event, user_name, user_email, authType  nodrop
```

**Miro/Security Events/Sign-in Events**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email"  as id, type, team_name, organization_name, ip, createdAt, event, user_name, user_email nodrop
```

**Miro/Security Events/Sign-in Events  - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email"  as id, type, team_name, organization_name, ip, createdAt, event, user_name, user_email nodrop
```

**Miro/Security Events/Sign-in Events from Risky Geo - Locations**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email"  as id, type, team_name, organization_name, ip, createdAt, event, user_name, user_email nodrop
| where organization_name matches "{{organization}}"
| where team_name matches "{{team}}"
| where event matches "sign_in_*"
| count_distinct(id) as frequency by ip
| where isValidIPv4(ip) or isValidIPv6(ip)
| where !isNull(ip)
| if(isValidIPv4(ip), if(!isPrivateIP(ip),true,false),true) as all_public
| where all_public
| lookup latitude, longitude, country_code from geo://location on ip = ip 
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code 
```

**Miro/Security Events/User(s) Deactivated**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email"  as id, type, team_name, organization_name, ip, createdAt, event, user_name, user_email nodrop
```

**Miro/Security Events/User(s) Reactivated**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email"  as id, type, team_name, organization_name, ip, createdAt, event, user_name, user_email nodrop
```


