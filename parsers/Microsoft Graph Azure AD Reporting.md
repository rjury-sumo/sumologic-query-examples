# Parsers For Microsoft Graph Azure AD Reporting

**Microsoft Graph Azure AD Reporting/Audits/Audits by Initiators**
```
_sourceCategory={{Logsdatasource}}   "activityDisplayName" "operationType"
| json "id","activityDisplayName","category","loggedByService","operationType","result","resultReason","targetResources[*].type","initiatedBy.user","initiatedBy.app" as id,activity,category,logged_by_service,operation_type,operation_result,result_reason,target_resource_type,is_user_initiator,is_app_initiator nodrop
```

**Microsoft Graph Azure AD Reporting/Audits/Audits by Operations**
```
_sourceCategory={{Logsdatasource}}   "activityDisplayName" "operationType"
| json "id","activityDisplayName","category","loggedByService","operationType","result","resultReason","targetResources[*].type","initiatedBy.user","initiatedBy.app" as id,activity,category,logged_by_service,operation_type,operation_result,result_reason,target_resource_type,is_user_initiator,is_app_initiator nodrop
```

**Microsoft Graph Azure AD Reporting/Audits/Audits by Resource Categories**
```
_sourceCategory={{Logsdatasource}}   "activityDisplayName" "operationType"
| json "id","activityDisplayName","category","loggedByService","operationType","result","resultReason","targetResources[*].type","initiatedBy.user","initiatedBy.app" as id,activity,category,logged_by_service,operation_type,operation_result,result_reason,target_resource_type,is_user_initiator,is_app_initiator nodrop
```

**Microsoft Graph Azure AD Reporting/Audits/Audits by Services**
```
_sourceCategory={{Logsdatasource}}   "activityDisplayName" "operationType"
| json "id","activityDisplayName","category","loggedByService","operationType","result","resultReason","targetResources[*].type","initiatedBy.user","initiatedBy.app" as id,activity,category,logged_by_service,operation_type,operation_result,result_reason,target_resource_type,is_user_initiator,is_app_initiator nodrop
```

**Microsoft Graph Azure AD Reporting/Audits/Categories by Operations**
```
_sourceCategory={{Logsdatasource}}   "activityDisplayName" "operationType"
| json "id","activityDisplayName","category","loggedByService","operationType","result","resultReason","targetResources[*].type","initiatedBy.user","initiatedBy.app" as id,activity,category,logged_by_service,operation_type,operation_result,result_reason,target_resource_type,is_user_initiator,is_app_initiator nodrop
```

**Microsoft Graph Azure AD Reporting/Audits/Failure Reasons**
```
_sourceCategory={{Logsdatasource}}   "activityDisplayName" "operationType"
| json "id","activityDisplayName","category","loggedByService","operationType","result","resultReason","targetResources[*].type","initiatedBy.user","initiatedBy.app" as id,activity,category,logged_by_service,operation_type,operation_result,result_reason,target_resource_type,is_user_initiator,is_app_initiator nodrop
```

**Microsoft Graph Azure AD Reporting/Audits/Operations by Result**
```
_sourceCategory={{Logsdatasource}}   "activityDisplayName" "operationType"
| json "id","activityDisplayName","category","loggedByService","operationType","result","resultReason","targetResources[*].type","initiatedBy.user","initiatedBy.app" as id,activity,category,logged_by_service,operation_type,operation_result,result_reason,target_resource_type,is_user_initiator,is_app_initiator nodrop
```

**Microsoft Graph Azure AD Reporting/Audits/Recent Audits**
```
_sourceCategory={{Logsdatasource}}   "activityDisplayName" "operationType"
| json "id","activityDisplayName","category","loggedByService","operationType","result","resultReason","targetResources[*].type","initiatedBy.user","initiatedBy.app" as id,activity,category,logged_by_service,operation_type,operation_result,result_reason,target_resource_type,is_user_initiator,is_app_initiator nodrop
```

**Microsoft Graph Azure AD Reporting/Audits/Target Resource Types**
```
_sourceCategory={{Logsdatasource}}   "activityDisplayName" "operationType"
| json "id","activityDisplayName","category","loggedByService","operationType","result","resultReason","targetResources[*].type","initiatedBy.user","initiatedBy.app" as id,activity,category,logged_by_service,operation_type,operation_result,result_reason,target_resource_type,is_user_initiator,is_app_initiator nodrop
| where category matches "{{resource_category}}"
| where logged_by_service matches"{{service}}"
| where operation_result matches "{{operation_result}}"
| where operation_type matches "{{operation_type}}"
| if (isNull(is_user_initiator),"app","user") as initiator
| where initiator matches "{{initiator}}"
| extract field=target_resource_type "\"?(?<multi_target_resource_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
```

