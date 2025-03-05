# Parsers For Cloud Infrastructure Security for AWS

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
Admin Privileges Granted, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Exposed S3 Bucket Created, Gateway Changes, IAM Policy Changes, Insights - No Action Required, Insights by Assignee, Insights by Created vs Closed, Insights by Entity Type, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Created, Insights Created - Outlier, Insights Duplicates, Insights False Positives, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Root Account Logins, Route Table Changes, S3 Bucket Changes, Security Group Changes, Threats Count AWS Resources, Top 10 Closed Insights by Confidence Level, Top 10 Insights Created by Confidence Level, VPC Changes



## Parser:
```
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event_name,source_ip,user_principal, login_result,mfa_used,event_source,aws_region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
 
```
### Use Cases:
Admin Privileges Granted, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Exposed S3 Bucket Created, Gateway Changes, IAM Policy Changes



## Parser:
```
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| parse field=event_source "*." as cloud.service.name
 
```
### Use Cases:
Action Plan: Security Control Failures, Admin Privileges Granted, All AWS API Events By Time, Cloud SIEM Insights, Config Changes, Console Logins from Risky Geo Locations, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMK, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Finding Count, Findings by Category, Findings by Resource, Findings by Resource Type, Findings Trend, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Insights - No Action Required, Insights by Assignee, Insights by Created vs Closed, Insights by Entity Type, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Created, Insights Created - Outlier, Insights Duplicates, Insights False Positives, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Permissive S3 Buckets Created, Root Account Logins, Route Table Changes, S3 Bucket Changes, S3 Bucket Permission Changes, Security Control Failures - AWS Security Hub, Security Group Changes, Suspicious Blocked Destinations by Location, Suspicious Blocked Source-Destination Pairs, Suspicious Blocked Web Requests, Suspicious Destinations by Traffic (Megabytes), Suspicious Megabytes Source-Destination Pairs, Suspicious Traffic (Megabytes), Threats Count AWS API, Threats Count AWS Resources, Threats Count AWS Storage, Top 10 Closed Insights by Confidence Level, Top 10 Insights Created by Confidence Level, Trend: Blocked Activity Percent, Trend: Suspicious Traffic (Megabytes), Unauthorized API Requests, Unauthorized AWS API Requests, VPC Changes



## Parser:
```
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse field=service_name "*." as cloud.service.name
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
 
```
### Use Cases:
Admin Privileges Granted, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Gateway Changes, IAM Policy Changes, Insights - No Action Required, Insights by Assignee, Insights by Created vs Closed, Insights by Entity Type, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Created, Insights Created - Outlier, Insights Duplicates, Insights False Positives, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Root Account Logins, Route Table Changes, S3 Bucket Changes, Security Group Changes, Threats Count AWS Resources, Top 10 Closed Insights by Confidence Level, Top 10 Insights Created by Confidence Level, VPC Changes



## Parser:
```
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| parse field=service_name "*." as cloud.service.name
 
```
### Use Cases:
Action Plan: Security Control Failures, Admin Privileges Granted, All AWS API Events By Time, Cloud SIEM Insights, Config Changes, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMK, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Finding Count, Findings by Category, Findings by Resource, Findings by Resource Type, Findings Trend, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Insights - No Action Required, Insights by Assignee, Insights by Created vs Closed, Insights by Entity Type, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Created, Insights Created - Outlier, Insights Duplicates, Insights False Positives, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Permissive S3 Buckets Created, Root Account Logins, Route Table Changes, S3 Bucket Changes, S3 Bucket Permission Changes, Security Control Failures - AWS Security Hub, Security Group Changes, Suspicious Blocked Source-Destination Pairs, Suspicious Blocked Web Requests, Threats Count AWS API, Threats Count AWS Resources, Threats Count AWS Storage, Top 10 Closed Insights by Confidence Level, Top 10 Insights Created by Confidence Level, Unauthorized API Requests, VPC Changes



