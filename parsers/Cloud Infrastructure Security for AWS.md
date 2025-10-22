# Parsers For Cloud Infrastructure Security for AWS

**Cloud Infrastructure Security for AWS/Admin Privileges Granted/Admin Privileges Granted**
```
_sourceCategory={{CloudTrailLogsdatasource}} 
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage","requestParameters.policyArn" as event_name,source_ip,user_principal, login_result,mfa_used,event_source,aws_region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message,policy_arn nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
```

**Cloud Infrastructure Security for AWS/Cloud SIEM Insights Overview/Insights - No Action Required**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
| where insight_status = "closed"
| where insight_resolution = "No Action"
| json field=_raw "insight.severityName" as severity_name nodrop
```

**Cloud Infrastructure Security for AWS/Cloud SIEM Insights Overview/Insights by Assignee**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight ) or (_index=sumologic_system_events _sourcecategory=cseinsight ) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
| json field=_raw "insight.severityName" as severity_name nodrop
```

**Cloud Infrastructure Security for AWS/Cloud SIEM Insights Overview/Insights by Created vs Closed**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight  insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.severityName" as severity_name nodrop
| if (severity_name matches "HIGH", 3, if(severity_name matches "MEDIUM", 2, if(severity_name matches "LOW", 1, 0))) as risk.static_level
| where  (risk.static_level >= toInt("{{risk.static_level}}"))
| json field=_raw "insight.signals.length()" as signal_count
```

**Cloud Infrastructure Security for AWS/Cloud SIEM Insights Overview/Insights by Entity Type**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight ) or (_index=sumologic_system_events _sourcecategory=cseinsight ) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
| json field=_raw "insight.severityName" as severity_name nodrop
```

**Cloud Infrastructure Security for AWS/Cloud SIEM Insights Overview/Insights by Resource**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight ) or (_index=sumologic_system_events _sourcecategory=cseinsight ) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
| json field=_raw "insight.severityName" as severity_name nodrop
```

**Cloud Infrastructure Security for AWS/Cloud SIEM Insights Overview/Insights by Rule ID, and Insight Name**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight ) or (_index=sumologic_system_events _sourcecategory=cseinsight )
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
| json field=_raw "insight.severityName" as severity_name nodrop
| if (severity_name matches "HIGH", 3, if(severity_name matches "MEDIUM", 2, if(severity_name matches "LOW", 1, 0))) as risk.static_level
| where  (risk.static_level >= toInt("{{risk.static_level}}"))
| replace(insight_tags, "[","") as insight_tags
| replace(insight_tags, "]"," ") as insight_tags
| replace(insight_tags, "\"","") as insight_tags
| replace(insight_tags, ","," | ") as insight_tags
| replace(insight_ruleId, "[","") as insight_ruleId
| replace(insight_ruleId, "]"," ") as insight_ruleId
| replace(insight_ruleId, "\"","") as insight_ruleId
| replace(insight_ruleId, ","," | ") as insight_ruleId
| parse regex field=insight_ruleId "(?<ruleID>[A-Z0-9-]+)" multi
```

**Cloud Infrastructure Security for AWS/Cloud SIEM Insights Overview/Insights by Status**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight ) or (_index=sumologic_system_events _sourcecategory=cseinsight ) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
| where insight_status in ("new","closed","inprogress")
| json field=_raw "insight.severityName" as severity_name nodrop
```

**Cloud Infrastructure Security for AWS/Cloud SIEM Insights Overview/Insights by Tag**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight ) or (_index=sumologic_system_events _sourcecategory=cseinsight )
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
| json field=_raw "insight.severityName" as severity_name nodrop
| if (severity_name matches "HIGH", 3, if(severity_name matches "MEDIUM", 2, if(severity_name matches "LOW", 1, 0))) as risk.static_level
| where  (risk.static_level >= toInt("{{risk.static_level}}"))
| replace(insight_tags, "[","") as insight_tags
| replace(insight_tags, "]"," ") as insight_tags
| replace(insight_tags, "\"","") as insight_tags
| replace(insight_tags, ","," | ") as insight_tags
| replace(insight_ruleId, "[","") as insight_ruleId
| replace(insight_ruleId, "]"," ") as insight_ruleId
| replace(insight_ruleId, "\"","") as insight_ruleId
| replace(insight_ruleId, ","," | ") as insight_ruleId
| parse regex field=insight_tags "(?<tag>[\w-_ :.]+)" multi
```

**Cloud Infrastructure Security for AWS/Cloud SIEM Insights Overview/Insights Closed**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
| where insight_status = "closed"
| json field=_raw "insight.severityName" as severity_name nodrop
```

**Cloud Infrastructure Security for AWS/Cloud SIEM Insights Overview/Insights Created**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight  insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
| json field=_raw "insight.severityName" as severity_name nodrop
```

**Cloud Infrastructure Security for AWS/Cloud SIEM Insights Overview/Insights Created - Outlier**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight  insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
| json field=_raw "insight.severityName" as severity_name nodrop
```

**Cloud Infrastructure Security for AWS/Cloud SIEM Insights Overview/Insights Duplicates**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
| where insight_status = "closed"
| where insight_resolution = "Duplicate"
| json field=_raw "insight.severityName" as severity_name nodrop
```

