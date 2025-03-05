# Parsers For Cloud Infrastructure Security for AWS 2024-03-13  - DEMO  V1.0.1

## Parser:
```
| json "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","severity","title","description", "vpcId", "subnetId", "groupId" , "tags", "groupName", "resource.instanceDetails", "resource.accessKeyDetails.userName" as cloud.account.id, cloud.region, partition, id, arn, type, service_name, detector_id, action, severity_level, title, description, vpcId, subnetId , securityGroupId, tags, securityGroupName, instanceDetails, user.name nodrop
| json field=instanceDetails "instanceId", "instanceType","networkInterfaces[0].publicIp" as instanceid, cloud.machine.type, server.ip
| json field=_raw "resource.resourceType" as resourceType
| json field=_raw "resource.s3BucketDetails[0].name" as bucketName nodrop
| json field=action "awsApiCallAction.remoteIpDetails.ipAddressV4", "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as awsCallActionIp, networkActionIp, localPort nodrop
| parse field=type "*:*/*" as threat.tactic.name,cloud.service.name,threat.technique.name 
 
```
### Use Cases:
Action Plan, Action Plan: Security Control Failures, Admin Privileges Granted, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Exposed S3 Bucket Created, Failed Console Logins, Findings by Category, Findings by Resource, Findings by Resource Type, Findings Trend, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Root Account Logins, Route Table Changes, S3 Bucket Changes, Security Group Changes, Threats by Actor, Threats by Country, Threats by Events and Result, Threats by Geo Location, Threats by Resource, Threats Count, Threats Count AWS API, Threats Count AWS Resources, Threats Trend, Total Findings, Unauthorized API Requests, VPC Changes



## Parser:
```
| json "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","severity","title","description", "vpcId", "subnetId", "groupId" , "tags", "groupName", "resource.instanceDetails", "resource.accessKeyDetails.userName" as cloud.account.id, cloud.region, partition, id, arn, type, service_name, detector_id, action, severity_level, title, description, vpcId, subnetId , securityGroupId, tags, securityGroupName, instanceDetails, user.name nodrop
| json field=instanceDetails "instanceId", "instanceType","networkInterfaces[0].publicIp" as instanceid, cloud.machine.type, server.ip
| json field=_raw "resource.resourceType" as resourceType
| json field=_raw "resource.s3BucketDetails[0].name" as bucketName nodrop
| json field=action "awsApiCallAction.remoteIpDetails.ipAddressV4", "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port","networkConnectionAction.remoteIpDetails.geoLocation.lon", "networkConnectionAction.remoteIpDetails.geoLocation.lat", "networkConnectionAction.remoteIpDetails.organization.asnOrg", "networkConnectionAction.remoteIpDetails.organization.org", "networkConnectionAction.remoteIpDetails.organization.isp" as awsCallActionIp, networkActionIp, localPort,longitude, latitude, asnOrg, organization, isp nodrop
| parse field=type "*:*/*" as threat.tactic.name,cloud.service.name,threat.technique.name 
 
```
### Use Cases:
Action Plan, Admin Privileges Granted, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Exposed S3 Bucket Created, Findings by Resource Type, Gateway Changes, IAM Policy Changes, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Route Table Changes, S3 Bucket Changes, Security Group Changes, Threats by Actor, Threats by Country, Threats by Events and Result, Threats by Geo Location, Threats by Resource, Threats Count, Threats Trend, VPC Changes



## Parser:
```
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event_name,source_ip,user_name,user_principal, login_result,mfa_used,event_source,aws_region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message nodrop
 
```
### Use Cases:
Admin Privileges Granted, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Exposed S3 Bucket Created, Gateway Changes, IAM Policy Changes



## Parser:
```
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user.name,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse field=event_source "*." as cloud.service.name
 
```
### Use Cases:
Action Plan, Action Plan: Security Control Failures, Admin Privileges Granted, All AWS API Events By Time, Config Changes, Console Logins from Risky Geo Locations, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMK, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Finding Count, Findings by Category, Findings by Resource, Findings by Resource Type, Findings Trend, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Permissive S3 Buckets Created, Root Account Logins, Route Table Changes, S3 Bucket Changes, S3 Bucket Permission Changes, Security Control Failures, Security Group Changes, Suspicious Blocked Destinations by Location, Suspicious Blocked Source-Destination Pairs, Suspicious Blocked Web Requests, Suspicious Destinations by Traffic (Megabytes), Suspicious Megabytes Source-Destination Pairs, Suspicious Traffic (Megabytes), Threats by Actor, Threats by Country, Threats by Events and Result, Threats by Geo Location, Threats by Resource, Threats Count, Threats Count AWS API, Threats Count AWS Resources, Threats Count AWS Storage, Threats Trend, Total Findings, Trend: Blocked Activity Percent, Trend: Suspicious Traffic (Megabytes), Unauthorized API Requests, Unauthorized AWS API Requests, VPC Changes



