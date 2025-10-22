# Parsers For Azure Cosmos DB for PostgreSQL

**Azure Cosmos DB for PostgreSQL/Administrative Operations/ Applications by Operation type**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid nodrop
```

**Azure Cosmos DB for PostgreSQL/Administrative Operations/Distribution  by Operation Type (Read, Write and Delete)**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
```

**Azure Cosmos DB for PostgreSQL/Administrative Operations/Distribution by Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
| where (resultType="Accept" or resultType="Success") and category="Administrative" 
| parse field=operationName "*/*/*" as provider_name, resource_type, operation_name
```

**Azure Cosmos DB for PostgreSQL/Administrative Operations/Distribution by Status**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category" as resultType, category
```

**Azure Cosmos DB for PostgreSQL/Administrative Operations/Recent Delete Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "properties.entity", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, entity, identity_claims_name, authmethods nodrop
```

**Azure Cosmos DB for PostgreSQL/Administrative Operations/Recent Write Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods nodrop
```

**Azure Cosmos DB for PostgreSQL/Administrative Operations/Top 10 operations that caused the most errors**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}}  Administrative
| json "resultType", "operationName", "properties.statusMessage", "category"  as resultType, operationName, failureMessage, category nodrop
| parse field=operationname "*/*/*" as provider_name, resource_type, operation nodrop
```

**Azure Cosmos DB for PostgreSQL/Errors/Database Shut Down Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs ("database system" AND "shut down")
| json "category", "properties.message", "properties.ReplicaRole" as category, message, ReplicaRole
```

**Azure Cosmos DB for PostgreSQL/Errors/Database System Up Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs "database system is ready to accept connections"
| json "category", "properties.message", "properties.ReplicaRole" as category, message, ReplicaRole
```

**Azure Cosmos DB for PostgreSQL/Errors/Errors by Cluster**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs (WARNING OR FATAL OR ERROR)
| json "category", "properties.sqlerrcode", "properties.errorLevel", "properties.LogicalServerName" as category, sqlerrcode, errorLevel, server_name
```

**Azure Cosmos DB for PostgreSQL/Errors/Errors by Server**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs sqlerrcode !00000
| json "category", "properties.sqlerrcode", "properties.errorLevel", "properties.LogicalServerName" as category, sqlerrcode,errorLevel, server_name
```

**Azure Cosmos DB for PostgreSQL/Errors/Errors by Sql Errcode**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs sqlerrcode !00000
| json "category", "properties.sqlerrcode", "properties.errorLevel" as category, sqlerrcode, errorLevel
```

**Azure Cosmos DB for PostgreSQL/Errors/Log by Severity**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs errorLevel
| json "category", "properties.errorLevel" as category, errorLevel
```

**Azure Cosmos DB for PostgreSQL/Errors/Top 10 Error Statements**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs errorLevel
| json "category", "properties.errorLevel", "properties.statement", "properties.message", "properties.sqlerrcode", "properties.ReplicaRole" as category, errorLevel, statement, message, sqlerrcode, ReplicaRole
| where category="PostgreSQLLogs" and (errorLevel="ERROR" or toLowerCase(message) matches /error/)
| parse field=message "* [*][*] : * *" as time, process_id, transaction_id, application, error_message
```

**Azure Cosmos DB for PostgreSQL/Errors/Top 10 Fatal and Panic Errors**
```
tenant_name=* subscription_id=* resource_group=* resource_name=* resource_type=SERVERGROUPSV2 provider_name=MICROSOFT.DBFORPOSTGRESQL location=* PostgreSQLLogs errorLevel
| json "category", "properties.errorLevel", "properties.message", "properties.sqlerrcode", "properties.ReplicaRole" as category, errorLevel, message, sqlerrcode, ReplicaRole nodrop
| where category="PostgreSQLLogs" and (errorLevel="FATAL" or toLowerCase(message) matches /fatal/ or errorLevel="PANIC" or toLowerCase(message) matches /panic/)
| parse field=message "* [*][*] : * *" as time, process_id, transaction_id, application, error_message
```

**Azure Cosmos DB for PostgreSQL/Errors/Total Errors**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs errorLevel
| json "category", "properties.sqlerrcode", "properties.errorLevel", "properties.LogicalServerName" as category, sqlerrcode,errorLevel, server_name
```

**Azure Cosmos DB for PostgreSQL/Health/Recent Resource Health Incidents**
```
tenant_name={{tenant_name}} 
provider_name={{provider_name}}
resource_type={{resource_type}}
subscription_id={{subscription_id}}
resource_group={{resource_group}}
resource_name={{resource_name}} ResourceHealth 
| JSON "category", "operationName", "time","level","resultType", "properties.title", "properties.details", "properties.currentHealthStatus", "properties.type", "properties.cause" as category, operationName, time,level,resultType, title, details, currentHealthStatus, type, cause nodrop
| where category="ResourceHealth"
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
```

**Azure Cosmos DB for PostgreSQL/Health/Recent Service Health Incidents**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} ServiceHealth
| JSON "category", "properties.incidentType", "properties.service", "properties.region", "properties.impactedServices" as category, incidentType, service, service_region, impactedServices nodrop
| replace(toLowerCase(service_region), " ", "") as service_region 
| where service_region matches "{{location}}"
| where category="ServiceHealth" and (toUpperCase(service) matches /COSMOS/ or toUpperCase(impactedServices) matches /COSMOS/)
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
```

