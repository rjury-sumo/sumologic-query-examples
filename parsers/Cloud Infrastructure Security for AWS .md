# Parsers For Cloud Infrastructure Security for AWS 

**Cloud Infrastructure Security for AWS /Admin Privileges Granted/Admin Privileges Granted**
```
_sourceCategory=*CloudTrail*
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage","requestParameters.policyArn" as event_name,source_ip,user_name,user_principal, login_result,mfa_used,event_source,aws_region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message,policy_arn nodrop
```

**Cloud Infrastructure Security for AWS /Control Failure Findings Details by Severity/Control Failure Findings Details by Severity**
```
_sourceCategory=Labs/AWS/SecurityHub 
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName" as account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName nodrop

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type  "*/*/*" as namespace, category, classifier
```

**Cloud Infrastructure Security for AWS /Creation of IAM Role/Creation of IAM Role**
```
_sourceCategory=*CloudTrail* CreateRole
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event_name,source_ip,user_name,user_principal, login_result,mfa_used,event_source,aws_region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message nodrop
```

**Cloud Infrastructure Security for AWS /Deleted resources over time/Deleted resources over time**
```
_sourceCategory=*CloudTrail* Delete*
 | parse "\"userName\":\"*\"" as user_name nodrop
 | json field=_raw "userIdentity.principalId" as principal_id nodrop
 | parse regex field = principal_id ":(?<user_principal>.+)" nodrop
 | if (user_name="", user_principal, user_name) as user | parse "\"eventName\":\"*\"" as event_name
 | timeslice 1h 
 | parse regex field=event_name "^(?:Delete)(?<resource_type>[A-Z][A-Za-z]+)"
```

**Cloud Infrastructure Security for AWS /Exposed S3 Bucket Created/Exposed S3 Bucket Created**
```
_sourceCategory=*CloudTrail* ("PutBucketAcl" or "*FULL_CONTROL*")
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event_name,source_ip,user_name,user_principal, login_result,mfa_used,event_source,aws_region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message nodrop
```

**Cloud Infrastructure Security for AWS /Gateway Changes/Gateway Changes**
```
_sourceCategory=*CloudTrail* ("CreateCustomerGateway" or "DeleteCustomerGateway" or "AttachInternetGateway" or "CreateInternetGateway" or "DeleteInternetGateway" or "DetachInternetGateway")
| json "requestID","eventID","userIdentity.sessionContext.sessionIssuer.userName","userIdentity.accountId","sourceIPAddress","awsRegion","eventName","eventType" as request_id, event_id,user_name,acc_id,source_ip,region,event_name,event_type nodrop
```

**Cloud Infrastructure Security for AWS /IAM Policy Changes/IAM Policy Changes**
```
_sourceCategory=*CloudTrail*
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event_name,source_ip,user_name,user_principal, login_result,mfa_used,event_source,aws_region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message nodrop
```

**Cloud Infrastructure Security for AWS /Least Common Out of Compliance Findings/Least Common Out of Compliance Findings**
```
_sourceCategory=Labs/AWS/SecurityHub 
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName" as account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName nodrop

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type  "*/*/*" as namespace, category, classifier
| replace(finding_type,"\\","") as finding_type
| replace(namespace,"\\","") as namespace
| replace(category,"\\","") as category
| replace(classifier,"\\","") as classifier

| if (severity_normalized == 0, "Informational", "Others") as severity
| if (severity_normalized <= 39, "Low", severity) as severity
| if ((severity_normalized <= 69) and (severity_normalized >= 40), "Medium", severity) as severity
| if ((severity_normalized <= 89) and (severity_normalized >= 70), "High", severity) as severity
| if (severity_normalized <= 100 and severity_normalized >= 90, "Critical", severity) as severity

// global filters
| where account_id matches "*"
| where finding_id matches "*"
| where finding_type matches "*"
| where finding_provider matches "*"
| where severity matches "*"
| where compliance_status matches "*"

| where !isBlank(compliance_status) and compliance_status matches "FAILED"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
```

**Cloud Infrastructure Security for AWS /Most Common Out of Compliance Findings/Most Common Out of Compliance Findings**
```
_sourceCategory=Labs/AWS/SecurityHub 
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName" as account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName nodrop

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type  "*/*/*" as namespace, category, classifier
| replace(finding_type,"\\","") as finding_type
| replace(namespace,"\\","") as namespace
| replace(category,"\\","") as category
| replace(classifier,"\\","") as classifier

| if (severity_normalized == 0, "Informational", "Others") as severity
| if (severity_normalized <= 39, "Low", severity) as severity
| if ((severity_normalized <= 69) and (severity_normalized >= 40), "Medium", severity) as severity
| if ((severity_normalized <= 89) and (severity_normalized >= 70), "High", severity) as severity
| if (severity_normalized <= 100 and severity_normalized >= 90, "Critical", severity) as severity

// global filters
| where account_id matches "*"
| where finding_id matches "*"
| where finding_type matches "*"
| where finding_provider matches "*"
| where severity matches "*"
| where compliance_status matches "*"

| where !isBlank(compliance_status) and compliance_status matches "FAILED"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
```