## Parser:
```
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user.name,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse field=service_name "*." as cloud.service.name
 
```
### Use Cases:
Action Plan, Action Plan: Security Control Failures, Admin Privileges Granted, All AWS API Events By Time, Config Changes, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMK, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Finding Count, Findings by Category, Findings by Resource, Findings by Resource Type, Findings Trend, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Permissive S3 Buckets Created, Root Account Logins, Route Table Changes, S3 Bucket Changes, S3 Bucket Permission Changes, Security Control Failures, Security Group Changes, Suspicious Blocked Source-Destination Pairs, Suspicious Blocked Web Requests, Threats by Actor, Threats by Country, Threats by Events and Result, Threats by Geo Location, Threats by Resource, Threats Count, Threats Count AWS API, Threats Count AWS Resources, Threats Count AWS Storage, Threats Trend, Total Findings, Unauthorized API Requests, VPC Changes



## Parser:
```
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user.name,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse field=service_name "*." as cloud.service.name
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user.name nodrop
 
```
### Use Cases:
Action Plan, Action Plan: Security Control Failures, Admin Privileges Granted, All AWS API Events By Time, Config Changes, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMK, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Finding Count, Findings by Category, Findings by Resource, Findings by Resource Type, Findings Trend, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Permissive S3 Buckets Created, Root Account Logins, Route Table Changes, S3 Bucket Changes, S3 Bucket Permission Changes, Security Control Failures, Security Group Changes, Suspicious Blocked Source-Destination Pairs, Suspicious Blocked Web Requests, Threats by Actor, Threats by Country, Threats by Events and Result, Threats by Geo Location, Threats by Resource, Threats Count, Threats Count AWS API, Threats Count AWS Resources, Threats Count AWS Storage, Threats Trend, Total Findings, Unauthorized API Requests, VPC Changes



## Parser:
```
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage","requestParameters.policyArn" as event_name,source_ip,user_name,user_principal, login_result,mfa_used,event_source,aws_region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message,policy_arn nodrop
 
```
### Use Cases:
Admin Privileges Granted



## Parser:
```
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage","requestParameters.policyArn","requestParameters.groupName" as event_name,source_ip,user_name,user_principal, login_result,mfa_used,event_source,aws_region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message,policy_arn,group_name nodrop
 
```
### Use Cases:
Admin Privileges Granted, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Exposed S3 Bucket Created, Gateway Changes, IAM Policy Changes, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added



## Parser:
```
| json "eventTime", "eventName", "eventSource", "awsRegion", "sourceIPAddress", "errorCode", "userAgent" as event_time, event.action, eventSource, cloud.region, client.ip, event.outcome, user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId", "userIdentity.type" as user.name, cloud.account.id, user_identity_type nodrop
| json field=_raw "requestParameters.dBInstanceIdentifier", "requestParameters.instancesSet.items[0].instanceId" as db_instance_id, cloud_instance_id nodrop
| parse "\"userName\":\"*\"" as user.name nodrop
| parse field=eventSource "*." as cloud.service.name
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| json field=raw "labels[*].name" as label_name nodrop
 
```
### Use Cases:
Action Plan, Action Plan: Security Control Failures, Admin Privileges Granted, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Exposed S3 Bucket Created, Failed Console Logins, Findings by Category, Findings by Resource, Findings by Resource Type, Findings Trend, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Root Account Logins, Route Table Changes, S3 Bucket Changes, Security Group Changes, Threats by Actor, Threats by Country, Threats by Events and Result, Threats by Geo Location, Threats by Resource, Threats Count, Threats Count AWS API, Threats Trend, Total Findings, Unauthorized API Requests, VPC Changes



