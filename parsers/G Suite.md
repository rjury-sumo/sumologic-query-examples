# Parsers For G Suite

**G Suite/Admin - New/Action by Admin - Distribution**
```
_sourceCategory = Labs/gsuite/apps "\"applicationName\": \"admin\""
| json "id", "actor", "events"
| json field=id "applicationName"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"name\":\"(?<admin_action>.*?)\",\"type\":\"(?<admin_action_type>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"DESTINATION_USER_EMAIL\",\"value\":\"(?<recipient_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"APPLICATION_NAME\",\"value\":\"(?<application_name>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"GROUP_EMAIL\",\"value\":\"(?<group_email>.*?)\"" nodrop
```

**G Suite/Admin - New/Alerts by Administrators**
```
_sourceCategory = Labs/gsuite/alerts
| json "alertId","customerId","source","type","data", "securityInvestigationToolLink" as alert_id, customer_id, source, type, data, investigation_url nodrop
| json field=data "email" as admin_email
|where if ("{{alert_id}}" = "*", true, alert_id matches "{{alert_id}}") AND if ("{{admin_email}}" = "*", true, admin_email matches "{{admin_email}}")
|count by admin_email, alert_id, customer_id, source, type, data, investigation_url, _messageTime
| where [subquery:_sourceCategory = Labs/gsuite/apps "admin"
 | json "actor", "id" nodrop
 | json field=id "applicationName"   
 | where applicationName="admin"
 | json field=actor "email" as admin_email
```

**G Suite/Admin - New/App Token Actions**
```
_sourceCategory = Labs/gsuite/apps "\"applicationName\": \"token\""
| json "id", "actor", "events"
| json field=id "applicationName"
| parse regex field=events "\[\{\"name\":\"(?<token_action>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\{\"name\":\"app_name\",\"value\":\"(?<app_name>.*)\"\}" nodrop
```

**G Suite/Admin - New/App Token Count**
```
_sourceCategory = Labs/gsuite/apps "\"applicationName\": \"token\""
| json "id", "actor", "events"
| json field=id "applicationName"
| parse regex field=events "\[\{\"name\":\"(?<token_action>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\{\"name\":\"app_name\",\"value\":\"(?<app_name>.*?)\"\}" nodrop
```

**G Suite/Admin - New/Groups - Users Added or Removed**
```
_sourceCategory = Labs/gsuite/apps USER_EMAIL AND (ADD_GROUP_MEMBER OR REMOVE_GROUP_MEMBER) "\"applicationName\": \"admin\""
| json "id", "actor", "events"
| json field=id "applicationName"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"name\":\"(?<admin_action>.*?)\",\"type\":\"(?<admin_action_type>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"DESTINATION_USER_EMAIL\",\"value\":\"(?<recipient_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"APPLICATION_NAME\",\"value\":\"(?<application_name>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"GROUP_EMAIL\",\"value\":\"(?<group_email>.*?)\"" nodrop
```

**G Suite/Admin - New/Top Admin Action**
```
_sourceCategory = Labs/gsuite/apps USER_EMAIL "\"applicationName\": \"admin\""
| json "id", "actor", "events"
| json field=id "applicationName"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"name\":\"(?<admin_action>.*?)\",\"type\":\"(?<admin_action_type>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"DESTINATION_USER_EMAIL\",\"value\":\"(?<recipient_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"APPLICATION_NAME\",\"value\":\"(?<application_name>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"GROUP_EMAIL\",\"value\":\"(?<group_email>.*?)\"" nodrop
```

**G Suite/Admin - New/User Actions Details**
```
_sourceCategory = Labs/gsuite/apps USER_EMAIL "\"applicationName\": \"admin\""
| json "id", "actor", "events"
| json field=id "applicationName"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"name\":\"(?<admin_action>.*?)\",\"type\":\"(?<admin_action_type>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"DESTINATION_USER_EMAIL\",\"value\":\"(?<recipient_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"APPLICATION_NAME\",\"value\":\"(?<application_name>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"GROUP_EMAIL\",\"value\":\"(?<group_email>.*?)\"" nodrop
```

