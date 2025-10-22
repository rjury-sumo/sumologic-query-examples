# Parsers For Azure Cosmos DB

**Azure Cosmos DB/Administrative Operations/ Applications by Operation type**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid nodrop
```

**Azure Cosmos DB/Administrative Operations/Distribution  by Operation Type (Read, Write and Delete)**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
```

**Azure Cosmos DB/Administrative Operations/Distribution by Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
| where (resultType="Accept" or resultType="Success") and category="Administrative" 
| parse field=operationName "*/*/*" as provider_name, resource_type, operation_name
```

**Azure Cosmos DB/Administrative Operations/Distribution by Status**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name={{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}} Administrative 
| json "resultType", "category" as resultType, category
```

**Azure Cosmos DB/Administrative Operations/Recent Delete Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "properties.entity", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, entity, identity_claims_name, authmethods nodrop
```

**Azure Cosmos DB/Administrative Operations/Recent Write Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}}  Administrative 
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods nodrop
```

**Azure Cosmos DB/Administrative Operations/Top 10 operations that caused the most errors**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group = {{resource_group}} resource_name = {{resource_name}} provider_name={{provider_name}} resource_type={{resource_type}}  Administrative
| json "resultType", "operationName", "properties.statusMessage", "category"  as resultType, operationName, failureMessage, category nodrop
| parse field=operationname "*/*/*" as provider_name, resource_type, operation nodrop
```

**Azure Cosmos DB/Audit/Control Plane Create Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} ControlPlaneRequests
| json "time", "category", "operationName", "properties.httpstatusCode", "properties.activityId", "properties.result", "properties.httpMethod", "properties.apiKind", "properties.apiKindResourceType", "properties.operationType", "properties.resourceUri", "properties.resourceDetails"  as time, category, operationName, statusCode, activityId, result, httpMethod,  apiKind, apiKindResourceType, operationType, resourceUri, resourceDetails  nodrop
```

**Azure Cosmos DB/Audit/Control Plane Delete Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} ControlPlaneRequests
| json "time", "category", "operationName", "properties.httpstatusCode", "properties.activityId", "properties.result", "properties.httpMethod", "properties.apiKind", "properties.apiKindResourceType", "properties.operationType", "properties.resourceUri", "properties.resourceDetails"  as time, category, operationName, statusCode, activityId, result, httpMethod,  apiKind, apiKindResourceType, operationType, resourceUri, resourceDetails  nodrop
```

**Azure Cosmos DB/Audit/Control Plane Update Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} ControlPlaneRequests
| json "time", "category", "operationName", "properties.httpstatusCode", "properties.activityId", "properties.result", "properties.httpMethod", "properties.apiKind", "properties.apiKindResourceType", "properties.operationType", "properties.resourceUri", "properties.resourceDetails"  as time, category, operationName, statusCode, activityId, result, httpMethod,  apiKind, apiKindResourceType, operationType, resourceUri, resourceDetails  nodrop
```

**Azure Cosmos DB/Audit/Recent Control Plane Create Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} ControlPlaneRequests
| json "time", "category", "operationName", "properties.httpstatusCode", "properties.activityId", "properties.result", "properties.httpMethod", "properties.apiKind", "properties.apiKindResourceType", "properties.operationType", "properties.resourceUri", "properties.resourceDetails"  as time, category, operationName, statusCode, activityId, result, httpMethod,  apiKind, apiKindResourceType, operationType, resourceUri, resourceDetails  nodrop
```

**Azure Cosmos DB/Audit/Recent Control Plane Update Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} ControlPlaneRequests
| json "time", "category", "operationName", "properties.httpstatusCode", "properties.activityId", "properties.result", "properties.httpMethod", "properties.apiKind", "properties.apiKindResourceType", "properties.operationType", "properties.resourceUri", "properties.resourceDetails"  as time, category, operationName, statusCode, activityId, result, httpMethod,  apiKind, apiKindResourceType, operationType, resourceUri, resourceDetails  nodrop
```

