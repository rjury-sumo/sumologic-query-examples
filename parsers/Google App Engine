# Parsers For Google App Engine

## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels" as labels
| json field=labels "module_id", "version_id", "zone", "project_id" as service, version, zone, project
```
### Use Cases:
Google App Engine Status Code Statistics, Google App Engine Version Statistics, Runtime Usage, Severe Messages, Status Codes Over Time, Top 10 Projects by Messages, Top 10 Services, Top 10 Services by Messages, Top 10 Versions by Messages, Version Activity



## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels" as labels
| json field=labels "module_id", "version_id", "zone", "project_id" as service, version, zone, project
| json "message.data.protoPayload.ip" as ip_address
```
### Use Cases:
Google App Engine Status Code Statistics, Google App Engine Version Statistics, Recent App Activity, Request Location, Runtime Usage, Severe Messages, Status Codes Over Time, Top 10 Projects by Messages, Top 10 Services, Top 10 Services by Messages, Top 10 Versions by Messages, Version Activity



## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.timestamp" as labels, timestamp
| json field=labels "module_id", "version_id", "zone", "project_id" as service, version, zone, project
| json "message.data.protoPayload" as payload
| json field=payload "latency", "method", "status" as latency, method, status
```
### Use Cases:
Google App Engine Status Code Statistics, Google App Engine Version Statistics, Recent App Activity, Runtime Usage, Severe Messages, Status Codes Over Time, Top 10 Projects by Messages, Top 10 Services, Top 10 Services by Messages, Top 10 Versions by Messages, Version Activity



## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels" as labels
| json field=labels "module_id", "version_id", "zone", "project_id" as service, version, zone, project
| json "message.data.protoPayload.appId", "message.data.protoPayload.status" as app_id, status_code
```
### Use Cases:
Google App Engine Status Code Statistics, Google App Engine Version Statistics, Recent App Activity, Request Location, Runtime Usage, Severe Messages, Status Codes, Status Codes Over Time, Top 10 Projects by Messages, Top 10 Services, Top 10 Services by Messages, Top 10 Versions by Messages, Version Activity



## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels" as labels
| json field=labels "version_id", "zone", "project_id" as version, zone, project
| json "message.data.protoPayload.appId", "message.data.protoPayload.status" as app_id, status_code
```
### Use Cases:
Google App Engine Status Code Statistics, Google App Engine Version Statistics, Runtime Usage, Severe Messages, Top 10 Projects by Messages, Top 10 Services by Messages, Top 10 Versions by Messages, Version Activity



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.protoPayload.resourceName" as resourceName
| parse regex field=resourceName "apps\/(?<project>.*)\/services\/(?<service>.*)\/versions\/(?<version>.*)"
| json "message.data.protoPayload.methodName", "message.data.severity" as method, severity
```
### Use Cases:
Google App Engine Status Code Statistics, Google App Engine Version Statistics, Runtime Usage, Severe Messages, Top 10 Projects by Messages, Top 10 Services by Messages, Top 10 Versions by Messages, Version Activity



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\s+\"resourceName\":\"apps/(?<project>\S+)/services/(?<service>\S+)/versions/(?<version>\S+)\""
| json "message.data.protoPayload.methodName", "message.data.severity" as method, severity
```
### Use Cases:
Google App Engine Status Code Statistics, Google App Engine Version Statistics



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels" as labels
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
```
### Use Cases:
Google App Engine Status Code Statistics, Google App Engine Version Statistics, Runtime Usage, Severe Messages, Top 10 Projects by Messages, Top 10 Services by Messages, Top 10 Versions by Messages, Version Activity



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload.appId" as labels, app_id
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
| json field=_raw "message.data.protoPayload.latency" as latency
```
### Use Cases:
Average Latency, Average Response Time, Google App Engine Status Code Statistics, Google App Engine Version Statistics, Recent App Activity, Request HTTP Methods, Request Location, Response Status Codes, Runtime Usage, Severe Messages, Status Codes, Status Codes Over Time, Top 10 Active Request Locations, Top 10 Projects by Messages, Top 10 Services, Top 10 Services by Messages, Top 10 Versions by Messages, Version Activity



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload.methodName" as labels, method
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
```
### Use Cases:
Google App Engine Status Code Statistics, Google App Engine Version Statistics, Version Activity



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload.methodName" as labels, method
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone nodrop
```
### Use Cases:
Google App Engine Status Code Statistics, Google App Engine Version Statistics, Runtime Usage, Severe Messages, Top 10 Projects by Messages, Top 10 Services by Messages, Top 10 Versions by Messages, Version Activity



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload.serviceData.createVersion.request.version.runtime" as labels, runtime
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
```
### Use Cases:
Google App Engine Status Code Statistics, Google App Engine Version Statistics, Runtime Usage, Version Activity



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload.serviceData.createVersion.request.version.runtime" as labels, runtime
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone nodrop
```
### Use Cases:
Google App Engine Status Code Statistics, Google App Engine Version Statistics, Runtime Usage, Severe Messages, Top 10 Projects by Messages, Top 10 Services by Messages, Top 10 Versions by Messages, Version Activity



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
| json field=payload "appId", "ip" as app_id, request_ip
```
### Use Cases:
Average Response Time, Google App Engine Status Code Statistics, Google App Engine Version Statistics, Recent App Activity, Request HTTP Methods, Request Location, Runtime Usage, Severe Messages, Status Codes, Status Codes Over Time, Top 10 Active Request Locations, Top 10 Projects by Messages, Top 10 Services, Top 10 Services by Messages, Top 10 Versions by Messages, Version Activity



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
| json field=payload "appId", "method" as app_id, method
```
### Use Cases:
Google App Engine Status Code Statistics, Google App Engine Version Statistics, Recent App Activity, Request HTTP Methods, Request Location, Runtime Usage, Severe Messages, Status Codes, Status Codes Over Time, Top 10 Projects by Messages, Top 10 Services, Top 10 Services by Messages, Top 10 Versions by Messages, Version Activity



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
| json field=payload "appId", "startTime", "endTime" as app_id, start_str, end_str
```
### Use Cases:
Average Response Time, Google App Engine Status Code Statistics, Google App Engine Version Statistics, Recent App Activity, Request HTTP Methods, Request Location, Runtime Usage, Severe Messages, Status Codes, Status Codes Over Time, Top 10 Projects by Messages, Top 10 Services, Top 10 Services by Messages, Top 10 Versions by Messages, Version Activity



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
| json field=payload "appId", "status" as app_id, status_code
```
### Use Cases:
Average Response Time, Google App Engine Status Code Statistics, Google App Engine Version Statistics, Recent App Activity, Request HTTP Methods, Request Location, Response Status Codes, Runtime Usage, Severe Messages, Status Codes, Status Codes Over Time, Top 10 Active Request Locations, Top 10 Projects by Messages, Top 10 Services, Top 10 Services by Messages, Top 10 Versions by Messages, Version Activity



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
| json field=payload "appId", "urlMapEntry" as app_id, url_map_entry
```
### Use Cases:
Average Latency, Average Response Time, Google App Engine Status Code Statistics, Google App Engine Version Statistics, Recent App Activity, Request HTTP Methods, Request Location, Response Status Codes, Runtime Usage, Severe Messages, Status Codes, Status Codes Over Time, Top 10 Active Request Locations, Top 10 Projects by Messages, Top 10 Services, Top 10 Services by Messages, Top 10 Versions by Messages, URL Map Entry Usage Over Time, Version Activity



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.severity" as labels, severity
| json field=labels "module_id", "project_id", "version_id", "zone" as service, project, version, zone
```
### Use Cases:
Google App Engine Status Code Statistics, Google App Engine Version Statistics, Runtime Usage, Severe Messages, Top 10 Projects by Messages, Top 10 Services by Messages, Top 10 Versions by Messages, Version Activity