**G Suite/Admin - New/User Content Transfered**
```
_sourceCategory = Labs/gsuite/apps USER_EMAIL CREATE_DATA_TRANSFER_REQUEST "\"applicationName\": \"admin\""
| json "id", "actor", "events"
| json field=id "applicationName"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"name\":\"(?<admin_action>.*?)\",\"type\":\"(?<admin_action_type>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"DESTINATION_USER_EMAIL\",\"value\":\"(?<recipient_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"APPLICATION_NAME\",\"value\":\"(?<application_name>.*?)\"" nodrop
```

**G Suite/Admin - New/Users - Created or Deleted**
```
_sourceCategory = Labs/gsuite/apps USER_EMAIL AND (CREATE_USER OR DELETE_USER) "\"applicationName\": \"admin\""
| json "id", "actor", "events"
| json field=id "applicationName"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"name\":\"(?<admin_action>.*?)\",\"type\":\"(?<admin_action_type>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\"" nodrop
```

**G Suite/Alert Center - Google Identity - New/Alerts by Source IP**
```
_sourceCategory = Labs/gsuite/alerts email AccountWarning
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| where source matches "{{source}}" and type matches "{{type}}"
| json field=data "email","loginDetails.ipAddress" as user, src_ip
```

**G Suite/Alert Center - Google Identity - New/Identity Alerts by User**
```
_sourceCategory = Labs/gsuite/alerts email "Google identity"
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| where source = "Google identity"
| json field=data "email","loginDetails.ipAddress" as user, src_ip
```

**G Suite/Alert Center - Google Identity - New/Suspended Users**
```
_sourceCategory = Labs/gsuite/alerts AccountWarning suspended
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| json field=data "email" as email
```

**G Suite/Alert Center - Google Identity - New/Suspicious Logins**
```
_sourceCategory = Labs/gsuite/alerts AccountWarning login
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| json field=data "email","loginDetails.ipAddress" as email, src_ip
```

**G Suite/Alert Center - Google Identity - New/Total Suspended Users**
```
_sourceCategory = Labs/gsuite/alerts AccountWarning suspended
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| json field=data "email" as email
```

**G Suite/Alert Center - Google Identity - New/Total Suspicious Logins**
```
_sourceCategory = Labs/gsuite/alerts AccountWarning login
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| json field=data "email" as email
```

**G Suite/Document Flow Diagram/G Suite - Document Flow Diagram**
```
_sourceCategory = Labs/gsuite/apps "\"type\": \"access\"" "\"applicationName\": \"drive\""
// Add doc_id, doc_title, or email to first line to focus the search
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as drive_action_type,drive_action_name
| parse regex field=p_Event "\"name\": \"doc_id\",\n\s+\"value\": \"(?<doc_id>[^\"]*)\"" nodrop
```

**G Suite/Drive - New/ACL Changes**
```
_sourceCategory = Labs/gsuite/apps "\"type\": \"acl_change\"" "\"applicationName\": \"drive\"" 
| json "id", "ipAddress", "actor" nodrop
| json field=actor "email"
| json field=id "applicationName"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as eventType, eventName
| where eventType="acl_change" and applicationName="drive"
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"target_user\",\n\s+\"value\": \"(?<target_user>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"old_value\",\n\s+\"multiValue\": \[\n\s+(?<old_value>[^\]]*)\]\n" nodrop
| parse regex field=p_Event "\"name\": \"new_value\",\n\s+\"multiValue\": \[\n\s+(?<new_value>[^\]]*?)\]\n" nodrop
```

**G Suite/Drive - New/Document Downloads by Title**
```
_sourceCategory = Labs/gsuite/apps "\"applicationName\": \"drive\"" "\"name\": \"download\""
| json "id", "ipAddress", "actor" nodrop
| json field=actor "email"
| json field=id "applicationName"
| parse regex "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]+)\"" nodrop // short cut here since doc_title is the same for all event objects
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as eventType, eventName
```

**G Suite/Drive - New/Document Types**
```
_sourceCategory = Labs/gsuite/apps "\"applicationName\": \"drive\"" 
| json "id", "actor", "ipAddress" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| where applicationName="drive"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as eventType, eventName
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"doc_type\",\n\s+\"value\": \"(?<doc_type>[^\"]*)\"" nodrop
| parse regex field=doc_title "[^\?]+?\.(?<doc_ext>[a-zA-Z0-9]{2,4})$"
```

