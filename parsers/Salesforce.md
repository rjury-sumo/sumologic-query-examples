# Parsers For Salesforce

## Parser:
```
| json "API_TYPE"
```
### Use Cases:
Activities by User, APEX Average Run Time, API Actions by User, API Login Trend by Type, Browser Distribution, Consecutive Logins, Content Document Sharing, Created Users, Data,  Users, Security Changes by Admin, Deactivated Users, Failed Logins by Browser, Failed Logins by Client IP, Last Logins by User, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Accessed Dashboards, Most Accessed Documents, Most Accessed Reports, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Content Transferred Documents, Most Document Attachment Downloads, Most Downloaded Documents, Most Exported Reports, Most Viewed Reports, Non-Login Activities, Non-REST API Actions by Client, Password Changes, Platform Distribution, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), Reports Exported by User, REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports, User Document Downloads



## Parser:
```
| json "attributes.type", "CreatedById", "CreatedById_LOOKUP", "Display", "Action", "Section" as type, src_user_id, src_user, display, action, section nodrop
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Downloaded Documents, Most Viewed Reports, Non-REST API Actions by Client, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports



## Parser:
```
| json "attributes.type", "CreatedById", "CreatedById_LOOKUP", "Display", "Action", "Section", "CreatedDate" ,"EVENT_TYPE" as type, src_user_id, src_user, display, action, section, time, event_type nodrop
```
### Use Cases:
Activities by User, APEX Average Run Time, API Actions by User, Consecutive Logins, Content Document Sharing, Data,  Users, Security Changes by Admin, Deactivated Users, Failed Logins by Client IP, Last Logins by User, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Accessed Dashboards, Most Accessed Documents, Most Accessed Reports, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Content Transferred Documents, Most Document Attachment Downloads, Most Downloaded Documents, Most Exported Reports, Most Viewed Reports, Non-Login Activities, Non-REST API Actions by Client, Password Changes, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports



## Parser:
```
| json "attributes.type", "CreatedById", "CreatedById_LOOKUP", "Display", "Action", "Section", "CreatedDate" as type, src_user_id, src_user, display, action, section, time nodrop
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Downloaded Documents, Most Viewed Reports, Non-REST API Actions by Client, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports



## Parser:
```
| json "attributes.type", "CreatedById", "CreatedById_LOOKUP", "Display", "Action", "Section", "CreatedDate" as type,src_user_id, src_user, display, action, section, time nodrop
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Downloaded Documents, Most Viewed Reports, Non-REST API Actions by Client, Recent Data Management Activities, Recent Security Control Activities, Report Run Count and Average Run Time (ms), REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports



## Parser:
```
| json "attributes.type", "CreatedById", "CreatedById_LOOKUP", "Display", "Action", "Section", "CreatedDate", "EVENT_TYPE" as type, src_user_id, src_user, display, action, section, time, event_type nodrop
```
### Use Cases:
Activities by User, APEX Average Run Time, API Actions by User, Consecutive Logins, Content Document Sharing, Data,  Users, Security Changes by Admin, Failed Logins by Client IP, Last Logins by User, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Accessed Dashboards, Most Accessed Documents, Most Accessed Reports, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Content Transferred Documents, Most Document Attachment Downloads, Most Downloaded Documents, Most Exported Reports, Most Viewed Reports, Non-Login Activities, Non-REST API Actions by Client, Password Changes, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports



## Parser:
```
| json "attributes.type", "CreatedById","CreatedById_LOOKUP", "Display", "Action", "Section", "CreatedDate", "EVENT_TYPE" as type, src_user_id, src_user, display, action, section, time, event_type nodrop
```
### Use Cases:
Activities by User, APEX Average Run Time, API Actions by User, Consecutive Logins, Content Document Sharing, Created Users, Data,  Users, Security Changes by Admin, Deactivated Users, Failed Logins by Client IP, Last Logins by User, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Accessed Dashboards, Most Accessed Documents, Most Accessed Reports, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Content Transferred Documents, Most Document Attachment Downloads, Most Downloaded Documents, Most Exported Reports, Most Viewed Reports, Non-Login Activities, Non-REST API Actions by Client, Password Changes, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports, User Document Downloads



## Parser:
```
| json "BROWSER_TYPE"
```
### Use Cases:
Activities by User, APEX Average Run Time, API Actions by User, API Login Trend by Type, Browser Distribution, Browser Trend, Consecutive Logins, Content Document Sharing, Created Users, Data,  Users, Security Changes by Admin, Deactivated Users, Failed Logins by Browser, Failed Logins by Client IP, Last Logins by User, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Accessed Dashboards, Most Accessed Documents, Most Accessed Reports, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Content Transferred Documents, Most Document Attachment Downloads, Most Downloaded Documents, Most Exported Reports, Most Viewed Reports, Non-Login Activities, Non-REST API Actions by Client, Password Changes, Platform Distribution, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), Reports Exported by User, REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports, User Document Downloads



## Parser:
```
| json "BROWSER_TYPE", "REQUEST_STATUS" 
```
### Use Cases:
Activities by User, APEX Average Run Time, API Actions by User, Consecutive Logins, Content Document Sharing, Created Users, Data,  Users, Security Changes by Admin, Deactivated Users, Failed Logins by Browser, Failed Logins by Client IP, Last Logins by User, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Accessed Dashboards, Most Accessed Documents, Most Accessed Reports, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Content Transferred Documents, Most Document Attachment Downloads, Most Downloaded Documents, Most Exported Reports, Most Viewed Reports, Non-Login Activities, Non-REST API Actions by Client, Password Changes, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), Reports Exported by User, REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports, User Document Downloads



## Parser:
```
| json "CLIENT_IP" as src_ip
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, Most Active Client IPs, Non-REST API Actions by Client, REST API Calls over Time, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI



