# Parsers For Azure Service Bus

## Parser:
```
| JSON "category"
```
### Use Cases:
Activity by Location, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failures by Entity Type, IP Filtering actions, Operation Result Distribution, Recent Delete Operations, Recent Write Operations, Requests by Caller, Requests by Event Type, Top 10 Failed Operations, Top 10 Failed Queues, Top 10 Failed Topics, Top 10 IPs  with Deny Connection, Top 10 Operations That Caused The Most Errors, Top 3 Common Error Messages by Entity, Total Recommendation Events, Users / Applications by Operation type



## Parser:
```
| json "category", "action" as category, action
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failures by Entity Type, IP Filtering actions, Operation Result Distribution, Recent Delete Operations, Recent Write Operations, Requests by Caller, Top 10 Failed Operations, Top 10 Failed Queues, Top 10 Failed Topics, Top 10 Operations That Caused The Most Errors, Top 3 Common Error Messages by Entity, Users / Applications by Operation type



## Parser:
```
| json "category", "action", "ipAddress" as category, action, ipAddress
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failures by Entity Type, IP Filtering actions, Operation Result Distribution, Recent Delete Operations, Recent Write Operations, Requests by Caller, Top 10 Failed Operations, Top 10 Failed Queues, Top 10 Failed Topics, Top 10 IPs  with Deny Connection, Top 10 Operations That Caused The Most Errors, Top 3 Common Error Messages by Entity, Users / Applications by Operation type



## Parser:
```
| json "category", "ActivityName", "EntityName" as category, ActivityName, EntityName
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failures by Entity Type, Operation Result Distribution, Recent Delete Operations, Recent Write Operations, Top 10 Failed Operations, Top 10 Failed Queues, Top 10 Failed Topics, Top 10 Operations That Caused The Most Errors, Top 3 Common Error Messages by Entity, Users / Applications by Operation type



## Parser:
```
| json "category", "Caller" as category, Caller
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failures by Entity Type, Operation Result Distribution, Recent Delete Operations, Recent Write Operations, Requests by Caller, Top 10 Failed Operations, Top 10 Failed Queues, Top 10 Failed Topics, Top 10 Operations That Caused The Most Errors, Top 3 Common Error Messages by Entity, Users / Applications by Operation type



## Parser:
```
| json "category", "ClientIp" as category, ipAddress
```
### Use Cases:
Activity by Location, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failures by Entity Type, IP Filtering actions, Operation Result Distribution, Recent Delete Operations, Recent Write Operations, Requests by Caller, Top 10 Failed Operations, Top 10 Failed Queues, Top 10 Failed Topics, Top 10 IPs  with Deny Connection, Top 10 Operations That Caused The Most Errors, Top 3 Common Error Messages by Entity, Users / Applications by Operation type



## Parser:
```
| json "category", "EntityType", "EntityName" as category, EntityType, EntityName
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failures by Entity Type, Operation Result Distribution, Recent Delete Operations, Recent Write Operations, Top 10 Failed Queues, Top 10 Failed Topics, Top 10 Operations That Caused The Most Errors, Top 3 Common Error Messages by Entity, Users / Applications by Operation type



## Parser:
```
| json "category", "EntityType", "EntityName" as category, EntityType, topic_name
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Operation Result Distribution, Recent Delete Operations, Recent Write Operations, Top 10 Failed Queues, Top 10 Failed Topics, Top 10 Operations That Caused The Most Errors, Top 3 Common Error Messages by Entity, Users / Applications by Operation type