**Cloud Infrastructure Security for AWS/Cloud SIEM Insights Overview/Insights False Positives**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
| where insight_status = "closed"
| where insight_resolution = "False Positive"
| json field=_raw "insight.severityName" as severity_name nodrop
```

**Cloud Infrastructure Security for AWS/Cloud SIEM Insights Overview/Top 10 Closed Insights by Confidence Level**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id", "insight.confidence"   as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| where insight_status = "closed"
| json field=_raw "insight.severityName" as severity_name nodrop
| if (severity_name matches "HIGH", 3, if(severity_name matches "MEDIUM", 2, if(severity_name matches "LOW", 1, 0))) as risk.static_level
| where  (risk.static_level >= toInt("{{risk.static_level}}"))
| insight_confidence * 100 as insight_confidence 
| json field=_raw "insight.signals.length()" as signal_count
```

**Cloud Infrastructure Security for AWS/Cloud SIEM Insights Overview/Top 10 Insights Created by Confidence Level**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight  insightcreated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
| insight_confidence * 100 as insight_confidence 
| if(isBlank(insight_assignee), "Unassigned", insight_assignee) as insight_assignee
| replace(insight_tags, "[","") as insight_tags
| replace(insight_tags, "]","") as insight_tags
| replace(insight_tags, "\"","") as insight_tags
| replace(insight_tags, ","," | ") as insight_tags
| replace(insight_ruleId, "[","") as insight_ruleId
| replace(insight_ruleId, "]","") as insight_ruleId
| replace(insight_ruleId, "\"","") as insight_ruleId
| replace(insight_ruleId, ","," | ") as insight_ruleId
| json "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.severityName" as severity_name nodrop
```

**Cloud Infrastructure Security for AWS/Control Failure Findings Details by Severity/Control Failure Findings Details by Severity**
```
_sourceCategory={{SecurityHubLogsdatasource}}  
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName" as account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName nodrop

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type "*/*/*" as namespace, category, classifier
```

**Cloud Infrastructure Security for AWS/Creation of IAM Role/Creation of IAM Role**
```
_sourceCategory={{CloudTrailLogsdatasource}}  CreateRole
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event_name,source_ip,user_principal, login_result,mfa_used,event_source,aws_region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
```

**Cloud Infrastructure Security for AWS/Deleted resources over time/Deleted resources over time**
```
_sourceCategory={{CloudTrailLogsdatasource}}  Delete*
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user_name
| parse "\"eventName\":\"*\"" as event_name
 | timeslice 1h 
 | parse regex field=event_name "^(?:Delete)(?<resource_type>[A-Z][A-Za-z]+)"
```

**Cloud Infrastructure Security for AWS/Exposed S3 Bucket Created/Exposed S3 Bucket Created**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("PutBucketAcl" or "*FULL_CONTROL*")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event_name,source_ip,user_principal, login_result,mfa_used,event_source,aws_region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
```

**Cloud Infrastructure Security for AWS/Gateway Changes/Gateway Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("CreateCustomerGateway" or "DeleteCustomerGateway" or "AttachInternetGateway" or "CreateInternetGateway" or "DeleteInternetGateway" or "DetachInternetGateway")
| json "requestID","eventID","userIdentity.accountId","sourceIPAddress","awsRegion","eventName","eventType" as request_id, event_id,acc_id,source_ip,region,event_name,event_type nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
```

**Cloud Infrastructure Security for AWS/IAM Policy Changes/IAM Policy Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}} 
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event_name,source_ip,user_principal, login_result,mfa_used,event_source,aws_region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
```

**Cloud Infrastructure Security for AWS/Least Common Out of Compliance Findings/Least Common Out of Compliance Findings**
```
_sourceCategory={{SecurityHubLogsdatasource}}  
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName" as account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName nodrop

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type "*/*/*" as namespace, category, classifier
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

**Cloud Infrastructure Security for AWS/Most Common Out of Compliance Findings/Most Common Out of Compliance Findings**
```
_sourceCategory={{SecurityHubLogsdatasource}}  
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName" as account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName nodrop

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type "*/*/*" as namespace, category, classifier
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

**Cloud Infrastructure Security for AWS/Network ACL Changes/Network ACL Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("CreateNetworkAcl" or "CreateNetworkAclEntry" or "DeleteNetworkAcl" or "DeleteNetworkAclEntry" or "ReplaceNetworkAclEntry" or "ReplaceNetworkAclAssociation")
| json "requestID","eventID","userIdentity.accountId","sourceIPAddress","awsRegion","eventName","eventType" as request_id, event_id,acc_id,source_ip,region,event_name,event_type nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
```

**Cloud Infrastructure Security for AWS/New Admins Added/New Admins Added**
```
_sourceCategory={{CloudTrailLogsdatasource}} 
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage","requestParameters.policyArn","requestParameters.groupName" as event_name,source_ip,user_principal, login_result,mfa_used,event_source,aws_region,event_type,event_category,user_identity_type,event_time,permission,error_code,acc_id,error_message,policy_arn,group_name nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
```

**Cloud Infrastructure Security for AWS/Risk Overview/Action Plan: Security Control Failures**
```
_sourceCategory={{SecurityHubLogsdatasource}}  ({{cloud.instance.id}} AND {{client.ip}} AND {{user.name}} AND {{cloud.account.id}} AND {{cloud.region}})
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName", "Resources[0].Details.AwsIamAccessKey.UserName" as cloud.account.id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName, user.name nodrop

