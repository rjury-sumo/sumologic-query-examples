# Parsers For Google BigQuery

**Google BigQuery/Management - New/Authorization Failures Over Time**
```
_sourceCategory = Labs/GCP/bigquery logName resource callerIp authorizationInfo "type":"bigquery_resource"  
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.authorizationInfo[*]" as labels, project, permissions
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)}" multi nodrop
```

**Google BigQuery/Management - New/Dataset Service Operation Error Outliers**
```
_sourceCategory = Labs/GCP/bigquery logName resource methodName "type":"bigquery_resource" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id" as labels, project
| parse regex "\"methodName\":\"(?<service>[^\"]+)\.(?<method>[^\"]+)\""
```

**Google BigQuery/Management - New/Dataset Service Operations Over Time**
```
_sourceCategory = Labs/GCP/bigquery logName resource methodName "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity" as labels, project, severity
| parse regex "\"methodName\":\"(?<service>[^\"]+)\.(?<method>[^\"]+)\""
```

**Google BigQuery/Management - New/Failed Operation Locations**
```
_sourceCategory = Labs/GCP/bigquery logName resource callerIp "type":"bigquery_resource" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.requestMetadata.callerIp" as labels, project, caller_ip
```

**Google BigQuery/Management - New/Location of Authorization Failures**
```
_sourceCategory = Labs/GCP/bigquery logName resource callerIp authorizationInfo "type":"bigquery_resource"  
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "authorizationInfo[*]", "requestMetadata.callerIp" as permissions, caller_ip
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)}" multi nodrop
```

**Google BigQuery/Management - New/Operation Failure Percentage**
```
_sourceCategory = Labs/GCP/bigquery logName resource severity "type":"bigquery_resource" 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity" as labels, project, severity
```

**Google BigQuery/Management - New/Operation Failures by Project**
```
_sourceCategory = Labs/GCP/bigquery logName resource callerIp "type":"bigquery_resource" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id" as labels, project
```

**Google BigQuery/Management - New/Operations**
```
_sourceCategory = Labs/GCP/bigquery logName resource methodName "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.methodName" as labels, project, method
```

**Google BigQuery/Management - New/Operations by Project**
```
_sourceCategory = Labs/GCP/bigquery logName resource "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id" as labels, project
```

**Google BigQuery/Management - New/Recent Authorization Failures**
```
_sourceCategory = Labs/GCP/bigquery authorizationInfo callerIp logName principalEmail resource timestamp "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.timestamp", "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as timestamp, labels, project, payload
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]", "requestMetadata.callerIp" as user, permissions, caller_ip
| parse regex field=permissions "\"permission\":\"(?<action>[a-zA-Z\.]+)\"" multi
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)}" multi nodrop
```

**Google BigQuery/Management - New/Recent Operation Failures**
```
_sourceCategory = Labs/GCP/bigquery logName resource callerIp "type":"bigquery_resource" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.timestamp", "message.data.severity", "message.data.protoPayload" as labels, project, timestamp, severity, payload
| json field=payload "authenticationInfo.principalEmail", "methodName", "status.message" as user, method, message
```

**Google BigQuery/Management - New/Table Service Operation Error Outliers**
```
_sourceCategory = Labs/GCP/bigquery logName resource methodName "type":"bigquery_resource" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id" as labels, project
| parse regex "\"methodName\":\"(?<service>[^\"]+)\.(?<method>[^\"]+)\""
```

**Google BigQuery/Management - New/Table Service Operations Over Time**
```
_sourceCategory = Labs/GCP/bigquery logName resource methodName "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity" as labels, project, severity
| parse regex "\"methodName\":\"(?<service>[^\"]+)\.(?<method>[^\"]+)\""
```

**Google BigQuery/Management Operation Errors by Project/Google BigQuery - Management Operation Errors by Project**
```
_sourceCategory={{Logsdatasource}}  logName resource methodName severity "type":"bigquery_resource" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity", "message.data.protoPayload.methodName" as labels, project, severity, method
```

