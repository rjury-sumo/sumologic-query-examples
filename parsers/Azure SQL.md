# Parsers For Azure SQL

**Azure SQL/ Administrative Operations/ Applications by Operation type**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}}
provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid nodrop
```

**Azure SQL/ Administrative Operations/Distribution  by Operation Type (Read, Write and Delete)**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} 
 provider_name={{provider_name}} resource_type={{resource_type}} *SQL* Administrative 
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
```

**Azure SQL/ Administrative Operations/Distribution by Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}}
provider_name={{provider_name}} resource_type={{resource_type}} *SQL* Administrative 
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
```

**Azure SQL/ Administrative Operations/Recent Delete Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}}
provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "properties.entity", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, entity, identity_claims_name, authmethods nodrop
```

**Azure SQL/ Administrative Operations/Recent Write Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}}
provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods nodrop
```

**Azure SQL/ Administrative Operations/Top 10 operations that caused the most errors**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}}   provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| json "resultType", "operationName", "properties.statusMessage", "category"  as resultType, operationName, failureMessage, category
```

**Azure SQL/Automatic Tuning/Automatic Tuning Events**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} AutomaticTuning 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties  "DatabaseName", "ElasticPoolName" nodrop
| json field=properties "databaseName" as databaseName2 nodrop
| concat (DatabaseName, databaseName2) as DatabaseName
| parse field=resourceId "MANAGEDINSTANCES/*/DATABASES/*/" as MANAGEDINSTANCES, databaseName3 nodrop
```

**Azure SQL/Automatic Tuning/Automatic Tuning Settings Event**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} AutomaticTuning 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "DatabaseName", "ElasticPoolName" nodrop
```

**Azure SQL/Automatic Tuning/Create Index Recommendations**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} CREATE_INDEX AutomaticTuning 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "DatabaseName", "ElasticPoolName" nodrop
```

**Azure SQL/Automatic Tuning/Drop Index Recommendations**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} DROP_INDEX AutomaticTuning 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "DatabaseName", "ElasticPoolName" nodrop
```

**Azure SQL/Automatic Tuning/Tuning Events by OperationName**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} AutomaticTuning 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties  "DatabaseName", "ElasticPoolName" nodrop
| json field=properties "databaseName" as databaseName2 nodrop
```

**Azure SQL/Automatic Tuning/Tuning Events by Type**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} AutomaticTuning 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties  "DatabaseName", "ElasticPoolName", "OptionName" nodrop
| json field=properties "databaseName" as databaseName2 nodrop
```

**Azure SQL/Blocking Stats/Block Event Details**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  BlockEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "ElasticPoolName", "DatabaseName", "duration", "lock_mode", "resource_owner_type", "blocked_process_filtered"  nodrop
| parse xml field=blocked_process_filtered "/blocked-process-report/blocked-process/process/@transactionname" as blockedprocess_transactionname nodrop
| parse xml field=blocked_process_filtered "/blocked-process-report/blocking-process/process/@clientapp" as blockingprocess_clientapp nodrop
| parse xml field=blocked_process_filtered "/blocked-process-report/blocking-process/process/@isolationlevel" as blockingprocess_isolationlevel nodrop
```

**Azure SQL/Blocking Stats/Blocks by Database**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  BlockEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "ElasticPoolName", "DatabaseName", "duration", "lock_mode", "resource_owner_type", "blocked_process_filtered"  nodrop
| parse xml field=blocked_process_filtered "/blocked-process-report/blocked-process/process/@transactionname" as blockedprocess_transactionname nodrop
| parse xml field=blocked_process_filtered "/blocked-process-report/blocking-process/process/@clientapp" as blockingprocess_clientapp nodrop
| parse xml field=blocked_process_filtered "/blocked-process-report/blocking-process/process/@isolationlevel" as blockingprocess_isolationlevel nodrop
```

