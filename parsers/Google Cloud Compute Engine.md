# Parsers For Google Cloud Compute Engine

## Parser:
```
| json "message.data.resource.type","message.data.logName" as type,log_name
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.protoPayload.methodName", "message.data.severity" as methodName,severity
| parse regex field=methodName "\.compute\.instances\.(?<method>\S+)"
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| json "message.data.timestamp", "message.data.protoPayload.authenticationInfo.principalEmail" as timestamp, user
| json "message.data.protoPayload.status.code", "message.data.protoPayload.status.message" as errCode,errMsg
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
 
```
### Use Cases:
Operations By Instance, Recent  Error Activity, Recent Instance Activity, Top 10 Users



## Parser:
```
| json "message.data.resource.type","message.data.logName" as type,log_name
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| json "message.data.operation","message.data.operation.last" as operation, islast nodrop
| json "message.data.protoPayload.methodName" as methodName
| parse regex field=methodName "compute\.instances\.(?<method>.*)"
 
```
### Use Cases:
Audit Event - Severity Trend, Event Location, Instance Inserts vs Deletes, Instance Starts vs Stops, Log Event - Severity Distribution, Operations By Instance, Recent  Error Activity, Recent Instance Activity, Top 10 Users, Top 10 Users by Severity



## Parser:
```
| json "message.data.resource.type","message.data.logName" as type,log_name
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| json "message.data.protoPayload.authenticationInfo.principalEmail" as user
 
```
### Use Cases:
Recent Instance Activity, Top 10 Users



## Parser:
```
| json "message.data.resource.type","message.data.logName" as type,log_name
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| json "message.data.protoPayload.authenticationInfo.principalEmail", "message.data.protoPayload.methodName" as user, method
 
```
### Use Cases:
Audit Event - Severity Trend, Event Location, Instance Inserts vs Deletes, Instance Starts vs Stops, Log Event - Severity Distribution, Operations By Instance, Recent  Error Activity, Recent Instance Activity, Top 10 Users, Top 10 Users by Activity, Top 10 Users by Severity



## Parser:
```
| json "message.data.resource.type","message.data.logName" as type,log_name
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| json "message.data.protoPayload.authenticationInfo.principalEmail", "message.data.severity" as user, severity
 
```
### Use Cases:
Audit Event - Severity Trend, Event Location, Instance Starts vs Stops, Log Event - Severity Distribution, Operations By Instance, Recent  Error Activity, Recent Instance Activity, Top 10 Users, Top 10 Users by Severity



## Parser:
```
| json "message.data.resource.type","message.data.logName" as type,log_name
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| json "message.data.protoPayload.methodName" as methodName
| parse regex field=methodName "compute\.instances\.(?<method>.*)"
 
```
### Use Cases:
Event Location, Instance Starts vs Stops, Log Event - Severity Distribution, Operations By Instance, Recent  Error Activity, Recent Instance Activity, Top 10 Users



## Parser:
```
| json "message.data.resource.type","message.data.logName" as type,log_name
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| json "message.data.protoPayload.methodName" as methodName 
| parse regex field=methodName "\.compute\.instances\.(?<method>\S+)"
 
```
### Use Cases:
Audit Event - Severity Trend, Event Location, Instance Inserts vs Deletes, Instance Starts vs Stops, Log Event - Severity Distribution, Operation Shares, Operations By Instance, Recent  Error Activity, Recent Instance Activity, Top 10 Users, Top 10 Users by Activity, Top 10 Users by Severity



## Parser:
```
| json "message.data.resource.type","message.data.logName" as type,log_name
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| json "message.data.protoPayload.methodName" as methodName 
| parse regex field=methodName "\.compute\.instances\.(?<method>\S+)"| timeslice 1h
 
```
### Use Cases:
Operations By Instance, Recent Instance Activity, Top 10 Users



## Parser:
```
| json "message.data.resource.type","message.data.logName" as type,log_name
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| json "message.data.protoPayload.requestMetadata.callerIp" as caller_ip
 
```
### Use Cases:
Event Location, Log Event - Severity Distribution, Operations By Instance, Recent  Error Activity, Recent Instance Activity, Top 10 Users



