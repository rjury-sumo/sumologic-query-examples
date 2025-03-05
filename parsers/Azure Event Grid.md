# Parsers For Azure Event Grid

## Parser:
```
| JSON "category"
 
```
### Use Cases:
Authentication Types, Delivery and Publish Failures Trend by Topic, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Recent Write Operations, Requests by Location, Requests by Network Access Type, Requests by Operation Status, Top 10 Failed Delivery Destinations, Top 10 Failed Topics, Top 10 Operations That Caused The Most Errors, Top 3 Delivery Failures by Event Subscription, Top 3 Publish Failures by Topic, Total Recommendation Events, Users / Applications by Operation Type



## Parser:
```
| json "category" as category
 
```
### Use Cases:
Delivery and Publish Failures Trend by Topic, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Recent Write Operations, Top 10 Failed Delivery Destinations, Top 10 Failed Topics, Top 10 Operations That Caused The Most Errors, Top 3 Delivery Failures by Event Subscription, Top 3 Publish Failures by Topic, Users / Applications by Operation Type



## Parser:
```
| json "category", "eventSubscriptionName" as category, eventSubscriptionName
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Recent Write Operations, Top 10 Failed Delivery Destinations, Top 10 Failed Topics, Top 10 Operations That Caused The Most Errors, Top 3 Delivery Failures by Event Subscription, Top 3 Publish Failures by Topic, Users / Applications by Operation Type



## Parser:
```
| json "category", "eventSubscriptionName","message" as category, eventSubscriptionName, message
| parse field=message "Status:*ErrorCode" as status
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Recent Write Operations, Top 10 Failed Delivery Destinations, Top 10 Operations That Caused The Most Errors, Top 3 Delivery Failures by Event Subscription, Users / Applications by Operation Type



## Parser:
```
| json "category", "message" as category, message
| parse field=message "errorMessage=*" as error_message
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Recent Write Operations, Top 10 Failed Delivery Destinations, Top 10 Operations That Caused The Most Errors, Top 3 Delivery Failures by Event Subscription, Top 3 Publish Failures by Topic, Users / Applications by Operation Type



## Parser:
```
| json "category", "message" as category, message
| parse field=message "urlPath=*," as url_path
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Recent Write Operations, Top 10 Failed Delivery Destinations, Top 10 Operations That Caused The Most Errors, Users / Applications by Operation Type



## Parser:
```
| JSON "category", "operationName", "resultType", "properties.recommendationName", "properties.recommendationCategory", "properties.recommendationImpact", "properties.recommendationResourceLink" as category, operationName, resultType, recommendationName, recommendationCategory, recommendationImpact, recommendationResourceLink 
| parse field=operationName "*/*/*/*" as provider, category, operation_name, action nodrop
 
```
### Use Cases:
Authentication Types, Delivery and Publish Failures Trend by Topic, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Policy Events, Recent Delete Operations, Recent Recommendation Events, Recent Write Operations, Requests by Location, Requests by Network Access Type, Requests by Operation Status, Top 10 Failed Delivery Destinations, Top 10 Failed Topics, Top 10 Operations That Caused The Most Errors, Top 3 Delivery Failures by Event Subscription, Top 3 Publish Failures by Topic, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation Type



## Parser:
```
| json "category", "properties.aggregatedRequests[*]" as category, events
| parse regex field=events "(?<request_info>\{(?:[^\{\}]|\{[^\{\}]*\})*\})" multi
| json field=request_info "authentication.type", "totalOperations" as type, totalOperations
 
```
### Use Cases:
Authentication Types, Delivery and Publish Failures Trend by Topic, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Recent Write Operations, Requests by Network Access Type, Top 10 Failed Delivery Destinations, Top 10 Failed Topics, Top 10 Operations That Caused The Most Errors, Top 3 Delivery Failures by Event Subscription, Top 3 Publish Failures by Topic, Users / Applications by Operation Type



## Parser:
```
| json "category", "properties.aggregatedRequests[*]" as category, events
| parse regex field=events "(?<request_info>\{(?:[^\{\}]|\{[^\{\}]*\})*\})" multi
| json field=request_info "clientIpAddress", "totalOperations" as clientIpAddress, totalOperations
 
```
### Use Cases:
Authentication Types, Delivery and Publish Failures Trend by Topic, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Recent Write Operations, Requests by Location, Requests by Network Access Type, Requests by Operation Status, Top 10 Failed Delivery Destinations, Top 10 Failed Topics, Top 10 Operations That Caused The Most Errors, Top 3 Delivery Failures by Event Subscription, Top 3 Publish Failures by Topic, Users / Applications by Operation Type



