# Parsers For Google Cloud Functions

## Parser:
```
| json "message.data.logName" as log_name
| json "message.data.resource.labels" as labels
| json field=labels "function_name", "project_id", "region" as function_name, project_id, region
```
### Use Cases:
Audit Events Over Time, Audit Logs - Actions Performed, Execution Status, Function Statistics by Project, Google Cloud Function - Failures, Google Cloud Function - Operations, Google Cloud Function - Statistics by Project, Google Cloud Functions - Failures, Google Cloud Functions - Operations, Google Cloud Functions - Statistics by Project, Recent Error Audit Events, Recent Failures, Top 10 Functions by Average Latency (ms), Top 10 Functions by Executions, Unauthorized Audit Events



## Parser:
```
| json "message.data.logName" as log_name
| json "message.data.resource.labels", "message.data.protoPayload.authorizationInfo[*]" as labels, permissions
| json field=labels "function_name", "project_id", "region" as function_name, project_id, region
| parse regex field=permissions "\"permission\":\"(?<actionstring>[a-zA-Z\\.]+)" multi
| parse regex field=actionstring "(?<action>\w+)$" multi
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
```
### Use Cases:
Audit Events Over Time, Google Cloud Function - Failures, Google Cloud Function - Operations, Google Cloud Function - Statistics by Project, Google Cloud Functions - Failures, Google Cloud Functions - Operations, Google Cloud Functions - Statistics by Project, Recent Error Audit Events, Unauthorized Audit Events



## Parser:
```
| json "message.data.logName" as log_name
| json "message.data.resource.labels", "message.data.severity", "message.data.timestamp", "message.data.textPayload" as labels, severity, timestamp, text
| json field=labels "function_name", "project_id", "region" as function_name, project_id, region
```
### Use Cases:
Audit Events Over Time, Audit Logs - Actions Performed, Google Cloud Function - Failures, Google Cloud Function - Operations, Google Cloud Function - Statistics by Project, Google Cloud Functions - Failures, Google Cloud Functions - Operations, Google Cloud Functions - Statistics by Project, Recent Error Audit Events, Recent Failures, Unauthorized Audit Events



## Parser:
```
| json "message.data.logName" as log_name
| json "message.data.timestamp", "message.data.resource.labels", "message.data.protoPayload" as timestamp, labels, payload
| json "message.data.severity" as severity
| json field=labels "function_name", "project_id", "region" as function_name, project_id, region
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| parse regex field=permissions "\"permission\":\"(?<actionstring>[a-zA-Z\\.]+)" multi
| parse regex field=actionstring "(?<action>\w+)$" multi
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)" multi nodrop
```
### Use Cases:
Audit Events Over Time, Audit Logs - Actions Performed, Google Cloud Function - Failures, Google Cloud Function - Operations, Google Cloud Function - Statistics by Project, Google Cloud Functions - Failures, Google Cloud Functions - Operations, Google Cloud Functions - Statistics by Project, Recent Error Audit Events, Unauthorized Audit Events



## Parser:
```
| json "message.data.logName" as log_name
| json "message.data.timestamp", "message.data.resource.labels", "message.data.protoPayload" as timestamp, labels, payload
| json "message.data.severity" as severity
| json field=labels "function_name", "project_id", "region" as function_name, project_id, region
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)" multi nodrop
| parse regex field=permissions "\"permission\":\"(?<actionstring>[a-zA-Z\\.]+)" multi
| parse regex field=actionstring "(?<action>\w+)$" multi
| json "message.data.protoPayload.status.code", "message.data.protoPayload.status.message" as errCode,errMsg
```
### Use Cases:
Google Cloud Function - Failures, Google Cloud Function - Operations, Google Cloud Function - Statistics by Project, Google Cloud Functions - Failures, Google Cloud Functions - Operations, Google Cloud Functions - Statistics by Project, Recent Error Audit Events



## Parser:
```
| json "message.data.logName" as log_name
| json "message.data.timestamp", "message.data.resource.labels", "message.data.protoPayload" as timestamp, labels, payload
| json field=labels "function_name", "project_id", "region" as function_name, project_id, region
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)" multi nodrop
| parse regex field=permissions "\"permission\":\"(?<action>[a-zA-Z\\.]+)" multi
```
### Use Cases:
Google Cloud Function - Failures, Google Cloud Function - Operations, Google Cloud Function - Statistics by Project, Google Cloud Functions - Failures, Google Cloud Functions - Operations, Google Cloud Functions - Statistics by Project, Recent Error Audit Events, Unauthorized Audit Events



