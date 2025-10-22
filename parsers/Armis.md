# Parsers For Armis

**Armis/Alerts Overview/Alerts by Pending Severity**
```
_sourceCategory={{_sourceCategory}} alertId
| json "alertId","activityUUIDs","connectionIds","description","deviceIds","severity","status","time","title","type" as alertId,activityUUIDs,connectionIds,description,deviceIds,severity,status,time,title,type nodrop
| where severity matches"{{Severity}}" and  status matches "Pending" and type matches"{{Type}}"
| extract field=deviceIds "(?<ids>\b\d+\b)" multi
| where "{{Site}}" = "*" or [subquery: (_sourceCategory={{_sourceCategory}} id)
  | json "id","site.name" as ids, site
```

**Armis/Alerts Overview/Alerts by Severity**
```
_sourceCategory={{_sourceCategory}} alertId
| json "alertId","activityUUIDs","connectionIds","description","deviceIds","severity","status","time","title","type" as alertId,activityUUIDs,connectionIds,description,deviceIds,severity,status,time,title,type nodrop
| where severity matches"{{Severity}}" and  status matches"{{Status}}" and type matches"{{Type}}"
| extract field=deviceIds "(?<ids>\b\d+\b)" multi
| where "{{Site}}" = "*" or [subquery: (_sourceCategory={{_sourceCategory}} id)
  | json "id","site.name" as ids, site
```

**Armis/Alerts Overview/Alerts by Severity and Type**
```
_sourceCategory={{_sourceCategory}} alertId
| json "alertId","activityUUIDs","connectionIds","description","deviceIds","severity","status","time","title","type" as alertId,activityUUIDs,connectionIds,description,deviceIds,severity,status,time,title,type nodrop
| where severity matches"{{Severity}}" and  status matches"{{Status}}" and type matches"{{Type}}"
| extract field=deviceIds "(?<ids>\b\d+\b)" multi
| where "{{Site}}" = "*" or [subquery: (_sourceCategory={{_sourceCategory}} id)
  | json "id","site.name" as ids, site
```

**Armis/Alerts Overview/Alerts by Title**
```
_sourceCategory={{_sourceCategory}} alertId
| json "alertId","activityUUIDs","connectionIds","description","deviceIds","severity","status","time","title","type" as alertId,activityUUIDs,connectionIds,description,deviceIds,severity,status,time,title,type nodrop
| where severity matches"{{Severity}}" and  status matches"{{Status}}" and type matches"{{Type}}"
| extract field=deviceIds "(?<ids>\b\d+\b)" multi
| where "{{Site}}" = "*" or [subquery: (_sourceCategory={{_sourceCategory}} id)
  | json "id","site.name" as ids, site
```

**Armis/Alerts Overview/Alerts over time by Severity**
```
_sourceCategory={{_sourceCategory}} alertId
| json "alertId","activityUUIDs","connectionIds","description","deviceIds","severity","status","time","title","type" as alertId,activityUUIDs,connectionIds,description,deviceIds,severity,status,time,title,type nodrop
| where severity matches"{{Severity}}" and  status matches"{{Status}}" and type matches"{{Type}}"
| extract field=deviceIds "(?<ids>\b\d+\b)" multi
| where "{{Site}}" = "*" or [subquery: (_sourceCategory={{_sourceCategory}} id)
  | json "id","site.name" as ids, site
```

**Armis/Alerts Overview/Status of Alerts**
```
_sourceCategory={{_sourceCategory}} alertId
| json "alertId","activityUUIDs","connectionIds","description","deviceIds","severity","status","time","title","type" as alertId,activityUUIDs,connectionIds,description,deviceIds,severity,status,time,title,type nodrop
| where severity matches"{{Severity}}" and  status matches"{{Status}}" and type matches"{{Type}}"
| extract field=deviceIds "(?<ids>\b\d+\b)" multi
| where "{{Site}}" = "*" or [subquery: (_sourceCategory={{_sourceCategory}} id)
  | json "id","site.name" as ids, site
```

