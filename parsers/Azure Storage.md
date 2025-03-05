# Parsers For Azure Storage

## Parser:
```
| json "callerIpAddress" as callerIpAddress
| split callerIpAddress delim=':' extract 1 as src_ip, 2 as port
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Transactions by location, Transactions by TLS version



## Parser:
```
| json "category"
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Reads by File Share, Recent failed request, Recent Resource health incidents, Resource health by event type, service health by event type-Time chart, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "category"
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Queue Name by Failed Operations, Read, Read vs Write, Reads by Container Name, Reads by File Share, Reads by Queue Name, Recent alerts, Recent failed request, Recent Resource health incidents, Recent Service Health incidents, Recent success policy events, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total read, Total recommendation events, Total security events, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share, Writes by Queue Name



## Parser:
```
| JSON "category", "operationName", "resultType", "properties.recommendationImpact", "properties.recommendationName" as category, operationName, resultType, recommendationImpact, recommendationName
| parse field=operationName "*/*/*/*" as provider, category, operation_name, action nodrop
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Queue Name by Failed Operations, Read, Read vs Write, Reads by Container Name, Reads by File Share, Reads by Queue Name, Recent alerts, Recent failed policy events, Recent failed request, Recent recommendation events, Recent Resource health incidents, Recent security events, Recent Service Health incidents, Recent success policy events, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total denied policy events, Total read, Total recommendation events, Total security events, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share, Writes by Queue Name



## Parser:
```
| JSON "category", "operationName", "statusText", "properties.objectKey" as category, operationName, statusText, objectKey
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?:Tables\(')?(?<table_name>[a-zA-Z0-9]*)" nodrop 
| parse regex field=objectKey "/(?:[^/]+)/(?<table_name_in_object>[^/]+)" nodrop 
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Queue Name by Failed Operations, Read, Read vs Write, Reads by Container Name, Reads by File Share, Reads by Queue Name, Recent alerts, Recent failed policy events, Recent failed request, Recent recommendation events, Recent Resource health incidents, Recent security events, Recent Service Health incidents, Recent success policy events, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Table Name by Failed Operations, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources  by Failures, Top 10 Resources  by Server Latency, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total denied policy events, Total read, Total recommendation events, Total security events, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share, Writes by Queue Name, Writes by Table Name



## Parser:
```
| JSON "category", "operationName", "time","level","resultType", "properties.incidentType", "properties.service", "properties.region", "properties.impactStartTime", "properties.impactMitigationTime", "properties.defaultLanguageTitle", "properties.stage" as category, operationName, time,level,resultType, incidentType, service, service_region, impactStartTime, impactMitigationTime, defaultLanguageTitle, stage nodrop
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Reads by File Share, Recent alerts, Recent failed request, Recent Resource health incidents, Recent Service Health incidents, Resource health by event type, Service Health by event type, service health by event type-Time chart, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "category", "operationName", "time","level","resultType", "properties.title", "properties.details", "properties.currentHealthStatus", "properties.type", "properties.cause" as category, operationName, time,level,resultType, title, details, currentHealthStatus, type, cause nodrop
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Reads by File Share, Recent failed request, Recent Resource health incidents, Resource health by event type, service health by event type-Time chart, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "category", "properties.currentHealthStatus" as category, currentHealthStatus
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Reads by File Share, Recent failed request, Resource health by event type, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "category", "properties.incidentType", "properties.service", "properties.region" as category, incidentType, service, service_region
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Reads by File Share, Recent alerts, Recent failed request, Recent Resource health incidents, Resource health by event type, Service Health by event type, service health by event type-Time chart, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| json "category", "properties.requestBodySize" as category, request_body_size
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Reads by File Share, Recent alerts, Recent failed request, Recent Resource health incidents, Recent Service Health incidents, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "category", "properties.requestBodySize" as category, request_body_size
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?:Tables\(')?(?<table_name>[a-zA-Z0-9]*)" nodrop 
| parse regex field=objectKey "/(?:[^/]+)/(?<table_name_in_object>[^/]+)" nodrop 
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Queue Name by Failed Operations, Read, Read vs Write, Reads by Container Name, Reads by File Share, Reads by Queue Name, Reads by Table Name, Recent alerts, Recent failed policy events, Recent failed request, Recent recommendation events, Recent Resource health incidents, Recent security events, Recent Service Health incidents, Recent success policy events, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Table Name by Failed Operations, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources  by Failures, Top 10 Resources  by Server Latency, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total denied policy events, Total read, Total recommendation events, Total security events, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share, Writes by Queue Name, Writes by Table Name



## Parser:
```
| JSON "category", "properties.requestBodySize", "properties.objectKey", "uri" as category, request_body_size, objectKey, uri 
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?:Tables\(')?(?<table_name>[a-zA-Z0-9]*)" nodrop
| parse regex field=objectKey "/(?:[^/]+)/(?<table_name_in_object>[^/]+)" nodrop 
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Queue Name by Failed Operations, Read, Read vs Write, Reads by Container Name, Reads by File Share, Reads by Queue Name, Recent alerts, Recent failed policy events, Recent failed request, Recent recommendation events, Recent Resource health incidents, Recent security events, Recent Service Health incidents, Recent success policy events, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total denied policy events, Total read, Total recommendation events, Total security events, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share, Writes by Queue Name



## Parser:
```
| json "category", "properties.requestBodySize", "properties.serverLatencyMs","properties.serviceType" as category, request_body_size, server_latency, service_type  
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Reads by File Share, Recent alerts, Recent failed request, Recent Resource health incidents, Recent Service Health incidents, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "category", "properties.responseBodySize" as category, response_body_size
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Queue Name by Failed Operations, Read, Read vs Write, Reads by Container Name, Reads by File Share, Reads by Queue Name, Recent alerts, Recent failed policy events, Recent failed request, Recent recommendation events, Recent Resource health incidents, Recent security events, Recent Service Health incidents, Recent success policy events, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources  by Failures, Top 10 Resources  by Server Latency, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total denied policy events, Total read, Total recommendation events, Total security events, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share, Writes by Queue Name, Writes by Table Name



## Parser:
```
| JSON "category", "properties.responseBodySize" as category, response_body_size
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?:Tables\(')?(?<table_name>[a-zA-Z0-9]*)" nodrop 
| parse regex field=objectKey "/(?:[^/]+)/(?<table_name_in_object>[^/]+)" nodrop 
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Queue Name by Failed Operations, Read, Read vs Write, Reads by Container Name, Reads by File Share, Reads by Queue Name, Reads by Table Name, Recent alerts, Recent failed policy events, Recent failed request, Recent recommendation events, Recent Resource health incidents, Recent security events, Recent Service Health incidents, Recent success policy events, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Table Name by Failed Operations, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources  by Failures, Top 10 Resources  by Server Latency, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total denied policy events, Total read, Total recommendation events, Total security events, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share, Writes by Queue Name, Writes by Table Name



## Parser:
```
| json "category", "properties.responseBodySize", "properties.objectKey", "uri" as category, response_body_size, objectKey, uri
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?:Tables\(')?(?<table_name>[a-zA-Z0-9]*)" nodrop
| parse regex field=objectKey "/(?:[^/]+)/(?<table_name_in_object>[^/]+)" nodrop 
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Queue Name by Failed Operations, Read, Read vs Write, Reads by Container Name, Reads by File Share, Reads by Queue Name, Recent alerts, Recent failed policy events, Recent failed request, Recent recommendation events, Recent Resource health incidents, Recent security events, Recent Service Health incidents, Recent success policy events, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources  by Failures, Top 10 Resources  by Server Latency, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total denied policy events, Total read, Total recommendation events, Total security events, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share, Writes by Queue Name, Writes by Table Name



## Parser:
```
| json "category", "properties.responseBodySize", "properties.serverLatencyMs", "properties.serviceType" as category, response_body_size, server_latency, service_type
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Reads by File Share, Recent alerts, Recent failed request, Recent Resource health incidents, Recent Service Health incidents, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total read, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| Json "category", "properties.status", "properties.timeGeneratedUtc", "properties.processingEndTimeUtc", "properties.version", "properties.vendorName", "properties.productName", "properties.alertType", "properties.startTimeUtc", "properties.endTimeUtc", "properties.severity", "properties.isIncident", "properties.intent", "properties.compromisedEntity", "properties.alertDisplayName", "properties.description", "properties.productComponentName" as category, status, timeGeneratedUtc, processingEndTimeUtc, version, vendorName, productName, alertType, startTimeUtc, endTimeUtc, severity, isIncident, intent, compromisedEntity, alertDisplayName, description, productComponentName nodrop
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Queue Name by Failed Operations, Read, Read vs Write, Reads by Container Name, Reads by File Share, Reads by Queue Name, Recent alerts, Recent failed policy events, Recent failed request, Recent Resource health incidents, Recent security events, Recent Service Health incidents, Recent success policy events, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total denied policy events, Total read, Total recommendation events, Total security events, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share, Writes by Queue Name



## Parser:
```
| JSON "category", "resultType", "level", "properties.message", "properties.resourceLocation", "properties.entity" as category, resultType, level, message, resource_location, entity
| parse field=entity "/subscriptions/*/resourceGroups/*/providers/*/virtualMachines/*" as subscription_id, resource_group, providers, virtualMachines nodrop
| parse field=entity "/subscriptions/*/resourceGroups/*/providers/*/storageAccounts/*" as subscription_id, resource_group, providers, resource_name nodrop
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Queue Name by Failed Operations, Read, Read vs Write, Reads by Container Name, Reads by File Share, Reads by Queue Name, Recent alerts, Recent failed policy events, Recent failed request, Recent Resource health incidents, Recent Service Health incidents, Recent success policy events, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total read, Total recommendation events, Total security events, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share, Writes by Queue Name



## Parser:
```
| JSON "category", "resultType", "level", "providers", "properties.message", "properties.resourceLocation", "properties.entity" as category, resultType, level, providers, message, resource_location, entity nodrop
| parse field=entity "/subscriptions/*/resourceGroups/*/providers/*/virtualMachines/*" as subscription_id, resource_group, providers, virtualMachines nodrop
| parse field=entity "/subscriptions/*/resourceGroups/*/providers/*/storageAccounts/*" as subscription_id, resource_group, providers, resource_name nodrop
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Queue Name by Failed Operations, Read, Read vs Write, Reads by Container Name, Reads by File Share, Reads by Queue Name, Recent alerts, Recent failed request, Recent Resource health incidents, Recent Service Health incidents, Recent success policy events, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total read, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share, Writes by Queue Name



## Parser:
```
| JSON "category", "resultType", "properties.eventTimestamp", "properties.operationName", "properties.status" as category, resultType, eventTimestamp, operationName, status
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Reads by File Share, Recent alerts, Recent failed request, Recent Resource health incidents, Resource health by event type, service health by event type-Time chart, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity" as category, resultType, message, resourceLocation, entity
| parse field=entity "/subscriptions/*/resourceGroups/*/providers/*/virtualMachines/*" as subscription_id, resource_group, providers, virtualMachines nodrop
| parse field=entity "/subscriptions/*/resourceGroups/*/providers/*/storageAccounts/*" as subscription_id, resource_group, providers, resource_name nodrop
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Queue Name by Failed Operations, Read, Read vs Write, Reads by Container Name, Reads by File Share, Reads by Queue Name, Recent alerts, Recent failed policy events, Recent failed request, Recent Resource health incidents, Recent Service Health incidents, Recent success policy events, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total denied policy events, Total read, Total recommendation events, Total security events, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share, Writes by Queue Name



## Parser:
```
| JSON "category", "statusText", "properties.objectKey" as category,  statusText, objectKey
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?:Tables\(')?(?<table_name>[a-zA-Z0-9]*)" nodrop 
| parse regex field=objectKey "/(?:[^/]+)/(?<table_name_in_object>[^/]+)" nodrop 
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Queue Name by Failed Operations, Read, Read vs Write, Reads by Container Name, Reads by File Share, Reads by Queue Name, Recent alerts, Recent failed policy events, Recent failed request, Recent recommendation events, Recent Resource health incidents, Recent security events, Recent Service Health incidents, Recent success policy events, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources  by Failures, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total denied policy events, Total read, Total recommendation events, Total security events, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share, Writes by Queue Name



## Parser:
```
| JSON "category", "statusText", "properties.objectKey", "properties.serverLatencyMs" as category,  statusText, objectKey, server_latency
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?:Tables\(')?(?<table_name>[a-zA-Z0-9]*)" nodrop 
| parse regex field=objectKey "/(?:[^/]+)/(?<table_name_in_object>[^/]+)" nodrop 
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Queue Name by Failed Operations, Read, Read vs Write, Reads by Container Name, Reads by File Share, Reads by Queue Name, Recent alerts, Recent failed policy events, Recent failed request, Recent recommendation events, Recent Resource health incidents, Recent security events, Recent Service Health incidents, Recent success policy events, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources  by Failures, Top 10 Resources  by Server Latency, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total denied policy events, Total read, Total recommendation events, Total security events, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share, Writes by Queue Name



## Parser:
```
| json "identity.type" as type
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Distribution by identity type, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Transactions by TLS version



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Operations that caused server-side throttling errors, Operations used, Top 10 most common errors, Top 10 operations that caused the most errors



## Parser:
```
| json "properties.tlsVersion" as tlsVersion
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Transactions by TLS version



## Parser:
```
| json "properties.userAgentHeader" as userAgentHeader
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Transactions by TLS version



## Parser:
```
| json "resultType", "category", "operationName" as resultType, category, operationName
```
### Use Cases:
Changes - Read, Write and Delete, Operations that caused server-side throttling errors, Operations used, Top 10 operations that caused the most errors



## Parser:
```
| json "statusCode" as statusCode
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Recent failed request, Top 10 most common errors, Top 10 operations that caused the most errors



## Parser:
```
| json "statusCode", "properties.serviceType" as statusCode, service_type
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Reads by File Share, Recent alerts, Recent failed request, Recent Resource health incidents, Recent Service Health incidents, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| json "statusText"
```
### Use Cases:
Changes - Read, Write and Delete, Operations that caused server-side throttling errors, Operations used, Top 10 most common errors, Top 10 operations that caused the most errors



## Parser:
```
| json "statusText", "operationName" as statusText, operationName
```
### Use Cases:
Top 10 operations that caused the most errors



## Parser:
```
| JSON "uri", "category", "operationName", "statusText" as uri, category, operationName, statusText
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<container_name>[$a-zA-Z0-9-]+)(?<blob_file_path>[^?]+|$)?" nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Writes(MB), Transactions by location, Transactions by TLS version, Write, Writes by Container Name



## Parser:
```
| JSON "uri", "category", "properties.objectKey" as uri, category, objectKey
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<queue_name>[a-zA-Z0-9-]*)" nodrop
| parse regex field=objectKey "/(?:[^/]+)/(?<queue_name_in_object>[^/]+)" nodrop 
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Queue Name by Failed Operations, Read, Read vs Write, Reads by Container Name, Reads by File Share, Recent alerts, Recent failed request, Recent Resource health incidents, Recent Service Health incidents, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total read, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "uri", "category", "properties.objectKey", "operationName" as uri, category, objectKey, operationName
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<queue_name>[a-zA-Z0-9-]*)" nodrop
| parse regex field=objectKey "/(?:[^/]+)/(?<queue_name_in_object>[^/]+)" nodrop 
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Queue Name by Failed Operations, Read, Read vs Write, Reads by Container Name, Reads by File Share, Recent alerts, Recent failed request, Recent Resource health incidents, Recent Service Health incidents, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total read, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "uri", "category", "properties.objectKey", "properties.requestBodySize" as uri, category, objectKey, request_body_size
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<file_share>[a-zA-Z0-9-]*)(?<file_path>[^?]*|$)?" nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Writes(MB), Transactions by location, Transactions by TLS version, Write, Writes by Container Name



## Parser:
```
| JSON "uri", "category", "properties.objectKey", "properties.requestBodySize" as uri, category, objectKey, request_body_size
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<queue_name>[a-zA-Z0-9-]*)" nodrop
| parse regex field=objectKey "/(?:[^/]+)/(?<queue_name_in_object>[^/]+)" nodrop 
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Queue Name by Failed Operations, Read, Read vs Write, Reads by Container Name, Reads by File Share, Reads by Queue Name, Recent alerts, Recent failed request, Recent Resource health incidents, Recent Service Health incidents, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total read, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share, Writes by Queue Name



## Parser:
```
| JSON "uri", "category", "properties.objectKey", "properties.responseBodySize" as uri, category, objectKey, response_body_size
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<file_share>[a-zA-Z0-9-]*)(?<file_path>[^?]*|$)?" nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Reads by File Share, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "uri", "category", "properties.objectKey", "properties.responseBodySize" as uri, category, objectKey, response_body_size
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<queue_name>[a-zA-Z0-9-]*)" nodrop
| parse regex field=objectKey "/(?:[^/]+)/(?<queue_name_in_object>[^/]+)" nodrop 
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Queue Name by Failed Operations, Read, Read vs Write, Reads by Container Name, Reads by File Share, Reads by Queue Name, Recent alerts, Recent failed request, Recent Resource health incidents, Recent Service Health incidents, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total read, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "uri", "category", "properties.objectKey", "properties.serverLatencyMs" as uri, category, objectKey, server_latency
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<queue_name>[a-zA-Z0-9-]*)" nodrop
| parse regex field=objectKey "/(?:[^/]+)/(?<queue_name_in_object>[^/]+)" nodrop 
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Queue Name by Failed Operations, Read, Read vs Write, Reads by Container Name, Reads by File Share, Recent alerts, Recent failed request, Recent Resource health incidents, Recent Service Health incidents, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total read, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "uri", "category", "properties.requestBodySize" as uri, category, request_body_size
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<file_share>[a-zA-Z0-9-]*)(?<file_path>[^?]*|$)?" nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Writes(MB), Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "uri", "category", "properties.requestBodySize", "properties.objectKey" as uri, category, request_body_size, objectKey
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<queue_name>[a-zA-Z0-9-]*)" nodrop
| parse regex field=objectKey "/(?:[^/]+)/(?<queue_name_in_object>[^/]+)" nodrop 
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Reads by File Share, Recent alerts, Recent failed request, Recent Resource health incidents, Recent Service Health incidents, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total read, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "uri", "category", "properties.responseBodySize" as uri, category, response_body_size
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<container_name>[$a-zA-Z0-9-]+)(?<blob_file_path>[^?]+|$)?" nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Writes(MB), Transactions by location, Transactions by TLS version, Write, Writes by Container Name



## Parser:
```
| JSON "uri", "category", "properties.responseBodySize", "properties.objectKey" as uri, category, response_body_size, objectKey nodrop
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<queue_name>[a-zA-Z0-9-]*)" nodrop
| parse regex field=objectKey "/(?:[^/]+)/(?<queue_name_in_object>[^/]+)" nodrop 
```
### Use Cases:
Alerts over time, Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non 200 status code by Service Type, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Reads by File Share, Recent alerts, Recent failed request, Recent Resource health incidents, Recent Service Health incidents, Resource health by event type, Service Health by event type, service health by event type-Time chart, Storage Account Read Statistics, Storage Account Write Statistics, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Total alerts, Total read, Total write, Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "uri", "category", "statusText", "operationName" as uri, category, statusText, operationName
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<file_share>[a-zA-Z0-9-]*)(?<file_path>[^?]*|$)?" nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "uri", "category", "statusText", "properties.objectKey" as uri, category, statusText, objectKey
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<container_name>[$a-zA-Z0-9-]+)(?<blob_file_path>[^?]+|$)?" nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Writes(MB), Transactions by location, Transactions by TLS version, Write, Writes by Container Name



## Parser:
```
| JSON "uri", "category", "statusText", "properties.objectKey" as uri, category, statusText, objectKey
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<file_share>[a-zA-Z0-9-]*)(?<file_path>[^?]*|$)?" nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Reads by File Share, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "uri", "category", "statusText", "properties.objectKey", "properties.serverLatencyMs" as uri, category, statusText, objectKey, server_latency
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<container_name>[$a-zA-Z0-9-]+)(?<blob_file_path>[^?]+|$)?" nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read vs Write, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Latency, Transactions by location, Transactions by TLS version, Writes by Container Name



