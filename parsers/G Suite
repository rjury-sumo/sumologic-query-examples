# Parsers For G Suite

## Parser:
```
| json "actor", "id", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop 
| parse regex field=eventparameters "\{\"name\":\"app_name\",\"value\":\"(?<app_name>.*?)\"" nodrop
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Compromised Credentials, Content sharing by Compromised Users, Document Downloads by Title, Document Types, Documents Being Shared, Documents Shared Outside of Organization, Documents Viewed - Top 10, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Google Activity by Source Location, Groups - Users Added or Removed, Identity Alerts by User, Login Failures by User, Most Active IPs, Most Active Users, Primary Action Count, Recent Uploads by Title, Suspended Users, Suspicious Logins, Top Admin Action, Top Apps, Top Event Name by Event Type, Top Users Creating Contents, Top Users Downloading Contents, Top Users Sharing Contents Outside of Organization, Top Users Uploading Contents, Total Admins, Total Alerts, Total Suspended Users, Total Suspicious Logins, Total Users Sharing Contents Outside of Organization, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "actor", "id", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Compromised Credentials, Compromised Devices, Content sharing by Compromised Users, Document Downloads by Title, Document Types, Documents Being Shared, Documents Shared Outside of Organization, Documents Viewed - Top 10, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Google Activity by Source Location, Groups - Users Added or Removed, Identity Alerts by User, Login Failures by User, Logins from Multiple IPs, Most Active IPs, Most Active Users, Primary Action Count, Recent Uploads by Title, Suspended Users, Suspicious Logins, Top Admin Action, Top Apps, Top Event Name by Event Type, Top Login Failure Reasons, Top Users Creating Contents, Top Users Downloading Contents, Top Users Sharing Contents Outside of Organization, Top Users Uploading Contents, Total Admins, Total Alerts, Total Suspended Users, Total Suspicious Logins, Total Users Sharing Contents Outside of Organization, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "actor", "id", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop
| parse regex field=eventparameters "\{\"name\":\"login_type\",\"value\":\"(?<loginType>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_challenge_status\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
```
### Use Cases:
G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins



## Parser:
```
| json "actor", "id", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop
| parse regex field=eventparameters "\{\"name\":\"login_type\",\"value\":\"(?<loginType>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_failure_type\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_challenge_status\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
```
### Use Cases:
G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User