**Cloud Infrastructure Security for AWS /Network ACL Changes/Network ACL Changes**
```
_sourceCategory=*CloudTrail* ("CreateNetworkAcl" or "CreateNetworkAclEntry" or "DeleteNetworkAcl" or "DeleteNetworkAclEntry" or "ReplaceNetworkAclEntry" or "ReplaceNetworkAclAssociation")
| json "requestID","eventID","userIdentity.sessionContext.sessionIssuer.userName","userIdentity.accountId","sourceIPAddress","awsRegion","eventName","eventType" as request_id, event_id,user_name,acc_id,source_ip,region,event_name,event_type nodrop
```

**Cloud Infrastructure Security for AWS /New Admins Added/New Admins Added**
```
_sourceCategory=*CloudTrail*
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage","requestParameters.policyArn","requestParameters.groupName" as event_name,source_ip,user_name,user_principal, login_result,mfa_used,event_source,aws_region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message,policy_arn,group_name nodrop
```

**Cloud Infrastructure Security for AWS /Risk Overview/Action Plan: Security Control Failures**
```
_sourceCategory=Labs/AWS/SecurityHub   ({{cloud.instance.id}} AND {{client.ip}} AND {{user.name}} AND {{cloud.account.id}} AND {{cloud.region}})
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName", "Resources[0].Details.AwsIamAccessKey.UserName" as cloud.account.id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName, user.name nodrop

| if (isEmpty(user.name), "NA", user.name) as user.name

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type  "*/*/*" as namespace, category, classifier
| replace(finding_type,"\\","") as finding_type
| replace(namespace,"\\","") as namespace
| replace(category,"\\","") as category
| replace(classifier,"\\","") as classifier
| parse field=finding_type  "*/*/*" as rule.ruleset, rule.category, rule.name
```

**Cloud Infrastructure Security for AWS /Risk Overview/All AWS API Events By Time**
```
_sourceCategory=*CloudTrail*  
| json "requestID","eventID","userIdentity.sessionContext.sessionIssuer.userName","userIdentity.accountId","userIdentity.type","sourceIPAddress","awsRegion","eventName" as request_id, event_id,user.name,cloud.account.id,user_identity_type,client.ip,cloud.region,event.action
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user

| json field=_raw "requestParameters.dBInstanceIdentifier" as db_instance_id nodrop
| json field=_raw "requestParameters.instancesSet.items[0].instanceId"  as cloud_instance_id nodrop
| if(isEmpty(db_instance_id),cloud_instance_id,db_instance_id) as cloud.instance.id
| if(isEmpty(cloud.instance.id),"NA", cloud.instance.id) as cloud.instance.id

| parse field=eventSource "*." as cloud.service.name
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
```

**Cloud Infrastructure Security for AWS /Risk Overview/Config Changes**
```

_sourceCategory=*CloudTrail* ("StopConfigurationRecorder" or "DeleteDeliveryChannel" or "PutDeliveryChannel" or "PutConfigurationRecorder")
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user.name,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
```

**Cloud Infrastructure Security for AWS /Risk Overview/Console Logins Without MFA**
```
_sourceCategory=*CloudTrail* ConsoleLogin
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user.name,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
```

**Cloud Infrastructure Security for AWS /Risk Overview/Disabled or Scheduled Deletion of CMKs**
```
_sourceCategory=*CloudTrail* ("DisableKey" or "ScheduleKeyDeletion")
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event_name,client.ip,user.name,user_principal, login_result,mfa_used,event_source,region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message nodrop
```

**Cloud Infrastructure Security for AWS /Risk Overview/Failed Console Logins**
```
_sourceCategory=*CloudTrail*  ("ConsoleLogin" and "Failed authentication")
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user.name,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
```

**Cloud Infrastructure Security for AWS /Risk Overview/Gateway Changes**
```
_sourceCategory=*CloudTrail*   ("CreateCustomerGateway" or "DeleteCustomerGateway" or "AttachInternetGateway" or "CreateInternetGateway" or "DeleteInternetGateway" or "DetachInternetGateway")
| json "requestID","eventID","userIdentity.sessionContext.sessionIssuer.userName","userIdentity.accountId","userIdentity.type","sourceIPAddress","awsRegion","eventName" as request_id, event_id,user.name,cloud.account.id,user_identity_type,client.ip,cloud.region,event.action
```

**Cloud Infrastructure Security for AWS /Risk Overview/IAM Policy Changes**
```
_sourceCategory=*CloudTrail* 
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user.name,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
```

