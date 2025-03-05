# Parsers For Google Cloud Audit

## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail" as labels, project, user
 `n```
### Use Cases:
Actions, Authorization Failures, Authorization Failures Over Time, Created Resources, Created Resources Over Time, Creations and Deletions by User, Deleted Resources Over Time, Firewall Rules with All Allowed, Google Cloud Audit Operation Activity, Google Cloud Audit Resource Operations, Google Cloud Audit Service Operations, Google Cloud Audit Top Users, Google Cloud Audit User Activity, Location of Audit Activity, Location of Authorization Failures, Location of Users, Network and Security Operations, Network and Security Operations Over Time, Operations by GCP Project, Operations by Resources, Recent Authorization Failures, Recent Firewall Changes, Recent Operation Activity, Recent User Activity, Requested GCP Service Over Time, Short Lived Network Resources, Top 10 Users, User Activities Over Time



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)}" multi
 `n```
### Use Cases:
Authorization Failures Over Time, Google Cloud Audit Operation Activity, Google Cloud Audit Resource Operations, Google Cloud Audit Service Operations, Google Cloud Audit Top Users, Google Cloud Audit User Activity, Network and Security Operations, Network and Security Operations Over Time, Recent Authorization Failures, Recent Firewall Changes, Short Lived Network Resources



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| parse regex field=permissions "\"permission\":\"(?<action>[a-zA-Z\.]+)\"" multi
 `n```
### Use Cases:
Actions, Authorization Failures Over Time, Created Resources Over Time, Deleted Resources Over Time, Firewall Rules with All Allowed, Google Cloud Audit Operation Activity, Google Cloud Audit Resource Operations, Google Cloud Audit Service Operations, Google Cloud Audit Top Users, Google Cloud Audit User Activity, Location of Authorization Failures, Network and Security Operations, Network and Security Operations Over Time, Recent Authorization Failures, Recent Firewall Changes, Requested GCP Service Over Time, Short Lived Network Resources



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| parse regex field=permissions "\"permission\":\"(?<activity>[a-zA-Z\.]+)\"" multi
 `n```
### Use Cases:
Actions, Authorization Failures, Authorization Failures Over Time, Created Resources, Created Resources Over Time, Creations and Deletions by User, Deleted Resources Over Time, Firewall Rules with All Allowed, Google Cloud Audit Operation Activity, Google Cloud Audit Resource Operations, Google Cloud Audit Service Operations, Google Cloud Audit Top Users, Google Cloud Audit User Activity, Location of Audit Activity, Location of Authorization Failures, Location of Users, Network and Security Operations, Network and Security Operations Over Time, Operations by GCP Project, Operations by Resources, Recent Authorization Failures, Recent Firewall Changes, Recent Operation Activity, Recent User Activity, Requested GCP Service Over Time, Short Lived Network Resources, Top 10 Activities by Users, Top 10 Users, User Activities Over Time



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\",\"granted\":(?<granted>[a-z]+)}" multi
 `n```
### Use Cases:
Actions, Authorization Failures, Authorization Failures Over Time, Created Resources, Created Resources Over Time, Deleted Resources Over Time, Firewall Rules with All Allowed, Google Cloud Audit Operation Activity, Google Cloud Audit Resource Operations, Google Cloud Audit Service Operations, Google Cloud Audit Top Users, Google Cloud Audit User Activity, Location of Authorization Failures, Network and Security Operations, Network and Security Operations Over Time, Operations by GCP Project, Recent Authorization Failures, Recent Firewall Changes, Recent Operation Activity, Requested GCP Service Over Time, Short Lived Network Resources, Top 10 Users



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\"" multi
 `n```