**Azure Cosmos DB/Audit/Recent Delete Control Plane Operations**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} ControlPlaneRequests
| json "time", "category", "operationName", "properties.httpstatusCode", "properties.activityId", "properties.result", "properties.httpMethod", "properties.apiKind", "properties.apiKindResourceType", "properties.operationType", "properties.resourceUri", "properties.resourceDetails"  as time, category, operationName, statusCode, activityId, result, httpMethod,  apiKind, apiKindResourceType, operationType, resourceUri, resourceDetails  nodrop
```

**Azure Cosmos DB/Health/Recent Resource Health Incidents**
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

**Azure Cosmos DB/Health/Recent Service Health Incidents**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} ServiceHealth
| JSON "category", "properties.incidentType", "properties.service", "properties.region", "properties.impactedServices" as category, incidentType, service, service_region, impactedServices nodrop
| replace(toLowerCase(service_region), " ", "") as service_region 
| where service_region matches "{{location}}"
| where category="ServiceHealth" and (toUpperCase(service) matches /COSMOS/ or toUpperCase(impactedServices) matches /COSMOS/)
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
```

**Azure Cosmos DB/Health/Resource Health by  Status**
```
tenant_name={{tenant_name}}
provider_name={{provider_name}}
resource_type={{resource_type}}
subscription_id={{subscription_id}}
resource_group={{resource_group}}
resource_name={{resource_name}} ResourceHealth 
| JSON "category", "properties.currentHealthStatus" as category, currentHealthStatus
```

**Azure Cosmos DB/Health/Service Health by Incident Type**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} ServiceHealth
| JSON "category", "properties.incidentType", "properties.service", "properties.region", "properties.impactedServices" as category, incidentType, service, service_region, impactedServices nodrop
```

**Azure Cosmos DB/Overview/Data Plane Request Location**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} DataPlaneRequests
| json "category", "operationName", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength", "properties.activityId" as category, operationName, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength, activityId 
```

**Azure Cosmos DB/Overview/Duration distribution by Database, Collection**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} DataPlaneRequests
| json "category", "operationName", "properties.activityId", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength" as category, operationName, activityId, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength nodrop
```

**Azure Cosmos DB/Overview/Request Charge by Database, Collection**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} DataPlaneRequests
| json "category", "operationName", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength", "properties.activityId", "properties.requestCharge" as category, operationName, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength, activityId, requestCharge
```

**Azure Cosmos DB/Overview/Status Code by Database, Collection**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} DataPlaneRequests
| json "category", "operationName", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength", "properties.activityId" as category, operationName, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength, activityId 
```

**Azure Cosmos DB/Overview/Top 10 User Agents**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} QueryRuntimeStatistics
| json "properties.activityId", "properties.databasename", "properties.collectionname", "properties.useragent", "properties.numberofrowsreturned", "properties.querytext", "properties.queryexecutionstatus" as activityId, databaseName, collectionName, useragent, numberofrowsreturned, querytext, queryexecutionstatus
```

**Azure Cosmos DB/Performance/Data Plane Request Trend**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} DataPlaneRequests
| json "category", "operationName", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength", "properties.activityId" as category, operationName, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength, activityId nodrop
```

**Azure Cosmos DB/Performance/Duration in Direct Connection Mode**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} DataPlaneRequests
| json "category", "operationName", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength" as category, operationName, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength
```

**Azure Cosmos DB/Performance/Duration in Gateway Connection Mode**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} DataPlaneRequests
| json "category", "operationName", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength" as category, operationName, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength
```

**Azure Cosmos DB/Performance/Failed Requests**
```


// fetch the activity ids with high duration
[subquery: tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} DataPlaneRequests
| json "category", "operationName", "properties.activityId", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength" as category, operationName, activityId, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength nodrop
| where category="DataPlaneRequests" and !(statusCode matches "2*")
| count by statusCode, activityId, databaseName, collectionName
| topk(3, _count) by databaseName, collectionName
| fields statusCode, activityId, _rank
| save /CosmosDB/DataPlaneRequests/statusCodeActivityIdMapping
| compose activityId keywords
]
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} QueryRuntimeStatistics
| json "properties.activityId", "properties.databasename", "properties.collectionname", "properties.useragent", "properties.numberofrowsreturned", "properties.querytext", "properties.queryexecutionstatus" as activityId, databaseName, collectionName, useragent, numberofrowsreturned, querytext, queryexecutionstatus
| json field=querytext "query" 
```

**Azure Cosmos DB/Performance/Max Duration in Direct Connection Mode**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} DataPlaneRequests
| json "category", "operationName", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength" as category, operationName, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength
```

