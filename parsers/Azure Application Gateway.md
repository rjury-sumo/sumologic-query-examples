# Parsers For Azure Application Gateway

## Parser:
```
| JSON "category"
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "category", "backendPoolName", "properties.clientResponseTime", "properties.serverResponseLatency", "properties.WAFEvaluationTime", "properties.error_info" as category, backendPoolName, clientResponseTime, serverResponseLatency, WAFEvaluationTime, error_info nodrop
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| Json "category", "level", "resultType", "resultDescription", "properties.compromisedEntity", "properties.severity", "properties.intent", "properties.remediationSteps", "properties.attackedResourceType", "properties.eventName" as category, level, resultType, resultDescription, compromisedEntity, severity, intent, remediationSteps, attackedResourceType, eventName nodrop
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "operationName", "resultType", "properties.recommendationName", "properties.recommendationCategory", "properties.recommendationImpact", "properties.recommendationResourceLink" as category, operationName, resultType, recommendationName, recommendationCategory, recommendationImpact, recommendationResourceLink 
| parse field=operationName "*/*/*/*" as provider, category, operation_name, action nodrop
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "operationName", "time","level","resultType", "properties.title", "properties.details", "properties.currentHealthStatus", "properties.type", "properties.cause" as category, operationName, time,level,resultType, title, details, currentHealthStatus, type, cause nodrop
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.currentHealthStatus" as category, currentHealthStatus
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.type", "properties.cause" as category, type, cause
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType" as category, resultType
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType", "properties.eventTimestamp", "properties.operationName", "properties.status", "properties.resourceId" as category, resultType, eventTimestamp, operationName, status, resourceId
| parse field=resourceId "/RESOURCEGROUPS/*/" as resource_group nodrop
| parse regex field=resourceId "/PROVIDERS/(?<provider_name>[^/]+)" nodrop
| parse regex field=resourceId "/PROVIDERS/[^/]+(?:/LOCATIONS/[^/]+)?/(?<resource_type>[^/]+)/(?<resource_name>.+)" nodrop
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
| parse field=entity "/subscriptions/*/resourceGroups/*/providers/*/*/*" as subscription_id, resource_group, providers, virtualMachineScaleSets, aks nodrop
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "operationName", "properties.error_info", "properties.httpStatus", "backendPoolName", "listenerName" as operationName, error_info, httpStatus, backendPoolName, listenerName
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "properties.clientIP" as clientIP
| split clientIP delim=':' extract 1 as src_ip, 2 as port
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "properties.error_info" as error_info
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "properties.error_info", "backendPoolName" as error_info, backendPoolName
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "properties.error_info", "properties.httpStatus" as error_info, httpStatus
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "properties.error_info", "properties.serverStatus" as error_info, serverStatus
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "properties.error_info", "ruleName" as error_info, ruleName
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "properties.httpMethod" as httpMethod
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "properties.httpStatus" as httpStatus
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "properties.serverStatus" as serverStatus
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "properties.sslProtocol" as sslProtocol 
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid nodrop
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods nodrop
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "properties.entity", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, entity, identity_claims_name, authmethods nodrop
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "properties.userAgent" as userAgent
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "resultType", "operationName", "properties.statusMessage", "category"  as resultType, operationName, failureMessage, category
| parse field=operationname "*/*/*" as provider_name, resource_type, operation nodrop
```
### Use Cases:
Backend Pool Details, Backend Response Status 2xx, Backend Response Status 3xx, Backend Response Status 4xx, Backend Response Status 5xx, Chart by Backend Status Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Downtime Causes, Failed Policy Events, Failed Requests  by Error Code, Failed Requests by HTTP Method, Failed Requests by User Agent, HTTP Server Status Trend, HTTP Status Trend, Recent Alerts, Recent Delete Operations, Recent Recommendation Events, Recent Resource Health Incidents, Recent Resource Health Status by Resource Name, Recent Security Events, Recent Write Operations, Requests by HTTP Status Code, Requests by Location, Requests by TLS Version, Resource Health by Event Type, Resource Health Trend, Response Status 2xx, Response Status 3xx, Response Status 4xx, Response Status 5xx, Top 10 Application Gateways with Error, Top 10 Backend Pool Names with Errors, Top 10 Errors by Error Info, Top 10 operations that caused the most errors, Top 10 Rule Names with Error, Total Failed Policy Events, Total Recommendation Events, Total Security Events, Total Success Policy Events, Users / Applications by Operation type


