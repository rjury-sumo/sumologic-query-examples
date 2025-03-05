# Parsers For Azure Audit

## Parser:
```
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| parse field=OperationName "*/*/*" as provider, object, action nodrop
| parse field=OperationName "*/*/*/*" as provider, object, subject, action nodrop
 
```
### Use Cases:
Azure Activity by Source Location, Events by Caller, Events by Category, Events By Level, Events by Location, Events by Resource Group, Events by Resource Provider, Events By Status, Events Details, Events Over Time, Level, Operations by Resource Group, Operations by Resource Provider, Operations by User, Resource Deletions, Resource Group Events, Resource Provider Events, Resource Providers by Resource Groups, Status, Unresolved Events



## Parser:
```
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| parse field=operationName "*/*/*" as provider, object, action nodrop
| parse field=operationName "*/*/*/*" as provider, object, subject, action nodrop
 
```
### Use Cases:
Azure Activity by Source Location, Events by Caller, Events by Category, Events By Level, Events by Location, Events by Resource Group, Events by Resource Provider, Events By Status, Events by User, Events Details, Events Over Time, Level, Operations by Resource Group, Operations by Resource Provider, Operations by User, Resource Creations, Resource Deletions, Resource Group Events, Resource Groups by Caller, Resource Provider Events, Resource Providers by Resource Groups, Status, Top 10 Users, Unresolved Events



## Parser:
```
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
 
```
### Use Cases:
Azure Activity by Source Location, Events by Caller, Events by Category, Events By Level, Events by Resource Group, Events by Resource Provider, Events By Status, Events Details, Events Over Time, Level, Operations by Resource Group, Operations by Resource Provider, Resource Group Events, Resource Provider Events, Resource Providers by Resource Groups, Status, Unresolved Events



## Parser:
```
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
 
```
### Use Cases:
Azure Activity by Source Location, Events by Caller, Events by Category, Events By Level, Events by Location, Events by Resource Group, Events by Resource Provider, Events By Status, Events by User, Events Details, Events Over Time, Level, Operations by Resource Group, Operations by Resource Provider, Operations by User, Resource Deletions, Resource Group Events, Resource Groups by Caller, Resource Provider Events, Resource Providers by Resource Groups, Status, Top 10 Users, Unresolved Events



## Parser:
```
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
| parse field=OperationName "/*" as action
 
```
### Use Cases:
Azure Activity by Source Location, Events by Caller, Events by Category, Events By Level, Events by Resource Group, Events by Resource Provider, Events By Status, Events Details, Events Over Time, Level, Operations by Resource Group, Operations by Resource Provider, Operations by User, Resource Group Events, Resource Provider Events, Resource Providers by Resource Groups, Status, Unresolved Events



## Parser:
```
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resultDescription", "Description" as Description1, Description2 nodrop // "resultDescription" EventHub, "Description" Azure Insight API
| json "correlationId", "CorrelationId" as CorrelationId1, CorrelationId2 nodrop // "correlationId" EventHub, "CorrelationId" Azure Insight API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
| json "location" as Location nodrop // EventHub
 
```
### Use Cases:
Azure Activity by Source Location, Events by Caller, Events by Category, Events By Level, Events by Resource Group, Events by Resource Provider, Events By Status, Events Details, Events Over Time, Level, Operations by Resource Group, Operations by Resource Provider, Resource Group Events, Resource Provider Events, Resource Providers by Resource Groups, Status, Unresolved Events



## Parser:
```
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/PROVIDERS/(?<ResourceProviderName1>[^/]+)" nodrop // EventHub
| json "ResourceProviderName" as ResourceProviderName2 nodrop // Azure Insight API using our Powershell scripts 
 
```
### Use Cases:
Azure Activity by Source Location, Events by Caller, Events by Category, Events By Level, Events by Resource Group, Events by Resource Provider, Events By Status, Events Details, Events Over Time, Level, Operations by Resource Group, Operations by Resource Provider, Resource Group Events, Resource Provider Events, Resource Providers by Resource Groups, Status, Unresolved Events



## Parser:
```
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/PROVIDERS/(?<ResourceProviderName1>[^/]+)" nodrop // EventHub
| json "ResourceProviderName" as ResourceProviderName2 nodrop // Azure Insight API using our Powershell scripts 
| parse field=operationName "/*" as action
 
```
### Use Cases:
Azure Activity by Source Location, Events by Caller, Events by Category, Events By Level, Events by Resource Group, Events by Resource Provider, Events By Status, Events Details, Events Over Time, Level, Operations by Resource Group, Operations by Resource Provider, Resource Group Events, Resource Provider Events, Resource Providers by Resource Groups, Status, Unresolved Events