## Parser:
```
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "alert" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, alert nodrop
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
 
```
### Use Cases:
Action Plan, Action Plan: Security Control Failures, Admin Privileges Granted, All AWS API Events By Time, Config Changes, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMK, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Finding Count, Findings by Category, Findings by Resource, Findings by Resource Type, Findings Trend, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Permissive S3 Buckets Created, Root Account Logins, Route Table Changes, S3 Bucket Changes, S3 Bucket Permission Changes, Security Control Failures, Security Group Changes, Suspicious Blocked Destinations by Location, Suspicious Blocked Source-Destination Pairs, Suspicious Blocked Web Requests, Threats by Actor, Threats by Country, Threats by Events and Result, Threats by Geo Location, Threats by Resource, Threats Count, Threats Count AWS API, Threats Count AWS Resources, Threats Count AWS Storage, Threats Trend, Total Findings, Trend: Blocked Activity Percent, Unauthorized API Requests, VPC Changes



## Parser:
```
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "app_proto", "netflow" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, app_proto, netflow nodrop
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
| json field=netflow "bytes", "pkts" as network.bytes, packets nodrop
 
```
### Use Cases:
Action Plan, Action Plan: Security Control Failures, Admin Privileges Granted, All AWS API Events By Time, Config Changes, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMK, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Finding Count, Findings by Category, Findings by Resource, Findings by Resource Type, Findings Trend, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Permissive S3 Buckets Created, Root Account Logins, Route Table Changes, S3 Bucket Changes, S3 Bucket Permission Changes, Security Control Failures, Security Group Changes, Suspicious Blocked Destinations by Location, Suspicious Blocked Source-Destination Pairs, Suspicious Blocked Web Requests, Suspicious Destinations by Traffic (Megabytes), Suspicious Megabytes Source-Destination Pairs, Suspicious Traffic (Megabytes), Threats by Actor, Threats by Country, Threats by Events and Result, Threats by Geo Location, Threats by Resource, Threats Count, Threats Count AWS API, Threats Count AWS Resources, Threats Count AWS Storage, Threats Trend, Total Findings, Trend: Blocked Activity Percent, Trend: Suspicious Traffic (Megabytes), Unauthorized API Requests, VPC Changes



## Parser:
```
| json "httpRequest.httpMethod","httpRequest.httpVersion","httpRequest.uri","httpRequest.clientIp","httpRequest.country","action","matchingNonTerminatingRules","rateBasedRuleList","ruleGroupList","httpSourceId","httpSourceName","terminatingRuleType","terminatingRuleId","webaclId" as event.action,http_version,url.path,client.ip,country,event.outcome,matching_non_terminating_rules,rate_based_rule_list,rule_group_list,http_source_id,http_source_name,terminating_rule_type,terminating_rule_id,webacl_id nodrop
 
```
### Use Cases:
Action Plan, Action Plan: Security Control Failures, Admin Privileges Granted, All AWS API Events By Time, Config Changes, Console Logins from Risky Geo Locations, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMK, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Finding Count, Findings by Category, Findings by Resource, Findings by Resource Type, Findings Trend, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Permissive S3 Buckets Created, Root Account Logins, Route Table Changes, S3 Bucket Changes, S3 Bucket Permission Changes, Security Control Failures, Security Group Changes, Suspicious Blocked Destinations by Location, Suspicious Blocked Source-Destination Pairs, Suspicious Blocked Web Requests, Suspicious Blocked Web Requests by Location, Suspicious Destinations by Traffic (Megabytes), Suspicious Megabytes Source-Destination Pairs, Suspicious Traffic (Megabytes), Threats by Actor, Threats by Country, Threats by Events and Result, Threats by Geo Location, Threats by Resource, Threats Count, Threats Count AWS API, Threats Count AWS Resources, Threats Count AWS Storage, Threats Trend, Total Findings, Trend: Blocked Activity Percent, Trend: Blocked Web Requests Percent, Trend: Suspicious Traffic (Megabytes), Unauthorized API Requests, Unauthorized AWS API Requests, VPC Changes



## Parser:
```
| json "requestID","eventID","userIdentity.sessionContext.sessionIssuer.userName","userIdentity.accountId","sourceIPAddress","awsRegion","eventName","eventType" as request_id, event_id,user_name,acc_id,source_ip,region,event_name,event_type nodrop
 
```
### Use Cases:
Admin Privileges Granted, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Exposed S3 Bucket Created, Gateway Changes, IAM Policy Changes, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Route Table Changes, S3 Bucket Changes, Security Group Changes, VPC Changes



