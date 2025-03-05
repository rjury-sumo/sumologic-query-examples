# Parsers For Azure Cosmos DB

## Parser:
```
| json "activityId", "properties", "category"
| json field=properties "operationType", "databaseName","collectionName","partitionKeyRangeId", "requestCharge" 
| json "properties.activityId", "properties.databasename", "properties.collectionname", "properties.useragent", "properties.numberofrowsreturned", "properties.querytext", "properties.queryexecutionstatus" as activityId, databaseName, collectionName, useragent, numberofrowsreturned, querytext, queryexecutionstatus
| json field=querytext "query" 
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Data Plane Request Location, Data Plane Request Trend, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Duration distribution by Database, Collection, Duration in Direct Connection Mode, Duration in Gateway Connection Mode, Duration Stats by Database, Collection, Failed Policy Events, Failed Requests, Max Duration in Direct Connection Mode, Max Duration in Gateway Mode, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Request Charge by Database, Collection, Request Charge Stats by Database, Collection, PartitionKeyRangeId, Resource Health by  Status, Response Length Stats by Database, Collection, Service Health by Incident Type, Status Code by Database, Collection, Top 10 operations that caused the most errors, Top 10 User Agents, Top 3 expensive queries (duration) by database, collection, Top 3 expensive queries (request charge consumed) by database, collection, Top 3 expensive queries (response length) by database, collection, Top 3 expensive queries (rows returned) by database, collection, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category"
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Data Plane Request Location, Data Plane Request Trend, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Duration distribution by Database, Collection, Duration in Direct Connection Mode, Duration in Gateway Connection Mode, Failed Requests, Max Duration in Direct Connection Mode, Max Duration in Gateway Mode, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Request Charge by Database, Collection, Resource Health by  Status, Service Health by Incident Type, Status Code by Database, Collection, Top 10 operations that caused the most errors, Top 10 User Agents, Total Failed Requests, Total Recommendation Events, Users / Applications by Operation type



## Parser:
```
| json "category", "operationName", "properties.activityId", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength" as category, operationName, activityId, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength nodrop
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Data Plane Request Location, Data Plane Request Trend, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Duration distribution by Database, Collection, Duration in Direct Connection Mode, Duration in Gateway Connection Mode, Duration Stats by Database, Collection, Failed Policy Events, Failed Requests, Max Duration in Direct Connection Mode, Max Duration in Gateway Mode, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Request Charge by Database, Collection, Request Charge Stats by Database, Collection, PartitionKeyRangeId, Resource Health by  Status, Response Length Stats by Database, Collection, Service Health by Incident Type, Status Code by Database, Collection, Top 10 operations that caused the most errors, Top 10 User Agents, Top 3 expensive queries (duration) by database, collection, Top 3 expensive queries (response length) by database, collection, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "category", "operationName", "properties.activityId", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength" as category, operationName, activityId, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength nodrop
| json "properties.activityId", "properties.databasename", "properties.collectionname", "properties.useragent", "properties.numberofrowsreturned", "properties.querytext", "properties.queryexecutionstatus" as activityId, databaseName, collectionName, useragent, numberofrowsreturned, querytext, queryexecutionstatus
| json field=querytext "query" 
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Data Plane Request Location, Data Plane Request Trend, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Duration distribution by Database, Collection, Duration in Direct Connection Mode, Duration in Gateway Connection Mode, Failed Policy Events, Failed Requests, Max Duration in Direct Connection Mode, Max Duration in Gateway Mode, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Request Charge by Database, Collection, Resource Health by  Status, Service Health by Incident Type, Status Code by Database, Collection, Top 10 operations that caused the most errors, Top 10 User Agents, Top 3 expensive queries (duration) by database, collection, Top 3 expensive queries (response length) by database, collection, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "category", "operationName", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength" as category, operationName, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Data Plane Request Location, Data Plane Request Trend, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Duration distribution by Database, Collection, Duration in Direct Connection Mode, Duration in Gateway Connection Mode, Failed Requests, Max Duration in Direct Connection Mode, Max Duration in Gateway Mode, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Request Charge by Database, Collection, Resource Health by  Status, Service Health by Incident Type, Status Code by Database, Collection, Top 10 operations that caused the most errors, Top 10 User Agents, Total Failed Requests, Users / Applications by Operation type



