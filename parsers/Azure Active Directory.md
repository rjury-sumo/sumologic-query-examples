# Parsers For Azure Active Directory

**Azure Active Directory/Application Management - New/Application Management Events - Outlier**
```
_sourceCategory = Labs/Azure/AD "ApplicationManagement" 
| json field=_raw "operationName" as operationName nodrop
| json field=_raw "time" nodrop
| json field=_raw "category" as category  nodrop
| json field=_raw "Level" as level nodrop
| json field=_raw "callerIpAddress" as ip_addr nodrop
| json field=_raw "resultType" as resultType nodrop
| json field=_raw "properties.auditEventCategory" as auditEventCategory nodrop
| json field=_raw "properties.targetResourceName" as targetResourceName nodrop
| json field=_raw "properties.targetResourceType" as targetResourceType nodrop
| json field=_raw "tenantId" as tenantId nodrop
| json field=_raw "correlationId" as correlationId nodrop
| json field=_raw "identity" as identity nodrop
| json field=_raw "properties.additionalTargets" as additionalTargets  nodrop
| json field=_raw "resultDescription" as resultDescription nodrop
| json field=_raw "properties.targetUpdatedProperties" as updated_properties nodrop
```

**Azure Active Directory/Application Management - New/Applications Added or Updated**
```
_sourceCategory = Labs/Azure/AD "ApplicationManagement" ("Add application" or "Update application")
| json field=_raw "operationName" as operationName nodrop
| json field=_raw "time" nodrop
| json field=_raw "category" as category  nodrop
| json field=_raw "Level" as level nodrop
| json field=_raw "callerIpAddress" as ip_addr nodrop
| json field=_raw "resultType" as resultType nodrop
| json field=_raw "properties.auditEventCategory" as auditEventCategory nodrop
| json field=_raw "properties.targetResourceName" as targetResourceName nodrop
| json field=_raw "properties.targetResourceType" as targetResourceType nodrop
| json field=_raw "tenantId" as tenantId nodrop
| json field=_raw "correlationId" as correlationId nodrop
| json field=_raw "identity" as identity nodrop
| json field=_raw "properties.additionalTargets" as additionalTargets  nodrop
| json field=_raw "resultDescription" as resultDescription nodrop
| json field=_raw "properties.targetUpdatedProperties" as updated_properties nodrop
```

**Azure Active Directory/Application Management - New/Breakdown by Results**
```
_sourceCategory = Labs/Azure/AD "ApplicationManagement" 
| json field=_raw "operationName" as operationName nodrop
| json field=_raw "time" nodrop
| json field=_raw "category" as category  nodrop
| json field=_raw "Level" as level nodrop
| json field=_raw "callerIpAddress" as ip_addr nodrop
| json field=_raw "resultType" as resultType nodrop
| json field=_raw "properties.auditEventCategory" as auditEventCategory nodrop
| json field=_raw "properties.targetResourceName" as targetResourceName nodrop
| json field=_raw "properties.targetResourceType" as targetResourceType nodrop
| json field=_raw "tenantId" as tenantId nodrop
| json field=_raw "correlationId" as correlationId nodrop
| json field=_raw "identity" as identity nodrop
| json field=_raw "properties.additionalTargets" as additionalTargets  nodrop
| json field=_raw "resultDescription" as resultDescription nodrop
| json field=_raw "properties.targetUpdatedProperties" as updated_properties nodrop
```

**Azure Active Directory/Application Management - New/Consent Given to Application**
```
_sourceCategory = Labs/Azure/AD "ApplicationManagement" ("Consent to application")
| json field=_raw "operationName" as operationName nodrop
| json field=_raw "time" nodrop
| json field=_raw "category" as category  nodrop
| json field=_raw "Level" as level nodrop
| json field=_raw "callerIpAddress" as ip_addr nodrop
| json field=_raw "resultType" as resultType nodrop
| json field=_raw "properties.auditEventCategory" as auditEventCategory nodrop
| json field=_raw "properties.targetResourceName" as targetResourceName nodrop
| json field=_raw "properties.targetResourceType" as targetResourceType nodrop
| json field=_raw "tenantId" as tenantId nodrop
| json field=_raw "correlationId" as correlationId nodrop
| json field=_raw "identity" as identity nodrop
| json field=_raw "properties.additionalTargets" as additionalTargets  nodrop
| json field=_raw "resultDescription" as resultDescription nodrop
| json field=_raw "properties.targetUpdatedProperties" as updated_properties nodrop
```