## Parser:
```
| json "CLIENT_IP", "EVENT_TYPE", "USER_ID", "DELEGATED_USER_NAME", "URI","USER_ID_DERIVED_LOOKUP" as src_ip, event_type, dest_user_id, src_user,uri,dest_user nodrop 
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Active Client IPs, Most Active Users, Non-REST API Actions by Client, REST API Calls over Time, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI



## Parser:
```
| json "EVENT_TYPE"
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, Non-REST API Actions by Client, REST API Calls over Time, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI



## Parser:
```
| json "EVENT_TYPE"
| json "REQUEST_STATUS"
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, Logins by Status over Time, Most Active Client IPs, Non-REST API Actions by Client, REST API Calls over Time, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI



## Parser:
```
| json "EVENT_TYPE", "CLASS_NAME", "RUN_TIME" nodrop
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Load by API Type, Non-REST API Actions by Client, REST API Calls over Time, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI



## Parser:
```
| json "EVENT_TYPE", "CLIENT_ID", "CLIENT_NAME", "ENTITY_TYPE", "OPERATION_TYPE", "OPERATION", "METHOD_NAME", "API_VERSION", "USER_ID", "URI", "REQUEST_STATUS" nodrop
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Non-REST API Actions by Client, REST API Calls over Time, Slowest Pages in APEX Calls, SOQL Run Time by URI



## Parser:
```
| json "EVENT_TYPE", "CLIENT_IP"  
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Active Client IPs, Most Active Users, Non-REST API Actions by Client, REST API Calls over Time, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI



## Parser:
```
| json "EVENT_TYPE", "CLIENT_IP", "URI", "REQUEST_STATUS"
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, REST API Calls over Time, Slowest Pages in APEX Calls, SOQL Run Time by URI



## Parser:
```
| json "EVENT_TYPE", "CLIENT_IP", "USER_ID_DERIVED", "DELEGATED_USER_ID_DERIVED", "DELEGATED_USER_ID_DERIVED_LOOKUP" as event_type, client_ip, user_id, delegated_user_id_derived, username nodrop
```
### Use Cases:
Activities by User, APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Accessed Documents, Most Accessed Reports, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Content Transferred Documents, Most Document Attachment Downloads, Most Downloaded Documents, Most Exported Reports, Most Viewed Reports, Non-Login Activities, Non-REST API Actions by Client, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports



## Parser:
```
| json "EVENT_TYPE", "CLIENT_IP", "USER_ID"
```
### Use Cases:
Consecutive Logins



## Parser:
```
| json "EVENT_TYPE", "DASHBOARD_ID_DERIVED", "DASHBOARD_ID_DERIVED_LOOKUP" as event_type, dashboard_id, dashboard_name nodrop
```
### Use Cases:
Activities by User, APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Accessed Dashboards, Most Accessed Documents, Most Accessed Reports, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Content Transferred Documents, Most Document Attachment Downloads, Most Downloaded Documents, Most Exported Reports, Most Viewed Reports, Non-Login Activities, Non-REST API Actions by Client, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports



## Parser:
```
| json "EVENT_TYPE", "DOCUMENT_ID_DERIVED", "DOCUMENT_ID_DERIVED_LOOKUP", "FILE_TYPE" as event_type, document_id, document_name, file_type nodrop
```
### Use Cases:
Activities by User, APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Accessed Documents, Most Accessed Reports, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Content Transferred Documents, Most Document Attachment Downloads, Most Downloaded Documents, Most Viewed Reports, Non-REST API Actions by Client, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports



## Parser:
```
| json "EVENT_TYPE", "DOCUMENT_ID", "SHARING_PERMISSION", "SHARING_OPERATION" nodrop 
| json "USER_ID_DERIVED", "USER_ID_DERIVED_LOOKUP", "SHARED_WITH_ENTITY_ID", "DOCUMENT_ID_DERIVED_LOOKUP" as src_user_id, src_user, dest_user, document_name nodrop
```
### Use Cases:
Activities by User, APEX Average Run Time, API Actions by User, Consecutive Logins, Content Document Sharing, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Accessed Dashboards, Most Accessed Documents, Most Accessed Reports, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Content Transferred Documents, Most Document Attachment Downloads, Most Downloaded Documents, Most Exported Reports, Most Viewed Reports, Non-Login Activities, Non-REST API Actions by Client, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports



## Parser:
```
| json "EVENT_TYPE", "ENTITY_ID", "FILE_NAME", "FILE_TYPE" , "USER_ID_DERIVED"
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Active Client IPs, Most Active Users, Most Downloaded Documents, Non-REST API Actions by Client, REST API Calls over Time, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI



## Parser:
```
| json "EVENT_TYPE", "ENTITY_ID", "FILE_NAME", "FILE_TYPE", "USER_ID_DERIVED", "USER_ID_DERIVED_LOOKUP" as event_type, entity_id, file_name, file_type, src_user_id, src_user nodrop
```
### Use Cases:
Activities by User, APEX Average Run Time, API Actions by User, Consecutive Logins, Content Document Sharing, Data,  Users, Security Changes by Admin, Deactivated Users, Failed Logins by Client IP, Last Logins by User, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Accessed Dashboards, Most Accessed Documents, Most Accessed Reports, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Content Transferred Documents, Most Document Attachment Downloads, Most Downloaded Documents, Most Exported Reports, Most Viewed Reports, Non-Login Activities, Non-REST API Actions by Client, Password Changes, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports, User Document Downloads



