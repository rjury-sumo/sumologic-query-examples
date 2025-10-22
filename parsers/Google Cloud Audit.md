# Parsers For Google Cloud Audit

**Google Cloud Audit/Google Cloud Audit Operation Activity/Google Cloud Audit Operation Activity**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "timestamp", "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.requestMetadata.callerIp", "protoPayload.authorizationInfo[*]" as timestamp, labels, project, user, ip, permissions
| parse regex field=permissions "\"permission\":\"(?<action>[a-zA-Z\.]+)\",\"granted\":(?<granted>[a-z]+)}" multi
```

**Google Cloud Audit/Google Cloud Audit Resource Operations/Google Cloud Audit Resource Operations**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\"" multi
```

**Google Cloud Audit/Google Cloud Audit Service Operations/Google Cloud Audit Service Operations**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| parse regex field=permissions "\"permission\":\"(?<service_type>[a-zA-Z]+)\.\S+?\"" multi
```

**Google Cloud Audit/Google Cloud Audit Top Users/Google Cloud Audit Top Users**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail" as labels, project, user
```

**Google Cloud Audit/Google Cloud Audit User Activity/Google Cloud Audit User Activity**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "timestamp", "severity", "resource.labels", "resource.labels.project_id", "protoPayload.methodName", "protoPayload.authenticationInfo.principalEmail" as timestamp, severity, labels, project, method, user
```

**Google Cloud Audit/Network and Security/Authorization Failures Over Time**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo logName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)}" multi
```

**Google Cloud Audit/Network and Security/Firewall Rules with All Allowed**
```
_sourceCategory={{Logsdatasource}}  alloweds logName methodName principalEmail request resource timestamp
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.type" as type
| where type = "gce_firewall_rule"
| json field=data "timestamp", "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.methodName", "protoPayload.request" as timestamp, labels, project, user, method, request
| json field=request "direction", "alloweds[*]" as direction, alloweds
| parse "\"sourceRanges\":[*]" as ranges nodrop
| parse "\"destinationRanges\":[*]" as ranges
| parse regex field=alloweds "\"IPProtocol\":\"(?<protocol>[a-zA-Z\.]+)\"[,\"a-z:]*\[?(?<ports>[0-9-\",]+)?\]?" multi
```

**Google Cloud Audit/Network and Security/Location of Authorization Failures**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo callerIp logName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]", "protoPayload.requestMetadata.callerIp" as labels, project, user, permissions, caller_ip
| parse regex field=permissions "\"granted\":(?<granted>[a-z]+)}" multi
```

**Google Cloud Audit/Network and Security/Network and Security Operations**
```
_sourceCategory={{Logsdatasource}}  logName methodName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.type" as type
| where type = "gce_firewall_rule" or type = "gce_subnetwork" or type = "gce_route" or type = "gce_network"
| json field=data "timestamp", "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.methodName" as timestamp, labels, project, user, method
```

**Google Cloud Audit/Network and Security/Network and Security Operations Over Time**
```
_sourceCategory={{Logsdatasource}}  logName methodName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.type" as type
| where type = "gce_firewall_rule" or type = "gce_subnetwork" or type = "gce_route" or type = "gce_network"
| json field=data "timestamp", "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.methodName" as timestamp, labels, project, user, method
```

**Google Cloud Audit/Network and Security/Recent Authorization Failures**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo callerIp logName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "timestamp", "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]", "protoPayload.requestMetadata.callerIp" as timestamp, labels, project, user, permissions, caller_ip
| parse regex field=permissions "\"permission\":\"(?<action>[a-zA-Z\.]+)\",\"granted\":(?<granted>[a-z]+)}" multi
```

**Google Cloud Audit/Network and Security/Recent Firewall Changes**
```
_sourceCategory={{Logsdatasource}}  logName methodName principalEmail request resource timestamp
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.type" as type
| where type = "gce_firewall_rule"
| json field=data "timestamp", "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.methodName", "protoPayload.request" as timestamp, labels, project, user, method, request
| json field=request "direction", "alloweds[*]", "denieds[*]" as direction, alloweds, denieds nodrop
| if(isNull(alloweds) OR alloweds="","deny","allow") as action
| parse "\"sourceRanges\":[*]" as ranges nodrop
| parse "\"destinationRanges\":[*]" as ranges
| parse regex field=alloweds "\"IPProtocol\":\"(?<protocol>[a-zA-Z\.]+)\"[,\"a-z:]*\[?(?<ports>[0-9-\",]+)?\]?" multi nodrop
| parse regex field=denieds "\"IPProtocol\":\"(?<protocol>[a-zA-Z\.]+)\"[,\"a-z:]*\[?(?<ports>[0-9-\",]+)?\]?" multi
```