**Azure Active Directory/Application Management - New/Deleted Applications**
```
_sourceCategory = Labs/Azure/AD "ApplicationManagement" ("Delete application")
| json field=_raw "operationName" as operationName nodrop
| json field=_raw "time" nodrop
| json field=_raw "category" as category  nodrop
| json field=_raw "Level" as level nodrop
| json field=_raw "callerIpAddress" as ip_addr nodrop
| json field=_raw "resultType" as resultType nodrop
| json field=_raw "properties.auditEventCategory" as auditEventCategory nodrop
| json field=_raw "properties.targetResourceName" as targetResourceName nodrop
| json field=_raw "properties.targetResourceType" as targetResourceType nodrop
| json field=_raw "tenantId" as tenantId nodrop
| json field=_raw "correlationId" as correlationId nodrop
| json field=_raw "identity" as identity nodrop
| json field=_raw "properties.additionalTargets" as additionalTargets  nodrop
| json field=_raw "resultDescription" as resultDescription nodrop
| json field=_raw "properties.targetUpdatedProperties" as updated_properties nodrop
```

**Azure Active Directory/Application Management - New/Failed Events**
```
_sourceCategory = Labs/Azure/AD "ApplicationManagement" (fail* or Fail* or error or Error or Excep* or excep*)
| json field=_raw "operationName" as operationName nodrop
| json field=_raw "time" nodrop
| json field=_raw "category" as category  nodrop
| json field=_raw "Level" as level nodrop
| json field=_raw "callerIpAddress" as ip_addr nodrop
| json field=_raw "resultType" as resultType nodrop
| json field=_raw "properties.auditEventCategory" as auditEventCategory nodrop
| json field=_raw "properties.targetResourceName" as targetResourceName nodrop
| json field=_raw "properties.targetResourceType" as targetResourceType nodrop
| json field=_raw "tenantId" as tenantId nodrop
| json field=_raw "correlationId" as correlationId nodrop
| json field=_raw "identity" as identity nodrop
| json field=_raw "properties.additionalTargets" as additionalTargets  nodrop
| json field=_raw "resultDescription" as resultDescription nodrop
| json field=_raw "properties.targetUpdatedProperties" as updated_properties nodrop
```

**Azure Active Directory/Application Management - New/Operation Name**
```
_sourceCategory = Labs/Azure/AD "ApplicationManagement"
| json field=_raw "operationName" as operationName nodrop
| json field=_raw "time" nodrop
| json field=_raw "category" as category  nodrop
| json field=_raw "Level" as level nodrop
| json field=_raw "callerIpAddress" as ip_addr nodrop
| json field=_raw "resultType" as resultType nodrop
| json field=_raw "properties.auditEventCategory" as auditEventCategory nodrop
| json field=_raw "properties.targetResourceName" as targetResourceName nodrop
| json field=_raw "properties.targetResourceType" as targetResourceType nodrop
| json field=_raw "tenantId" as tenantId nodrop
| json field=_raw "correlationId" as correlationId nodrop
| json field=_raw "identity" as identity nodrop
| json field=_raw "properties.additionalTargets" as additionalTargets  nodrop
| json field=_raw "resultDescription" as resultDescription nodrop
| json field=_raw "properties.targetUpdatedProperties" as updated_properties nodrop
```

