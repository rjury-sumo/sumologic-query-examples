# Parsers For Azure Audit

**Azure Audit/Overview - New/Azure Activity by Source Location**
```
_sourceCategory = Labs/Azure/Audit (callerIpAddress or (HttpRequest ClientIpAddress))
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
```

**Azure Audit/Overview - New/Events by Caller**
```
_sourceCategory = Labs/Azure/Audit ((identity claims name) or Caller)
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
```

**Azure Audit/Overview - New/Events by Category**
```
_sourceCategory = Labs/Azure/Audit ((properties eventCategory) or Category)
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
```

**Azure Audit/Overview - New/Events By Level**
```
_sourceCategory = Labs/Azure/Audit (level or Level)
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
```

**Azure Audit/Overview - New/Events by Resource Group**
```
_sourceCategory = Labs/Azure/Audit ((resourceId RESOURCEGROUPS) or ResourceGroupName)
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/RESOURCEGROUPS/(?<ResourceGroupName1>[^/]+)" nodrop // EventHub
| json "ResourceGroupName" as ResourceGroupName2 nodrop // Azure Insight API using our Powershell scripts 
| if (isEmpty(ResourceGroupName1), ResourceGroupName2, ResourceGroupName1) as ResourceGroupName
| where !isEmpty(ResourceGroupName)
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
```

**Azure Audit/Overview - New/Events By Status**
```
_sourceCategory = Labs/Azure/Audit (resultType or Status)
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
```

**Azure Audit/Overview/Azure Activity by Source Location**
```
_sourceCategory={{Logsdatasource}}  (callerIpAddress or (HttpRequest ClientIpAddress))
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
```

**Azure Audit/Overview/Events by Caller**
```
_sourceCategory={{Logsdatasource}}  ((identity claims name) or Caller)
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
```

**Azure Audit/Overview/Events by Category**
```
_sourceCategory={{Logsdatasource}}  ((properties eventCategory) or Category)
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
```

**Azure Audit/Overview/Events By Level**
```
_sourceCategory={{Logsdatasource}}  (level or Level)
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
```

**Azure Audit/Overview/Events by Resource Group**
```
_sourceCategory={{Logsdatasource}}  ((resourceId RESOURCEGROUPS) or ResourceGroupName)
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/RESOURCEGROUPS/(?<ResourceGroupName1>[^/]+)" nodrop // EventHub
| json "ResourceGroupName" as ResourceGroupName2 nodrop // Azure Insight API using our Powershell scripts 
| if (isEmpty(ResourceGroupName1), ResourceGroupName2, ResourceGroupName1) as ResourceGroupName
| where !isEmpty(ResourceGroupName)
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
```

**Azure Audit/Overview/Events By Status**
```
_sourceCategory={{Logsdatasource}}  (resultType or Status)
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
```

**Azure Audit/Resource Usage - New/Events by Resource Group**
```
_sourceCategory = Labs/Azure/Audit ((resourceId RESOURCEGROUPS) or (ResourceGroupName))
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/RESOURCEGROUPS/(?<ResourceGroupName1>[^/]+)" nodrop
| json "ResourceGroupName" as ResourceGroupName2 nodrop // Azure Insight API using our Powershell scripts 
```

**Azure Audit/Resource Usage - New/Events by Resource Provider**
```
_sourceCategory = Labs/Azure/Audit ((resourceId PROVIDERS) or (ResourceProviderName))
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/PROVIDERS/(?<ResourceProviderName1>[^/]+)" nodrop // EventHub
| json "ResourceProviderName" as ResourceProviderName2 nodrop // Azure Insight API using our Powershell scripts 
```