**Google BigQuery/Management Operations by Project/Google BigQuery - Management Operations by Project**
```
_sourceCategory={{Logsdatasource}}  logName resource methodName "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.methodName" as labels, project, method
```

**Google BigQuery/Management/Authorization Failures Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource callerIp authorizationInfo "type":"bigquery_resource"  
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.authorizationInfo[*]" as labels, project, permissions
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)" multi nodrop
```

**Google BigQuery/Management/Dataset Service Operation Error Outliers**
```
_sourceCategory={{Logsdatasource}}  logName resource methodName "type":"bigquery_resource" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id" as labels, project
| parse regex "\"methodName\":\"(?<service>[^\"]+)\.(?<method>[^\"]+)\""
```

**Google BigQuery/Management/Dataset Service Operations Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource methodName "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity" as labels, project, severity
| parse regex "\"methodName\":\"(?<service>[^\"]+)\.(?<method>[^\"]+)\""
```

**Google BigQuery/Management/Failed Operation Locations**
```
_sourceCategory={{Logsdatasource}}  logName resource callerIp "type":"bigquery_resource" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.requestMetadata.callerIp" as labels, project, caller_ip
```

**Google BigQuery/Management/Location of Authorization Failures**
```
_sourceCategory={{Logsdatasource}}  logName resource callerIp authorizationInfo "type":"bigquery_resource"  
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "authorizationInfo[*]", "requestMetadata.callerIp" as permissions, caller_ip
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)" multi nodrop
```

**Google BigQuery/Management/Operation Failure Percentage**
```
_sourceCategory={{Logsdatasource}}  logName resource severity "type":"bigquery_resource" 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity" as labels, project, severity
```

**Google BigQuery/Management/Operation Failures by Project**
```
_sourceCategory={{Logsdatasource}}  logName resource callerIp "type":"bigquery_resource" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id" as labels, project
```

**Google BigQuery/Management/Operations**
```
_sourceCategory={{Logsdatasource}}  logName resource methodName "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.methodName" as labels, project, method
```

**Google BigQuery/Management/Operations by Project**
```
_sourceCategory={{Logsdatasource}}  logName resource "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id" as labels, project
```

**Google BigQuery/Management/Recent Authorization Failures**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo callerIp logName principalEmail resource timestamp "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.timestamp", "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as timestamp, labels, project, payload
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]", "requestMetadata.callerIp" as user, permissions, caller_ip
| parse regex field=permissions "\"permission\":\"(?<action>[a-zA-Z\.]+)\"" multi
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)" multi nodrop
```

**Google BigQuery/Management/Recent Operation Failures**
```
_sourceCategory={{Logsdatasource}}  logName resource callerIp "type":"bigquery_resource" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.timestamp", "message.data.severity", "message.data.protoPayload" as labels, project, timestamp, severity, payload
| json field=payload "authenticationInfo.principalEmail", "methodName", "status.message" as user, method, message
```

**Google BigQuery/Management/Table Service Operation Error Outliers**
```
_sourceCategory={{Logsdatasource}}  logName resource methodName "type":"bigquery_resource" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id" as labels, project
| parse regex "\"methodName\":\"(?<service>[^\"]+)\.(?<method>[^\"]+)\""
```

**Google BigQuery/Management/Table Service Operations Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource methodName "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity" as labels, project, severity
| parse regex "\"methodName\":\"(?<service>[^\"]+)\.(?<method>[^\"]+)\""
```

**Google BigQuery/Overview - New/Operations Breakdown**
```
_sourceCategory = Labs/GCP/bigquery logName resource methodName "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.methodName" as labels, project, method
```

**Google BigQuery/Overview - New/Operations Over Time**
```
_sourceCategory = Labs/GCP/bigquery logName resource methodName "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.methodName" as labels, project, method
```

