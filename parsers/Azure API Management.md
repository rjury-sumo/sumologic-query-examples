# Parsers For Azure API Management

**Azure API Management/Administrative Operations/ Applications by Operation type**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid nodrop
```

**Azure API Management/Administrative Operations/Distribution  by Operation Type (Read, Write and Delete)**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
```

**Azure API Management/Administrative Operations/Distribution by Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
| where (resultType="Accept" or resultType="Success") and category="Administrative" 
| parse field=operationName "*/*/*" as provider_name, resource_type, operation_name
```

**Azure API Management/Administrative Operations/Distribution by Status**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category" as resultType, category
```

**Azure API Management/Administrative Operations/Recent Delete Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "properties.entity", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, entity, identity_claims_name, authmethods nodrop
```

**Azure API Management/Administrative Operations/Recent Write Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods nodrop
```

**Azure API Management/Administrative Operations/Top 10 Operations That Caused The Most Errors**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}}  Administrative
| json "resultType", "operationName", "properties.statusMessage", "category"  as resultType, operationName, failureMessage, category nodrop
| parse field=operationname "*/*/*" as provider_name, resource_type, operation nodrop
```

**Azure API Management/Developer Portal/Failed Request Details**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} DeveloperPortalAuditLogs
| json "category", "properties.requestPath", "properties.serviceName", "resultType","properties.responseCode", "properties.requestMethod" as category, requestPath, serviceName, resultType, responseCode, requestMethod
```

**Azure API Management/Developer Portal/Failed Requests by Method**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} DeveloperPortalAuditLogs
| json "category", "properties.requestMethod" as category, requestMethod
```

**Azure API Management/Developer Portal/Failed Requests by Response Category**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} DeveloperPortalAuditLogs
| json "category", "properties.responseCode" as category, responseCode
```

**Azure API Management/Developer Portal/Requests by Response Code**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} DeveloperPortalAuditLogs
| json "category", "properties.responseCode" as category, responseCode
```

**Azure API Management/Developer Portal/Success Requests vs Failed Requests**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} DeveloperPortalAuditLogs
| json "category", "resultType" as category, resultType
```

**Azure API Management/Developer Portal/Total Failed Requests**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} DeveloperPortalAuditLogs
| json "category", "resultType" as category, resultType
```

**Azure API Management/Developer Portal/Total Success Requests**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} DeveloperPortalAuditLogs
| json "category", "resultType" as category, resultType
```

**Azure API Management/Errors/Failed Backend Requests**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "isRequestSuccess", "properties.backendResponseCode", "properties.apiId", "properties.url" as category, isRequestSuccess, backendResponseCode, apiId, url
```

**Azure API Management/Errors/Failed Backend Requests by Backend Method**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "properties.backendMethod", "isRequestSuccess", "properties.apiId", "properties.url" as category, backendMethod, isRequestSuccess , apiId, url
```

**Azure API Management/Errors/Failed Backend Requests by Backend Protocol**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "properties.backendProtocol", "isRequestSuccess", "properties.apiId", "properties.url" as category, backendProtocol, isRequestSuccess, apiId, url
```

**Azure API Management/Errors/Failed Backend Requests by Backend Url**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "properties.backendUrl", "isRequestSuccess", "properties.apiId", "properties.url" as category, backendUrl, isRequestSuccess, apiId, url
```

**Azure API Management/Errors/Failed Request Details**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "properties.responseCode", "properties.apiId", "properties.url", "properties.backendUrl", "properties.backendResponseCode", "properties.method", "properties.userId" as category, responseCode, apiId, url, backendUrl,backendResponseCode, method, userId nodrop
```

**Azure API Management/Errors/Failed Requests**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "isRequestSuccess", "properties.apiId", "properties.url" as category, isRequestSuccess, apiId, url
```

**Azure API Management/Errors/Failed Requests by Method**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "properties.method", "isRequestSuccess", "properties.apiId", "properties.url" as category, method, isRequestSuccess , apiId, url
```

**Azure API Management/Errors/Failed Requests by Protocol**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "properties.clientProtocol", "isRequestSuccess", "properties.apiId", "properties.url" as category, clientProtocol, isRequestSuccess , apiId, url
```

**Azure API Management/Errors/Failed Requests by Url**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "isRequestSuccess", "properties.apiId", "properties.url" as category, isRequestSuccess , apiId, url
```

**Azure API Management/Errors/Requests by Backend Response Code**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "properties.backendResponseCode", "properties.apiId", "properties.url" as category, backendResponseCode, apiId, url
```

