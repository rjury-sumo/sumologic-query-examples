# Parsers For Google Compute Engine

**Google Compute Engine/Instance Statistics/Google Compute Engine - Instance Statistics**
```
_sourceCategory = Labs/Gcp/ComputeEngine* logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_instance" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance>\S+)"
| json "message.data.resource.labels.project_id", "message.data.protoPayload.methodName", "message.data.severity" as project, method, severity
```

**Google Compute Engine/User Statistics/Google Compute Engine - User Statistics**
```
_sourceCategory = Labs/Gcp/ComputeEngine* logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_instance" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance>\S+)"
| json "message.data.resource.labels.project_id", "message.data.protoPayload.authenticationInfo.principalEmail", "message.data.protoPayload.methodName", "message.data.severity" as project, user, method, severity
```