**Google BigQuery/Overview - New/Query Request Locations**
```
_sourceCategory = Labs/GCP/bigquery logName resource callerIp "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.requestMetadata.callerIp" as labels, project, caller_ip
```

**Google BigQuery/Overview - New/Top 10 Queries by Billed GB**
```
_sourceCategory = Labs/GCP/bigquery logName resource "\"jobCompletedEvent\":" "\"totalBilledBytes\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job" as labels, project, job
| json field=job "jobStatistics.totalBilledBytes", "jobConfiguration.query.query" as billed_bytes, query
```

**Google BigQuery/Overview - New/Top 10 Queries by Latency (s)**
```
_sourceCategory = Labs/GCP/bigquery logName resource "\"jobCompletedEvent\":" startTime endTime "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job.jobConfiguration.query.query" as labels, project, query
| parse regex "\"startTime\":\"(?<start_day>\d{4}-\d{2}-\d{2})T(?<start_time>\d{2}:\d{2}:\d{2})\.(?<start_millis>\d{3})[^\"]+\""
| parse regex "\"endTime\":\"(?<end_day>\d{4}-\d{2}-\d{2})T(?<end_time>\d{2}:\d{2}:\d{2})\.(?<end_millis>\d{3})[^\"]+\""
```

**Google BigQuery/Overview - New/Top 10 Users by Billed GB**
```
_sourceCategory = Labs/GCP/bigquery logName resource "\"jobCompletedEvent\":" "\"totalBilledBytes\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "serviceData.jobCompletedEvent.job.jobStatistics.totalBilledBytes", "authenticationInfo.principalEmail" as billed_bytes, user
```

**Google BigQuery/Overview - New/Top Projects by Billed GB**
```
_sourceCategory = Labs/GCP/bigquery logName resource "\"jobCompletedEvent\":" "\"totalBilledBytes\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job.jobStatistics.totalBilledBytes" as labels, project, billed_bytes
```

**Google BigQuery/Overview/Operations Breakdown**
```
_sourceCategory={{Logsdatasource}}  logName resource methodName "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.methodName" as labels, project, method
```

