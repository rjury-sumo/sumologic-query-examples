# Parsers For AWS Config

## Parser:
```
| json "Message", "Type" 
| json field=message "messageType","configurationItem" as messageType, single_message 
| json field=single_message "resourceId", "resourceType", "awsAccountId" as ResourceId, ResourceType, awsAccountId
 
```
### Use Cases:
Configuration Trend, Latest Resource Modifications, Most Frequently Modified Resource Types (with latest update)



## Parser:
```
| json "Message", "Type" 
| json field=message "messageType","configurationItem" as messageType, single_message 
| json field=single_message "resourceId", "resourceType", "awsRegion", "awsAccountId", "configurationItemStatus"
 
```
### Use Cases:
Configuration Trend



## Parser:
```
| json "Message", "Type" 
| json field=message "messageType","configurationItem" as messageType, single_message 
| json field=single_message "resourceId", "resourceType", "configurationItemStatus", "awsAccountId" as ResourceId, ResourceType, Status, AWSAccountID
 
```
### Use Cases:
Configuration Trend, Latest Resource Modifications



## Parser:
```
| json "Message", "Type" 
| json field=message "messageType","configurationItem" as messageType, single_message 
| json field=single_message "resourceId", "resourceType", "configurationItemStatus", "tags.Name" as ResourceId, ResourceType, Status, Name nodrop
 
```
### Use Cases:
Configuration Trend, Latest Resource Modifications, Most Frequently Modified Resource Types (with latest update), Most Frequently Modified Resources (with latest update), Relationships, ResourceNames Lookup Table Generator



## Parser:
```
| json field=_raw "Message", "Type" 
| json field=message "messageType","configurationItem" as messageType, single_message 
| json field=single_message "resourceId", "resourceType", "configurationItemStatus", "awsAccountId" as ResourceId, ResourceType, LastModifiedStatus, LastModifiedAccountID
 
```
### Use Cases:
Configuration Trend, Latest Resource Modifications, Most Frequently Modified Resource Types (with latest update), Most Frequently Modified Resources (with latest update)



## Parser:
```
| json field=_raw "Message", "Type" 
| json field=message "messageType","configurationItem" as messageType, single_message 
| json field=single_message "resourceId", "resourceType", "configurationItemStatus", "awsAccountId", "relationships" as ResourceId, ResourceType, Status, AWSAccountID, Relationships nodrop
| parse regex field=relationships "(?<single_relationship>\{\"resourceId\"\:.*?\})((?=,\{\"resourceId\")|(?=\]\s*$))" multi
| json field=single_relationship "resourceId", "name", "resourceType" as relatedResourceId, relationship, relatedResourceType
 
```
### Use Cases:
Configuration Trend, Latest Resource Modifications, Most Frequently Modified Resource Types (with latest update), Most Frequently Modified Resources (with latest update), Relationships