## Parser:
```
| json "category", "operationName", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength", "properties.activityId" as category, operationName, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength, activityId 
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Data Plane Request Location, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Duration distribution by Database, Collection, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Request Charge by Database, Collection, Resource Health by  Status, Service Health by Incident Type, Status Code by Database, Collection, Top 10 operations that caused the most errors, Top 10 User Agents, Users / Applications by Operation type



## Parser:
```
| json "category", "operationName", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength", "properties.activityId" as category, operationName, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength, activityId nodrop
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Data Plane Request Location, Data Plane Request Trend, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Duration distribution by Database, Collection, Duration in Direct Connection Mode, Failed Requests, Max Duration in Direct Connection Mode, Max Duration in Gateway Mode, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Request Charge by Database, Collection, Resource Health by  Status, Service Health by Incident Type, Status Code by Database, Collection, Top 10 operations that caused the most errors, Top 10 User Agents, Total Failed Requests, Users / Applications by Operation type



## Parser:
```
| json "category", "operationName", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength", "properties.activityId", "properties.requestCharge" as category, operationName, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength, activityId, requestCharge
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Request Charge by Database, Collection, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Users / Applications by Operation type



## Parser:
```
| JSON "category", "operationName", "resultType", "properties.recommendationName", "properties.recommendationCategory", "properties.recommendationImpact", "properties.recommendationResourceLink" as category, operationName, resultType, recommendationName, recommendationCategory, recommendationImpact, recommendationResourceLink 
| parse field=operationName "*/*/*/*" as provider, category, operation_name, action nodrop
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Data Plane Request Location, Data Plane Request Trend, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Duration distribution by Database, Collection, Duration in Direct Connection Mode, Duration in Gateway Connection Mode, Failed Policy Events, Failed Requests, Max Duration in Direct Connection Mode, Max Duration in Gateway Mode, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Request Charge by Database, Collection, Resource Health by  Status, Service Health by Incident Type, Status Code by Database, Collection, Top 10 operations that caused the most errors, Top 10 User Agents, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "operationName", "time","level","resultType", "properties.title", "properties.details", "properties.currentHealthStatus", "properties.type", "properties.cause" as category, operationName, time,level,resultType, title, details, currentHealthStatus, type, cause nodrop
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Resource Health Incidents, Recent Write Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.currentHealthStatus" as category, currentHealthStatus
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Write Operations, Resource Health by  Status, Top 10 operations that caused the most errors, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.incidentType", "properties.service", "properties.region", "properties.impactedServices" as category, incidentType, service, service_region, impactedServices nodrop
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Resource Health Incidents, Recent Write Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.incidentType", "properties.service", "properties.region", "properties.impactedServices" as category, incidentType, service, service_region, impactedServices nodrop
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType" as category, resultType
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Data Plane Request Location, Data Plane Request Trend, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Duration distribution by Database, Collection, Duration in Direct Connection Mode, Duration in Gateway Connection Mode, Failed Policy Events, Failed Requests, Max Duration in Direct Connection Mode, Max Duration in Gateway Mode, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Request Charge by Database, Collection, Resource Health by  Status, Service Health by Incident Type, Status Code by Database, Collection, Top 10 operations that caused the most errors, Top 10 User Agents, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Data Plane Request Location, Data Plane Request Trend, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Duration distribution by Database, Collection, Duration in Direct Connection Mode, Duration in Gateway Connection Mode, Failed Policy Events, Failed Requests, Max Duration in Direct Connection Mode, Max Duration in Gateway Mode, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Request Charge by Database, Collection, Resource Health by  Status, Service Health by Incident Type, Status Code by Database, Collection, Top 10 operations that caused the most errors, Top 10 User Agents, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
| parse field=entity "/subscriptions/*/resourceGroups/*/providers/*/*/*" as subscription_id, resource_group, providers, virtualMachineScaleSets, aks nodrop
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Data Plane Request Location, Data Plane Request Trend, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Duration distribution by Database, Collection, Duration in Direct Connection Mode, Duration in Gateway Connection Mode, Failed Requests, Max Duration in Direct Connection Mode, Max Duration in Gateway Mode, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Request Charge by Database, Collection, Resource Health by  Status, Service Health by Incident Type, Status Code by Database, Collection, Top 10 operations that caused the most errors, Top 10 User Agents, Total Failed Requests, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "category","activityId", "properties"
| json field=properties "operationType", "databaseName","collectionName","partitionKeyRangeId", "requestCharge" 
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Data Plane Request Location, Data Plane Request Trend, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Duration distribution by Database, Collection, Duration in Direct Connection Mode, Duration in Gateway Connection Mode, Failed Policy Events, Failed Requests, Max Duration in Direct Connection Mode, Max Duration in Gateway Mode, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Request Charge by Database, Collection, Request Charge Stats by Database, Collection, PartitionKeyRangeId, Resource Health by  Status, Service Health by Incident Type, Status Code by Database, Collection, Top 10 operations that caused the most errors, Top 10 User Agents, Top 3 expensive queries (duration) by database, collection, Top 3 expensive queries (response length) by database, collection, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "properties.activityId", "properties.databasename", "properties.collectionname", "properties.useragent", "properties.numberofrowsreturned", "properties.querytext", "properties.queryexecutionstatus" as activityId, databaseName, collectionName, useragent, numberofrowsreturned, querytext, queryexecutionstatus
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Data Plane Request Location, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Request Charge by Database, Collection, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Top 10 User Agents, Users / Applications by Operation type