| if (isEmpty(user.name), "NA", user.name) as user.name

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type "*/*/*" as namespace, category, classifier
| replace(finding_type,"\\","") as finding_type
| replace(namespace,"\\","") as namespace
| replace(category,"\\","") as category
| replace(classifier,"\\","") as classifier
| parse field=finding_type "*/*/*" as rule.ruleset, rule.category, rule.name
```

**Cloud Infrastructure Security for AWS/Risk Overview/All AWS API Events By Time**
```
_sourceCategory={{CloudTrailLogsdatasource}}  
| json "requestID","eventID","userIdentity.accountId","userIdentity.type","sourceIPAddress","awsRegion","eventName" as request_id, event_id,cloud.account.id,user_identity_type,client.ip,cloud.region,event.action
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name 
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user

| json field=_raw "requestParameters.dBInstanceIdentifier" as db_instance_id nodrop
| json field=_raw "requestParameters.instancesSet.items[0].instanceId" as cloud_instance_id nodrop
| if(isEmpty(db_instance_id),cloud_instance_id,db_instance_id) as cloud.instance.id
| if(isEmpty(cloud.instance.id),"NA", cloud.instance.id) as cloud.instance.id

| parse field=eventSource "*." as cloud.service.name
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
```

**Cloud Infrastructure Security for AWS/Risk Overview/Cloud SIEM Insights**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight  insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
| json field=_raw "insight.severityName" as severity_name nodrop
```

**Cloud Infrastructure Security for AWS/Risk Overview/Config Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("StopConfigurationRecorder" or "DeleteDeliveryChannel" or "PutDeliveryChannel" or "PutConfigurationRecorder")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Risk Overview/Console Logins Without MFA**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ConsoleLogin
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name

| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=event_source "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Risk Overview/Disabled or Scheduled Deletion of CMKs**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("DisableKey" or "ScheduleKeyDeletion")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name

| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
```

**Cloud Infrastructure Security for AWS/Risk Overview/Failed Console Logins**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("ConsoleLogin" and "Failed authentication")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name

| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=event_source "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Risk Overview/Gateway Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("CreateCustomerGateway" or "DeleteCustomerGateway" or "AttachInternetGateway" or "CreateInternetGateway" or "DeleteInternetGateway" or "DetachInternetGateway")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name 

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user.name nodrop
```

**Cloud Infrastructure Security for AWS/Risk Overview/IAM Policy Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name 
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Risk Overview/Impossible Travel Events**
```
_sourceCategory={{CloudTrailLogsdatasource}} 
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name 

| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=event_source "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Risk Overview/Network ACL Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("CreateNetworkAcl" or "CreateNetworkAclEntry" or "DeleteNetworkAcl" or "DeleteNetworkAclEntry" or "ReplaceNetworkAclEntry" or "ReplaceNetworkAclAssociation")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name 

| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user.name nodrop
```

**Cloud Infrastructure Security for AWS/Risk Overview/Permissive S3 Buckets Created**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("PutBucketAcl" or "*FULL_CONTROL*")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name 

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Risk Overview/Root Account Logins**
```
_sourceCategory={{CloudTrailLogsdatasource}}  "Root"
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name

| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=event_source "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Risk Overview/Route Table Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("CreateRoute" or "CreateRouteTable" or "ReplaceRoute" or "ReplaceRouteTableAssociation" or "DeleteRouteTable" or "DeleteRoute" or "DisassociateRouteTable")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name 
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user.name nodrop
```

**Cloud Infrastructure Security for AWS/Risk Overview/S3 Bucket Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  (*BucketAcl or *BucketPolicy or *BucketCors or *BucketLifecycle)
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Risk Overview/Security Control Failures - AWS Security Hub**
```
_sourceCategory={{SecurityHubLogsdatasource}}  
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName", "Resources[0].Details.AwsIamAccessKey.UserName" as cloud.account.id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName, user.name nodrop

| if (isEmpty(user.name), "NA", user.name) as user.name
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type "*/*/*" as namespace, category, classifier
| replace(finding_type,"\\","") as finding_type
| replace(namespace,"\\","") as namespace
| replace(category,"\\","") as category
| replace(classifier,"\\","") as classifier

| if (severity_normalized == 0, 0, 0) as risk.static_level
| if (severity_normalized > 0 and severity_normalized <= 40, 1, risk.static_level) as risk.static_level
| if (severity_normalized > 40 and severity_normalized <= 70, 2, risk.static_level) as risk.static_level
| if (severity_normalized > 70 and severity_normalized <= 90, 3, risk.static_level) as risk.static_level
| if (severity_normalized > 90 and severity_normalized <= 100, 3, risk.static_level) as risk.static_level

| parse field=finding_type "*/*/*" as rule.ruleset, rule.category, rule.name
```