**Google BigQuery/Overview/Operations Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource methodName "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.methodName" as labels, project, method
```

**Google BigQuery/Overview/Query Request Locations**
```
_sourceCategory={{Logsdatasource}}  logName resource callerIp "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.requestMetadata.callerIp" as labels, project, caller_ip
```

**Google BigQuery/Overview/Top 10 Queries by Billed GB**
```
_sourceCategory={{Logsdatasource}}  logName resource "\"jobCompletedEvent\":" "\"totalBilledBytes\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job" as labels, project, job
| json field=job "jobStatistics.totalBilledBytes", "jobConfiguration.query.query" as billed_bytes, query
```

**Google BigQuery/Overview/Top 10 Queries by Latency (s)**
```
_sourceCategory={{Logsdatasource}}  logName resource "\"jobCompletedEvent\":" startTime endTime "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job.jobConfiguration.query.query" as labels, project, query
| parse regex "\"startTime\":\"(?<start_day>\d{4}-\d{2}-\d{2})T(?<start_time>\d{2}:\d{2}:\d{2})\.(?<start_millis>\d{3})[^\"]+\""
| parse regex "\"endTime\":\"(?<end_day>\d{4}-\d{2}-\d{2})T(?<end_time>\d{2}:\d{2}:\d{2})\.(?<end_millis>\d{3})[^\"]+\""
```

**Google BigQuery/Overview/Top 10 Users by Billed GB**
```
_sourceCategory={{Logsdatasource}}  logName resource "\"jobCompletedEvent\":" "\"totalBilledBytes\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "serviceData.jobCompletedEvent.job.jobStatistics.totalBilledBytes", "authenticationInfo.principalEmail" as billed_bytes, user
```

**Google BigQuery/Overview/Top Projects by Billed GB**
```
_sourceCategory={{Logsdatasource}}  logName resource "\"jobCompletedEvent\":" "\"totalBilledBytes\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job.jobStatistics.totalBilledBytes" as labels, project, billed_bytes
```

**Google BigQuery/Queries - New/Billed GB Over Time**
```
_sourceCategory = Labs/GCP/bigquery logName resource "\"jobCompletedEvent\":" "\"totalBilledBytes\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job" as labels, project, job
| json field=job "jobStatistics.totalBilledBytes", "jobConfiguration.query.query" as billed_bytes, query
```

**Google BigQuery/Queries - New/Billed GB, Latency (s), Errors Over Time**
```
_sourceCategory = Labs/GCP/bigquery logName resource severity startTime endTime "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity", "message.data.protoPayload.serviceData.jobCompletedEvent.job" as labels, project, severity, job
| json field=job "jobStatistics.totalBilledBytes", "jobConfiguration.query.query" as billed_bytes, query nodrop
| if(isNull(billed_bytes), 0, billed_bytes) as billed_bytes
| billed_bytes / 1Gi as billed_gbytes
| parse regex "\"startTime\":\"(?<start_day>\d{4}-\d{2}-\d{2})T(?<start_time>\d{2}:\d{2}:\d{2})\.(?<start_millis>\d{3})[^\"]+\""
| parse regex "\"endTime\":\"(?<end_day>\d{4}-\d{2}-\d{2})T(?<end_time>\d{2}:\d{2}:\d{2})\.(?<end_millis>\d{3})[^\"]+\""
```

**Google BigQuery/Queries - New/Errors Over Time**
```
_sourceCategory = Labs/GCP/bigquery logName resource severity "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job.jobConfiguration.query.query" as labels, project, query
```

**Google BigQuery/Queries - New/Latency (s) Over Time**
```
_sourceCategory = Labs/GCP/bigquery logName resource "\"jobCompletedEvent\":" startTime endTime "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job.jobConfiguration.query.query" as labels, project, query
| parse regex "\"startTime\":\"(?<start_day>\d{4}-\d{2}-\d{2})T(?<start_time>\d{2}:\d{2}:\d{2})\.(?<start_millis>\d{3})[^\"]+\""
| parse regex "\"endTime\":\"(?<end_day>\d{4}-\d{2}-\d{2})T(?<end_time>\d{2}:\d{2}:\d{2})\.(?<end_millis>\d{3})[^\"]+\""
```

**Google BigQuery/Queries - New/Location of Failed Executions**
```
_sourceCategory = Labs/GCP/bigquery logName resource callerIp "eventName":"query_job_completed" "type":"bigquery_resource" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "requestMetadata.callerIp", "serviceData.jobCompletedEvent.job.jobConfiguration.query.query" as caller_ip, query
```

**Google BigQuery/Queries - New/Location of Query Requests**
```
_sourceCategory = Labs/GCP/bigquery logName resource callerIp "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "requestMetadata.callerIp", "serviceData.jobCompletedEvent.job.jobConfiguration.query.query" as caller_ip, query
```

**Google BigQuery/Queries - New/Query Statistics by Project**
```
_sourceCategory = Labs/GCP/bigquery logName resource severity startTime endTime "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity", "message.data.protoPayload.serviceData.jobCompletedEvent.job" as labels, project, severity, job
| json field=job "jobStatistics.totalBilledBytes", "jobConfiguration.query.query" as billed_bytes, query nodrop
| if(isNull(billed_bytes), 0, billed_bytes) as billed_bytes
| billed_bytes / 1Gi as billed_gbytes
| parse regex "\"startTime\":\"(?<start_day>\d{4}-\d{2}-\d{2})T(?<start_time>\d{2}:\d{2}:\d{2})\.(?<start_millis>\d{3})[^\"]+\""
| parse regex "\"endTime\":\"(?<end_day>\d{4}-\d{2}-\d{2})T(?<end_time>\d{2}:\d{2}:\d{2})\.(?<end_millis>\d{3})[^\"]+\""
```

**Google BigQuery/Queries - New/Recent Query Failures**
```
_sourceCategory = Labs/GCP/bigquery logName resource severity  "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.timestamp", "message.data.severity", "message.data.protoPayload" as labels, project, timestamp, severity, payload
| json field=payload "serviceData.jobCompletedEvent.job.jobConfiguration.query.query", "status.message" as query, message
```

**Google BigQuery/Queries - New/Top 10 Queries by Billed GB**
```
_sourceCategory = Labs/GCP/bigquery logName resource "\"jobCompletedEvent\":" "\"totalBilledBytes\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job" as labels, project, job
| json field=job "jobStatistics.totalBilledBytes", "jobConfiguration.query.query" as billed_bytes, query
```

**Google BigQuery/Queries - New/Top 10 Queries by Errors**
```
_sourceCategory = Labs/GCP/bigquery logName resource severity "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity", "message.data.protoPayload.serviceData.jobCompletedEvent.job.jobConfiguration.query.query" as labels, project, severity, query
```

**Google BigQuery/Queries - New/Top 10 Queries by Latency (s)**
```
_sourceCategory = Labs/GCP/bigquery logName resource "\"jobCompletedEvent\":" startTime endTime "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job.jobConfiguration.query.query" as labels, project, query
| parse regex "\"startTime\":\"(?<start_day>\d{4}-\d{2}-\d{2})T(?<start_time>\d{2}:\d{2}:\d{2})\.(?<start_millis>\d{3})[^\"]+\""
| parse regex "\"endTime\":\"(?<end_day>\d{4}-\d{2}-\d{2})T(?<end_time>\d{2}:\d{2}:\d{2})\.(?<end_millis>\d{3})[^\"]+\""
```

**Google BigQuery/Queries/Billed GB Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource "\"jobCompletedEvent\":" "\"totalBilledBytes\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job" as labels, project, job
| json field=job "jobStatistics.totalBilledBytes", "jobConfiguration.query.query" as billed_bytes, query
```

