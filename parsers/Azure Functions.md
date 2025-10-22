# Parsers For Azure Functions

**Azure Functions/Administrative Operations/ Applications by Operation type**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}}
provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid nodrop
```

**Azure Functions/Administrative Operations/Distribution  by Operation Type (Read, Write and Delete)**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} 
 provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
```

**Azure Functions/Administrative Operations/Distribution by Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}}
provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
```

**Azure Functions/Administrative Operations/Recent Delete Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}}
provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "properties.entity", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, entity, identity_claims_name, authmethods nodrop
```

**Azure Functions/Administrative Operations/Recent Write Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}}
provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods nodrop
```

**Azure Functions/Administrative Operations/Top 10 operations that caused the most errors**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}}   provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| json "resultType", "operationName", "properties.statusMessage", "category"  as resultType, operationName, failureMessage, category
```

**Azure Functions/Error/Functions by Error Details**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} location={{location}} resource_group={{resource_group}} provider_name=microsoft.web resource_type=sites  resource_name={{resource_name}} (error or exception or fail or warn)
// extracting records array
| replace(_raw, "'", "\"") as _raw
| json "records" nodrop
| parse regex field=records "(?<event_record>\{.+?\}\}(?=,|\]))" multi nodrop
| if (isBlank(event_record), _raw, event_record) as event_record
| parse regex field=event_record "(?:\"|')appName(?:\"|'):(?:\"|')(?<appName>[^\"']+)(?:\"|')" nodrop
// extracting resourceId for each event record
| json field=event_record "resourceId" nodrop
| parse field=event_record "/SUBSCRIPTIONS/*/RESOURCEGROUPS/*/PROVIDERS/*/*/" as subscription_id_extracted, resource_group_extracted , provider_name_extracted, resource_type_extracted
| if (isBlank(subscription_id_extracted), subscription_id, subscription_id_extracted) as subscription_id
| if (isBlank(resource_group_extracted), resource_group, resource_group_extracted) as resource_group
| if (isBlank(resource_type_extracted), provider_name, resource_type_extracted) as provider_name
| if (isBlank(provider_name_extracted), resource_type, provider_name_extracted) as resource_type
| where event_record matches /error|exception|fail|warn/
| parse regex field=event_record "message\":\"(?<error_message>[^\"]+)\"" nodrop
```

**Azure Functions/Error/Functions by Errors**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} location={{location}} resource_group={{resource_group}} provider_name=microsoft.web resource_type=sites  resource_name={{resource_name}}
// extracting records array
| replace(_raw, "'", "\"") as _raw
| json "records" nodrop
| parse regex field=records "(?<event_record>\{.+?\}\}(?=,|\]))" multi nodrop
| if (isBlank(event_record), _raw, event_record) as event_record
| parse regex field=event_record "(?:\"|')appName(?:\"|'):(?:\"|')(?<appName>[^\"']+)(?:\"|')" nodrop
// extracting resourceId for each event record
| json field=event_record "resourceId" nodrop
| parse field=event_record "/SUBSCRIPTIONS/*/RESOURCEGROUPS/*/PROVIDERS/*/*/" as subscription_id_extracted, resource_group_extracted , provider_name_extracted, resource_type_extracted
```

**Azure Functions/Health/Recent Resource Health Incidents**
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

**Azure Functions/Health/Recent Service Health Incidents**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} location={{location}} ServiceHealth 
| JSON "category", "operationName", "time","level","resultType", "properties.incidentType", "properties.service", "properties.region", "properties.impactStartTime", "properties.impactMitigationTime", "properties.defaultLanguageTitle", "properties.stage" as category, operationName, time,level,resultType, incidentType, service, service_region, impactStartTime, impactMitigationTime, defaultLanguageTitle, stage nodrop
| replace(toLowerCase(service_region), " ", "") as service_region
| where category="ServiceHealth" and (toUpperCase(service) matches /APP/  AND toUpperCase(service) matches /SERVICE/) 
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
```

**Azure Functions/Health/Resource Health by  Status**
```
tenant_name={{tenant_name}}
provider_name={{provider_name}}
resource_type={{resource_type}}
subscription_id={{subscription_id}}
resource_group={{resource_group}}
resource_name={{resource_name}} ResourceHealth 
| JSON "category", "properties.currentHealthStatus" as category, currentHealthStatus
```

**Azure Functions/Health/Service Health by Incident Type**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} location={{location}} ServiceHealth
| JSON "category", "properties.incidentType", "properties.service", "properties.region" as category, incidentType, service, service_region
```