**Azure Cosmos DB/Performance/Max Duration in Gateway Mode**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} DataPlaneRequests
| json "category", "operationName", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength" as category, operationName, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength
```

**Azure Cosmos DB/Performance/Total Failed Requests**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} DataPlaneRequests
| json "category", "operationName", "properties.activityId", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength" as category, operationName, activityId, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength nodrop
```

**Azure Cosmos DB/Policy and Recommendations/Failed Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Policy Failure
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
```

**Azure Cosmos DB/Policy and Recommendations/Recent Recommendation Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Recommendation
| JSON "category", "operationName", "resultType", "properties.recommendationName", "properties.recommendationCategory", "properties.recommendationImpact", "properties.recommendationResourceLink" as category, operationName, resultType, recommendationName, recommendationCategory, recommendationImpact, recommendationResourceLink 
| where category="Recommendation"
| parse field=operationName "*/*/*/*" as provider, category, operation_name, action nodrop
```

**Azure Cosmos DB/Policy and Recommendations/Total Failed Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} location={{location}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Policy Failure
| JSON "category", "resultType" as category, resultType
```

**Azure Cosmos DB/Policy and Recommendations/Total Recommendation Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Recommendation
| JSON "category"
```

**Azure Cosmos DB/Policy and Recommendations/Total Success Policy Events**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} location={{location}} resource_group={{resource_group}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} Policy 
| JSON "category", "resultType" as category, resultType
```

**Azure Cosmos DB/Queries/Duration Stats by Database, Collection**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} DataPlaneRequests
| json "category", "operationName", "properties.activityId", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength" as category, operationName, activityId, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength nodrop
```

**Azure Cosmos DB/Queries/Request Charge Stats by Database, Collection, PartitionKeyRangeId**
```

tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} PartitionKeyRUConsumption
| json "category","activityId", "properties"
| where category="PartitionKeyRUConsumption"
| json field=properties "operationType", "databaseName","collectionName","partitionKeyRangeId", "requestCharge" 
```

**Azure Cosmos DB/Queries/Response Length Stats by Database, Collection**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} DataPlaneRequests
| json "category", "operationName", "properties.activityId", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength" as category, operationName, activityId, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength nodrop
```

**Azure Cosmos DB/Queries/Top 3 expensive queries (duration) by database, collection**
```


// fetch the activity ids with high duration
[subquery: tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} DataPlaneRequests
| json "category", "operationName", "properties.activityId", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength" as category, operationName, activityId, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength nodrop
| where category="DataPlaneRequests" and statusCode matches "2*"
| count by duration, activityId, databaseName, collectionName
| number(duration) as requestCharge
| topk(3, duration) by databaseName, collectionName
| fields duration, activityId, _rank
| save /CosmosDB/DataPlaneRequests/durationActivityIdMapping
| compose activityId keywords
]
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} QueryRuntimeStatistics
| json "properties.activityId", "properties.databasename", "properties.collectionname", "properties.useragent", "properties.numberofrowsreturned", "properties.querytext", "properties.queryexecutionstatus" as activityId, databaseName, collectionName, useragent, numberofrowsreturned, querytext, queryexecutionstatus
| json field=querytext "query" 
```

**Azure Cosmos DB/Queries/Top 3 expensive queries (request charge consumed) by database, collection**
```