## Parser:
```
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| parse field=service_name "*." as cloud.service.name
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user.name nodrop
 
```
### Use Cases:
Action Plan: Security Control Failures, Admin Privileges Granted, All AWS API Events By Time, Cloud SIEM Insights, Config Changes, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Finding Count, Findings by Category, Findings by Resource, Findings by Resource Type, Findings Trend, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Insights - No Action Required, Insights by Assignee, Insights by Created vs Closed, Insights by Entity Type, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Created, Insights Created - Outlier, Insights Duplicates, Insights False Positives, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Permissive S3 Buckets Created, Root Account Logins, Route Table Changes, S3 Bucket Changes, S3 Bucket Permission Changes, Security Control Failures - AWS Security Hub, Security Group Changes, Suspicious Blocked Source-Destination Pairs, Suspicious Blocked Web Requests, Threats Count AWS API, Threats Count AWS Resources, Threats Count AWS Storage, Top 10 Closed Insights by Confidence Level, Top 10 Insights Created by Confidence Level, Unauthorized API Requests, VPC Changes



## Parser:
```
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse field=service_name "*." as cloud.service.name
 
```
### Use Cases:
Admin Privileges Granted, All AWS API Events By Time, Cloud SIEM Insights, Config Changes, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Insights - No Action Required, Insights by Assignee, Insights by Created vs Closed, Insights by Entity Type, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Created, Insights Created - Outlier, Insights Duplicates, Insights False Positives, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Permissive S3 Buckets Created, Root Account Logins, Route Table Changes, S3 Bucket Changes, Security Control Failures - AWS Security Hub, Security Group Changes, Suspicious Blocked Source-Destination Pairs, Threats Count AWS API, Threats Count AWS Resources, Top 10 Closed Insights by Confidence Level, Top 10 Insights Created by Confidence Level, Unauthorized API Requests, VPC Changes



## Parser:
```
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse field=service_name "*." as cloud.service.name
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user.name nodrop
 
```
### Use Cases:
Admin Privileges Granted, All AWS API Events By Time, Cloud SIEM Insights, Config Changes, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Insights - No Action Required, Insights by Assignee, Insights by Created vs Closed, Insights by Entity Type, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Created, Insights Created - Outlier, Insights Duplicates, Insights False Positives, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Permissive S3 Buckets Created, Root Account Logins, Route Table Changes, S3 Bucket Changes, Security Control Failures - AWS Security Hub, Security Group Changes, Suspicious Blocked Source-Destination Pairs, Threats Count AWS API, Threats Count AWS Resources, Top 10 Closed Insights by Confidence Level, Top 10 Insights Created by Confidence Level, Unauthorized API Requests, VPC Changes



## Parser:
```
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage","requestParameters.policyArn" as event_name,source_ip,user_principal, login_result,mfa_used,event_source,aws_region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message,policy_arn nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
 
```
### Use Cases:
Admin Privileges Granted



## Parser:
```
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage","requestParameters.policyArn","requestParameters.groupName" as event_name,source_ip,user_principal, login_result,mfa_used,event_source,aws_region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message,policy_arn,group_name nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
 
```
### Use Cases:
Admin Privileges Granted, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Exposed S3 Bucket Created, Gateway Changes, IAM Policy Changes, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added



## Parser:
```
| json "eventTime", "eventName", "eventSource", "awsRegion", "sourceIPAddress", "errorCode", "userAgent" as event_time, event.action, eventSource, cloud.region, client.ip, event.outcome, user_agent nodrop
| json "userIdentity.accountId", "userIdentity.type" as cloud.account.id, user_identity_type nodrop
| json field=_raw "requestParameters.dBInstanceIdentifier", "requestParameters.instancesSet.items[0].instanceId" as db_instance_id, cloud_instance_id nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| parse "\"userName\":\"*\"" as user.name nodrop
| parse field=eventSource "*." as cloud.service.name
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| json field=raw "labels[*].name" as label_name nodrop
 
```
### Use Cases:
Admin Privileges Granted, All AWS API Events By Time, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Gateway Changes, IAM Policy Changes, Insights - No Action Required, Insights by Assignee, Insights by Created vs Closed, Insights by Entity Type, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Created, Insights Created - Outlier, Insights Duplicates, Insights False Positives, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Root Account Logins, Route Table Changes, S3 Bucket Changes, Security Control Failures - AWS Security Hub, Security Group Changes, Threats Count AWS API, Threats Count AWS Resources, Top 10 Closed Insights by Confidence Level, Top 10 Insights Created by Confidence Level, Unauthorized API Requests, VPC Changes



