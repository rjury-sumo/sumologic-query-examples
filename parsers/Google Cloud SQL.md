# Parsers For Google Cloud SQL

## Parser:
```
| json "message.data.logName" as log_name
| json  "message.data.protoPayload.methodName" as method
| json  "message.data.resource.labels.project_id", "message.data.resource.labels.database_id", "message.data.resource.labels.region" as project_id, database_id, region
 `n```
### Use Cases:
Actions Over Time, Authorization Failures, Created Resources, Created Resources Over Time, Deleted Resources, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Messages by Region, Messages Over Time by Severity, Operations by Resources, Top 10 Users by Messages



## Parser:
```
| json "message.data.logName" as log_name
| json "message.data.resource.labels", "message.data.protoPayload.methodName" as labels, method
| json "message.data.protoPayload.authorizationInfo[*]" as permissions
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\"" multi
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| json field=labels "database_id", "project_id", "region" as database_id, project_id, region
 `n```
### Use Cases:
Actions Over Time, Audit Event by Severity, Authorization Failures, Created Resources, Created Resources Over Time, Deleted Resources, Deleted Resources Over Time, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Recent Authorization Failures, Recent Error Activities, Recent User Activities, Top 10 Users by Messages



## Parser:
```
| json "message.data.logName" as log_name
| json "message.data.resource.labels", "message.data.protoPayload.methodName" as labels, method
| json field=labels "database_id", "project_id", "region" as database_id, project_id, region
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
 `n```
### Use Cases:
Actions Over Time, Authorization Failures, Created Resources, Created Resources Over Time, Deleted Resources, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Top 10 Users by Messages



## Parser:
```
| json "message.data.logName" as log_name
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json "message.data.resource.labels", "message.data.protoPayload.requestMetadata.callerIp" as labels, caller_ip
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| json field=labels "database_id", "project_id", "region" as database_id, project_id, region
 `n```
### Use Cases:
Actions Over Time, Audit Event by Severity, Authorization Failures, Created Resources, Created Resources Over Time, Deleted Resources, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Recent Authorization Failures, Recent Error Activities, Top 10 Users by Messages



## Parser:
```
| json "message.data.logName" as log_name
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json "message.data.severity" as severity
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| json field=labels "database_id", "project_id", "region" as database_id, project_id, region
 `n```
### Use Cases:
Actions Over Time, Audit Event by Severity, Authorization Failures, Created Resources, Created Resources Over Time, Deleted Resources, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Top 10 Users by Messages



## Parser:
```
| json "message.data.logName" as log_name
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=payload "authenticationInfo.principalEmail" as user
| json "message.data.severity" as severity
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| json field=labels "database_id", "project_id", "region" as database_id, project_id, region
 `n```
### Use Cases:
Actions Over Time, Audit Event by Severity, Authorization Failures, Created Resources, Created Resources Over Time, Deleted Resources, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Recent Error Activities, Top 10 Users by Messages



## Parser:
```
| json "message.data.logName" as log_name
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| parse regex field=permissions "\"granted\":(?<granted>[^,]+)" multi
| json field=labels "database_id", "project_id", "region" as database_id, project_id, region
 `n```
### Use Cases:
Actions Over Time, Audit Event by Severity, Authorization Failures, Created Resources, Created Resources Over Time, Deleted Resources, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Recent Authorization Failures, Recent Error Activities, Recent User Activities, Top 10 Users by Messages



## Parser:
```
| json "message.data.logName" as log_name
| json "message.data.resource.labels", "message.data.protoPayload", "message.data.timestamp" as labels, payload, timestamp
| json field=payload "authenticationInfo.principalEmail", "requestMetadata.callerIp", "authorizationInfo[*]" as user, caller_ip, permissions
| parse regex field=permissions "\"granted\":(?<granted>[^,]+)" multi
| json field=labels "database_id", "project_id", "region" as database_id, project_id, region
 `n```