**Cloud Infrastructure Security for AWS/Risk Overview/Security Group Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("CreateSecurityGroup" or "DeleteSecurityGroup" or "RevokeSecurityGroupEgress" or "RevokeSecurityGroupIngress")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user.name nodrop
```

**Cloud Infrastructure Security for AWS/Risk Overview/Suspicious Blocked Source-Destination Pairs**
```
_sourceCategory={{NetworkFirewallLogsdatasource}}  
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "alert" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, alert nodrop
| where event.type="alert"
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
```

**Cloud Infrastructure Security for AWS/Risk Overview/Suspicious Blocked Web Requests**
```
_sourceCategory={{WAFLogsdatasource}}  
| json "httpRequest.httpMethod","httpRequest.httpVersion","httpRequest.uri","httpRequest.clientIp","httpRequest.country","action","matchingNonTerminatingRules","rateBasedRuleList","ruleGroupList","httpSourceId","httpSourceName","terminatingRuleType","terminatingRuleId","webaclId" as event.action,http_version,url.path,client.ip,country,event.outcome,matching_non_terminating_rules,rate_based_rule_list,rule_group_list,http_source_id,http_source_name,terminating_rule_type,terminating_rule_id,webacl_id nodrop
```

**Cloud Infrastructure Security for AWS/Risk Overview/Threats Count AWS API**
```
_sourceCategory={{CloudTrailLogsdatasource}}  sourceIPAddress !("s3.amazonaws.com")
| json "eventTime", "eventName", "eventSource", "awsRegion", "sourceIPAddress", "errorCode", "userAgent" as event_time, event.action, eventSource, cloud.region, client.ip, event.outcome, user_agent nodrop
| json "userIdentity.accountId", "userIdentity.type" as cloud.account.id, user_identity_type nodrop
| json field=_raw "requestParameters.dBInstanceIdentifier", "requestParameters.instancesSet.items[0].instanceId" as db_instance_id, cloud_instance_id nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name 

| parse "\"userName\":\"*\"" as user.name nodrop
| parse field=eventSource "*." as cloud.service.name
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user

| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=client.ip
| where type="ip_address"

| if (malicious_confidence = "low", 1, 0) as risk.static_level
| if (malicious_confidence = "medium", 2, risk.static_level) as risk.static_level
| if (malicious_confidence = "high", 3, risk.static_level) as risk.static_level

// handle empty values
| if(isEmpty(db_instance_id),cloud_instance_id,db_instance_id) as cloud.instance.id
| if(isEmpty(cloud.instance.id),"NA", cloud.instance.id) as cloud.instance.id
| if (isEmpty(event.outcome), "Success", event.outcome) as event.outcome
| if (isEmpty(user.name), "NA", user.name) as user.name
| if (isEmpty(actor), "Unassigned", actor) as actor
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id

// global filters
| where if ("{{cloud.account.id}}" = "*", true, cloud.account.id matches "{{cloud.account.id}}") AND if ("{{cloud.region}}" = "*", true, cloud.region matches "{{cloud.region}}") AND if ("{{cloud.instance.id}}" = "*", true, cloud.instance.id matches "{{cloud.instance.id}}") AND if ("{{client.ip}}" = "*", true, client.ip matches "{{client.ip}}") AND if ("{{user.name}}" = "*", true, user.name matches "{{user.name}}") AND if ("{{risk.static_level}}" = "*", true, risk.static_level >= toInt("{{risk.static_level}}")) AND if ("{{source.user}}" = "*", true, source.user matches "{{source.user}}")

| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated
| json field=raw "labels[*].name" as label_name nodrop
```

**Cloud Infrastructure Security for AWS/Risk Overview/Threats Count AWS Resources**
```
_sourceCategory={{GuardDutyLogsdatasource}}  
| json "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","severity","title","description", "vpcId", "subnetId", "groupId" , "tags", "groupName", "resource.instanceDetails", "resource.accessKeyDetails.userName" as cloud.account.id, cloud.region, partition, id, arn, type, service_name, detector_id, action, severity_level, title, description, vpcId, subnetId , securityGroupId, tags, securityGroupName, instanceDetails, user.name nodrop

| json field=instanceDetails "instanceId", "instanceType","networkInterfaces[0].publicIp" as instanceid, cloud.machine.type, server.ip
| json field=_raw "resource.resourceType" as resourceType
| json field=_raw "resource.s3BucketDetails[0].name" as bucketName nodrop
| if (resourceType = "S3Bucket", bucketName, instanceid) as cloud.instance.id

| json field=action "awsApiCallAction.remoteIpDetails.ipAddressV4", "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as awsCallActionIp, networkActionIp, localPort nodrop

