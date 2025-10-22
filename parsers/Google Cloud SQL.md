# Parsers For Google Cloud SQL

**Google Cloud SQL/Audit Logs/Actions Over Time**
```
_sourceCategory={{Logsdatasource}}  data "type":"cloudsql_database" methodName
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com*"
| json  "message.data.protoPayload.methodName" as method
| json  "message.data.resource.labels.project_id", "message.data.resource.labels.database_id", "message.data.resource.labels.region" as project_id, database_id, region
```

**Google Cloud SQL/Audit Logs/Audit Event by Severity**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo logName principalEmail resource timestamp "\"type\":\"cloudsql_database\""
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com*"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json "message.data.severity" as severity
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| where (islast="true" or isNull(operation))
| json field=labels "database_id", "project_id", "region" as database_id, project_id, region
```

**Google Cloud SQL/Audit Logs/Authorization Failures**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo logName principalEmail resource timestamp "\"type\":\"cloudsql_database\""
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com*"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| where !isNull(permissions)
| parse regex field=permissions "\"granted\":(?<granted>[^,]+)" multi
| where granted != "true"
| json field=labels "database_id", "project_id", "region" as database_id, project_id, region
```

**Google Cloud SQL/Audit Logs/Created Resources Over Time**
```
_sourceCategory={{Logsdatasource}}  data "type":"cloudsql_database" methodName
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com*"
| json "message.data.resource.labels", "message.data.protoPayload.methodName" as labels, method
| json "message.data.protoPayload.authorizationInfo[*]" as permissions
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\"" multi
| where method = "create"
| timeslice 1h
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| where (islast="true" or isNull(operation))
| json field=labels "database_id", "project_id", "region" as database_id, project_id, region
```

**Google Cloud SQL/Audit Logs/Deleted Resources Over Time**
```
_sourceCategory={{Logsdatasource}}  data "type":"cloudsql_database" methodName
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com*"
| json "message.data.resource.labels", "message.data.protoPayload.methodName" as labels, method
| json "message.data.protoPayload.authorizationInfo[*]" as permissions
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\"" multi
| where method = "delete"
| timeslice 1h
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| where (islast="true" or isNull(operation))
| json field=labels "database_id", "project_id", "region" as database_id, project_id, region
```

**Google Cloud SQL/Audit Logs/Location of Activity**
```
_sourceCategory={{Logsdatasource}}  data resource labels callerIp "\"type\":\"cloudsql_database\""
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com*"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json "message.data.resource.labels", "message.data.protoPayload.requestMetadata.callerIp" as labels, caller_ip
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| where (islast="true" or isNull(operation))
| json field=labels "database_id", "project_id", "region" as database_id, project_id, region
```

**Google Cloud SQL/Audit Logs/Messages Over Time by Severity**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo logName principalEmail resource timestamp "\"type\":\"cloudsql_database\""
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com*"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=payload "authenticationInfo.principalEmail" as user
| json "message.data.severity" as severity
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| where (islast="true" or isNull(operation))
| json field=labels "database_id", "project_id", "region" as database_id, project_id, region
```

**Google Cloud SQL/Audit Logs/Operations by Instance**
```
_sourceCategory={{Logsdatasource}}  data "type":"cloudsql_database" methodName
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com*"
| json "message.data.resource.labels", "message.data.protoPayload.methodName" as labels, method
| json field=labels "database_id", "project_id", "region" as database_id, project_id, region
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
```

**Google Cloud SQL/Audit Logs/Recent Authorization Failures**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo callerIp logName principalEmail resource timestamp "\"type\":\"cloudsql_database\""
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com*"
| json "message.data.resource.labels", "message.data.protoPayload", "message.data.timestamp" as labels, payload, timestamp
| json field=payload "authenticationInfo.principalEmail", "requestMetadata.callerIp", "authorizationInfo[*]" as user, caller_ip, permissions
| where !isNull(permissions)
| parse regex field=permissions "\"granted\":(?<granted>[^,]+)" multi
| where granted != "true"
| lookup country_name, city from geo://location on ip=caller_ip
| json field=labels "database_id", "project_id", "region" as database_id, project_id, region
```