**Azure Active Directory/Application Management - New/Operation Name - One Day Time Comparison**
```
_sourceCategory = Labs/Azure/AD "ApplicationManagement"
| json field=_raw "operationName" as operationName nodrop
| json field=_raw "time" nodrop
| json field=_raw "category" as category  nodrop
| json field=_raw "Level" as level nodrop
| json field=_raw "callerIpAddress" as ip_addr nodrop
| json field=_raw "resultType" as resultType nodrop
| json field=_raw "properties.auditEventCategory" as auditEventCategory nodrop
| json field=_raw "properties.targetResourceName" as targetResourceName nodrop
| json field=_raw "properties.targetResourceType" as targetResourceType nodrop
| json field=_raw "tenantId" as tenantId nodrop
| json field=_raw "correlationId" as correlationId nodrop
| json field=_raw "identity" as identity nodrop
| json field=_raw "properties.additionalTargets" as additionalTargets  nodrop
| json field=_raw "resultDescription" as resultDescription nodrop
| json field=_raw "properties.targetUpdatedProperties" as updated_properties nodrop
```

**Azure Active Directory/Application Management - New/Operation Name Over Time**
```
_sourceCategory = Labs/Azure/AD "ApplicationManagement"
| json field=_raw "operationName" as operationName nodrop
| json field=_raw "time" nodrop
| json field=_raw "category" as category  nodrop
| json field=_raw "Level" as level nodrop
| json field=_raw "callerIpAddress" as ip_addr nodrop
| json field=_raw "resultType" as resultType nodrop
| json field=_raw "properties.auditEventCategory" as auditEventCategory nodrop
| json field=_raw "properties.targetResourceName" as targetResourceName nodrop
| json field=_raw "properties.targetResourceType" as targetResourceType nodrop
| json field=_raw "tenantId" as tenantId nodrop
| json field=_raw "correlationId" as correlationId nodrop
| json field=_raw "identity" as identity nodrop
| json field=_raw "properties.additionalTargets" as additionalTargets  nodrop
| json field=_raw "resultDescription" as resultDescription nodrop
| json field=_raw "properties.targetUpdatedProperties" as updated_properties nodrop
```

**Azure Active Directory/Application Management - New/Service Principal Updates**
```
_sourceCategory = Labs/Azure/AD "ApplicationManagement" ("service principal")
| json field=_raw "operationName" as operationName nodrop
| json field=_raw "time" nodrop
| json field=_raw "category" as category  nodrop
| json field=_raw "Level" as level nodrop
| json field=_raw "callerIpAddress" as ip_addr nodrop
| json field=_raw "resultType" as resultType nodrop
| json field=_raw "properties.auditEventCategory" as auditEventCategory nodrop
| json field=_raw "properties.targetResourceName" as targetResourceName nodrop
| json field=_raw "properties.targetResourceType" as targetResourceType nodrop
| json field=_raw "tenantId" as tenantId nodrop
| json field=_raw "correlationId" as correlationId nodrop
| json field=_raw "identity" as identity nodrop
| json field=_raw "properties.additionalTargets" as additionalTargets  nodrop
| json field=_raw "resultDescription" as resultDescription nodrop
| json field=_raw "properties.targetUpdatedProperties" as updated_properties nodrop
```

**Azure Active Directory/Application Management - New/Successful Events**
```
_sourceCategory = Labs/Azure/AD "ApplicationManagement" !(Failure)
| json field=_raw "operationName" as operationName nodrop
| json field=_raw "time" nodrop
| json field=_raw "category" as category  nodrop
| json field=_raw "Level" as level nodrop
| json field=_raw "callerIpAddress" as ip_addr nodrop
| json field=_raw "resultType" as resultType nodrop
| json field=_raw "properties.auditEventCategory" as auditEventCategory nodrop
| json field=_raw "properties.targetResourceName" as targetResourceName nodrop
| json field=_raw "properties.targetResourceType" as targetResourceType nodrop
| json field=_raw "tenantId" as tenantId nodrop
| json field=_raw "correlationId" as correlationId nodrop
| json field=_raw "identity" as identity nodrop
| json field=_raw "properties.additionalTargets" as additionalTargets  nodrop
| json field=_raw "resultDescription" as resultDescription nodrop
| json field=_raw "properties.targetUpdatedProperties" as updated_properties nodrop
```

