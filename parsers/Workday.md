# Parsers For Workday

## Parser:
```
| json  "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "deviceType", "tenant_name" as ipAddress, %"System User", Task, ActivityAction, %"Device Type", TenantName nodrop
| parse field=Task "api/*" as api_url
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json  "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as  ipAddress, %"System User", Task, ActivityAction, tenant_name nodrop
| json field=raw "labels[*].name" as label_name nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json  "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as ipAddress, %"System User", Task, ActivityAction, tenant_name nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json  "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as ipAddress, %"System User", Task, ActivityAction, TenantName nodrop
| parse field=Task "api/*" as api_url
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json  "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "userAgent", "tenant_name" as ipAddress, %"System User", Task, ActivityAction, %"User Agents", tenant_name nodrop
| json field=raw "labels[*].name" as label_name nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "ipAddress", "systemAccount", "target.descriptor", "taskDisplayName", "activityAction", "tenant_name" as ipAddress, %"System User", Target, Task, ActivityAction, tenant_name nodrop
```
### Use Cases:
Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Executed Reports, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Web Services Logins, Write Activity by Task



## Parser:
```
| json "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "deviceType", "tenant_name" as ipAddress, %"System User", Task, ActivityAction, DeviceType, tenant_name nodrop
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| json field=raw "labels[*].name" as label_name nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Executed Reports, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Web Services Logins, Write Activity by Task



## Parser:
```
| json "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "deviceType", "tenant_name" as ipAddress, %"System User", Task, ActivityAction, DeviceType, TenantName nodrop
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| json field=raw "labels[*].name" as label_name nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name"  as  ipAddress, %"System User", Task, ActivityAction, tenant_name nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as ipAddress, %"System User", Task, ActivityAction, tenant_name nodrop
```
### Use Cases:
Activity, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Executed Reports, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Web Services Logins, Write Activity by Task



## Parser:
```
| json "Request_Originator", "System_Account", "Authentication_Type_for_Signon", "Session_IP_Address", "tenant_name" as %"Request Originator", %"System User", %"Authentication Type", session_ip_address, TenantName nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "requestTime", "ipAddress", "sessionId", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as Time, ipAddress, SessionID, %"System User", Task, ActivityAction, tenant_name nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Executed Reports, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "deviceType", "tenant_name" as Time, ipAddress, %"System User", Task, ActivityAction, %"Device Type", TenantName nodrop
| parse field=Task "api/*" as api_url
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as Time, ipAddress, %"System User", Task, ActivityAction, tenant_name nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as Time, ipAddress, %"System User", Task, ActivityAction, TenantName nodrop
| parse field=Task "api/*" as api_url
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "tenant_name" as Time, ipAddress, %"System User", Task, Target, ActivityAction, tenant_name nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "tenant_name" as Time, ipAddress, %"System User", Task, Target, ActivityAction, TenantName nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "target.descriptor", "sessionId", "activityAction", "deviceType", "tenant_name"  as Time, ipAddress, %"System User", Task, Target, SessionID, ActivityAction, %"Device Type", tenant_name nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "target.descriptor", "sessionId", "activityAction", "deviceType", "tenant_name" as Time, ipAddress, %"System User", Task, Target, SessionID, ActivityAction, %"Device Type", tenant_name nodrop
| parse field=Task "api/*" as %"API"
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "target.descriptor", "sessionId", "activityAction", "deviceType", "userAgent", "tenant_name" as Time, ipAddress, %"System User", Task, Target, SessionID, ActivityAction, DeviceType, %"User Agent", tenant_name nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "target.descriptor", "sessionId", "activityAction", "deviceType", "userAgent", "tenant_name" as Time, ipAddress, %"System User", Task, Target, SessionID, ActivityAction, DeviceType, %"User Agent",tenant_name nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "requestTime", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "sessionId", "tenant_name"  as Time, SystemUser, Task, Target, ActivityAction, Session_ID, tenant_name nodrop
| json "Session_ID", "Device_is_Trusted" 
| json "System_Account", "Failed_Signon" as SystemUser, Failed_Signon
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "requestTime", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "tenant_name" as Time, %"System User", Task, Target, ActivityAction, tenant_name
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "requestTime", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "tenant_name" as Time, %"System User", Task, Target, ActivityAction, tenant_name nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "Session_Start", "Device_is_Trusted", "Invalid_Credentials", "Account_Locked__Disabled_or_Expired", "Authentication_Type_for_Signon", "Session_ID", "System_Account", "Session_IP_Address", "Request_Originator", "Failed_Signon","tenant_name" nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "Session_Start","System_Account","Session_IP_Address","Request_Originator","Device_is_Trusted","Invalid_Credentials","Account_Locked__Disabled_or_Expired","Authentication_Type_for_Signon","Session_ID","Failed_Signon", "Device_Type", "tenant_name" nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "System_Account", "Session_IP_Address", "Failed_Signon", "tenant_name"  as %"System User",Session_IP_Address, Failed_Signon, tenant_name
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "System_Account", "Session_IP_Address", "Failed_Signon", "tenant_name"  nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "System_Account", "Session_IP_Address", "Request_Originator", "Authentication_Type_for_Signon", "tenant_name" nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "System_Account", "Session_IP_Address", "Request_Originator", "Device_Type", "tenant_name"  nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "System_Account", "Session_IP_Address", "Request_Originator", "Device_Type","tenant_name" as %"System User", session_ip_address, Request_Originator, %"Device Type", tenant_name nodrop
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| json field=raw "labels[*].name" as label_name nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "System_Account", "Session_IP_Address", "Request_Originator", "Device_Type","tenant_name" nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "System_Account", "Session_IP_Address", "Request_Originator", "tenant_name" as %"System User", session_ip_address, Request_Originator, tenant_name nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "System_Account", "Session_IP_Address", "Request_Originator", "tenant_name" nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "System_Account", "Session_IP_Address", "Request_Originator", "tenant_name" nodrop
| json field=raw "labels[*].name" as label_name nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "System_Account", "Session_IP_Address", "Request_Originator","Authentication_Failure_Message", "tenant_name" nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "System_Account", "Session_IP_Address", "Request_Originator","Failed_Signon", "tenant_name"  nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "System_Account", "Session_IP_Address", "Request_Originator","Failed_Signon","tenant_name" nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task