**Google Cloud Audit/Network and Security/Short Lived Network Resources**
```
_sourceCategory={{Logsdatasource}}  logName methodName principalEmail resource 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.type" as type
| where type = "gce_firewall_rule" or type = "gce_subnetwork" or type = "gce_route" or type = "gce_network"
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.methodName", "protoPayload.resourceName" as labels, project, user, method, resource_name
| if(method matches "*delete*", user, "") as terminator
| if(isNull(terminator) OR terminator="", user, "") as creator
| concat("creator:", creator, ",", "terminator:", terminator) as users
| if(isNull(terminator) OR terminator="",_messageTime,0) as start_messagetime
| if(isNull(creator) OR creator="",_messageTime,0) as end_messagetime
| concat(users, ",", "resourceName:", resource_name, ",", "startTime:", start_messagetime, ",", "endTime:", end_messagetime) as _raw
| join
(parse "creator:*,terminator:,resourceName:*,startTime:*,endTime:0.0" as creator, resource_name, start_messagetime) as t1,
(parse "creator:,terminator:*,resourceName:*,startTime:0.0,endTime:*" as terminator, resource_name, end_messagetime) as t2
```

**Google Cloud Audit/Operations/Actions**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo logName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| parse regex field=permissions "\"permission\":\"(?<action>[a-zA-Z\.]+)\"" multi
```

**Google Cloud Audit/Operations/Created Resources Over Time**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo logName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\"" multi
```

**Google Cloud Audit/Operations/Deleted Resources Over Time**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo logName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\"" multi
```

**Google Cloud Audit/Operations/Operations by GCP Project**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo logName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\"" multi
```

**Google Cloud Audit/Operations/Recent Operation Activity**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo callerIp logName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "timestamp", "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.requestMetadata.callerIp", "protoPayload.authorizationInfo[*]" as timestamp, labels, project, user, ip, permissions
| parse regex field=permissions "\"permission\":\"(?<action>[a-zA-Z\.]+)\",\"granted\":(?<granted>[a-z]+)}" multi
```

**Google Cloud Audit/Operations/Requested GCP Service Over Time**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo logName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| parse regex field=permissions "\"permission\":\"(?<service_type>[a-zA-Z]+)\.\S+?\"" multi
```

**Google Cloud Audit/Overview/Authorization Failures**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo logName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\",\"granted\":(?<granted>[a-z]+)}" multi
```

**Google Cloud Audit/Overview/Created Resources**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo logName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| where !isNull(permissions)
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\"" multi
```

**Google Cloud Audit/Overview/Deleted Resources Over Time**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo logName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\"" multi
```

**Google Cloud Audit/Overview/Location of Audit Activity**
```
_sourceCategory={{Logsdatasource}}  callerIp logName principalEmail resource timestamp
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.requestMetadata.callerIp" as labels, project, user, caller_ip
```

**Google Cloud Audit/Overview/Operations by Resources**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo logName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\"" multi
```

**Google Cloud Audit/Overview/Top 10 Users**
```
_sourceCategory={{Logsdatasource}}  logName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail" as labels, project, user
```

**Google Cloud Audit/Users/Creations and Deletions by User**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo logName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| parse regex field=permissions "\"permission\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\"" multi
```

**Google Cloud Audit/Users/Location of Users**
```
_sourceCategory={{Logsdatasource}}  callerIp logName principalEmail resource timestamp
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.requestMetadata.callerIp" as labels, project, user, caller_ip
```

**Google Cloud Audit/Users/Recent User Activity**
```
_sourceCategory={{Logsdatasource}}  logName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "timestamp", "severity", "resource.labels", "resource.labels.project_id", "protoPayload.methodName", "protoPayload.authenticationInfo.principalEmail" as timestamp, severity, labels, project, method, user
```

**Google Cloud Audit/Users/Top 10 Activities by Users**
```
_sourceCategory={{Logsdatasource}}  authorizationInfo logName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail", "protoPayload.authorizationInfo[*]" as labels, project, user, permissions
| where !isNull(permissions)
| parse regex field=permissions "\"permission\":\"(?<activity>[a-zA-Z\.]+)\"" multi
```

**Google Cloud Audit/Users/Top 10 Users**
```
_sourceCategory={{Logsdatasource}}  logName principalEmail resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail" as labels, project, user
```

**Google Cloud Audit/Users/User Activities Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2Factivity"
| json "message.data" as data
| json field=data "resource.labels", "resource.labels.project_id", "protoPayload.authenticationInfo.principalEmail" as labels, project, user
```