**Azure SQL/Blocking Stats/Blocks by Database Trend**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  BlockEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "ElasticPoolName", "DatabaseName", "duration", "lock_mode", "resource_owner_type", "blocked_process_filtered"  nodrop
| parse xml field=blocked_process_filtered "/blocked-process-report/blocked-process/process/@transactionname" as blockedprocess_transactionname nodrop
| parse xml field=blocked_process_filtered "/blocked-process-report/blocking-process/process/@clientapp" as blockingprocess_clientapp nodrop
| parse xml field=blocked_process_filtered "/blocked-process-report/blocking-process/process/@isolationlevel" as blockingprocess_isolationlevel nodrop
```

**Azure SQL/Blocking Stats/Lock Duration**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  BlockEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "ElasticPoolName", "DatabaseName", "duration", "lock_mode", "resource_owner_type", "blocked_process_filtered"  nodrop
| parse xml field=blocked_process_filtered "/blocked-process-report/blocked-process/process/@transactionname" as blockedprocess_transactionname nodrop
| parse xml field=blocked_process_filtered "/blocked-process-report/blocking-process/process/@clientapp" as blockingprocess_clientapp nodrop
| parse xml field=blocked_process_filtered "/blocked-process-report/blocking-process/process/@isolationlevel" as blockingprocess_isolationlevel nodrop
```

**Azure SQL/Blocking Stats/Lock Mode Used by Query**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  BlockEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "ElasticPoolName", "DatabaseName", "duration", "lock_mode", "resource_owner_type", "blocked_process_filtered"  nodrop
| parse xml field=blocked_process_filtered "/blocked-process-report/blocked-process/process/@transactionname" as blockedprocess_transactionname nodrop
| parse xml field=blocked_process_filtered "/blocked-process-report/blocking-process/process/@clientapp" as blockingprocess_clientapp nodrop
| parse xml field=blocked_process_filtered "/blocked-process-report/blocking-process/process/@isolationlevel" as blockingprocess_isolationlevel nodrop
```

**Azure SQL/Blocking Stats/Owner Type Used by Query**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  BlockEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "ElasticPoolName", "DatabaseName", "duration", "lock_mode", "resource_owner_type", "blocked_process_filtered"  nodrop
| parse xml field=blocked_process_filtered "/blocked-process-report/blocked-process/process/@transactionname" as blockedprocess_transactionname nodrop
| parse xml field=blocked_process_filtered "/blocked-process-report/blocking-process/process/@clientapp" as blockingprocess_clientapp nodrop
| parse xml field=blocked_process_filtered "/blocked-process-report/blocking-process/process/@isolationlevel" as blockingprocess_isolationlevel nodrop
```

**Azure SQL/DatabaseWait Stats/Average Wait Time Per Task**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  DatabaseWaitStatistcsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "ElasticPoolName", "DatabaseName", "wait_type", "delta_max_wait_time_ms", "delta_signal_wait_time_ms", "delta_wait_time_ms", "delta_waiting_tasks_count"  nodrop
```

**Azure SQL/DatabaseWait Stats/Detailed Stats**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  DatabaseWaitStatistcsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "ElasticPoolName", "DatabaseName", "wait_type", "delta_max_wait_time_ms", "delta_signal_wait_time_ms", "delta_wait_time_ms", "delta_waiting_tasks_count"  nodrop
```

**Azure SQL/DatabaseWait Stats/Wait Events Breakdown by Database**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  DatabaseWaitStatistcsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "ElasticPoolName", "DatabaseName", "wait_type", "delta_max_wait_time_ms", "delta_signal_wait_time_ms", "delta_wait_time_ms", "delta_waiting_tasks_count"  nodrop
```

**Azure SQL/DatabaseWait Stats/Wait Events by Database**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  DatabaseWaitStatistcsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "ElasticPoolName", "DatabaseName", "wait_type", "delta_max_wait_time_ms", "delta_signal_wait_time_ms", "delta_wait_time_ms", "delta_waiting_tasks_count"  nodrop
```

**Azure SQL/DatabaseWait Stats/Wait Type Trend**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  DatabaseWaitStatistcsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "ElasticPoolName", "DatabaseName", "wait_type", "delta_max_wait_time_ms", "delta_signal_wait_time_ms", "delta_wait_time_ms", "delta_waiting_tasks_count"  nodrop
```

**Azure SQL/Errors/Distinct Error Messages - One Day Time Comparison**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  ErrorEvent 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "severity", "error_number", "DatabaseName", "message", "user_defined", "state"
```

**Azure SQL/Errors/Error Details**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  ErrorEvent 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "severity", "error_number", "DatabaseName", "message", "user_defined", "state"
```

**Azure SQL/Errors/Error Trend**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  ErrorEvent 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "severity", "error_number", "DatabaseName", "message", "user_defined", "state"
```

