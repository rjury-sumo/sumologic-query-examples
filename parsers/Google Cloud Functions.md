# Parsers For Google Cloud Functions

**Google Cloud Functions/Audit Logs/Audit Events Over Time**
```
_sourceCategory={{Logsdatasource}}  logName authorizationInfo "\"type\":\"cloud_function\"" 
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.protoPayload.authorizationInfo[*]" as labels, permissions
| json field=labels "function_name", "project_id", "region" as function_name, project_id, region
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(function_name) matches "{{function_name}}"
| parse regex field=permissions "\"permission\":\"(?<actionstring>[a-zA-Z\\.]+)" multi
| parse regex field=actionstring "(?<action>\w+)$" multi
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
```

**Google Cloud Functions/Audit Logs/Audit Logs - Actions Performed**
```
_sourceCategory={{Logsdatasource}}  logName principalEmail authorizationInfo "\"type\":\"cloud_function\"" 
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.timestamp", "message.data.resource.labels", "message.data.protoPayload" as timestamp, labels, payload
| json "message.data.severity" as severity
| json field=labels "function_name", "project_id", "region" as function_name, project_id, region
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(function_name) matches "{{function_name}}"
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| parse regex field=permissions "\"permission\":\"(?<actionstring>[a-zA-Z\\.]+)" multi
| parse regex field=actionstring "(?<action>\w+)$" multi
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)" multi nodrop
```

**Google Cloud Functions/Audit Logs/Recent Error Audit Events**
```
_sourceCategory={{Logsdatasource}}  logName principalEmail authorizationInfo "\"type\":\"cloud_function\"" 
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.timestamp", "message.data.resource.labels", "message.data.protoPayload" as timestamp, labels, payload
| json "message.data.severity" as severity
| json field=labels "function_name", "project_id", "region" as function_name, project_id, region
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(function_name) matches "{{function_name}}"
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)" multi nodrop
| where granted="true"
| parse regex field=permissions "\"permission\":\"(?<actionstring>[a-zA-Z\\.]+)" multi
| parse regex field=actionstring "(?<action>\w+)$" multi
| where severity="ERROR"
| json "message.data.protoPayload.status.code", "message.data.protoPayload.status.message" as errCode,errMsg
```

**Google Cloud Functions/Audit Logs/Unauthorized Audit Events**
```
_sourceCategory={{Logsdatasource}}  logName principalEmail authorizationInfo "\"type\":\"cloud_function\"" 
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.timestamp", "message.data.resource.labels", "message.data.protoPayload" as timestamp, labels, payload
| json field=labels "function_name", "project_id", "region" as function_name, project_id, region
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)" multi nodrop
| where granted="false"
| parse regex field=permissions "\"permission\":\"(?<action>[a-zA-Z\\.]+)" multi
```

**Google Cloud Functions/Failures/Google Cloud Functions - Failures**
```
_sourceCategory = Labs/GCP/functions logName textPayload ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudfunctions*"
| json "message.data.resource.labels", "message.data.severity", "message.data.timestamp", "message.data.textPayload" as labels, severity, timestamp, text
| json field=labels "function_name", "project_id", "region" as function, project, region
```

**Google Cloud Functions/Google Cloud Function - Failures/Google Cloud Function - Failures**
```
_sourceCategory={{Logsdatasource}}  logName textPayload ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudfunctions*"
| json "message.data.resource.labels", "message.data.severity", "message.data.timestamp", "message.data.textPayload" as labels, severity, timestamp, text
| json field=labels "function_name", "project_id", "region" as function, project, region
```

**Google Cloud Functions/Google Cloud Function - Operations/Google Cloud Function - Operations**
```
_sourceCategory={{Logsdatasource}}  logName principalEmail authorizationInfo "\"type\":\"cloud_function\"" 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.timestamp", "message.data.resource.labels", "message.data.protoPayload" as timestamp, labels, payload
| json field=labels "function_name", "project_id", "region" as function, project, region
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| parse regex field=permissions "\"granted\":(?<granted>(.*(?=,))),\"permission\":\"(?<action>(.*?(?=\")))" multi
```