## Parser:
```
| json "EVENT_TYPE", "ENTITY_ID", "FILE_NAME", "FILE_TYPE", "USER_ID_DERIVED", "USER_ID_DERIVED_LOOKUP" as event_type, entity_id, file_name, file_type, user_id, username nodrop
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Content Transferred Documents, Most Document Attachment Downloads, Most Downloaded Documents, Most Viewed Reports, Non-REST API Actions by Client, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports



## Parser:
```
| json "EVENT_TYPE", "REPORT_DESCRIPTION", "USER_ID_DERIVED", "USER_ID_DERIVED_LOOKUP" as event_type, report_description, src_user_id, src_user nodrop
| parse field = REPORT_DESCRIPTION "cust_name=*&" as reportName nodrop
```
### Use Cases:
Activities by User, APEX Average Run Time, API Actions by User, Consecutive Logins, Content Document Sharing, Created Users, Data,  Users, Security Changes by Admin, Deactivated Users, Failed Logins by Client IP, Last Logins by User, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Accessed Dashboards, Most Accessed Documents, Most Accessed Reports, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Content Transferred Documents, Most Document Attachment Downloads, Most Downloaded Documents, Most Exported Reports, Most Viewed Reports, Non-Login Activities, Non-REST API Actions by Client, Password Changes, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), Reports Exported by User, REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports, User Document Downloads



## Parser:
```
| json "EVENT_TYPE", "REPORT_DESCRIPTION", "USER_ID_DERIVED", "USER_ID_DERIVED_LOOKUP" as event_type, report_description, user_id, username nodrop
| parse field=REPORT_DESCRIPTION "cust_name=*&" as reportName nodrop
```
### Use Cases:
Activities by User, APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Accessed Documents, Most Accessed Reports, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Content Transferred Documents, Most Document Attachment Downloads, Most Downloaded Documents, Most Exported Reports, Most Viewed Reports, Non-REST API Actions by Client, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports



## Parser:
```
| json "EVENT_TYPE", "REPORT_ID_DERIVED", "REPORT_ID_DERIVED_LOOKUP" as event_type, report_id, report_name
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Downloaded Documents, Most Viewed Reports, Non-REST API Actions by Client, Report Run Count and Average Run Time (ms), REST API Calls by URI, REST API Calls over Time, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports



## Parser:
```
| json "EVENT_TYPE", "REPORT_ID_DERIVED", "REPORT_ID_DERIVED_LOOKUP" as event_type, report_id, report_name nodrop
```
### Use Cases:
Activities by User, APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Accessed Reports, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Content Transferred Documents, Most Document Attachment Downloads, Most Downloaded Documents, Most Viewed Reports, Non-REST API Actions by Client, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports



## Parser:
```
| json "EVENT_TYPE", "REPORT_ID_DERIVED", "RUN_TIME", "REPORT_ID_DERIVED_LOOKUP" as event_type, report_id, run_time, report_id_lookup
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Downloaded Documents, Most Viewed Reports, Non-REST API Actions by Client, REST API Calls by URI, REST API Calls over Time, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports



## Parser:
```
| json "EVENT_TYPE", "REPORT_ID", "REPORT_ID_DERIVED_LOOKUP"  
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Active Client IPs, Most Active Users, Most Downloaded Documents, Most Viewed Reports, Non-REST API Actions by Client, REST API Calls over Time, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI



## Parser:
```
| json "EVENT_TYPE", "REQUEST_STATUS", "CLIENT_IP" as event_type, request_status, src_ip
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Non-REST API Actions by Client, REST API Calls over Time, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI



## Parser:
```
| json "EVENT_TYPE", "REQUEST_STATUS", "USER_NAME"
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, Logins by External Users, Logins by Status over Time, Most Active Client IPs, Non-REST API Actions by Client, REST API Calls over Time, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI



## Parser:
```
| json "EVENT_TYPE", "RUN_TIME" 
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Downloaded Documents, Most Viewed Reports, Non-REST API Actions by Client, Report Run Count and Average Run Time (ms), REST API Calls by URI, REST API Calls over Time, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports



## Parser:
```
| json "EVENT_TYPE", "URI"
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Active Client IPs, Most Active Users, Most Downloaded Documents, Most Viewed Reports, Non-REST API Actions by Client, REST API Calls by URI, REST API Calls over Time, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI



## Parser:
```
| json "EVENT_TYPE", "URI", "RUN_TIME" 
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Slowest Pages in APEX Calls, SOQL Run Time by URI



## Parser:
```
| json "EVENT_TYPE", "URI", "RUN_TIME", "Query" nodrop 
```
### Use Cases:
APEX Average Run Time, Consecutive Logins, SOQL Run Time by URI



## Parser:
```
| json "EVENT_TYPE", "USER_ID_DERIVED", "USER_ID_DERIVED_LOOKUP" as event_type, src_user_id, src_user
```
### Use Cases:
Activities by User, APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Content Transferred Documents, Most Document Attachment Downloads, Most Downloaded Documents, Most Viewed Reports, Non-REST API Actions by Client, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports



## Parser:
```
| json "EVENT_TYPE", "USER_ID_DERIVED", "USER_ID_DERIVED_LOOKUP" as event_type, user_id, username 
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Downloaded Documents, Most Viewed Reports, Non-REST API Actions by Client, REST API Calls by URI, REST API Calls over Time, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users



