# Parsers For Salesforce

**Salesforce/APEX and API Performance/APEX Average Run Time**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "RUN_TIME" Apex*
| json "EVENT_TYPE", "RUN_TIME" 
```

**Salesforce/APEX and API Performance/API Actions by User**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" *API*
| json "EVENT_TYPE", "USER_ID", "CLIENT_IP", "CLIENT_ID", "CLIENT_NAME", "ENTITY_TYPE", "METHOD", "OPERATION", "OPERATION_TYPE", "METHOD_NAME", "USER_ID_DERIVED_LOOKUP", "URI", "REQUEST_STATUS", "API_VERSION" nodrop
```

**Salesforce/APEX and API Performance/Load by API Type**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" *API* 
| json "EVENT_TYPE"
```

**Salesforce/APEX and API Performance/Non-REST API Actions by Client**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" *API* !RESTAPI 
| json "EVENT_TYPE", "CLIENT_ID", "CLIENT_NAME", "ENTITY_TYPE", "OPERATION_TYPE", "OPERATION", "METHOD_NAME", "API_VERSION", "USER_ID", "URI", "REQUEST_STATUS" nodrop
```

**Salesforce/APEX and API Performance/REST API Calls over Time**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" RESTAPI "REQUEST_STATUS"
| json "EVENT_TYPE", "CLIENT_IP", "URI", "REQUEST_STATUS"
```

**Salesforce/APEX and API Performance/Slowest Classes in APEX SOAP Calls**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" Apex* "CLASS_NAME" "RUN_TIME"
| json "EVENT_TYPE", "CLASS_NAME", "RUN_TIME" nodrop
```

**Salesforce/APEX and API Performance/Slowest Pages in APEX Calls**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" Apex* "RUN_TIME" "URI"
| json "EVENT_TYPE", "URI", "RUN_TIME" 
```

**Salesforce/APEX and API Performance/SOQL Run Time by URI**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" Apex*
| json "EVENT_TYPE", "URI", "RUN_TIME", "Query" nodrop 
```

**Salesforce/Consecutive Logins/Consecutive Logins**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "Login" 
| json "EVENT_TYPE", "CLIENT_IP", "USER_ID"
```

**Salesforce/Logins/Failed Logins by Client IP**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" Login "REQUEST_STATUS" "CLIENT_IP"
| json "EVENT_TYPE", "REQUEST_STATUS", "CLIENT_IP" as event_type, request_status, src_ip
```

**Salesforce/Logins/Login Attempt Outlier**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "Login"
| json "EVENT_TYPE"
```

**Salesforce/Logins/LoginAs by Source User**
```
_sourceCategory={{Logsdatasource}}    "EVENT_TYPE" "LoginAs"
| json "CLIENT_IP", "EVENT_TYPE", "USER_ID", "DELEGATED_USER_NAME", "URI","USER_ID_DERIVED_LOOKUP" as src_ip, event_type, dest_user_id, src_user,uri,dest_user nodrop 
```

**Salesforce/Logins/Logins by External Users**
```
_sourceCategory={{Logsdatasource}}    "EVENT_TYPE" "Login" "REQUEST_STATUS" "USER_NAME"
| json "EVENT_TYPE", "REQUEST_STATUS", "USER_NAME"
```

**Salesforce/Logins/Logins by Location**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "CLIENT_IP" LOGIN*
| json "EVENT_TYPE", "CLIENT_IP"  
```

**Salesforce/Logins/Logins by Status over Time**
```
_sourceCategory={{Logsdatasource}}    "EVENT_TYPE" "Login" "REQUEST_STATUS"
| json "EVENT_TYPE"
| json "REQUEST_STATUS"
```

**Salesforce/Logins/Most Active Client IPs**
```
_sourceCategory={{Logsdatasource}}   "CLIENT_IP" login 
| json "CLIENT_IP" as src_ip
```