### Use Cases:
Actions Over Time, Audit Event by Severity, Authorization Failures, Created Resources, Created Resources Over Time, Deleted Resources, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Recent Authorization Failures, Recent Error Activities, Top 10 Users by Messages



## Parser:
```
| json "message.data.logName" as log_name
| json "message.data.resource.labels", "message.data.protoPayload", "message.data.timestamp", "message.data.severity" as labels, payload, timestamp, severity
| json field=payload "authenticationInfo.principalEmail", "methodName" as user, method
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| json field=labels "database_id", "project_id", "region" as database_id, project_id, region
 `n```
### Use Cases:
Actions Over Time, Audit Event by Severity, Authorization Failures, Created Resources, Created Resources Over Time, Deleted Resources, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Recent Authorization Failures, Recent Error Activities, Recent User Activities, Top 10 Users by Messages



## Parser:
```
| json "message.data.logName" as log_name
| json "message.data.resource.labels", "message.data.protoPayload", "message.data.timestamp", "message.data.severity" as labels, payload, timestamp, severity
| json field=payload "authenticationInfo.principalEmail", "methodName", "status.code", "status.message" as user, method, errcode, errmessage
| json field=labels "database_id", "project_id", "region" as database_id, project_id, region
 `n```
### Use Cases:
Actions Over Time, Audit Event by Severity, Authorization Failures, Created Resources, Created Resources Over Time, Deleted Resources, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Recent Error Activities, Top 10 Users by Messages



## Parser:
```
| json "message.data.textPayload" as message
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| parse field=message "Aborted connection * to db: '*' user: '*' host: '*' (*)" as requestId, database, user, host, errorDetails nodrop
 `n```
### Use Cases:
Aborted Connections, Actions Over Time, Audit Event by Severity, Authorization Failures, Created Resources, Created Resources Over Time, Deleted Resources, Deleted Resources Over Time, Failed Auth Attempts, Failed Auth Attempts by Host, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Log Level, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Recent Authorization Failures, Recent Error Activities, Recent User Activities, Top 10 Users by Messages



## Parser:
```
| json "message.data.textPayload", "message.data.logName" as message, logname
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
 `n```
### Use Cases:
Aborted Connections, Actions Over Time, Audit Event by Severity, Authorization Failures, Crash Recovery Attempts Over Time, Created Resources, Created Resources Over Time, Deleted Resources, Deleted Resources Over Time, Error Events - Outlier, Failed Auth Attempts, Failed Auth Attempts by Host, Failed Auth Attempts by User, Failed Authentication - Details, Failed Authentication - User Location, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Log Level, Log Level - Trend, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Recent Authorization Failures, Recent Error Activities, Recent User Activities, Recent Warning Events, Server Start and Shutdown Events Over Time, Stopped Server, Top 10 Users by Messages, Top Note Events, Top Warnings



## Parser:
```
| json "message.data.textPayload", "message.data.logName" as message, logname
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| parse field=message " [*] " as LogLevel
 `n```
### Use Cases:
Aborted Connections, Actions Over Time, Audit Event by Severity, Authorization Failures, Crash Recovery Attempts Over Time, Created Resources, Created Resources Over Time, Deleted Resources, Deleted Resources Over Time, Failed Auth Attempts, Failed Auth Attempts by Host, Failed Authentication - Details, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Log Level, Log Level - Trend, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Recent Authorization Failures, Recent Error Activities, Recent User Activities, Recent Warning Events, Top 10 Users by Messages, Top Warnings



## Parser:
```
| json "message.data.textPayload", "message.data.logName" as message, logname
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| parse field=message " [*] " as LogLevel
| parse field=message " * [Note] Access denied for user '*'@'*' (using *: *)" as requestid, user, host, authenticationType, flag nodrop
| parse field=message "[Warning] Access denied for user '*'@'*' (using *: *)" as user, host, authenticationType, flag nodrop
| parse field=message "[Note] [*] [*] Access denied for user '*'@'*' (using *: *)" as errorcode,subsystem,user,host, authenticationType, flag nodrop
 `n```