**Azure Audit/Resource Usage - New/Operations by Resource Group**
```
_sourceCategory = Labs/Azure/Audit ((resourceId RESOURCEGROUPS operationName) or (ResourceGroupName OperationName))
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/RESOURCEGROUPS/(?<ResourceGroupName1>[^/]+)" nodrop // EventHub
| json "ResourceGroupName" as ResourceGroupName2 nodrop // Azure Insight API using our Powershell scripts 
| concat (OperationName1, OperationName2) as OperationName
| if (isEmpty(ResourceGroupName1), ResourceGroupName2, ResourceGroupName1) as ResourceGroupName
| parse field=OperationName "/*" as action
```

**Azure Audit/Resource Usage - New/Operations by Resource Provider**
```
_sourceCategory = Labs/Azure/Audit ((PROVIDERS resourceId operationName) or (ResourceProviderName OperationName))
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/PROVIDERS/(?<ResourceProviderName1>[^/]+)" nodrop // EventHub
| json "ResourceProviderName" as ResourceProviderName2 nodrop // Azure Insight API using our Powershell scripts 
| concat (OperationName1, OperationName2) as OperationName
| if (isEmpty(ResourceProviderName1), ResourceProviderName2, ResourceProviderName1) as ResourceProviderName
| parse field=operationName "/*" as action
```

**Azure Audit/Resource Usage - New/Resource Group Events**
```
_sourceCategory = Labs/Azure/Audit ((resourceId RESOURCEGROUPS) or (ResourceGroupName))
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/RESOURCEGROUPS/(?<ResourceGroupName1>[^/]+)" nodrop
| json "ResourceGroupName" as ResourceGroupName2 nodrop // Azure Insight API using our Powershell scripts 
```

**Azure Audit/Resource Usage - New/Resource Provider Events**
```
_sourceCategory = Labs/Azure/Audit ((resourceId PROVIDERS) or (ResourceProviderName))
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/PROVIDERS/(?<ResourceProviderName1>[^/]+)" nodrop // EventHub
| json "ResourceProviderName" as ResourceProviderName2 nodrop // Azure Insight API using our Powershell scripts 
```

**Azure Audit/Resource Usage - New/Resource Providers by Resource Groups**
```
_sourceCategory = Labs/Azure/Audit ((resourceId ("PROVIDERS" or "RESOURCEGROUPS")) or (ResourceGroupName ResourceProviderName))
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| concat (OperationName1, OperationName2) as OperationName
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/RESOURCEGROUPS/(?<ResourceGroupName1>[^/]+)" nodrop // EventHub
| parse regex field=resourceId1 "/PROVIDERS/(?<ResourceProviderName1>[^/]+)" nodrop // EventHub
| json "ResourceGroupName" as ResourceGroupName2 nodrop // Azure Insight API using our Powershell scripts 
| json "ResourceProviderName" as ResourceProviderName2 nodrop // Azure Insight API using our Powershell scripts 
```

**Azure Audit/Resource Usage/Events by Resource Group**
```
_sourceCategory={{Logsdatasource}}  ((resourceId RESOURCEGROUPS) or (ResourceGroupName))
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/RESOURCEGROUPS/(?<ResourceGroupName1>[^/]+)" nodrop
| json "ResourceGroupName" as ResourceGroupName2 nodrop // Azure Insight API using our Powershell scripts 
```

**Azure Audit/Resource Usage/Events by Resource Provider**
```
_sourceCategory={{Logsdatasource}}  ((resourceId PROVIDERS) or (ResourceProviderName))
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/PROVIDERS/(?<ResourceProviderName1>[^/]+)" nodrop // EventHub
| json "ResourceProviderName" as ResourceProviderName2 nodrop // Azure Insight API using our Powershell scripts 
```

**Azure Audit/Resource Usage/Operations by Resource Group**
```
_sourceCategory={{Logsdatasource}}  ((resourceId RESOURCEGROUPS operationName) or (ResourceGroupName OperationName))
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/RESOURCEGROUPS/(?<ResourceGroupName1>[^/]+)" nodrop // EventHub
| json "ResourceGroupName" as ResourceGroupName2 nodrop // Azure Insight API using our Powershell scripts 
| concat (OperationName1, OperationName2) as OperationName
| if (isEmpty(ResourceGroupName1), ResourceGroupName2, ResourceGroupName1) as ResourceGroupName
| parse field=OperationName "/*" as action
```