**G Suite/Drive - New/Documents Being Shared**
```
_sourceCategory = Labs/gsuite/apps "\"type\": \"acl_change\"" "\"applicationName\": \"drive\"" (can_view OR can_edit OR people?with* OR public*) 
| json "id", "actor", "ipAddress" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| where applicationName="drive"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as eventType, eventName
| where eventType="acl_change"
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"target_user\",\n\s+\"value\": \"(?<target_user>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"new_value\",\n\s+\"multiValue\": \[\n\s+(?<new_value>[^\]]*?)\]\n" nodrop 
```

**G Suite/Drive - New/Documents Shared Outside of Organization**
```
_sourceCategory = Labs/gsuite/apps "\"type\": \"acl_change\"" "\"applicationName\": \"drive\"" (can_view OR can_edit OR people_with_link OR public_on_the_web)
| json "id", "actor", "ipAddress" nodrop
| json field=actor "email"
| json field=id "applicationName"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as eventType, eventName
| where eventType="acl_change" and applicationName="drive"
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"target_user\",\n\s+\"value\": \"(?<target_user>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"new_value\",\n\s+\"multiValue\": \[\n\s+(?<new_value>[^\]]*?)\]\n" nodrop
```

**G Suite/Drive - New/Documents Viewed - Top 10**
```
_sourceCategory = Labs/gsuite/apps "\"type\": \"access\"" "\"applicationName\": \"drive\""
| json "id", "actor", "ipAddress" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as eventType, eventName
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
```

**G Suite/Drive - New/Drive Activity by Country Over Time**
```
_sourceCategory = Labs/gsuite/apps "\"applicationName\": \"drive\"" ipAddress
| json "id", "ipAddress", "actor" nodrop
| json field=actor "email"
| json field=id "applicationName"
```

**G Suite/Drive - New/Drive Activity by Location**
```
_sourceCategory = Labs/gsuite/apps "\"applicationName\": \"drive\"" ipAddress
| json "id", "ipAddress", "actor" nodrop
| json field=actor "email"
| json field=id "applicationName"
```

**G Suite/Drive - New/Primary Action Count**
```
_sourceCategory = Labs/gsuite/apps "\"applicationName\": \"drive\""
| json "id", "ipAddress", "actor" nodrop
| json field=actor "email"
| json field=id "applicationName"
| parse regex  "\{\n\s+\"type\": \"(?<eventType>\w+)\",\n\s+\"name\": \"(?<eventName>\w+)\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n"
```

**G Suite/Drive - New/Recent Uploads by Title**
```
_sourceCategory = Labs/gsuite/apps "\"applicationName\": \"drive\"" "\"type\": \"access\"" "\"name\": \"upload\""
| json "id", "actor", "ipAddress" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| parse regex "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]+)\"" nodrop // short cut here since doc_title is the same for all event objects
| json field=p_Event "type","name" as eventType, eventName
```

**G Suite/Drive - User Activity - New/Content sharing by Compromised Users**
```
_sourceCategory = Labs/gsuite/apps "\"type\": \"acl_change\"" "\"applicationName\": \"drive\"" (can_view OR can_edit OR people_with_link OR public_on_the_web)
| json "id", "actor", "ipAddress" nodrop
| json field=actor "email"
| where [subquery:_sourceCategory = Labs/gsuite/alerts "Leaked password"
 | json "alertId","customerId","source","type","data", "data.email" as alert_id, customer_id, source, type, data, email
 | where type="Leaked password"  
 | count by email
 | compose email  
]
| json field=id "applicationName"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as eventType, eventName
| where eventType="acl_change" and applicationName="drive"
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"target_user\",\n\s+\"value\": \"(?<target_user>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"new_value\",\n\s+\"multiValue\": \[\n\s+(?<new_value>[^\]]*?)\]\n" nodrop
```