**Cloud Infrastructure Security for AWS /Risk Overview/Impossible Travel Events**
```
_sourceCategory=*CloudTrail*
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user.name,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.acccount.id,error_message nodrop
```

**Cloud Infrastructure Security for AWS /Risk Overview/Network ACL Changes**
```
_sourceCategory=*CloudTrail* ("CreateNetworkAcl" or "CreateNetworkAclEntry" or "DeleteNetworkAcl" or "DeleteNetworkAclEntry" or "ReplaceNetworkAclEntry" or "ReplaceNetworkAclAssociation")
| json "requestID","eventID","userIdentity.sessionContext.sessionIssuer.userName","userIdentity.accountId","sourceIPAddress","awsRegion","eventName" as request_id, event_id,user.name,cloud.account.id,client.ip,cloud.region,event.action
```

**Cloud Infrastructure Security for AWS /Risk Overview/Permissive S3 Buckets Created**
```
_sourceCategory=*CloudTrail* ("PutBucketAcl" or "*FULL_CONTROL*")
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user.name,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
```

**Cloud Infrastructure Security for AWS /Risk Overview/Root Account Logins**
```
_sourceCategory=*CloudTrail*   "Root"
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event_name,client.ip,user.name,user_principal, login_result,mfa_used,event_source,aws_region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message nodrop
```

**Cloud Infrastructure Security for AWS /Risk Overview/Route Table Changes**
```
_sourceCategory=*CloudTrail* ("CreateRoute" or "CreateRouteTable" or "ReplaceRoute" or "ReplaceRouteTableAssociation" or "DeleteRouteTable" or  "DeleteRoute" or "DisassociateRouteTable")
| json "requestID","eventID","userIdentity.sessionContext.sessionIssuer.userName","userIdentity.accountId","sourceIPAddress","awsRegion","eventName" as request_id, event_id,user.name,cloud.account.id,client.ip,cloud.region,event.action
```

**Cloud Infrastructure Security for AWS /Risk Overview/S3 Bucket Changes**
```
_sourceCategory=*CloudTrail*   (*BucketAcl or *BucketPolicy or *BucketCors or *BucketLifecycle)
| json "requestID","eventID","userIdentity.sessionContext.sessionIssuer.userName","userIdentity.accountId","userIdentity.type","sourceIPAddress","awsRegion","eventName" as request_id, event_id,user.name,cloud.account.id,user_identity_type,client.ip,cloud.region,event.action
```

**Cloud Infrastructure Security for AWS /Risk Overview/Security Control Failures**
```
_sourceCategory=Labs/AWS/SecurityHub  
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName", "Resources[0].Details.AwsIamAccessKey.UserName" as cloud.account.id, finding_id, generator_id, product_arn, created_at, updated_at, resources, risk.calculated_level, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName, user.name nodrop

| if (isEmpty(user.name), "NA", user.name) as user.name

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type  "*/*/*" as namespace, category, classifier
| replace(finding_type,"\\","") as finding_type
| replace(namespace,"\\","") as namespace
| replace(category,"\\","") as category
| replace(classifier,"\\","") as classifier

| if (risk.calculated_level == 0, "informational", "Others") as severity
| if (risk.calculated_level <= 39, "low", severity) as severity
| if ((risk.calculated_level <= 69) and (risk.calculated_level >= 40), "medium", severity) as severity
| if ((risk.calculated_level <= 89) and (risk.calculated_level >= 70), "high", severity) as severity
| if (risk.calculated_level <= 100 and risk.calculated_level >= 90, "critical", severity) as severity

| parse field=finding_type  "*/*/*" as rule.ruleset, rule.category, rule.name
```