### Use Cases:
Aborted Connections, Actions Over Time, Audit Event by Severity, Authorization Failures, Crash Recovery Attempts Over Time, Created Resources, Created Resources Over Time, Deleted Resources, Deleted Resources Over Time, Error Events - Outlier, Failed Auth Attempts, Failed Auth Attempts by Host, Failed Auth Attempts by User, Failed Authentication - Details, Failed Authentication - Trend, Failed Authentication - User Location, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Log Level, Log Level - Trend, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Recent Authorization Failures, Recent Error Activities, Recent User Activities, Recent Warning Events, Server Start and Shutdown Events Over Time, Stopped Server, Top 10 Users by Messages, Top Note Events, Top Warnings



## Parser:
```
| json "message.data.textPayload", "message.data.logName" as message, logname
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| parse field=message " [*] " as LogLevel
| parse field=message " * [Note] Access denied for user '*'@'*' (using *: *)" as requestid, user, host, authenticationType, flag nodrop
| parse field=message "[Warning] Access denied for user '*'@'*' (using *: *)" as user, host, authenticationType, flag nodrop
| parse field=message "[Note] [*] [*] Access denied for user '*'@'*' (using *: *)" as errorcode,subsystem,user,host, authenticationType, flag nodrop
| parse field=message "[Note] [*] [*] Access denied for user '*'@'*' (using *: *)" as errorcode,subsystem,user,host, authenticationType, flag nodrop
 `n```
### Use Cases:
Aborted Connections, Actions Over Time, Audit Event by Severity, Authorization Failures, Crash Recovery Attempts Over Time, Created Resources, Created Resources Over Time, Deleted Resources, Deleted Resources Over Time, Failed Auth Attempts, Failed Auth Attempts by Host, Failed Auth Attempts by User, Failed Authentication - Details, Failed Authentication - User Location, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Log Level, Log Level - Trend, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Recent Authorization Failures, Recent Error Activities, Recent User Activities, Recent Warning Events, Stopped Server, Top 10 Users by Messages, Top Note Events, Top Warnings



## Parser:
```
| json "message.data.textPayload", "message.data.logName" as message, logname
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| parse field=message "[*] *" as LogLevel, msgDetails
 `n```
### Use Cases:
Aborted Connections, Actions Over Time, Audit Event by Severity, Authorization Failures, Crash Recovery Attempts Over Time, Created Resources, Created Resources Over Time, Deleted Resources, Deleted Resources Over Time, Failed Auth Attempts, Failed Auth Attempts by Host, Failed Authentication - Details, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Log Level, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Recent Authorization Failures, Recent Error Activities, Recent User Activities, Recent Warning Events, Top 10 Users by Messages, Top Warnings



## Parser:
```
| json "message.data.textPayload", "message.data.logName" as message, logname
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| parse regex field=message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @  \[(?<ip_addr>\S*?)\]" nodrop
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+" nodrop
 `n```
### Use Cases:
Aborted Connections, Actions Over Time, Audit Event by Severity, Authorization Failures, Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Created Resources, Created Resources Over Time, Deleted Resources, Deleted Resources Over Time, Error Events - Outlier, Failed Auth Attempts, Failed Auth Attempts by Host, Failed Auth Attempts by User, Failed Authentication - Details, Failed Authentication - Trend, Failed Authentication - User Location, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Log Level, Log Level - Trend, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Recent Authorization Failures, Recent Error Activities, Recent User Activities, Recent Warning Events, Server Start and Shutdown Events Over Time, Slow Queries, Slow Queries - Time Compare, Slow Queries by Hosts, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Server, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Messages, Top IP Firing Slow Queries, Top Note Events, Top Users Firing Slow Queries, Top Warnings



## Parser:
```
| json "message.data.textPayload", "message.data.logName" as message, logname
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| parse regex field=message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @  \[(?<ip_addr>\S*?)\]" nodrop
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+" nodrop
| parse regex field=query_block "SET timestamp=(?<set_timestamp>\d*);(?:\\n|\n)(?<sql_cmd>[\s\S]*);" nodrop
 `n```