**G Suite/Drive - User Activity - New/Most Active IPs**
```
_sourceCategory = Labs/gsuite/apps "\"applicationName\": \"drive\"" ipAddress
| json "id", "ipAddress", "events", "actor" nodrop
| json field=actor "email" 
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**G Suite/Drive - User Activity - New/Most Active Users**
```
_sourceCategory = Labs/gsuite/apps "\"applicationName\": \"drive\"" 
| json "id", "ipAddress", "events", "actor" nodrop
| json field=actor "email"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**G Suite/Drive - User Activity - New/Top Users Creating Contents**
```
_sourceCategory = Labs/gsuite/apps "\"applicationName\": \"drive\"" "\"name\": \"create\""
| json "id", "ipAddress", "events", "actor" nodrop
| json field=actor "email" 
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**G Suite/Drive - User Activity - New/Top Users Downloading Contents**
```
_sourceCategory = Labs/gsuite/apps "\"applicationName\": \"drive\"" "\"type\": \"access\"" "\"name\": \"download\""
| json "id", "ipAddress", "events", "actor" nodrop
| json field=actor "email" 
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**G Suite/Drive - User Activity - New/Top Users Sharing Contents Outside of Organization**
```
_sourceCategory = Labs/gsuite/apps "\"type\": \"acl_change\"" "\"applicationName\": \"drive\"" (can_view OR can_edit OR people_with_link OR public_on_the_web)
| json "id", "ipAddress", "actor" nodrop
| json field=id "applicationName"
| json field=actor "email"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as eventType, eventName
| where applicationName= "drive" and eventType="acl_change"
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"target_user\",\n\s+\"value\": \"(?<target_user>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"new_value\",\n\s+\"multiValue\": \[\n\s+(?<new_value>[^\]]*?)\]\n" nodrop
```

**G Suite/Drive - User Activity - New/Top Users Uploading Contents**
```
_sourceCategory = Labs/gsuite/apps "\"applicationName\": \"drive\"" "\"name\": \"upload\""
| json "id", "ipAddress", "events", "actor" nodrop
| json field=actor "email" 
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**G Suite/Excessive Login Failures by User/G Suite - Excessive Login Failures by User**
```
_sourceCategory = Labs/gsuite/apps (("login_failure" and "login_failure_type")  or ("login_challenge" and "login_challenge_status")) "\"type\": \"login\""
| json "actor", "id", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop
| parse regex field=eventparameters "\{\"name\":\"login_type\",\"value\":\"(?<loginType>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_failure_type\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_challenge_status\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
```

**G Suite/Login Challenge for Suspicious Sign-ins/G Suite - Login Challenge for Suspicious Sign-ins**
```
_sourceCategory = Labs/gsuite/apps ("login_challenge" and "login_challenge_status") "\"type\": \"login\"" 
| json "actor", "id", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop
| parse regex field=eventparameters "\{\"name\":\"login_type\",\"value\":\"(?<loginType>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_challenge_status\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
```

**G Suite/Overview - New/ACL Changes**
```
_sourceCategory = Labs/gsuite/apps acl_change "\"applicationName\": \"drive\""
| json "actor", "id", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**G Suite/Overview - New/Compromised Credentials**
```
_sourceCategory = Labs/gsuite/alerts "Leaked password"
| json "alertId","customerId","source","type","data", "data.email" as alert_id, customer_id, source, type, data, email
```

**G Suite/Overview - New/Compromised Devices**
```
_sourceCategory = Labs/gsuite/alerts  "Device compromised"
| json "alertId","customerId","source","type","data.email", "data.events[*]", "createTime" as alert_id, customer_id, source, type, email, events, create_time
| where type = "Device compromised"
| parse regex field=events "(?<device_info>\{[^\{]+\})" multi
| json field=device_info "deviceId", "serialNumber", "deviceType", "resourceId", "iosVendorId", "deviceCompromisedState"as device_id, serial_number, device_type, resource_id, ios_vendor_id, compromised_state nodrop
| parse field=compromised_state "\u2018*\u2019" as compromised_state
```