| parse field=type "*:*/*" as threat.tactic.name,cloud.service.name,threat.technique.name 
```

**Cloud Infrastructure Security for AWS/Risk Overview/Threats Count AWS Storage**
```
_sourceCategory={{CloudTrailLogsdatasource}}  "s3.amazonaws.com"
| json "userIdentity", "eventTime", "eventSource", "eventName", "awsRegion", "sourceIPAddress", "userAgent", "errorCode", "requestParameters", "eventType" as userIdentity, event_time, eventSource, event.action, cloud.region, client.ip, user_agent, event.outcome, requestParameters, eventType nodrop
| where eventSource = "s3.amazonaws.com"
| json field=userIdentity "type", "accountId"as userType, cloud.account.id
| json field=requestParameters "bucketName" as cloud.instance.id
| parse field=eventSource "*." as cloud.service.name
| if (userType matches("IAMUser"), "user", "machine") as event.agent
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
```

**Cloud Infrastructure Security for AWS/Risk Overview/Unauthorized API Requests**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("AccessDenied" or "UnauthorizedOperation")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name

| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=event_source "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Risk Overview/VPC Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("CreateVpc" or "DeleteVpc" or "ModifyVpcAttribute" or *VpcPeeringConnection or *tachClassicLink or *ableVpcClassic)
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name 
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user.name nodrop
```

**Cloud Infrastructure Security for AWS/Route Table Changes/Route Table Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("CreateRoute" or "CreateRouteTable" or "ReplaceRoute" or "ReplaceRouteTableAssociation" or "DeleteRouteTable" or "DeleteRoute" or "DisassociateRouteTable")
| json "requestID","eventID","userIdentity.accountId","sourceIPAddress","awsRegion","eventName","eventType" as request_id, event_id,acc_id,source_ip,region,event_name,event_type nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
```

**Cloud Infrastructure Security for AWS/S3 Bucket Changes/S3 Bucket Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  (*BucketAcl or *BucketPolicy or *BucketCors or *BucketLifecycle)
| json "requestID","eventID","userIdentity.accountId","sourceIPAddress","awsRegion","eventName","eventType" as request_id, event_id,acc_id,source_ip,region,event_name,event_type nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
```

**Cloud Infrastructure Security for AWS/Security Control Failures - AWS Security Hub/Finding Count**
```
_sourceCategory={{SecurityHubLogsdatasource}}  
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName", "Resources[0].Details.AwsIamAccessKey.UserName" as cloud.account.id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName, user.name nodrop

| if (isEmpty(user.name), "NA", user.name) as user.name
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type "*/*/*" as namespace, category, classifier
| replace(finding_type,"\\","") as finding_type
| replace(namespace,"\\","") as namespace
| replace(category,"\\","") as category
| replace(classifier,"\\","") as classifier

| if (severity_normalized == 0, 0, 0) as risk.static_level
| if (severity_normalized > 0 and severity_normalized <= 40, 1, risk.static_level) as risk.static_level
| if (severity_normalized > 40 and severity_normalized <= 70, 2, risk.static_level) as risk.static_level
| if (severity_normalized > 70 and severity_normalized <= 90, 3, risk.static_level) as risk.static_level
| if (severity_normalized > 90 and severity_normalized <= 100, 3, risk.static_level) as risk.static_level

| parse field=finding_type "*/*/*" as rule.ruleset, rule.category, rule.name
```

**Cloud Infrastructure Security for AWS/Security Control Failures - AWS Security Hub/Findings by Category**
```
_sourceCategory={{SecurityHubLogsdatasource}}  
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName", "Resources[0].Details.AwsIamAccessKey.UserName" as cloud.account.id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName, user.name nodrop

| if (isEmpty(user.name), "NA", user.name) as user.name
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type "*/*/*" as namespace, category, classifier
| replace(finding_type,"\\","") as finding_type
| replace(namespace,"\\","") as namespace
| replace(category,"\\","") as category
| replace(classifier,"\\","") as classifier

| if (severity_normalized == 0, 0, 0) as risk.static_level
| if (severity_normalized > 0 and severity_normalized <= 40, 1, risk.static_level) as risk.static_level
| if (severity_normalized > 40 and severity_normalized <= 70, 2, risk.static_level) as risk.static_level
| if (severity_normalized > 70 and severity_normalized <= 90, 3, risk.static_level) as risk.static_level
| if (severity_normalized > 90 and severity_normalized <= 100, 3, risk.static_level) as risk.static_level

| parse field=finding_type "*/*/*" as rule.ruleset, rule.category, rule.name
```

**Cloud Infrastructure Security for AWS/Security Control Failures - AWS Security Hub/Findings by Resource**
```
_sourceCategory={{SecurityHubLogsdatasource}}  
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName", "Resources[0].Details.AwsIamAccessKey.UserName" as cloud.account.id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName, user.name nodrop

| if (isEmpty(user.name), "NA", user.name) as user.name
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type "*/*/*" as namespace, category, classifier
| replace(finding_type,"\\","") as finding_type
| replace(namespace,"\\","") as namespace
| replace(category,"\\","") as category
| replace(classifier,"\\","") as classifier

| if (severity_normalized == 0, 0, 0) as risk.static_level
| if (severity_normalized > 0 and severity_normalized <= 40, 1, risk.static_level) as risk.static_level
| if (severity_normalized > 40 and severity_normalized <= 70, 2, risk.static_level) as risk.static_level
| if (severity_normalized > 70 and severity_normalized <= 90, 3, risk.static_level) as risk.static_level
| if (severity_normalized > 90 and severity_normalized <= 100, 3, risk.static_level) as risk.static_level

| parse field=finding_type "*/*/*" as rule.ruleset, rule.category, rule.name
```