**Cloud Infrastructure Security for AWS /Risk Overview/Security Group Changes**
```
_sourceCategory=*CloudTrail* ("CreateSecurityGroup" or "DeleteSecurityGroup" or "RevokeSecurityGroupEgress" or "RevokeSecurityGroupIngress")
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user.name,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name

| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user.name nodrop
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS /Risk Overview/Suspicious Blocked Source-Destination Pairs**
```
_sourceCategory=PDET/CIS/AWS/Vanta/Flow  
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "alert" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, alert nodrop
| where event.type="alert"
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
```

**Cloud Infrastructure Security for AWS /Risk Overview/Suspicious Blocked Web Requests**
```
_sourceCategory=Labs/AWS/WAF 
| json "httpRequest.httpMethod","httpRequest.httpVersion","httpRequest.uri","httpRequest.clientIp","httpRequest.country","action","matchingNonTerminatingRules","rateBasedRuleList","ruleGroupList","httpSourceId","httpSourceName","terminatingRuleType","terminatingRuleId","webaclId" as http_method,http_version,url.path,client.ip,country,action,matching_non_terminating_rules,rate_based_rule_list,rule_group_list,http_source_id,http_source_name,terminating_rule_type,terminating_rule_id,webacl_id nodrop
```

**Cloud Infrastructure Security for AWS /Risk Overview/Threats Count AWS API**
```
_sourceCategory=*CloudTrail*    sourceIPAddress
| json "eventTime", "eventName", "awsRegion", "sourceIPAddress", "errorCode", "userAgent" as event_time, event.action, cloud.region, client.ip, event.outcome, user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId","userIdentity.type" as user.name, cloud.account.id, user_identity_type nodrop 
| parse "\"userName\":\"*\"" as user.name nodrop
| if (isEmpty(event.outcome), "Success", event.outcome) as event.outcome
| if (isEmpty(user.name), "NA", user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user

// global filters
| where if ("{{cloud.account.id}}" = "*", true, cloud.account.id matches "{{cloud.account.id}}") AND if ("{{cloud.region}}" = "*", true, cloud.region matches "{{cloud.region}}") AND if ("{{user.name}}" = "*", true, user.name matches "{{user.name}}") AND if ("{{client.ip}}" = "*", true, client.ip matches "{{client.ip}}") AND if("{{source.user}}" = "*", true, source.user matches "{{source.user}}")
// instance.id filter is not applicable

| lookup type, actor, raw, threatlevel  as malicious_confidence ,threat from sumo://threat/cs on threat=client.ip
| where type="ip_address" and !isNull(malicious_confidence)
//| where malicious_confidence ="high"

| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Cloud Infrastructure Security for AWS /Risk Overview/Threats Count AWS Resources**
```
_sourceCategory=PDET/CIS/AWS/GuardDuty  
| json "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","severity","title","description", "vpcId", "subnetId", "groupId" , "tags", "groupName", "resource.instanceDetails", "resource.accessKeyDetails.userName" as cloud.account.id, cloud.region, partition, id, arn, type, service_name, detector_id, action, severity_level, title, description, vpcId, subnetId , securityGroupId, tags, securityGroupName, instanceDetails, user.name nodrop

| json field=instanceDetails "instanceId", "instanceType","networkInterfaces[0].publicIp" as instanceid, cloud.machine.type, server.ip
| json field=_raw "resource.resourceType" as resourceType
| json field=_raw "resource.s3BucketDetails[0].name" as bucketName nodrop
| if (resourceType = "S3Bucket",bucketName, instanceid  ) as cloud.instance.id

| json field=action "awsApiCallAction.remoteIpDetails.ipAddressV4", "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as awsCallActionIp, networkActionIp, localPort nodrop

| parse field=type "*:*/*" as threat.tactic.name,cloud.service.name,threat.technique.name 
```

**Cloud Infrastructure Security for AWS /Risk Overview/Unauthorized API Requests**
```
_sourceCategory=*CloudTrail*  ("AccessDenied" or "UnauthorizedOperation")
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event_name,client.ip,user.name,user_principal, login_result,mfa_used,event_source,aws_region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message nodrop
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| parse field=event_source "*." as event_source
```

**Cloud Infrastructure Security for AWS /Risk Overview/VPC Changes**
```
_sourceCategory=*CloudTrail* ("CreateVpc" or "DeleteVpc" or "ModifyVpcAttribute" or *VpcPeeringConnection or *tachClassicLink or *ableVpcClassic)
| json "requestID","eventID","userIdentity.sessionContext.sessionIssuer.userName","userIdentity.accountId","sourceIPAddress","awsRegion","eventName" as request_id, event_id,user.name,cloud.account.id,client.ip,cloud.region,event.action
```

**Cloud Infrastructure Security for AWS /Route Table Changes/Route Table Changes**
```
_sourceCategory=*CloudTrail* ("CreateRoute" or "CreateRouteTable" or "ReplaceRoute" or "ReplaceRouteTableAssociation" or "DeleteRouteTable" or  "DeleteRoute" or "DisassociateRouteTable")
| json "requestID","eventID","userIdentity.sessionContext.sessionIssuer.userName","userIdentity.accountId","sourceIPAddress","awsRegion","eventName","eventType" as request_id, event_id,user_name,acc_id,source_ip,region,event_name,event_type nodrop
```

**Cloud Infrastructure Security for AWS /S3 Bucket Changes/S3 Bucket Changes**
```
_sourceCategory=*CloudTrail* (*BucketAcl or *BucketPolicy or *BucketCors or *BucketLifecycle)
| json "requestID","eventID","userIdentity.sessionContext.sessionIssuer.userName","userIdentity.accountId","sourceIPAddress","awsRegion","eventName","eventType" as request_id, event_id,user_name,acc_id,source_ip,region,event_name,event_type nodrop
```

**Cloud Infrastructure Security for AWS /Security Control Failures/Finding Count**
```
_sourceCategory=Labs/AWS/SecurityHub  
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName", "Resources[0].Details.AwsIamAccessKey.UserName" as cloud.account.id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName, user.name nodrop

| if (isEmpty(user.name), "NA", user.name) as user.name

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type  "*/*/*" as namespace, category, classifier
| replace(finding_type,"\\","") as finding_type
| replace(namespace,"\\","") as namespace
| replace(category,"\\","") as category
| replace(classifier,"\\","") as classifier

| if (severity_normalized == 0, "informational", "Others") as risk.calculated_level
| if (severity_normalized <= 39, "low", risk.calculated_level) as risk.calculated_level
| if ((severity_normalized <= 69) and (severity_normalized >= 40), "medium", risk.calculated_level) as risk.calculated_level
| if ((severity_normalized <= 89) and (severity_normalized >= 70), "high", risk.calculated_level) as risk.calculated_level
| if (severity_normalized <= 100 and severity_normalized >= 90, "critical", risk.calculated_level) as risk.calculated_level

| parse field=finding_type  "*/*/*" as rule.ruleset, rule.category, rule.name
```

**Cloud Infrastructure Security for AWS /Security Control Failures/Findings by Category**
```
_sourceCategory=Labs/AWS/SecurityHub  
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName", "Resources[0].Details.AwsIamAccessKey.UserName" as cloud.account.id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName, user.name nodrop

| if (isEmpty(user.name), "NA", user.name) as user.name

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type  "*/*/*" as namespace, category, classifier
| replace(finding_type,"\\","") as finding_type
| replace(namespace,"\\","") as namespace
| replace(category,"\\","") as category
| replace(classifier,"\\","") as classifier

| if (severity_normalized == 0, "informational", "Others") as risk.calculated_level
| if (severity_normalized <= 39, "low", risk.calculated_level) as risk.calculated_level
| if ((severity_normalized <= 69) and (severity_normalized >= 40), "medium", risk.calculated_level) as risk.calculated_level
| if ((severity_normalized <= 89) and (severity_normalized >= 70), "high", risk.calculated_level) as risk.calculated_level
| if (severity_normalized <= 100 and severity_normalized >= 90, "critical", risk.calculated_level) as risk.calculated_level

| parse field=finding_type  "*/*/*" as rule.ruleset, rule.category, rule.name
```

**Cloud Infrastructure Security for AWS /Security Control Failures/Findings by Resource**
```
_sourceCategory=Labs/AWS/SecurityHub  
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName", "Resources[0].Details.AwsIamAccessKey.UserName" as cloud.account.id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName, user.name nodrop

| if (isEmpty(user.name), "NA", user.name) as user.name

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type  "*/*/*" as namespace, category, classifier
| replace(finding_type,"\\","") as finding_type
| replace(namespace,"\\","") as namespace
| replace(category,"\\","") as category
| replace(classifier,"\\","") as classifier

| if (severity_normalized == 0, "informational", "Others") as risk.calculated_level
| if (severity_normalized <= 39, "low", risk.calculated_level) as risk.calculated_level
| if ((severity_normalized <= 69) and (severity_normalized >= 40), "medium", risk.calculated_level) as risk.calculated_level
| if ((severity_normalized <= 89) and (severity_normalized >= 70), "high", risk.calculated_level) as risk.calculated_level
| if (severity_normalized <= 100 and severity_normalized >= 90, "critical", risk.calculated_level) as risk.calculated_level

| parse field=finding_type  "*/*/*" as rule.ruleset, rule.category, rule.name
```

**Cloud Infrastructure Security for AWS /Security Control Failures/Findings by Resource Type**
```
_sourceCategory=Labs/AWS/SecurityHub  
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName", "Resources[0].Details.AwsIamAccessKey.UserName" as cloud.account.id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName, user.name nodrop

| if (isEmpty(user.name), "NA", user.name) as user.name

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type  "*/*/*" as namespace, category, classifier
| replace(finding_type,"\\","") as finding_type
| replace(namespace,"\\","") as namespace
| replace(category,"\\","") as category
| replace(classifier,"\\","") as classifier

| if (severity_normalized == 0, "informational", "Others") as risk.calculated_level
| if (severity_normalized <= 39, "low", risk.calculated_level) as risk.calculated_level
| if ((severity_normalized <= 69) and (severity_normalized >= 40), "medium", risk.calculated_level) as risk.calculated_level
| if ((severity_normalized <= 89) and (severity_normalized >= 70), "high", risk.calculated_level) as risk.calculated_level
| if (severity_normalized <= 100 and severity_normalized >= 90, "critical", risk.calculated_level) as risk.calculated_level

| parse field=finding_type  "*/*/*" as rule.ruleset, rule.category, rule.name
```

**Cloud Infrastructure Security for AWS /Security Control Failures/Findings Trend**
```
_sourceCategory=Labs/AWS/SecurityHub  
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName", "Resources[0].Details.AwsIamAccessKey.UserName" as cloud.account.id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName, user.name nodrop

| if (isEmpty(user.name), "NA", user.name) as user.name

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type  "*/*/*" as namespace, category, classifier
| replace(finding_type,"\\","") as finding_type
| replace(namespace,"\\","") as namespace
| replace(category,"\\","") as category
| replace(classifier,"\\","") as classifier

| if (severity_normalized == 0, "informational", "Others") as risk.calculated_level
| if (severity_normalized <= 39, "low", risk.calculated_level) as risk.calculated_level
| if ((severity_normalized <= 69) and (severity_normalized >= 40), "medium", risk.calculated_level) as risk.calculated_level
| if ((severity_normalized <= 89) and (severity_normalized >= 70), "high", risk.calculated_level) as risk.calculated_level
| if (severity_normalized <= 100 and severity_normalized >= 90, "critical", risk.calculated_level) as risk.calculated_level

| parse field=finding_type  "*/*/*" as rule.ruleset, rule.category, rule.name
```

**Cloud Infrastructure Security for AWS /Security Group Changes/Security Group Changes**
```
_sourceCategory=*CloudTrail* ("CreateSecurityGroup" or "DeleteSecurityGroup" or "RevokeSecurityGroupEgress" or "RevokeSecurityGroupIngress")
| json "requestID","eventID","userIdentity.sessionContext.sessionIssuer.userName","userIdentity.accountId","sourceIPAddress","awsRegion","eventName","eventType" as request_id, event_id,user_name,acc_id,source_ip,region,event_name,event_type nodrop
```

**Cloud Infrastructure Security for AWS /Suspicious Config and IAM Activity/Config Changes**
```

_sourceCategory=*CloudTrail* ("StopConfigurationRecorder" or "DeleteDeliveryChannel" or "PutDeliveryChannel" or "PutConfigurationRecorder")
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user.name,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name

| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS /Suspicious Config and IAM Activity/Disabled or Scheduled Deletion of CMK**
```
_sourceCategory=*CloudTrail* ("DisableKey" or "ScheduleKeyDeletion")
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user.name,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
```

**Cloud Infrastructure Security for AWS /Suspicious Config and IAM Activity/Disabled or Scheduled Deletion of CMKs**
```
_sourceCategory=*CloudTrail*  ("DisableKey" or "ScheduleKeyDeletion")
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event_name,client.ip,user.name,user_principal, login_result,mfa_used,service_name,region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message nodrop
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name

| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS /Suspicious Config and IAM Activity/Gateway Changes**
```

_sourceCategory=*CloudTrail*  ("CreateCustomerGateway" or "DeleteCustomerGateway" or "AttachInternetGateway" or "CreateInternetGateway" or "DeleteInternetGateway" or "DetachInternetGateway")

| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user.name,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name

| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user.name nodrop
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS /Suspicious Config and IAM Activity/IAM Policy Changes**
```
_sourceCategory=*CloudTrail* 
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user.name,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS /Suspicious Config and IAM Activity/Network ACL Changes**
```
_sourceCategory=*CloudTrail*  ("CreateNetworkAcl" or "CreateNetworkAclEntry" or "DeleteNetworkAcl" or "DeleteNetworkAclEntry" or "ReplaceNetworkAclEntry" or "ReplaceNetworkAclAssociation")
| json "requestID","eventID","userIdentity.sessionContext.sessionIssuer.userName","userIdentity.accountId","userIdentity.type","sourceIPAddress","awsRegion","eventName","eventSource" as request_id, event_id,user.name,cloud.account.id,user_identity_type,client.ip,cloud.region,event.action,service_name

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(user.name), "NA", user.name) as user.name
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS /Suspicious Config and IAM Activity/Permissive S3 Buckets Created**
```
_sourceCategory=*CloudTrail* ("PutBucketAcl" or "*FULL_CONTROL*")
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user.name,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name

| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS /Suspicious Config and IAM Activity/Route Table Changes**
```
_sourceCategory=*CloudTrail*  ("CreateRoute" or "CreateRouteTable" or "ReplaceRoute" or "ReplaceRouteTableAssociation" or "DeleteRouteTable" or  "DeleteRoute" or "DisassociateRouteTable")
| json "requestID","eventID","userIdentity.sessionContext.sessionIssuer.userName","userIdentity.accountId","userIdentity.type","sourceIPAddress","awsRegion","eventName","eventSource" as request_id, event_id,user.name,cloud.account.id,user_identity_type,client.ip,cloud.region,event.action,service_name
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop

| if(isEmpty(user.name), "NA", user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS /Suspicious Config and IAM Activity/S3 Bucket Changes**
```
_sourceCategory=*CloudTrail*  (*BucketAcl or *BucketPolicy or *BucketCors or *BucketLifecycle)
| json "requestID","eventID","userIdentity.sessionContext.sessionIssuer.userName","userIdentity.accountId","userIdentity.type","sourceIPAddress","awsRegion","eventName","eventSource" as request_id, event_id,user.name,cloud.account.id,user_identity_type,client.ip,cloud.region,event.action,service_name
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(user.name), "NA", user.name) as user.name
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS /Suspicious Config and IAM Activity/S3 Bucket Permission Changes**
```
_sourceCategory=*CloudTrail* (*BucketAcl or *BucketPolicy or *BucketCors or *BucketLifecycle)
| json "requestID","eventID","userIdentity.sessionContext.sessionIssuer.userName","userIdentity.accountId","userIdentity.type","sourceIPAddress","awsRegion","eventName","eventSource" as request_id, event_id,user.name,cloud.account.id,user_identity_type,client.ip,cloud.region,event.action,service_name
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(user.name), "NA", user.name) as user.name
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS /Suspicious Config and IAM Activity/Security Group Changes**
```
_sourceCategory=*CloudTrail* ("CreateSecurityGroup" or "DeleteSecurityGroup" or "RevokeSecurityGroupEgress" or "RevokeSecurityGroupIngress")
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user.name,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name

| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user.name nodrop
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS /Suspicious Config and IAM Activity/VPC Changes**
```

_sourceCategory=*CloudTrail*  ("CreateVpc" or "DeleteVpc" or "ModifyVpcAttribute" or *VpcPeeringConnection or *tachClassicLink or *ableVpcClassic)
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user.name,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name

| parse field=service_name "*." as cloud.service.name
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user.name nodrop
```

**Cloud Infrastructure Security for AWS /Suspicious Network Activity/Suspicious Blocked  Source-Destination Pairs**
```
_sourceCategory=PDET/CIS/AWS/Vanta/Flow  
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "alert" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, alert nodrop
| where event.type="alert"
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
```

**Cloud Infrastructure Security for AWS /Suspicious Network Activity/Suspicious Blocked Destinations by Location**
```
_sourceCategory=PDET/CIS/AWS/Vanta/Flow  
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "alert" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, alert nodrop
| where event.type="alert"
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
```

**Cloud Infrastructure Security for AWS /Suspicious Network Activity/Suspicious Blocked Source-Destination Pairs**
```
_sourceCategory=PDET/CIS/AWS/Vanta/Flow  
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "alert" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, alert nodrop
| where event.type="alert"
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
```

**Cloud Infrastructure Security for AWS /Suspicious Network Activity/Suspicious Destinations by Traffic (Megabytes)**
```
_sourceCategory=PDET/CIS/AWS/Vanta/Flow  
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "app_proto", "netflow" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, app_proto, netflow nodrop
| where event.type="netflow"
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
| json field=netflow "bytes", "pkts" as network.bytes, packets nodrop
```