## Parser:
```
| JSON "uri", "category", "statusText", "properties.objectKey", "properties.serverLatencyMs" as uri, category, statusText, objectKey, server_latency
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<file_share>[a-zA-Z0-9-]*)(?<file_path>[^?]*|$)?" nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "uri", "category", "statusText", "properties.requestBodySize", "properties.objectKey" as uri, category, statusText, request_body_size, objectKey
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<container_name>[$a-zA-Z0-9-]+)(?<blob_file_path>[^?]+|$)?" nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read vs Write, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Latency, Top 10 Resources by Writes(MB), Transactions by location, Transactions by TLS version, Writes by Container Name



## Parser:
```
| JSON "uri", "category", "statusText", "properties.requestBodySize", "properties.objectKey" as uri, category, statusText, request_body_size, objectKey
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<file_share>[a-zA-Z0-9-]*)(?<file_path>[^?]*|$)?" nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Writes(MB), Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "uri", "category", "statusText", "properties.responseBodySize", "properties.objectKey" as uri, category, statusText, response_body_size, objectKey
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<container_name>[$a-zA-Z0-9-]+)(?<blob_file_path>[^?]+|$)?" nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read vs Write, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Writes(MB), Transactions by location, Transactions by TLS version, Writes by Container Name



## Parser:
```
| JSON "uri", "category", "statusText", "properties.responseBodySize", "properties.objectKey" as uri, category, statusText, response_body_size, objectKey
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<file_share>[a-zA-Z0-9-]*)(?<file_path>[^?]*|$)?" nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, File Share by Failed Operations, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Reads by File Share, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Server Latency, Top 10 Resources by Writes(MB), Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| JSON "uri","category", "properties.requestBodySize" as uri, category, request_body_size nodrop
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<container_name>[$a-zA-Z0-9-]+)(?<blob_file_path>[^?]+|$)?" nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read vs Write, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Writes(MB), Transactions by location, Transactions by TLS version, Write, Writes by Container Name



## Parser:
```
| JSON "uri","category", "properties.responseBodySize" as uri, category, response_body_size
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<container_name>[$a-zA-Z0-9-]+)(?<blob_file_path>[^?]+|$)?" nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Writes(MB), Transactions by location, Transactions by TLS version, Write, Writes by Container Name