## Parser:
```
| json "requestID","eventID","userIdentity.sessionContext.sessionIssuer.userName","userIdentity.accountId","userIdentity.type","sourceIPAddress","awsRegion","eventName" as request_id, event_id,user.name,cloud.account.id,user_identity_type,client.ip,cloud.region,event.action
| json field=_raw "requestParameters.dBInstanceIdentifier" as db_instance_id nodrop
| json field=_raw "requestParameters.instancesSet.items[0].instanceId" as cloud_instance_id nodrop
| parse field=eventSource "*." as cloud.service.name
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
 
```
### Use Cases:
Action Plan, Action Plan: Security Control Failures, Admin Privileges Granted, All AWS API Events By Time, Config Changes, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Findings by Category, Findings by Resource, Findings by Resource Type, Findings Trend, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Permissive S3 Buckets Created, Root Account Logins, Route Table Changes, S3 Bucket Changes, Security Control Failures, Security Group Changes, Threats by Actor, Threats by Country, Threats by Events and Result, Threats by Geo Location, Threats by Resource, Threats Count, Threats Count AWS API, Threats Count AWS Resources, Threats Trend, Total Findings, Unauthorized API Requests, VPC Changes



## Parser:
```
| json "userIdentity", "eventTime", "eventSource", "eventName", "awsRegion", "sourceIPAddress", "userAgent", "errorCode", "requestParameters", "eventType" as userIdentity, event_time, eventSource, event.action, cloud.region, client.ip, user_agent, event.outcome, requestParameters, eventType nodrop
| json field=userIdentity "type", "accountId", "userName" as userType, cloud.account.id, user.name
| json field=requestParameters "bucketName" as cloud.instance.id
| parse field=eventSource "*." as cloud.service.name
 
```
### Use Cases:
Action Plan, Action Plan: Security Control Failures, Admin Privileges Granted, All AWS API Events By Time, Config Changes, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Findings by Category, Findings by Resource, Findings by Resource Type, Findings Trend, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Permissive S3 Buckets Created, Root Account Logins, Route Table Changes, S3 Bucket Changes, Security Control Failures, Security Group Changes, Suspicious Blocked Source-Destination Pairs, Suspicious Blocked Web Requests, Threats by Actor, Threats by Country, Threats by Events and Result, Threats by Geo Location, Threats by Resource, Threats Count, Threats Count AWS API, Threats Count AWS Resources, Threats Count AWS Storage, Threats Trend, Total Findings, Unauthorized API Requests, VPC Changes



## Parser:
```
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName" as account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName nodrop
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type "*/*/*" as namespace, category, classifier
 
```
### Use Cases:
Admin Privileges Granted, Control Failure Findings Details by Severity



## Parser:
```
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName" as account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName nodrop
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type "*/*/*" as namespace, category, classifier
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
 
```
### Use Cases:
Admin Privileges Granted, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Exposed S3 Bucket Created, Gateway Changes, IAM Policy Changes, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings



## Parser:
```
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName", "Resources[0].Details.AwsIamAccessKey.UserName" as cloud.account.id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName, user.name nodrop
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type "*/*/*" as namespace, category, classifier
| parse field=finding_type "*/*/*" as rule.ruleset, rule.category, rule.name
 
```
### Use Cases:
Action Plan, Action Plan: Security Control Failures, Admin Privileges Granted, All AWS API Events By Time, Config Changes, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Finding Count, Findings by Category, Findings by Resource, Findings by Resource Type, Findings Trend, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Permissive S3 Buckets Created, Root Account Logins, Route Table Changes, S3 Bucket Changes, Security Control Failures, Security Group Changes, Suspicious Blocked Source-Destination Pairs, Suspicious Blocked Web Requests, Threats by Actor, Threats by Country, Threats by Events and Result, Threats by Geo Location, Threats by Resource, Threats Count, Threats Count AWS API, Threats Count AWS Resources, Threats Count AWS Storage, Threats Trend, Total Findings, Unauthorized API Requests, VPC Changes



## Parser:
```
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| parse "\"eventName\":\"*\"" as event_name
| parse regex field=event_name "^(?:Delete)(?<resource_type>[A-Z][A-Za-z]+)"
 
```
### Use Cases:
Admin Privileges Granted, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time


