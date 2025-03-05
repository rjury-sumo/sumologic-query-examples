# Parsers For Azure Load Balancer

## Parser:
```
| JSON "category", "operationName", "properties.HealthEventType" as category, operationName, HealthEventType
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Failures by Operation, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Total Failed Requests, Users / Applications by Operation type



## Parser:
```
| JSON "category", "operationName", "properties.HealthEventType" as category, operationName, HealthEventType
| parse field=operationName "*/*/*/*" as provider_name, resource_type, event_type, operation_name
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Failures by Operation, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Users / Applications by Operation type



## Parser:
```
| JSON "category", "operationName", "properties.HealthEventType", "properties.Severity", "properties.Description", "properties.Frontend Ip" as category, operationName, HealthEventType, Severity, Description, FrontendIp
| parse field=operationName "*/*/*/*" as provider_name, resource_type, event_type, operation_name
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Failures by Operation, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Total Failed Requests, UnHealthy Backends, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType" as category, resultType
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Failed Policy Events, Failures by Operation, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Total Failed Policy Events, Total Failed Requests, Total Success Policy Events, UnHealthy Backends, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Failed Policy Events, Failures by Operation, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Total Failed Policy Events, Total Failed Requests, Total Success Policy Events, UnHealthy Backends, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
| parse field=entity "/subscriptions/*/resourceGroups/*/providers/*/*/*" as subscription_id, resource_group, providers, virtualMachineScaleSets, aks nodrop
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Failures by Operation, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Total Failed Requests, Total Success Policy Events, UnHealthy Backends, Users / Applications by Operation type



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
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Users / Applications by Operation type



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "properties.entity", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, entity, identity_claims_name, authmethods nodrop
```
### Use Cases:
Recent Delete Operations, Top 10 operations that caused the most errors



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