**Google Cloud Functions/Google Cloud Function - Statistics by Project/Google Cloud Function - Statistics by Project**
```
_sourceCategory={{Logsdatasource}}  logName function_name textPayload "\"type\":\"cloud_function\"" 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudfunctions.googleapis.com%2Fcloud-functions"
| parse regex "\"textPayload\":\"Function execution took (?<latency>[0-9]+) ms[^\"]*status[^\"]*: ?(?<status>[^\"]+)\""
| json "message.data.resource.labels" as labels
| json field=labels "function_name", "project_id", "region" as function, project, region
```

**Google Cloud Functions/Operations/Google Cloud Functions - Operations**
```
_sourceCategory = Labs/GCP/functions logName principalEmail authorizationInfo "\"type\":\"cloud_function\"" 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.timestamp", "message.data.resource.labels", "message.data.protoPayload" as timestamp, labels, payload
| json field=labels "function_name", "project_id", "region" as function, project, region
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| parse regex field=permissions "\"permission\":\"(?<action>[a-zA-Z\.]+)\",\"granted\":(?<granted>[a-z]+)}" multi
```

**Google Cloud Functions/Platform Logs/Execution Status**
```
_sourceCategory={{Logsdatasource}}  logName function_name textPayload "\"type\":\"cloud_function\"" 
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudfunctions.googleapis.com%2Fcloud-functions"
| parse regex "\"textPayload\":\"Function execution took[^\"]*status[^\"]*: ?(?<status>[^\"]+)\""
| json "message.data.resource.labels" as labels
| json field=labels "function_name", "project_id", "region" as function_name, project_id, region
```

**Google Cloud Functions/Platform Logs/Function Statistics by Project**
```
_sourceCategory={{Logsdatasource}}  logName function_name textPayload "\"type\":\"cloud_function\"" 
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudfunctions.googleapis.com%2Fcloud-functions"
| parse regex "\"textPayload\":\"Function execution took (?<latency>[0-9]+) ms[^\"]*status[^\"]*: ?(?<status>[^\"]+)\""
| json "message.data.resource.labels" as labels
| json field=labels "function_name", "project_id", "region" as function_name, project_id, region
```

**Google Cloud Functions/Platform Logs/Recent Failures**
```
_sourceCategory={{Logsdatasource}}  logName textPayload ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudfunctions*"
| json "message.data.resource.labels", "message.data.severity", "message.data.timestamp", "message.data.textPayload" as labels, severity, timestamp, text
| where !isEmpty(text)
| json field=labels "function_name", "project_id", "region" as function_name, project_id, region
```

**Google Cloud Functions/Platform Logs/Top 10 Functions by Average Latency (ms)**
```
_sourceCategory={{Logsdatasource}}  logName function_name textPayload "\"type\":\"cloud_function\"" 
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudfunctions.googleapis.com%2Fcloud-functions"
| parse regex "\"textPayload\":\"Function execution took (?<latency>[0-9]+) ms[^\"]*status"
| json "message.data.resource.labels" as labels
| json field=labels "function_name", "project_id", "region" as function_name, project_id, region
```

**Google Cloud Functions/Platform Logs/Top 10 Functions by Error Status**
```
_sourceCategory={{Logsdatasource}}  logName function_name textPayload "\"type\":\"cloud_function\"" 
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudfunctions.googleapis.com%2Fcloud-functions"
| parse regex "\"textPayload\":\"Function execution took (?<latency>[0-9]+) ms[^\"]*status[^\"]*: ?(?<status>[^\"]+)\""
| json "message.data.resource.labels" as labels
| json field=labels "function_name", "project_id", "region" as function_name, project_id, region
```

**Google Cloud Functions/Platform Logs/Top 10 Functions by Executions**
```
_sourceCategory={{Logsdatasource}}  logName function_name "\"type\":\"cloud_function\"" "\"textPayload\":\"Function execution took"
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudfunctions.googleapis.com%2Fcloud-functions"
| json "message.data.resource.labels" as labels
| json field=labels "function_name", "project_id", "region" as function_name, project_id, region
```

**Google Cloud Functions/Statistics by Project/Google Cloud Functions - Statistics by Project**
```
_sourceCategory = Labs/GCP/functions logName function_name textPayload "\"type\":\"cloud_function\"" 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudfunctions.googleapis.com%2Fcloud-functions"
| parse regex "\"textPayload\":\"Function execution took (?<latency>[0-9]+) ms[^\"]*status[^\"]*: ?(?<status>[^\"]+)\""
| json "message.data.resource.labels" as labels
| json field=labels "function_name", "project_id", "region" as function, project, region
```


