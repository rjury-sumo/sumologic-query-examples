# Parsers For Azure Active Directory

## Parser:
```
| json  "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
 `n```
### Use Cases:
Add User, Added/Removed User from Role, Anomaly in Total Login Count, Application Management Events - Outlier, Applications Added or Updated, Audit Event Category  - One Day Time Comparison, Audit Event Category  Breakdown, Break Down by Browser, Breakdown by Country,  State, City, Breakdown by OS, Breakdown by Results, Category Breakdown, Consent Given to Application, Deleted Applications, Deleted User, Disable Desktop SSO, Failed Events, Failure Sign In Table, Geo Location of Events, Geo Location of Sign-in, Groups Added, Invite External User, Log Level  Breakdown, Members Added/Removed, Operation Name, Operation Name - One Day Time Comparison, Operation Name Over Time, Operations Over Time, ResultType Breakdown, Risky Sign In, Role Updates, Service Principal Updates, Sign in by Application, Sign In by User Over Time, Sign-In by User - One Day Time Comparison, Sign-Ins Breakdown by Country,  State, City, Successful Events, Summary Table, Top 10 Active Users, Updated User, User Management Events - Outlier



## Parser:
```
| json "operationName", "properties.category", "category", "Level", "properties.result", "properties.resultReason", "callerIpAddress" as operation_name, audit_event_category ,activity_type, level, result_type, result_reason, ip_addr nodrop
| json "resultType" as sign_in_result_type nodrop
 `n```
### Use Cases:
Anomaly in Total Login Count, Application Management Events - Outlier, Applications Added or Updated, Audit Event Category  - One Day Time Comparison, Audit Event Category  Breakdown, Break Down by Browser, Breakdown by OS, Breakdown by Results, Category Breakdown, Consent Given to Application, Deleted Applications, Disable Desktop SSO, Failed Events, Failure Sign In Table, Geo Location of Events, Geo Location of Sign-in, Groups Added, Log Level  Breakdown, Members Added/Removed, Operation Name, Operation Name - One Day Time Comparison, Operation Name Over Time, Operations Over Time, ResultType Breakdown, Risky Sign In, Service Principal Updates, Sign in by Application, Sign In by User Over Time, Sign-In by User - One Day Time Comparison, Sign-Ins Breakdown by Country,  State, City, Successful Events, Summary Table, Top 10 Active Users



## Parser:
```
| json "operationName", "time", "category", "Level", "callerIpAddress", "resultType", "tenantId", "correlationId", "identity", "resultDescription", "location", "resultSignature", "properties.appDisplayName", "properties.location.countryOrRegion", "properties.location.state", "properties.location.city", "properties.deviceDetail.operatingSystem", "properties.deviceDetail.browser", "properties.clientAppUsed", "properties.riskState", "properties.status.errorCode", "properties.userDisplayName", "properties.userPrincipalName", "properties.status.failureReason" as operation_name, time, category, level, ip_addr, result_type, tenant_id, correlation_id, identity, result_description, location, result_signature, app_display_name, country_or_region, state, city, operating_system, browser, client_app_used, risk_state, error_code, user_display_name, user_principal_name, failure_reason nodrop
| parse regex field=time "(?<date>[0-9]{4}-[0-9]{2}-[0-9]{2})T(?<time>[0-9]{2}:[0-9]{2}:[0-9]{2})"
 `n```
### Use Cases:
Added/Removed User from Role, Anomaly in Total Login Count, Application Management Events - Outlier, Applications Added or Updated, Audit Event Category  - One Day Time Comparison, Audit Event Category  Breakdown, Break Down by Browser, Breakdown by Country,  State, City, Breakdown by OS, Breakdown by Results, Category Breakdown, Consent Given to Application, Deleted Applications, Disable Desktop SSO, Failed Events, Failure Sign In Table, Geo Location of Events, Geo Location of Sign-in, Groups Added, Log Level  Breakdown, Members Added/Removed, Operation Name, Operation Name - One Day Time Comparison, Operation Name Over Time, Operations Over Time, ResultType Breakdown, Risky Sign In, Role Updates, Service Principal Updates, Sign in by Application, Sign In by User Over Time, Sign-In by User - One Day Time Comparison, Sign-Ins Breakdown by Country,  State, City, Successful Events, Summary Table, Top 10 Active Users



## Parser:
```
| json "properties.activityDisplayName", "category", "tenantId", "resultSignature", "Level", "properties.category", "properties.result", "properties.resultReason", "properties.activityDateTime", "properties.loggedByService", "properties.operationType", "properties.initiatedBy.app.displayName", "properties.targetResources[0].displayName" , "properties.targetResources[0].type", "callerIpAddress", "correlationId", "identity", "properties.additionalDetails" as operation_name,  activity_type, tenant_id, result_signature, level, audit_event_category, result_type, result_reason, activity_date_time, logged_by_service, operation_type, app_name, target_resource_name, target_resource_type, ip_addr, correlation_id, identity, updated_properties nodrop
 `n```
### Use Cases:
Anomaly in Total Login Count, Application Management Events - Outlier, Applications Added or Updated, Audit Event Category  - One Day Time Comparison, Audit Event Category  Breakdown, Break Down by Browser, Breakdown by OS, Breakdown by Results, Category Breakdown, Consent Given to Application, Deleted Applications, Disable Desktop SSO, Failed Events, Failure Sign In Table, Geo Location of Events, Geo Location of Sign-in, Groups Added, Log Level  Breakdown, Members Added/Removed, Operation Name, Operation Name - One Day Time Comparison, Operation Name Over Time, Operations Over Time, ResultType Breakdown, Risky Sign In, Service Principal Updates, Sign in by Application, Sign In by User Over Time, Sign-In by User - One Day Time Comparison, Sign-Ins Breakdown by Country,  State, City, Successful Events, Summary Table, Top 10 Active Users



## Parser:
```
| json field=_raw "operationName" as operationName 
| json field=_raw "category" as category
| json field=_raw "Level" as level
| json field=_raw "callerIpAddress" as ip_addr
 `n```
### Use Cases:
Application Management Events - Outlier, Applications Added or Updated, Audit Event Category  Breakdown, Breakdown by Results, Category Breakdown, Consent Given to Application, Deleted Applications, Failed Events, Geo Location of Events, Log Level  Breakdown, Operation Name, Operation Name - One Day Time Comparison, Operation Name Over Time, ResultType Breakdown, Service Principal Updates, Successful Events



## Parser:
```
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
 `n```
### Use Cases:
Application Management Events - Outlier, Applications Added or Updated, Audit Event Category  Breakdown, Breakdown by Results, Category Breakdown, Consent Given to Application, Deleted Applications, Failed Events, Operation Name, Operation Name - One Day Time Comparison, Operation Name Over Time, Service Principal Updates, Successful Events



## Parser:
```
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
 `n```
### Use Cases:
Application Management Events - Outlier, Applications Added or Updated, Audit Event Category  - One Day Time Comparison, Audit Event Category  Breakdown, Breakdown by Results, Category Breakdown, Consent Given to Application, Deleted Applications, Failed Events, Geo Location of Events, Log Level  Breakdown, Operation Name, Operation Name - One Day Time Comparison, Operation Name Over Time, ResultType Breakdown, Service Principal Updates, Successful Events



## Parser:
```
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
 `n```
### Use Cases:
Application Management Events - Outlier, Applications Added or Updated, Audit Event Category  Breakdown, Breakdown by Results, Consent Given to Application, Deleted Applications, Failed Events, Operation Name, Operation Name - One Day Time Comparison, Operation Name Over Time, Service Principal Updates, Successful Events


