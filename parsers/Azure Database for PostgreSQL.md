# Parsers For Azure Database for PostgreSQL

## Parser:
```
| JSON "category"
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Write Operations, Requests by Location, Resource Health by Event Type, Resource Health Trend, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Total Recommendation Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "operationName", "resultType", "properties.recommendationName", "properties.recommendationCategory", "properties.recommendationImpact", "properties.recommendationResourceLink" as category, operationName, resultType, recommendationName, recommendationCategory, recommendationImpact, recommendationResourceLink 
| parse field=operationName "*/*/*/*" as provider, category, operation_name, action nodrop
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Failed Policy Events, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Write Operations, Requests by Location, Resource Health by Event Type, Resource Health Trend, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "operationName", "time","level","resultType", "properties.title", "properties.details", "properties.currentHealthStatus", "properties.type", "properties.cause" as category, operationName, time,level,resultType, title, details, currentHealthStatus, type, cause nodrop
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Write Operations, Resource Health by Event Type, Resource Health Trend, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.Application_name" as category, Application_name
 
```
### Use Cases:
Application Name with Most Sessions, Database Shut Down Events, Database System Up Events, Dead Rows By Schema, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Failed Policy Events, Indexes Scanned By Schema, Live Rows By Schema, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Write Operations, Requests by Location, Resource Health by Event Type, Resource Health Trend, Rows Deleted By Schema, Rows Inserted By Schema, Rows Updated By Schema, Sequential Scan By Schema, Tables Vacuumed By Schema, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.backend_type" as category, backend_type
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Log by Backend Type, Log by Sql Errcode, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.currentHealthStatus" as category, currentHealthStatus
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Resource Health Status by Resource Name, Recent Write Operations, Resource Health by Event Type, Resource Health Trend, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.errorLevel" as category, errorLevel
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.errorLevel", "properties.message", "properties.sqlerrcode", "ReplicaRole" as category, errorLevel, message, sqlerrcode, ReplicaRole nodrop
| parse field=message "* * *: *" as date, time, thread_id, message
 
```
### Use Cases:
Database Shut Down Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Log by Sql Errcode, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Top Fatal Errors, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.errorLevel", "properties.statement", "properties.message", "properties.sqlerrcode", "ReplicaRole" as category, errorLevel, statement, message, sqlerrcode, ReplicaRole
 
```
### Use Cases:
Database Shut Down Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Log by Sql Errcode, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.Idx_scan", "properties.Schemaname", "properties.DatabaseName" as category, Idx_scan, schemaname, DatabaseName
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Dead Rows By Schema, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Failed Policy Events, Indexes Scanned By Schema, Live Rows By Schema, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Write Operations, Requests by Location, Resource Health by Event Type, Resource Health Trend, Rows Updated By Schema, Sequential Scan By Schema, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.message" as category, message
| extract field=message "(?<request_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Write Operations, Requests by Location, Resource Health by Event Type, Resource Health Trend, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.message", "ReplicaRole" as category, message, ReplicaRole
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Log by Sql Errcode, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.N_dead_tup", "properties.Schemaname", "properties.DatabaseName" as category, N_dead_tup, schemaname, DatabaseName
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Dead Rows By Schema, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Failed Policy Events, Indexes Scanned By Schema, Live Rows By Schema, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Write Operations, Requests by Location, Resource Health by Event Type, Resource Health Trend, Rows Inserted By Schema, Rows Updated By Schema, Sequential Scan By Schema, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.N_live_tup", "properties.Schemaname", "properties.DatabaseName" as category, N_live_tup, schemaname, DatabaseName
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Dead Rows By Schema, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Failed Policy Events, Indexes Scanned By Schema, Live Rows By Schema, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Write Operations, Requests by Location, Resource Health by Event Type, Resource Health Trend, Rows Updated By Schema, Sequential Scan By Schema, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.N_tup_del", "properties.Schemaname", "properties.DatabaseName" as category, N_tup_del, schemaname, DatabaseName
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Dead Rows By Schema, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Failed Policy Events, Indexes Scanned By Schema, Live Rows By Schema, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Write Operations, Requests by Location, Resource Health by Event Type, Resource Health Trend, Rows Deleted By Schema, Rows Inserted By Schema, Rows Updated By Schema, Sequential Scan By Schema, Tables Vacuumed By Schema, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.N_tup_ins", "properties.Schemaname", "properties.DatabaseName" as category, N_tup_ins, schemaname, DatabaseName
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Dead Rows By Schema, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Failed Policy Events, Indexes Scanned By Schema, Live Rows By Schema, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Write Operations, Requests by Location, Resource Health by Event Type, Resource Health Trend, Rows Deleted By Schema, Rows Inserted By Schema, Rows Updated By Schema, Sequential Scan By Schema, Tables Vacuumed By Schema, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.N_tup_upd", "properties.Schemaname", "properties.DatabaseName" as category, N_tup_upd, schemaname, DatabaseName
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Dead Rows By Schema, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Failed Policy Events, Indexes Scanned By Schema, Live Rows By Schema, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Write Operations, Requests by Location, Resource Health by Event Type, Resource Health Trend, Rows Deleted By Schema, Rows Inserted By Schema, Rows Updated By Schema, Sequential Scan By Schema, Tables Vacuumed By Schema, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.Seq_scan", "properties.Schemaname", "properties.DatabaseName" as category, Seq_scan, schemaname, DatabaseName
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Dead Rows By Schema, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Failed Policy Events, Indexes Scanned By Schema, Live Rows By Schema, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Write Operations, Requests by Location, Resource Health by Event Type, Resource Health Trend, Rows Deleted By Schema, Rows Inserted By Schema, Rows Updated By Schema, Sequential Scan By Schema, Tables Vacuumed By Schema, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.Session_duration", "properties.Database_name" as category, Session_duration, Database_name
 