## Parser:
```
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "alert" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, alert nodrop
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
 
```
### Use Cases:
Action Plan: Security Control Failures, Admin Privileges Granted, All AWS API Events By Time, Cloud SIEM Insights, Config Changes, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMK, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Finding Count, Findings by Category, Findings by Resource, Findings by Resource Type, Findings Trend, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Insights - No Action Required, Insights by Assignee, Insights by Created vs Closed, Insights by Entity Type, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Created, Insights Created - Outlier, Insights Duplicates, Insights False Positives, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Permissive S3 Buckets Created, Root Account Logins, Route Table Changes, S3 Bucket Changes, S3 Bucket Permission Changes, Security Control Failures - AWS Security Hub, Security Group Changes, Suspicious Blocked Destinations by Location, Suspicious Blocked Source-Destination Pairs, Suspicious Blocked Web Requests, Suspicious Destinations by Traffic (Megabytes), Suspicious Megabytes Source-Destination Pairs, Suspicious Traffic (Megabytes), Threats Count AWS API, Threats Count AWS Resources, Threats Count AWS Storage, Top 10 Closed Insights by Confidence Level, Top 10 Insights Created by Confidence Level, Trend: Blocked Activity Percent, Trend: Suspicious Traffic (Megabytes), Unauthorized API Requests, VPC Changes



## Parser:
```
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "app_proto", "netflow" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, app_proto, netflow nodrop
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
| json field=netflow "bytes", "pkts" as network.bytes, packets nodrop
 
```
### Use Cases:
Action Plan: Security Control Failures, Admin Privileges Granted, All AWS API Events By Time, Cloud SIEM Insights, Config Changes, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMK, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Finding Count, Findings by Category, Findings by Resource, Findings by Resource Type, Findings Trend, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Insights - No Action Required, Insights by Assignee, Insights by Created vs Closed, Insights by Entity Type, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Created, Insights Created - Outlier, Insights Duplicates, Insights False Positives, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Permissive S3 Buckets Created, Root Account Logins, Route Table Changes, S3 Bucket Changes, S3 Bucket Permission Changes, Security Control Failures - AWS Security Hub, Security Group Changes, Suspicious Blocked Destinations by Location, Suspicious Blocked Source-Destination Pairs, Suspicious Blocked Web Requests, Suspicious Destinations by Traffic (Megabytes), Suspicious Megabytes Source-Destination Pairs, Suspicious Traffic (Megabytes), Threats Count AWS API, Threats Count AWS Resources, Threats Count AWS Storage, Top 10 Closed Insights by Confidence Level, Top 10 Insights Created by Confidence Level, Trend: Suspicious Traffic (Megabytes), Unauthorized API Requests, VPC Changes



## Parser:
```
| json "httpRequest.httpMethod","httpRequest.httpVersion","httpRequest.uri","httpRequest.clientIp","httpRequest.country","action","matchingNonTerminatingRules","rateBasedRuleList","ruleGroupList","httpSourceId","httpSourceName","terminatingRuleType","terminatingRuleId","webaclId" as event.action,http_version,url.path,client.ip,country,event.outcome,matching_non_terminating_rules,rate_based_rule_list,rule_group_list,http_source_id,http_source_name,terminating_rule_type,terminating_rule_id,webacl_id nodrop
 
```
### Use Cases:
Action Plan: Security Control Failures, Admin Privileges Granted, All AWS API Events By Time, Cloud SIEM Insights, Config Changes, Console Logins from Risky Geo Locations, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMK, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Finding Count, Findings by Category, Findings by Resource, Findings by Resource Type, Findings Trend, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Insights - No Action Required, Insights by Assignee, Insights by Created vs Closed, Insights by Entity Type, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Created, Insights Created - Outlier, Insights Duplicates, Insights False Positives, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Permissive S3 Buckets Created, Root Account Logins, Route Table Changes, S3 Bucket Changes, S3 Bucket Permission Changes, Security Control Failures - AWS Security Hub, Security Group Changes, Suspicious Blocked Destinations by Location, Suspicious Blocked Source-Destination Pairs, Suspicious Blocked Web Requests, Suspicious Blocked Web Requests by Location, Suspicious Destinations by Traffic (Megabytes), Suspicious Megabytes Source-Destination Pairs, Suspicious Traffic (Megabytes), Threats Count AWS API, Threats Count AWS Resources, Threats Count AWS Storage, Top 10 Closed Insights by Confidence Level, Top 10 Insights Created by Confidence Level, Trend: Blocked Activity Percent, Trend: Blocked Web Requests Percent, Trend: Suspicious Traffic (Megabytes), Unauthorized API Requests, Unauthorized AWS API Requests, VPC Changes



