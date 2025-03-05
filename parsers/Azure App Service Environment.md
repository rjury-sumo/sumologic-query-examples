# Parsers For Azure App Service Environment

## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid nodrop
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Recent Delete Operations, Top 10 operations that caused the most errors, Users / Applications by Operation type



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods nodrop
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Recent Delete Operations, Recent Write Operations, Top 10 operations that caused the most errors, Users / Applications by Operation type



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "properties.entity", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, entity, identity_claims_name, authmethods nodrop
```
### Use Cases:
Recent Delete Operations, Top 10 operations that caused the most errors



## Parser:
```
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Recent Delete Operations, Top 10 operations that caused the most errors



## Parser:
```
| json "ResultType", "Category", "ResourceId", "OperationName", "ResultDescription" as resultType, category, resource_id, operationName, resultDescription
| parse field=resultDescription "(*/serverfarms/*)" as _, serverfarm_name
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Failed Scaling Operations, Failed Upgrade Operations, Operations Trend, Recent Delete Operations, Recent Scaling Status By ServerFarm, Recent Upgrade Status By Server Farm, Recent Write Operations, Scaling Operations, Top 10 Hosting Environments By Scaling Events, Top 10 Hosting Environments By Upgrade Events, Top 10 operations that caused the most errors, Total Hosting Environments, Upgrade Operations, Users / Applications by Operation type



## Parser:
```
| json "ResultType", "Category", "ResourceId", "OperationName", "ResultDescription", "time" as resultType, category, resource_id, operationName, resultDescription, time
| parse field=resultDescription "(*/serverfarms/*)" as _, serverfarm_name
```
### Use Cases:
Count By Operation Type, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Failed Scaling Operations, Failed Upgrade Operations, Operations Trend, Recent Delete Operations, Recent Failed Operations By Server Farm, Recent Scaling Status By ServerFarm, Recent Upgrade Status By Server Farm, Recent Write Operations, Scaling Operations, Top 10 Hosting Environments By Scaling Events, Top 10 Hosting Environments By Upgrade Events, Top 10 operations that caused the most errors, Total Hosting Environments, Upgrade Operations, Users / Applications by Operation type



## Parser:
```
| json "resultType", "operationName", "properties.statusMessage", "category"  as resultType, operationName, failureMessage, category
```
### Use Cases:
Top 10 operations that caused the most errors