**Azure Active Directory/Application Management/Breakdown by Results**
```
_sourceCategory={{Logsdatasource}}  "ApplicationManagement" 
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Application Management/Failed Events**
```
_sourceCategory={{Logsdatasource}}  "ApplicationManagement"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Application Management/Operation Name**
```
_sourceCategory={{Logsdatasource}}  "ApplicationManagement" 
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Application Management/Operation Name - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}}  "ApplicationManagement" 
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Application Management/Operation Name Over Time**
```
_sourceCategory={{Logsdatasource}}  "ApplicationManagement" 
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Application Management/Successful Events**
```
_sourceCategory={{Logsdatasource}}  "ApplicationManagement"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Application Management/Summary Table**
```
_sourceCategory={{Logsdatasource}}  "ApplicationManagement" 
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Directory Management /Breakdown by Results**
```
_sourceCategory={{Logsdatasource}}  "DirectoryManagement" 
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Directory Management /Disable Desktop SSO**
```
_sourceCategory={{Logsdatasource}}  "DirectoryManagement" "Disable Desktop Sso"
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Directory Management /Failed Events**
```
_sourceCategory={{Logsdatasource}}  "DirectoryManagement"
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Directory Management /Operation Name**
```
_sourceCategory={{Logsdatasource}}  "DirectoryManagement" 
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Directory Management /Operation Name - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}}  "DirectoryManagement" 
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Directory Management /Operation Name Over Time**
```
_sourceCategory={{Logsdatasource}}  "DirectoryManagement" 
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Directory Management /Successful Events**
```
_sourceCategory={{Logsdatasource}}  "DirectoryManagement"
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Failure Sign-In Events /Anomaly in Total Login Count**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity" 
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/Failure Sign-In Events /Break Down by Browser**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity" 
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/Failure Sign-In Events /Breakdown by OS**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity" 
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/Failure Sign-In Events /Failure Sign In Table**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity"  "resultType" "errorCode"
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
| concat(date, " ",time) as date_time
| if(risk_state in ("atRisk", "confirmedCompromised"), "true", "false") as is_risky
| where result_type !="0" AND city matches "{{city}}" AND tenant_id matches "{{tenant_id}}" AND client_app_used matches "{{client_app_used}}" AND user_display_name matches "{{user_display_name}}" AND app_display_name matches "{{app_display_name}}" AND identity matches "{{identity}}" AND browser matches "{{browser}}" AND operation_name matches "{{operation_name}}" AND is_risky matches "{{is_risky}}"
| lookup description as error_description from https://sumologic-app-data.s3.amazonaws.com/ad_sign.csv on errorcode = error_code
```

**Azure Active Directory/Failure Sign-In Events /Geo Location of Sign-in**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity"
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/Failure Sign-In Events /Risky Sign In**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity" 
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/Failure Sign-In Events /Sign in by Application**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity" 
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/Failure Sign-In Events /Sign In by User Over Time**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity" "errorCode" "resultType"
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/Failure Sign-In Events /Sign-In by User - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity"
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/Failure Sign-In Events /Sign-Ins Breakdown by Country,  State, City**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity" 
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/Failure Sign-In Events /Top 10 Active Users**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity" 
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/Group Management/Breakdown by Results**
```
_sourceCategory={{Logsdatasource}}  "GroupManagement" 
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Group Management/Failed Events**
```
_sourceCategory={{Logsdatasource}}  "GroupManagement"
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Group Management/Groups Added**
```
_sourceCategory={{Logsdatasource}}  "GroupManagement"
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Group Management/Operation Name**
```
_sourceCategory={{Logsdatasource}}  "GroupManagement" 
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Group Management/Operation Name - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}}  "GroupManagement" 
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Group Management/Operations Over Time**
```
_sourceCategory={{Logsdatasource}}  "GroupManagement" 
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Group Management/Removed**
```
_sourceCategory={{Logsdatasource}}  "GroupManagement"
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Group Management/Successful Events**
```
_sourceCategory={{Logsdatasource}}  "GroupManagement"
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Other/Breakdown by Results**
```
_sourceCategory={{Logsdatasource}}  (Authorization or Authentication or Other or Resource or PolicyManagement) 
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Other/Failed Events**
```
_sourceCategory={{Logsdatasource}}  (Authorization or Authentication or Other or Resource or PolicyManagement)
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Other/Operation Name**
```
_sourceCategory={{Logsdatasource}}  (Authorization or Authentication or Other or Resource or PolicyManagement)
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Other/Operation Name - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}}  (Authorization or Authentication or Other or Resource or PolicyManagement)
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Other/Operation Name Over Time**
```
_sourceCategory={{Logsdatasource}}  (Authorization or Authentication or Other or Resource or PolicyManagement)
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Other/Successful Events**
```
_sourceCategory={{Logsdatasource}}  (Authorization or Authentication or Other or Resource or PolicyManagement)
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Overview - New/Audit Event Category  - One Day Time Comparison**
```
_sourceCategory = Labs/Azure/AD
| json field=_raw "operationName" as operationName 
| json field=_raw "time" nodrop
| json field=_raw "category" as category  nodrop
| json field=_raw "Level" as level nodrop
| json field=_raw "callerIpAddress" as ip_addr nodrop
| json field=_raw "resultType" as resultType nodrop
| json field=_raw "properties.auditEventCategory" as auditEventCategory nodrop
| if (category matches "SignIn", "Sign-In Event", auditEventCategory) as auditEventCategory
| json field=_raw "properties.targetResourceName" as targetResourceName nodrop
| json field=_raw "properties.targetResourceType" as targetResourceType nodrop
| json field=_raw "tenantId" as tenantId nodrop
| json field=_raw "correlationId" as correlationId nodrop
| json field=_raw "identity" as identity nodrop
| json field=_raw "properties.additionalTargets" as additionalTargets  nodrop
| json field=_raw "resultDescription" as resultDescription nodrop
| json field=_raw "properties.targetUpdatedProperties" as updated_properties nodrop
```

**Azure Active Directory/Overview - New/Audit Event Category  Breakdown**
```
_sourceCategory = Labs/Azure/AD
| json field=_raw "operationName" as operationName 
| json field=_raw "time" nodrop
| json field=_raw "category" as category  nodrop
| json field=_raw "Level" as level nodrop
| json field=_raw "callerIpAddress" as ip_addr nodrop
| json field=_raw "resultType" as resultType nodrop
| json field=_raw "properties.auditEventCategory" as auditEventCategory nodrop
| if (category matches "SignIn", "Sign-In Event", auditEventCategory) as auditEventCategory
| json field=_raw "properties.targetResourceName" as targetResourceName nodrop
| json field=_raw "properties.targetResourceType" as targetResourceType nodrop
| json field=_raw "tenantId" as tenantId nodrop
| json field=_raw "correlationId" as correlationId nodrop
| json field=_raw "identity" as identity nodrop
| json field=_raw "properties.additionalTargets" as additionalTargets  nodrop
| json field=_raw "resultDescription" as resultDescription nodrop
| json field=_raw "properties.targetUpdatedProperties" as updated_properties nodrop
```

**Azure Active Directory/Overview - New/Category Breakdown**
```
_sourceCategory = Labs/Azure/AD
| json field=_raw "operationName" as operationName 
| json field=_raw "time" nodrop
| json field=_raw "category" as category  nodrop
| json field=_raw "Level" as level nodrop
| json field=_raw "callerIpAddress" as ip_addr nodrop
| json field=_raw "resultType" as resultType nodrop
| json field=_raw "properties.auditEventCategory" as auditEventCategory nodrop
| json field=_raw "properties.targetResourceName" as targetResourceName nodrop
| json field=_raw "properties.targetResourceType" as targetResourceType nodrop
| json field=_raw "tenantId" as tenantId nodrop
| json field=_raw "correlationId" as correlationId nodrop
| json field=_raw "identity" as identity nodrop
| json field=_raw "properties.additionalTargets" as additionalTargets  nodrop
| json field=_raw "resultDescription" as resultDescription nodrop
| json field=_raw "properties.targetUpdatedProperties" as updated_properties nodrop
```

**Azure Active Directory/Overview - New/Geo Location of Events**
```
_sourceCategory = Labs/Azure/AD
| json field=_raw "operationName" as operationName 
| json field=_raw "category" as category
| json field=_raw "Level" as level
| json field=_raw "callerIpAddress" as ip_addr
```

**Azure Active Directory/Overview - New/Log Level  Breakdown**
```
_sourceCategory = Labs/Azure/AD
| json field=_raw "operationName" as operationName 
| json field=_raw "time" nodrop
| json field=_raw "category" as category  nodrop
| json field=_raw "Level" as level nodrop
| json field=_raw "callerIpAddress" as ip_addr nodrop
| json field=_raw "resultType" as resultType nodrop
| json field=_raw "properties.auditEventCategory" as auditEventCategory nodrop
| json field=_raw "properties.targetResourceName" as targetResourceName nodrop
| json field=_raw "properties.targetResourceType" as targetResourceType nodrop
| json field=_raw "tenantId" as tenantId nodrop
| json field=_raw "correlationId" as correlationId nodrop
| json field=_raw "identity" as identity nodrop
| json field=_raw "properties.additionalTargets" as additionalTargets  nodrop
| json field=_raw "resultDescription" as resultDescription nodrop
| json field=_raw "properties.targetUpdatedProperties" as updated_properties nodrop
```

**Azure Active Directory/Overview - New/Operation Name**
```
_sourceCategory = Labs/Azure/AD
| json field=_raw "operationName" as operationName 
| json field=_raw "time" nodrop
| json field=_raw "category" as category  
| json field=_raw "Level" as level 
| json field=_raw "callerIpAddress" as ip_addr nodrop
| json field=_raw "resultType" as resultType nodrop
| json field=_raw "properties.auditEventCategory" as auditEventCategory nodrop
| json field=_raw "properties.targetResourceName" as targetResourceName nodrop
| json field=_raw "properties.targetResourceType" as targetResourceType nodrop
| json field=_raw "tenantId" as tenantId nodrop
| json field=_raw "correlationId" as correlationId nodrop
| json field=_raw "identity" as identity nodrop
| json field=_raw "properties.additionalTargets" as additionalTargets  nodrop
| json field=_raw "resultDescription" as resultDescription nodrop
| json field=_raw "properties.targetUpdatedProperties" as updated_properties nodrop
```

**Azure Active Directory/Overview - New/Operation Name - One Day Time Comparison**
```
_sourceCategory = Labs/Azure/AD
| json field=_raw "operationName" as operationName nodrop
| json field=_raw "time" nodrop
| json field=_raw "category" as category  nodrop
| json field=_raw "Level" as level nodrop
| json field=_raw "callerIpAddress" as ip_addr nodrop
| json field=_raw "resultType" as resultType nodrop
| json field=_raw "properties.auditEventCategory" as auditEventCategory nodrop
| json field=_raw "properties.targetResourceName" as targetResourceName nodrop
| json field=_raw "properties.targetResourceType" as targetResourceType nodrop
| json field=_raw "tenantId" as tenantId nodrop
| json field=_raw "correlationId" as correlationId nodrop
| json field=_raw "identity" as identity nodrop
| json field=_raw "properties.additionalTargets" as additionalTargets  nodrop
| json field=_raw "resultDescription" as resultDescription nodrop
| json field=_raw "properties.targetUpdatedProperties" as updated_properties nodrop
```

**Azure Active Directory/Overview - New/ResultType Breakdown**
```
_sourceCategory = Labs/Azure/AD
| json field=_raw "operationName" as operationName 
| json field=_raw "time" nodrop
| json field=_raw "category" as category  nodrop
| json field=_raw "Level" as level nodrop
| json field=_raw "callerIpAddress" as ip_addr nodrop
| json field=_raw "resultType" as resultType nodrop
| if (resultType matches "*Fail*", "Failure Audit Operation",  resultType) as resultType
| if (resultType matches "*Succ*", "Success Audit Operation",  resultType) as resultType 
| if (resultType matches "0", "Success Sign In",  resultType) as resultType 
| if (resultType matches "20*", "Failure Sign In",  resultType) as resultType 
| if (resultType matches "40*", "Failure Sign In",  resultType) as resultType 
| if (resultType matches "5*", "Failure Sign In",  resultType) as resultType 
| if (resultType matches "6*", "Failure Sign In",  resultType) as resultType 
| if (resultType matches "7*", "Failure Sign In",  resultType) as resultType 
| if (resultType matches "8*", "Failure Sign In",  resultType) as resultType 
| json field=_raw "properties.auditEventCategory" as auditEventCategory nodrop
| json field=_raw "properties.targetResourceName" as targetResourceName nodrop
| json field=_raw "properties.targetResourceType" as targetResourceType nodrop
| json field=_raw "tenantId" as tenantId nodrop
| json field=_raw "correlationId" as correlationId nodrop
| json field=_raw "identity" as identity nodrop
| json field=_raw "properties.additionalTargets" as additionalTargets  nodrop
| json field=_raw "resultDescription" as resultDescription nodrop
| json field=_raw "properties.targetUpdatedProperties" as updated_properties nodrop
```

**Azure Active Directory/Overview /Audit Event Category  - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}} 
| json "operationName", "properties.category", "category", "Level", "properties.result", "properties.resultReason", "callerIpAddress" as operation_name, audit_event_category ,activity_type, level, result_type, result_reason, ip_addr nodrop
| if (activity_type matches "SignInLogs", "Sign-In Event", audit_event_category) as audit_event_category
| json "resultType" as sign_in_result_type nodrop
```

