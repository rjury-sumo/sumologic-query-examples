# Parsers For Workday

**Workday/API Activity/ActivityAction Trend**
```
_sourceCategory={{Logsdatasource}} 
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as Time, ipAddress, %"System User", Task, ActivityAction, TenantName nodrop
| where !(%"System User" matches "wd-*") and ipAddress matches "{{IPAddress}}" and %"System User" matches "{{SystemUser}}" and Task matches "{{Task}}" and ActivityAction matches "{{ActivityAction}}" and TenantName matches "{{TenantName}}"
| parse field=Task "api/*" as api_url
```

**Workday/API Activity/Malicious API Activity**
```
_sourceCategory={{Logsdatasource}} 
| json "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "deviceType", "tenant_name" as ipAddress, %"System User", Task, ActivityAction, DeviceType, TenantName nodrop
|  where !(%"System User" matches "wd-*") and ipAddress matches "{{IPAddress}}" and %"System User" matches "{{SystemUser}}" and Task matches "{{Task}}" and ActivityAction matches "{{ActivityAction}}" and TenantName matches "{{TenantName}}" and (Task matches "*Web Service*" or Task matches "api/*")
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=ipAddress
| where type="ip_address" and !isNull(malicious_confidence)
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as %"Threat Last Updated" 
| json field=raw "labels[*].name" as label_name nodrop
```

**Workday/API Activity/Recent Rest API Activity**
```
_sourceCategory={{Logsdatasource}} 
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "deviceType", "tenant_name" as Time, ipAddress, %"System User", Task, ActivityAction, %"Device Type", TenantName nodrop
| parse field=Task "api/*" as api_url
```

**Workday/API Activity/Recent Web Service Activity**
```
_sourceCategory={{Logsdatasource}} 
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "tenant_name" as Time, ipAddress, %"System User", Task, Target, ActivityAction, TenantName nodrop
```

**Workday/API Activity/Rest API Calls by URL**
```
_sourceCategory={{Logsdatasource}} 
| json  "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as ipAddress, %"System User", Task, ActivityAction, TenantName nodrop
| where !(%"System User" matches "wd-*") and ipAddress matches "{{IPAddress}}" and %"System User" matches "{{SystemUser}}" and Task matches "{{Task}}" and ActivityAction matches "{{ActivityAction}}" and TenantName matches "{{TenantName}}"
| parse field=Task "api/*" as api_url
```

**Workday/API Activity/Rest API Requests by Device Type**
```
_sourceCategory={{Logsdatasource}} 
| json  "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "deviceType", "tenant_name" as ipAddress, %"System User", Task, ActivityAction, %"Device Type", TenantName nodrop
| where !(%"System User" matches "wd-*") and ipAddress matches "{{IPAddress}}" and %"System User" matches "{{SystemUser}}" and Task matches "{{Task}}" and ActivityAction matches "{{ActivityAction}}" and TenantName matches "{{TenantName}}"
| parse field=Task "api/*" as api_url
```

**Workday/API Activity/Rest API Requests by Methods**
```
_sourceCategory={{Logsdatasource}} 
| json  "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as ipAddress, %"System User", Task, ActivityAction, TenantName nodrop
| where !(%"System User" matches "wd-*") and ipAddress matches "{{IPAddress}}" and %"System User" matches "{{SystemUser}}" and Task matches "{{Task}}" and ActivityAction matches "{{ActivityAction}}" and TenantName matches "{{TenantName}}"
| parse field=Task "api/*" as api_url
```

**Workday/API Activity/Top 10 Client IPs**
```
_sourceCategory={{Logsdatasource}} 
| json  "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as ipAddress, %"System User", Task, ActivityAction, TenantName nodrop
| where !(%"System User" matches "wd-*") and ipAddress matches "{{IPAddress}}" and %"System User" matches "{{SystemUser}}" and Task matches "{{Task}}" and ActivityAction matches "{{ActivityAction}}" and TenantName matches "{{TenantName}}"
| parse field=Task "api/*" as api_url
```

**Workday/API Activity/Web Services Logins**
```
_sourceCategory={{Logsdatasource}} 
| json "Request_Originator", "System_Account", "Authentication_Type_for_Signon", "Session_IP_Address", "tenant_name" as %"Request Originator", %"System User", %"Authentication Type", session_ip_address, TenantName nodrop
```

