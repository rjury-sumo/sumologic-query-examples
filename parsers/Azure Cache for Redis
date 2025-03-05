# Parsers For Azure Cache for Redis

## Parser:
```
| JSON "category"
```
### Use Cases:
Connections by Location, Connections by Resource Name, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Event Types, Failure by Operation, MSEntra Authentication Audit Details, Recent Delete Operations, Recent Write Operations, Requests by Location, Requests by Resource Name, Requests by Username, Top 10 IPs by Connection Count, Top 10 operations that caused the most errors, Total Connections, Total Recommendation Events, Total Unique Connected Clients, Users / Applications by Operation type



## Parser:
```
| JSON "category", "operationName", "properties.eventType", "properties.eventStatus", "properties.clientIP" as category, operationName, eventType, eventStatus, clientIP
| parse field=operationName "Microsoft.Cache/redisEnterprise/databases/ConnectionEvents/*" as operation
```
### Use Cases:
Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failure by Operation, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Total Connections, Users / Applications by Operation type



## Parser:
```
| JSON "category", "operationName", "resultType", "properties.recommendationName", "properties.recommendationCategory", "properties.recommendationImpact", "properties.recommendationResourceLink" as category, operationName, resultType, recommendationName, recommendationCategory, recommendationImpact, recommendationResourceLink 
| parse field=operationName "*/*/*/*" as provider, category, operation_name, action nodrop
```
### Use Cases:
Connections by Location, Connections by Resource Name, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Event Types, Failed Policy Events, Failure by Operation, MSEntra Authentication Audit Details, Recent Delete Operations, Recent Recommendation Events, Recent Write Operations, Requests by Location, Requests by Resource Name, Requests by Username, Top 10 IPs by Connection Count, Top 10 operations that caused the most errors, Total Connections, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Total Unique Connected Clients, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.auditLog.username" as category, username
```
### Use Cases:
Connections by Location, Connections by Resource Name, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Event Types, Failure by Operation, MSEntra Authentication Audit Details, Recent Delete Operations, Recent Write Operations, Requests by Location, Requests by Username, Top 10 IPs by Connection Count, Top 10 operations that caused the most errors, Total Connections, Total Unique Connected Clients, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.auditLog.username", "properties.auditLog.authentication", "properties.auditLog.ipAddress", "properties.auditLog.clientName", "properties.auditLog.message" as category, username, authentication, ipAddress, clientName, message nodrop
```
### Use Cases:
Connections by Location, Connections by Resource Name, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Event Types, Failure by Operation, MSEntra Authentication Audit Details, Recent Delete Operations, Recent Write Operations, Top 10 IPs by Connection Count, Top 10 operations that caused the most errors, Total Connections, Total Unique Connected Clients, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.clientIP" as category, clientIP
```
### Use Cases:
Connections by Location, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Event Types, Failure by Operation, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Total Connections, Total Unique Connected Clients, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.connectedClients" as category, connectedClients
| json "properties.connectedClients[*]" as client_obj
| parse regex field=client_obj "(?<client_conn_info>\{[^\{]+\})" multi
| json field=client_conn_info "ip", "count" as client_ip, client_count
```
### Use Cases:
Connections by Location, Connections by Resource Name, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Event Types, Failure by Operation, Recent Delete Operations, Recent Write Operations, Top 10 IPs by Connection Count, Top 10 operations that caused the most errors, Total Connections, Total Unique Connected Clients, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.eventType", "properties.clientIP" as category, eventType, clientIP
```
### Use Cases:
Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Event Types, Failure by Operation, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Total Connections, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.tenant" as category, tenant
```
### Use Cases:
Connections by Location, Connections by Resource Name, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Event Types, Failure by Operation, MSEntra Authentication Audit Details, Recent Delete Operations, Recent Write Operations, Requests by Location, Requests by Resource Name, Requests by Username, Top 10 IPs by Connection Count, Top 10 operations that caused the most errors, Total Connections, Total Unique Connected Clients, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType" as category, resultType
```
### Use Cases:
Connections by Location, Connections by Resource Name, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Event Types, Failed Policy Events, Failure by Operation, MSEntra Authentication Audit Details, Recent Delete Operations, Recent Recommendation Events, Recent Write Operations, Requests by Location, Requests by Resource Name, Requests by Username, Top 10 IPs by Connection Count, Top 10 operations that caused the most errors, Total Connections, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Total Unique Connected Clients, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
```
### Use Cases:
Connections by Location, Connections by Resource Name, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Event Types, Failed Policy Events, Failure by Operation, MSEntra Authentication Audit Details, Recent Delete Operations, Recent Write Operations, Requests by Location, Requests by Resource Name, Requests by Username, Top 10 IPs by Connection Count, Top 10 operations that caused the most errors, Total Connections, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Total Unique Connected Clients, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
| parse field=entity "/subscriptions/*/resourceGroups/*/providers/*/*/*" as subscription_id, resource_group, providers, virtualMachineScaleSets, aks nodrop
```
### Use Cases:
Connections by Location, Connections by Resource Name, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Event Types, Failure by Operation, MSEntra Authentication Audit Details, Recent Delete Operations, Recent Write Operations, Requests by Location, Requests by Resource Name, Requests by Username, Top 10 IPs by Connection Count, Top 10 operations that caused the most errors, Total Connections, Total Recommendation Events, Total Success Policy Events, Total Unique Connected Clients, Users / Applications by Operation type



## Parser:
```
| json "properties.auditLog.ipAddress" as ipAddress
| split ipAddress delim=':' extract 1 as ipAddress
```
### Use Cases:
Connections by Location, Connections by Resource Name, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Event Types, Failure by Operation, MSEntra Authentication Audit Details, Recent Delete Operations, Recent Write Operations, Requests by Location, Top 10 IPs by Connection Count, Top 10 operations that caused the most errors, Total Connections, Total Unique Connected Clients, Users / Applications by Operation type



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
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Recent Delete Operations, Top 10 operations that caused the most errors



## Parser:
```
| json "resultType", "operationName", "properties.statusMessage", "category"  as resultType, operationName, failureMessage, category nodrop
| parse field=operationname "*/*/*" as provider_name, resource_type, operation nodrop
```
### Use Cases:
Top 10 operations that caused the most errors


