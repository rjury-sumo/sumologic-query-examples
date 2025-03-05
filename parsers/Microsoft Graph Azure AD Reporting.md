# Parsers For Microsoft Graph Azure AD Reporting

## Parser:
```
| json "id","activityDisplayName","category","loggedByService","operationType","result","resultReason","targetResources[*].type","initiatedBy.user","initiatedBy.app" as id,activity,category,logged_by_service,operation_type,operation_result,result_reason,target_resource_type,is_user_initiator,is_app_initiator nodrop
 
```
### Use Cases:
Audits by Initiators, Audits by Operations, Audits by Resource Categories, Audits by Services, Categories by Operations, Failure Reasons, Operations by Result, Recent Audits, Target Resource Types



## Parser:
```
| json "id","activityDisplayName","category","loggedByService","operationType","result","resultReason","targetResources[*].type","initiatedBy.user","initiatedBy.app" as id,activity,category,logged_by_service,operation_type,operation_result,result_reason,target_resource_type,is_user_initiator,is_app_initiator nodrop
| extract field=target_resource_type "\"?(?<multi_target_resource_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
 
```
### Use Cases:
Audits by Operations, Audits by Resource Categories, Audits by Services, Categories by Operations, Target Resource Types



## Parser:
```
| json "id","ipAddress","clientAppUsed","isInteractive","resourceDisplayName","riskDetail","riskEventTypes","riskLevelAggregated","riskState","status.failureReason","conditionalAccessStatus" as id, ip,client_app_used,is_interactive,resource,risk_reason,risk_event_types,risk_level,risk_state,failure_reason,conditional_activity_status nodrop
 
```
### Use Cases:
Audits by Initiators, Audits by Operations, Audits by Resource Categories, Audits by Services, Average Provisioning Activity Time, Categories by Operations, Client Apps Used for Sign-Ins, Failure Reasons, Geo Locations of Sign-Ins, Interactive Users Ratio, Operations by Result, Provisioning Actions by Status, Provisioning Activities by Action, Provisioning Activities by Initiator, Provisioning Activities by Status, Recent Audits, Recent Provisioning Activities, Recent Sign-Ins, Risky Event Types, Risky Sign-In Reasons, Sign-Ins, Sign-Ins by Conditional Access Policy Status, Sign-Ins by Risk Level, Sign-Ins by Risk State, Sign-Ins from Risky Countries, Sign-Ins Over Time, Target Resource Types, Top 10 Resources, Top 10 Service Principals



## Parser:
```
| json "id","ipAddress","clientAppUsed","isInteractive","resourceDisplayName","riskDetail","riskEventTypes","riskLevelAggregated","riskState","status.failureReason","conditionalAccessStatus" as id, ip,client_app_used,is_interactive,resource,risk_reason,risk_event_types,risk_level,risk_state,failure_reason,conditional_activity_status nodrop
| extract field=risk_event_types "\"?(?<risk_event_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
 
```
### Use Cases:
Audits by Initiators, Audits by Operations, Audits by Resource Categories, Audits by Services, Average Provisioning Activity Time, Categories by Operations, Failure Reasons, Operations by Result, Provisioning Actions by Status, Provisioning Activities by Action, Provisioning Activities by Initiator, Provisioning Activities by Status, Recent Audits, Recent Provisioning Activities, Risky Event Types, Target Resource Types, Top 10 Service Principals



## Parser:
```
| json "id","ipAddress","clientAppUsed","isInteractive","resourceDisplayName","riskDetail","riskEventTypes","riskLevelAggregated","riskState","status.failureReason","conditionalAccessStatus","userDisplayName" as id, ip,client_app_used,is_interactive,resource,risk_reason,risk_event_types,risk_level,risk_state,failure_reason,conditional_activity_status,user_display_name nodrop
 
```
### Use Cases:
Audits by Initiators, Audits by Operations, Audits by Resource Categories, Audits by Services, Average Provisioning Activity Time, Categories by Operations, Client Apps Used for Sign-Ins, Failure Reasons, Geo Locations of Sign-Ins, Interactive Users Ratio, Operations by Result, Provisioning Actions by Status, Provisioning Activities by Action, Provisioning Activities by Initiator, Provisioning Activities by Status, Recent Audits, Recent Provisioning Activities, Recent Sign-Ins, Risky Event Types, Risky Sign-In Reasons, Sign-Ins, Sign-Ins by Conditional Access Policy Status, Sign-Ins by Risk Level, Sign-Ins by Risk State, Sign-Ins from Risky Countries, Target Resource Types, Top 10 Service Principals



## Parser:
```
| json "id","provisioningStatusInfo.status","provisioningAction","durationInMilliseconds","initiatedBy.initiatingType","servicePrincipal.displayName","sourceIdentity.identityType","sourceSystem.displayName","targetIdentity.identityType","targetSystem.displayName" as id,provisioning_status,provisioning_action,duration_in_ms,initiated_by,service_principal,source_identity_type,source_system,target_identity_type,target_system_name nodrop
 
```
### Use Cases:
Audits by Initiators, Audits by Operations, Audits by Resource Categories, Audits by Services, Average Provisioning Activity Time, Categories by Operations, Failure Reasons, Operations by Result, Provisioning Actions by Status, Provisioning Activities by Action, Provisioning Activities by Initiator, Provisioning Activities by Status, Recent Audits, Recent Provisioning Activities, Target Resource Types, Top 10 Service Principals