**Azure Functions/Overview/Write and Delete Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}}
provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']", "$['identity']['claims']['http://schemas.microsoft.com/identity/claims/objectidentifier']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods, objectIdentifier nodrop
```

**Azure Functions/Policy and Recommendations/Events by Recommendation Category**
```
tenant_name={{tenant_name}}
subscription_id={{subscription_id}}
resource_group={{resource_group}}
resource_name={{resource_name}}
provider_name={{provider_name}} provider_name="MICROSOFT.WEB" resource_type="SITES" Recommendation
| JSON "category", "level", "resultSignature", 
```

**Azure Functions/Policy and Recommendations/Failed Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.WEB" resource_type="SITES" resource_name={{resource_name}} Policy
| JSON "category", "resultType", "level", "properties.resourceLocation", "properties.entity" as category, resultType, level, location, entity nodrop
```

**Azure Functions/Policy and Recommendations/High Impact Recommendations**
```
tenant_name={{tenant_name}}
subscription_id={{subscription_id}}
resource_group={{resource_group}}
resource_name={{resource_name}}
provider_name={{provider_name}} provider_name="MICROSOFT.WEB" resource_type="SITES" Recommendation
| JSON "category", "level", "resultSignature", 
```

**Azure Functions/Policy and Recommendations/Policy Events by Severity Level**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name={{provider_name}} resource_type={{resource_type}} resource_name={{resource_name}} Policy 
| JSON "category", "resultType", "level", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, level, message, location, entity, policies nodrop
```

**Azure Functions/Policy and Recommendations/Policy Events With Warning or Error**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.WEB" resource_type="SITES" resource_name={{resource_name}} Policy
| JSON "category", "resultType", "level", "properties.resourceLocation", "properties.entity" as category, resultType, level, location, entity nodrop
```

**Azure Functions/Policy and Recommendations/Recent Failed Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.WEB" resource_type="SITES" resource_name={{resource_name}} Policy
| JSON "category", "resultType", "level", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, level, message, location, entity, policies nodrop
```

**Azure Functions/Policy and Recommendations/Recent Policy Events With Warning or Error**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} provider_name="MICROSOFT.WEB" resource_type="SITES" resource_name={{resource_name}} Policy
| JSON "category", "resultType", "level", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, level, message, location, entity, policies nodrop
```

**Azure Functions/Policy and Recommendations/Recent Recommendation Events**
```
tenant_name={{tenant_name}}
subscription_id={{subscription_id}}
resource_group={{resource_group}}
resource_name={{resource_name}}
provider_name={{provider_name}} provider_name="MICROSOFT.WEB" resource_type="SITES" Recommendation
| JSON "category", "level", "resultSignature", 
```

**Azure Functions/Policy and Recommendations/Recommendations by Impact**
```
tenant_name={{tenant_name}}
subscription_id={{subscription_id}}
resource_group={{resource_group}}
resource_name={{resource_name}}
provider_name={{provider_name}} provider_name="MICROSOFT.WEB" resource_type="SITES" Recommendation
| JSON "category", "level", "resultSignature", 
```

**Azure Functions/Policy and Recommendations/Total Recommendations**
```
tenant_name={{tenant_name}}
subscription_id={{subscription_id}}
resource_group={{resource_group}}
resource_name={{resource_name}}
provider_name={{provider_name}} provider_name="MICROSOFT.WEB" resource_type="SITES" Recommendation
| JSON "category", "level", "resultSignature", 
```