**Azure API Management/Errors/Requests by Response Code**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "properties.responseCode", "properties.apiId", "properties.url" as category, responseCode, apiId, url
```

**Azure API Management/Errors/Top 10 Failed API Urls**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "isRequestSuccess", "properties.backendResponseCode", "properties.url", "properties.apiId" as category, isRequestSuccess, backendResponseCode, url, apiId
```

**Azure API Management/Errors/Top 3 Caller IPs With Failures by Resource**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "isRequestSuccess", "properties.apiId", "properties.url", "callerIpAddress" as category, isRequestSuccess, apiId, url, callerIpAddress
```

**Azure API Management/Overview/Average Duration**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "durationMs", "properties.method", "properties.apiId", "properties.url" as category, durationMs, method, apiId, url
```

**Azure API Management/Overview/Failed Requests**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "isRequestSuccess", "properties.apiId", "properties.url" as category, isRequestSuccess, apiId, url
```

**Azure API Management/Overview/Requests by Location**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "callerIpAddress", "properties.apiId", "properties.url" as category, callerIpAddress, apiId, url
| where category="GatewayLogs" and apiId matches "{{apiId}}" and url matches "{{url}}"
| extract field=callerIpAddress "(?<request_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
```

**Azure API Management/Overview/Requests Summary by API**
```
tenant_name=* subscription_id=* resource_group=* resource_name=* resource_type=SERVICE provider_name=MICROSOFT.APIMANAGEMENT location=* GatewayLogs
| json "category", "isRequestSuccess", "properties.apiId", "durationMs", "properties.requestSize", "properties.responseSize", "properties.url", "properties.userId" as category, isRequestSuccess, apiId, durationMs, requestSize, responseSize, url, userId
```

**Azure API Management/Overview/Top Backend Url by Request Size**
```
tenant_name=* subscription_id=* resource_group=* resource_name=* resource_type=SERVICE provider_name=microsoft.apimanagement location=* GatewayLogs
| json "category", "properties.apiId", "properties.operationId", "properties.backendUrl", "properties.requestSize", "properties.url" as category, apiId, operationId, backendUrl, requestSize, url
```

**Azure API Management/Overview/Top Backend Urls with Response Size**
```
tenant_name=* subscription_id=* resource_group=* resource_name=* resource_type=SERVICE provider_name=microsoft.apimanagement location=* GatewayLogs
| json "category", "properties.apiId", "properties.operationId", "properties.backendUrl", "properties.responseSize", "properties.url" as category, apiId, operationId, backendUrl, responseSize, url
```

**Azure API Management/Overview/Top Operations with Request Size**
```
tenant_name=* subscription_id=* resource_group=* resource_name=* resource_type=SERVICE provider_name=microsoft.apimanagement location=* GatewayLogs
| json "category", "properties.apiId", "properties.operationId", "properties.requestSize", "properties.url" as category, apiId, operationId, requestSize, url
```

**Azure API Management/Overview/Top Operations with Response Size**
```
tenant_name=* subscription_id=* resource_group=* resource_name=* resource_type=SERVICE provider_name=microsoft.apimanagement location=* GatewayLogs
| json "category", "properties.apiId", "properties.operationId", "properties.responseSize", "properties.url" as category, apiId, operationId, responseSize, url
```

**Azure API Management/Overview/Total Requests by Method**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "properties.method", "properties.apiId", "properties.url" as category, method, apiId, url
```

**Azure API Management/Overview/Total Requests by Response Code**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "properties.responseCode", "properties.apiId", "properties.url" as category, responseCode, apiId, url
```

**Azure API Management/Overview/Websocket Connection Details**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} WebSocketConnectionLogs
| json "category", "properties.source", "properties.destination", "properties.eventName" as category, source, destination, eventName
```

**Azure API Management/Overview/Websocket Connections by Event Name**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} WebSocketConnectionLogs
| json "category", "properties.eventName" as category, eventName
```

**Azure API Management/Performance/Backend Request Duration by Backend Method**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "properties.backendTime", "properties.backendMethod", "properties.apiId", "properties.url" as category, backendTime, backendMethod, apiId, url
```

**Azure API Management/Performance/Backend Request Duration by Backend Url**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "properties.backendTime", "properties.backendUrl", "properties.apiId", "properties.url" as category, backendTime, backendUrl, apiId, url
```

