# Parsers For Google App Engine

**Google App Engine/Activity - New/Runtime Usage**
```
_sourceCategory = Labs/GCP/appengine logName resource protoPayload serviceData createVersion request version runtime "\"type\":\"gae_app\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.protoPayload.serviceData.createVersion.request.version.runtime" as labels, runtime
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
```

**Google App Engine/Activity - New/Severe Messages**
```
_sourceCategory = Labs/GCP/appengine logName resource severity "\"type\":\"gae_app\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log" or log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.severity" as labels, severity
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
```

**Google App Engine/Activity - New/Top 10 Projects by Messages**
```
_sourceCategory = Labs/GCP/appengine logName resource "\"type\":\"gae_app\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log" or log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels" as labels
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
```

**Google App Engine/Activity - New/Top 10 Services by Messages**
```
_sourceCategory = Labs/GCP/appengine logName resource "\"type\":\"gae_app\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log" or log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels" as labels
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
```

**Google App Engine/Activity - New/Top 10 Versions by Messages**
```
_sourceCategory = Labs/GCP/appengine logName resource "\"type\":\"gae_app\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log" or log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels" as labels
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
```

**Google App Engine/Activity - New/Version Activity**
```
_sourceCategory = Labs/GCP/appengine logName resource protoPayload methodName "\"type\":\"gae_app\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.protoPayload.methodName" as labels, method
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
```

**Google App Engine/Activity/Runtime Usage**
```
_sourceCategory={{Logsdatasource}}  resource protoPayload serviceData createVersion request version runtime "\"type\":\"gae_app\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.protoPayload.serviceData.createVersion.request.version.runtime" as labels, runtime
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone nodrop
```

**Google App Engine/Activity/Severe Messages**
```
_sourceCategory={{Logsdatasource}}  resource severity "\"type\":\"gae_app\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log" or log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.severity" as labels, severity
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
```

**Google App Engine/Activity/Top 10 Projects by Messages**
```
_sourceCategory={{Logsdatasource}}  resource "\"type\":\"gae_app\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log" or log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels" as labels
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
```

**Google App Engine/Activity/Top 10 Services by Messages**
```
_sourceCategory={{Logsdatasource}}  resource "\"type\":\"gae_app\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log" or log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels" as labels
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
```

**Google App Engine/Activity/Top 10 Versions by Messages**
```
_sourceCategory={{Logsdatasource}}  resource "\"type\":\"gae_app\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log" or log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels" as labels
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
```

**Google App Engine/Activity/Version Activity**
```
_sourceCategory={{Logsdatasource}}  resource protoPayload methodName "\"type\":\"gae_app\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.protoPayload.methodName" as labels, method
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone nodrop
```

**Google App Engine/Google App Engine Status Code Statistics/Google App Engine Status Code Statistics**
```
_sourceCategory={{Logsdatasource}}  resource timestamp
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gae_app" | where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log"
| json "message.data.resource.labels" as labels
| json field=labels "version_id", "zone", "project_id" as version, zone, project
| json "message.data.protoPayload.appId", "message.data.protoPayload.status" as app_id, status_code
```

**Google App Engine/Google App Engine Version Statistics/Google App Engine Version Statistics**
```
_sourceCategory={{Logsdatasource}}  resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gae_app" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.protoPayload.resourceName" as resourceName
| parse regex field=resourceName "apps\/(?<project>.*)\/services\/(?<service>.*)\/versions\/(?<version>.*)"
| if (version contains ("instances"),"",version) as version
| where !isEmpty(version)
| json "message.data.protoPayload.methodName", "message.data.severity" as method, severity
```

**Google App Engine/Overview/Recent App Activity**
```
_sourceCategory={{Logsdatasource}}  resource timestamp
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log" and type = "gae_app"
| json "message.data.resource.labels", "message.data.timestamp" as labels, timestamp
| json field=labels "module_id", "version_id", "zone", "project_id" as service, version, zone, project
| json "message.data.protoPayload" as payload
| json field=payload "latency", "method", "status" as latency, method, status
```

**Google App Engine/Overview/Request Location**
```
_sourceCategory={{Logsdatasource}}  resource timestamp
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log" and type = "gae_app"
| json "message.data.resource.labels" as labels
| json field=labels "module_id", "version_id", "zone", "project_id" as service, version, zone, project
| json "message.data.protoPayload.ip" as ip_address
```

**Google App Engine/Overview/Status Codes**
```
_sourceCategory={{Logsdatasource}}  resource timestamp
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gae_app" | where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log"
| json "message.data.resource.labels" as labels
| json field=labels "module_id", "version_id", "zone", "project_id" as service, version, zone, project
| json "message.data.protoPayload.appId", "message.data.protoPayload.status" as app_id, status_code
```

**Google App Engine/Overview/Status Codes Over Time**
```
_sourceCategory={{Logsdatasource}}  resource timestamp
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gae_app" | where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log"
| json "message.data.resource.labels" as labels
| json field=labels "module_id", "version_id", "zone", "project_id" as service, version, zone, project
| json "message.data.protoPayload.appId", "message.data.protoPayload.status" as app_id, status_code
```

**Google App Engine/Overview/Top 10 Services**
```
_sourceCategory={{Logsdatasource}}  resource timestamp
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log" and type = "gae_app"
| json "message.data.resource.labels" as labels
| json field=labels "module_id", "version_id", "zone", "project_id" as service, version, zone, project
```

**Google App Engine/Request Activity/Average Latency**
```
_sourceCategory={{Logsdatasource}}  resource protoPayload appId latency "\"type\":\"gae_app\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log"
| json "message.data.resource.labels", "message.data.protoPayload.appId" as labels, app_id
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
| timeslice 1m
| json field=_raw "message.data.protoPayload.latency" as latency
```

**Google App Engine/Request Activity/Average Response Time**
```
_sourceCategory={{Logsdatasource}}  resource protoPayload appId startTime endTime "\"type\":\"gae_app\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
| json field=payload "appId", "startTime", "endTime" as app_id, start_str, end_str
```

**Google App Engine/Request Activity/Request HTTP Methods**
```
_sourceCategory={{Logsdatasource}}  resource protoPayload appId method "\"type\":\"gae_app\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
| json field=payload "appId", "method" as app_id, method
```

**Google App Engine/Request Activity/Request Location**
```
_sourceCategory={{Logsdatasource}}  resource protoPayload appId ip "\"type\":\"gae_app\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
| json field=payload "appId", "ip" as app_id, request_ip
```

**Google App Engine/Request Activity/Response Status Codes**
```
_sourceCategory={{Logsdatasource}}  resource protoPayload appId status "\"type\":\"gae_app\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
| json field=payload "appId", "status" as app_id, status_code
```

**Google App Engine/Request Activity/Top 10 Active Request Locations**
```
_sourceCategory={{Logsdatasource}}  resource protoPayload appId ip "\"type\":\"gae_app\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
| json field=payload "appId", "ip" as app_id, request_ip
```

**Google App Engine/Request Activity/URL Map Entry Usage Over Time**
```
_sourceCategory={{Logsdatasource}}  resource protoPayload appId urlMapEntry "\"type\":\"gae_app\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/appengine.googleapis.com%2Frequest_log"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
| json field=payload "appId", "urlMapEntry" as app_id, url_map_entry
```