**Microsoft Graph Azure AD Reporting/Provisioning Activities/Average Provisioning Activity Time**
```
_sourceCategory={{Logsdatasource}}   "provisioningAction" "provisioningSteps" "provisioningStatusInfo"
| json "id","provisioningStatusInfo.status","provisioningAction","durationInMilliseconds","initiatedBy.initiatingType","servicePrincipal.displayName","sourceIdentity.identityType","sourceSystem.displayName","targetIdentity.identityType","targetSystem.displayName" as id,provisioning_status,provisioning_action,duration_in_ms,initiated_by,service_principal,source_identity_type,source_system,target_identity_type,target_system_name nodrop
```

**Microsoft Graph Azure AD Reporting/Provisioning Activities/Provisioning Actions by Status**
```
_sourceCategory={{Logsdatasource}}   "provisioningAction" "provisioningSteps" "provisioningStatusInfo"
| json "id","provisioningStatusInfo.status","provisioningAction","durationInMilliseconds","initiatedBy.initiatingType","servicePrincipal.displayName","sourceIdentity.identityType","sourceSystem.displayName","targetIdentity.identityType","targetSystem.displayName" as id,provisioning_status,provisioning_action,duration_in_ms,initiated_by,service_principal,source_identity_type,source_system,target_identity_type,target_system_name nodrop
```

**Microsoft Graph Azure AD Reporting/Provisioning Activities/Provisioning Activities by Action**
```
_sourceCategory={{Logsdatasource}}   "provisioningAction" "provisioningSteps" "provisioningStatusInfo"
| json "id","provisioningStatusInfo.status","provisioningAction","durationInMilliseconds","initiatedBy.initiatingType","servicePrincipal.displayName","sourceIdentity.identityType","sourceSystem.displayName","targetIdentity.identityType","targetSystem.displayName" as id,provisioning_status,provisioning_action,duration_in_ms,initiated_by,service_principal,source_identity_type,source_system,target_identity_type,target_system_name nodrop
```

**Microsoft Graph Azure AD Reporting/Provisioning Activities/Provisioning Activities by Initiator**
```
_sourceCategory={{Logsdatasource}}   "provisioningAction" "provisioningSteps" "provisioningStatusInfo"
| json "id","provisioningStatusInfo.status","provisioningAction","durationInMilliseconds","initiatedBy.initiatingType","servicePrincipal.displayName","sourceIdentity.identityType","sourceSystem.displayName","targetIdentity.identityType","targetSystem.displayName" as id,provisioning_status,provisioning_action,duration_in_ms,initiated_by,service_principal,source_identity_type,source_system,target_identity_type,target_system_name nodrop
```

**Microsoft Graph Azure AD Reporting/Provisioning Activities/Provisioning Activities by Status**
```
_sourceCategory={{Logsdatasource}}   "provisioningAction" "provisioningSteps" "provisioningStatusInfo"
| json "id","provisioningStatusInfo.status","provisioningAction","durationInMilliseconds","initiatedBy.initiatingType","servicePrincipal.displayName","sourceIdentity.identityType","sourceSystem.displayName","targetIdentity.identityType","targetSystem.displayName" as id,provisioning_status,provisioning_action,duration_in_ms,initiated_by,service_principal,source_identity_type,source_system,target_identity_type,target_system_name nodrop
```

**Microsoft Graph Azure AD Reporting/Provisioning Activities/Recent Provisioning Activities**
```
_sourceCategory={{Logsdatasource}}   "provisioningAction" "provisioningSteps" "provisioningStatusInfo"
| json "id","provisioningStatusInfo.status","provisioningAction","durationInMilliseconds","initiatedBy.initiatingType","servicePrincipal.displayName","sourceIdentity.identityType","sourceSystem.displayName","targetIdentity.identityType","targetSystem.displayName" as id,provisioning_status,provisioning_action,duration_in_ms,initiated_by,service_principal,source_identity_type,source_system,target_identity_type,target_system_name nodrop
```

**Microsoft Graph Azure AD Reporting/Provisioning Activities/Top 10 Service Principals**
```
_sourceCategory={{Logsdatasource}}   "provisioningAction" "provisioningSteps" "provisioningStatusInfo"
| json "id","provisioningStatusInfo.status","provisioningAction","durationInMilliseconds","initiatedBy.initiatingType","servicePrincipal.displayName","sourceIdentity.identityType","sourceSystem.displayName","targetIdentity.identityType","targetSystem.displayName" as id,provisioning_status,provisioning_action,duration_in_ms,initiated_by,service_principal,source_identity_type,source_system,target_identity_type,target_system_name nodrop
```