**Cloud Infrastructure Security for AWS/Security Control Failures - AWS Security Hub/Findings by Resource Type**
```
_sourceCategory={{SecurityHubLogsdatasource}}  
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName", "Resources[0].Details.AwsIamAccessKey.UserName" as cloud.account.id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName, user.name nodrop

| if (isEmpty(user.name), "NA", user.name) as user.name
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type "*/*/*" as namespace, category, classifier
| replace(finding_type,"\\","") as finding_type
| replace(namespace,"\\","") as namespace
| replace(category,"\\","") as category
| replace(classifier,"\\","") as classifier

| if (severity_normalized == 0, 0, 0) as risk.static_level
| if (severity_normalized > 0 and severity_normalized <= 40, 1, risk.static_level) as risk.static_level
| if (severity_normalized > 40 and severity_normalized <= 70, 2, risk.static_level) as risk.static_level
| if (severity_normalized > 70 and severity_normalized <= 90, 3, risk.static_level) as risk.static_level
| if (severity_normalized > 90 and severity_normalized <= 100, 3, risk.static_level) as risk.static_level

| parse field=finding_type "*/*/*" as rule.ruleset, rule.category, rule.name
```

**Cloud Infrastructure Security for AWS/Security Control Failures - AWS Security Hub/Findings Trend**
```
_sourceCategory={{SecurityHubLogsdatasource}}  
| json field=_raw "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status", "vpcId", "subnetId", "groupId" , "tags", "groupName", "Resources[0].Details.AwsIamAccessKey.UserName" as cloud.account.id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status ,vpcId, subnetId , securityGroupId, tags, securityGroupName, user.name nodrop

| if (isEmpty(user.name), "NA", user.name) as user.name
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id

| topk(1, updated_at) by finding_id
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse field=finding_type "*/*/*" as namespace, category, classifier
| replace(finding_type,"\\","") as finding_type
| replace(namespace,"\\","") as namespace
| replace(category,"\\","") as category
| replace(classifier,"\\","") as classifier

| if (severity_normalized == 0, 0, 0) as risk.static_level
| if (severity_normalized > 0 and severity_normalized <= 40, 1, risk.static_level) as risk.static_level
| if (severity_normalized > 40 and severity_normalized <= 70, 2, risk.static_level) as risk.static_level
| if (severity_normalized > 70 and severity_normalized <= 90, 3, risk.static_level) as risk.static_level
| if (severity_normalized > 90 and severity_normalized <= 100, 3, risk.static_level) as risk.static_level

| parse field=finding_type "*/*/*" as rule.ruleset, rule.category, rule.name
```

**Cloud Infrastructure Security for AWS/Security Group Changes/Security Group Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("CreateSecurityGroup" or "DeleteSecurityGroup" or "RevokeSecurityGroupEgress" or "RevokeSecurityGroupIngress")
| json "requestID","eventID","userIdentity.accountId","sourceIPAddress","awsRegion","eventName","eventType" as request_id, event_id,acc_id,source_ip,region,event_name,event_type nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
```

**Cloud Infrastructure Security for AWS/Suspicious Config and IAM Activity/Config Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("StopConfigurationRecorder" or "DeleteDeliveryChannel" or "PutDeliveryChannel" or "PutConfigurationRecorder")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Suspicious Config and IAM Activity/Disabled or Scheduled Deletion of CMK**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("DisableKey" or "ScheduleKeyDeletion")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Suspicious Config and IAM Activity/Disabled or Scheduled Deletion of CMKs**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("DisableKey" or "ScheduleKeyDeletion")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Suspicious Config and IAM Activity/Gateway Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("CreateCustomerGateway" or "DeleteCustomerGateway" or "AttachInternetGateway" or "CreateInternetGateway" or "DeleteInternetGateway" or "DetachInternetGateway")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user.name nodrop
```

**Cloud Infrastructure Security for AWS/Suspicious Config and IAM Activity/IAM Policy Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Suspicious Config and IAM Activity/Network ACL Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("CreateNetworkAcl" or "CreateNetworkAclEntry" or "DeleteNetworkAcl" or "DeleteNetworkAclEntry" or "ReplaceNetworkAclEntry" or "ReplaceNetworkAclAssociation")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user.name nodrop
```

**Cloud Infrastructure Security for AWS/Suspicious Config and IAM Activity/Permissive S3 Buckets Created**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("PutBucketAcl" or "*FULL_CONTROL*")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Suspicious Config and IAM Activity/Route Table Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("CreateRoute" or "CreateRouteTable" or "ReplaceRoute" or "ReplaceRouteTableAssociation" or "DeleteRouteTable" or "DeleteRoute" or "DisassociateRouteTable")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user.name nodrop
```