**Cloud Infrastructure Security for AWS /Suspicious Network Activity/Suspicious Megabytes  Source-Destination Pairs**
```
_sourceCategory=PDET/CIS/AWS/Vanta/Flow  
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "app_proto", "netflow" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, app_proto, netflow nodrop
| where event.type="netflow"
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
| json field=netflow "bytes", "pkts" as network.bytes, packets nodrop
```

**Cloud Infrastructure Security for AWS /Suspicious Network Activity/Suspicious Traffic (Megabytes)**
```
_sourceCategory=PDET/CIS/AWS/Vanta/Flow  
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "app_proto", "netflow" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, app_proto, netflow nodrop
| where event.type="netflow"
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
| json field=netflow "bytes", "pkts" as network.bytes, packets nodrop
```

**Cloud Infrastructure Security for AWS /Suspicious Network Activity/Trend: Blocked Activity Percent**
```
_sourceCategory=PDET/CIS/AWS/Vanta/Flow  
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "alert" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, alert nodrop
| where event.type="alert"
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
```

**Cloud Infrastructure Security for AWS /Suspicious Network Activity/Trend: Suspicious Traffic (Megabytes)**
```
_sourceCategory=PDET/CIS/AWS/Vanta/Flow  
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "app_proto", "netflow" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, app_proto, netflow nodrop
| where event.type="netflow"
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
| json field=netflow "bytes", "pkts" as network.bytes, packets nodrop
```

