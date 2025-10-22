# Parsers For Azure Service Bus

**Azure Service Bus/Administrative Operations/ Applications by Operation type**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid nodrop
```

**Azure Service Bus/Administrative Operations/Distribution  by Operation Type (Read, Write and Delete)**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
```

**Azure Service Bus/Administrative Operations/Distribution by Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
| where (resultType="Accept" or resultType="Success") and category="Administrative" 
| parse field=operationName "*/*/*" as provider_name, resource_type, operation_name
```

**Azure Service Bus/Administrative Operations/Distribution by Status**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category" as resultType, category
```

**Azure Service Bus/Administrative Operations/Recent Delete Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "properties.entity", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, entity, identity_claims_name, authmethods nodrop
```

**Azure Service Bus/Administrative Operations/Recent Write Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods nodrop
```

**Azure Service Bus/Administrative Operations/Top 10 Operations That Caused The Most Errors**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}}  Administrative
| json "resultType", "operationName", "properties.statusMessage", "category"  as resultType, operationName, failureMessage, category nodrop
| parse field=operationname "*/*/*" as provider_name, resource_type, operation nodrop
```

**Azure Service Bus/Errors/Failures by Entity Type**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} DiagnosticErrorLogs
| json "category", "EntityType", "EntityName" as category, EntityType, EntityName
```

**Azure Service Bus/Errors/Operation Result Distribution**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} DiagnosticErrorLogs
| json "category", "OperationResult", "EntityName" as category, OperationResult, EntityName
```

**Azure Service Bus/Errors/Top 10 Failed Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} DiagnosticErrorLogs
| json "category", "ActivityName", "EntityName" as category, ActivityName, EntityName
```

**Azure Service Bus/Errors/Top 10 Failed Queues**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} DiagnosticErrorLogs
| json "category", "EntityType", "EntityName" as category, EntityType, topic_name
```

**Azure Service Bus/Errors/Top 10 Failed Topics**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} DiagnosticErrorLogs
| json "category", "EntityType", "EntityName" as category, EntityType, topic_name
```

**Azure Service Bus/Errors/Top 3 Common Error Messages by Entity**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} DiagnosticErrorLogs
| json "category", "EntityType", "EntityName", "ErrorMessage" as category, EntityType, EntityName, ErrorMessage
```

**Azure Service Bus/Overview/Activity by Location**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} RuntimeAuditLogs
| json "category", "ClientIp" as category, ipAddress
```

**Azure Service Bus/Overview/IP Filtering actions**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} VNetAndIPFilteringLogs
| json "category", "action" as category, action
```

**Azure Service Bus/Overview/Requests by Caller**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} OperationalLogs
| json "category", "Caller" as category, Caller
```

**Azure Service Bus/Overview/Requests by Event Type**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} OperationalLogs
| json "category", "EventName" as category, EventName
```

**Azure Service Bus/Overview/Top 10 IPs  with Deny Connection**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} VNetAndIPFilteringLogs
| json "category", "action", "ipAddress" as category, action, ipAddress
```

**Azure Service Bus/Policy and Recommendation/Failed Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Policy Failure
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
```

**Azure Service Bus/Policy and Recommendation/Recent Recommendation Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Recommendation
| JSON "category", "operationName", "resultType", "properties.recommendationName", "properties.recommendationCategory", "properties.recommendationImpact", "properties.recommendationResourceLink" as category, operationName, resultType, recommendationName, recommendationCategory, recommendationImpact, recommendationResourceLink 
| where category="Recommendation"
| parse field=operationName "*/*/*/*" as provider, category, operation_name, action nodrop
```

**Azure Service Bus/Policy and Recommendation/Total Failed Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} location={{location}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Policy Failure
| JSON "category", "resultType" as category, resultType
```

**Azure Service Bus/Policy and Recommendation/Total Recommendation Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Recommendation
| JSON "category"
```

**Azure Service Bus/Policy and Recommendation/Total Success Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} location={{location}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Policy 
| JSON "category", "resultType" as category, resultType
```