**Salesforce/Logins/Most Active Users**
```
_sourceCategory={{Logsdatasource}}   "USER_NAME"
| json "USER_NAME" as src_user
```

**Salesforce/Overview/Logins by Location**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "CLIENT_IP" LOGIN*
| json "EVENT_TYPE", "CLIENT_IP"  
```

**Salesforce/Overview/Most Downloaded Documents**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "FILE_NAME" "FILE_TYPE" "DocumentAttachmentDownloads" 
| json "EVENT_TYPE", "ENTITY_ID", "FILE_NAME", "FILE_TYPE" , "USER_ID_DERIVED"
```

**Salesforce/Overview/Most Viewed Reports**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "REPORT_ID" "REPORT_ID_DERIVED_LOOKUP" "Report"
| json "EVENT_TYPE", "REPORT_ID", "REPORT_ID_DERIVED_LOOKUP"  
```

**Salesforce/Overview/REST API Calls by URI**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "RestApi" "URI" 
| json "EVENT_TYPE", "URI"
```

**Salesforce/Overview/Top 10 Active Users**
```
_sourceCategory={{Logsdatasource}}   "\"USER_NAME\""
| json "USER_NAME" 
```

**Salesforce/Report Performance/Most Active Report Viewers**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "Report" "USER_ID_DERIVED" "USER_ID_DERIVED_LOOKUP"
| json "EVENT_TYPE", "USER_ID_DERIVED", "USER_ID_DERIVED_LOOKUP" as event_type, user_id, username 
```

**Salesforce/Report Performance/Most Viewed Reports**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "REPORT_ID_DERIVED" Report
| json "EVENT_TYPE", "REPORT_ID_DERIVED", "REPORT_ID_DERIVED_LOOKUP" as event_type, report_id, report_name
```

**Salesforce/Report Performance/Report Run Count and Average Run Time (ms)**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "RUN_TIME" Report 
| json "EVENT_TYPE", "RUN_TIME" 
```

**Salesforce/Report Performance/Top 10 Slowest Reports**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "REPORT_ID_DERIVED" "RUN_TIME" Report
| json "EVENT_TYPE", "REPORT_ID_DERIVED", "RUN_TIME", "REPORT_ID_DERIVED_LOOKUP" as event_type, report_id, run_time, report_id_lookup
```

**Salesforce/Setup Audit Activity/Recent Data Management Activities**
```
_sourceCategory={{Logsdatasource}}   attributes type SetupAuditTrail Section "Data Management"
| json "attributes.type", "CreatedById", "CreatedById_LOOKUP", "Display", "Action", "Section", "CreatedDate" as type,src_user_id, src_user, display, action, section, time nodrop
```

**Salesforce/Setup Audit Activity/Recent Security Control Activities**
```
_sourceCategory={{Logsdatasource}}   attributes type SetupAuditTrail Section "Security Controls"
| json "attributes.type", "CreatedById", "CreatedById_LOOKUP", "Display", "Action", "Section", "CreatedDate" as type, src_user_id, src_user, display, action, section, time nodrop
```

**Salesforce/Setup Audit Activity/Recent User Management Activities**
```
_sourceCategory={{Logsdatasource}}   attributes type SetupAuditTrail Section "Manage Users" 
| json "attributes.type", "CreatedById", "CreatedById_LOOKUP", "Display", "Action", "Section", "CreatedDate" as type, src_user_id, src_user, display, action, section, time nodrop
```

**Salesforce/Setup Audit Activity/Setup Audit Activity by Section**
```
_sourceCategory={{Logsdatasource}}   attributes type SetupAuditTrail Section
| json "attributes.type", "CreatedById", "CreatedById_LOOKUP", "Display", "Action", "Section" as type, src_user_id, src_user, display, action, section nodrop
```

**Salesforce/Setup Audit Activity/Setup Audit Activity by User**
```
_sourceCategory={{Logsdatasource}}   attributes type SetupAuditTrail
| json "attributes.type", "CreatedById", "CreatedById_LOOKUP", "Display", "Action", "Section" as type, src_user_id, src_user, display, action, section nodrop
```