**Azure SQL/Errors/Errors**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  ErrorEvent 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "severity", "error_number", "DatabaseName", "message", "user_defined", "state"
```

**Azure SQL/Errors/Errors - One Day Time Comparison**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  ErrorEvent 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "severity", "error_number", "DatabaseName", "message", "user_defined", "state"
```

**Azure SQL/Errors/Errors by Database**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  ErrorEvent 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "severity", "error_number", "DatabaseName", "message", "user_defined", "state"
```

**Azure SQL/Errors/Errors by Severity**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  ErrorEvent 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "severity", "error_number", "DatabaseName", "message", "user_defined", "state"
```

**Azure SQL/Errors/Top 10 Error Messages**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  ErrorEvent 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "severity", "error_number", "DatabaseName", "message", "user_defined", "state"
```

**Azure SQL/Errors/Top 10 Errors**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  ErrorEvent 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "severity", "error_number", "DatabaseName", "message", "user_defined", "state"
```

**Azure SQL/Health/Recent Resource Health Incidents**
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

**Azure SQL/Health/Recent Service Health Incidents**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} location={{location}} ServiceHealth 
| JSON "category", "operationName", "time","level","resultType", "properties.incidentType", "properties.service", "properties.region", "properties.impactStartTime", "properties.impactMitigationTime", "properties.defaultLanguageTitle", "properties.stage" as category, operationName, time,level,resultType, incidentType, service, service_region, impactStartTime, impactMitigationTime, defaultLanguageTitle, stage nodrop
| replace(toLowerCase(service_region), " ", "") as service_region
| where category="ServiceHealth" and (toUpperCase(service) matches /SQL/  OR toUpperCase(service) matches /DATABASE/) 
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
```

**Azure SQL/Health/Resource Health by  Status**
```
tenant_name={{tenant_name}}
provider_name={{provider_name}}
resource_type={{resource_type}}
subscription_id={{subscription_id}}
resource_group={{resource_group}}
resource_name={{resource_name}} ResourceHealth 
| JSON "category", "properties.currentHealthStatus" as category, currentHealthStatus
```

**Azure SQL/Health/Service Health by Incident Type**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} location={{location}} ServiceHealth
| JSON "category", "properties.incidentType", "properties.service", "properties.region" as category, incidentType, service, service_region
```

**Azure SQL/Overview/Active SQLInsights**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  SQLInsights 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "issueId", "ElasticPoolName", "databaseName", "status", "metric", "rootCauseAnalysis", "value", "impact", "detections"
```

**Azure SQL/Overview/Databases**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "status", "DatabaseName", "ElasticPoolName" nodrop
| json field=properties "databaseName" as databaseName2 nodrop
| concat (DatabaseName, databaseName2) as DatabaseName
| parse field=resourceId "MANAGEDINSTANCES/*/DATABASES/*/" as MANAGEDINSTANCES, databaseName3 nodrop
```

**Azure SQL/Overview/Error Severity**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  ErrorEvent "\"operationName\":\"ErrorEvent\""
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "status", "severity", "error_number", "DatabaseName", "ElasticPoolName" nodrop
```

**Azure SQL/Overview/Errors**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  ErrorEvent "\"operationName\":\"ErrorEvent\""
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "status", "severity", "error_number", "DatabaseName", "ElasticPoolName" nodrop
```

**Azure SQL/Overview/Lock Duration**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  BlockEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "status", "ElasticPoolName", "DatabaseName", "duration", "lock_mode", "resource_owner_type", "blocked_process_filtered"  nodrop
```

**Azure SQL/Overview/Logical Servers**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "status", "DatabaseName", "ElasticPoolName" nodrop
| json field=properties "databaseName" as databaseName2 nodrop
| concat (DatabaseName, databaseName2) as DatabaseName
| parse field=resourceId "MANAGEDINSTANCES/*/DATABASES/*/" as MANAGEDINSTANCES, databaseName3 nodrop
```

**Azure SQL/Overview/Operations Trend**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "status", "DatabaseName", "ElasticPoolName" nodrop
| json field=properties "databaseName" as databaseName2 nodrop
```

**Azure SQL/Overview/Top 10 Active Logical Server Names**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "status", "DatabaseName", "ElasticPoolName" nodrop
| json field=properties "databaseName" as databaseName2 nodrop
| concat (DatabaseName, databaseName2) as DatabaseName
| parse field=resourceId "MANAGEDINSTANCES/*/DATABASES/*/" as MANAGEDINSTANCES, databaseName3 nodrop
```

