# Parsers For Azure Load Balancer

**Azure Load Balancer/Administrative Operations/ Applications by Operation type**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}}
provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid nodrop
```

**Azure Load Balancer/Administrative Operations/Distribution  by Operation Type (Read, Write and Delete)**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} 
 provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
```

**Azure Load Balancer/Administrative Operations/Distribution by Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}}
provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
```

**Azure Load Balancer/Administrative Operations/Recent Delete Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}}
provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "properties.entity", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, entity, identity_claims_name, authmethods nodrop
```

**Azure Load Balancer/Administrative Operations/Recent Write Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}}
provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods nodrop
```

**Azure Load Balancer/Administrative Operations/Top 10 operations that caused the most errors**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}}   provider_name={{provider_name}} resource_type={{resource_type}}  Administrative Failure
| json "resultType", "operationName", "properties.statusMessage", "category"  as resultType, operationName, failureMessage, category nodrop
| parse field=operationname "*/*/*" as provider_name, resource_type, operation nodrop
```

**Azure Load Balancer/Health/Failures by Operation**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} LoadBalancerHealthEvent HealthEventType NoHealthyBackends
| JSON "category", "operationName", "properties.HealthEventType" as category, operationName, HealthEventType
| parse field=operationName "*/*/*/*" as provider_name, resource_type, event_type, operation_name
```

**Azure Load Balancer/Health/Total Failed Requests**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} LoadBalancerHealthEvent HealthEventType NoHealthyBackends
| JSON "category", "operationName", "properties.HealthEventType" as category, operationName, HealthEventType
```

**Azure Load Balancer/Health/UnHealthy Backends**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} LoadBalancerHealthEvent HealthEventType NoHealthyBackends
| JSON "category", "operationName", "properties.HealthEventType", "properties.Severity", "properties.Description", "properties.Frontend Ip" as category, operationName, HealthEventType, Severity, Description, FrontendIp
| parse field=operationName "*/*/*/*" as provider_name, resource_type, event_type, operation_name
```

**Azure Load Balancer/Policy/Failed Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Policy Failure
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
```

**Azure Load Balancer/Policy/Total Failed Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} location={{location}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Policy Failure
| JSON "category", "resultType" as category, resultType
```

**Azure Load Balancer/Policy/Total Success Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} location={{location}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Policy 
| JSON "category", "resultType" as category, resultType
```