## Parser:
```
| json "properties.activityId", "properties.databasename", "properties.collectionname", "properties.useragent", "properties.numberofrowsreturned", "properties.querytext", "properties.queryexecutionstatus", "category" as activityId, databaseName, collectionName, useragent, numberofrowsreturned, querytext, queryexecutionstatus, category
| json field=querytext "query" 
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Data Plane Request Location, Data Plane Request Trend, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Duration distribution by Database, Collection, Duration in Direct Connection Mode, Duration in Gateway Connection Mode, Duration Stats by Database, Collection, Failed Policy Events, Failed Requests, Max Duration in Direct Connection Mode, Max Duration in Gateway Mode, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Request Charge by Database, Collection, Request Charge Stats by Database, Collection, PartitionKeyRangeId, Resource Health by  Status, Response Length Stats by Database, Collection, Service Health by Incident Type, Status Code by Database, Collection, Top 10 operations that caused the most errors, Top 10 User Agents, Top 3 expensive queries (duration) by database, collection, Top 3 expensive queries (response length) by database, collection, Top 3 expensive queries (rows returned) by database, collection, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



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
| json "properties"
| json field=properties "operationType", "databaseName","collectionName","partitionKeyRangeId", "requestCharge" 
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Data Plane Request Location, Data Plane Request Trend, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Duration distribution by Database, Collection, Duration in Direct Connection Mode, Duration in Gateway Connection Mode, Duration Stats by Database, Collection, Failed Policy Events, Failed Requests, Max Duration in Direct Connection Mode, Max Duration in Gateway Mode, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Request Charge by Database, Collection, Request Charge Stats by Database, Collection, PartitionKeyRangeId, Request units by Operation Type, Request units per sec by databaseName, collectionName, partitionKeyRangeId, Resource Health by  Status, Response Length Stats by Database, Collection, RU consumption by logical partition, RU consumption by physical partition, Service Health by Incident Type, Status Code by Database, Collection, Top 10 operations that caused the most errors, Top 10 partitions by utilisation, Top 10 User Agents, Top 3 expensive queries (duration) by database, collection, Top 3 expensive queries (request charge consumed) by database, collection, Top 3 expensive queries (response length) by database, collection, Top 3 expensive queries (rows returned) by database, collection, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "properties"
| json field=properties "operationType", "databaseName","collectionName","partitionKeyRangeId", "requestCharge", "partitionKey" 
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Data Plane Request Location, Data Plane Request Trend, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Duration distribution by Database, Collection, Duration in Direct Connection Mode, Duration in Gateway Connection Mode, Duration Stats by Database, Collection, Failed Policy Events, Failed Requests, Max Duration in Direct Connection Mode, Max Duration in Gateway Mode, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Request Charge by Database, Collection, Request Charge Stats by Database, Collection, PartitionKeyRangeId, Request units by Operation Type, Resource Health by  Status, Response Length Stats by Database, Collection, RU consumption by logical partition, RU consumption by physical partition, Service Health by Incident Type, Status Code by Database, Collection, Top 10 operations that caused the most errors, Top 10 partitions by utilisation, Top 10 User Agents, Top 3 expensive queries (duration) by database, collection, Top 3 expensive queries (request charge consumed) by database, collection, Top 3 expensive queries (response length) by database, collection, Top 3 expensive queries (rows returned) by database, collection, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "properties"
| json field=properties "operationType", "databaseName","collectionName","partitionKeyRangeId", "requestCharge", "partitionKey" 
| extract field=partitionKey "(?<partitionKey>[\w-]+)" multi
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Data Plane Request Location, Data Plane Request Trend, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Duration distribution by Database, Collection, Duration in Direct Connection Mode, Duration in Gateway Connection Mode, Duration Stats by Database, Collection, Failed Policy Events, Failed Requests, Max Duration in Direct Connection Mode, Max Duration in Gateway Mode, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Request Charge by Database, Collection, Request Charge Stats by Database, Collection, PartitionKeyRangeId, Request units by Operation Type, Resource Health by  Status, Response Length Stats by Database, Collection, RU consumption by logical partition, Service Health by Incident Type, Status Code by Database, Collection, Top 10 operations that caused the most errors, Top 10 partitions by utilisation, Top 10 User Agents, Top 3 expensive queries (duration) by database, collection, Top 3 expensive queries (request charge consumed) by database, collection, Top 3 expensive queries (response length) by database, collection, Top 3 expensive queries (rows returned) by database, collection, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "properties"
| json field=properties "sizeKb", "databaseName","collectionName", "partitionKey" 
| extract field=partitionKey "(?<partitionKey>[\w-]+)" multi
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Data Plane Request Location, Data Plane Request Trend, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Duration distribution by Database, Collection, Duration in Direct Connection Mode, Duration in Gateway Connection Mode, Duration Stats by Database, Collection, Failed Policy Events, Failed Requests, Max Duration in Direct Connection Mode, Max Duration in Gateway Mode, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Request Charge by Database, Collection, Request Charge Stats by Database, Collection, PartitionKeyRangeId, Resource Health by  Status, Response Length Stats by Database, Collection, Service Health by Incident Type, Status Code by Database, Collection, Top 10 operations that caused the most errors, Top 10 partitions by utilisation, Top 10 User Agents, Top 3 expensive queries (duration) by database, collection, Top 3 expensive queries (request charge consumed) by database, collection, Top 3 expensive queries (response length) by database, collection, Top 3 expensive queries (rows returned) by database, collection, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



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



## Parser:
```
| json "time", "category", "operationName", "properties.httpstatusCode", "properties.activityId", "properties.result", "properties.httpMethod", "properties.apiKind", "properties.apiKindResourceType", "properties.operationType", "properties.resourceUri", "properties.resourceDetails"  as time, category, operationName, statusCode, activityId, result, httpMethod,  apiKind, apiKindResourceType, operationType, resourceUri, resourceDetails  nodrop
```
### Use Cases:
Control Plane Create Operations, Control Plane Delete Operations, Control Plane Update Operations, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Control Plane Create Operations, Recent Control Plane Update Operations, Recent Delete Control Plane Operations, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Users / Applications by Operation type