## Parser:
```
| json "actor", "ipAddress", "events", "id" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Compromised Credentials, Content sharing by Compromised Users, Document Downloads by Title, Document Types, Documents Being Shared, Documents Shared Outside of Organization, Documents Viewed - Top 10, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Google Activity by Source Location, Groups - Users Added or Removed, Identity Alerts by User, Login Failures by User, Most Active IPs, Most Active Users, Primary Action Count, Recent Uploads by Title, Suspended Users, Suspicious Logins, Top Admin Action, Top Users Creating Contents, Top Users Downloading Contents, Top Users Sharing Contents Outside of Organization, Top Users Uploading Contents, Total Suspended Users, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "actor", "ipAddress", "events", "id" nodrop
| json field=id "applicationName"
| json field=actor "email", "profileId"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Compromised Credentials, Content sharing by Compromised Users, Document Downloads by Title, Document Types, Documents Being Shared, Documents Shared Outside of Organization, Documents Viewed - Top 10, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Google Activity by Source Location, Groups - Users Added or Removed, Identity Alerts by User, Login Failures by User, Most Active IPs, Most Active Users, Primary Action Count, Recent Uploads by Title, Suspended Users, Suspicious Logins, Top Admin Action, Top Event Name by Event Type, Top Users Creating Contents, Top Users Downloading Contents, Top Users Sharing Contents Outside of Organization, Top Users Uploading Contents, Total Admins, Total Suspended Users, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "alertId","customerId","source","type","data.email", "data.events[*]", "createTime" as alert_id, customer_id, source, type, email, events, create_time
| parse regex field=events "(?<device_info>\{[^\{]+\})" multi
| json field=device_info "deviceId", "serialNumber", "deviceType", "resourceId", "iosVendorId", "deviceCompromisedState"as device_id, serial_number, device_type, resource_id, ios_vendor_id, compromised_state nodrop
| parse field=compromised_state "\u2018*\u2019" as compromised_state
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Compromised Credentials, Compromised Devices, Content sharing by Compromised Users, Document Downloads by Title, Document Types, Documents Being Shared, Documents Shared Outside of Organization, Documents Viewed - Top 10, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Google Activity by Source Location, Groups - Users Added or Removed, Identity Alerts by User, Login Failures by User, Most Active IPs, Most Active Users, Primary Action Count, Recent Uploads by Title, Suspended Users, Suspicious Logins, Top Admin Action, Top Apps, Top Event Name by Event Type, Top Login Failure Reasons, Top Users Creating Contents, Top Users Downloading Contents, Top Users Sharing Contents Outside of Organization, Top Users Uploading Contents, Total Admins, Total Alerts, Total Suspended Users, Total Suspicious Logins, Total Users Sharing Contents Outside of Organization, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "alertId","customerId","source","type","data"
| json auto field=data "email","loginDetails.ipAddress" as user, src_ip
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Compromised Credentials, Content sharing by Compromised Users, Document Downloads by Title, Document Types, Documents Being Shared, Documents Shared Outside of Organization, Documents Viewed - Top 10, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Groups - Users Added or Removed, Identity Alerts by User, Login Failures by User, Most Active IPs, Most Active Users, Primary Action Count, Recent Uploads by Title, Suspended Users, Suspicious Logins, Top Admin Action, Top Users Creating Contents, Top Users Downloading Contents, Top Users Sharing Contents Outside of Organization, Top Users Uploading Contents, Total Suspended Users, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Compromised Credentials, Content sharing by Compromised Users, Document Downloads by Title, Document Types, Documents Being Shared, Documents Shared Outside of Organization, Documents Viewed - Top 10, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Google Activity by Source Location, Groups - Users Added or Removed, Identity Alerts by User, Login Failures by User, Most Active IPs, Most Active Users, Primary Action Count, Recent Uploads by Title, Suspended Users, Suspicious Logins, Top Admin Action, Top Event Name by Event Type, Top Users Creating Contents, Top Users Downloading Contents, Top Users Sharing Contents Outside of Organization, Top Users Uploading Contents, Total Admins, Total Alerts, Total Suspended Users, Total Suspicious Logins, Total Users Sharing Contents Outside of Organization, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| json field=data "email" as email
```
### Use Cases:
Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Groups - Users Added or Removed, Identity Alerts by User, Suspended Users, Suspicious Logins, Top Admin Action, Total Suspended Users, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| json field=data "email","loginDetails.ipAddress" as email, src_ip
```
### Use Cases:
Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Groups - Users Added or Removed, Suspicious Logins, Top Admin Action, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| json field=data "email","loginDetails.ipAddress" as user, src_ip
```
### Use Cases:
Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Groups - Users Added or Removed, Identity Alerts by User, Suspicious Logins, Top Admin Action, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "alertId","customerId","source","type","data", "data.email" as alert_id, customer_id, source, type, data, email
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Compromised Credentials, Content sharing by Compromised Users, Document Downloads by Title, Document Types, Documents Being Shared, Documents Shared Outside of Organization, Documents Viewed - Top 10, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Groups - Users Added or Removed, Identity Alerts by User, Login Failures by User, Most Active IPs, Most Active Users, Primary Action Count, Recent Uploads by Title, Suspended Users, Suspicious Logins, Top Admin Action, Top Users Creating Contents, Top Users Downloading Contents, Top Users Sharing Contents Outside of Organization, Top Users Uploading Contents, Total Suspended Users, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "alertId","customerId","source","type","data", "securityInvestigationToolLink" as alert_id, customer_id, source, type, data, investigation_url nodrop
| json field=data "email" as admin_email
| json "actor", "id" nodrop
| json field=id "applicationName"   
| json field=actor "email" as admin_email
```
### Use Cases:
Alerts by Administrators, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Top Admin Action, Users - Created or Deleted



## Parser:
```
| json "id", "actor", "events"
| json field=id "applicationName"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"name\":\"(?<admin_action>.*?)\",\"type\":\"(?<admin_action_type>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\"" nodrop
```
### Use Cases:
G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Top Admin Action, Users - Created or Deleted



## Parser:
```
| json "id", "actor", "events"
| json field=id "applicationName"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"name\":\"(?<admin_action>.*?)\",\"type\":\"(?<admin_action_type>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"DESTINATION_USER_EMAIL\",\"value\":\"(?<recipient_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"APPLICATION_NAME\",\"value\":\"(?<application_name>.*?)\"" nodrop
```
### Use Cases:
Alerts by Administrators, App Token Actions, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Groups - Users Added or Removed, Top Admin Action, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "id", "actor", "events"
| json field=id "applicationName"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"name\":\"(?<admin_action>.*?)\",\"type\":\"(?<admin_action_type>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"DESTINATION_USER_EMAIL\",\"value\":\"(?<recipient_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"APPLICATION_NAME\",\"value\":\"(?<application_name>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"GROUP_EMAIL\",\"value\":\"(?<group_email>.*?)\"" nodrop
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Compromised Credentials, Content sharing by Compromised Users, Document Downloads by Title, Document Types, Documents Being Shared, Documents Shared Outside of Organization, Documents Viewed - Top 10, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Google Activity by Source Location, Groups - Users Added or Removed, Identity Alerts by User, Login Failures by User, Most Active IPs, Most Active Users, Primary Action Count, Recent Uploads by Title, Suspended Users, Suspicious Logins, Top Admin Action, Top Users Creating Contents, Top Users Downloading Contents, Top Users Sharing Contents Outside of Organization, Top Users Uploading Contents, Total Admins, Total Suspended Users, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "id", "actor", "events"
| json field=id "applicationName"
| parse regex field=events "\[\{\"name\":\"(?<token_action>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\{\"name\":\"app_name\",\"value\":\"(?<app_name>.*?)\"\}" nodrop
```
### Use Cases:
Action by Admin - Distribution, Alerts by Administrators, App Token Actions, App Token Count, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Groups - Users Added or Removed, Top Admin Action, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "id", "actor", "events"
| json field=id "applicationName"
| parse regex field=events "\[\{\"name\":\"(?<token_action>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\{\"name\":\"app_name\",\"value\":\"(?<app_name>.*)\"\}" nodrop
```
### Use Cases:
Alerts by Administrators, App Token Actions, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Top Admin Action, Users - Created or Deleted



## Parser:
```
| json "id", "actor", "events", "ipAddress"
| json field=id "applicationName"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\""  nodrop
| parse regex field=events "\[\{\"name\":\"(?<admin_action>.*?)\",\"type\":\"(?<admin_action_type>.*?)\",\"parameters\"" nodrop
```
### Use Cases:
G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count



## Parser:
```
| json "id", "actor", "ipAddress" nodrop
| json field=actor "email"
| json "alertId","customerId","source","type","data", "data.email" as alert_id, customer_id, source, type, data, email
| json field=id "applicationName"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as eventType, eventName
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"target_user\",\n\s+\"value\": \"(?<target_user>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"new_value\",\n\s+\"multiValue\": \[\n\s+(?<new_value>[^\]]*?)\]\n" nodrop
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Content sharing by Compromised Users, Document Downloads by Title, Document Types, Documents Being Shared, Documents Shared Outside of Organization, Documents Viewed - Top 10, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Groups - Users Added or Removed, Identity Alerts by User, Primary Action Count, Recent Uploads by Title, Suspended Users, Suspicious Logins, Top Admin Action, Total Suspended Users, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "id", "actor", "ipAddress" nodrop
| json field=actor "email"
| json field=id "applicationName"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as eventType, eventName
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"target_user\",\n\s+\"value\": \"(?<target_user>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"new_value\",\n\s+\"multiValue\": \[\n\s+(?<new_value>[^\]]*?)\]\n" nodrop
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Document Downloads by Title, Document Types, Documents Shared Outside of Organization, Documents Viewed - Top 10, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Groups - Users Added or Removed, Identity Alerts by User, Primary Action Count, Suspended Users, Suspicious Logins, Top Admin Action, Total Suspended Users, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "id", "actor", "ipAddress" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as eventType, eventName
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Document Downloads by Title, Document Types, Documents Viewed - Top 10, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Groups - Users Added or Removed, Identity Alerts by User, Primary Action Count, Suspended Users, Suspicious Logins, Top Admin Action, Total Suspended Users, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "id", "actor", "ipAddress" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as eventType, eventName
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"doc_type\",\n\s+\"value\": \"(?<doc_type>[^\"]*)\"" nodrop
| parse regex field=doc_title "[^\?]+?\.(?<doc_ext>[a-zA-Z0-9]{2,4})$"
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Document Downloads by Title, Document Types, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Groups - Users Added or Removed, Identity Alerts by User, Suspended Users, Suspicious Logins, Top Admin Action, Total Suspended Users, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "id", "actor", "ipAddress" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as eventType, eventName
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"target_user\",\n\s+\"value\": \"(?<target_user>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"new_value\",\n\s+\"multiValue\": \[\n\s+(?<new_value>[^\]]*?)\]\n" nodrop 
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Document Downloads by Title, Document Types, Documents Being Shared, Documents Shared Outside of Organization, Documents Viewed - Top 10, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Groups - Users Added or Removed, Identity Alerts by User, Primary Action Count, Recent Uploads by Title, Suspended Users, Suspicious Logins, Top Admin Action, Total Suspended Users, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "id", "actor", "ipAddress" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| parse regex "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]+)\"" nodrop // short cut here since doc_title is the same for all event objects
| json field=p_Event "type","name" as eventType, eventName
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Document Downloads by Title, Document Types, Documents Shared Outside of Organization, Documents Viewed - Top 10, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Groups - Users Added or Removed, Identity Alerts by User, Primary Action Count, Recent Uploads by Title, Suspended Users, Suspicious Logins, Top Admin Action, Total Suspended Users, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "id", "actor", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop
| parse regex field=eventparameters "\{\"name\":\"login_type\",\"value\":\"(?<login_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_failure_type\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_challenge_status\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Compromised Credentials, Compromised Devices, Content sharing by Compromised Users, Document Downloads by Title, Document Types, Documents Being Shared, Documents Shared Outside of Organization, Documents Viewed - Top 10, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Google Activity by Source Location, Groups - Users Added or Removed, Identity Alerts by User, Login Failures by User, Logins from Multiple IPs, Most Active IPs, Most Active Users, Primary Action Count, Recent Uploads by Title, Suspended Users, Suspicious Logins, Top Admin Action, Top Apps, Top Event Name by Event Type, Top Login Failure Reasons, Top Users Creating Contents, Top Users Downloading Contents, Top Users Sharing Contents Outside of Organization, Top Users Uploading Contents, Total Admins, Total Alerts, Total Login Failures, Total Suspended Users, Total Suspicious Logins, Total Users Sharing Contents Outside of Organization, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "id", "ipAddress", "actor" nodrop
| json field=actor "email"
| json field=id "applicationName"
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Document Downloads by Title, Document Types, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Groups - Users Added or Removed, Identity Alerts by User, Suspended Users, Suspicious Logins, Top Admin Action, Total Suspended Users, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "id", "ipAddress", "actor" nodrop
| json field=actor "email"
| json field=id "applicationName"
| parse regex  "\{\n\s+\"type\": \"(?<eventType>\w+)\",\n\s+\"name\": \"(?<eventName>\w+)\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n"
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Document Downloads by Title, Document Types, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Groups - Users Added or Removed, Identity Alerts by User, Primary Action Count, Suspended Users, Suspicious Logins, Top Admin Action, Total Suspended Users, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "id", "ipAddress", "actor" nodrop
| json field=actor "email"
| json field=id "applicationName"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as eventType, eventName
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"target_user\",\n\s+\"value\": \"(?<target_user>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"old_value\",\n\s+\"multiValue\": \[\n\s+(?<old_value>[^\]]*)\]\n" nodrop
| parse regex field=p_Event "\"name\": \"new_value\",\n\s+\"multiValue\": \[\n\s+(?<new_value>[^\]]*?)\]\n" nodrop
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Document Downloads by Title, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Groups - Users Added or Removed, Identity Alerts by User, Suspended Users, Suspicious Logins, Top Admin Action, Total Suspended Users, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "id", "ipAddress", "actor" nodrop
| json field=actor "email"
| json field=id "applicationName"
| parse regex "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]+)\"" nodrop // short cut here since doc_title is the same for all event objects
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as eventType, eventName
```
### Use Cases:
Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Document Downloads by Title, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Groups - Users Added or Removed, Identity Alerts by User, Suspended Users, Suspicious Logins, Top Admin Action, Total Suspended Users, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "id", "ipAddress", "actor" nodrop
| json field=id "applicationName"
| json field=actor "email"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as eventType, eventName
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"target_user\",\n\s+\"value\": \"(?<target_user>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"new_value\",\n\s+\"multiValue\": \[\n\s+(?<new_value>[^\]]*?)\]\n" nodrop
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Compromised Credentials, Content sharing by Compromised Users, Document Downloads by Title, Document Types, Documents Being Shared, Documents Shared Outside of Organization, Documents Viewed - Top 10, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Google Activity by Source Location, Groups - Users Added or Removed, Identity Alerts by User, Login Failures by User, Most Active IPs, Most Active Users, Primary Action Count, Recent Uploads by Title, Suspended Users, Suspicious Logins, Top Admin Action, Top Event Name by Event Type, Top Users Creating Contents, Top Users Downloading Contents, Top Users Sharing Contents Outside of Organization, Top Users Uploading Contents, Total Admins, Total Suspended Users, Total Suspicious Logins, Total Users Sharing Contents Outside of Organization, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "id", "ipAddress", "events", "actor" nodrop
| json field=actor "email"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Content sharing by Compromised Users, Document Downloads by Title, Document Types, Documents Being Shared, Documents Shared Outside of Organization, Documents Viewed - Top 10, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Groups - Users Added or Removed, Identity Alerts by User, Most Active IPs, Most Active Users, Primary Action Count, Recent Uploads by Title, Suspended Users, Suspicious Logins, Top Admin Action, Top Users Creating Contents, Top Users Downloading Contents, Top Users Sharing Contents Outside of Organization, Top Users Uploading Contents, Total Suspended Users, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| json "id", "ipAddress", "events", "actor" nodrop
| json field=actor "email" 
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```
### Use Cases:
ACL Changes, Action by Admin - Distribution, Alerts by Administrators, Alerts by Source IP, App Token Actions, App Token Count, Content sharing by Compromised Users, Document Downloads by Title, Document Types, Documents Being Shared, Documents Shared Outside of Organization, Documents Viewed - Top 10, Drive Activity by Country Over Time, Drive Activity by Location, G Suite - Document Flow Diagram, G Suite - Excessive Login Failures by User, G Suite - Login Challenge for Suspicious Sign-ins, G Suite - Password Changes Count, Groups - Users Added or Removed, Identity Alerts by User, Most Active IPs, Primary Action Count, Recent Uploads by Title, Suspended Users, Suspicious Logins, Top Admin Action, Top Users Creating Contents, Top Users Downloading Contents, Top Users Uploading Contents, Total Suspended Users, Total Suspicious Logins, User Actions Details, User Content Transfered, Users - Created or Deleted



## Parser:
```
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as drive_action_type,drive_action_name
| parse regex field=p_Event "\"name\": \"doc_id\",\n\s+\"value\": \"(?<doc_id>[^\"]*)\"" nodrop
```
### Use Cases:
G Suite - Document Flow Diagram