## Parser:
```
| json "message.data.logName" as log_name
| parse regex "\"textPayload\":\"Function execution took (?<latency>[0-9]+) ms[^\"]*status"
| json "message.data.resource.labels" as labels
| json field=labels "function_name", "project_id", "region" as function_name, project_id, region
```
### Use Cases:
Audit Events Over Time, Audit Logs - Actions Performed, Execution Status, Google Cloud Function - Failures, Google Cloud Function - Operations, Google Cloud Function - Statistics by Project, Google Cloud Functions - Failures, Google Cloud Functions - Operations, Google Cloud Functions - Statistics by Project, Recent Error Audit Events, Recent Failures, Top 10 Functions by Average Latency (ms), Unauthorized Audit Events



## Parser:
```
| json "message.data.logName" as log_name
| parse regex "\"textPayload\":\"Function execution took (?<latency>[0-9]+) ms[^\"]*status[^\"]*: ?(?<status>[^\"]+)\""
| json "message.data.resource.labels" as labels
| json field=labels "function_name", "project_id", "region" as function_name, project_id, region
```
### Use Cases:
Audit Events Over Time, Audit Logs - Actions Performed, Execution Status, Function Statistics by Project, Google Cloud Function - Failures, Google Cloud Function - Operations, Google Cloud Function - Statistics by Project, Google Cloud Functions - Failures, Google Cloud Functions - Operations, Google Cloud Functions - Statistics by Project, Recent Error Audit Events, Recent Failures, Top 10 Functions by Average Latency (ms), Top 10 Functions by Error Status, Top 10 Functions by Executions, Unauthorized Audit Events



## Parser:
```
| json "message.data.logName" as log_name
| parse regex "\"textPayload\":\"Function execution took[^\"]*status[^\"]*: ?(?<status>[^\"]+)\""
| json "message.data.resource.labels" as labels
| json field=labels "function_name", "project_id", "region" as function_name, project_id, region
```
### Use Cases:
Audit Events Over Time, Audit Logs - Actions Performed, Execution Status, Google Cloud Function - Failures, Google Cloud Function - Operations, Google Cloud Function - Statistics by Project, Google Cloud Functions - Failures, Google Cloud Functions - Operations, Google Cloud Functions - Statistics by Project, Recent Error Audit Events, Recent Failures, Unauthorized Audit Events



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.severity", "message.data.timestamp", "message.data.textPayload" as labels, severity, timestamp, text
| json field=labels "function_name", "project_id", "region" as function, project, region
```
### Use Cases:
Google Cloud Function - Failures, Google Cloud Functions - Failures, Google Cloud Functions - Operations, Google Cloud Functions - Statistics by Project



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.timestamp", "message.data.resource.labels", "message.data.protoPayload" as timestamp, labels, payload
| json field=labels "function_name", "project_id", "region" as function, project, region
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| parse regex field=permissions "\"granted\":(?<granted>(.*(?=,))),\"permission\":\"(?<action>(.*?(?=\")))" multi
```
### Use Cases:
Google Cloud Function - Failures, Google Cloud Function - Operations, Google Cloud Functions - Failures, Google Cloud Functions - Operations, Google Cloud Functions - Statistics by Project



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.timestamp", "message.data.resource.labels", "message.data.protoPayload" as timestamp, labels, payload
| json field=labels "function_name", "project_id", "region" as function, project, region
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| parse regex field=permissions "\"permission\":\"(?<action>[a-zA-Z\.]+)\",\"granted\":(?<granted>[a-z]+)}" multi
```
### Use Cases:
Google Cloud Functions - Failures, Google Cloud Functions - Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| parse regex "\"textPayload\":\"Function execution took (?<latency>[0-9]+) ms[^\"]*status[^\"]*: ?(?<status>[^\"]+)\""
| json "message.data.resource.labels" as labels
| json field=labels "function_name", "project_id", "region" as function, project, region
```
### Use Cases:
Google Cloud Function - Failures, Google Cloud Function - Operations, Google Cloud Function - Statistics by Project, Google Cloud Functions - Failures, Google Cloud Functions - Operations, Google Cloud Functions - Statistics by Project