## Parser:
```
| json "EVENT_TYPE", "USER_ID_DERIVED", "USER_ID_DERIVED_LOOKUP", "TRANSACTION_TYPE", "FILE_TYPE", "FILE_PREVIEW_TYPE", "DOCUMENT_ID_DERIVED", "DOCUMENT_ID_DERIVED_LOOKUP" as event_type, src_user_id, src_user, transaction_type, file_type, file_preview_type, document_id, document_name nodrop
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Content Transferred Documents, Most Downloaded Documents, Most Viewed Reports, Non-REST API Actions by Client, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports



## Parser:
```
| json "EVENT_TYPE", "USER_ID", "CLIENT_IP", "CLIENT_ID", "CLIENT_NAME", "ENTITY_TYPE", "METHOD", "OPERATION", "OPERATION_TYPE", "METHOD_NAME", "USER_ID_DERIVED_LOOKUP", "URI", "REQUEST_STATUS", "API_VERSION" nodrop
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, SOQL Run Time by URI



## Parser:
```
| json "EVENT_TYPE", "USER_NAME", "USER_ID_DERIVED_LOOKUP", "API_TYPE" nodrop
```
### Use Cases:
Activities by User, APEX Average Run Time, API Actions by User, Consecutive Logins, Content Document Sharing, Data,  Users, Security Changes by Admin, Failed Logins by Client IP, Last Logins by User, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Accessed Dashboards, Most Accessed Documents, Most Accessed Reports, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Content Transferred Documents, Most Document Attachment Downloads, Most Downloaded Documents, Most Exported Reports, Most Viewed Reports, Non-Login Activities, Non-REST API Actions by Client, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports



## Parser:
```
| json "REQUEST_STATUS", "BROWSER_TYPE"
```
### Use Cases:
Activities by User, APEX Average Run Time, API Actions by User, API Login Trend by Type, Browser Distribution, Browser Trend, Consecutive Logins, Content Document Sharing, Created Users, Data,  Users, Security Changes by Admin, Deactivated Users, Failed Logins by Browser, Failed Logins by Client IP, Failed Logins by Platform, Last Logins by User, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Accessed Dashboards, Most Accessed Documents, Most Accessed Reports, Most Active Client IPs, Most Active Report Viewers, Most Active Users, Most Content Transferred Documents, Most Document Attachment Downloads, Most Downloaded Documents, Most Exported Reports, Most Viewed Reports, Non-Login Activities, Non-REST API Actions by Client, Password Changes, Platform Distribution, Recent Data Management Activities, Recent Security Control Activities, Recent User Management Activities, Report Run Count and Average Run Time (ms), Reports Exported by User, REST API Calls by URI, REST API Calls over Time, Setup Audit Activity by Section, Setup Audit Activity by User, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users, Top 10 Slowest Reports, User Document Downloads



## Parser:
```
| json "USER_NAME" 
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, LoginAs by Source User, Logins by External Users, Logins by Location, Logins by Status over Time, Most Active Client IPs, Most Active Users, Most Downloaded Documents, Most Viewed Reports, Non-REST API Actions by Client, REST API Calls by URI, REST API Calls over Time, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI, Top 10 Active Users



## Parser:
```
| json "USER_NAME" as src_user
```
### Use Cases:
APEX Average Run Time, API Actions by User, Consecutive Logins, Failed Logins by Client IP, Load by API Type, Login Attempt Outlier, Logins by External Users, Logins by Status over Time, Most Active Client IPs, Most Active Users, Non-REST API Actions by Client, REST API Calls over Time, Slowest Classes in APEX SOAP Calls, Slowest Pages in APEX Calls, SOQL Run Time by URI