**Azure Cosmos DB for PostgreSQL/Health/Resource Health by  Status**
```
tenant_name={{tenant_name}}
provider_name={{provider_name}}
resource_type={{resource_type}}
subscription_id={{subscription_id}}
resource_group={{resource_group}}
resource_name={{resource_name}} ResourceHealth 
| JSON "category", "properties.currentHealthStatus" as category, currentHealthStatus
```

**Azure Cosmos DB for PostgreSQL/Health/Service Health by Incident Type**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} ServiceHealth
| JSON "category", "properties.incidentType", "properties.service", "properties.region", "properties.impactedServices" as category, incidentType, service, service_region, impactedServices nodrop
```

**Azure Cosmos DB for PostgreSQL/Network/Connection Errors**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} *connect*
| json "properties.LogicalServerName", "properties.errorLevel", "properties.ReplicaRole", "properties.message", "properties.statement", "properties.timestamp" as server_name, errorLevel, replica_role, message, statement, timestamp
```

**Azure Cosmos DB for PostgreSQL/Network/Recent connection errors**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} *connect*
| json "properties.LogicalServerName", "properties.errorLevel", "properties.ReplicaRole", "properties.message", "properties.statement", "properties.timestamp" as server_name, errorLevel, replica_role, message, statement, timestamp
| where errorLevel in ("ERROR", "PANIC", "FATAL") or message matches /(PANIC|FATAL|ERROR)/
| parse field=message "* UTC [*][*] : *" as time, process_id, transaction_id, error_message
```

**Azure Cosmos DB for PostgreSQL/Network/Top 10 Longest sessions**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} "disconnection"
| json "properties.LogicalServerName", "properties.errorLevel", "properties.ReplicaRole", "properties.message", "properties.statement", "properties.timestamp" as server_name, errorLevel, replica_role, message, statement, timestamp
| parse field=message "session time: * user=* database=* host=*" as time, db_user, database, host
```

**Azure Cosmos DB for PostgreSQL/Overview/Errors by Cluster**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs sqlerrcode !00000
| json "category", "properties.sqlerrcode", "properties.LogicalServerName", "properties.errorLevel" as category, sqlerrcode, server_name, errorLevel
```

**Azure Cosmos DB for PostgreSQL/Overview/LogLevel Distribution**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} 
| json "properties.timestamp", "operationName", "properties.errorLevel", "properties.LogicalServerName", "properties.ReplicaRole", "properties.message" as timestamp, operationName, errorLevel, serverName, replicaRole, message
```

**Azure Cosmos DB for PostgreSQL/Overview/Nodes by Cluster**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} 
| json "properties.timestamp", "operationName", "properties.errorLevel", "properties.LogicalServerName", "properties.ReplicaRole", "properties.message" as timestamp, operationName, errorLevel, serverName, replicaRole, message
```

**Azure Cosmos DB for PostgreSQL/Overview/Query Distribution by Duration (excluding citus extension)**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs duration !citus
| json "category", "properties.errorLevel", "properties.statement", "properties.message", "properties.sqlerrcode", "properties.ReplicaRole", "properties.LogicalServerName" as category, errorLevel, statement, message, sqlerrcode, ReplicaRole, server_name
| where category="PostgreSQLLogs"
| parse regex field=message "duration: (?<execution_time_ms>[\S]+) ms" 
```

**Azure Cosmos DB for PostgreSQL/Overview/Top 3 Common Errors by Server**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs sqlerrcode !00000
| json "category", "properties.sqlerrcode", "properties.errorLevel", "properties.LogicalServerName","properties.message" as category, sqlerrcode,errorLevel, server_name, message
| where category="PostgreSQLLogs" and (!(sqlerrcode="00000") or errorLevel in ("ERROR", "PANIC", "FATAL"))
| parse field=message "* [*][*] : * *" as time, process_id, transaction_id, application, error_message
```

**Azure Cosmos DB for PostgreSQL/Queries/Average Query Duration**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs duration
| json "category", "properties.errorLevel", "properties.statement", "properties.message", "properties.sqlerrcode", "properties.ReplicaRole", "properties.LogicalServerName" as category, errorLevel, statement, message, sqlerrcode, ReplicaRole, server_name
| where category="PostgreSQLLogs"
| parse regex field=message "duration: (?<execution_time_ms>[\S]+) ms" 
```