**Azure Audit/Resource Usage/Operations by Resource Provider**
```
_sourceCategory={{Logsdatasource}}  ((PROVIDERS resourceId operationName) or (ResourceProviderName OperationName))
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/PROVIDERS/(?<ResourceProviderName1>[^/]+)" nodrop // EventHub
| json "ResourceProviderName" as ResourceProviderName2 nodrop // Azure Insight API using our Powershell scripts 
| concat (OperationName1, OperationName2) as OperationName
| if (isEmpty(ResourceProviderName1), ResourceProviderName2, ResourceProviderName1) as ResourceProviderName
| parse field=operationName "/*" as action
```

**Azure Audit/Resource Usage/Resource Group Events**
```
_sourceCategory={{Logsdatasource}}  ((resourceId RESOURCEGROUPS) or (ResourceGroupName))
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/RESOURCEGROUPS/(?<ResourceGroupName1>[^/]+)" nodrop
| json "ResourceGroupName" as ResourceGroupName2 nodrop // Azure Insight API using our Powershell scripts 
```

**Azure Audit/Resource Usage/Resource Provider Events**
```
_sourceCategory={{Logsdatasource}}  ((resourceId PROVIDERS) or (ResourceProviderName))
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/PROVIDERS/(?<ResourceProviderName1>[^/]+)" nodrop // EventHub
| json "ResourceProviderName" as ResourceProviderName2 nodrop // Azure Insight API using our Powershell scripts 
```

**Azure Audit/Resource Usage/Resource Providers by Resource Groups**
```
_sourceCategory={{Logsdatasource}}  ((resourceId ("PROVIDERS" or "RESOURCEGROUPS")) or (ResourceGroupName ResourceProviderName))
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| concat (OperationName1, OperationName2) as OperationName
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/RESOURCEGROUPS/(?<ResourceGroupName1>[^/]+)" nodrop // EventHub
| parse regex field=resourceId1 "/PROVIDERS/(?<ResourceProviderName1>[^/]+)" nodrop // EventHub
| json "ResourceGroupName" as ResourceGroupName2 nodrop // Azure Insight API using our Powershell scripts 
| json "ResourceProviderName" as ResourceProviderName2 nodrop // Azure Insight API using our Powershell scripts 
```

**Azure Audit/Service Health - New/Events Details**
```
_sourceCategory = Labs/Azure/Audit "ServiceHealth" ((properties eventCategory level resultType) or (Category Level Status))
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resultDescription", "Description" as Description1, Description2 nodrop // "resultDescription" EventHub, "Description" Azure Insight API
| json "correlationId", "CorrelationId" as CorrelationId1, CorrelationId2 nodrop // "correlationId" EventHub, "CorrelationId" Azure Insight API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
| json "location" as Location nodrop // EventHub
```

**Azure Audit/Service Health - New/Events Over Time**
```
_sourceCategory = Labs/Azure/Audit "ServiceHealth" ((properties eventCategory level) or (Category Level))
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resultDescription", "Description" as Description1, Description2 nodrop // "resultDescription" EventHub, "Description" Azure Insight API
| json "correlationId", "CorrelationId" as CorrelationId1, CorrelationId2 nodrop // "correlationId" EventHub, "CorrelationId" Azure Insight API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
| json "location" as Location nodrop // EventHub
```

**Azure Audit/Service Health - New/Level**
```
_sourceCategory = Labs/Azure/Audit "ServiceHealth" ((properties eventCategory level) or (category Level))
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resultDescription", "Description" as Description1, Description2 nodrop // "resultDescription" EventHub, "Description" Azure Insight API
| json "correlationId", "CorrelationId" as CorrelationId1, CorrelationId2 nodrop // "correlationId" EventHub, "CorrelationId" Azure Insight API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
| json "location" as Location nodrop // EventHub
```