## Parser:
```
| json "System_Account", "Session_IP_Address", "tenant_name" nodrop
```
### Use Cases:
Activity, Activity by users from Malicious IPs, Activity Over Time, ActivityAction Trend, Anomaly Detection On Failed/Total Logins, API Client Changes, Bottom 10 User Agents, Business Object Events, Business Process Events, Create Activity, Delete Activity, Download Activity, Download Activity by Task, Failed Login Reasons, Failed Logins, Failed Logins Over Time, Last 20 Recent Logins from Untrusted Devices, Last 20 Recently Failed Logins, Logins by Authentication Type, Logins by Device Type, Logins by Devices, Logins by IP Address, Logins by Location, Logins by Request Originator, Logins by Workday Account, Logins from Malicious Sources, Logins Over Time, Longest User Sessions (in Minutes), Malicious Actors, Malicious API Activity, Malicious Confidence, Malicious IPs, Malicious Logins, Parameterized Rest API Activity, Parameterized User Activity, Permission Changes, Policy Events, Recent Activity from Untrusted Devices or by Users with Failed Logins, Recent Personal Information Changes, Recent Rest API Activity, Recent Web Service Activity, Recently Failed Logins, Report Changes, Rest API Calls by URL, Rest API Requests by Device Type, Rest API Requests by Methods, Security Group Changes, Successful Logins, Top 10 Client IPs, Top 10 Downloaded Tasks, Top 10 Executed Reports, Top 10 Malicious System Users, Top 10 Malicious User Agents, Top 10 Tasks, Top 10 User Agents, Top 10 Users, Update Activity, View Activity, Web Services Logins, Write Activity by Task