**Azure Active Directory/Overview /Audit Event Category  Breakdown**
```
_sourceCategory={{Logsdatasource}} 
| json "operationName", "properties.category", "category", "Level", "properties.result", "properties.resultReason", "callerIpAddress" as operation_name, audit_event_category ,activity_type, level, result_type, result_reason, ip_addr nodrop
| if (activity_type matches "SignInLogs", "Sign-In Event", audit_event_category) as audit_event_category
| json "resultType" as sign_in_result_type nodrop
```

**Azure Active Directory/Overview /Category Breakdown**
```
_sourceCategory={{Logsdatasource}} 
| json "operationName", "properties.category", "category", "Level", "properties.result", "properties.resultReason", "callerIpAddress" as operation_name, audit_event_category ,activity_type, level, result_type, result_reason, ip_addr nodrop
| if (activity_type matches "SignInLogs", "Sign-In Event", audit_event_category) as audit_event_category
| json "resultType" as sign_in_result_type nodrop
```

**Azure Active Directory/Overview /Geo Location of Events**
```
_sourceCategory={{Logsdatasource}} 
| json "operationName", "properties.category", "category", "Level", "properties.result", "properties.resultReason", "callerIpAddress" as operation_name, audit_event_category ,activity_type, level, result_type, result_reason, ip_addr nodrop
| if (activity_type matches "SignInLogs", "Sign-In Event", audit_event_category) as audit_event_category
| json "resultType" as sign_in_result_type nodrop
```