**Azure SQL/Overview/Top 10 Active Resource Groups**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "status", "DatabaseName", "ElasticPoolName" nodrop
| json field=properties "databaseName" as databaseName2 nodrop
| concat (DatabaseName, databaseName2) as DatabaseName
| parse field=resourceId "MANAGEDINSTANCES/*/DATABASES/*/" as MANAGEDINSTANCES, databaseName3 nodrop
```

**Azure SQL/Overview/Top 10 Active ResourceId**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "status", "DatabaseName", "ElasticPoolName" nodrop
| json field=properties "databaseName" as databaseName2 nodrop
```

**Azure SQL/Overview/Top 10 Active Server, Database and Elastic Pool**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "status", "DatabaseName", "ElasticPoolName" nodrop
| json field=properties "databaseName" as databaseName2 nodrop
| concat (DatabaseName, databaseName2) as DatabaseName
| parse field=resourceId "MANAGEDINSTANCES/*/DATABASES/*/" as MANAGEDINSTANCES, databaseName3 nodrop
```

**Azure SQL/Overview/Top 10 Active Server, Databases**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "status", "DatabaseName", "ElasticPoolName" nodrop
| json field=properties "databaseName" as databaseName2 nodrop
| concat (DatabaseName, databaseName2) as DatabaseName
| parse field=resourceId "MANAGEDINSTANCES/*/DATABASES/*/" as MANAGEDINSTANCES, databaseName3 nodrop
```

**Azure SQL/Overview/Top 10 Active SubscriptionId**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "status", "DatabaseName", "ElasticPoolName" nodrop
| json field=properties "databaseName" as databaseName2 nodrop
| concat (DatabaseName, databaseName2) as DatabaseName
| parse field=resourceId "MANAGEDINSTANCES/*/DATABASES/*/" as MANAGEDINSTANCES, databaseName3 nodrop
```

**Azure SQL/Overview/Top 10 Categories**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "status", "DatabaseName", "ElasticPoolName" nodrop
| json field=properties "databaseName" as databaseName2 nodrop
```

**Azure SQL/Overview/Top 10 Operations**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "status", "DatabaseName", "ElasticPoolName" nodrop
| json field=properties "databaseName" as databaseName2 nodrop
```

**Azure SQL/Overview/Top 10 Server, Database and WaitType**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  wait_type
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "DatabaseName", "ElasticPoolName", "wait_type"
```

**Azure SQL/Policy and Recommendations/Events by recommendation category**
```
tenant_name={{tenant_name}}
subscription_id={{subscription_id}}
resource_group={{resource_group}}
resource_name={{resource_name}}
provider_name={{provider_name}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" Recommendation
| JSON "category", "level", "resultSignature", 
```

**Azure SQL/Policy and Recommendations/Failed policy events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} Policy
| JSON "category", "resultType", "level", "properties.resourceLocation", "properties.entity" as category, resultType, level, location, entity nodrop
```

**Azure SQL/Policy and Recommendations/High Impact Recommendations**
```
tenant_name={{tenant_name}}
subscription_id={{subscription_id}}
resource_group={{resource_group}}
resource_name={{resource_name}}
provider_name={{provider_name}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" Recommendation
| JSON "category", "level", "resultSignature", 
```

**Azure SQL/Policy and Recommendations/Policy events by Severity Level**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} Policy 
| JSON "category", "resultType", "level", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, level, message, location, entity, policies nodrop
```

**Azure SQL/Policy and Recommendations/Policy events with warning or error**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} Policy
| JSON "category", "resultType", "level", "properties.resourceLocation", "properties.entity" as category, resultType, level, location, entity nodrop
```

**Azure SQL/Policy and Recommendations/Recent Failed Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} Policy
| JSON "category", "resultType", "level", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, level, message, location, entity, policies nodrop
```

