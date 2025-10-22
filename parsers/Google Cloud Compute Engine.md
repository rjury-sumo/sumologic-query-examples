# Parsers For Google Cloud Compute Engine

**Google Cloud Compute Engine/Audit Logs/Audit Event - Severity Trend**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp "\"type\":\"gce_instance\""
| json "message.data.resource.type","message.data.logName" as type,log_name
| where type = "gce_instance" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(zone) matches "{{zone}}" AND toLowerCase(instance_id) matches "{{instance_id}}" AND toLowerCase(instance_name) matches "{{instance_name}}"
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| where (islast="true" or isNull(operation))
| timeslice 15m
| json "message.data.severity" as severity
```

**Google Cloud Compute Engine/Audit Logs/Event Location**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp "\"type\":\"gce_instance\""
| json "message.data.resource.type","message.data.logName" as type,log_name
| where type = "gce_instance" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(zone) matches "{{zone}}" AND toLowerCase(instance_id) matches "{{instance_id}}" AND toLowerCase(instance_name) matches "{{instance_name}}"
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| where (islast="true" or isNull(operation))
| json "message.data.protoPayload.requestMetadata.callerIp" as caller_ip
```

**Google Cloud Compute Engine/Audit Logs/Instance Inserts vs Deletes**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp "\"type\":\"gce_instance\""
| json "message.data.resource.type","message.data.logName" as type,log_name
| where type = "gce_instance" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(zone) matches "{{zone}}" AND toLowerCase(instance_id) matches "{{instance_id}}" AND toLowerCase(instance_name) matches "{{instance_name}}"
| json "message.data.operation","message.data.operation.last" as operation, islast nodrop
| where (islast="true" or isNull(operation))
| json "message.data.protoPayload.methodName" as methodName
| parse regex field=methodName "compute\.instances\.(?<method>.*)"
```

**Google Cloud Compute Engine/Audit Logs/Instance Starts vs Stops**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp "\"type\":\"gce_instance\""
| json "message.data.resource.type","message.data.logName" as type,log_name
| where type = "gce_instance" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(zone) matches "{{zone}}" AND toLowerCase(instance_id) matches "{{instance_id}}" AND toLowerCase(instance_name) matches "{{instance_name}}"
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| where (islast="true" or isNull(operation))
| json "message.data.protoPayload.methodName" as methodName
| parse regex field=methodName "compute\.instances\.(?<method>.*)"
```

**Google Cloud Compute Engine/Audit Logs/Log Event - Severity Distribution**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp "\"type\":\"gce_instance\""
| json "message.data.resource.type","message.data.logName" as type,log_name
| where type = "gce_instance" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(zone) matches "{{zone}}" AND toLowerCase(instance_id) matches "{{instance_id}}" AND toLowerCase(instance_name) matches "{{instance_name}}"
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| where (islast="true" or isNull(operation))
| json "message.data.severity" as severity
```

**Google Cloud Compute Engine/Audit Logs/Operation Shares**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp "\"type\":\"gce_instance\""
| json "message.data.resource.type","message.data.logName" as type,log_name
| where type = "gce_instance" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(zone) matches "{{zone}}" AND toLowerCase(instance_id) matches "{{instance_id}}" AND toLowerCase(instance_name) matches "{{instance_name}}"
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| where (islast="true" or isNull(operation))
| json "message.data.protoPayload.methodName" as methodName 
| parse regex field=methodName "\.compute\.instances\.(?<method>\S+)"
```

**Google Cloud Compute Engine/Audit Logs/Operations By Instance**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp "\"type\":\"gce_instance\""
| json "message.data.resource.type","message.data.logName" as type,log_name
| where type = "gce_instance" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(zone) matches "{{zone}}" AND toLowerCase(instance_id) matches "{{instance_id}}" AND toLowerCase(instance_name) matches "{{instance_name}}"
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| where (islast="true" or isNull(operation))
| json "message.data.protoPayload.methodName" as methodName 
| parse regex field=methodName "\.compute\.instances\.(?<method>\S+)"| timeslice 1h
```

**Google Cloud Compute Engine/Audit Logs/Recent  Error Activity**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp "\"type\":\"gce_instance\""
| json "message.data.resource.type","message.data.logName" as type,log_name
| where type = "gce_instance" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.protoPayload.methodName", "message.data.severity" as methodName,severity
| parse regex field=methodName "\.compute\.instances\.(?<method>\S+)"
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| json "message.data.timestamp", "message.data.protoPayload.authenticationInfo.principalEmail" as timestamp, user
| where severity="ERROR"
| json "message.data.protoPayload.status.code", "message.data.protoPayload.status.message" as errCode,errMsg
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
```

**Google Cloud Compute Engine/Audit Logs/Recent Instance Activity**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp "\"type\":\"gce_instance\""
| json "message.data.resource.type","message.data.logName" as type,log_name
| where type = "gce_instance" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(zone) matches "{{zone}}" AND toLowerCase(instance_id) matches "{{instance_id}}" AND toLowerCase(instance_name) matches "{{instance_name}}"
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| where (islast="true" or isNull(operation))
| json "message.data.timestamp", "message.data.protoPayload.authenticationInfo.principalEmail" as timestamp, user
| json "message.data.protoPayload.methodName", "message.data.severity" as methodName,severity
| parse regex field=methodName "\.compute\.instances\.(?<method>\S+)"
```

**Google Cloud Compute Engine/Audit Logs/Top 10 Users**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp "\"type\":\"gce_instance\""
| json "message.data.resource.type","message.data.logName" as type,log_name
| where type = "gce_instance" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(zone) matches "{{zone}}" AND toLowerCase(instance_id) matches "{{instance_id}}" AND toLowerCase(instance_name) matches "{{instance_name}}"
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| where (islast="true" or isNull(operation))
| json "message.data.protoPayload.authenticationInfo.principalEmail" as user
```