### Use Cases:
Actions, Authorization Failures, Authorization Failures Over Time, Created Resources, Created Resources Over Time, Creations and Deletions by User, Deleted Resources Over Time, Firewall Rules with All Allowed, Google Cloud Audit Operation Activity, Google Cloud Audit Resource Operations, Google Cloud Audit Service Operations, Google Cloud Audit Top Users, Google Cloud Audit User Activity, Location of Audit Activity, Location of Authorization Failures, Network and Security Operations, Network and Security Operations Over Time, Operations by GCP Project, Operations by Resources, Recent Authorization Failures, Recent Firewall Changes, Recent Operation Activity, Requested GCP Service Over Time, Short Lived Network Resources, Top 10 Users



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| parse regex field=permissions "\"permission\":\"(?<service_type>[a-zA-Z]+)\.\S+?\"" multi
 `n```
### Use Cases:
Authorization Failures Over Time, Firewall Rules with All Allowed, Google Cloud Audit Operation Activity, Google Cloud Audit Resource Operations, Google Cloud Audit Service Operations, Google Cloud Audit Top Users, Google Cloud Audit User Activity, Location of Authorization Failures, Network and Security Operations, Network and Security Operations Over Time, Recent Authorization Failures, Recent Firewall Changes, Requested GCP Service Over Time, Short Lived Network Resources



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]", "protoPayload.requestMetadata.callerIp" as labels, project, user, permissions, caller_ip
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)}" multi
 `n```
### Use Cases:
Authorization Failures Over Time, Google Cloud Audit Operation Activity, Google Cloud Audit Resource Operations, Google Cloud Audit Service Operations, Google Cloud Audit Top Users, Google Cloud Audit User Activity, Location of Authorization Failures, Network and Security Operations, Network and Security Operations Over Time, Recent Authorization Failures, Recent Firewall Changes, Short Lived Network Resources



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.requestMetadata.callerIp" as labels, project, user, caller_ip
 `n```
### Use Cases:
Actions, Authorization Failures, Authorization Failures Over Time, Created Resources, Created Resources Over Time, Creations and Deletions by User, Deleted Resources Over Time, Firewall Rules with All Allowed, Google Cloud Audit Operation Activity, Google Cloud Audit Resource Operations, Google Cloud Audit Service Operations, Google Cloud Audit Top Users, Google Cloud Audit User Activity, Location of Audit Activity, Location of Authorization Failures, Location of Users, Network and Security Operations, Network and Security Operations Over Time, Operations by GCP Project, Operations by Resources, Recent Authorization Failures, Recent Firewall Changes, Recent Operation Activity, Requested GCP Service Over Time, Short Lived Network Resources, Top 10 Users



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data" as data
| json field=data "resource.type" as type
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.methodName", "protoPayload.resourceName" as labels, project, user, method, resource_name
 `n```
### Use Cases:
Google Cloud Audit Operation Activity, Google Cloud Audit Resource Operations, Google Cloud Audit Service Operations, Google Cloud Audit Top Users, Google Cloud Audit User Activity, Network and Security Operations, Network and Security Operations Over Time, Recent Authorization Failures, Short Lived Network Resources



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data" as data
| json field=data "resource.type" as type
| json field=data "timestamp", "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.methodName" as timestamp, labels, project, user, method
 `n```
### Use Cases:
Google Cloud Audit Operation Activity, Google Cloud Audit Resource Operations, Google Cloud Audit Service Operations, Google Cloud Audit Top Users, Google Cloud Audit User Activity, Network and Security Operations, Network and Security Operations Over Time, Recent Authorization Failures



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data" as data
| json field=data "resource.type" as type
| json field=data "timestamp", "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.methodName", "protoPayload.request" as timestamp, labels, project, user, method, request
| json field=request "direction", "alloweds[*]" as direction, alloweds
| parse "\"sourceRanges\":[*]" as ranges nodrop
| parse "\"destinationRanges\":[*]" as ranges
| parse regex field=alloweds "\"IPProtocol\":\"(?<protocol>[a-zA-Z\.]+)\"[,\"a-z:]*\[?(?<ports>[0-9-\",]+)?\]?" multi
 `n```