**Microsoft Graph Azure AD Reporting/Sign-Ins/Client Apps Used for Sign-Ins**
```
_sourceCategory={{Logsdatasource}}   "appDisplayName" "clientAppUsed" "ipAddress" "resourceId"
| json "id","ipAddress","clientAppUsed","isInteractive","resourceDisplayName","riskDetail","riskEventTypes","riskLevelAggregated","riskState","status.failureReason","conditionalAccessStatus" as id, ip,client_app_used,is_interactive,resource,risk_reason,risk_event_types,risk_level,risk_state,failure_reason,conditional_activity_status nodrop
```

**Microsoft Graph Azure AD Reporting/Sign-Ins/Geo Locations of Sign-Ins**
```
_sourceCategory={{Logsdatasource}}   "appDisplayName" "clientAppUsed" "ipAddress" "resourceId"
| json "id","ipAddress","clientAppUsed","isInteractive","resourceDisplayName","riskDetail","riskEventTypes","riskLevelAggregated","riskState","status.failureReason","conditionalAccessStatus" as id, ip,client_app_used,is_interactive,resource,risk_reason,risk_event_types,risk_level,risk_state,failure_reason,conditional_activity_status nodrop
```

**Microsoft Graph Azure AD Reporting/Sign-Ins/Interactive Users Ratio**
```
_sourceCategory={{Logsdatasource}}   "appDisplayName" "clientAppUsed" "ipAddress" "resourceId"
| json "id","ipAddress","clientAppUsed","isInteractive","resourceDisplayName","riskDetail","riskEventTypes","riskLevelAggregated","riskState","status.failureReason","conditionalAccessStatus" as id, ip,client_app_used,is_interactive,resource,risk_reason,risk_event_types,risk_level,risk_state,failure_reason,conditional_activity_status nodrop
```

**Microsoft Graph Azure AD Reporting/Sign-Ins/Recent Sign-Ins**
```
_sourceCategory={{Logsdatasource}}   "appDisplayName" "clientAppUsed" "ipAddress" "resourceId"
| json "id","ipAddress","clientAppUsed","isInteractive","resourceDisplayName","riskDetail","riskEventTypes","riskLevelAggregated","riskState","status.failureReason","conditionalAccessStatus","userDisplayName" as id, ip,client_app_used,is_interactive,resource,risk_reason,risk_event_types,risk_level,risk_state,failure_reason,conditional_activity_status,user_display_name nodrop
```

**Microsoft Graph Azure AD Reporting/Sign-Ins/Risky Event Types**
```
_sourceCategory={{Logsdatasource}}   "appDisplayName" "clientAppUsed" "ipAddress" "resourceId"
| json "id","ipAddress","clientAppUsed","isInteractive","resourceDisplayName","riskDetail","riskEventTypes","riskLevelAggregated","riskState","status.failureReason","conditionalAccessStatus" as id, ip,client_app_used,is_interactive,resource,risk_reason,risk_event_types,risk_level,risk_state,failure_reason,conditional_activity_status nodrop
| where risk_reason matches "{{risk_reason}}"
| where risk_level matches "{{risk_level}}"
| where risk_state matches "{{risk_state}}"
| where client_app_used matches "{{client_app_used}}"
| where conditional_activity_status matches "{{conditional_access_policy_status}}"
| if(isNull(failure_reason) or isBlank(failure_reason),"false","true") as sign_in_failed
| where sign_in_failed matches "{{sign_in_failed}}"
| extract field=risk_event_types "\"?(?<risk_event_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
```

**Microsoft Graph Azure AD Reporting/Sign-Ins/Risky Sign-In Reasons**
```
_sourceCategory={{Logsdatasource}}   "appDisplayName" "clientAppUsed" "ipAddress" "resourceId"
| json "id","ipAddress","clientAppUsed","isInteractive","resourceDisplayName","riskDetail","riskEventTypes","riskLevelAggregated","riskState","status.failureReason","conditionalAccessStatus" as id, ip,client_app_used,is_interactive,resource,risk_reason,risk_event_types,risk_level,risk_state,failure_reason,conditional_activity_status nodrop
```

**Microsoft Graph Azure AD Reporting/Sign-Ins/Sign-Ins**
```
_sourceCategory={{Logsdatasource}}   "appDisplayName" "clientAppUsed" "ipAddress" "resourceId"
| json "id","ipAddress","clientAppUsed","isInteractive","resourceDisplayName","riskDetail","riskEventTypes","riskLevelAggregated","riskState","status.failureReason","conditionalAccessStatus" as id, ip,client_app_used,is_interactive,resource,risk_reason,risk_event_types,risk_level,risk_state,failure_reason,conditional_activity_status nodrop
```

