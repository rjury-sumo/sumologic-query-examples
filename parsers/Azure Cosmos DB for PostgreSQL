# Parsers For Azure Cosmos DB for PostgreSQL

## Parser:
```
| JSON "category", "operationName", "time","level","resultType", "properties.title", "properties.details", "properties.currentHealthStatus", "properties.type", "properties.cause" as category, operationName, time,level,resultType, title, details, currentHealthStatus, type, cause nodrop
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Server, Errors by Sql Errcode, Log by Severity, Recent Delete Operations, Recent Resource Health Incidents, Recent Write Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 operations that caused the most errors, Total Errors, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.currentHealthStatus" as category, currentHealthStatus
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Server, Errors by Sql Errcode, Log by Severity, Recent Delete Operations, Recent Write Operations, Resource Health by  Status, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 operations that caused the most errors, Total Errors, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.errorLevel" as category, errorLevel
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Server, Errors by Sql Errcode, Log by Severity, Recent Delete Operations, Recent Write Operations, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 operations that caused the most errors, Total Errors, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.errorLevel", "properties.message", "properties.sqlerrcode" as category, errorLevel, message, sqlerrcode 
| parse field=message "connection received: host=[*]" as ip
```
### Use Cases:
Average Query Duration, Average Query Duration by Server, Connection Errors, Connections Authorized by  Database - Over Time, Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Logical Server Name, Errors by Server, Errors by Sql Errcode, Failed Authentication by Server - Over Time, Failed Authentications, Failed Authentications by Server and User, Geolocation of Incoming Connections, Log by Severity, LogLevel Distribution, Nodes by Cluster, Query Distribution by Duration (excluding citus extension), Query Execution Statistics, Query Executions by Server, Recent connection errors, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recently Denied Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 Longest sessions, Top 10 operations that caused the most errors, Top 10 Query Syntax Errors, Top 3 Common Errors by Server, Total Errors, Total Queries, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.errorLevel", "properties.message", "properties.sqlerrcode", "properties.LogicalServerName" as category, errorLevel, message, sqlerrcode, server_name 
| parse regex field=message "user=(?<user>[\S]+) database=(?<database>[\S]+)"
```
### Use Cases:
Average Query Duration, Average Query Duration by Server, Connection Errors, Connections Authorized by  Database - Over Time, Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Logical Server Name, Errors by Server, Errors by Sql Errcode, Failed Authentication by Server - Over Time, Failed Authentications, Failed Authentications by Server and User, Log by Severity, LogLevel Distribution, Nodes by Cluster, Query Distribution by Duration (excluding citus extension), Query Execution Statistics, Query Executions by Server, Recent connection errors, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 Longest sessions, Top 10 operations that caused the most errors, Top 10 Query Syntax Errors, Top 3 Common Errors by Server, Total Errors, Total Queries, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.errorLevel", "properties.message", "properties.sqlerrcode", "properties.ReplicaRole" as category, errorLevel, message, sqlerrcode, ReplicaRole nodrop
| parse field=message "* [*][*] : * *" as time, process_id, transaction_id, application, error_message
```
### Use Cases:
Database Shut Down Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Sql Errcode, Recent Delete Operations, Recent Write Operations, Top 10 Fatal and Panic Errors, Top 10 operations that caused the most errors, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.errorLevel", "properties.statement", "properties.message", "properties.sqlerrcode", "properties.LogicalServerName" as category, errorLevel, statement, message, sqlerrcode, server_name
| parse field=message "* [*][*] : * *" as time, process_id, transaction_id, application, error_message
```
### Use Cases:
Connection Errors, Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Server, Errors by Sql Errcode, Log by Severity, LogLevel Distribution, Nodes by Cluster, Query Distribution by Duration (excluding citus extension), Query Execution Statistics, Query Executions by Server, Recent connection errors, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 Longest sessions, Top 10 operations that caused the most errors, Top 10 Query Syntax Errors, Top 3 Common Errors by Server, Total Errors, Total Queries, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.errorLevel", "properties.statement", "properties.message", "properties.sqlerrcode", "properties.ReplicaRole" as category, errorLevel, statement, message, sqlerrcode, ReplicaRole
| parse field=message "* [*][*] : * *" as time, process_id, transaction_id, application, error_message
```
### Use Cases:
Database Shut Down Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Sql Errcode, Recent Delete Operations, Recent Write Operations, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 operations that caused the most errors, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.errorLevel", "properties.statement", "properties.message", "properties.sqlerrcode", "properties.ReplicaRole", "properties.LogicalServerName" as category, errorLevel, statement, message, sqlerrcode, ReplicaRole, server_name
| parse regex field=message "duration: (?<execution_time_ms>[\S]+) ms" 
```
### Use Cases:
Average Query Duration, Average Query Duration by Server, Connection Errors, Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Logical Server Name, Errors by Server, Errors by Sql Errcode, Log by Severity, LogLevel Distribution, Nodes by Cluster, Query Distribution by Duration (excluding citus extension), Query Execution Statistics, Query Executions by Server, Recent connection errors, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 Longest sessions, Top 10 operations that caused the most errors, Top 10 Query Syntax Errors, Top 3 Common Errors by Server, Total Errors, Total Queries, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.incidentType", "properties.service", "properties.region", "properties.impactedServices" as category, incidentType, service, service_region, impactedServices nodrop
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Server, Errors by Sql Errcode, Log by Severity, Recent Delete Operations, Recent Resource Health Incidents, Recent Write Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 operations that caused the most errors, Total Errors, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.incidentType", "properties.service", "properties.region", "properties.impactedServices" as category, incidentType, service, service_region, impactedServices nodrop
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Server, Errors by Sql Errcode, Log by Severity, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 operations that caused the most errors, Total Errors, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.LogicalServerName", "properties.errorLevel" as category, server_name, errorLevel
```
### Use Cases:
Connection Errors, Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Logical Server Name, Errors by Server, Errors by Sql Errcode, Log by Severity, LogLevel Distribution, Nodes by Cluster, Query Distribution by Duration (excluding citus extension), Query Execution Statistics, Query Executions by Server, Recent connection errors, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 Longest sessions, Top 10 operations that caused the most errors, Top 10 Query Syntax Errors, Top 3 Common Errors by Server, Total Errors, Total Queries, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.LogicalServerName", "properties.message" as category, server_name, message 
| parse field=message "authentication failed for user \"*\"" as user
```
### Use Cases:
Average Query Duration, Average Query Duration by Server, Connection Errors, Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Logical Server Name, Errors by Server, Errors by Sql Errcode, Failed Authentication by Server - Over Time, Failed Authentications, Failed Authentications by Server and User, Log by Severity, LogLevel Distribution, Nodes by Cluster, Query Distribution by Duration (excluding citus extension), Query Execution Statistics, Query Executions by Server, Recent connection errors, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 Longest sessions, Top 10 operations that caused the most errors, Top 10 Query Syntax Errors, Top 3 Common Errors by Server, Total Errors, Total Queries, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.LogicalServerName", "properties.message" as category, server_name, message | where message matches /fail/ and message matches /authentication/ 
```
### Use Cases:
Average Query Duration, Average Query Duration by Server, Connection Errors, Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Logical Server Name, Errors by Server, Errors by Sql Errcode, Failed Authentication by Server - Over Time, Failed Authentications, Log by Severity, LogLevel Distribution, Nodes by Cluster, Query Distribution by Duration (excluding citus extension), Query Execution Statistics, Query Executions by Server, Recent connection errors, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 Longest sessions, Top 10 operations that caused the most errors, Top 10 Query Syntax Errors, Top 3 Common Errors by Server, Total Errors, Total Queries, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.LogicalServerName", "properties.message" as category, server_name, message | where message matches /failed/ and message matches /authentication/ 
```
### Use Cases:
Average Query Duration, Average Query Duration by Server, Connection Errors, Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Logical Server Name, Errors by Server, Errors by Sql Errcode, Failed Authentications, Log by Severity, LogLevel Distribution, Nodes by Cluster, Query Distribution by Duration (excluding citus extension), Query Execution Statistics, Query Executions by Server, Recent connection errors, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 Longest sessions, Top 10 operations that caused the most errors, Top 10 Query Syntax Errors, Top 3 Common Errors by Server, Total Errors, Total Queries, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.message", "properties.ReplicaRole" as category, message, ReplicaRole
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Sql Errcode, Recent Delete Operations, Recent Write Operations, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 operations that caused the most errors, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.sqlerrcode", "properties.errorLevel" as category, sqlerrcode, errorLevel
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Sql Errcode, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.sqlerrcode", "properties.errorLevel", "properties.LogicalServerName" as category, sqlerrcode, errorLevel, server_name
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Server, Errors by Sql Errcode, Recent Delete Operations, Recent Write Operations, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 operations that caused the most errors, Total Errors, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.sqlerrcode", "properties.errorLevel", "properties.LogicalServerName" as category, sqlerrcode,errorLevel, server_name
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Server, Errors by Sql Errcode, Recent Delete Operations, Recent Write Operations, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 operations that caused the most errors, Total Errors, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.sqlerrcode", "properties.errorLevel", "properties.LogicalServerName","properties.message" as category, sqlerrcode,errorLevel, server_name, message
| parse field=message "* [*][*] : * *" as time, process_id, transaction_id, application, error_message
```
### Use Cases:
Connection Errors, Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Server, Errors by Sql Errcode, Log by Severity, LogLevel Distribution, Nodes by Cluster, Recent connection errors, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 Longest sessions, Top 10 operations that caused the most errors, Top 3 Common Errors by Server, Total Errors, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.sqlerrcode", "properties.LogicalServerName", "properties.errorLevel" as category, sqlerrcode, server_name, errorLevel
```
### Use Cases:
Connection Errors, Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Server, Errors by Sql Errcode, Log by Severity, Recent connection errors, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 Longest sessions, Top 10 operations that caused the most errors, Total Errors, Users / Applications by Operation type



## Parser:
```
| json "properties.LogicalServerName", "properties.errorLevel", "properties.ReplicaRole", "properties.message", "properties.statement", "properties.sqlerrcode", "properties.timestamp" as server_name, errorLevel, replica_role, message, statement, sqlerrorcode, timestamp
```
### Use Cases:
Average Query Duration, Average Query Duration by Server, Connection Errors, Connections Authorized by  Database - Over Time, Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Logical Server Name, Errors by Server, Errors by Sql Errcode, Failed Authentication by Server - Over Time, Failed Authentications, Failed Authentications by Server and User, Log by Severity, LogLevel Distribution, Nodes by Cluster, Query Distribution by Duration (excluding citus extension), Query Execution Statistics, Query Executions by Server, Recent connection errors, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recently Denied Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 Longest sessions, Top 10 operations that caused the most errors, Top 10 Query Syntax Errors, Top 3 Common Errors by Server, Total Errors, Total Queries, Users / Applications by Operation type



## Parser:
```
| json "properties.LogicalServerName", "properties.errorLevel", "properties.ReplicaRole", "properties.message", "properties.statement", "properties.timestamp" as server_name, errorLevel, replica_role, message, statement, timestamp
```
### Use Cases:
Connection Errors, Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Server, Errors by Sql Errcode, Log by Severity, Recent connection errors, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 operations that caused the most errors, Total Errors, Users / Applications by Operation type



## Parser:
```
| json "properties.LogicalServerName", "properties.errorLevel", "properties.ReplicaRole", "properties.message", "properties.statement", "properties.timestamp" as server_name, errorLevel, replica_role, message, statement, timestamp
| parse field=message "* UTC [*][*] : *" as time, process_id, transaction_id, error_message
```
### Use Cases:
Connection Errors, Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Server, Errors by Sql Errcode, Log by Severity, Recent connection errors, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 operations that caused the most errors, Total Errors, Users / Applications by Operation type



## Parser:
```
| json "properties.LogicalServerName", "properties.errorLevel", "properties.ReplicaRole", "properties.message", "properties.statement", "properties.timestamp" as server_name, errorLevel, replica_role, message, statement, timestamp
| parse field=message "session time: * user=* database=* host=*" as time, db_user, database, host
```
### Use Cases:
Connection Errors, Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Server, Errors by Sql Errcode, Log by Severity, Recent connection errors, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 Longest sessions, Top 10 operations that caused the most errors, Total Errors, Users / Applications by Operation type



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid nodrop
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Recent Delete Operations, Top 10 operations that caused the most errors, Users / Applications by Operation type



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods nodrop
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Users / Applications by Operation type



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "properties.entity", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, entity, identity_claims_name, authmethods nodrop
```
### Use Cases:
Recent Delete Operations, Top 10 operations that caused the most errors



## Parser:
```
| json "properties.timestamp", "operationName", "properties.errorLevel", "properties.LogicalServerName", "properties.ReplicaRole", "properties.message" as timestamp, operationName, errorLevel, serverName, replicaRole, message
```
### Use Cases:
Connection Errors, Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Errors by Cluster, Errors by Server, Errors by Sql Errcode, Log by Severity, LogLevel Distribution, Nodes by Cluster, Recent connection errors, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 Error Statements, Top 10 Fatal and Panic Errors, Top 10 Longest sessions, Top 10 operations that caused the most errors, Total Errors, Users / Applications by Operation type



## Parser:
```
| json "resultType", "category" as resultType, category
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Top 10 operations that caused the most errors, Users / Applications by Operation type



## Parser:
```
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Recent Delete Operations, Top 10 operations that caused the most errors



## Parser:
```
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
| parse field=operationName "*/*/*" as provider_name, resource_type, operation_name
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Recent Delete Operations, Top 10 operations that caused the most errors



## Parser:
```
| json "resultType", "operationName", "properties.statusMessage", "category"  as resultType, operationName, failureMessage, category nodrop
| parse field=operationname "*/*/*" as provider_name, resource_type, operation nodrop
```
### Use Cases:
Top 10 operations that caused the most errors