**Google Cloud Compute Engine/Audit Logs/Top 10 Users by Activity**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp "\"type\":\"gce_instance\""
| json "message.data.resource.type","message.data.logName" as type,log_name
| where type = "gce_instance" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(zone) matches "{{zone}}" AND toLowerCase(instance_id) matches "{{instance_id}}" AND toLowerCase(instance_name) matches "{{instance_name}}"
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| where (islast="true" or isNull(operation))
| json "message.data.protoPayload.authenticationInfo.principalEmail", "message.data.protoPayload.methodName" as user, method
```

**Google Cloud Compute Engine/Audit Logs/Top 10 Users by Severity**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp "\"type\":\"gce_instance\""
| json "message.data.resource.type","message.data.logName" as type,log_name
| where type = "gce_instance" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(zone) matches "{{zone}}" AND toLowerCase(instance_id) matches "{{instance_id}}" AND toLowerCase(instance_name) matches "{{instance_name}}"
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| where (islast="true" or isNull(operation))
| json "message.data.protoPayload.authenticationInfo.principalEmail", "message.data.severity" as user, severity
```

**Google Cloud Compute Engine/Platform Logs/Platform Logs - Severity Distribution**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp "\"type\":\"gce_instance\""
| json "message.data.resource.type","message.data.logName" as type,log_name
| where type = "gce_instance" and !(log_name matches "projects/*/logs/cloudaudit.googleapis.com*")
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(zone) matches "{{zone}}" AND toLowerCase(instance_id) matches "{{instance_id}}"
| json "message.data.severity" as severity
| json "message.data.jsonPayload.message" as payload
| json "message.data.timestamp" as timestamp
```

**Google Cloud Compute Engine/Platform Logs/Platform Logs - Severity Trend**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp "\"type\":\"gce_instance\""
| json "message.data.resource.type","message.data.logName" as type,log_name
| where type = "gce_instance" and !(log_name matches "projects/*/logs/cloudaudit.googleapis.com*")
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(zone) matches "{{zone}}" AND toLowerCase(instance_id) matches "{{instance_id}}"
| json "message.data.severity" as severity
| json "message.data.jsonPayload.message" as payload
| json "message.data.timestamp" as timestamp
```

**Google Cloud Compute Engine/Platform Logs/Recent Errors**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp "\"type\":\"gce_instance\""  "ERROR"
| json "message.data.resource.type","message.data.logName" as type,log_name
| where type = "gce_instance" and !(log_name matches "projects/*/logs/cloudaudit.googleapis.com*")
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(zone) matches "{{zone}}" AND toLowerCase(instance_id) matches "{{instance_id}}"
| json "message.data.severity" as severity
| where severity in ("ERROR")
| json "message.data.jsonPayload.message" as payload
| json "message.data.sourceLocation.function" as function
| json "message.data.timestamp" as timestamp
```

**Google Cloud Compute Engine/Platform Logs/Recent Warnings**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp "\"type\":\"gce_instance\""  "WARNING"
| json "message.data.resource.type","message.data.logName" as type,log_name
| where type = "gce_instance" and !(log_name matches "projects/*/logs/cloudaudit.googleapis.com*")
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(zone) matches "{{zone}}" AND toLowerCase(instance_id) matches "{{instance_id}}"
| json "message.data.severity" as severity
| where severity="WARNING"
| json "message.data.jsonPayload.message" as payload nodrop
| json "message.data.labels.instance_name" as instance_name nodrop
| json "message.data.sourceLocation.function" as function nodrop
| json "message.data.timestamp" as timestamp nodrop
| parse field=payload "[*] [ warn] [*] *" as datetimeval, f1, warning_message nodrop
```

**Google Cloud Compute Engine/Platform Logs/Top Errors**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp "\"type\":\"gce_instance\""  "ERROR"
| json "message.data.resource.type","message.data.logName" as type,log_name
| where type = "gce_instance" and !(log_name matches "projects/*/logs/cloudaudit.googleapis.com*")
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(zone) matches "{{zone}}" AND toLowerCase(instance_id) matches "{{instance_id}}"
| json "message.data.severity" as severity
| where severity in ("ERROR")
| json "message.data.jsonPayload.message" as payload
| json "message.data.timestamp" as timestamp
```

**Google Cloud Compute Engine/Platform Logs/Top Warnings**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp "\"type\":\"gce_instance\""  "WARNING"
| json "message.data.resource.type","message.data.logName" as type,log_name
| where type = "gce_instance" and !(log_name matches "projects/*/logs/cloudaudit.googleapis.com*")
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(zone) matches "{{zone}}" AND toLowerCase(instance_id) matches "{{instance_id}}"
| json "message.data.severity" as severity
| where severity="WARNING"
| json "message.data.jsonPayload.message" as payload
| parse field=payload "[*] [ warn] [*] *" as datetimeval, f1, warning_message nodrop
| json "message.data.timestamp" as timestamp
```