### Use Cases:
Authorization Failures Over Time, Firewall Rules with All Allowed, Google Cloud Audit Operation Activity, Google Cloud Audit Resource Operations, Google Cloud Audit Service Operations, Google Cloud Audit Top Users, Google Cloud Audit User Activity, Location of Authorization Failures, Network and Security Operations, Network and Security Operations Over Time, Recent Authorization Failures, Recent Firewall Changes, Short Lived Network Resources



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data" as data
| json field=data "resource.type" as type
| json field=data "timestamp", "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.methodName", "protoPayload.request" as timestamp, labels, project, user, method, request
| json field=request "direction", "alloweds[*]", "denieds[*]" as direction, alloweds, denieds nodrop
| parse "\"sourceRanges\":[*]" as ranges nodrop
| parse "\"destinationRanges\":[*]" as ranges
| parse regex field=alloweds "\"IPProtocol\":\"(?<protocol>[a-zA-Z\.]+)\"[,\"a-z:]*\[?(?<ports>[0-9-\",]+)?\]?" multi nodrop
| parse regex field=denieds "\"IPProtocol\":\"(?<protocol>[a-zA-Z\.]+)\"[,\"a-z:]*\[?(?<ports>[0-9-\",]+)?\]?" multi
 `n```
### Use Cases:
Google Cloud Audit Operation Activity, Google Cloud Audit Resource Operations, Google Cloud Audit Service Operations, Google Cloud Audit Top Users, Google Cloud Audit User Activity, Network and Security Operations, Network and Security Operations Over Time, Recent Authorization Failures, Recent Firewall Changes, Short Lived Network Resources



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data" as data
| json field=data "timestamp", "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]", "protoPayload.requestMetadata.callerIp" as timestamp, labels, project, user, permissions, caller_ip
| parse regex field=permissions "\"permission\":\"(?<action>[a-zA-Z\.]+)\",\"granted\":(?<granted>[a-z]+)}" multi
 `n```
### Use Cases:
Google Cloud Audit Operation Activity, Google Cloud Audit Resource Operations, Google Cloud Audit Service Operations, Google Cloud Audit Top Users, Google Cloud Audit User Activity, Recent Authorization Failures



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data" as data
| json field=data "timestamp", "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.requestMetadata.callerIp", "protoPayload.authorizationInfo[*]" as timestamp, labels, project, user, ip, permissions
| parse regex field=permissions "\"permission\":\"(?<action>[a-zA-Z\.]+)\",\"granted\":(?<granted>[a-z]+)}" multi
 `n```
### Use Cases:
Actions, Authorization Failures Over Time, Created Resources Over Time, Deleted Resources Over Time, Firewall Rules with All Allowed, Google Cloud Audit Operation Activity, Google Cloud Audit Resource Operations, Google Cloud Audit Service Operations, Google Cloud Audit Top Users, Google Cloud Audit User Activity, Location of Authorization Failures, Network and Security Operations, Network and Security Operations Over Time, Operations by GCP Project, Recent Authorization Failures, Recent Firewall Changes, Recent Operation Activity, Requested GCP Service Over Time, Short Lived Network Resources



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data" as data
| json field=data "timestamp", "severity", "resource.labels", "resource.labels.project_id", "protoPayload.methodName", "protoPayload.authenticationInfo.principalEmail" as timestamp, severity, labels, project, method, user
 `n```
### Use Cases:
Actions, Authorization Failures, Authorization Failures Over Time, Created Resources, Created Resources Over Time, Creations and Deletions by User, Deleted Resources Over Time, Firewall Rules with All Allowed, Google Cloud Audit Operation Activity, Google Cloud Audit Resource Operations, Google Cloud Audit Service Operations, Google Cloud Audit Top Users, Google Cloud Audit User Activity, Location of Audit Activity, Location of Authorization Failures, Location of Users, Network and Security Operations, Network and Security Operations Over Time, Operations by GCP Project, Operations by Resources, Recent Authorization Failures, Recent Firewall Changes, Recent Operation Activity, Recent User Activity, Requested GCP Service Over Time, Short Lived Network Resources, Top 10 Users