**Workday/Login Activity/Bottom 10 User Agents**
```
_sourceCategory={{Logsdatasource}}  
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "target.descriptor", "sessionId", "activityAction", "deviceType", "userAgent", "tenant_name" as Time, ipAddress, %"System User", Task, Target, SessionID, ActivityAction, DeviceType, %"User Agent",tenant_name nodrop
```

**Workday/Login Activity/Failed Login Reasons**
```
_sourceCategory={{Logsdatasource}}  
| json "System_Account", "Session_IP_Address", "Request_Originator","Authentication_Failure_Message", "tenant_name" nodrop
```

**Workday/Login Activity/Failed Logins**
```
_sourceCategory={{Logsdatasource}}  
| json "System_Account", "Session_IP_Address", "Request_Originator","Failed_Signon","tenant_name" nodrop
```

**Workday/Login Activity/Last 20 Recent Logins from Untrusted Devices**
```
_sourceCategory={{Logsdatasource}}  
| json "Session_Start", "Device_is_Trusted", "Invalid_Credentials", "Account_Locked__Disabled_or_Expired", "Authentication_Type_for_Signon", "Session_ID", "System_Account", "Session_IP_Address", "Request_Originator", "Failed_Signon","tenant_name" nodrop
```

**Workday/Login Activity/Last 20 Recently Failed Logins**
```
_sourceCategory={{Logsdatasource}}  
| json "Session_Start", "Device_is_Trusted", "Invalid_Credentials", "Account_Locked__Disabled_or_Expired", "Authentication_Type_for_Signon", "Session_ID", "System_Account", "Session_IP_Address", "Request_Originator", "Failed_Signon","tenant_name" nodrop
```

**Workday/Login Activity/Logins by Authentication Type**
```
_sourceCategory={{Logsdatasource}}  
| json "System_Account", "Session_IP_Address", "Request_Originator", "Authentication_Type_for_Signon", "tenant_name" nodrop
```

**Workday/Login Activity/Logins by Device Type**
```
_sourceCategory={{Logsdatasource}}  
| json "System_Account", "Session_IP_Address", "Request_Originator", "Device_Type","tenant_name" nodrop
```

**Workday/Login Activity/Logins by IP Address**
```
_sourceCategory={{Logsdatasource}}   !"Workday Internal"
| json "System_Account", "Session_IP_Address", "Request_Originator", "tenant_name" nodrop
```

**Workday/Login Activity/Logins by Request Originator**
```
_sourceCategory={{Logsdatasource}}  
| json "System_Account", "Session_IP_Address", "Request_Originator", "tenant_name" nodrop
```

**Workday/Login Activity/Logins by Workday Account**
```
_sourceCategory={{Logsdatasource}}  
| json "System_Account", "Session_IP_Address", "Request_Originator", "tenant_name" nodrop
```

**Workday/Login Activity/Logins from Malicious Sources**
```
_sourceCategory={{Logsdatasource}}  
| json "System_Account", "Session_IP_Address", "Request_Originator", "Device_Type","tenant_name" as %"System User", session_ip_address, Request_Originator, %"Device Type", tenant_name nodrop
| where !(%"System User" matches "wd-*") and session_ip_address matches "{{SessionIPAddress}}" and %"System User" matches "{{SystemUser}}" and Request_Originator matches "{{RequestOriginator}}" and tenant_name matches "{{TenantName}}" and session_ip_address != "0.0.0.0" and session_ip_address != "127.0.0.1" and session_ip_address!="Workday Internal"
| count by %"System User", %"Device Type", session_ip_address
|  lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=session_ip_address
| where  type="ip_address" and !isNull(malicious_confidence)
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as %"Threat Last Updated" 
| json field=raw "labels[*].name" as label_name nodrop
```

**Workday/Login Activity/Logins Over Time**
```
_sourceCategory={{Logsdatasource}}  
| json "System_Account", "Session_IP_Address", "Request_Originator","Failed_Signon","tenant_name" nodrop
```

**Workday/Login Activity/Malicious Actors**
```
_sourceCategory={{Logsdatasource}}  
| json "System_Account", "Session_IP_Address", "Request_Originator", "tenant_name" nodrop
| where !(System_Account matches "wd-*") and Session_IP_Address matches "{{SessionIPAddress}}" and System_Account matches "{{SystemUser}}" and tenant_name matches "{{TenantName}}" and Request_Originator matches "{{RequestOriginator}}"
| count by Session_IP_Address
| where Session_IP_Address != "0.0.0.0" and Session_IP_Address != "127.0.0.1" and Session_IP_Address!="Workday Internal"
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=Session_IP_Address
| where  type="ip_address" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name nodrop
```

