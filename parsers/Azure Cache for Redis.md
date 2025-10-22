# Parsers For Azure Cache for Redis

**Azure Cache for Redis/Administrative Operations/ Applications by Operation type**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid nodrop
```

**Azure Cache for Redis/Administrative Operations/Distribution  by Operation Type (Read, Write and Delete)**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
```

**Azure Cache for Redis/Administrative Operations/Distribution by Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
```

**Azure Cache for Redis/Administrative Operations/Distribution by Status**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category" as resultType, category
```

**Azure Cache for Redis/Administrative Operations/Recent Delete Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "properties.entity", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, entity, identity_claims_name, authmethods nodrop
```

**Azure Cache for Redis/Administrative Operations/Recent Write Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods nodrop
```

**Azure Cache for Redis/Administrative Operations/Top 10 operations that caused the most errors**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}}  Administrative Failure
| json "resultType", "operationName", "properties.statusMessage", "category"  as resultType, operationName, failureMessage, category nodrop
| parse field=operationname "*/*/*" as provider_name, resource_type, operation nodrop
```

**Azure Cache for Redis/Connections(Enterprise)/Connections by Location**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} ConnectionEvents clientIP
| json "category", "properties.clientIP" as category, clientIP
```

**Azure Cache for Redis/Connections(Enterprise)/Disconnection Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} ConnectionEvents eventType close_conn
| JSON "category", "properties.eventType", "properties.clientIP" as category, eventType, clientIP
```

**Azure Cache for Redis/Connections(Enterprise)/Event Types**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} ConnectionEvents eventType
| JSON "category", "properties.eventType", "properties.clientIP" as category, eventType, clientIP
```

**Azure Cache for Redis/Connections(Enterprise)/Failure by Operation**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} ConnectionEvents operationName
| JSON "category", "operationName", "properties.eventType", "properties.eventStatus", "properties.clientIP" as category, operationName, eventType, eventStatus, clientIP
| where category="ConnectionEvents" and eventType="auth" and eventStatus != 2 and eventStatus != 8 and eventStatus != 7
| parse field=operationName "Microsoft.Cache/redisEnterprise/databases/ConnectionEvents/*" as operation
```

**Azure Cache for Redis/Connections(Enterprise)/Total Connections**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} ConnectionEvents clientIP
| json "category", "properties.clientIP" as category, clientIP
```

**Azure Cache for Redis/Connections(Enterprise)/Total Unique Connected Clients**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} ConnectionEvents clientIP
| json "category", "properties.clientIP" as category, clientIP
```

**Azure Cache for Redis/Connections(Non-Enterprise)/Connections by Location**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} ConnectedClientList
| json "category", "properties.connectedClients" as category, connectedClients
| where category="ConnectedClientList"
| json "properties.connectedClients[*]" as client_obj
| parse regex field=client_obj "(?<client_conn_info>\{[^\{]+\})" multi
| json field=client_conn_info "ip", "count" as client_ip, client_count
```

**Azure Cache for Redis/Connections(Non-Enterprise)/Connections by Resource Name**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} ConnectedClientList
| json "category", "properties.connectedClients" as category, connectedClients
| where category="ConnectedClientList"
| json "properties.connectedClients[*]" as client_obj
| parse regex field=client_obj "(?<client_conn_info>\{[^\{]+\})" multi
| json field=client_conn_info "ip", "count" as client_ip, client_count
```

**Azure Cache for Redis/Connections(Non-Enterprise)/Top 10 IPs by Connection Count**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} ConnectedClientList
| json "category", "properties.connectedClients" as category, connectedClients
| where category="ConnectedClientList"
| json "properties.connectedClients[*]" as client_obj
| parse regex field=client_obj "(?<client_conn_info>\{[^\{]+\})" multi
| json field=client_conn_info "ip", "count" as client_ip, client_count
```

**Azure Cache for Redis/Connections(Non-Enterprise)/Total Connections**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} ConnectedClientList
| json "category", "properties.connectedClients" as category, connectedClients
| where category="ConnectedClientList"
| json "properties.connectedClients[*]" as client_obj
| parse regex field=client_obj "(?<client_conn_info>\{[^\{]+\})" multi
| json field=client_conn_info "ip", "count" as client_ip, client_count
```

**Azure Cache for Redis/Connections(Non-Enterprise)/Total Unique Connected Clients**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} ConnectedClientList
| json "category", "properties.connectedClients" as category, connectedClients
| where category="ConnectedClientList"
| json "properties.connectedClients[*]" as client_obj
| parse regex field=client_obj "(?<client_conn_info>\{[^\{]+\})" multi
| json field=client_conn_info "ip", "count" as client_ip, client_count
```

**Azure Cache for Redis/MSEntra Authentication Audit/MSEntra Authentication Audit Details**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} MSEntraAuthenticationAuditLog
| json "category", "properties.auditLog.username", "properties.auditLog.authentication", "properties.auditLog.ipAddress", "properties.auditLog.clientName", "properties.auditLog.message" as category, username, authentication, ipAddress, clientName, message nodrop
```

**Azure Cache for Redis/MSEntra Authentication Audit/Requests by Location**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} MSEntraAuthenticationAuditLog ipAddress
| json "properties.auditLog.ipAddress" as ipAddress
| split ipAddress delim=':' extract 1 as ipAddress
```

**Azure Cache for Redis/MSEntra Authentication Audit/Requests by Resource Name**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} MSEntraAuthenticationAuditLog tenant
| json "category", "properties.tenant" as category, tenant
```

**Azure Cache for Redis/MSEntra Authentication Audit/Requests by Username**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} resource_type={{resource_type}} provider_name={{provider_name}} location={{location}} MSEntraAuthenticationAuditLog 
| json "category", "properties.auditLog.username" as category, username
```

**Azure Cache for Redis/Policy and Recommendations/Failed Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Policy Failure
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
```

**Azure Cache for Redis/Policy and Recommendations/Recent Recommendation Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Recommendation
| JSON "category", "operationName", "resultType", "properties.recommendationName", "properties.recommendationCategory", "properties.recommendationImpact", "properties.recommendationResourceLink" as category, operationName, resultType, recommendationName, recommendationCategory, recommendationImpact, recommendationResourceLink 
| where category="Recommendation"
| parse field=operationName "*/*/*/*" as provider, category, operation_name, action nodrop
```

**Azure Cache for Redis/Policy and Recommendations/Total Failed Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} location={{location}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Policy Failure
| JSON "category", "resultType" as category, resultType
```

**Azure Cache for Redis/Policy and Recommendations/Total Recommendation Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Recommendation
| JSON "category"
```

**Azure Cache for Redis/Policy and Recommendations/Total Success Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} location={{location}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Policy 
| JSON "category", "resultType" as category, resultType
```