**Salesforce/User Activity - Content/Activities by User**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "USER_ID_DERIVED" 
| json "EVENT_TYPE", "USER_ID_DERIVED", "USER_ID_DERIVED_LOOKUP" as event_type, src_user_id, src_user
```

**Salesforce/User Activity - Content/Content Document Sharing**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "ContentDocumentLink" sharing document
| json "EVENT_TYPE", "DOCUMENT_ID", "SHARING_PERMISSION", "SHARING_OPERATION" nodrop 
| json "USER_ID_DERIVED", "USER_ID_DERIVED_LOOKUP", "SHARED_WITH_ENTITY_ID", "DOCUMENT_ID_DERIVED_LOOKUP" as src_user_id, src_user, dest_user, document_name nodrop
```

**Salesforce/User Activity - Content/Most Accessed Dashboards**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "Dashboard" "DASHBOARD_ID_DERIVED" "DASHBOARD_ID_DERIVED_LOOKUP"
| json "EVENT_TYPE", "DASHBOARD_ID_DERIVED", "DASHBOARD_ID_DERIVED_LOOKUP" as event_type, dashboard_id, dashboard_name nodrop
```

**Salesforce/User Activity - Content/Most Accessed Documents**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "ContentTransfer"
| json "EVENT_TYPE", "DOCUMENT_ID_DERIVED", "DOCUMENT_ID_DERIVED_LOOKUP", "FILE_TYPE" as event_type, document_id, document_name, file_type nodrop
```

**Salesforce/User Activity - Content/Most Accessed Reports**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "Report"
| json "EVENT_TYPE", "REPORT_ID_DERIVED", "REPORT_ID_DERIVED_LOOKUP" as event_type, report_id, report_name nodrop
```

**Salesforce/User Activity - Content/Most Content Transferred Documents**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "ContentTransfer"
| json "EVENT_TYPE", "USER_ID_DERIVED", "USER_ID_DERIVED_LOOKUP", "TRANSACTION_TYPE", "FILE_TYPE", "FILE_PREVIEW_TYPE", "DOCUMENT_ID_DERIVED", "DOCUMENT_ID_DERIVED_LOOKUP" as event_type, src_user_id, src_user, transaction_type, file_type, file_preview_type, document_id, document_name nodrop
```

**Salesforce/User Activity - Content/Most Document Attachment Downloads**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "DocumentAttachmentDownloads"
| json "EVENT_TYPE", "ENTITY_ID", "FILE_NAME", "FILE_TYPE", "USER_ID_DERIVED", "USER_ID_DERIVED_LOOKUP" as event_type, entity_id, file_name, file_type, user_id, username nodrop
```

**Salesforce/User Activity - Content/Most Exported Reports**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "ReportExport"
| json "EVENT_TYPE", "REPORT_DESCRIPTION", "USER_ID_DERIVED", "USER_ID_DERIVED_LOOKUP" as event_type, report_description, user_id, username nodrop
| where event_type = "ReportExport"
| parse field=REPORT_DESCRIPTION "cust_name=*&" as reportName nodrop
```

