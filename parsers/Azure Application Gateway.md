# Parsers For Azure Application Gateway

**Azure Application Gateway/ Administrative Operations/ Applications by Operation type**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}}
provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid nodrop
```

**Azure Application Gateway/ Administrative Operations/Distribution  by Operation Type (Read, Write and Delete)**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} 
 provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
```

**Azure Application Gateway/ Administrative Operations/Distribution by Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}}
provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
```

**Azure Application Gateway/ Administrative Operations/Recent Delete Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}}
provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "properties.entity", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, entity, identity_claims_name, authmethods nodrop
```

**Azure Application Gateway/ Administrative Operations/Recent Write Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}}
provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods nodrop
```

**Azure Application Gateway/ Administrative Operations/Top 10 operations that caused the most errors**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}}   provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| json "resultType", "operationName", "properties.statusMessage", "category"  as resultType, operationName, failureMessage, category
| parse field=operationname "*/*/*" as provider_name, resource_type, operation nodrop
```

**Azure Application Gateway/Backend/Backend Pool Details**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} ApplicationGatewayAccessLog
| json "category", "backendPoolName", "properties.clientResponseTime", "properties.serverResponseLatency", "properties.WAFEvaluationTime", "properties.error_info" as category, backendPoolName, clientResponseTime, serverResponseLatency, WAFEvaluationTime, error_info nodrop
```

**Azure Application Gateway/Backend/Backend Response Status 2xx**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} properties serverStatus
| json "properties.serverStatus" as serverStatus
```

**Azure Application Gateway/Backend/Backend Response Status 3xx**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} properties serverStatus
| json "properties.serverStatus" as serverStatus
```

**Azure Application Gateway/Backend/Backend Response Status 4xx**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} properties serverStatus
| json "properties.serverStatus" as serverStatus
```

**Azure Application Gateway/Backend/Backend Response Status 5xx**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} properties serverStatus
| json "properties.serverStatus" as serverStatus
```

**Azure Application Gateway/Backend/Chart by Backend Status Code**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} properties serverStatus
| json "properties.serverStatus" as serverStatus
```

**Azure Application Gateway/Failures/Failed Requests  by Error Code**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}}
properties error_info httpStatus
| json "properties.error_info", "properties.httpStatus" as error_info, httpStatus
```

**Azure Application Gateway/Failures/Failed Requests by HTTP Method**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} properties httpMethod
| json "properties.httpMethod" as httpMethod
```

**Azure Application Gateway/Failures/Failed Requests by User Agent**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} properties userAgent
| json "properties.userAgent" as userAgent
```

**Azure Application Gateway/Failures/HTTP Server Status Trend**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}}
properties error_info serverStatus
| json "properties.error_info", "properties.serverStatus" as error_info, serverStatus
```

**Azure Application Gateway/Failures/HTTP Status Trend**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}}
properties error_info httpStatus
| json "properties.error_info", "properties.httpStatus" as error_info, httpStatus
```

**Azure Application Gateway/Failures/Top 10 Application Gateways with Error**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} properties error_info
| json "properties.error_info" as error_info
```

**Azure Application Gateway/Failures/Top 10 Backend Pool Names with Errors**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}}
error_info backendPoolName
| json "properties.error_info", "backendPoolName" as error_info, backendPoolName
```

**Azure Application Gateway/Failures/Top 10 Errors by Error Info**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}}
 properties error_info
| json "operationName", "properties.error_info", "properties.httpStatus", "backendPoolName", "listenerName" as operationName, error_info, httpStatus, backendPoolName, listenerName
```

**Azure Application Gateway/Failures/Top 10 Rule Names with Error**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}}
error_info ruleName
| json "properties.error_info", "ruleName" as error_info, ruleName
```

**Azure Application Gateway/Health/Downtime Causes**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} ResourceHealth Downtime
| JSON "category", "properties.type", "properties.cause" as category, type, cause
```