// fetch the activity ids with high request charge
[subquery: tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} PartitionKeyRUConsumption
| json "activityId", "properties", "category"
| where category = "PartitionKeyRUConsumption"
| json field=properties "operationType", "databaseName","collectionName","partitionKeyRangeId", "requestCharge" 
| count by requestCharge, activityId, databaseName, collectionName
| number(requestCharge) as requestCharge
| topk(3, requestCharge) by databaseName, collectionName
| fields requestCharge, activityId, _rank
| save /CosmosDB/DataPlaneRequests/requestChargeActivityIdMapping
| compose activityId keywords
]
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} QueryRuntimeStatistics
| json "properties.activityId", "properties.databasename", "properties.collectionname", "properties.useragent", "properties.numberofrowsreturned", "properties.querytext", "properties.queryexecutionstatus" as activityId, databaseName, collectionName, useragent, numberofrowsreturned, querytext, queryexecutionstatus
| json field=querytext "query" 
```

**Azure Cosmos DB/Queries/Top 3 expensive queries (response length) by database, collection**
```


// fetch the activity ids with high duration
[subquery: tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} DataPlaneRequests
| json "category", "operationName", "properties.activityId", "properties.requestResourceType", "properties.collectionName", "properties.databaseName", "properties.statusCode", "properties.duration", "properties.clientIpAddress", "properties.connectionMode", "properties.responseLength" as category, operationName, activityId, requestResourceType, collectionName, databaseName, statusCode, duration, clientIpAddress, connectionMode, responseLength nodrop
| where category="DataPlaneRequests" and statusCode matches "2*"
| count by responseLength, activityId, databaseName, collectionName
| number(responseLength) as responseLength
| topk(3, responseLength) by databaseName, collectionName
| fields responseLength, activityId, _rank
| save /CosmosDB/DataPlaneRequests/responseLengthActivityIdMapping
| compose activityId keywords
]
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} QueryRuntimeStatistics
| json "properties.activityId", "properties.databasename", "properties.collectionname", "properties.useragent", "properties.numberofrowsreturned", "properties.querytext", "properties.queryexecutionstatus" as activityId, databaseName, collectionName, useragent, numberofrowsreturned, querytext, queryexecutionstatus
| json field=querytext "query" 
```

**Azure Cosmos DB/Queries/Top 3 expensive queries (rows returned) by database, collection**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} QueryRuntimeStatistics
| json "properties.activityId", "properties.databasename", "properties.collectionname", "properties.useragent", "properties.numberofrowsreturned", "properties.querytext", "properties.queryexecutionstatus", "category" as activityId, databaseName, collectionName, useragent, numberofrowsreturned, querytext, queryexecutionstatus, category
| where category="QueryRuntimeStatistics"
| json field=querytext "query" 
```

**Azure Cosmos DB/Storage/Top 10 partitions by utilisation**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} PartitionKeyStatistics
| json "properties"
| json field=properties "sizeKb", "databaseName","collectionName", "partitionKey" 
| extract field=partitionKey "(?<partitionKey>[\w-]+)" multi
```

**Azure Cosmos DB/Throughput/Request units by Operation Type**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} PartitionKeyRUConsumption
| json "properties"
| json field=properties "operationType", "databaseName","collectionName","partitionKeyRangeId", "requestCharge" 
```

**Azure Cosmos DB/Throughput/Request units per sec by databaseName, collectionName, partitionKeyRangeId**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} PartitionKeyRUConsumption
| json "properties"
| json field=properties "operationType", "databaseName","collectionName","partitionKeyRangeId", "requestCharge" 
```

**Azure Cosmos DB/Throughput/RU consumption by logical partition**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} PartitionKeyRUConsumption
| json "properties"
| json field=properties "operationType", "databaseName","collectionName","partitionKeyRangeId", "requestCharge", "partitionKey" 
| where !isBlank(collectionName)
| extract field=partitionKey "(?<partitionKey>[\w-]+)" multi
```

**Azure Cosmos DB/Throughput/RU consumption by physical partition**
```
tenant_name={{tenant_name}} subscription_id={{subscription_id}} resource_group={{resource_group}} location={{location}} resource_type={{resource_type}} provider_name={{provider_name}} resource_name={{resource_name}} PartitionKeyRUConsumption
| json "properties"
| json field=properties "operationType", "databaseName","collectionName","partitionKeyRangeId", "requestCharge", "partitionKey" 
```


