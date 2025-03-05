# Parsers For Azure Functions

## Parser:
```
| JSON "category", "level", "resultSignature", 
 `n```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Events by Recommendation Category, Failed Policy Events, Functions by Error Details, Functions by Errors, High Impact Recommendations, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Total Recommendations, Users / Applications by Operation type, Write and Delete Operations



## Parser:
```
| JSON "category", "operationName", "time","level","resultType", "properties.incidentType", "properties.service", "properties.region", "properties.impactStartTime", "properties.impactMitigationTime", "properties.defaultLanguageTitle", "properties.stage" as category, operationName, time,level,resultType, incidentType, service, service_region, impactStartTime, impactMitigationTime, defaultLanguageTitle, stage nodrop
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
 `n```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Events by Recommendation Category, Failed Policy Events, Functions by Error Details, Functions by Errors, High Impact Recommendations, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Total Recommendations, Users / Applications by Operation type, Write and Delete Operations



## Parser:
```
| JSON "category", "operationName", "time","level","resultType", "properties.title", "properties.details", "properties.currentHealthStatus", "properties.type", "properties.cause" as category, operationName, time,level,resultType, title, details, currentHealthStatus, type, cause nodrop
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
 `n```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Events by Recommendation Category, Failed Policy Events, Functions by Error Details, Functions by Errors, High Impact Recommendations, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Total Recommendations, Users / Applications by Operation type, Write and Delete Operations



## Parser:
```
| JSON "category", "properties.currentHealthStatus" as category, currentHealthStatus
 `n```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Events by Recommendation Category, Failed Policy Events, Functions by Error Details, Functions by Errors, High Impact Recommendations, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Total Recommendations, Users / Applications by Operation type, Write and Delete Operations



## Parser:
```
| JSON "category", "properties.incidentType", "properties.service", "properties.region" as category, incidentType, service, service_region
 `n```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Events by Recommendation Category, Failed Policy Events, Functions by Error Details, Functions by Errors, High Impact Recommendations, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Total Recommendations, Users / Applications by Operation type, Write and Delete Operations



## Parser:
```
| JSON "category", "resultType", "level", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, level, message, location, entity, policies nodrop
 `n```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Events by Recommendation Category, Failed Policy Events, Functions by Error Details, Functions by Errors, High Impact Recommendations, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Total Recommendations, Users / Applications by Operation type, Write and Delete Operations



## Parser:
```
| JSON "category", "resultType", "level", "properties.resourceLocation", "properties.entity" as category, resultType, level, location, entity nodrop
 `n```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Events by Recommendation Category, Failed Policy Events, Functions by Error Details, Functions by Errors, High Impact Recommendations, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Total Recommendations, Users / Applications by Operation type, Write and Delete Operations



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid nodrop
 `n```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Events by Recommendation Category, Failed Policy Events, Functions by Error Details, Functions by Errors, High Impact Recommendations, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Total Recommendations, Users / Applications by Operation type, Write and Delete Operations



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods nodrop
 `n```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Events by Recommendation Category, Failed Policy Events, Functions by Error Details, Functions by Errors, High Impact Recommendations, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Total Recommendations, Users / Applications by Operation type, Write and Delete Operations



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']", "$['identity']['claims']['http://schemas.microsoft.com/identity/claims/objectidentifier']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods, objectIdentifier nodrop
 `n```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Events by Recommendation Category, Failed Policy Events, Functions by Error Details, Functions by Errors, High Impact Recommendations, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Total Recommendations, Users / Applications by Operation type, Write and Delete Operations



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "properties.entity", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, entity, identity_claims_name, authmethods nodrop
 `n```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Events by Recommendation Category, Failed Policy Events, Functions by Error Details, Functions by Errors, High Impact Recommendations, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Total Recommendations, Users / Applications by Operation type, Write and Delete Operations



## Parser:
```
| json "records" nodrop
| parse regex field=records "(?<event_record>\{.+?\}\}(?=,|\]))" multi nodrop
| parse regex field=event_record "(?:\"|')appName(?:\"|'):(?:\"|')(?<appName>[^\"']+)(?:\"|')" nodrop
| json field=event_record "resourceId" nodrop
| parse field=event_record "/SUBSCRIPTIONS/*/RESOURCEGROUPS/*/PROVIDERS/*/*/" as subscription_id_extracted, resource_group_extracted , provider_name_extracted, resource_type_extracted
 `n```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Events by Recommendation Category, Failed Policy Events, Functions by Error Details, Functions by Errors, High Impact Recommendations, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Total Recommendations, Users / Applications by Operation type, Write and Delete Operations



## Parser:
```
| json "records" nodrop
| parse regex field=records "(?<event_record>\{.+?\}\}(?=,|\]))" multi nodrop
| parse regex field=event_record "(?:\"|')appName(?:\"|'):(?:\"|')(?<appName>[^\"']+)(?:\"|')" nodrop
| json field=event_record "resourceId" nodrop
| parse field=event_record "/SUBSCRIPTIONS/*/RESOURCEGROUPS/*/PROVIDERS/*/*/" as subscription_id_extracted, resource_group_extracted , provider_name_extracted, resource_type_extracted
| parse regex field=event_record "message\":\"(?<error_message>[^\"]+)\"" nodrop
 `n```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Events by Recommendation Category, Failed Policy Events, Functions by Error Details, Functions by Errors, High Impact Recommendations, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Total Recommendations, Users / Applications by Operation type, Write and Delete Operations



## Parser:
```
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
 `n```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Events by Recommendation Category, Failed Policy Events, Functions by Error Details, Functions by Errors, High Impact Recommendations, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Total Recommendations, Users / Applications by Operation type, Write and Delete Operations



## Parser:
```
| json "resultType", "operationName", "properties.statusMessage", "category"  as resultType, operationName, failureMessage, category
 `n```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Events by Recommendation Category, Failed Policy Events, Functions by Error Details, Functions by Errors, High Impact Recommendations, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Resource Health by  Status, Service Health by Incident Type, Top 10 operations that caused the most errors, Total Recommendations, Users / Applications by Operation type, Write and Delete Operations