**Microsoft Graph Azure AD Reporting/Sign-Ins/Sign-Ins by Conditional Access Policy Status**
```
_sourceCategory={{Logsdatasource}}   "appDisplayName" "clientAppUsed" "ipAddress" "resourceId"
| json "id","ipAddress","clientAppUsed","isInteractive","resourceDisplayName","riskDetail","riskEventTypes","riskLevelAggregated","riskState","status.failureReason","conditionalAccessStatus" as id, ip,client_app_used,is_interactive,resource,risk_reason,risk_event_types,risk_level,risk_state,failure_reason,conditional_activity_status nodrop
```

**Microsoft Graph Azure AD Reporting/Sign-Ins/Sign-Ins by Risk Level**
```
_sourceCategory={{Logsdatasource}}   "appDisplayName" "clientAppUsed" "ipAddress" "resourceId"
| json "id","ipAddress","clientAppUsed","isInteractive","resourceDisplayName","riskDetail","riskEventTypes","riskLevelAggregated","riskState","status.failureReason","conditionalAccessStatus" as id, ip,client_app_used,is_interactive,resource,risk_reason,risk_event_types,risk_level,risk_state,failure_reason,conditional_activity_status nodrop
```

**Microsoft Graph Azure AD Reporting/Sign-Ins/Sign-Ins by Risk State**
```
_sourceCategory={{Logsdatasource}}   "appDisplayName" "clientAppUsed" "ipAddress" "resourceId"
| json "id","ipAddress","clientAppUsed","isInteractive","resourceDisplayName","riskDetail","riskEventTypes","riskLevelAggregated","riskState","status.failureReason","conditionalAccessStatus" as id, ip,client_app_used,is_interactive,resource,risk_reason,risk_event_types,risk_level,risk_state,failure_reason,conditional_activity_status nodrop
```

**Microsoft Graph Azure AD Reporting/Sign-Ins/Sign-Ins from Risky Countries**
```
_sourceCategory={{Logsdatasource}}   "appDisplayName" "clientAppUsed" "ipAddress" "resourceId"
| json "id","ipAddress","clientAppUsed","isInteractive","resourceDisplayName","riskDetail","riskEventTypes","riskLevelAggregated","riskState","status.failureReason","conditionalAccessStatus" as id, ip,client_app_used,is_interactive,resource,risk_reason,risk_event_types,risk_level,risk_state,failure_reason,conditional_activity_status nodrop
| where risk_reason matches "{{risk_reason}}"
| where risk_level matches "{{risk_level}}"
| where risk_state matches "{{risk_state}}"
| where client_app_used matches "{{client_app_used}}"
| where conditional_activity_status matches "{{conditional_access_policy_status}}"
| if(isNull(failure_reason) or isBlank(failure_reason),"false","true") as sign_in_failed
| where sign_in_failed matches "{{sign_in_failed}}"
| where isValidIPv4(ip) or isValidIPv6(ip)
| where !isNull(ip)
| if(isValidIPv4(ip), if(!isPrivateIP(ip),true,false),true) as is_public
| where is_public
| count_distinct(id) as frequency by ip
| lookup latitude, longitude, country_code from geo://location on ip = ip 
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code 
```

**Microsoft Graph Azure AD Reporting/Sign-Ins/Sign-Ins Over Time**
```
_sourceCategory={{Logsdatasource}}   "appDisplayName" "clientAppUsed" "ipAddress" "resourceId"
| json "id","ipAddress","clientAppUsed","isInteractive","resourceDisplayName","riskDetail","riskEventTypes","riskLevelAggregated","riskState","status.failureReason","conditionalAccessStatus" as id, ip,client_app_used,is_interactive,resource,risk_reason,risk_event_types,risk_level,risk_state,failure_reason,conditional_activity_status nodrop
```

**Microsoft Graph Azure AD Reporting/Sign-Ins/Top 10 Resources**
```
_sourceCategory={{Logsdatasource}}   "appDisplayName" "clientAppUsed" "ipAddress" "resourceId"
| json "id","ipAddress","clientAppUsed","isInteractive","resourceDisplayName","riskDetail","riskEventTypes","riskLevelAggregated","riskState","status.failureReason","conditionalAccessStatus" as id, ip,client_app_used,is_interactive,resource,risk_reason,risk_event_types,risk_level,risk_state,failure_reason,conditional_activity_status nodrop
```