## Parser:
```
| json "category", "EntityType", "EntityName", "ErrorMessage" as category, EntityType, EntityName, ErrorMessage
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Recent Write Operations, Top 10 Operations That Caused The Most Errors, Top 3 Common Error Messages by Entity, Users / Applications by Operation type



## Parser:
```
| json "category", "EventName" as category, EventName
```
### Use Cases:
Activity by Location, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failures by Entity Type, IP Filtering actions, Operation Result Distribution, Recent Delete Operations, Recent Write Operations, Requests by Caller, Requests by Event Type, Top 10 Failed Operations, Top 10 Failed Queues, Top 10 Failed Topics, Top 10 IPs  with Deny Connection, Top 10 Operations That Caused The Most Errors, Top 3 Common Error Messages by Entity, Users / Applications by Operation type



## Parser:
```
| JSON "category", "operationName", "resultType", "properties.recommendationName", "properties.recommendationCategory", "properties.recommendationImpact", "properties.recommendationResourceLink" as category, operationName, resultType, recommendationName, recommendationCategory, recommendationImpact, recommendationResourceLink 
| parse field=operationName "*/*/*/*" as provider, category, operation_name, action nodrop
```
### Use Cases:
Activity by Location, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Policy Events, Failures by Entity Type, IP Filtering actions, Operation Result Distribution, Recent Delete Operations, Recent Recommendation Events, Recent Write Operations, Requests by Caller, Requests by Event Type, Top 10 Failed Operations, Top 10 Failed Queues, Top 10 Failed Topics, Top 10 IPs  with Deny Connection, Top 10 Operations That Caused The Most Errors, Top 3 Common Error Messages by Entity, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "category", "OperationResult", "EntityName" as category, OperationResult, EntityName
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Operation Result Distribution, Recent Delete Operations, Recent Write Operations, Top 10 Operations That Caused The Most Errors, Top 3 Common Error Messages by Entity, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType" as category, resultType
```
### Use Cases:
Activity by Location, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Policy Events, Failures by Entity Type, IP Filtering actions, Operation Result Distribution, Recent Delete Operations, Recent Recommendation Events, Recent Write Operations, Requests by Caller, Requests by Event Type, Top 10 Failed Operations, Top 10 Failed Queues, Top 10 Failed Topics, Top 10 IPs  with Deny Connection, Top 10 Operations That Caused The Most Errors, Top 3 Common Error Messages by Entity, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
```
### Use Cases:
Activity by Location, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Policy Events, Failures by Entity Type, IP Filtering actions, Operation Result Distribution, Recent Delete Operations, Recent Write Operations, Requests by Caller, Requests by Event Type, Top 10 Failed Operations, Top 10 Failed Queues, Top 10 Failed Topics, Top 10 IPs  with Deny Connection, Top 10 Operations That Caused The Most Errors, Top 3 Common Error Messages by Entity, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
| parse field=entity "/subscriptions/*/resourceGroups/*/providers/*/*/*" as subscription_id, resource_group, providers, virtualMachineScaleSets, aks nodrop
```
### Use Cases:
Activity by Location, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failures by Entity Type, IP Filtering actions, Operation Result Distribution, Recent Delete Operations, Recent Write Operations, Requests by Caller, Requests by Event Type, Top 10 Failed Operations, Top 10 Failed Queues, Top 10 Failed Topics, Top 10 IPs  with Deny Connection, Top 10 Operations That Caused The Most Errors, Top 3 Common Error Messages by Entity, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid nodrop
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Recent Delete Operations, Top 10 Operations That Caused The Most Errors, Users / Applications by Operation type



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods nodrop
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Recent Write Operations, Top 10 Operations That Caused The Most Errors, Users / Applications by Operation type



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "properties.entity", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, entity, identity_claims_name, authmethods nodrop
```
### Use Cases:
Recent Delete Operations, Top 10 Operations That Caused The Most Errors



## Parser:
```
| json "resultType", "category" as resultType, category
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Top 10 Operations That Caused The Most Errors, Users / Applications by Operation type



## Parser:
```
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Recent Delete Operations, Top 10 Operations That Caused The Most Errors



## Parser:
```
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
| parse field=operationName "*/*/*" as provider_name, resource_type, operation_name
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Recent Delete Operations, Top 10 Operations That Caused The Most Errors



## Parser:
```
| json "resultType", "operationName", "properties.statusMessage", "category"  as resultType, operationName, failureMessage, category nodrop
| parse field=operationname "*/*/*" as provider_name, resource_type, operation nodrop
```
### Use Cases:
Top 10 Operations That Caused The Most Errors