**Azure Application Gateway/Health/Recent Alerts**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}}  Alert
| JSON "category", "resultType", "properties.eventTimestamp", "properties.operationName", "properties.status", "properties.resourceId" as category, resultType, eventTimestamp, operationName, status, resourceId
| resource_name as alert_name
| toUpperCase(resourceId) as resourceId
| parse field=resourceId "/RESOURCEGROUPS/*/" as resource_group nodrop
| parse regex field=resourceId "/PROVIDERS/(?<provider_name>[^/]+)" nodrop
| parse regex field=resourceId "/PROVIDERS/[^/]+(?:/LOCATIONS/[^/]+)?/(?<resource_type>[^/]+)/(?<resource_name>.+)" nodrop
| where if (resource_group=="*", true, resource_group matches "{{resource_group}}")
| where if(resource_type=="*", true, resource_type matches "{{resource_type}}") 
| where if(resource_name=="*", true, resource_name matches "{{resource_name}}")
| where category="Alert"
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
```

**Azure Application Gateway/Health/Recent Resource Health Incidents**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} ResourceHealth
| JSON "category", "operationName", "time","level","resultType", "properties.title", "properties.details", "properties.currentHealthStatus", "properties.type", "properties.cause" as category, operationName, time,level,resultType, title, details, currentHealthStatus, type, cause nodrop
| where category="ResourceHealth"
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
```

**Azure Application Gateway/Health/Recent Resource Health Status by Resource Name**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} ResourceHealth
| JSON "category", "properties.currentHealthStatus" as category, currentHealthStatus
```

**Azure Application Gateway/Health/Resource Health by Event Type**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} ResourceHealth
| JSON "category", "properties.currentHealthStatus" as category, currentHealthStatus
```

**Azure Application Gateway/Health/Resource Health Trend**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} ResourceHealth
| JSON "category", "properties.currentHealthStatus" as category, currentHealthStatus
```

**Azure Application Gateway/Overview/Requests by Location**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} clientIP
| json "properties.clientIP" as clientIP
| where !isblank(clientIP)
| split clientIP delim=':' extract 1 as src_ip, 2 as port
```

**Azure Application Gateway/Security and Policy/Failed Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Policy Failure
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
```

**Azure Application Gateway/Security and Policy/Recent Recommendation Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Recommendation
| JSON "category", "operationName", "resultType", "properties.recommendationName", "properties.recommendationCategory", "properties.recommendationImpact", "properties.recommendationResourceLink" as category, operationName, resultType, recommendationName, recommendationCategory, recommendationImpact, recommendationResourceLink 
| where category="Recommendation"
| parse field=operationName "*/*/*/*" as provider, category, operation_name, action nodrop
```

**Azure Application Gateway/Security and Policy/Recent Security Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Security
| Json "category", "level", "resultType", "resultDescription", "properties.compromisedEntity", "properties.severity", "properties.intent", "properties.remediationSteps", "properties.attackedResourceType", "properties.eventName" as category, level, resultType, resultDescription, compromisedEntity, severity, intent, remediationSteps, attackedResourceType, eventName nodrop
```

**Azure Application Gateway/Security and Policy/Total Failed Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} location={{location}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Policy Failure
| JSON "category", "resultType" as category, resultType
```

**Azure Application Gateway/Security and Policy/Total Recommendation Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Recommendation
| JSON "category"
```

**Azure Application Gateway/Security and Policy/Total Security Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Security
| JSON "category"
```

**Azure Application Gateway/Security and Policy/Total Success Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} location={{location}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Policy 
| JSON "category", "resultType" as category, resultType
```

**Azure Application Gateway/Traffic/Requests by HTTP Status Code**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} properties httpStatus
| json "properties.httpStatus" as httpStatus
```

**Azure Application Gateway/Traffic/Requests by Location**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} clientIP
| json "properties.clientIP" as clientIP
| where !isblank(clientIP)
| split clientIP delim=':' extract 1 as src_ip, 2 as port
```

**Azure Application Gateway/Traffic/Requests by TLS Version**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} sslProtocol
| json "properties.sslProtocol" as sslProtocol 
```

**Azure Application Gateway/Traffic/Response Status 2xx**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} properties httpStatus
| json "properties.httpStatus" as httpStatus
```

**Azure Application Gateway/Traffic/Response Status 3xx**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} properties httpStatus
| json "properties.httpStatus" as httpStatus
```

**Azure Application Gateway/Traffic/Response Status 4xx**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} properties httpStatus
| json "properties.httpStatus" as httpStatus
```

**Azure Application Gateway/Traffic/Response Status 5xx**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} properties httpStatus
| json "properties.httpStatus" as httpStatus
```