**Armis/Alerts Overview/Total Alerts**
```
_sourceCategory={{_sourceCategory}} alertId
| json "alertId","activityUUIDs","connectionIds","description","deviceIds","severity","status","time","title","type" as alertId,activityUUIDs,connectionIds,description,deviceIds,severity,status,time,title,type nodrop
| where severity matches"{{Severity}}" and  status matches"{{Status}}" and type matches"{{Type}}"
| extract field=deviceIds "(?<ids>\b\d+\b)" multi
| where "{{Site}}" = "*" or [subquery: (_sourceCategory={{_sourceCategory}} id)
  | json "id","site.name" as ids, site
```

**Armis/Alerts Overview/Type of Alerts**
```
_sourceCategory={{_sourceCategory}} alertId
| json "alertId","activityUUIDs","connectionIds","description","deviceIds","severity","status","time","title","type" as alertId,activityUUIDs,connectionIds,description,deviceIds,severity,status,time,title,type nodrop
| where severity matches"{{Severity}}" and  status matches"{{Status}}" and type matches"{{Type}}"
| extract field=deviceIds "(?<ids>\b\d+\b)" multi
| where "{{Site}}" = "*" or [subquery: (_sourceCategory={{_sourceCategory}} id)
  | json "id","site.name" as ids, site
```

**Armis/Device Overview/Devices by Category**
```
_sourceCategory={{_sourceCategory}} id
| json "id","name","manufacturer","model","riskLevel","sensor","site.name","type","category","operatingSystem" as id, name, manufacturer, model, riskLevel, sensor, site, type, category, operatingSystem nodrop
```

**Armis/Device Overview/Devices by Operating System**
```
_sourceCategory={{_sourceCategory}} id
| json "id","name","manufacturer","model","riskLevel","sensor","site.name","type","category","operatingSystem" as id, name, manufacturer, model, riskLevel, sensor, site, type, category, operatingSystem nodrop
```

**Armis/Device Overview/Devices by Risk Level**
```
_sourceCategory={{_sourceCategory}} id
| json "id","name","manufacturer","model","riskLevel","sensor","site.name","type","category","operatingSystem" as id, name, manufacturer, model, riskLevel, sensor, site, type, category, operatingSystem nodrop
```

**Armis/Device Overview/Devices by Site**
```
_sourceCategory={{_sourceCategory}} id
| json "id","name","manufacturer","model","riskLevel","sensor","site.name","type","category","operatingSystem" as id, name, manufacturer, model, riskLevel, sensor, site, type, category, operatingSystem nodrop
```

**Armis/Device Overview/Devices by Type**
```
_sourceCategory={{_sourceCategory}} id
| json "id","name","manufacturer","model","riskLevel","sensor","site.name","type","category","operatingSystem" as id, name, manufacturer, model, riskLevel, sensor, site, type, category, operatingSystem nodrop
```

**Armis/Device Overview/Devices Over Time by Risk Level**
```
_sourceCategory={{_sourceCategory}} id
| json "id","name","manufacturer","model","riskLevel","sensor","site.name","type","category","operatingSystem" as id, name, manufacturer, model, riskLevel, sensor, site, type, category, operatingSystem nodrop
```

**Armis/Device Overview/Last 10 Seen Devices**
```
_sourceCategory={{_sourceCategory}} id
| json "id", "name", "manufacturer", "model", "riskLevel", "sensor", "site.name", "type", "category", "operatingSystem", "macAddress", "ipAddress", "firstSeen", "lastSeen" as id, name, manufacturer, model, riskLevel, sensor, site, type, category, operatingSystem, macAddress,ipAddress,firstSeen,lastSeen nodrop
```

**Armis/Device Overview/Top 10 Devices by Manufacturer**
```
_sourceCategory={{_sourceCategory}} id
| json "id","name","manufacturer","model","riskLevel","sensor","site.name","type","category","operatingSystem" as id, name, manufacturer, model, riskLevel, sensor, site, type, category, operatingSystem nodrop
```

**Armis/Device Overview/Total Devices**
```
_sourceCategory={{_sourceCategory}} id
| json "id","name","manufacturer","model","riskLevel","sensor","site.name","type","category","operatingSystem" as id, name, manufacturer, model, riskLevel, sensor, site, type, category, operatingSystem nodrop
```