## Parser:
```
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/RESOURCEGROUPS/(?<ResourceGroupName1>[^/]+)" nodrop // EventHub
| json "ResourceGroupName" as ResourceGroupName2 nodrop // Azure Insight API using our Powershell scripts 
| parse field=OperationName "/*" as action
 
```
### Use Cases:
Azure Activity by Source Location, Events by Caller, Events by Category, Events By Level, Events by Resource Group, Events by Resource Provider, Events By Status, Events Details, Events Over Time, Level, Operations by Resource Group, Operations by Resource Provider, Resource Group Events, Resource Provider Events, Resource Providers by Resource Groups, Status, Unresolved Events



## Parser:
```
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/RESOURCEGROUPS/(?<ResourceGroupName1>[^/]+)" nodrop // EventHub
| parse regex field=resourceId1 "/PROVIDERS/(?<ResourceProviderName1>[^/]+)" nodrop // EventHub
| json "ResourceGroupName" as ResourceGroupName2 nodrop // Azure Insight API using our Powershell scripts 
| json "ResourceProviderName" as ResourceProviderName2 nodrop // Azure Insight API using our Powershell scripts 
 
```
### Use Cases:
Azure Activity by Source Location, Events by Caller, Events by Category, Events By Level, Events by Resource Group, Events by Resource Provider, Events By Status, Events Details, Events Over Time, Level, Operations by Resource Group, Operations by Resource Provider, Resource Group Events, Resource Provider Events, Resource Providers by Resource Groups, Status, Unresolved Events



## Parser:
```
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/PROVIDERS/(?<ResourceProviderName1>[^/]+)" nodrop // EventHub
| json "ResourceProviderName" as ResourceProviderName2 nodrop // Azure Insight API using our Powershell scripts 
 
```
### Use Cases:
Azure Activity by Source Location, Events by Caller, Events by Category, Events By Level, Events by Resource Group, Events by Resource Provider, Events By Status, Events Details, Events Over Time, Level, Operations by Resource Group, Operations by Resource Provider, Resource Group Events, Resource Provider Events, Resource Providers by Resource Groups, Status, Unresolved Events



## Parser:
```
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/RESOURCEGROUPS/(?<ResourceGroupName1>[^/]+)" nodrop
| json "ResourceGroupName" as ResourceGroupName2 nodrop // Azure Insight API using our Powershell scripts 
 
```
### Use Cases:
Azure Activity by Source Location, Events by Caller, Events by Category, Events By Level, Events by Resource Group, Events by Resource Provider, Events By Status, Events Details, Events Over Time, Level, Operations by Resource Group, Operations by Resource Provider, Resource Group Events, Resource Provider Events, Resource Providers by Resource Groups, Status, Unresolved Events



## Parser:
```
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/RESOURCEGROUPS/(?<ResourceGroupName1>[^/]+)" nodrop // EventHub
| json "ResourceGroupName" as ResourceGroupName2 nodrop // Azure Insight API using our Powershell scripts 
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
 
```
### Use Cases:
Azure Activity by Source Location, Events by Caller, Events by Category, Events By Level, Events by Resource Group, Events by Resource Provider, Events By Status, Events Details, Events Over Time, Level, Operations by Resource Group, Operations by Resource Provider, Resource Group Events, Resource Provider Events, Resource Providers by Resource Groups, Status, Unresolved Events



## Parser:
```
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/RESOURCEGROUPS/(?<ResourceGroupName1>[^/]+)" nodrop // EventHub
| json "ResourceGroupName" as ResourceGroupName2 nodrop // Azure Insight API using our Powershell scripts 
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
 
```
### Use Cases:
Azure Activity by Source Location, Events by Caller, Events by Category, Events By Level, Events by Location, Events by Resource Group, Events by Resource Provider, Events By Status, Events Details, Events Over Time, Level, Operations by Resource Group, Operations by Resource Provider, Operations by User, Resource Deletions, Resource Group Events, Resource Groups by Caller, Resource Provider Events, Resource Providers by Resource Groups, Status, Top 10 Users, Unresolved Events