**Salesforce/User Activity - Content/Non-Login Activities**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "client_ip" 
| json "EVENT_TYPE", "CLIENT_IP", "USER_ID_DERIVED", "DELEGATED_USER_ID_DERIVED", "DELEGATED_USER_ID_DERIVED_LOOKUP" as event_type, client_ip, user_id, delegated_user_id_derived, username nodrop
```

**Salesforce/User Activity - Monitoring/Created Users**
```
_sourceCategory={{Logsdatasource}}   attributes type SetupAuditTrail Section "Manage Users" Action createduser
| json "attributes.type", "CreatedById","CreatedById_LOOKUP", "Display", "Action", "Section", "CreatedDate", "EVENT_TYPE" as type, src_user_id, src_user, display, action, section, time, event_type nodrop
```

**Salesforce/User Activity - Monitoring/Data,  Users, Security Changes by Admin**
```
_sourceCategory={{Logsdatasource}}   attributes type SetupAuditTrail Section ("Manage Users" OR "Data Management" OR "Security Controls")
| json "attributes.type", "CreatedById", "CreatedById_LOOKUP", "Display", "Action", "Section", "CreatedDate", "EVENT_TYPE" as type, src_user_id, src_user, display, action, section, time, event_type nodrop
```

**Salesforce/User Activity - Monitoring/Deactivated Users**
```
_sourceCategory={{Logsdatasource}}   attributes type SetupAuditTrail Section "Manage Users" Action deactivateduser
| json "attributes.type", "CreatedById", "CreatedById_LOOKUP", "Display", "Action", "Section", "CreatedDate" ,"EVENT_TYPE" as type, src_user_id, src_user, display, action, section, time, event_type nodrop
```

**Salesforce/User Activity - Monitoring/Last Logins by User**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "Login"
| json "EVENT_TYPE", "USER_NAME", "USER_ID_DERIVED_LOOKUP", "API_TYPE" nodrop
```

**Salesforce/User Activity - Monitoring/Password Changes**
```
_sourceCategory={{Logsdatasource}}   attributes type SetupAuditTrail Section "Manage Users" *password*
| json "attributes.type", "CreatedById", "CreatedById_LOOKUP", "Display", "Action", "Section", "CreatedDate", "EVENT_TYPE" as type, src_user_id, src_user, display, action, section, time, event_type nodrop
```

**Salesforce/User Activity - Monitoring/Reports Exported by User**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "ReportExport"
| json "EVENT_TYPE", "REPORT_DESCRIPTION", "USER_ID_DERIVED", "USER_ID_DERIVED_LOOKUP" as event_type, report_description, src_user_id, src_user nodrop
| where event_type = "ReportExport" 
| parse field = REPORT_DESCRIPTION "cust_name=*&" as reportName nodrop
```

**Salesforce/User Activity - Monitoring/User Document Downloads**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "DocumentAttachmentDownloads" "FILE_NAME" "FILE_TYPE"
| json "EVENT_TYPE", "ENTITY_ID", "FILE_NAME", "FILE_TYPE", "USER_ID_DERIVED", "USER_ID_DERIVED_LOOKUP" as event_type, entity_id, file_name, file_type, src_user_id, src_user nodrop
```

**Salesforce/User Agents/API Login Trend by Type**
```
_sourceCategory={{Logsdatasource}}   ("\"EVENT_TYPE\":\"API\"" or "\"EVENT_TYPE\": \"API\"") "API_TYPE"
| json "API_TYPE"
```

**Salesforce/User Agents/Browser Distribution**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "BROWSER_TYPE" | json "BROWSER_TYPE"
```

**Salesforce/User Agents/Browser Trend**
```
_sourceCategory={{Logsdatasource}}   "BROWSER_TYPE" | json "BROWSER_TYPE"
```

**Salesforce/User Agents/Failed Logins by Browser**
```
_sourceCategory={{Logsdatasource}}   "BROWSER_TYPE" "REQUEST_STATUS" !"\"REQUEST_STATUS\":\"Success\"" !"\"REQUEST_STATUS\": \"S\""
| json "BROWSER_TYPE", "REQUEST_STATUS" 
```

**Salesforce/User Agents/Failed Logins by Platform**
```
_sourceCategory={{Logsdatasource}}   "BROWSER_TYPE" "REQUEST_STATUS" !"\"REQUEST_STATUS\":\"Success\"" !"\"REQUEST_STATUS\": \"S\""
| json "REQUEST_STATUS", "BROWSER_TYPE"
```

**Salesforce/User Agents/Platform Distribution**
```
_sourceCategory={{Logsdatasource}}   "EVENT_TYPE" "BROWSER_TYPE" | json "BROWSER_TYPE"
```