## Parser:
```
| json "requestID","eventID","userIdentity.accountId","sourceIPAddress","awsRegion","eventName","eventType" as request_id, event_id,acc_id,source_ip,region,event_name,event_type nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
 
```
### Use Cases:
Admin Privileges Granted, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Exposed S3 Bucket Created, Gateway Changes, IAM Policy Changes, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Route Table Changes, S3 Bucket Changes, Security Group Changes, VPC Changes



## Parser:
```
| json "requestID","eventID","userIdentity.accountId","userIdentity.type","sourceIPAddress","awsRegion","eventName" as request_id, event_id,cloud.account.id,user_identity_type,client.ip,cloud.region,event.action
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| json field=_raw "requestParameters.dBInstanceIdentifier" as db_instance_id nodrop
| json field=_raw "requestParameters.instancesSet.items[0].instanceId" as cloud_instance_id nodrop
| parse field=eventSource "*." as cloud.service.name
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
 
```
### Use Cases:
Admin Privileges Granted, All AWS API Events By Time, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Gateway Changes, IAM Policy Changes, Insights - No Action Required, Insights by Assignee, Insights by Created vs Closed, Insights by Entity Type, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Created, Insights Created - Outlier, Insights Duplicates, Insights False Positives, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Root Account Logins, Route Table Changes, S3 Bucket Changes, Security Control Failures - AWS Security Hub, Security Group Changes, Threats Count AWS Resources, Top 10 Closed Insights by Confidence Level, Top 10 Insights Created by Confidence Level, Unauthorized API Requests, VPC Changes



## Parser:
```
| json "userIdentity", "eventTime", "eventSource", "eventName", "awsRegion", "sourceIPAddress", "userAgent", "errorCode", "requestParameters", "eventType" as userIdentity, event_time, eventSource, event.action, cloud.region, client.ip, user_agent, event.outcome, requestParameters, eventType nodrop
| json field=userIdentity "type", "accountId"as userType, cloud.account.id
| json field=requestParameters "bucketName" as cloud.instance.id
| parse field=eventSource "*." as cloud.service.name
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
 
```
### Use Cases:
Admin Privileges Granted, All AWS API Events By Time, Cloud SIEM Insights, Config Changes, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Insights - No Action Required, Insights by Assignee, Insights by Created vs Closed, Insights by Entity Type, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Created, Insights Created - Outlier, Insights Duplicates, Insights False Positives, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Permissive S3 Buckets Created, Root Account Logins, Route Table Changes, S3 Bucket Changes, Security Control Failures - AWS Security Hub, Security Group Changes, Suspicious Blocked Source-Destination Pairs, Suspicious Blocked Web Requests, Threats Count AWS API, Threats Count AWS Resources, Threats Count AWS Storage, Top 10 Closed Insights by Confidence Level, Top 10 Insights Created by Confidence Level, Unauthorized API Requests, VPC Changes



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
Action Plan: Security Control Failures, Admin Privileges Granted, All AWS API Events By Time, Cloud SIEM Insights, Config Changes, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Finding Count, Findings by Category, Findings by Resource, Findings by Resource Type, Findings Trend, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Insights - No Action Required, Insights by Assignee, Insights by Created vs Closed, Insights by Entity Type, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Created, Insights Created - Outlier, Insights Duplicates, Insights False Positives, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Permissive S3 Buckets Created, Root Account Logins, Route Table Changes, S3 Bucket Changes, Security Control Failures - AWS Security Hub, Security Group Changes, Suspicious Blocked Source-Destination Pairs, Suspicious Blocked Web Requests, Threats Count AWS API, Threats Count AWS Resources, Threats Count AWS Storage, Top 10 Closed Insights by Confidence Level, Top 10 Insights Created by Confidence Level, Unauthorized API Requests, VPC Changes