**Workday/Login Activity/Malicious Confidence**
```
_sourceCategory={{Logsdatasource}}  
| json "System_Account", "Session_IP_Address", "Request_Originator", "tenant_name" nodrop
| where !(System_Account matches "wd-*") and Session_IP_Address matches "{{SessionIPAddress}}" and System_Account matches "{{SystemUser}}" and tenant_name matches "{{TenantName}}" and Request_Originator matches "{{RequestOriginator}}"
| count by Session_IP_Address
| where Session_IP_Address != "0.0.0.0" and Session_IP_Address != "127.0.0.1" and Session_IP_Address!="Workday Internal"
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=Session_IP_Address
| where  type="ip_address" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name nodrop
```

**Workday/Login Activity/Malicious Logins**
```
_sourceCategory={{Logsdatasource}}  
| json "System_Account", "Session_IP_Address", "Request_Originator", "tenant_name" as %"System User", session_ip_address, Request_Originator, tenant_name nodrop
```

**Workday/Login Activity/Successful Logins**
```
_sourceCategory={{Logsdatasource}}  
| json "System_Account", "Session_IP_Address", "Request_Originator","Failed_Signon","tenant_name" nodrop
```

**Workday/Login Activity/Top 10 User Agents**
```
_sourceCategory={{Logsdatasource}}  
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "target.descriptor", "sessionId", "activityAction", "deviceType", "userAgent", "tenant_name" as Time, ipAddress, %"System User", Task, Target, SessionID, ActivityAction, DeviceType, %"User Agent", tenant_name nodrop
```

**Workday/Overview/Download Activity by Task**
```
_sourceCategory={{Logsdatasource}}  
| json "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name"  as  ipAddress, %"System User", Task, ActivityAction, tenant_name nodrop
```

**Workday/Overview/Failed Logins**
```
_sourceCategory={{Logsdatasource}}  
| json "System_Account", "Session_IP_Address", "Failed_Signon", "tenant_name"  nodrop
```

**Workday/Overview/Failed Logins Over Time**
```
_sourceCategory={{Logsdatasource}}  
| json "System_Account", "Session_IP_Address", "Failed_Signon", "tenant_name"  as %"System User",Session_IP_Address, Failed_Signon, tenant_name
```

**Workday/Overview/Logins by Devices**
```
_sourceCategory={{Logsdatasource}}  
| json "System_Account", "Session_IP_Address", "Request_Originator", "Device_Type", "tenant_name"  nodrop
```

**Workday/Overview/Logins by Location**
```
_sourceCategory={{Logsdatasource}}  
| json "System_Account", "Session_IP_Address", "tenant_name" nodrop
```

**Workday/Overview/Recent Activity from Untrusted Devices or by Users with Failed Logins**
```
_sourceCategory={{Logsdatasource}}   !api
| json "requestTime", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "sessionId", "tenant_name"  as Time, SystemUser, Task, Target, ActivityAction, Session_ID, tenant_name nodrop
| where [subquery from=(-24h): _sourceCategory={{Logsdatasource}}    
  | json "Session_ID", "Device_is_Trusted" 
  | where Device_is_Trusted = 0 
  | count by Session_ID 
  | compose Session_ID
] or [subquery from=(-24h): _sourceCategory={{Logsdatasource}}  
  | json "System_Account", "Failed_Signon" as SystemUser, Failed_Signon
```

**Workday/Overview/Successful Logins**
```
_sourceCategory={{Logsdatasource}}  
| json "System_Account", "Session_IP_Address", "Failed_Signon", "tenant_name"  nodrop
```

**Workday/Overview/Total Logins**
```
_sourceCategory={{Logsdatasource}}  
| json "System_Account", "Session_IP_Address", "Request_Originator","Failed_Signon", "tenant_name"  nodrop
```

**Workday/Overview/Write Activity by Task**
```
_sourceCategory={{Logsdatasource}}  
| json "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name"  as  ipAddress, %"System User", Task, ActivityAction, tenant_name nodrop
```

**Workday/Parameterized Rest API Activity/Parameterized Rest API Activity**
```
_sourceCategory={{Logsdatasource}}  
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "target.descriptor", "sessionId", "activityAction", "deviceType", "tenant_name" as Time, ipAddress, %"System User", Task, Target, SessionID, ActivityAction, %"Device Type", tenant_name nodrop
| parse field=Task "api/*" as %"API"
```