**Google BigQuery/Queries/Billed GB, Latency (s), Errors Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource severity startTime endTime "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity", "message.data.protoPayload.serviceData.jobCompletedEvent.job" as labels, project, severity, job
| json field=job "jobStatistics.totalBilledBytes", "jobConfiguration.query.query" as billed_bytes, query nodrop
| if(isNull(billed_bytes), 0, billed_bytes) as billed_bytes
| billed_bytes / 1Gi as billed_gbytes
| parse regex "\"startTime\":\"(?<start_day>\d{4}-\d{2}-\d{2})T(?<start_time>\d{2}:\d{2}:\d{2})\.(?<start_millis>\d{3})[^\"]+\""
| parse regex "\"endTime\":\"(?<end_day>\d{4}-\d{2}-\d{2})T(?<end_time>\d{2}:\d{2}:\d{2})\.(?<end_millis>\d{3})[^\"]+\""
```

**Google BigQuery/Queries/Errors Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource severity "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job.jobConfiguration.query.query" as labels, project, query
```

**Google BigQuery/Queries/Latency (s) Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource "\"jobCompletedEvent\":" startTime endTime "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job.jobConfiguration.query.query" as labels, project, query
| parse regex "\"startTime\":\"(?<start_day>\d{4}-\d{2}-\d{2})T(?<start_time>\d{2}:\d{2}:\d{2})\.(?<start_millis>\d{3})[^\"]+\""
| parse regex "\"endTime\":\"(?<end_day>\d{4}-\d{2}-\d{2})T(?<end_time>\d{2}:\d{2}:\d{2})\.(?<end_millis>\d{3})[^\"]+\""
```

**Google BigQuery/Queries/Location of Failed Executions**
```
_sourceCategory={{Logsdatasource}}  logName resource callerIp "eventName":"query_job_completed" "type":"bigquery_resource" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "requestMetadata.callerIp", "serviceData.jobCompletedEvent.job.jobConfiguration.query.query" as caller_ip, query
```

**Google BigQuery/Queries/Location of Query Requests**
```
_sourceCategory={{Logsdatasource}}  logName resource callerIp "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "requestMetadata.callerIp", "serviceData.jobCompletedEvent.job.jobConfiguration.query.query" as caller_ip, query
```

**Google BigQuery/Queries/Query Statistics by Project**
```
_sourceCategory={{Logsdatasource}}  logName resource severity startTime endTime "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity", "message.data.protoPayload.serviceData.jobCompletedEvent.job" as labels, project, severity, job
| json field=job "jobStatistics.totalBilledBytes", "jobConfiguration.query.query" as billed_bytes, query nodrop
| if(isNull(billed_bytes), 0, billed_bytes) as billed_bytes
| billed_bytes / 1Gi as billed_gbytes
| parse regex "\"startTime\":\"(?<start_day>\d{4}-\d{2}-\d{2})T(?<start_time>\d{2}:\d{2}:\d{2})\.(?<start_millis>\d{3})[^\"]+\""
| parse regex "\"endTime\":\"(?<end_day>\d{4}-\d{2}-\d{2})T(?<end_time>\d{2}:\d{2}:\d{2})\.(?<end_millis>\d{3})[^\"]+\""
```

**Google BigQuery/Queries/Recent Query Failures**
```
_sourceCategory={{Logsdatasource}}  logName resource severity  "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.timestamp", "message.data.severity", "message.data.protoPayload" as labels, project, timestamp, severity, payload
| json field=payload "serviceData.jobCompletedEvent.job.jobConfiguration.query.query", "status.message" as query, message
```

**Google BigQuery/Queries/Top 10 Queries by Billed GB**
```
_sourceCategory={{Logsdatasource}}  logName resource "\"jobCompletedEvent\":" "\"totalBilledBytes\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job" as labels, project, job
| json field=job "jobStatistics.totalBilledBytes", "jobConfiguration.query.query" as billed_bytes, query
```

**Google BigQuery/Queries/Top 10 Queries by Errors**
```
_sourceCategory={{Logsdatasource}}  logName resource severity "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity", "message.data.protoPayload.serviceData.jobCompletedEvent.job.jobConfiguration.query.query" as labels, project, severity, query
```

**Google BigQuery/Queries/Top 10 Queries by Latency (s)**
```
_sourceCategory={{Logsdatasource}}  logName resource "\"jobCompletedEvent\":" startTime endTime "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job.jobConfiguration.query.query" as labels, project, query
| parse regex "\"startTime\":\"(?<start_day>\d{4}-\d{2}-\d{2})T(?<start_time>\d{2}:\d{2}:\d{2})\.(?<start_millis>\d{3})[^\"]+\""
| parse regex "\"endTime\":\"(?<end_day>\d{4}-\d{2}-\d{2})T(?<end_time>\d{2}:\d{2}:\d{2})\.(?<end_millis>\d{3})[^\"]+\""
```

**Google BigQuery/Query Statistics by Project/Google BigQuery - Query Statistics by Project**
```
_sourceCategory={{Logsdatasource}}  logName resource severity startTime endTime "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity", "message.data.protoPayload.serviceData.jobCompletedEvent.job" as labels, project, severity, job
| json field=job "jobStatistics.totalBilledBytes", "jobConfiguration.query.query" as billed_bytes, query nodrop
| if(isNull(billed_bytes), 0, billed_bytes) as billed_bytes
| billed_bytes / 1073741824.f as billed_gbytes
| parse regex "\"startTime\":\"(?<start_day>\d{4}-\d{2}-\d{2})T(?<start_time>\d{2}:\d{2}:\d{2})\.(?<start_millis>\d{3})[^\"]+\""
| parse regex "\"endTime\":\"(?<end_day>\d{4}-\d{2}-\d{2})T(?<end_time>\d{2}:\d{2}:\d{2})\.(?<end_millis>\d{3})[^\"]+\""
```

**Google BigQuery/Users - New/Billed GB by User Over Time**
```
_sourceCategory = Labs/GCP/bigquery logName resource "\"jobCompletedEvent\":" "\"totalBilledBytes\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Fdata_access"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "serviceData.jobCompletedEvent.job.jobStatistics.totalBilledBytes", "authenticationInfo.principalEmail" as billed_bytes, user
```

**Google BigQuery/Users - New/Errors by User Over Time**
```
_sourceCategory = Labs/GCP/bigquery logName resource severity principalEmail "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, project, severity, user
```

**Google BigQuery/Users - New/Latency (s) by Users Over Time**
```
_sourceCategory = Labs/GCP/bigquery logName resource principalEmail "\"jobCompletedEvent\":" startTime endTime "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, project, user
| parse regex "\"startTime\":\"(?<start_day>\d{4}-\d{2}-\d{2})T(?<start_time>\d{2}:\d{2}:\d{2})\.(?<start_millis>\d{3})[^\"]+\""
| parse regex "\"endTime\":\"(?<end_day>\d{4}-\d{2}-\d{2})T(?<end_time>\d{2}:\d{2}:\d{2})\.(?<end_millis>\d{3})[^\"]+\""
```

**Google BigQuery/Users - New/Location of Users Executing Queries**
```
_sourceCategory = Labs/GCP/bigquery logName resource callerIp principalEmail "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "requestMetadata.callerIp", "authenticationInfo.principalEmail" as caller_ip, user
```

**Google BigQuery/Users - New/Location of Users With Errors**
```
_sourceCategory = Labs/GCP/bigquery logName resource callerIp principalEmail "eventName":"query_job_completed" "type":"bigquery_resource"("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "requestMetadata.callerIp", "authenticationInfo.principalEmail" as caller_ip, user
```

**Google BigQuery/Users - New/Query Executions by User Over Time**
```
_sourceCategory = Labs/GCP/bigquery logName resource principalEmail "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, project, user
```

**Google BigQuery/Users - New/Recent Query Failures by User**
```
_sourceCategory = Labs/GCP/bigquery logName resource severity principalEmail "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.timestamp", "message.data.severity", "message.data.protoPayload" as labels, project, timestamp, severity, payload
| json field=payload "authenticationInfo.principalEmail", "serviceData.jobCompletedEvent.job.jobConfiguration.query.query", "status.message" as user, query, message
```

**Google BigQuery/Users - New/Top 10 Users by Billed GB**
```
_sourceCategory = Labs/GCP/bigquery logName resource "\"jobCompletedEvent\":" "\"totalBilledBytes\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Fdata_access"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "serviceData.jobCompletedEvent.job.jobStatistics.totalBilledBytes", "authenticationInfo.principalEmail" as billed_bytes, user
```

**Google BigQuery/Users - New/Top 10 Users by Errors**
```
_sourceCategory = Labs/GCP/bigquery logName resource severity principalEmail "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, project, severity, user
```

**Google BigQuery/Users - New/Top 10 Users by Latency (s)**
```
_sourceCategory = Labs/GCP/bigquery logName resource principalEmail "\"jobCompletedEvent\":" startTime endTime "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, project, user
| parse regex "\"startTime\":\"(?<start_day>\d{4}-\d{2}-\d{2})T(?<start_time>\d{2}:\d{2}:\d{2})\.(?<start_millis>\d{3})[^\"]+\""
| parse regex "\"endTime\":\"(?<end_day>\d{4}-\d{2}-\d{2})T(?<end_time>\d{2}:\d{2}:\d{2})\.(?<end_millis>\d{3})[^\"]+\""
```

**Google BigQuery/Users - New/Top 10 Users by Query Executions**
```
_sourceCategory = Labs/GCP/bigquery logName resource principalEmail "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, project, user
```

**Google BigQuery/Users - New/User Management Operations**
```
_sourceCategory = Labs/GCP/bigquery logName resource methodName principalEmail "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, project, user
| parse regex "\"methodName\":\"(?<method>[^\"]+)\""
```

**Google BigQuery/Users/Billed GB by User Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource "\"jobCompletedEvent\":" "\"totalBilledBytes\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Fdata_access"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "serviceData.jobCompletedEvent.job.jobStatistics.totalBilledBytes", "authenticationInfo.principalEmail" as billed_bytes, user
```

**Google BigQuery/Users/Errors by User Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource severity principalEmail "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, project, severity, user
```

**Google BigQuery/Users/Latency (s) by Users Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource principalEmail "\"jobCompletedEvent\":" startTime endTime "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, project, user
| parse regex "\"startTime\":\"(?<start_day>\d{4}-\d{2}-\d{2})T(?<start_time>\d{2}:\d{2}:\d{2})\.(?<start_millis>\d{3})[^\"]+\""
| parse regex "\"endTime\":\"(?<end_day>\d{4}-\d{2}-\d{2})T(?<end_time>\d{2}:\d{2}:\d{2})\.(?<end_millis>\d{3})[^\"]+\""
```

**Google BigQuery/Users/Location of Users Executing Queries**
```
_sourceCategory={{Logsdatasource}}  logName resource callerIp principalEmail "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "requestMetadata.callerIp", "authenticationInfo.principalEmail" as caller_ip, user
```

**Google BigQuery/Users/Location of Users With Errors**
```
_sourceCategory={{Logsdatasource}}  logName resource callerIp principalEmail "eventName":"query_job_completed" "type":"bigquery_resource"("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "requestMetadata.callerIp", "authenticationInfo.principalEmail" as caller_ip, user
```

**Google BigQuery/Users/Query Executions by User Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource principalEmail "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, project, user
```

**Google BigQuery/Users/Recent Query Failures by User**
```
_sourceCategory={{Logsdatasource}}  logName resource severity principalEmail "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.timestamp", "message.data.severity", "message.data.protoPayload" as labels, project, timestamp, severity, payload
| json field=payload "authenticationInfo.principalEmail", "serviceData.jobCompletedEvent.job.jobConfiguration.query.query", "status.message" as user, query, message
```

**Google BigQuery/Users/Top 10 Users by Billed GB**
```
_sourceCategory={{Logsdatasource}}  logName resource "\"jobCompletedEvent\":" "\"totalBilledBytes\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Fdata_access"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "serviceData.jobCompletedEvent.job.jobStatistics.totalBilledBytes", "authenticationInfo.principalEmail" as billed_bytes, user
```

**Google BigQuery/Users/Top 10 Users by Errors**
```
_sourceCategory={{Logsdatasource}}  logName resource severity principalEmail "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, project, severity, user
```

**Google BigQuery/Users/Top 10 Users by Latency (s)**
```
_sourceCategory={{Logsdatasource}}  logName resource principalEmail "\"jobCompletedEvent\":" startTime endTime "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, project, user
| parse regex "\"startTime\":\"(?<start_day>\d{4}-\d{2}-\d{2})T(?<start_time>\d{2}:\d{2}:\d{2})\.(?<start_millis>\d{3})[^\"]+\""
| parse regex "\"endTime\":\"(?<end_day>\d{4}-\d{2}-\d{2})T(?<end_time>\d{2}:\d{2}:\d{2})\.(?<end_millis>\d{3})[^\"]+\""
```

**Google BigQuery/Users/Top 10 Users by Query Executions**
```
_sourceCategory={{Logsdatasource}}  logName resource principalEmail "\"jobCompletedEvent\":" "eventName":"query_job_completed" "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2F*"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, project, user
```

**Google BigQuery/Users/User Management Operations**
```
_sourceCategory={{Logsdatasource}}  logName resource methodName principalEmail "type":"bigquery_resource"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, project, user
| parse regex "\"methodName\":\"(?<method>[^\"]+)\""
```


