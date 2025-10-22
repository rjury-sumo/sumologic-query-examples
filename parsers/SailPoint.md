# Parsers For SailPoint

**SailPoint/Failed Authentication Events/Authentication Events - Outlier**
```
(_sourceCategory={{Logsdatasource}}  ipAddress)
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
| where org matches "{{org}}"
| where technical_name_in_search = "AUTHENTICATION_REQUEST_FAILED"
| json field=_raw "ipAddress" as client_ip
```

**SailPoint/Failed Authentication Events/Authentication Events by Country and City**
```
_sourceCategory={{Logsdatasource}}  ipAddress
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
| where org matches "{{org}}"
| where technical_name_in_search = "AUTHENTICATION_REQUEST_FAILED"
| json field=_raw "ipAddress" as client_ip
```

**SailPoint/Failed Authentication Events/Authentication Events Overtime**
```
(_sourceCategory={{Logsdatasource}}  ipAddress)
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
| where org matches "{{org}}"
| where technical_name_in_search = "AUTHENTICATION_REQUEST_FAILED"
| json field=_raw "ipAddress" as client_ip
```

**SailPoint/Failed Authentication Events/Geolocation of Authentication Events**
```
_sourceCategory={{Logsdatasource}}  ipAddress
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
| where org matches "{{org}}"
| where technical_name_in_search = "AUTHENTICATION_REQUEST_FAILED"
| json field=_raw "ipAddress" as client_ip
```

**SailPoint/Failed Authentication Events/Top 10 Users by Authentication Attempt Count**
```
(_sourceCategory={{Logsdatasource}}  ipAddress)
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
| where org matches "{{org}}"
| where technical_name_in_search = "AUTHENTICATION_REQUEST_FAILED"
| json field=_raw "ipAddress" as client_ip | lookup latitude, longitude, country_code, country_name, region, city, postal_code from geo://location on ip = client_ip
```

**SailPoint/Overview/Action Trend**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
```

**SailPoint/Overview/Event Status**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name  | json "org" as org 
```

**SailPoint/Overview/Event Summary**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
```

**SailPoint/Overview/Event Type**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name | json "org" as org | where technical_name_in_search matches "{{event_technical_name}}" and org matches "{{org}}"
```

**SailPoint/Overview/Events Trend**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
```

**SailPoint/Overview/Operation Trend**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
```

**SailPoint/Overview/Operations**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name 
| json "org" as org 
```

**SailPoint/Security/Geolocation of Source Deletions**
```
_sourceCategory={{Logsdatasource}}   ipAddress
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
| where org matches "{{org}}"| where technical_name_in_search = "SOURCE_DELETE_PASSED"
| json field=_raw "ipAddress" as client_ip
```

**SailPoint/Security/Source Delete Summary**
```
_sourceCategory={{Logsdatasource}}   ipAddress
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
| where org matches "{{org}}"
| where technical_name_in_search = "SOURCE_DELETE_PASSED"
| json field=_raw "ipAddress" as client_ip
```

**SailPoint/Security/Sources Deleted**
```
_sourceCategory={{Logsdatasource}}   ipAddress
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
| where org matches "{{org}}"
| where technical_name_in_search = "SOURCE_DELETE_PASSED"
| json field=_raw "ipAddress" as client_ip
```

**SailPoint/Successful Authentication Events/Authentication Events - Outlier**
```
(_sourceCategory={{Logsdatasource}}  ipAddress)
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
| where org matches "{{org}}"
| where technical_name_in_search = "AUTHENTICATION_REQUEST_PASSED"
| json field=_raw "ipAddress" as client_ip
```

**SailPoint/Successful Authentication Events/Authentication Events by Country and City**
```
_sourceCategory={{Logsdatasource}}  ipAddress
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
| where org matches "{{org}}"
| where technical_name_in_search = "AUTHENTICATION_REQUEST_PASSED"
| json field=_raw "ipAddress" as client_ip
```

**SailPoint/Successful Authentication Events/Authentication Events Overtime**
```
(_sourceCategory={{Logsdatasource}}  ipAddress)
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
| where org matches "{{org}}"
| where technical_name_in_search = "AUTHENTICATION_REQUEST_PASSED"
| json field=_raw "ipAddress" as client_ip
```

**SailPoint/Successful Authentication Events/Geolocation of Authentication Events**
```
_sourceCategory={{Logsdatasource}}  ipAddress
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
| where org matches "{{org}}"
| where technical_name_in_search = "AUTHENTICATION_REQUEST_PASSED"
| json field=_raw "ipAddress" as client_ip
```

**SailPoint/Successful Authentication Events/Top 10 Users by Authentication Attempt Count**
```
(_sourceCategory={{Logsdatasource}}  ipAddress)
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
| where org matches "{{org}}"
| where technical_name_in_search = "AUTHENTICATION_REQUEST_PASSED"
| json field=_raw "ipAddress" as client_ip
```