**Cloud Infrastructure Security for AWS/Suspicious Config and IAM Activity/S3 Bucket Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  (*BucketAcl or *BucketPolicy or *BucketCors or *BucketLifecycle)
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Suspicious Config and IAM Activity/S3 Bucket Permission Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  (*BucketAcl or *BucketPolicy or *BucketCors or *BucketLifecycle)
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Suspicious Config and IAM Activity/Security Group Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("CreateSecurityGroup" or "DeleteSecurityGroup" or "RevokeSecurityGroupEgress" or "RevokeSecurityGroupIngress")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user.name nodrop
```

**Cloud Infrastructure Security for AWS/Suspicious Config and IAM Activity/VPC Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("CreateVpc" or "DeleteVpc" or "ModifyVpcAttribute" or *VpcPeeringConnection or *tachClassicLink or *ableVpcClassic)
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,service_name,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=service_name "*." as cloud.service.name
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user.name nodrop
```

**Cloud Infrastructure Security for AWS/Suspicious Network Activity/Suspicious Blocked Destinations by Location**
```
_sourceCategory={{NetworkFirewallLogsdatasource}}  
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "alert" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, alert nodrop
| where event.type="alert"
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
```

**Cloud Infrastructure Security for AWS/Suspicious Network Activity/Suspicious Blocked Source-Destination Pairs**
```
_sourceCategory={{NetworkFirewallLogsdatasource}}  
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "alert" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, alert nodrop
| where event.type="alert"
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
```

**Cloud Infrastructure Security for AWS/Suspicious Network Activity/Suspicious Destinations by Traffic (Megabytes)**
```
_sourceCategory={{NetworkFirewallLogsdatasource}}  
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "app_proto", "netflow" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, app_proto, netflow nodrop
| where event.type="netflow"
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
| json field=netflow "bytes", "pkts" as network.bytes, packets nodrop
```

**Cloud Infrastructure Security for AWS/Suspicious Network Activity/Suspicious Megabytes Source-Destination Pairs**
```
_sourceCategory={{NetworkFirewallLogsdatasource}}  
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "app_proto", "netflow" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, app_proto, netflow nodrop
| where event.type="netflow"
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
| json field=netflow "bytes", "pkts" as network.bytes, packets nodrop
```

**Cloud Infrastructure Security for AWS/Suspicious Network Activity/Suspicious Traffic (Megabytes)**
```
_sourceCategory={{NetworkFirewallLogsdatasource}}  
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "app_proto", "netflow" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, app_proto, netflow nodrop
| where event.type="netflow"
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
| json field=netflow "bytes", "pkts" as network.bytes, packets nodrop
```

**Cloud Infrastructure Security for AWS/Suspicious Network Activity/Trend: Blocked Activity Percent**
```
_sourceCategory={{NetworkFirewallLogsdatasource}}  
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "alert" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, alert nodrop
| where event.type="alert"
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
```

**Cloud Infrastructure Security for AWS/Suspicious Network Activity/Trend: Suspicious Traffic (Megabytes)**
```
_sourceCategory={{NetworkFirewallLogsdatasource}}  
| json "firewall_name", "availability_zone", "event" as cloud.instance.name, cloud.availability_zone, event nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "app_proto", "netflow" as event.type, server.ip, server.port, client.ip, client.port, network.protocol, app_proto, netflow nodrop
| where event.type="netflow"
| json field=alert "severity", "signature", "action", "category" as risk.static_level, signature, event.outcome, category nodrop
| json field=netflow "bytes", "pkts" as network.bytes, packets nodrop
```

**Cloud Infrastructure Security for AWS/Suspicious User Activity/Console Logins from Risky Geo Locations**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ConsoleLogin
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=event_source "*." as cloud.service.name

// global filters
| where if ("{{user.name}}" = "*", true,user.name matches "{{user.name}}") AND if ("{{cloud.region}}" = "*", true, cloud.region matches "{{cloud.region}}") AND if ("{{cloud.account.id}}" = "*", true, cloud.account.id matches "{{cloud.account.id}}") AND if ("{{client.ip}}" = "*", true, client.ip matches "{{client.ip}}") AND if("{{source.user}}" = "*", true, source.user matches "{{source.user}}")

| where event.action matches("*ConsoleLogin*")

// z-score calculation
| timeslice 3h
| count as eventCount by client.ip, user.name, event.action, cloud.service.name, cloud.account.id, cloud.region, _timeslice
| sort + _timeslice
| rollingstd eventCount as eventCount_std by client.ip, user.name, event.action, cloud.service.name, cloud.account.id, cloud.region
| smooth eventCount as eventCount_mean by client.ip, user.name, event.action, cloud.service.name, cloud.account.id, cloud.region
| eventCount_std + 0.1 as eventCount_std
| (eventCount - eventCount_mean) / eventCount_std as zscore
| sort + _timeslice