## Parser:
```
| json "message.data.resource.type","message.data.logName" as type,log_name
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| json "message.data.severity" as severity
 
```
### Use Cases:
Audit Event - Severity Trend, Event Location, Instance Starts vs Stops, Log Event - Severity Distribution, Operations By Instance, Recent  Error Activity, Recent Instance Activity, Top 10 Users



## Parser:
```
| json "message.data.resource.type","message.data.logName" as type,log_name
| json "message.data.protoPayload.resourceName" as resourceName 
| parse regex field=resourcename "projects/\S+/zones/(?<zone>\S+)/instances/(?<instance_name>\S+)"
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| json "message.data.timestamp", "message.data.protoPayload.authenticationInfo.principalEmail" as timestamp, user
| json "message.data.protoPayload.methodName", "message.data.severity" as methodName,severity
| parse regex field=methodName "\.compute\.instances\.(?<method>\S+)"
 
```
### Use Cases:
Recent Instance Activity



## Parser:
```
| json "message.data.resource.type","message.data.logName" as type,log_name
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| json "message.data.severity" as severity
| json "message.data.jsonPayload.message" as payload
| json "message.data.sourceLocation.function" as function
| json "message.data.timestamp" as timestamp
 
```
### Use Cases:
Audit Event - Severity Trend, Event Location, Instance Inserts vs Deletes, Instance Starts vs Stops, Log Event - Severity Distribution, Operation Shares, Operations By Instance, Platform Logs - Severity Distribution, Platform Logs - Severity Trend, Recent  Error Activity, Recent Errors, Recent Instance Activity, Recent Warnings, Top 10 Users, Top 10 Users by Activity, Top 10 Users by Severity, Top Warnings



## Parser:
```
| json "message.data.resource.type","message.data.logName" as type,log_name
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| json "message.data.severity" as severity
| json "message.data.jsonPayload.message" as payload
| json "message.data.timestamp" as timestamp
 
```
### Use Cases:
Audit Event - Severity Trend, Event Location, Instance Inserts vs Deletes, Instance Starts vs Stops, Log Event - Severity Distribution, Operation Shares, Operations By Instance, Platform Logs - Severity Distribution, Platform Logs - Severity Trend, Recent  Error Activity, Recent Errors, Recent Instance Activity, Recent Warnings, Top 10 Users, Top 10 Users by Activity, Top 10 Users by Severity, Top Errors, Top Warnings



## Parser:
```
| json "message.data.resource.type","message.data.logName" as type,log_name
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| json "message.data.severity" as severity
| json "message.data.jsonPayload.message" as payload
| parse field=payload "[*] [ warn] [*] *" as datetimeval, f1, warning_message nodrop
| json "message.data.timestamp" as timestamp
 
```
### Use Cases:
Audit Event - Severity Trend, Event Location, Instance Inserts vs Deletes, Instance Starts vs Stops, Log Event - Severity Distribution, Operation Shares, Operations By Instance, Platform Logs - Severity Trend, Recent  Error Activity, Recent Instance Activity, Top 10 Users, Top 10 Users by Activity, Top 10 Users by Severity, Top Warnings



## Parser:
```
| json "message.data.resource.type","message.data.logName" as type,log_name
| json "message.data.resource.labels.project_id","message.data.resource.labels.zone","message.data.resource.labels.instance_id" as project_id,zone,instance_id
| json "message.data.severity" as severity
| json "message.data.jsonPayload.message" as payload nodrop
| json "message.data.labels.instance_name" as instance_name nodrop
| json "message.data.sourceLocation.function" as function nodrop
| json "message.data.timestamp" as timestamp nodrop
| parse field=payload "[*] [ warn] [*] *" as datetimeval, f1, warning_message nodrop
 
```
### Use Cases:
Audit Event - Severity Trend, Event Location, Instance Inserts vs Deletes, Instance Starts vs Stops, Log Event - Severity Distribution, Operation Shares, Operations By Instance, Platform Logs - Severity Distribution, Platform Logs - Severity Trend, Recent  Error Activity, Recent Instance Activity, Recent Warnings, Top 10 Users, Top 10 Users by Activity, Top 10 Users by Severity, Top Warnings