### Use Cases:
Aborted Connections, Actions Over Time, Audit Event by Severity, Authorization Failures, Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Created Resources, Created Resources Over Time, Deleted Resources, Deleted Resources Over Time, Error Events - Outlier, Failed Auth Attempts, Failed Auth Attempts by Host, Failed Auth Attempts by User, Failed Authentication - Details, Failed Authentication - Trend, Failed Authentication - User Location, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Log Level, Log Level - Trend, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Recent Authorization Failures, Recent Error Activities, Recent User Activities, Recent Warning Events, Server Start and Shutdown Events Over Time, Slow Queries, Slow Queries - Time Compare, Slow Queries by Hosts, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Server, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Messages, Top IP Firing Slow Queries, Top Note Events, Top Warnings



## Parser:
```
| json "message.data.textPayload", "message.data.logName" as message, logname
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| parse regex field=message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @  \[(?<ip_addr>\S*?)\]" nodrop
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+" nodrop
| parse regex field=query_block "SET timestamp=(?<set_timestamp>\d*);(?:\\n|\n)(?<sql_cmd>[\s\S]*);" nodrop
| parse regex field=sql_cmd "[^a-zA-Z]*(?<sql_cmd_type>[a-zA-Z]+)(?:\s|\\n|\n)" nodrop
| parse field=sql_cmd "# administrator command: *" as admn_sql_cmd
 `n```
### Use Cases:
Aborted Connections, Actions Over Time, Audit Event by Severity, Authorization Failures, Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Created Resources, Created Resources Over Time, Deleted Resources, Deleted Resources Over Time, Error Events - Outlier, Failed Auth Attempts, Failed Auth Attempts by Host, Failed Auth Attempts by User, Failed Authentication - Details, Failed Authentication - Trend, Failed Authentication - User Location, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Log Level, Log Level - Trend, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Recent Authorization Failures, Recent Error Activities, Recent User Activities, Recent Warning Events, Server Start and Shutdown Events Over Time, Slow Queries, Slow Queries by Hosts, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Server, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Messages, Top IP Firing Slow Queries, Top Note Events, Top Warnings



## Parser:
```
| json "message.data.textPayload", "message.data.logName" as message, logname
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| parse regex field=message "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
 `n```
### Use Cases:
Aborted Connections, Actions Over Time, Audit Event by Severity, Authorization Failures, Crash Recovery Attempts Over Time, Created Resources, Created Resources Over Time, Deleted Resources, Deleted Resources Over Time, Failed Auth Attempts, Failed Auth Attempts by Host, Failed Auth Attempts by User, Failed Authentication - Details, Failed Authentication - User Location, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Log Level, Log Level - Trend, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Recent Authorization Failures, Recent Error Activities, Recent User Activities, Recent Warning Events, Server Start and Shutdown Events Over Time, Stopped Server, Top 10 Users by Messages, Top Note Events, Top Warnings