**G Suite/Overview - New/Google Activity by Source Location**
```
_sourceCategory = Labs/gsuite/apps ipAddress
| json "actor", "ipAddress", "events", "id" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**G Suite/Overview - New/Identity Alerts by User**
```
_sourceCategory = Labs/gsuite/alerts email "Google identity"
| json "alertId","customerId","source","type","data"
| where source = "Google identity"
| json auto field=data "email","loginDetails.ipAddress" as user, src_ip
```

**G Suite/Overview - New/Login Failures by User**
```
_sourceCategory = Labs/gsuite/apps (("login_failure" and "login_failure_type")  or ("login_challenge" and "login_challenge_status")) "\"type\": \"login\""
| json "id", "actor", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop
| parse regex field=eventparameters "\{\"name\":\"login_type\",\"value\":\"(?<login_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_failure_type\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_challenge_status\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
```

**G Suite/Overview - New/Logins from Multiple IPs**
```
_sourceCategory = Labs/gsuite/apps ipAddress email login "\"type\": \"login\""
| json "actor", "id", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**G Suite/Overview - New/Top Apps**
```
_sourceCategory = Labs/gsuite/apps "\"applicationName\": \"token\""
| json "actor", "id", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop 
| where applicationName="token"
| parse regex field=eventparameters "\{\"name\":\"app_name\",\"value\":\"(?<app_name>.*?)\"" nodrop
```

**G Suite/Overview - New/Top Event Name by Event Type**
```
_sourceCategory = Labs/gsuite/apps events type name
| json "actor", "ipAddress", "events", "id" nodrop
| json field=id "applicationName"
| json field=actor "email", "profileId"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**G Suite/Overview - New/Top Login Failure Reasons**
```
_sourceCategory = Labs/gsuite/apps (("login_failure" and "login_failure_type")  or ("login_challenge" and "login_challenge_status")) "\"type\": \"login\""
| json "id", "actor", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop
| parse regex field=eventparameters "\{\"name\":\"login_type\",\"value\":\"(?<login_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_failure_type\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_challenge_status\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
```

**G Suite/Overview - New/Total Admins**
```
_sourceCategory = Labs/gsuite/apps "\"applicationName\": \"admin\""
| json "id", "actor", "events"
| json field=id "applicationName"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"name\":\"(?<admin_action>.*?)\",\"type\":\"(?<admin_action_type>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"DESTINATION_USER_EMAIL\",\"value\":\"(?<recipient_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"APPLICATION_NAME\",\"value\":\"(?<application_name>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"GROUP_EMAIL\",\"value\":\"(?<group_email>.*?)\"" nodrop
```

**G Suite/Overview - New/Total Alerts**
```
_sourceCategory = Labs/gsuite/alerts 
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
```

**G Suite/Overview - New/Total Login Failures**
```
_sourceCategory = Labs/gsuite/apps (("login_failure" and "login_failure_type")  or ("login_challenge" and "login_challenge_status")) "\"type\": \"login\""
| json "id", "actor", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop
| parse regex field=eventparameters "\{\"name\":\"login_type\",\"value\":\"(?<login_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_failure_type\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_challenge_status\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
```

**G Suite/Overview - New/Total Users Sharing Contents Outside of Organization**
```
_sourceCategory = Labs/gsuite/apps "\"type\": \"acl_change\"" "\"applicationName\": \"drive\"" (can_view OR can_edit OR people_with_link OR public_on_the_web)
| json "id", "ipAddress", "actor" nodrop
| json field=id "applicationName"
| json field=actor "email"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as eventType, eventName
| where applicationName= "drive" and eventType="acl_change"
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"target_user\",\n\s+\"value\": \"(?<target_user>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"new_value\",\n\s+\"multiValue\": \[\n\s+(?<new_value>[^\]]*?)\]\n" nodrop
```

**G Suite/Password Changes Count/G Suite - Password Changes Count**
```
_sourceCategory = Labs/gsuite/apps USER_EMAIL CHANGE_PASSWORD "\"applicationName\": \"admin\""
| json "id", "actor", "events", "ipAddress"
| json field=id "applicationName"
| where applicationName="admin"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\""  nodrop
| parse regex field=events "\[\{\"name\":\"(?<admin_action>.*?)\",\"type\":\"(?<admin_action_type>.*?)\",\"parameters\"" nodrop
```