**Workday/Parameterized User Activity/Parameterized User Activity**
```
_sourceCategory={{Logsdatasource}}  
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "target.descriptor", "sessionId", "activityAction", "deviceType", "tenant_name"  as Time, ipAddress, %"System User", Task, Target, SessionID, ActivityAction, %"Device Type", tenant_name nodrop
```

**Workday/Recent Personal Information Changes/Recent Personal Information Changes**
```
_sourceCategory={{Logsdatasource}}  and ("Change My Personal Information"
OR "Edit Disability Active View"
OR "Edit Date of Birth Active View"
OR "Edit Marital Status Active View"
OR "Edit Citizenship Status Active View"
OR "Edit Military Service Active View"
OR "Edit Social Benefits Locality Active View"
OR "Edit Medical Exam Status Active View"
OR "Edit Relatives' Names Active View"
OR "Edit Ethnicity Active View"
OR "Payment Elections"
OR "Edit Gender Active View"
OR "Organizations for Employment"
OR "Benefit Elections"
OR "Maintain My Worker Documents"
OR "Beneficiaries"
OR "Dependents"
OR "Change Benefits"
OR "Contact Information Profile View"
OR "My Emergency Contacts"
) 
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "tenant_name" as Time, ipAddress, %"System User", Task, Target, ActivityAction, tenant_name nodrop
```

**Workday/Recently Failed Logins/Recently Failed Logins**
```
_sourceCategory={{Logsdatasource}}  
| json "Session_Start","System_Account","Session_IP_Address","Request_Originator","Device_is_Trusted","Invalid_Credentials","Account_Locked__Disabled_or_Expired","Authentication_Type_for_Signon","Session_ID","Failed_Signon", "Device_Type", "tenant_name" nodrop
```

**Workday/System User Activity/Activity Over Time**
```
_sourceCategory={{Logsdatasource}}  
| json "requestTime", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "tenant_name" as Time, %"System User", Task, Target, ActivityAction, tenant_name nodrop
```

**Workday/System User Activity/API Client Changes**
```
_sourceCategory={{Logsdatasource}}  
| json "requestTime", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "tenant_name" as Time, %"System User", Task, Target, ActivityAction, tenant_name nodrop
```

**Workday/System User Activity/Business Object Events**
```
_sourceCategory={{Logsdatasource}}  
| json "requestTime", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "tenant_name" as Time, %"System User", Task, Target, ActivityAction, tenant_name nodrop
```

**Workday/System User Activity/Business Process Events**
```
_sourceCategory={{Logsdatasource}}   ("Create Condition Rule" or "Reassign Tasks" or "Create Alert Rule" or "Business Process")
| json "requestTime", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "tenant_name" as Time, %"System User", Task, Target, ActivityAction, tenant_name nodrop
```

**Workday/System User Activity/Permission Changes**
```
_sourceCategory={{Logsdatasource}}  
| json "requestTime", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "tenant_name" as Time, %"System User", Task, Target, ActivityAction, tenant_name nodrop
```

**Workday/System User Activity/Policy Events**
```
_sourceCategory={{Logsdatasource}}  
| json "requestTime", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "tenant_name" as Time, %"System User", Task, Target, ActivityAction, tenant_name
```

**Workday/System User Activity/Report Changes**
```
_sourceCategory={{Logsdatasource}}  
| json "requestTime", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "tenant_name" as Time, %"System User", Task, Target, ActivityAction, tenant_name nodrop
```

**Workday/System User Activity/Security Group Changes**
```
_sourceCategory={{Logsdatasource}}  
| json "requestTime", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "tenant_name" as Time, %"System User", Task, Target, ActivityAction, tenant_name nodrop
```

**Workday/User Activity/Activity**
```
_sourceCategory = Labs/Workday*
| json "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as ipAddress, %"System User", Task, ActivityAction, tenant_name nodrop
```

**Workday/User Activity/Activity by users from Malicious IPs**
```
_sourceCategory = Labs/Workday*
| json "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "deviceType", "tenant_name" as ipAddress, %"System User", Task, ActivityAction, DeviceType, tenant_name nodrop
| where ipAddress matches "{{IPAddress}}" and !(%"System User" matches "wd-*") and tenant_name matches "{{TenantName}}" and %"System User" matches "{{SystemUser}}" and Task matches "{{Task}}" and ActivityAction matches "{{ActivityAction}}"
 | lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=ipAddress
| where  type="ip_address" and !isNull(malicious_confidence)
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as %"Threat Last Updated" 
| json field=raw "labels[*].name" as label_name nodrop
```

