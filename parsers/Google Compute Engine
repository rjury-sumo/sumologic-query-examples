# Parsers For Google Compute Engine

## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance>\S+)"
| json "message.data.resource.labels.project_id", "message.data.protoPayload.authenticationInfo.principalEmail", "message.data.protoPayload.methodName", "message.data.severity" as project, user, method, severity
```
### Use Cases:
Google Compute Engine - Instance Statistics, Google Compute Engine - User Statistics



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance>\S+)"
| json "message.data.resource.labels.project_id", "message.data.protoPayload.methodName", "message.data.severity" as project, method, severity
```
### Use Cases:
Google Compute Engine - Instance Statistics


