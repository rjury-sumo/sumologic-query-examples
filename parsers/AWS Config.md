# Parsers For AWS Config

**AWS Config/Configuration Trend/Configuration Trend**
```
_sourceCategory = Labs/AWS/Config Notification ConfigurationItemChangeNotification
| json "Message", "Type" 
| where type == "Notification"
| json field=message "messageType","configurationItem" as messageType, single_message 
| where messageType = "ConfigurationItemChangeNotification" 
| json field=single_message "resourceId", "resourceType", "awsRegion", "awsAccountId", "configurationItemStatus"
```

**AWS Config/Latest Resource Modifications/Latest Resource Modifications**
```
_sourceCategory = Labs/AWS/Config Notification ConfigurationItemChangeNotification
| json "Message", "Type" 
| where type == "Notification"
| json field=message "messageType","configurationItem" as messageType, single_message 
| where messageType = "ConfigurationItemChangeNotification" 
| json field=single_message "resourceId", "resourceType", "configurationItemStatus", "awsAccountId" as ResourceId, ResourceType, Status, AWSAccountID
```

**AWS Config/Most Frequently Modified Resource Types (with latest update)/Most Frequently Modified Resource Types (with latest update)**
```
_sourceCategory = Labs/AWS/Config Notification ConfigurationItemChangeNotification
| count by _raw, _messageTime
| json "Message", "Type" 
| where type == "Notification"
| json field=message "messageType","configurationItem" as messageType, single_message 
| where messageType = "ConfigurationItemChangeNotification" 
| json field=single_message "resourceId", "resourceType", "awsAccountId" as ResourceId, ResourceType, awsAccountId
```

**AWS Config/Most Frequently Modified Resources (with latest update)/Most Frequently Modified Resources (with latest update)**
```
_sourceCategory = Labs/AWS/Config Notification ConfigurationItemChangeNotification
// Accum must be used after the first grouping expression in a dashboard
| count by _raw, _messageTime
| json field=_raw "Message", "Type" 
| where type == "Notification"
| json field=message "messageType","configurationItem" as messageType, single_message 
| where messageType = "ConfigurationItemChangeNotification" 
| json field=single_message "resourceId", "resourceType", "configurationItemStatus", "awsAccountId" as ResourceId, ResourceType, LastModifiedStatus, LastModifiedAccountID
```

**AWS Config/Relationships/Relationships**
```
_sourceCategory = Labs/AWS/Config Notification ConfigurationItemChangeNotification
// Having a grouping expression moves results into the aggregates tab, where we have more control over its display.
| count by _raw, _messageTime
| json field=_raw "Message", "Type" 
| where type == "Notification"
| json field=message "messageType","configurationItem" as messageType, single_message 
| where messageType = "ConfigurationItemChangeNotification" 
| json field=single_message "resourceId", "resourceType", "configurationItemStatus", "awsAccountId", "relationships" as ResourceId, ResourceType, Status, AWSAccountID, Relationships nodrop
// Use a where clause to filter by resourceType. Supported resource types can be found here: http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html
// | where resourceType = "AWS::EC2::Instance"
// Use accum as a row numbering in order to select the most recent record
| 1 as row_num 
| sort by _messageTime desc, status asc 
| accum row_num as row_num by ResourceId 
| where row_num = 1
// If the most recent record is 'Deleted', the resource has been deleted and we do not want to display any "current" relationships
| where Status != "ResourceDeleted"
// Split out each relationship into a record
| parse regex field=relationships "(?<single_relationship>\{\"resourceId\"\:.*?\})((?=,\{\"resourceId\")|(?=\]\s*$))" multi
| json field=single_relationship "resourceId", "name", "resourceType" as relatedResourceId, relationship, relatedResourceType
```

**AWS Config/ResourceNames Lookup Table Generator/ResourceNames Lookup Table Generator**
```
_sourceCategory = Labs/AWS/Config Notification ConfigurationItemChangeNotification
| json "Message", "Type" 
| where type == "Notification"
| json field=message "messageType","configurationItem" as messageType, single_message 
| where messageType = "ConfigurationItemChangeNotification" 
| json field=single_message "resourceId", "resourceType", "configurationItemStatus", "tags.Name" as ResourceId, ResourceType, Status, Name nodrop
```