**Azure SQL/Policy and Recommendations/Recent policy events with warning or error**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}} Policy
| JSON "category", "resultType", "level", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, level, message, location, entity, policies nodrop
```

**Azure SQL/Policy and Recommendations/Recent recommendation events**
```
tenant_name={{tenant_name}}
subscription_id={{subscription_id}}
resource_group={{resource_group}}
resource_name={{resource_name}}
provider_name={{provider_name}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" Recommendation
| JSON "category", "level", "resultSignature", 
```

**Azure SQL/Policy and Recommendations/Recommendations by Impact**
```
tenant_name={{tenant_name}}
subscription_id={{subscription_id}}
resource_group={{resource_group}}
resource_name={{resource_name}}
provider_name={{provider_name}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" Recommendation
| JSON "category", "level", "resultSignature", 
```

**Azure SQL/Policy and Recommendations/Total recommendations**
```
tenant_name={{tenant_name}}
subscription_id={{subscription_id}}
resource_group={{resource_group}}
resource_name={{resource_name}}
provider_name={{provider_name}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" Recommendation
| JSON "category", "level", "resultSignature", 
```

**Azure SQL/QueryStoreRuntime Stats/CPU Time by DatabaseName**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreRuntimeStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "query_id", "plan_id", "query_hash", "ElasticPoolName", "DatabaseName", "max_cpu_time", "max_duration", "cpu_time"  nodrop
```

**Azure SQL/QueryStoreRuntime Stats/CPU Time by Query**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreRuntimeStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "query_id", "plan_id", "query_hash", "ElasticPoolName", "DatabaseName", "max_cpu_time", "max_duration", "count_executions", "cpu_time" nodrop
```

**Azure SQL/QueryStoreRuntime Stats/Execution Count by DatabaseName**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreRuntimeStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "query_id", "plan_id", "query_hash", "ElasticPoolName", "DatabaseName", "max_cpu_time", "max_duration", "cpu_time", "count_executions"  nodrop
```

**Azure SQL/QueryStoreRuntime Stats/Execution Count of Query**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreRuntimeStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "query_id", "plan_id", "query_hash", "ElasticPoolName", "DatabaseName", "max_cpu_time", "max_duration", "count_executions" nodrop
```

**Azure SQL/QueryStoreRuntime Stats/Execution Duration by DatabaseName**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreRuntimeStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "query_id", "plan_id", "query_hash", "ElasticPoolName", "DatabaseName", "max_cpu_time", "max_duration", "cpu_time", "duration"  nodrop
```

**Azure SQL/QueryStoreRuntime Stats/Execution Duration of Query**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreRuntimeStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "query_id", "plan_id", "query_hash", "ElasticPoolName", "DatabaseName", "max_cpu_time", "max_duration", "count_executions", "duration" nodrop
```

**Azure SQL/QueryStoreRuntime Stats/Execution Type of Query**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreRuntimeStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "query_id", "plan_id", "query_hash", "ElasticPoolName", "DatabaseName", "max_cpu_time", "max_duration", "count_executions", "duration", "rowcount", "physical_io_reads", "logical_io_reads", "logical_io_writes", "execution_type" nodrop
```

**Azure SQL/QueryStoreRuntime Stats/Frequency of Physical IO Reads by Query**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreRuntimeStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "query_id", "plan_id", "query_hash", "ElasticPoolName", "DatabaseName", "max_cpu_time", "max_duration", "count_executions", "duration", "rowcount", "physical_io_reads", "logical_io_reads", "num_physical_io_reads" nodrop
```

**Azure SQL/QueryStoreRuntime Stats/Log Bytes Used by Query**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreRuntimeStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "query_id", "plan_id", "query_hash", "ElasticPoolName", "DatabaseName", "max_cpu_time", "max_duration", "count_executions", "cpu_time", "query_max_used_memory", "log_bytes_used" nodrop
```

**Azure SQL/QueryStoreRuntime Stats/Logical IO Reads by Query**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreRuntimeStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "query_id", "plan_id", "query_hash", "ElasticPoolName", "DatabaseName", "max_cpu_time", "max_duration", "count_executions", "duration", "rowcount", "physical_io_reads", "logical_io_reads" nodrop
```

**Azure SQL/QueryStoreRuntime Stats/Logical IO Writes by Query**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreRuntimeStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "query_id", "plan_id", "query_hash", "ElasticPoolName", "DatabaseName", "max_cpu_time", "max_duration", "count_executions", "duration", "rowcount", "physical_io_reads", "logical_io_reads", "logical_io_writes" nodrop
```

**Azure SQL/QueryStoreRuntime Stats/Max Degree of Parallelism by Query**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreRuntimeStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "query_id", "plan_id", "query_hash", "ElasticPoolName", "DatabaseName", "max_cpu_time", "max_duration", "count_executions", "duration", "rowcount", "physical_io_reads", "logical_io_reads", "num_physical_io_reads", "dop" nodrop
```

**Azure SQL/QueryStoreRuntime Stats/Memory Used by DatabaseName**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreRuntimeStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "query_id", "plan_id", "query_hash", "ElasticPoolName", "DatabaseName", "max_cpu_time", "max_duration", "cpu_time", "query_max_used_memory"  nodrop
```

**Azure SQL/QueryStoreRuntime Stats/Memory Used by Query**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreRuntimeStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "query_id", "plan_id", "query_hash", "ElasticPoolName", "DatabaseName", "max_cpu_time", "max_duration", "count_executions", "cpu_time", "query_max_used_memory" nodrop
```

**Azure SQL/QueryStoreRuntime Stats/Physical IO Reads by Query**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreRuntimeStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "query_id", "plan_id", "query_hash", "ElasticPoolName", "DatabaseName", "max_cpu_time", "max_duration", "count_executions", "duration", "rowcount", "physical_io_reads", "logical_io_reads" nodrop
```

**Azure SQL/QueryStoreRuntime Stats/Rows Returned by Query**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreRuntimeStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "query_id", "plan_id", "query_hash", "ElasticPoolName", "DatabaseName", "max_cpu_time", "max_duration", "count_executions", "duration", "rowcount" nodrop
```

**Azure SQL/QueryStoreRuntime Stats/Top Queries by High Execution Time**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreRuntimeStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "query_id", "plan_id", "ElasticPoolName", "DatabaseName", "max_cpu_time", "max_duration", "query_hash", "count_executions", "duration", "cpu_time", "query_max_used_memory", "rowcount" nodrop
```

**Azure SQL/QueryStoreRuntime Stats/Unique PlanId's**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreRuntimeStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "query_id", "plan_id", "ElasticPoolName", "DatabaseName", "max_cpu_time", "max_duration", "query_hash", "count_executions" nodrop
```

**Azure SQL/QueryStoreRuntime Stats/Unique QueryId's**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreRuntimeStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "query_id", "plan_id", "ElasticPoolName", "DatabaseName", "max_cpu_time", "max_duration", "query_hash", "count_executions" nodrop
```

**Azure SQL/QueryStoreWait Stats/Max Query Wait Time by DatabaseName**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreWaitStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "exec_type", "statement_type", "is_parameterizable", "query_param_type", "wait_category", "ElasticPoolName", "DatabaseName", "max_query_wait_time_ms"
```

**Azure SQL/QueryStoreWait Stats/Total Wait Time for Query by Wait Category**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreWaitStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "exec_type", "statement_type", "is_parameterizable", "query_param_type", "wait_category", "ElasticPoolName", "DatabaseName", "query_hash", "total_query_wait_time_ms"
```

**Azure SQL/QueryStoreWait Stats/Wait Category**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreWaitStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "exec_type", "statement_type", "is_parameterizable", "query_param_type", "wait_category", "ElasticPoolName", "DatabaseName"
```

**Azure SQL/QueryStoreWait Stats/Wait Category Breakup**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreWaitStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "exec_type", "statement_type", "is_parameterizable", "query_param_type", "wait_category", "ElasticPoolName", "DatabaseName"
```

**Azure SQL/QueryStoreWait Stats/Wait Category Trend**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreWaitStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "exec_type", "statement_type", "is_parameterizable", "query_param_type", "wait_category", "ElasticPoolName", "DatabaseName"
```

**Azure SQL/QueryStoreWait Stats/Wait Details**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  QueryStoreWaitStatisticsEvent
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "exec_type", "statement_type", "is_parameterizable", "query_param_type", "wait_category", "ElasticPoolName", "DatabaseName"
```

**Azure SQL/SQL Security Audit/Audit Actions**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS"  SQLSecurityAuditEvents
| json "LogicalServerName", "category", "operationName", "properties.database_name", "properties.action_name", "properties.client_ip", "properties.client_tls_version","properties.host_name", "properties.session_server_principal_name", "properties.object_name", "properties.application_name" as logicalservername,category,operationName, databaseName, action, client_ip, client_tls_version, host_name, session_server_principal_name, object_name, application_name nodrop
| parse field=resourceId "MANAGEDINSTANCES/*/DATABASES/*/" as MANAGEDINSTANCES, databaseName3 nodrop
```

**Azure SQL/SQL Security Audit/Failed  Logins**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS"  SQLSecurityAuditEvents
| json "LogicalServerName", "category", "operationName", "properties.database_name", "properties.action_name", "properties.client_ip", "properties.client_tls_version","properties.host_name", "properties.session_server_principal_name", "properties.object_name", "properties.application_name" as logicalservername,category,operationName, databaseName, action, client_ip, client_tls_version, host_name, session_server_principal_name, object_name, application_name nodrop
| parse field=resourceId "MANAGEDINSTANCES/*/DATABASES/*/" as MANAGEDINSTANCES, databaseName3 nodrop
```

**Azure SQL/SQL Security Audit/Failed  Logins Locations**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS"  SQLSecurityAuditEvents
| json "LogicalServerName", "category", "operationName", "properties.database_name", "properties.action_name", "properties.client_ip", "properties.client_tls_version","properties.host_name", "properties.session_server_principal_name", "properties.object_name", "properties.application_name" as logicalservername,category,operationName, databaseName, action, client_ip, client_tls_version, host_name, session_server_principal_name, object_name, application_name nodrop
| parse field=resourceId "MANAGEDINSTANCES/*/DATABASES/*/" as MANAGEDINSTANCES, databaseName3 nodrop
```

**Azure SQL/SQL Security Audit/Recent DDL statements**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS"  SQLSecurityAuditEvents
| json "properties.event_time", "LogicalServerName", "category", "operationName", "properties.database_name", "properties.action_name", "properties.client_ip", "properties.client_tls_version","properties.host_name", "properties.session_server_principal_name", "properties.object_name", "properties.application_name", "properties.statement" as event_time, logicalservername,category,operationName, databaseName, action, client_ip, client_tls_version, host_name, session_server_principal_name, object_name, application_name, statement nodrop
| parse field=resourceId "MANAGEDINSTANCES/*/DATABASES/*/" as MANAGEDINSTANCES, databaseName3 nodrop
```

**Azure SQL/SQL Security Audit/Recent DML statements**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS"  SQLSecurityAuditEvents
| json "properties.event_time", "LogicalServerName", "category", "operationName", "properties.database_name", "properties.action_name", "properties.client_ip", "properties.client_tls_version","properties.host_name", "properties.session_server_principal_name", "properties.object_name", "properties.application_name", "properties.statement" as event_time, logicalservername,category,operationName, databaseName, action, client_ip, client_tls_version, host_name, session_server_principal_name, object_name, application_name, statement nodrop
| parse field=resourceId "MANAGEDINSTANCES/*/DATABASES/*/" as MANAGEDINSTANCES, databaseName3 nodrop
```

**Azure SQL/SQL Security Audit/Recent DQL and TCL statements**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS"  SQLSecurityAuditEvents
| json "properties.event_time", "LogicalServerName", "category", "operationName", "properties.database_name", "properties.action_name", "properties.client_ip", "properties.client_tls_version","properties.host_name", "properties.session_server_principal_name", "properties.object_name", "properties.application_name", "properties.statement" as event_time, logicalservername,category,operationName, databaseName, action, client_ip, client_tls_version, host_name, session_server_principal_name, object_name, application_name, statement nodrop
| parse field=resourceId "MANAGEDINSTANCES/*/DATABASES/*/" as MANAGEDINSTANCES, databaseName3 nodrop
```

**Azure SQL/SQL Security Audit/Recent Failed  Logins**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS"  SQLSecurityAuditEvents
| json "LogicalServerName", "category", "operationName", "properties.database_name", "properties.action_name", "properties.client_ip", "properties.client_tls_version","properties.host_name", "properties.session_server_principal_name", "properties.object_name", "properties.application_name", "properties.additional_information" as logicalservername,category,operationName, databaseName, action, client_ip, client_tls_version, host_name, session_server_principal_name, object_name, application_name, additional_information nodrop
| parse field=resourceId "MANAGEDINSTANCES/*/DATABASES/*/" as MANAGEDINSTANCES, databaseName3 nodrop
```

**Azure SQL/SQL Security Audit/Successful  Logins**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS"  SQLSecurityAuditEvents
| json "LogicalServerName", "category", "operationName", "properties.database_name", "properties.action_name", "properties.client_ip", "properties.client_tls_version","properties.host_name", "properties.session_server_principal_name", "properties.object_name", "properties.application_name" as logicalservername,category,operationName, databaseName, action, client_ip, client_tls_version, host_name, session_server_principal_name, object_name, application_name nodrop
| parse field=resourceId "MANAGEDINSTANCES/*/DATABASES/*/" as MANAGEDINSTANCES, databaseName3 nodrop
```

**Azure SQL/SQL Security Audit/Top 10 host names**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS"  SQLSecurityAuditEvents
| json "LogicalServerName", "category", "operationName", "properties.database_name", "properties.action_name", "properties.client_ip", "properties.client_tls_version","properties.host_name", "properties.session_server_principal_name", "properties.object_name", "properties.application_name" as logicalservername,category,operationName, databaseName, action, client_ip, client_tls_version, host_name, session_server_principal_name, object_name, application_name nodrop
| parse field=resourceId "MANAGEDINSTANCES/*/DATABASES/*/" as MANAGEDINSTANCES, databaseName3 nodrop
```

**Azure SQL/SQL Security Audit/Top 10 Service Principals**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS"  SQLSecurityAuditEvents
| json "LogicalServerName", "category", "operationName", "properties.database_name", "properties.action_name", "properties.client_ip", "properties.client_tls_version","properties.host_name", "properties.session_server_principal_name", "properties.object_name", "properties.application_name" as logicalservername,category,operationName, databaseName, action, client_ip, client_tls_version, host_name, session_server_principal_name, object_name, application_name nodrop
| parse field=resourceId "MANAGEDINSTANCES/*/DATABASES/*/" as MANAGEDINSTANCES, databaseName3 nodrop
```

**Azure SQL/SQLInsights/Active SQLInsights**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  SQLInsights 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "issueId", "ElasticPoolName", "databaseName", "status", "metric", "rootCauseAnalysis", "value", "impact", "detections"
```

**Azure SQL/SQLInsights/Insight Metric**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  SQLInsights 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "issueId", "ElasticPoolName", "databaseName", "status", "metric", "rootCauseAnalysis", "value", "impact", "detections"
```

**Azure SQL/SQLInsights/Issue Details**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  SQLInsights 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "issueId", "ElasticPoolName", "databaseName", "status", "metric", "rootCauseAnalysis", "value", "impact", "detections"
```

**Azure SQL/SQLInsights/Issue State**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  SQLInsights 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "issueId", "ElasticPoolName", "databaseName", "status", "metric", "rootCauseAnalysis", "value", "impact", "detections"
```

**Azure SQL/SQLInsights/Issues by Database**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  SQLInsights 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "issueId", "ElasticPoolName", "databaseName", "status", "metric", "rootCauseAnalysis", "value", "impact", "detections"
```

**Azure SQL/SQLInsights/Latest Issue Status**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  SQLInsights 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "issueId", "ElasticPoolName", "databaseName", "status", "metric", "rootCauseAnalysis", "value", "impact", "detections"
```

**Azure SQL/SQLInsights/Unique Issues**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  SQLInsights 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "issueId", "ElasticPoolName", "databaseName", "status", "metric", "rootCauseAnalysis", "value", "impact", "detections"
```

**Azure SQL/Timeouts/Timeouts**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  TimeoutEvent 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "ElasticPoolName", "DatabaseName", "error_state"
```

**Azure SQL/Timeouts/Timeouts by Database**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  TimeoutEvent 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "ElasticPoolName", "DatabaseName", "error_state"
```

**Azure SQL/Timeouts/Timeouts Details**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  TimeoutEvent 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "ElasticPoolName", "DatabaseName", "error_state"
```

**Azure SQL/Timeouts/Top 10 Error States**
```
tenant_name={{tenant_name}} location={{location}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.SQL" resource_type="SERVERS" resource_name={{resource_name}}  TimeoutEvent 
| json "LogicalServerName", "SubscriptionId", "ResourceGroup", "resourceId", "category", "operationName", "properties" nodrop
| json field=properties "ElasticPoolName", "DatabaseName", "error_state"
```