**Azure API Management/Performance/Backend Requests by Response Code**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "properties.backendResponseCode", "properties.apiId", "properties.url" as category, backendResponseCode, apiId, url
```

**Azure API Management/Performance/Overall Duration Vs Backend Duration**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "durationMs", "properties.apiId", "properties.url" as category, durationMs, apiId, url
```

**Azure API Management/Performance/Request Duration by Method**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "durationMs", "properties.method", "properties.apiId", "properties.url" as category, durationMs, method, apiId, url
```

**Azure API Management/Performance/Request Duration by Url**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "durationMs", "properties.apiId", "properties.url" as category, durationMs, apiId, url
```

**Azure API Management/Performance/Requests by Response Code**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "properties.responseCode", "properties.apiId", "properties.url" as category, responseCode, apiId, url
```

**Azure API Management/Performance/Requests by Result Type**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "resultType", "properties.apiId", "properties.url" as category, resultType, apiId, url
```

**Azure API Management/Performance/Successful Requests by Client Protocol**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "properties.clientProtocol", "isRequestSuccess", "properties.apiId", "properties.url" as category, clientProtocol, isRequestSuccess, apiId, url
```

**Azure API Management/Performance/Successful Requests by Method**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "properties.method", "isRequestSuccess", "properties.apiId", "properties.url" as category, method, isRequestSuccess, apiId, url
```

**Azure API Management/Performance/Top 10 APIs With Highest Backend Execution Duration (ms)**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "properties.backendTime", "properties.apiId", "properties.url" as category, backendTime, apiId, url
```

**Azure API Management/Performance/Top 10 APIs With Highest Number of Requests**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "properties.backendTime", "properties.apiId", "properties.url" as category, backendTime, apiId, url
```

**Azure API Management/Policy and Recommendations/Failed Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Policy Failure
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
```

**Azure API Management/Policy and Recommendations/Recent Recommendation Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Recommendation
| JSON "category", "operationName", "resultType", "properties.recommendationName", "properties.recommendationCategory", "properties.recommendationImpact", "properties.recommendationResourceLink" as category, operationName, resultType, recommendationName, recommendationCategory, recommendationImpact, recommendationResourceLink 
| where category="Recommendation"
| parse field=operationName "*/*/*/*" as provider, category, operation_name, action nodrop
```

**Azure API Management/Policy and Recommendations/Total Failed Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} location={{location}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Policy Failure
| JSON "category", "resultType" as category, resultType
```

**Azure API Management/Policy and Recommendations/Total Recommendation Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Recommendation
| JSON "category"
```

**Azure API Management/Policy and Recommendations/Total Success Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} location={{location}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Policy 
| JSON "category", "resultType" as category, resultType
```

**Azure API Management/Subscriptions/Failed Requests by Subscription**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category","properties.apimSubscriptionId", "properties.apiId","properties.url", "properties.responseCode" as category, apimSubscriptionId, apiId, url, responseCode
```

**Azure API Management/Subscriptions/Recent Changes in Subscription**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} Administrative
| json "category", "operationName", "identity.claims.idtyp", "identity.claims.name" as category, operationName, idtyp, name
| where category="Administrative" and service_type = "SUBSCRIPTIONS"
| parse field=operationName "MICROSOFT.APIMANAGEMENT/SERVICE/SUBSCRIPTIONS/*/*" as operation_name, action
```

**Azure API Management/Subscriptions/Request Duration by Subscription**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category", "durationMs", "properties.apimSubscriptionId", "properties.method", "properties.apiId", "properties.url" as category, durationMs, subscription, method, apiId, url
```

**Azure API Management/Subscriptions/Requests by Subscription**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category","properties.apimSubscriptionId", "properties.apiId", "properties.url" as category, apimSubscriptionId, apiId, url
```

**Azure API Management/Subscriptions/Top 10 Failed Subscription**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category","properties.apimSubscriptionId", "properties.url", "properties.method", "properties.responseCode", "properties.apiId"  as category, apimSubscriptionId, url, method, responseCode, apiId
```

**Azure API Management/Subscriptions/Total Requests by Subscription**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} GatewayLogs
| json "category","properties.apimSubscriptionId", "properties.apiId","properties.url" as category, apimSubscriptionId, apiId, url
```