**Google Cloud SQL/Audit Logs/Recent Error Activities**
```
_sourceCategory={{Logsdatasource}}  logName principalEmail resource timestamp "\"type\":\"cloudsql_database\""
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com*"
| json "message.data.resource.labels", "message.data.protoPayload", "message.data.timestamp", "message.data.severity" as labels, payload, timestamp, severity
| where severity="ERROR"
| json field=payload "authenticationInfo.principalEmail", "methodName", "status.code", "status.message" as user, method, errcode, errmessage
| json field=labels "database_id", "project_id", "region" as database_id, project_id, region
```

**Google Cloud SQL/Audit Logs/Recent User Activities**
```
_sourceCategory={{Logsdatasource}}  logName principalEmail resource timestamp "\"type\":\"cloudsql_database\""
| json "message.data.logName" as log_name
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com*"
| json "message.data.resource.labels", "message.data.protoPayload", "message.data.timestamp", "message.data.severity" as labels, payload, timestamp, severity
| json field=payload "authenticationInfo.principalEmail", "methodName" as user, method
| json "message.data.operation","message.data.operation.last" as operation,islast nodrop
| where (islast="true" or isNull(operation))
| json field=labels "database_id", "project_id", "region" as database_id, project_id, region
```

**Google Cloud SQL/Authorization Failures/Google Cloud SQL - Authorization Failures**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo callerIp logName principalEmail resource timestamp "\"type\":\"cloudsql_database\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/*"
| json "message.data.resource.labels", "message.data.protoPayload", "message.data.timestamp" as labels, payload, timestamp
| json field=labels "database_id", "project_id", "region" as instance, project, region
| json field=payload "authenticationInfo.principalEmail", "requestMetadata.callerIp", "authorizationInfo[*]" as user, caller_ip, permissions
| where !isNull(permissions)
| parse regex field=permissions "\"granted\":(?<granted>(.*(?=,))),\"permission\":\"(?<action>(.*?(?=\")))" multi
```

**Google Cloud SQL/Common Error Log Messages/Google Cloud SQL - Common Error Log Messages**
```
_sourceCategory={{Logsdatasource}}  logName textPayload "\"type\":\"cloudsql_database\"" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/*"
| json "message.data.resource.labels", "message.data.textPayload" as labels, text
| json field=labels "database_id", "project_id", "region" as instance, project, region
```

**Google Cloud SQL/Instance Activity/Google Cloud SQL - Instance Activity**
```
_sourceCategory={{Logsdatasource}}  data "type":"cloudsql_database" methodName
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/*"
| json "message.data.resource.labels", "message.data.protoPayload.methodName" as labels, method
| json field=labels "database_id", "project_id", "region" as instance, project, region
```

**Google Cloud SQL/MySQL - Error Logs/Aborted Connections**
```
_sourceCategory={{Logsdatasource}}  "Aborted connection"
| json "message.data.textPayload" as message
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse field=message "Aborted connection * to db: '*' user: '*' host: '*' (*)" as requestId, database, user, host, errorDetails nodrop
```

**Google Cloud SQL/MySQL - Error Logs/Crash Recovery Attempts Over Time**
```
_sourceCategory={{Logsdatasource}}  "Starting crash recovery"
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql.err"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse regex field=message "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
```

**Google Cloud SQL/MySQL - Error Logs/Error Events - Outlier**
```
_sourceCategory={{Logsdatasource}} 
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql.err"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
```

**Google Cloud SQL/MySQL - Error Logs/Failed Auth Attempts**
```
_sourceCategory={{Logsdatasource}}  "Access denied for user"
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql.err"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
```

**Google Cloud SQL/MySQL - Error Logs/Failed Auth Attempts by Host**
```
_sourceCategory={{Logsdatasource}}  "Access denied for user"
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql.err"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse field=message " [*] " as LogLevel
| parse field=message " * [Note] Access denied for user '*'@'*' (using *: *)" as requestid, user, host, authenticationType, flag nodrop
| parse field=message "[Warning] Access denied for user '*'@'*' (using *: *)" as user, host, authenticationType, flag nodrop
| parse field=message "[Note] [*] [*] Access denied for user '*'@'*' (using *: *)" as errorcode,subsystem,user,host, authenticationType, flag nodrop
```

**Google Cloud SQL/MySQL - Error Logs/Failed Auth Attempts by User**
```
_sourceCategory={{Logsdatasource}}  "Access denied for user"
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql.err"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse field=message " [*] " as LogLevel
| parse field=message " * [Note] Access denied for user '*'@'*' (using *: *)" as requestid, user, host, authenticationType, flag nodrop
| parse field=message "[Warning] Access denied for user '*'@'*' (using *: *)" as user, host, authenticationType, flag nodrop
| parse field=message "[Note] [*] [*] Access denied for user '*'@'*' (using *: *)" as errorcode,subsystem,user,host, authenticationType, flag nodrop
```

**Google Cloud SQL/MySQL - Error Logs/Failed Authentication - Details**
```
_sourceCategory={{Logsdatasource}}  "Access denied for user"
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql.err"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse field=message " [*] " as LogLevel
| parse field=message " * [Note] Access denied for user '*'@'*' (using *: *)" as requestid, user, host, authenticationType, flag nodrop
| parse field=message "[Warning] Access denied for user '*'@'*' (using *: *)" as user, host, authenticationType, flag nodrop
| parse field=message "[Note] [*] [*] Access denied for user '*'@'*' (using *: *)" as errorcode,subsystem,user,host, authenticationType, flag nodrop
```

**Google Cloud SQL/MySQL - Error Logs/Failed Authentication - Trend**
```
_sourceCategory={{Logsdatasource}}  "Access denied for user"
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql.err"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse field=message " [*] " as LogLevel
| parse field=message " * [Note] Access denied for user '*'@'*' (using *: *)" as requestid, user, host, authenticationType, flag nodrop
| parse field=message "[Warning] Access denied for user '*'@'*' (using *: *)" as user, host, authenticationType, flag nodrop
| parse field=message "[Note] [*] [*] Access denied for user '*'@'*' (using *: *)" as errorcode,subsystem,user,host, authenticationType, flag nodrop
```

**Google Cloud SQL/MySQL - Error Logs/Failed Authentication - User Location**
```
_sourceCategory={{Logsdatasource}}  "Access denied for user"
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql.err"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse field=message " [*] " as LogLevel
| parse field=message " * [Note] Access denied for user '*'@'*' (using *: *)" as requestid, user, host, authenticationType, flag nodrop
| parse field=message "[Warning] Access denied for user '*'@'*' (using *: *)" as user, host, authenticationType, flag nodrop
| parse field=message "[Note] [*] [*] Access denied for user '*'@'*' (using *: *)" as errorcode,subsystem,user,host, authenticationType, flag nodrop
| parse field=message "[Note] [*] [*] Access denied for user '*'@'*' (using *: *)" as errorcode,subsystem,user,host, authenticationType, flag nodrop
```

**Google Cloud SQL/MySQL - Error Logs/Log Level**
```
_sourceCategory={{Logsdatasource}} 
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql.err"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse field=message " [*] " as LogLevel
```

**Google Cloud SQL/MySQL - Error Logs/Log Level - Trend**
```
_sourceCategory={{Logsdatasource}} 
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql.err"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse field=message " [*] " as LogLevel
```

**Google Cloud SQL/MySQL - Error Logs/Recent Warning Events**
```
_sourceCategory={{Logsdatasource}}  Warning
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql.err"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse field=message "[*] *" as LogLevel, msgDetails
```

**Google Cloud SQL/MySQL - Error Logs/Server Start and Shutdown Events Over Time**
```
_sourceCategory={{Logsdatasource}}  mysqld ("ready for connections." or "Shutdown complete" or "Terminated." or "Normal shutdown" or "Shutting down" or "starting as process")
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql.err"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse regex field=message "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
```

**Google Cloud SQL/MySQL - Error Logs/Stopped Server**
```
_sourceCategory={{Logsdatasource}}  mysqld ("ready for connections."  or "Terminated." or "Shutdown complete" or "Normal shutdown")
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql.err"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse regex field=message "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
```

**Google Cloud SQL/MySQL - Error Logs/Top Note Events**
```
_sourceCategory={{Logsdatasource}}  Note
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql.err"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as projectid,region,databaseid
| where projectid matches "{{project_id}}" AND region matches "{{region}}" AND databaseid matches "{{database_id}}"
| parse field=message "[*] *" as LogLevel, msgDetails
```

**Google Cloud SQL/MySQL - Error Logs/Top Warnings**
```
_sourceCategory={{Logsdatasource}}  Warning
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql.err"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse field=message "[*] *" as LogLevel, msgDetails
```

**Google Cloud SQL/MySQL - Slow Query Logs/Avg Execution Time by Slow SQL Cmds**
```
_sourceCategory={{Logsdatasource}}  "User@Host" "Query_time" 
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql-slow.log"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse regex field=message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @  \[(?<ip_addr>\S*?)\]" nodrop
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+" nodrop
| parse regex field=query_block "SET timestamp=(?<set_timestamp>\d*);(?:\\n|\n)(?<sql_cmd>[\s\S]*);" nodrop
| parse regex field=sql_cmd "[^a-zA-Z]*(?<sql_cmd_type>[a-zA-Z]+)(?:\s|\\n|\n)" nodrop
| parse field=sql_cmd "# administrator command: *" as admn_sql_cmd
```

**Google Cloud SQL/MySQL - Slow Query Logs/Slow Queries**
```
_sourceCategory={{Logsdatasource}}  "User@Host" "Query_time"
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql-slow.log"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse regex field=message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @  \[(?<ip_addr>\S*?)\]" nodrop
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+" nodrop
| parse regex field=query_block "SET timestamp=(?<set_timestamp>\d*);(?:\\n|\n)(?<sql_cmd>[\s\S]*);" nodrop
```

**Google Cloud SQL/MySQL - Slow Query Logs/Slow Queries - Time Compare**
```
_sourceCategory={{Logsdatasource}}  "User@Host" "Query_time" 
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql-slow.log"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse regex field=message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @  \[(?<ip_addr>\S*?)\]" nodrop
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+" nodrop
| parse regex field=query_block "SET timestamp=(?<set_timestamp>\d*);(?:\\n|\n)(?<sql_cmd>[\s\S]*);" nodrop
```

**Google Cloud SQL/MySQL - Slow Query Logs/Slow Queries by Hosts**
```
_sourceCategory={{Logsdatasource}}  "User@Host" "Query_time" 
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql-slow.log"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse regex field=message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @  \[(?<ip_addr>\S*?)\]" nodrop
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+" nodrop
```

**Google Cloud SQL/MySQL - Slow Query Logs/Slow Queries Over Time**
```
_sourceCategory={{Logsdatasource}}  "User@Host" "Query_time" 
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql-slow.log"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse regex field=message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @  \[(?<ip_addr>\S*?)\]" nodrop
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+" nodrop
```

**Google Cloud SQL/MySQL - Slow Query Logs/Slow Query by Cmd Type**
```
_sourceCategory={{Logsdatasource}}  "User@Host" "Query_time" 
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql-slow.log"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse regex field=message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @  \[(?<ip_addr>\S*?)\]" nodrop
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+" nodrop
| parse regex field=query_block "SET timestamp=(?<set_timestamp>\d*);(?:\\n|\n)(?<sql_cmd>[\s\S]*);" nodrop
| num(query_time) as query_time
| where query_time >= {{slow_query_latency}}
| parse regex field=sql_cmd "[^a-zA-Z]*(?<sql_cmd_type>[a-zA-Z]+)(?:\s|\\n|\n)" nodrop
| parse field=sql_cmd "# administrator command: *" as admn_sql_cmd
```

**Google Cloud SQL/MySQL - Slow Query Logs/Top 10 Slow Queries by Average Execution Time**
```
_sourceCategory={{Logsdatasource}}  "User@Host" "Query_time" 
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql-slow.log"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse regex field=message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @  \[(?<ip_addr>\S*?)\]" nodrop
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+" nodrop
| parse regex field=query_block "SET timestamp=(?<set_timestamp>\d*);(?:\\n|\n)(?<sql_cmd>[\s\S]*);" nodrop
```

**Google Cloud SQL/MySQL - Slow Query Logs/Top IP Firing Slow Queries**
```
_sourceCategory={{Logsdatasource}}  "User@Host" "Query_time" 
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql-slow.log"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse regex field=message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @  \[(?<ip_addr>\S*?)\]" nodrop
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+" nodrop
```

**Google Cloud SQL/MySQL - Slow Query Logs/Top Users Firing Slow Queries**
```
_sourceCategory={{Logsdatasource}}  "User@Host" "Query_time" 
| json "message.data.textPayload", "message.data.logName" as message, logname
| where logname matches "projects/*/logs/cloudsql.googleapis.com%2Fmysql-slow.log"
| json "message.data.resource.labels.project_id","message.data.resource.labels.region","message.data.resource.labels.database_id" as project_id,region,database_id
| where toLowerCase(project_id) matches "{{project_id}}" AND toLowerCase(region) matches "{{region}}" AND toLowerCase(database_id) matches "{{database_id}}"
| parse regex field=message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @  \[(?<ip_addr>\S*?)\]" nodrop
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+" nodrop
```

**Google Cloud SQL/Overview - New/Authorization Failures**
```
_sourceCategory = Labs/GCP/sql authorizationInfo logName principalEmail resource timestamp "\"type\":\"cloudsql_database\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/*"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "database_id", "project_id", "region" as instance, project, region
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| where !isNull(permissions)
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\",\"granted\":(?<granted>[a-z]+)}" multi
```

**Google Cloud SQL/Overview - New/Created Resources**
```
_sourceCategory = Labs/GCP/sql authorizationInfo logName principalEmail resource timestamp "\"type\":\"cloudsql_database\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/*"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "database_id", "project_id", "region" as instance, project, region
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| where !isNull(permissions)
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\"" multi
```

**Google Cloud SQL/Overview - New/Deleted Resources**
```
_sourceCategory = Labs/GCP/sql authorizationInfo logName principalEmail resource timestamp "\"type\":\"cloudsql_database\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/*"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "database_id", "project_id", "region" as instance, project, region
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| where !isNull(permissions)
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\"" multi
```

**Google Cloud SQL/Overview - New/Location of Activity**
```
_sourceCategory = Labs/GCP/sql data resource labels callerIp "\"type\":\"cloudsql_database\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/*"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json "message.data.resource.labels", "message.data.protoPayload.requestMetadata.callerIp" as labels, caller_ip
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| json field=labels "database_id", "project_id", "region" as instance, project, region
```

**Google Cloud SQL/Overview - New/Messages by Region**
```
_sourceCategory = Labs/GCP/sql data resource labels callerIp "\"type\":\"cloudsql_database\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/*"
| json "message.data.resource.labels", "message.data.protoPayload", "message.data.protoPayload.requestMetadata.callerIp" as labels, payload, caller_ip nodrop
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions nodrop
| json field=labels "database_id", "project_id", "region" as instance, project, region
```

**Google Cloud SQL/Overview - New/Messages Over Time by Severity**
```
_sourceCategory = Labs/GCP/sql authorizationInfo logName principalEmail resource timestamp "\"type\":\"cloudsql_database\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/*"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "database_id", "project_id", "region" as instance, project, region
| json field=payload "authenticationInfo.principalEmail" as user
| json "message.data.severity" as severity
```

**Google Cloud SQL/Overview - New/Operations by Resources**
```
_sourceCategory = Labs/GCP/sql authorizationInfo logName principalEmail resource timestamp "\"type\":\"cloudsql_database\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/*"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "database_id", "project_id", "region" as instance, project, region
| json field=payload "authenticationInfo.principalEmail", "authorizationInfo[*]" as user, permissions
| where !isNull(permissions)
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\"" multi
```

**Google Cloud SQL/Overview - New/Top 10 Users by Messages**
```
_sourceCategory = Labs/GCP/sql logName principalEmail resource timestamp "\"type\":\"cloudsql_database\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/*"
| json "message.data.resource.labels", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, user
| json field=labels "database_id", "project_id", "region" as instance, project, region
```

**Google Cloud SQL/User Activity/Google Cloud SQL - User Activity**
```
_sourceCategory={{Logsdatasource}}  logName principalEmail resource timestamp "\"type\":\"cloudsql_database\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/*"
| json "message.data.resource.labels", "message.data.protoPayload", "message.data.timestamp", "message.data.severity" as labels, payload, timestamp, severity
| json field=labels "database_id", "project_id", "region" as instance, project, region
| json field=payload "authenticationInfo.principalEmail", "methodName" as user, method
```


