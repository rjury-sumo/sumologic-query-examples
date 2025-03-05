# Parsers For Google BigQuery

## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id" as labels, project
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id" as labels, project
| parse regex "\"methodName\":\"(?<service>[^\"]+)\.(?<method>[^\"]+)\""
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, project, user
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, project, user
| parse regex "\"methodName\":\"(?<method>[^\"]+)\""
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, project, user
| parse regex "\"startTime\":\"(?<start_day>\d{4}-\d{2}-\d{2})T(?<start_time>\d{2}:\d{2}:\d{2})\.(?<start_millis>\d{3})[^\"]+\""
| parse regex "\"endTime\":\"(?<end_day>\d{4}-\d{2}-\d{2})T(?<end_time>\d{2}:\d{2}:\d{2})\.(?<end_millis>\d{3})[^\"]+\""
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.methodName" as labels, project, method
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.requestMetadata.callerIp" as labels, project, caller_ip
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job.jobConfiguration.query.query" as labels, project, query
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job.jobConfiguration.query.query" as labels, project, query
| parse regex "\"startTime\":\"(?<start_day>\d{4}-\d{2}-\d{2})T(?<start_time>\d{2}:\d{2}:\d{2})\.(?<start_millis>\d{3})[^\"]+\""
| parse regex "\"endTime\":\"(?<end_day>\d{4}-\d{2}-\d{2})T(?<end_time>\d{2}:\d{2}:\d{2})\.(?<end_millis>\d{3})[^\"]+\""
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job.jobStatistics.totalBilledBytes" as labels, project, billed_bytes
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.serviceData.jobCompletedEvent.job" as labels, project, job
| json field=job "jobStatistics.totalBilledBytes", "jobConfiguration.query.query" as billed_bytes, query
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "requestMetadata.callerIp", "authenticationInfo.principalEmail" as caller_ip, user
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "requestMetadata.callerIp", "serviceData.jobCompletedEvent.job.jobConfiguration.query.query" as caller_ip, query
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "serviceData.jobCompletedEvent.job.jobStatistics.totalBilledBytes", "authenticationInfo.principalEmail" as billed_bytes, user
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity" as labels, project, severity
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity" as labels, project, severity
| parse regex "\"methodName\":\"(?<service>[^\"]+)\.(?<method>[^\"]+)\""
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, project, severity, user
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity", "message.data.protoPayload.methodName" as labels, project, severity, method
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity", "message.data.protoPayload.serviceData.jobCompletedEvent.job.jobConfiguration.query.query" as labels, project, severity, query
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.severity", "message.data.protoPayload.serviceData.jobCompletedEvent.job" as labels, project, severity, job
| json field=job "jobStatistics.totalBilledBytes", "jobConfiguration.query.query" as billed_bytes, query nodrop
| parse regex "\"startTime\":\"(?<start_day>\d{4}-\d{2}-\d{2})T(?<start_time>\d{2}:\d{2}:\d{2})\.(?<start_millis>\d{3})[^\"]+\""
| parse regex "\"endTime\":\"(?<end_day>\d{4}-\d{2}-\d{2})T(?<end_time>\d{2}:\d{2}:\d{2})\.(?<end_millis>\d{3})[^\"]+\""
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.timestamp", "message.data.severity", "message.data.protoPayload" as labels, project, timestamp, severity, payload
| json field=payload "authenticationInfo.principalEmail", "methodName", "status.message" as user, method, message
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.timestamp", "message.data.severity", "message.data.protoPayload" as labels, project, timestamp, severity, payload
| json field=payload "authenticationInfo.principalEmail", "serviceData.jobCompletedEvent.job.jobConfiguration.query.query", "status.message" as user, query, message
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.timestamp", "message.data.severity", "message.data.protoPayload" as labels, project, timestamp, severity, payload
| json field=payload "serviceData.jobCompletedEvent.job.jobConfiguration.query.query", "status.message" as query, message
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.authorizationInfo[*]" as labels, project, permissions
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)" multi nodrop
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload.authorizationInfo[*]" as labels, project, permissions
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)}" multi nodrop
 `n```
### Use Cases:
Authorization Failures Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Location of Authorization Failures, Recent Operation Failures, Table Service Operations Over Time



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "authorizationInfo[*]", "requestMetadata.callerIp" as permissions, caller_ip
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)" multi nodrop
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as labels, project, payload
| json field=payload "authorizationInfo[*]", "requestMetadata.callerIp" as permissions, caller_ip
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)}" multi nodrop
 `n```
### Use Cases:
Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Location of Authorization Failures, Recent Operation Failures



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.timestamp", "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as timestamp, labels, project, payload
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]", "requestMetadata.callerIp" as user, permissions, caller_ip
| parse regex field=permissions "\"permission\":\"(?<action>[a-zA-Z\.]+)\"" multi
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)" multi nodrop
 `n```
### Use Cases:
Authorization Failures Over Time, Billed GB by User Over Time, Billed GB Over Time, Billed GB, Latency (s), Errors Over Time, Dataset Service Operation Error Outliers, Dataset Service Operations Over Time, Errors by User Over Time, Errors Over Time, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Latency (s) by Users Over Time, Latency (s) Over Time, Location of Authorization Failures, Location of Failed Executions, Location of Query Requests, Location of Users Executing Queries, Location of Users With Errors, Operation Failure Percentage, Operation Failures by Project, Operations, Operations Breakdown, Operations by Project, Operations Over Time, Query Executions by User Over Time, Query Request Locations, Query Statistics by Project, Recent Authorization Failures, Recent Operation Failures, Recent Query Failures, Recent Query Failures by User, Table Service Operation Error Outliers, Table Service Operations Over Time, Top 10 Queries by Billed GB, Top 10 Queries by Errors, Top 10 Queries by Latency (s), Top 10 Users by Billed GB, Top 10 Users by Errors, Top 10 Users by Latency (s), Top 10 Users by Query Executions, Top Projects by Billed GB, User Management Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.timestamp", "message.data.resource.labels", "message.data.resource.labels.project_id", "message.data.protoPayload" as timestamp, labels, project, payload
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]", "requestMetadata.callerIp" as user, permissions, caller_ip
| parse regex field=permissions "\"permission\":\"(?<action>[a-zA-Z\.]+)\"" multi
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)}" multi nodrop
 `n```
### Use Cases:
Authorization Failures Over Time, Dataset Service Operation Error Outliers, Failed Operation Locations, Google BigQuery - Management Operation Errors by Project, Google BigQuery - Management Operations by Project, Google BigQuery - Query Statistics by Project, Location of Authorization Failures, Operations, Operations by Project, Recent Authorization Failures, Recent Operation Failures, Table Service Operation Error Outliers, Table Service Operations Over Time