## Parser:
```
| json "category", "properties.aggregatedRequests[*]" as category, events
| parse regex field=events "(?<request_info>\{(?:[^\{\}]|\{[^\{\}]*\})*\})" multi
| json field=request_info "networkAccess", "totalOperations" as networkAccess, totalOperations
 
```
### Use Cases:
Delivery and Publish Failures Trend by Topic, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Recent Write Operations, Requests by Network Access Type, Top 10 Failed Delivery Destinations, Top 10 Failed Topics, Top 10 Operations That Caused The Most Errors, Top 3 Delivery Failures by Event Subscription, Top 3 Publish Failures by Topic, Users / Applications by Operation Type



## Parser:
```
| json "category", "properties.aggregatedRequests[*]" as category, events
| parse regex field=events "(?<request_info>\{(?:[^\{\}]|\{[^\{\}]*\})*\})" multi
| json field=request_info "operationResult", "totalOperations" as operationResult, totalOperations
 
```
### Use Cases:
Authentication Types, Delivery and Publish Failures Trend by Topic, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Recent Write Operations, Requests by Network Access Type, Requests by Operation Status, Top 10 Failed Delivery Destinations, Top 10 Failed Topics, Top 10 Operations That Caused The Most Errors, Top 3 Delivery Failures by Event Subscription, Top 3 Publish Failures by Topic, Users / Applications by Operation Type



## Parser:
```
| JSON "category", "resultType" as category, resultType
 
```
### Use Cases:
Authentication Types, Delivery and Publish Failures Trend by Topic, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Policy Events, Recent Delete Operations, Recent Recommendation Events, Recent Write Operations, Requests by Location, Requests by Network Access Type, Requests by Operation Status, Top 10 Failed Delivery Destinations, Top 10 Failed Topics, Top 10 Operations That Caused The Most Errors, Top 3 Delivery Failures by Event Subscription, Top 3 Publish Failures by Topic, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation Type



## Parser:
```
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
 
```
### Use Cases:
Authentication Types, Delivery and Publish Failures Trend by Topic, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Policy Events, Recent Delete Operations, Recent Write Operations, Requests by Location, Requests by Network Access Type, Requests by Operation Status, Top 10 Failed Delivery Destinations, Top 10 Failed Topics, Top 10 Operations That Caused The Most Errors, Top 3 Delivery Failures by Event Subscription, Top 3 Publish Failures by Topic, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation Type



## Parser:
```
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
| parse field=entity "/subscriptions/*/resourceGroups/*/providers/*/*/*" as subscription_id, resource_group, providers, virtualMachineScaleSets, aks nodrop
 
```
### Use Cases:
Authentication Types, Delivery and Publish Failures Trend by Topic, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Recent Write Operations, Requests by Location, Requests by Network Access Type, Requests by Operation Status, Top 10 Failed Delivery Destinations, Top 10 Failed Topics, Top 10 Operations That Caused The Most Errors, Top 3 Delivery Failures by Event Subscription, Top 3 Publish Failures by Topic, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation Type



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid nodrop
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Recent Delete Operations, Top 10 Operations That Caused The Most Errors, Users / Applications by Operation Type



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods nodrop
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Recent Write Operations, Top 10 Operations That Caused The Most Errors, Users / Applications by Operation Type



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "properties.entity", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, entity, identity_claims_name, authmethods nodrop
 
```
### Use Cases:
Recent Delete Operations, Top 10 Operations That Caused The Most Errors



## Parser:
```
| json "resultType", "category" as resultType, category
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Top 10 Operations That Caused The Most Errors, Users / Applications by Operation Type



## Parser:
```
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Recent Delete Operations, Top 10 Operations That Caused The Most Errors



## Parser:
```
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
| parse field=operationName "*/*/*" as provider_name, resource_type, operation_name
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Recent Delete Operations, Top 10 Operations That Caused The Most Errors



## Parser:
```
| json "resultType", "operationName", "properties.statusMessage", "category"  as resultType, operationName, failureMessage, category nodrop
| parse field=operationname "*/*/*" as provider_name, resource_type, operation nodrop
 
```
### Use Cases:
Top 10 Operations That Caused The Most Errors