**Azure Cosmos DB for PostgreSQL/Queries/Average Query Duration by Server**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs duration
| json "category", "properties.errorLevel", "properties.statement", "properties.message", "properties.sqlerrcode", "properties.ReplicaRole", "properties.LogicalServerName" as category, errorLevel, statement, message, sqlerrcode, ReplicaRole, server_name
| where category="PostgreSQLLogs"
| parse regex field=message "duration: (?<execution_time_ms>[\S]+) ms" 
```

**Azure Cosmos DB for PostgreSQL/Queries/Errors by Logical Server Name**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs (WARNING OR FATAL OR ERROR OR PANIC)
| json "category", "properties.LogicalServerName", "properties.errorLevel" as category, server_name, errorLevel
```

**Azure Cosmos DB for PostgreSQL/Queries/Query Execution Statistics**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs duration
| json "category", "properties.errorLevel", "properties.statement", "properties.message", "properties.sqlerrcode", "properties.ReplicaRole", "properties.LogicalServerName" as category, errorLevel, statement, message, sqlerrcode, ReplicaRole, server_name
| where category="PostgreSQLLogs"
| parse regex field=message "duration: (?<execution_time_ms>[\S]+) ms" 
```

**Azure Cosmos DB for PostgreSQL/Queries/Query Executions by Server**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs duration
| json "category", "properties.errorLevel", "properties.statement", "properties.message", "properties.sqlerrcode", "properties.ReplicaRole", "properties.LogicalServerName" as category, errorLevel, statement, message, sqlerrcode, ReplicaRole, server_name
| where category="PostgreSQLLogs"
| parse regex field=message "duration: (?<execution_time_ms>[\S]+) ms" 
```

**Azure Cosmos DB for PostgreSQL/Queries/Top 10 Query Syntax Errors**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs errorLevel ("syntax" and "error")
| json "category", "properties.errorLevel", "properties.statement", "properties.message", "properties.sqlerrcode", "properties.LogicalServerName" as category, errorLevel, statement, message, sqlerrcode, server_name
| where category="PostgreSQLLogs" and message matches "*syntax error*"
| parse field=message "* [*][*] : * *" as time, process_id, transaction_id, application, error_message
```

**Azure Cosmos DB for PostgreSQL/Queries/Total Queries**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs duration
| json "category", "properties.errorLevel", "properties.statement", "properties.message", "properties.sqlerrcode", "properties.ReplicaRole", "properties.LogicalServerName" as category, errorLevel, statement, message, sqlerrcode, ReplicaRole, server_name
| where category="PostgreSQLLogs"
| parse regex field=message "duration: (?<execution_time_ms>[\S]+) ms" 
```

**Azure Cosmos DB for PostgreSQL/Security/Connections Authorized by  Database - Over Time**
```
 tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs "connection authorized" 
| json "category", "properties.errorLevel", "properties.message", "properties.sqlerrcode", "properties.LogicalServerName" as category, errorLevel, message, sqlerrcode, server_name 
| where category="PostgreSQLLogs"
| parse regex field=message "user=(?<user>[\S]+) database=(?<database>[\S]+)"
```

**Azure Cosmos DB for PostgreSQL/Security/Failed Authentication by Server - Over Time**
```
 tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs  "authentication failed"
 | json "category", "properties.LogicalServerName", "properties.message" as category, server_name, message | where message matches /fail/ and message matches /authentication/ 
```

**Azure Cosmos DB for PostgreSQL/Security/Failed Authentications**
```
 tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs  "authentication failed"
 | json "category", "properties.LogicalServerName", "properties.message" as category, server_name, message | where message matches /failed/ and message matches /authentication/ 
```

**Azure Cosmos DB for PostgreSQL/Security/Failed Authentications by Server and User**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} PostgreSQLLogs  "authentication failed"
 | json "category", "properties.LogicalServerName", "properties.message" as category, server_name, message 
 | parse field=message "authentication failed for user \"*\"" as user
```

**Azure Cosmos DB for PostgreSQL/Security/Geolocation of Incoming Connections**
```
tenant_name=* subscription_id=* resource_group=* resource_name=* resource_type=SERVERGROUPSV2 provider_name=MICROSOFT.DBFORPOSTGRESQL location=* PostgreSQLLogs connection 
| json "category", "properties.errorLevel", "properties.message", "properties.sqlerrcode" as category, errorLevel, message, sqlerrcode 
| where category="PostgreSQLLogs"  
| parse field=message "connection received: host=[*]" as ip
```

**Azure Cosmos DB for PostgreSQL/Security/Recently Denied Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} ("permission denied" or 42501)
| json "properties.LogicalServerName", "properties.errorLevel", "properties.ReplicaRole", "properties.message", "properties.statement", "properties.sqlerrcode", "properties.timestamp" as server_name, errorLevel, replica_role, message, statement, sqlerrorcode, timestamp
```