**Azure Active Directory/Overview /Log Level  Breakdown**
```
_sourceCategory={{Logsdatasource}} 
| json "operationName", "properties.category", "category", "Level", "properties.result", "properties.resultReason", "callerIpAddress" as operation_name, audit_event_category ,activity_type, level, result_type, result_reason, ip_addr nodrop
| if (activity_type matches "SignInLogs", "Sign-In Event", audit_event_category) as audit_event_category
| json "resultType" as sign_in_result_type nodrop
```

**Azure Active Directory/Overview /Operation Name**
```
_sourceCategory={{Logsdatasource}} 
| json "operationName", "properties.category", "category", "Level", "properties.result", "properties.resultReason", "callerIpAddress" as operation_name, audit_event_category ,activity_type, level, result_type, result_reason, ip_addr nodrop
| if (activity_type matches "SignInLogs", "Sign-In Event", audit_event_category) as audit_event_category
| json "resultType" as sign_in_result_type nodrop
```

**Azure Active Directory/Overview /Operation Name - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}} 
| json "operationName", "properties.category", "category", "Level", "properties.result", "properties.resultReason", "callerIpAddress" as operation_name, audit_event_category ,activity_type, level, result_type, result_reason, ip_addr nodrop
| if (activity_type matches "SignInLogs", "Sign-In Event", audit_event_category) as audit_event_category
| json "resultType" as sign_in_result_type nodrop
```

**Azure Active Directory/Overview /ResultType Breakdown**
```
_sourceCategory={{Logsdatasource}} 
| json "operationName", "properties.category", "category", "Level", "properties.result", "properties.resultReason", "callerIpAddress" as operation_name, audit_event_category ,activity_type, level, result_type, result_reason, ip_addr nodrop
| if (activity_type matches "SignInLogs", "Sign-In Event", audit_event_category) as audit_event_category
| json "resultType" as sign_in_result_type nodrop
```

**Azure Active Directory/Role Management /Breakdown by Results**
```
_sourceCategory={{Logsdatasource}}  "RoleManagement"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Role Management /Failed Events**
```
_sourceCategory={{Logsdatasource}}  "RoleManagement"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Role Management /Operation Name**
```
_sourceCategory={{Logsdatasource}}  "RoleManagement"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Role Management /Operation Name - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}}  "RoleManagement"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Role Management /Operation Name Over Time**
```
_sourceCategory={{Logsdatasource}}  "RoleManagement"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Role Management /Removed User from Role**
```
_sourceCategory={{Logsdatasource}}  "RoleManagement"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Role Management /Role Updates**
```
_sourceCategory={{Logsdatasource}}  "RoleManagement"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Role Management /Successful Events**
```
_sourceCategory={{Logsdatasource}}  "RoleManagement"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/Successful Sign-In Events/Anomaly in Total Login Count**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity" 
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/Successful Sign-In Events/Break Down by Browser**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity" 
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/Successful Sign-In Events/Breakdown by Country,  State, City**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity" 
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/Successful Sign-In Events/Breakdown by OS**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity" 
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/Successful Sign-In Events/Geo Location of Sign-in**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity" 
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/Successful Sign-In Events/Risky Sign In**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity" 
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/Successful Sign-In Events/Sign in by Application**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity" 
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/Successful Sign-In Events/Sign In by User Over Time**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity" 
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/Successful Sign-In Events/Sign-In by User - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity" 
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/Successful Sign-In Events/Top 10 Active Users**
```
_sourceCategory={{Logsdatasource}}  "SignInLogs" "Sign-in activity" 
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
```

**Azure Active Directory/User Management/Add User**
```
_sourceCategory={{Logsdatasource}}  "UserManagement"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/User Management/Breakdown by Results**
```
_sourceCategory={{Logsdatasource}}  "UserManagement"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/User Management/Deleted User**
```
_sourceCategory={{Logsdatasource}}  "UserManagement" "Delete user"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/User Management/Failed Events**
```
_sourceCategory={{Logsdatasource}}  "UserManagement"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/User Management/Invite External User**
```
_sourceCategory={{Logsdatasource}}  "UserManagement" "Invite external user"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/User Management/Operation Name**
```
_sourceCategory={{Logsdatasource}}  "UserManagement"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/User Management/Operation Name - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}}  "UserManagement"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/User Management/Operation Name Over Time**
```
_sourceCategory={{Logsdatasource}}  "UserManagement"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/User Management/Successful Events**
```
_sourceCategory={{Logsdatasource}}  "UserManagement"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/User Management/Updated User**
```
_sourceCategory={{Logsdatasource}}  "UserManagement"
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```

**Azure Active Directory/User Management/User Management Events - Outlier**
```
_sourceCategory={{Logsdatasource}}  "UserManagement" 
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
```