**Azure Audit/Service Health - New/Status**
```
_sourceCategory = Labs/Azure/Audit "ServiceHealth" ((properties eventCategory resultType) or (Category Status))
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resultDescription", "Description" as Description1, Description2 nodrop // "resultDescription" EventHub, "Description" Azure Insight API
| json "correlationId", "CorrelationId" as CorrelationId1, CorrelationId2 nodrop // "correlationId" EventHub, "CorrelationId" Azure Insight API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
| json "location" as Location nodrop // EventHub
```

**Azure Audit/Service Health - New/Unresolved Events**
```
_sourceCategory = Labs/Azure/Audit "ServiceHealth" ((properties eventCategory level resultType) or (Category Level Status))
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resultDescription", "Description" as Description1, Description2 nodrop // "resultDescription" EventHub, "Description" Azure Insight API
| json "correlationId", "CorrelationId" as CorrelationId1, CorrelationId2 nodrop // "correlationId" EventHub, "CorrelationId" Azure Insight API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
| json "location" as Location nodrop // EventHub
```

**Azure Audit/Service Health/Events Details**
```
_sourceCategory={{Logsdatasource}}  "ServiceHealth" ((properties eventCategory level resultType) or (Category Level Status))
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resultDescription", "Description" as Description1, Description2 nodrop // "resultDescription" EventHub, "Description" Azure Insight API
| json "correlationId", "CorrelationId" as CorrelationId1, CorrelationId2 nodrop // "correlationId" EventHub, "CorrelationId" Azure Insight API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
| json "location" as Location nodrop // EventHub
```

**Azure Audit/Service Health/Events Over Time**
```
_sourceCategory={{Logsdatasource}}  "ServiceHealth" ((properties eventCategory level) or (Category Level))
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resultDescription", "Description" as Description1, Description2 nodrop // "resultDescription" EventHub, "Description" Azure Insight API
| json "correlationId", "CorrelationId" as CorrelationId1, CorrelationId2 nodrop // "correlationId" EventHub, "CorrelationId" Azure Insight API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
| json "location" as Location nodrop // EventHub
```

**Azure Audit/Service Health/Level**
```
_sourceCategory={{Logsdatasource}}  "ServiceHealth" ((properties eventCategory level) or (category Level))
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resultDescription", "Description" as Description1, Description2 nodrop // "resultDescription" EventHub, "Description" Azure Insight API
| json "correlationId", "CorrelationId" as CorrelationId1, CorrelationId2 nodrop // "correlationId" EventHub, "CorrelationId" Azure Insight API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
| json "location" as Location nodrop // EventHub
```

**Azure Audit/Service Health/Status**
```
_sourceCategory={{Logsdatasource}}  "ServiceHealth" ((properties eventCategory resultType) or (Category Status))
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resultDescription", "Description" as Description1, Description2 nodrop // "resultDescription" EventHub, "Description" Azure Insight API
| json "correlationId", "CorrelationId" as CorrelationId1, CorrelationId2 nodrop // "correlationId" EventHub, "CorrelationId" Azure Insight API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
| json "location" as Location nodrop // EventHub
```

**Azure Audit/Service Health/Unresolved Events**
```
_sourceCategory={{Logsdatasource}}  "ServiceHealth" ((properties eventCategory level resultType) or (Category Level Status))
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "resultDescription", "Description" as Description1, Description2 nodrop // "resultDescription" EventHub, "Description" Azure Insight API
| json "correlationId", "CorrelationId" as CorrelationId1, CorrelationId2 nodrop // "correlationId" EventHub, "CorrelationId" Azure Insight API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
| json "location" as Location nodrop // EventHub
```

**Azure Audit/User Activity/Events by Location**
```
_sourceCategory={{Logsdatasource}}  (callerIpAddress or (HttpRequest ClientIpAddress))
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
```

**Azure Audit/User Activity/Events by User**
```
_sourceCategory={{Logsdatasource}}  ((identity claims name operationName category) or (Caller OperationName Category EventName))
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
```

