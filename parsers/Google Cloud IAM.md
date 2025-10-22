# Parsers For Google Cloud IAM

**Google Cloud IAM/Google Cloud IAM Project Messages/Google Cloud IAM Project Messages**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data" as data
| json field=data "resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "project" | where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json field=data "timestamp", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.serviceData.policyDelta.bindingDeltas[*]" as timestamp, project, user, changes

| parse regex field=changes "\"role\":\"roles\\\/(?<role>[a-zA-Z.]+)\",\"member\":\"(?<member>.*?)\",\"action\":\"(?<action>[A-Z]+)\"" multi
```

**Google Cloud IAM/Google Cloud IAM Role Messages/Google Cloud IAM Role Messages**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "iam_role"
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.timestamp", "message.data.resource.labels.project_id" as timestamp, project
| json "message.data.protoPayload" as payload
| json field=payload "authenticationInfo.principalEmail", "response.title" as user, name
| parse regex "\"methodName\":\"[^\"]+\.(?<method>[^\"]+)\""
```

**Google Cloud IAM/Google Cloud IAM Service Account Messages/Google Cloud IAM Service Account Messages**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "service_account" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "timestamp", "resource.labels.project_id", "resource.labels.email_id", "protoPayload.authenticationInfo.principalEmail" as timestamp, project, service_account, user
| parse regex "\"methodName\":\"[^\"]+\.(?<method>[^\"]+)\""
```

**Google Cloud IAM/Overview/Messages by Project**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "iam_role" or type = "project" or type = "service_account"
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels" as labels
| json field=labels "project_id" as project
```

**Google Cloud IAM/Overview/Operations**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "project" or type = "iam_role" or type = "service_account"
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels" as labels
| json field=labels "project_id" as project
| parse regex "\"methodName\":\"[^\"]+\.(?<method>[^\"]+)\""
```

**Google Cloud IAM/Overview/Recent IAM Role Activity**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "iam_role"
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.timestamp", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, timestamp, project, payload
| json field=payload "authenticationInfo.principalEmail", "response.title" as user, name
| parse regex "\"methodName\":\"[^\"]+\.(?<method>[^\"]+)\""
```

**Google Cloud IAM/Overview/Recent Project Activity**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data" as data
| json field=data "resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "project" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json field=data "resource.labels", "timestamp", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.serviceData.policyDelta.bindingDeltas[*]" as labels, timestamp, project, user, changes

| parse regex field=changes "\"role\":\"roles\\\/(?<role>[a-zA-Z.]+)\",\"member\":\"(?<member>.*?)\",\"action\":\"(?<action>[A-Z]+)\"" multi
```

**Google Cloud IAM/Overview/Recent Service Account Activity**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "service_account" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "timestamp", "resource.labels", "resource.labels.project_id", "resource.labels.email_id", "protoPayload.authenticationInfo.principalEmail" as timestamp, labels, project, service_account, user
| parse regex "\"methodName\":\"[^\"]+\.(?<method>[^\"]+)\""
```

**Google Cloud IAM/Role Activity/Added Roles Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "project" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"

| timeslice 1h
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.policyDelta.bindingDeltas[*]" as labels, project, changes
| parse regex field=changes "\"role\":\"roles\\\/(?<role>[a-zA-Z.]+)\",\"member\":\".*\",\"action\":\"(?<action>[A-Z]+)\"" multi
```

**Google Cloud IAM/Role Activity/IAM Policy Changes by Project**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "project" | where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.protoPayload.methodName" as labels, method
| where method = "SetIamPolicy"
| json "message.data.resource.labels.project_id" as project
```

**Google Cloud IAM/Role Activity/Removed Roles Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "project" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"

| timeslice 1h
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.policyDelta.bindingDeltas[*]" as labels, project, changes
| parse regex field=changes "\"role\":\"roles\\\/(?<role>[a-zA-Z.]+)\",\"member\":\".*\",\"action\":\"(?<action>[A-Z]+)\"" multi
```

**Google Cloud IAM/Role Activity/Role Assignments**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "project" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"

| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.policyDelta.bindingDeltas[*]" as labels, project, changes
| parse regex field=changes "\"action\":\"(?<action>[A-Z]+)\"" multi
```

**Google Cloud IAM/Role Activity/Role Assignments Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "project" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"

| timeslice 1h
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.policyDelta.bindingDeltas[*]" as labels, project, changes
| parse regex field=changes "\"action\":\"(?<action>[A-Z]+)\"" multi
```

**Google Cloud IAM/Role Activity/Role Existence**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "iam_role" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.timestamp", "message.data.resource.labels.project_id" as labels, timestamp, project
| parse regex "\"methodName\":\"[^\"]+\.(?<method>[^\"]+)\""
```

**Google Cloud IAM/Role Activity/Role Existence Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "iam_role" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.timestamp", "message.data.resource.labels.project_id" as labels, timestamp, project
| parse regex "\"methodName\":\"[^\"]+\.(?<method>[^\"]+)\""
```

**Google Cloud IAM/Role Activity/User Operations**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data" as data
| json field=data "resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "project" or type = "iam_role"
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.methodName", "protoPayload.authenticationInfo.principalEmail" as labels, project, method, user
```