| max(zscore) as max_zscore by client.ip, user.name, event.action, cloud.service.name, cloud.account.id, cloud.region
| round(max_zscore, 2) as max_zscore
| where if ("{{risk.static_level}}" = "*", true, max_zscore >= toInt("{{risk.static_level}}"))
| sort - max_zscore

| where isValidIPv4(client.ip) or isValidIPv6(client.ip)
| where !isNull(client.ip)
| if(isValidIPv4(client.ip), if(!isPrivateIP(client.ip),true,false),true) as is_public
| where is_public
| count as frequency by client.ip
| lookup latitude, longitude, country_code from geo://location on ip = client.ip
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code
```

**Cloud Infrastructure Security for AWS/Suspicious User Activity/Console Logins Without MFA**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ConsoleLogin
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=event_source "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Suspicious User Activity/Failed Console Logins**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("ConsoleLogin" and "Failed authentication")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=event_source "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Suspicious User Activity/Impossible Travel Events**
```
_sourceCategory={{CloudTrailLogsdatasource}} 
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=event_source "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Suspicious User Activity/Root Account Logins**
```
_sourceCategory={{CloudTrailLogsdatasource}}  "Root"
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=event_source "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Suspicious User Activity/Unauthorized API Requests**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("AccessDenied" or "UnauthorizedOperation")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=event_source "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Suspicious User Activity/Unauthorized AWS API Requests**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("AccessDenied" or "UnauthorizedOperation")
| json "eventName","sourceIPAddress","userIdentity.principalId","responseElements.ConsoleLogin","additionalEventData.MFAUsed" ,"eventSource","awsRegion","eventType","eventCategory","userIdentity.type","eventTime","requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission","errorCode","userIdentity.accountId","errorMessage" as event.action,client.ip,user_principal, login_result,mfa_used,event_source,cloud.region,event_type,event_category,user_identity_type,event_time,permission,error_code,cloud.account.id,error_message nodrop

| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
| if (user_name="", user_id, user_name) as user.name
| if(isEmpty(user.name), if(isEmpty(user_principal),"NA",user_principal), user.name) as user.name
| if (user_identity_type in ("IAMUser","Root"), "Yes", "No") as source.user
| if(isEmpty(cloud.account.id), "NA", cloud.account.id) as cloud.account.id
| parse field=event_source "*." as cloud.service.name
```

**Cloud Infrastructure Security for AWS/Suspicious Web Activity/Suspicious Blocked Web Requests**
```
_sourceCategory={{WAFLogsdatasource}}  
| json "httpRequest.httpMethod","httpRequest.httpVersion","httpRequest.uri","httpRequest.clientIp","httpRequest.country","action","matchingNonTerminatingRules","rateBasedRuleList","ruleGroupList","httpSourceId","httpSourceName","terminatingRuleType","terminatingRuleId","webaclId" as event.action,http_version,url.path,client.ip,country,event.outcome,matching_non_terminating_rules,rate_based_rule_list,rule_group_list,http_source_id,http_source_name,terminating_rule_type,terminating_rule_id,webacl_id nodrop
```

**Cloud Infrastructure Security for AWS/Suspicious Web Activity/Suspicious Blocked Web Requests by Location**
```
_sourceCategory={{WAFLogsdatasource}}  
| json "httpRequest.httpMethod","httpRequest.httpVersion","httpRequest.uri","httpRequest.clientIp","httpRequest.country","action","matchingNonTerminatingRules","rateBasedRuleList","ruleGroupList","httpSourceId","httpSourceName","terminatingRuleType","terminatingRuleId","webaclId" as event.action,http_version,url.path,client.ip,country,event.outcome,matching_non_terminating_rules,rate_based_rule_list,rule_group_list,http_source_id,http_source_name,terminating_rule_type,terminating_rule_id,webacl_id nodrop
```

**Cloud Infrastructure Security for AWS/Suspicious Web Activity/Trend: Blocked Web Requests Percent**
```
_sourceCategory={{WAFLogsdatasource}}  
| json "httpRequest.httpMethod","httpRequest.httpVersion","httpRequest.uri","httpRequest.clientIp","httpRequest.country","action","matchingNonTerminatingRules","rateBasedRuleList","ruleGroupList","httpSourceId","httpSourceName","terminatingRuleType","terminatingRuleId","webaclId" as event.action,http_version,url.path,client.ip,country,event.outcome,matching_non_terminating_rules,rate_based_rule_list,rule_group_list,http_source_id,http_source_name,terminating_rule_type,terminating_rule_id,webacl_id nodrop
```

**Cloud Infrastructure Security for AWS/VPC Changes/VPC Changes**
```
_sourceCategory={{CloudTrailLogsdatasource}}  ("CreateVpc" or "DeleteVpc" or "ModifyVpcAttribute" or *VpcPeeringConnection or *tachClassicLink or *ableVpcClassic)
| json "requestID","eventID","userIdentity.accountId","sourceIPAddress","awsRegion","eventName","eventType" as request_id, event_id,acc_id,source_ip,region,event_name,event_type nodrop
| parse regex "\"(?i)userName\":\"(?<user_name>.*?)\"" nodrop
| parse "\"userId\":\"*\"" as user_id nodrop
```