## Parser:
```
| json "message.data.textPayload", "message.data.logName" as message, logname
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as projectid,region,databaseid
| parse field=message "[*] *" as LogLevel, msgDetails
 `n```
### Use Cases:
Aborted Connections, Actions Over Time, Audit Event by Severity, Authorization Failures, Crash Recovery Attempts Over Time, Created Resources, Created Resources Over Time, Deleted Resources, Deleted Resources Over Time, Failed Auth Attempts, Failed Auth Attempts by Host, Failed Authentication - Details, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Log Level, Log Level - Trend, Messages by Region, Messages Over Time by Severity, Operations by Instance, Operations by Resources, Recent Authorization Failures, Recent Error Activities, Recent User Activities, Recent Warning Events, Top 10 Users by Messages, Top Note Events, Top Warnings



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, user
| json field=labels "database_id", "project_id", "region" as instance, project, region
 `n```
### Use Cases:
Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Operations by Resources, Top 10 Users by Messages



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.protoPayload.methodName" as labels, method
| json field=labels "database_id", "project_id", "region" as instance, project, region
 `n```
### Use Cases:
Authorization Failures, Created Resources, Deleted Resources, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Messages by Region, Messages Over Time by Severity, Operations by Resources, Top 10 Users by Messages



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json "message.data.resource.labels", "message.data.protoPayload.requestMetadata.callerIp" as labels, caller_ip
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| json field=labels "database_id", "project_id", "region" as instance, project, region
 `n```
### Use Cases:
Authorization Failures, Deleted Resources, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Messages by Region, Messages Over Time by Severity, Operations by Resources, Top 10 Users by Messages



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "database_id", "project_id", "region" as instance, project, region
| json field=payload "authenticationInfo.principalEmail" as user
| json "message.data.severity" as severity
 `n```
### Use Cases:
Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Messages Over Time by Severity, Operations by Resources, Top 10 Users by Messages



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "database_id", "project_id", "region" as instance, project, region
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\",\"granted\":(?<granted>[a-z]+)}" multi
 `n```
### Use Cases:
Authorization Failures, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Messages by Region, Messages Over Time by Severity, Operations by Resources, Top 10 Users by Messages



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "database_id", "project_id", "region" as instance, project, region
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\"" multi
 `n```
### Use Cases:
Authorization Failures, Created Resources, Deleted Resources, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Messages by Region, Messages Over Time by Severity, Operations by Resources, Top 10 Users by Messages



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.protoPayload", "message.data.protoPayload.requestMetadata.callerIp" as labels, payload, caller_ip nodrop
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions nodrop
| json field=labels "database_id", "project_id", "region" as instance, project, region
 `n```
### Use Cases:
Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Messages by Region, Messages Over Time by Severity, Operations by Resources, Top 10 Users by Messages



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.protoPayload", "message.data.timestamp" as labels, payload, timestamp
| json field=labels "database_id", "project_id", "region" as instance, project, region
| json field=payload "authenticationInfo.principalEmail", "requestMetadata.callerIp", "authorizationInfo[*]" as user, caller_ip, permissions
| parse regex field=permissions "\"granted\":(?<granted>(.*(?=,))),\"permission\":\"(?<action>(.*?(?=\")))" multi
 `n```
### Use Cases:
Authorization Failures, Created Resources, Deleted Resources, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Messages by Region, Messages Over Time by Severity, Operations by Resources, Top 10 Users by Messages



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.protoPayload", "message.data.timestamp" as labels, payload, timestamp
| json field=labels "database_id", "project_id", "region" as instance, project, region
| json field=payload "authenticationInfo.principalEmail", "requestMetadata.callerIp", "authorizationInfo[*]" as user, caller_ip, permissions
| parse regex field=permissions "\"permission\":\"(?<action>[a-zA-Z\.]+)\",\"granted\":(?<granted>[a-z]+)}" multi
 `n```
### Use Cases:
Google Cloud SQL - Authorization Failures



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.protoPayload", "message.data.timestamp", "message.data.severity" as labels, payload, timestamp, severity
| json field=labels "database_id", "project_id", "region" as instance, project, region
| json field=payload "authenticationInfo.principalEmail", "methodName" as user, method
 `n```
### Use Cases:
Authorization Failures, Created Resources, Deleted Resources, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Messages by Region, Messages Over Time by Severity, Operations by Resources, Top 10 Users by Messages



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.textPayload" as labels, text
| json field=labels "database_id", "project_id", "region" as instance, project, region
 `n```
### Use Cases:
Authorization Failures, Created Resources, Deleted Resources, Google Cloud SQL - Authorization Failures, Google Cloud SQL - Common Error Log Messages, Google Cloud SQL - Instance Activity, Google Cloud SQL - User Activity, Location of Activity, Messages by Region, Messages Over Time by Severity, Operations by Resources, Top 10 Users by Messages