```
### Use Cases:
Application Name with Most Sessions, Database Shut Down Events, Database System Up Events, Dead Rows By Schema, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Failed Policy Events, Indexes Scanned By Schema, Live Rows By Schema, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Write Operations, Requests by Location, Resource Health by Event Type, Resource Health Trend, Rows Deleted By Schema, Rows Inserted By Schema, Rows Updated By Schema, Sequential Scan By Schema, Session duration distribution, Tables Vacuumed By Schema, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.sqlerrcode" as category, sqlerrcode
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Log by Sql Errcode, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.Tables_vacuumed", "properties.Schemaname", "properties.DatabaseName" as category, Tables_vacuumed, schemaname, DatabaseName
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Dead Rows By Schema, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Failed Policy Events, Indexes Scanned By Schema, Live Rows By Schema, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Write Operations, Requests by Location, Resource Health by Event Type, Resource Health Trend, Rows Deleted By Schema, Rows Inserted By Schema, Rows Updated By Schema, Sequential Scan By Schema, Tables Vacuumed By Schema, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.type", "properties.cause" as category, type, cause
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType" as category, resultType
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Failed Policy Events, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Write Operations, Requests by Location, Resource Health by Event Type, Resource Health Trend, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Failed Policy Events, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Write Operations, Requests by Location, Resource Health by Event Type, Resource Health Trend, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
| parse field=entity "/subscriptions/*/resourceGroups/*/providers/*/*/*" as subscription_id, resource_group, providers, virtualMachineScaleSets, aks nodrop
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Write Operations, Requests by Location, Resource Health by Event Type, Resource Health Trend, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category","properties.Idx_scan", "properties.Schemaname", "properties.DatabaseName" as category, Idx_scan, schemaname, DatabaseName
 
```
### Use Cases:
Database Shut Down Events, Database System Up Events, Dead Rows By Schema, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Downtime Causes, Failed Policy Events, Indexes Scanned By Schema, Live Rows By Schema, Log by Backend Type, Log by Severity, Log by Sql Errcode, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Write Operations, Requests by Location, Resource Health by Event Type, Resource Health Trend, Rows Deleted By Schema, Rows Inserted By Schema, Rows Updated By Schema, Sequential Scan By Schema, Tables Vacuumed By Schema, Top 10 operations that caused the most errors, Top Error Statements, Top Fatal Errors, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



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


