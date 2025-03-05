# Parsers For Google Cloud IAM

## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels" as labels
| json field=labels "project_id" as project
 `n```
### Use Cases:
Google Cloud IAM Project Messages, Google Cloud IAM Role Messages, Google Cloud IAM Service Account Messages, Messages by Project, Operations, Recent IAM Role Activity, Recent Project Activity, Recent Service Account Activity



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels" as labels
| json field=labels "project_id" as project
| parse regex "\"methodName\":\"[^\"]+\.(?<method>[^\"]+)\""
 `n```
### Use Cases:
Google Cloud IAM Project Messages, Google Cloud IAM Role Messages, Google Cloud IAM Service Account Messages, Operations, Recent Project Activity



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload.methodName" as labels, method
| json "message.data.resource.labels.project_id" as project
 `n```
### Use Cases:
Google Cloud IAM Project Messages, Google Cloud IAM Role Messages, Google Cloud IAM Service Account Messages, IAM Policy Changes by Project, Messages by Project, Operations, Recent IAM Role Activity, Recent Project Activity, Recent Service Account Activity, Role Assignments Over Time, Role Existence, User Operations



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.policyDelta.bindingDeltas[*]" as labels, project, changes
| parse regex field=changes "\"action\":\"(?<action>[A-Z]+)\"" multi
 `n```
### Use Cases:
Google Cloud IAM Project Messages, Google Cloud IAM Role Messages, Google Cloud IAM Service Account Messages, IAM Policy Changes by Project, Messages by Project, Operations, Recent IAM Role Activity, Recent Project Activity, Recent Service Account Activity, Removed Roles Over Time, Role Assignments, Role Assignments Over Time, Role Existence, Role Existence Over Time, User Operations



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.policyDelta.bindingDeltas[*]" as labels, project, changes
| parse regex field=changes "\"role\":\"roles\\\/(?<role>[a-zA-Z.]+)\",\"member\":\".*\",\"action\":\"(?<action>[A-Z]+)\"" multi
 `n```
### Use Cases:
Added Roles Over Time, Google Cloud IAM Project Messages, Google Cloud IAM Role Messages, Google Cloud IAM Service Account Messages, IAM Policy Changes by Project, Messages by Project, Operations, Recent IAM Role Activity, Recent Project Activity, Recent Service Account Activity, Removed Roles Over Time, Role Assignments, Role Assignments Over Time, Role Existence, Role Existence Over Time, User Operations



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.timestamp", "message.data.resource.labels.project_id" as labels, timestamp, project
| parse regex "\"methodName\":\"[^\"]+\.(?<method>[^\"]+)\""
 `n```
### Use Cases:
Google Cloud IAM Project Messages, Google Cloud IAM Role Messages, Google Cloud IAM Service Account Messages, IAM Policy Changes by Project, Messages by Project, Operations, Recent IAM Role Activity, Recent Project Activity, Recent Service Account Activity, Removed Roles Over Time, Role Assignments Over Time, Role Existence, Role Existence Over Time, User Operations



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.timestamp", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, timestamp, project, payload
| json field=payload "authenticationInfo.principalEmail", "response.title" as user, name
| parse regex "\"methodName\":\"[^\"]+\.(?<method>[^\"]+)\""
 `n```
### Use Cases:
Google Cloud IAM Project Messages, Google Cloud IAM Role Messages, Google Cloud IAM Service Account Messages, Operations, Recent IAM Role Activity, Recent Project Activity, Recent Service Account Activity



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.timestamp", "message.data.resource.labels.project_id" as timestamp, project
| json "message.data.protoPayload" as payload
| json field=payload "authenticationInfo.principalEmail", "response.title" as user, name
| parse regex "\"methodName\":\"[^\"]+\.(?<method>[^\"]+)\""
 `n```
### Use Cases:
Google Cloud IAM Project Messages, Google Cloud IAM Role Messages, Google Cloud IAM Service Account Messages



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data" as data
| json field=data "timestamp", "resource.labels.project_id", "resource.labels.email_id", "protoPayload.authenticationInfo.principalEmail" as timestamp, project, service_account, user
| parse regex "\"methodName\":\"[^\"]+\.(?<method>[^\"]+)\""
 `n```
### Use Cases:
Google Cloud IAM Project Messages, Google Cloud IAM Role Messages, Google Cloud IAM Service Account Messages



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data" as data
| json field=data "timestamp", "resource.labels", "resource.labels.project_id", "resource.labels.email_id", "protoPayload.authenticationInfo.principalEmail" as timestamp, labels, project, service_account, user
| parse regex "\"methodName\":\"[^\"]+\.(?<method>[^\"]+)\""
 `n```
### Use Cases:
Google Cloud IAM Project Messages, Google Cloud IAM Role Messages, Google Cloud IAM Service Account Messages, Operations, Recent Project Activity, Recent Service Account Activity



## Parser:
```
| json "message.data" as data
| json field=data "resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.methodName", "protoPayload.authenticationInfo.principalEmail" as labels, project, method, user
 `n```
### Use Cases:
Google Cloud IAM Project Messages, Google Cloud IAM Role Messages, Google Cloud IAM Service Account Messages, Messages by Project, Operations, Recent IAM Role Activity, Recent Project Activity, Recent Service Account Activity, Role Assignments Over Time, Role Existence, User Operations



## Parser:
```
| json "message.data" as data
| json field=data "resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json field=data "resource.labels", "timestamp", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.serviceData.policyDelta.bindingDeltas[*]" as labels, timestamp, project, user, changes
| parse regex field=changes "\"role\":\"roles\\\/(?<role>[a-zA-Z.]+)\",\"member\":\"(?<member>.*?)\",\"action\":\"(?<action>[A-Z]+)\"" multi
 `n```
### Use Cases:
Google Cloud IAM Project Messages, Google Cloud IAM Role Messages, Google Cloud IAM Service Account Messages, Recent Project Activity



## Parser:
```
| json "message.data" as data
| json field=data "resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json field=data "timestamp", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.serviceData.policyDelta.bindingDeltas[*]" as timestamp, project, user, changes
| parse regex field=changes "\"role\":\"roles\\\/(?<role>[a-zA-Z.]+)\",\"member\":\"(?<member>.*?)\",\"action\":\"(?<action>[A-Z]+)\"" multi
 `n```
### Use Cases:
Google Cloud IAM Project Messages, Google Cloud IAM Role Messages, Google Cloud IAM Service Account Messages