**Cloud Infrastructure Security for AWS /Suspicious User Activity/Console Logins from Risky Geo Locations**
```
_sourceCategory=*CloudTrail*
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,server.ip,user.name,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user

// global filters
| where if ("{{user.name}}" = "*", true,user.name matches "{{user.name}}") AND if ("{{cloud.region}}" = "*", true, cloud.region matches "{{cloud.region}}") AND if ("{{cloud.account.id}}" = "*", true, cloud.account.id matches "{{cloud.account.id}}") AND if ("{{server.ip}}" = "*", true, server.ip matches "{{server.ip}}") AND if("{{source.user}}" = "*", true, source.user matches "{{source.user}}")

| where event.action matches("*ConsoleLogin*")
| where isValidIPv4(server.ip) or isValidIPv6(server.ip)
| where !isNull(server.ip)
| if(isValidIPv4(server.ip), if(!isPrivateIP(server.ip),true,false),true) as is_public
| where is_public
| count as frequency by server.ip
| lookup latitude, longitude, country_code from geo://location on ip = server.ip
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code
```

**Cloud Infrastructure Security for AWS /Suspicious User Activity/Console Logins Without MFA**
```
_sourceCategory=*CloudTrail* ConsoleLogin
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,server.ip,user.name,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS /Suspicious User Activity/Failed Console Logins**
```
_sourceCategory=*CloudTrail* ("ConsoleLogin" and "Failed authentication")
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,server.ip,user.name,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS /Suspicious User Activity/Impossible Travel Events**
```
_sourceCategory=*CloudTrail*
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,server.ip,user.name,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
```