## Parser:
```
| JSON "uri","category", "properties.responseBodySize" as uri, category, response_body_size
| parse regex field=uri "https?://(?<storagedomain>[^/]+)/(?<file_share>[a-zA-Z0-9-]*)(?<file_path>[^?]*|$)?" nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Container Name by Failed Operations, Distribution by identity type, Distribution by user agent, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Read, Read vs Write, Reads by Container Name, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors, Top 10 Resources by Failures, Top 10 Resources by Latency, Top 10 Resources by Reads(MB), Top 10 Resources by Writes(MB), Transactions by location, Transactions by TLS version, Write, Writes by Container Name, Writes by File Share



## Parser:
```
| json field=_raw  "properties.objectKey", "properties.serviceType", "properties.clientRequestId", "statusCode", "category", "operationName", "statusText", "properties.metricResponseType" as filePath, serviceType, clientRequestId, statusCode, category, operationName, statusText, ResponseType 
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Operations that caused server-side throttling errors, Operations used, Recent failed request, Top 10 most common errors, Top 10 operations that caused the most errors



## Parser:
```
| json field=_raw "properties.responseBodySize", "properties.requestBodySize", "properties.objectKey", "properties.serviceType", "properties.clientRequestId", "statusCode", "durationMs", "category", "operationName" as responseBodySize, requestBodySize, filePath, serviceType, clientRequestId, statusCode, durationMs, category, operationName nodrop
```
### Use Cases:
Changes, Changes - Read, Write and Delete, Failed request count by status text, Failed Transaction by Category, Failed Transactions, Non-zero status code by storage account, Operations that caused server-side throttling errors, Operations used, Recent failed request, Top 10 high latency transactions, Top 10 most common errors, Top 10 operations that caused the most errors