**Workday/User Activity/Activity Over Time**
```
_sourceCategory = Labs/Workday*
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as Time, ipAddress, %"System User", Task, ActivityAction, tenant_name nodrop
```

**Workday/User Activity/Create Activity**
```
_sourceCategory = Labs/Workday*
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "tenant_name" as Time, ipAddress, %"System User", Task, Target, ActivityAction, tenant_name nodrop
```

**Workday/User Activity/Delete Activity**
```
_sourceCategory = Labs/Workday*
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "tenant_name" as Time, ipAddress, %"System User", Task, Target, ActivityAction, tenant_name nodrop
```

**Workday/User Activity/Download Activity**
```
_sourceCategory = Labs/Workday* !executeCustomReport
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as Time, ipAddress, %"System User", Task, ActivityAction, tenant_name nodrop
```

**Workday/User Activity/Longest User Sessions (in Minutes)**
```
_sourceCategory = Labs/Workday*
| json "requestTime", "ipAddress", "sessionId", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as Time, ipAddress, SessionID, %"System User", Task, ActivityAction, tenant_name nodrop
```

**Workday/User Activity/Malicious IPs**
```
_sourceCategory = Labs/Workday*
| json  "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as  ipAddress, %"System User", Task, ActivityAction, tenant_name nodrop
| where ipAddress matches "{{IPAddress}}" and !(%"System User" matches "wd-*") and tenant_name matches "{{TenantName}}" and %"System User" matches "{{SystemUser}}" and Task matches "{{Task}}" and ActivityAction matches "{{ActivityAction}}"
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=ipAddress
| where  type="ip_address" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name nodrop
```

**Workday/User Activity/Top 10 Downloaded Tasks**
```
_sourceCategory = Labs/Workday*
| json  "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as ipAddress, %"System User", Task, ActivityAction, tenant_name nodrop
```

**Workday/User Activity/Top 10 Executed Reports**
```
_sourceCategory = Labs/Workday* executeCustomReport
| json "ipAddress", "systemAccount", "target.descriptor", "taskDisplayName", "activityAction", "tenant_name" as ipAddress, %"System User", Target, Task, ActivityAction, tenant_name nodrop
```

**Workday/User Activity/Top 10 Malicious System Users**
```
_sourceCategory = Labs/Workday*
| json  "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as  ipAddress, %"System User", Task, ActivityAction, tenant_name nodrop
| where ipAddress matches "{{IPAddress}}" and !(%"System User" matches "wd-*") and tenant_name matches "{{TenantName}}" and %"System User" matches "{{SystemUser}}" and Task matches "{{Task}}" and ActivityAction matches "{{ActivityAction}}"
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=ipAddress
| where  type="ip_address" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name nodrop
```

**Workday/User Activity/Top 10 Malicious User Agents**
```
_sourceCategory = Labs/Workday*
| json  "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "userAgent", "tenant_name" as ipAddress, %"System User", Task, ActivityAction, %"User Agents", tenant_name nodrop
| where ipAddress matches "{{IPAddress}}" and !(%"System User" matches "wd-*") and tenant_name matches "{{TenantName}}" and %"System User" matches "{{SystemUser}}" and Task matches "{{Task}}" and ActivityAction matches "{{ActivityAction}}"
| if (isBlank(%"User Agents"), "Unknown", %"User Agents") as %"User Agents" 
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=ipAddress
| where  type="ip_address" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name nodrop
```

**Workday/User Activity/Top 10 Tasks**
```
_sourceCategory = Labs/Workday*
| json "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as ipAddress, %"System User", Task, ActivityAction, tenant_name nodrop
```

**Workday/User Activity/Top 10 Users**
```
_sourceCategory = Labs/Workday*
| json "ipAddress", "systemAccount", "taskDisplayName", "activityAction", "tenant_name" as ipAddress, %"System User", Task, ActivityAction, tenant_name nodrop
```

**Workday/User Activity/Update Activity**
```
_sourceCategory = Labs/Workday*
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "tenant_name" as Time, ipAddress, %"System User", Task, Target, ActivityAction, tenant_name nodrop
```

**Workday/User Activity/View Activity**
```
_sourceCategory = Labs/Workday* View
| json "requestTime", "ipAddress", "systemAccount", "taskDisplayName", "target.descriptor", "activityAction", "tenant_name" as Time, ipAddress, %"System User", Task, Target, ActivityAction, tenant_name nodrop
```