**Azure Audit/User Activity/Operations by User**
```
_sourceCategory={{Logsdatasource}}  ((identity claims name operationName) or (Caller OperationName))
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
| concat (level1, level2) as Level
| concat (status1, status2) as Status
| concat (src_user1, src_user2) as src_user
| concat (src_ip1, src_ip2) as src_ip
| concat (Category1, Category2) as Category
| concat (OperationName1, OperationName2) as OperationName
| concat (EventName1, EventName2) as EventName
| if (IsEmpty(Category), "Undefined", Category) as Category
| if(Level="1","Critical", if (Level="2","Error", if (Level="3","Warning", if (Level="4","Information", Level) ))) as Level
| where Category <> "ServiceHealth"
| parse field=OperationName "/*" as action
```

**Azure Audit/User Activity/Resource Creations**
```
_sourceCategory={{Logsdatasource}}  operationName (category or Eventname) WRITE
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| concat (level1, level2) as Level
| concat (status1, status2) as Status
| concat (src_user1, src_user2) as src_user
| concat (src_ip1, src_ip2) as src_ip
| concat (OperationName1, OperationName2) as OperationName
| concat (EventName1, EventName2) as EventName
| concat (Category1, Category2) as Category
| parse field=operationName "*/*/*" as provider, object, action nodrop
| parse field=operationName "*/*/*/*" as provider, object, subject, action nodrop
```

**Azure Audit/User Activity/Resource Deletions**
```
_sourceCategory={{Logsdatasource}}  operationName (category or Eventname) (DELETE or REMOVE)
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| concat (level1, level2) as Level
| concat (status1, status2) as Status
| concat (src_user1, src_user2) as src_user
| concat (src_ip1, src_ip2) as src_ip
| concat (OperationName1, OperationName2) as OperationName
| concat (EventName1, EventName2) as EventName
| concat (Category1, Category2) as Category
| parse field=OperationName "*/*/*" as provider, object, action nodrop
| parse field=OperationName "*/*/*/*" as provider, object, subject, action nodrop
```

**Azure Audit/User Activity/Resource Groups by Caller**
```
_sourceCategory={{Logsdatasource}}  ((identity claims name resourceId RESOURCEGROUPS) or (Caller ResourceGroupName))
| json "resourceId" as resourceId1 nodrop // EventHub
| parse regex field=resourceId1 "/RESOURCEGROUPS/(?<ResourceGroupName1>[^/]+)" nodrop // EventHub
| json "ResourceGroupName" as ResourceGroupName2 nodrop // Azure Insight API using our Powershell scripts 
| if (isEmpty(ResourceGroupName1), ResourceGroupName2, ResourceGroupName1) as ResourceGroupName
| where !isEmpty(ResourceGroupName)
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
```

**Azure Audit/User Activity/Top 10 Users**
```
_sourceCategory={{Logsdatasource}}  ((identity claims name) or Caller)
| json "level", "Level" as level1, level2 nodrop // "level" EventHub, "Level"  Azure Insight API
| json "resultType", "Status" as status1, status2 nodrop // "resultType" EventHub, "Status" Azure Insight API
| json "identity.claims.name", "Caller" as src_user1, src_user2 nodrop // "identity.claims.name" EventHub, "Caller" Azure Insight API
| json "callerIpAddress", "HttpRequest.ClientIpAddress" as src_ip1, src_ip2 nodrop // "callerIpAddress" EventHub, "HttpRequest.ClientIpAddress" API
| json "properties.eventCategory", "Category"  as Category1, Category2 nodrop // "properties.eventCategory" EventHub, "Category" Azure Insight API
| json "operationName", "OperationName" as OperationName1, OperationName2 nodrop // "operationName" EventHub, "OperationName" Azure Insight API 
| json "category", "EventName" as EventName1, EventName2 nodrop // "category" EventHub, "EventName" Azure Insight API 
```