## Parser:
```
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.severityName" as severity_name nodrop
| json field=_raw "insight.signals.length()" as signal_count
 
```
### Use Cases:
Admin Privileges Granted, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Exposed S3 Bucket Created, Gateway Changes, IAM Policy Changes, Insights - No Action Required, Insights by Assignee, Insights by Created vs Closed, Insights by Entity Type, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Created, Insights Created - Outlier, Insights Duplicates, Insights False Positives, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Route Table Changes, S3 Bucket Changes, Security Group Changes, VPC Changes



## Parser:
```
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
| json "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.severityName" as severity_name nodrop
 
```
### Use Cases:
Admin Privileges Granted, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Exposed S3 Bucket Created, Gateway Changes, IAM Policy Changes, Insights - No Action Required, Insights by Assignee, Insights by Created vs Closed, Insights by Entity Type, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Created, Insights Created - Outlier, Insights Duplicates, Insights False Positives, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Route Table Changes, S3 Bucket Changes, Security Group Changes, Top 10 Insights Created by Confidence Level, VPC Changes



## Parser:
```
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
| json field=_raw "insight.severityName" as severity_name nodrop
 
```
### Use Cases:
Admin Privileges Granted, All AWS API Events By Time, Cloud SIEM Insights, Console Logins Without MFA, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Disabled or Scheduled Deletion of CMKs, Exposed S3 Bucket Created, Failed Console Logins, Gateway Changes, IAM Policy Changes, Impossible Travel Events, Insights - No Action Required, Insights by Assignee, Insights by Created vs Closed, Insights by Entity Type, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Created, Insights Created - Outlier, Insights Duplicates, Insights False Positives, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Root Account Logins, Route Table Changes, S3 Bucket Changes, Security Control Failures - AWS Security Hub, Security Group Changes, Threats Count AWS API, Threats Count AWS Resources, Top 10 Closed Insights by Confidence Level, Top 10 Insights Created by Confidence Level, Unauthorized API Requests, VPC Changes



## Parser:
```
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
| json field=_raw "insight.severityName" as severity_name nodrop
 
```
### Use Cases:
Admin Privileges Granted, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Exposed S3 Bucket Created, Gateway Changes, IAM Policy Changes, Insights - No Action Required, Insights by Assignee, Insights by Entity Type, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Duplicates, Insights False Positives, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Route Table Changes, S3 Bucket Changes, Security Group Changes, VPC Changes



## Parser:
```
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
| json field=_raw "insight.severityName" as severity_name nodrop
| parse regex field=insight_ruleId "(?<ruleID>[A-Z0-9-]+)" multi
 
```
### Use Cases:
Admin Privileges Granted, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Exposed S3 Bucket Created, Gateway Changes, IAM Policy Changes, Insights - No Action Required, Insights by Assignee, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Duplicates, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Route Table Changes, S3 Bucket Changes, Security Group Changes, VPC Changes



## Parser:
```
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
| json field=_raw "insight.severityName" as severity_name nodrop
| parse regex field=insight_tags "(?<tag>[\w-_ :.]+)" multi
 
```
### Use Cases:
Admin Privileges Granted, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Exposed S3 Bucket Created, Gateway Changes, IAM Policy Changes, Insights by Tag, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Route Table Changes, S3 Bucket Changes, Security Group Changes, VPC Changes



## Parser:
```
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id", "insight.confidence"   as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.severityName" as severity_name nodrop
| json field=_raw "insight.signals.length()" as signal_count
 
```
### Use Cases:
Admin Privileges Granted, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time, Exposed S3 Bucket Created, Gateway Changes, IAM Policy Changes, Insights - No Action Required, Insights by Assignee, Insights by Created vs Closed, Insights by Entity Type, Insights by Resource, Insights by Rule ID, and Insight Name, Insights by Status, Insights by Tag, Insights Closed, Insights Created, Insights Created - Outlier, Insights Duplicates, Insights False Positives, Least Common Out of Compliance Findings, Most Common Out of Compliance Findings, Network ACL Changes, New Admins Added, Route Table Changes, S3 Bucket Changes, Security Group Changes, Top 10 Closed Insights by Confidence Level, Top 10 Insights Created by Confidence Level, VPC Changes



## Parser:
```
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| parse "\"eventName\":\"*\"" as event_name
| parse regex field=event_name "^(?:Delete)(?<resource_type>[A-Z][A-Za-z]+)"
 
```
### Use Cases:
Admin Privileges Granted, Control Failure Findings Details by Severity, Creation of IAM Role, Deleted resources over time