**Cloud Infrastructure Security for AWS /Suspicious User Activity/Root Account Logins**
```
_sourceCategory=*CloudTrail*  "Root"
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,server.ip,user.name,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS /Suspicious User Activity/Unauthorized API Requests**
```
_sourceCategory=*CloudTrail*  ("AccessDenied" or "UnauthorizedOperation")
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,server.ip,user.name,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS /Suspicious User Activity/Unauthorized AWS API Requests**
```
_sourceCategory=*CloudTrail*  ("AccessDenied" or "UnauthorizedOperation")
| json "eventName","sourceIPAddress","userIdentity.userName","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,server.ip,user.name,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS /Suspicious Web Activity/Suspicious Blocked Web  Requests**
```
_sourceCategory=Labs/AWS/WAF 
| json "httpRequest.httpMethod","httpRequest.httpVersion","httpRequest.uri","httpRequest.clientIp","httpRequest.country","action","matchingNonTerminatingRules","rateBasedRuleList","ruleGroupList","httpSourceId","httpSourceName","terminatingRuleType","terminatingRuleId","webaclId" as http_method,http_version,url.path,client.ip,country,action,matching_non_terminating_rules,rate_based_rule_list,rule_group_list,http_source_id,http_source_name,terminating_rule_type,terminating_rule_id,webacl_id nodrop
```

**Cloud Infrastructure Security for AWS /Suspicious Web Activity/Suspicious Blocked Web Requests**
```
_sourceCategory=Labs/AWS/WAF 
| json "httpRequest.httpMethod","httpRequest.httpVersion","httpRequest.uri","httpRequest.clientIp","httpRequest.country","action","matchingNonTerminatingRules","rateBasedRuleList","ruleGroupList","httpSourceId","httpSourceName","terminatingRuleType","terminatingRuleId","webaclId" as http_method,http_version,url.path,client.ip,country,action,matching_non_terminating_rules,rate_based_rule_list,rule_group_list,http_source_id,http_source_name,terminating_rule_type,terminating_rule_id,webacl_id nodrop
```

**Cloud Infrastructure Security for AWS /Suspicious Web Activity/Suspicious Blocked Web Requests by Location**
```
_sourceCategory=Labs/AWS/WAF 
| json "httpRequest.httpMethod","httpRequest.httpVersion","httpRequest.uri","httpRequest.clientIp","httpRequest.country","action","matchingNonTerminatingRules","rateBasedRuleList","ruleGroupList","httpSourceId","httpSourceName","terminatingRuleType","terminatingRuleId","webaclId" as http_method,http_version,url.path,client.ip,country,action,matching_non_terminating_rules,rate_based_rule_list,rule_group_list,http_source_id,http_source_name,terminating_rule_type,terminating_rule_id,webacl_id nodrop
```

**Cloud Infrastructure Security for AWS /Suspicious Web Activity/Trend: Blocked Web Requests Percent**
```
_sourceCategory=Labs/AWS/WAF 
| json "httpRequest.httpMethod","httpRequest.httpVersion","httpRequest.uri","httpRequest.clientIp","httpRequest.country","action","matchingNonTerminatingRules","rateBasedRuleList","ruleGroupList","httpSourceId","httpSourceName","terminatingRuleType","terminatingRuleId","webaclId" as http_method,http_version,url.path,client.ip,country,action,matching_non_terminating_rules,rate_based_rule_list,rule_group_list,http_source_id,http_source_name,terminating_rule_type,terminating_rule_id,webacl_id nodrop
```

**Cloud Infrastructure Security for AWS /VPC Changes/VPC Changes**
```
_sourceCategory=*CloudTrail* ("CreateVpc" or "DeleteVpc" or "ModifyVpcAttribute" or *VpcPeeringConnection or *tachClassicLink or *ableVpcClassic)
| json "requestID","eventID","userIdentity.sessionContext.sessionIssuer.userName","userIdentity.accountId","sourceIPAddress","awsRegion","eventName","eventType" as request_id, event_id,user_name,acc_id,source_ip,region,event_name,event_type nodrop
```


