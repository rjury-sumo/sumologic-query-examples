# Parsers For Google Workspace

**Google Workspace/Admin/Action by Admin - Distribution**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"applicationName\": \"admin\""
| json "id", "actor", "events"
| json field=id "applicationName"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"type\":\"(?<admin_action_type>.*?)\",\"name\":\"(?<admin_action>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"DESTINATION_USER_EMAIL\",\"value\":\"(?<recipient_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"APPLICATION_NAME\",\"value\":\"(?<application_name>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"GROUP_EMAIL\",\"value\":\"(?<group_email>.*?)\"" nodrop
```

**Google Workspace/Admin/Alerts by Administrators**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}} 
| json "alertId","customerId","source","type","data", "securityInvestigationToolLink" as alert_id, customer_id, source, type, data, investigation_url nodrop
| json field=data "email" as admin_email
|where if ("{{alert_id}}" = "*", true, alert_id matches "{{alert_id}}") AND if ("{{admin_email}}" = "*", true, admin_email matches "{{admin_email}}")
|count by admin_email, alert_id, customer_id, source, type, data, investigation_url, _messageTime
| where [subquery:_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "admin"
 | json "actor", "id" nodrop
 | json field=id "applicationName"   
 | where applicationName="admin"
 | json field=actor "email" as admin_email
```

**Google Workspace/Admin/App Token Actions**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"applicationName\": \"token\""
| json "id", "actor", "events"
| json field=id "applicationName"
| parse regex field=events "\[\{\"name\":\"(?<token_action>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\{\"name\":\"app_name\",\"value\":\"(?<app_name>.*)\"\}" nodrop
```

**Google Workspace/Admin/App Token Count**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"applicationName\": \"token\""
| json "id", "actor", "events"
| json field=id "applicationName"
| parse regex field=events "\[\{\"name\":\"(?<token_action>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\{\"name\":\"app_name\",\"value\":\"(?<app_name>.*?)\"\}" nodrop
```

**Google Workspace/Admin/Groups - Users Added or Removed**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  USER_EMAIL AND (ADD_GROUP_MEMBER OR REMOVE_GROUP_MEMBER) "\"applicationName\": \"admin\""
| json "id", "actor", "events"
| json field=id "applicationName"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"type\":\"(?<admin_action_type>.*?)\",\"name\":\"(?<admin_action>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"DESTINATION_USER_EMAIL\",\"value\":\"(?<recipient_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"APPLICATION_NAME\",\"value\":\"(?<application_name>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"GROUP_EMAIL\",\"value\":\"(?<group_email>.*?)\"" nodrop
```

**Google Workspace/Admin/Top Admin Action**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  USER_EMAIL "\"applicationName\": \"admin\""
| json "id", "actor", "events"
| json field=id "applicationName"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"type\":\"(?<admin_action_type>.*?)\",\"name\":\"(?<admin_action>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"DESTINATION_USER_EMAIL\",\"value\":\"(?<recipient_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"APPLICATION_NAME\",\"value\":\"(?<application_name>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"GROUP_EMAIL\",\"value\":\"(?<group_email>.*?)\"" nodrop
```

**Google Workspace/Admin/User Actions Details**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  USER_EMAIL "\"applicationName\": \"admin\""
| json "id", "actor", "events"
| json field=id "applicationName"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"type\":\"(?<admin_action_type>.*?)\",\"name\":\"(?<admin_action>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"DESTINATION_USER_EMAIL\",\"value\":\"(?<recipient_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"APPLICATION_NAME\",\"value\":\"(?<application_name>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"GROUP_EMAIL\",\"value\":\"(?<group_email>.*?)\"" nodrop
```

**Google Workspace/Admin/User Content Transfered**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  USER_EMAIL CREATE_DATA_TRANSFER_REQUEST "\"applicationName\": \"admin\""
| json "id", "actor", "events"
| json field=id "applicationName"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"type\":\"(?<admin_action_type>.*?)\",\"name\":\"(?<admin_action>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"DESTINATION_USER_EMAIL\",\"value\":\"(?<recipient_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"APPLICATION_NAME\",\"value\":\"(?<application_name>.*?)\"" nodrop
```

**Google Workspace/Admin/Users - Created or Deleted**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  USER_EMAIL AND (CREATE_USER OR DELETE_USER) "\"applicationName\": \"admin\""
| json "id", "actor", "events"
| json field=id "applicationName"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"type\":\"(?<admin_action_type>.*?)\",\"name\":\"(?<admin_action>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\"" nodrop
```

**Google Workspace/Alert Center -  Other Alerts/Alerts by User**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  "Mobile device management"
| json "alertId","customerId","source","type","data.email", "data.events[*]" as alert_id, customer_id, source, type, email, events
| where source = "Mobile device management"
| parse regex field=events "(?<device_info>\{[^\{]+\})" multi
| json field=device_info "deviceId", "serialNumber", "deviceType"as device_id, serial_number, device_type
```

**Google Workspace/Alert Center -  Other Alerts/Recent Customer Takeout Initiated**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}    "Customer takeout initiated"
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| where type = "Customer takeout initiated"
| json field=data "email" as actor
```

**Google Workspace/Alert Center -  Other Alerts/Recent Devices Compromised**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}   "Device compromised"
| json "alertId","customerId","source","type","data.email", "data.events[*]", "createTime" as alert_id, customer_id, source, type, email, events, create_time
| where type = "Device compromised"
| parse regex field=events "(?<device_info>\{[^\{]+\})" multi
| json field=device_info "deviceId", "serialNumber", "deviceType", "resourceId", "iosVendorId", "deviceCompromisedState"as device_id, serial_number, device_type, resource_id, ios_vendor_id, compromised_state nodrop
| parse field=compromised_state "\u2018*\u2019" as compromised_state
```

**Google Workspace/Alert Center -  Other Alerts/Recent Google Operations Alerts**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  "Google Operations"
| json "alertId","customerId","source","type","data", "createTime" as alert_id, customer_id, source, type, data, create_time
| toURL(concat("https://admin.google.com/ac/ac/alert/details?alertId=", alert_id), alert_id) as alert_id
| json field=data "description","affectedUserEmails" 
| parse field=affectedUserEmails "[*]" as affectedUserEmails
```

**Google Workspace/Alert Center -  Other Alerts/Recent Government-Backed Attack Warnings**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}    "Government attack warning"
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| where type = "Government attack warning"
| json field=data "email" as attacker
```

**Google Workspace/Alert Center -  Other Alerts/Recent Suspicious Activity**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}   "Suspicious activity"
| json "alertId","customerId","source","type","data.email", "data.events[*]", "createTime" as alert_id, customer_id, source, type, email, events, create_time
| where type = "Suspicious activity"
| parse regex field=events "(?<device_info>\{[^\{]+\})" multi
| json field=device_info "serialNumber", "deviceId", "deviceType", "deviceModel", "iosVendorId", "deviceProperty", "oldValue", "newValue" as serial_number, device_id, device_type, device_model, ios_vendor_id, device_property, old_value, new_value nodrop
```

**Google Workspace/Alert Center -  Other Alerts/Suspicious Activity by Device Type**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}   "Suspicious activity"
| json "alertId","customerId","source","type","data.email", "data.events[*]", "createTime" as alert_id, customer_id, source, type, email, events, create_time
| where type = "Suspicious activity"
| parse regex field=events "(?<device_info>\{[^\{]+\})" multi
| json field=device_info "serialNumber", "deviceId", "deviceType", "deviceModel", "iosVendorId", "deviceProperty", "oldValue", "newValue" as serial_number, device_id, device_type, device_model, ios_vendor_id, device_property, old_value, new_value nodrop
```

**Google Workspace/Alert Center -  Other Alerts/Total Devices Compromised**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}   "Device compromised"
| json "alertId","customerId","source","type","data.email", "data.events[*]", "createTime" as alert_id, customer_id, source, type, email, events, create_time
| where type = "Device compromised"
| parse regex field=events "(?<device_info>\{[^\{]+\})" multi
| json field=device_info "deviceId", "serialNumber", "deviceType", "resourceId", "iosVendorId", "deviceCompromisedState"as device_id, serial_number, device_type, resource_id, ios_vendor_id, compromised_state nodrop
| parse field=compromised_state "\u2018*\u2019" as compromised_state
```

**Google Workspace/Alert Center - Gmail Phishing/Affected Users**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}   recipient "Gmail phishing"
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| where source = "Gmail phishing"
| json field=data "messages[*].recipient", "maliciousEntity.fromHeader"  as victims, attacker
| parse regex field=victims "\"(?<victim>[^\"]+)\"" multi
```

**Google Workspace/Alert Center - Gmail Phishing/Affected Users by Alert Types**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}   recipient "Gmail phishing"
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| where source = "Gmail phishing"
| json field=data "messages[*].recipient", "maliciousEntity.fromHeader"  as victims, attacker
| parse regex field=victims "\"(?<victim>[^\"]+)\"" multi
```

**Google Workspace/Alert Center - Gmail Phishing/Alert Types by Attacker**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}   recipient "Gmail phishing"
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| where source = "Gmail phishing"
| json field=data "messages[*].recipient", "maliciousEntity.fromHeader"  as victims, attacker
| parse regex field=victims "\"(?<victim>[^\"]+)\"" multi
```

**Google Workspace/Alert Center - Gmail Phishing/Gmail Phishing by Alert Types**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}   recipient "Gmail phishing"
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| where source = "Gmail phishing"
| json field=data "messages[*].recipient", "maliciousEntity.fromHeader"  as victims, attacker
| parse regex field=victims "\"(?<victim>[^\"]+)\"" multi
```

**Google Workspace/Alert Center - Gmail Phishing/Gmail Phishing Time Compare**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}   recipient "Gmail phishing"
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| where source = "Gmail phishing"
| json field=data "messages[*].recipient", "maliciousEntity.fromHeader"  as victims, attacker
| parse regex field=victims "\"(?<victim>[^\"]+)\"" multi
```

**Google Workspace/Alert Center - Gmail Phishing/IP**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}    "Gmail phishing"
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| where type = "Misconfigured whitelist"
| json field=data "messages[*].recipient", "messages[*].date", "maliciousEntity.fromHeader", "sourceIP"  as victims, message_dates, attacker, malicious_ip nodrop
| parse regex field=message_dates "\"(?<message_date>[^\"]+)\"" multi
| parse regex field=victims "\"(?<victim>[^\"]+)\"" multi
```

**Google Workspace/Alert Center - Gmail Phishing/Recent Attacks by Message Date**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}   recipient "Gmail phishing"
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| where source = "Gmail phishing"
| json field=data "messages[*]", "maliciousEntity.fromHeader"  as messages, attacker
| toURL(concat("https://admin.google.com/ac/ac/alert/details?alertId=", alert_id), alert_id) as alert_id
| parse regex field=messages "(?<message_info>\{[^\{]+\})" multi 
| json field=message_info "date", "subjectText", "recipient", "messageBodySnippet" as message_date, subject, victim, message_body_snippet
```

**Google Workspace/Alert Center - Gmail Phishing/Top 10 Attackers by Distinct Victims**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}   recipient "Gmail phishing"
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| where source = "Gmail phishing"
| json field=data "messages[*].recipient", "maliciousEntity.fromHeader"  as victims, attacker
| parse regex field=victims "\"(?<victim>[^\"]+)\"" multi
```

**Google Workspace/Alert Center - Gmail Phishing/Top 10 Attackers by Message Count**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}   messageId "Gmail phishing"
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| where source = "Gmail phishing"
| json field=data "messages[*].recipient", "messages[*].messageId", "maliciousEntity.fromHeader"  as victims, message_ids, attacker
| parse regex field=message_ids "\"(?<message_id>[^\"]+)\"" multi
| parse regex field=victims "\"(?<victim>[^\"]+)\"" multi
```

**Google Workspace/Alert Center - Gmail Phishing/Top 10 Suspicious Messages Reported**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}   recipient "Gmail phishing"
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| where type = "Suspicious message reported"
| json field=data "messages[*]", "maliciousEntity.fromHeader"  as messages, attacker
| toURL(concat("https://admin.google.com/ac/ac/alert/details?alertId=", alert_id), alert_id) as alert_id
| parse regex field=messages "(?<message_info>\{[^\{]+\})" multi 
| json field=message_info "date", "subjectText", "recipient", "messageBodySnippet" as message_date, subject, victim, message_body_snippet
```

**Google Workspace/Alert Center - Gmail Phishing/Top 10 User Reported Phishing Messages**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}   recipient "Gmail phishing"
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| where type = "User reported phishing"
| json field=data "messages[*]", "maliciousEntity.fromHeader"  as messages, attacker
| toURL(concat("https://admin.google.com/ac/ac/alert/details?alertId=", alert_id), alert_id) as alert_id
| parse regex field=messages "(?<message_info>\{[^\{]+\})" multi 
| json field=message_info "date", "subjectText", "recipient", "messageBodySnippet" as message_date, subject, victim, message_body_snippet
```

**Google Workspace/Alert Center - Gmail Phishing/Top 10 User Reported Spam Spike Messages**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}   recipient "Gmail phishing"
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| where type = "User reported spam spike"
| json field=data "messages[*]", "maliciousEntity.fromHeader"  as messages, attacker
| toURL(concat("https://admin.google.com/ac/ac/alert/details?alertId=", alert_id), alert_id) as alert_id
| parse regex field=messages "(?<message_info>\{[^\{]+\})" multi 
| json field=message_info "date", "subjectText", "recipient", "messageBodySnippet" as message_date, subject, victim, message_body_snippet
```

**Google Workspace/Alert Center - Google Identity/Alerts by Source IP**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  email AccountWarning
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| json field=data "email","loginDetails.ipAddress" as user, src_ip
```

**Google Workspace/Alert Center - Google Identity/Identity Alerts by User**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  email "Google identity"
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| where source = "Google identity"
| json field=data "email","loginDetails.ipAddress" as user, src_ip
```

**Google Workspace/Alert Center - Google Identity/Suspended Users**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  AccountWarning suspended
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| json field=data "email" as email
```

**Google Workspace/Alert Center - Google Identity/Suspicious Logins**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  AccountWarning login
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| json field=data "email","loginDetails.ipAddress" as email, src_ip
```

**Google Workspace/Alert Center - Google Identity/Total Suspended Users**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  AccountWarning suspended
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| json field=data "email" as email
```

**Google Workspace/Alert Center - Google Identity/Total Suspicious Logins**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  AccountWarning login
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| json field=data "email" as email
```

**Google Workspace/Alert Center - Investigations/Google Workspace Activity by Users with Compromised Credentials**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}} 
| json "actor", "events", "id" nodrop
| json field=actor "email"
| json field=id "applicationName"
| where [subquery:_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  "Leaked password"
 | json "alertId","customerId","source","type","data", "data.email" as alert_id, customer_id, source, type, data, email
 | where type="Leaked password"  
 | count by email
 | compose email  
]
| parse regex field=events "\"type\":\"(?<event_type>[^\"]+)\",\"name\":\"(?<event_name>[^\"]+)\"" multi
```

**Google Workspace/Alert Center - Investigations/Google Workspace Activity from Compromised Devices**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}} 
| json "actor", "events", "id" nodrop
| parse regex field=events "\"type\":\"(?<event_type>[^\"]+)\",\"name\":\"(?<event_name>[^\"]+)\"" multi
| parse regex field=events "\"DEVICE_SERIAL_NUMBER\",\"value\":\"(?<serial_number>[^\"]+)\"" multi
| where [subquery:_sourceCategory={{GoogleWorkspaceAlertsDataSource}}   "Device compromised"
    | json "alertId","customerId","source","type","data.email", "data.events[*]", "createTime" as alert_id, customer_id, source, type, email, events, create_time
    | where type = "Device compromised"
    | parse regex field=events "(?<device_info>\{[^\{]+\})" multi
    | json field=device_info "serialNumber" as serial_number
    | count by serial_number
    | compose serial_number
]
| json field=actor "email"
| json field=id "applicationName"
```

**Google Workspace/Alert Center - Investigations/Google Workspace Apps Accessed by Compromised Users**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}} 
| json "actor", "events", "id" nodrop
| json field=actor "email"
| json field=id "applicationName"
| where [subquery:_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  "Leaked password"
 | json "alertId","customerId","source","type","data", "data.email" as alert_id, customer_id, source, type, data, email
```

**Google Workspace/Alert Center - Investigations/Google Workspace Apps Accessed from Compromised Devices**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}} 
| json "actor", "events", "id" nodrop
| parse regex field=events "\"type\":\"(?<event_type>[^\"]+)\",\"name\":\"(?<event_name>[^\"]+)\"" multi
| parse regex field=events "\"DEVICE_SERIAL_NUMBER\",\"value\":\"(?<serial_number>[^\"]+)\"" multi
| where [subquery:_sourceCategory={{GoogleWorkspaceAlertsDataSource}}   "Device compromised"
    | json "alertId","customerId","source","type","data.email", "data.events[*]", "createTime" as alert_id, customer_id, source, type, email, events, create_time
    | where type = "Device compromised"
    | parse regex field=events "(?<device_info>\{[^\{]+\})" multi
    | json field=device_info "serialNumber" as serial_number
    | count by serial_number
    | compose serial_number
]
| json field=actor "email"
| json field=id "applicationName"
```

**Google Workspace/Alert Center - Investigations/Threat Intel by Attachments**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  "Gmail phishing"
| json "alertId","customerId", "source", "type", "data" as alert_id, customer_id, source, type, data
| where source = "Gmail phishing"
| json field=data "messages[*].attachmentsSha256Hash" as  attachment_hashes
| parse regex field=attachment_hashes "\"(?<attachment_hash>[^\"]+)\"" multi
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=attachment_hash
| json field=raw "labels[*].name" as label_name
```

**Google Workspace/Alert Center - Investigations/Threat Intel by Domain**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  "Gmail phishing"
| json "alertId","customerId", "source", "type", "data" as alert_id, customer_id, source, type, data
| where source = "Gmail phishing"
| parse regex field=data "\"fromHeader\":\"(?<sender_email>[^\"]*)\""
| parse field=sender_email "*@*" as user_name, domain
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=domain
| json field=raw "labels[*].name" as label_name
```

**Google Workspace/Alert Center - Investigations/Threat Intel by sender email**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  "Gmail phishing"
| json "alertId","customerId", "source", "type", "data" as alert_id, customer_id, source, type, data
| where source = "Gmail phishing"
| parse regex field=data "\"fromHeader\":\"(?<sender_email>[^\"]*)\""
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=sender_email
| json field=raw "labels[*].name" as label_name
```

**Google Workspace/Alert Center - Overview/Alert Count by Source**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
```

**Google Workspace/Alert Center - Overview/Alert Count by Source and Type**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
```

**Google Workspace/Alert Center - Overview/Alerts Outlier Over Time**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
```

**Google Workspace/Alert Center - Overview/Alerts Over Time**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
```

**Google Workspace/Alert Center - Overview/Compromised Credentials**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  "Leaked password"
| json "alertId","customerId","source","type","data", "data.email", "createTime" as alert_id, customer_id, source, type, data, email, breach_time
```

**Google Workspace/Alert Center - Overview/Compromised Devices**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}   "Device compromised"
| json "alertId","customerId","source","type","data.email", "data.events[*]", "createTime" as alert_id, customer_id, source, type, email, events, create_time
|where if ("{{email}}" = "*", true, email matches "{{email}}") AND if ("{{alert_id}}" = "*", true, alert_id matches "{{alert_id}}") AND if ("{{type}}" = "*", true, type matches "{{type}}") AND if ("{{source}}" = "*", true, source matches "{{source}}")
|count by alert_id, create_time, customer_id, source, type, email, events
| where type = "Device compromised"
| parse regex field=events "(?<device_info>\{[^\{]+\})" multi
| json field=device_info "deviceType", "deviceId", "deviceCompromisedState" as device_type, device_id, compromised_state
| parse field=compromised_state "\u2018*\u2019" as compromised_state
```

**Google Workspace/Alert Center - Overview/Configuration Alerts**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
```

**Google Workspace/Alert Center - Overview/Recent Alerts**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  
| json "alertId","customerId","source","type","data", "securityInvestigationToolLink" as alert_id, customer_id, source, type, data, investigation_url nodrop
```

**Google Workspace/Alert Center - Overview/Serious Alerts**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
```

**Google Workspace/Alert Center - Overview/Suspicious Emails**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  AccountWarning suspicious
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| json field=data "email" as email
```

**Google Workspace/Alert Center - Overview/Suspicious IP Addresses**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  AccountWarning suspicious
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
| json field=data "email","loginDetails.ipAddress" as email, src_ip
```

**Google Workspace/Alert Center - Overview/Total Alerts**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
```

**Google Workspace/Document Flow Diagram/Google Workspace - Document Flow Diagram**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"type\": \"access\"" "\"applicationName\": \"drive\""
// Add doc_id, doc_title, or email to first line to focus the search
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)"
| json field=p_Event "type","name" as drive_action_type,drive_action_name
| parse regex field=p_Event "\"name\": \"doc_id\",\n\s+\"value\": \"(?<doc_id>[^\"]*)\"" nodrop
```

**Google Workspace/Drive - User Activity/Content sharing by Compromised Users**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"type\": \"acl_change\"" "\"applicationName\": \"drive\"" (can_view OR can_edit OR people_with_link OR public_on_the_web)
| json "id", "actor", "ipAddress" nodrop
| json field=actor "email"
| where [subquery:_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  "Leaked password"
 | json "alertId","customerId","source","type","data", "data.email" as alert_id, customer_id, source, type, data, email
 | where type="Leaked password"  
 | count by email
 | compose email  
]
| json field=id "applicationName"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)" multi
| json field=p_Event "type","name" as eventType, eventName
| where eventType="acl_change" and applicationName="drive"
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"target_user\",\n\s+\"value\": \"(?<target_user>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"new_value\",\n\s+\"multiValue\": \[\n\s+(?<new_value>[^\]]*?)\]\n" nodrop
```

**Google Workspace/Drive - User Activity/Most Active IPs**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"applicationName\": \"drive\"" ipAddress
| json "id", "ipAddress", "events", "actor" nodrop
| json field=actor "email" 
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**Google Workspace/Drive - User Activity/Most Active Users**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"applicationName\": \"drive\"" 
| json "id", "ipAddress", "events", "actor" nodrop
| json field=actor "email"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**Google Workspace/Drive - User Activity/Top Users Creating Contents**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"applicationName\": \"drive\"" "\"name\": \"create\""
| json "id", "ipAddress", "events", "actor" nodrop
| json field=actor "email" 
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**Google Workspace/Drive - User Activity/Top Users Downloading Contents**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"applicationName\": \"drive\"" "\"type\": \"access\"" "\"name\": \"download\""
| json "id", "ipAddress", "events", "actor" nodrop
| json field=actor "email" 
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**Google Workspace/Drive - User Activity/Top Users Sharing Contents Outside of Organization**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"type\": \"acl_change\"" "\"applicationName\": \"drive\"" (can_view OR can_edit OR people_with_link OR public_on_the_web)
| json "id", "ipAddress", "actor" nodrop
| json field=id "applicationName"
| json field=actor "email"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)" multi
| json field=p_Event "type","name" as eventType, eventName
| where applicationName= "drive" and eventType="acl_change"
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"target_user\",\n\s+\"value\": \"(?<target_user>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"new_value\",\n\s+\"multiValue\": \[\n\s+(?<new_value>[^\]]*?)\]\n" nodrop
```

**Google Workspace/Drive - User Activity/Top Users Uploading Contents**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"applicationName\": \"drive\"" "\"name\": \"upload\""
| json "id", "ipAddress", "events", "actor" nodrop
| json field=actor "email" 
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**Google Workspace/Drive/ACL Changes**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"type\": \"acl_change\"" "\"applicationName\": \"drive\"" 
| json "id", "ipAddress", "actor" nodrop
| json field=actor "email"
| json field=id "applicationName"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)" multi
| json field=p_Event "type","name" as eventType, eventName
| where eventType="acl_change" and applicationName="drive"
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"target_user\",\n\s+\"value\": \"(?<target_user>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"old_value\",\n\s+\"multiValue\": \[\n\s+(?<old_value>[^\]]*)\]\n" nodrop
| parse regex field=p_Event "\"name\": \"new_value\",\n\s+\"multiValue\": \[\n\s+(?<new_value>[^\]]*?)\]\n" nodrop
```

**Google Workspace/Drive/Document Downloads by Title**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"applicationName\": \"drive\"" "\"name\": \"download\""
| json "id", "ipAddress", "actor" nodrop
| json field=actor "email"
| json field=id "applicationName"
| parse regex "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]+)\"" nodrop // short cut here since doc_title is the same for all event objects
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)" multi
| json field=p_Event "type","name" as eventType, eventName
```

**Google Workspace/Drive/Document Types**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"applicationName\": \"drive\"" 
| json "id", "actor", "ipAddress" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| where applicationName="drive"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)" multi
| json field=p_Event "type","name" as eventType, eventName
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"doc_type\",\n\s+\"value\": \"(?<doc_type>[^\"]*)\"" nodrop
| parse regex field=doc_title "[^\?]+?\.(?<doc_ext>[a-zA-Z0-9]{2,4})$"
```

**Google Workspace/Drive/Documents Being Shared**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"type\": \"acl_change\"" "\"applicationName\": \"drive\"" (can_view OR can_edit OR people?with* OR public*) 
| json "id", "actor", "ipAddress" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| where applicationName="drive"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)" multi
| json field=p_Event "type","name" as eventType, eventName
| where eventType="acl_change"
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"target_user\",\n\s+\"value\": \"(?<target_user>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"new_value\",\n\s+\"multiValue\": \[\n\s+(?<new_value>[^\]]*?)\]\n" nodrop 
```

**Google Workspace/Drive/Documents Shared Outside of Organization**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"type\": \"acl_change\"" "\"applicationName\": \"drive\"" (can_view OR can_edit OR people_with_link OR public_on_the_web)
| json "id", "actor", "ipAddress" nodrop
| json field=actor "email"
| json field=id "applicationName"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)" multi
| json field=p_Event "type","name" as eventType, eventName
| where eventType="acl_change" and applicationName="drive"
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"target_user\",\n\s+\"value\": \"(?<target_user>[^\"]*)\"" nodrop
| parse regex field=p_Event "\"name\": \"new_value\",\n\s+\"multiValue\": \[\n\s+(?<new_value>[^\]]*?)\]\n" nodrop
```

**Google Workspace/Drive/Documents Viewed - Top 10**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"type\": \"access\"" "\"applicationName\": \"drive\""
| json "id", "actor", "ipAddress" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)" multi
| json field=p_Event "type","name" as eventType, eventName
| parse regex field=p_Event "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]*)\"" nodrop
```

**Google Workspace/Drive/Drive Activity by Country Over Time**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"applicationName\": \"drive\"" ipAddress
| json "id", "ipAddress", "actor" nodrop
| json field=actor "email"
| json field=id "applicationName"
```

**Google Workspace/Drive/Drive Activity by Location**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"applicationName\": \"drive\"" ipAddress
| json "id", "ipAddress", "actor" nodrop
| json field=actor "email"
| json field=id "applicationName"
```

**Google Workspace/Drive/Primary Action Count**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"applicationName\": \"drive\""
| json "id", "ipAddress", "actor" nodrop
| json field=actor "email"
| json field=id "applicationName"
| parse regex  "\{\n\s+\"type\": \"(?<eventType>\w+)\",\n\s+\"name\": \"(?<eventName>\w+)\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n" multi
```

**Google Workspace/Drive/Recent Uploads by Title**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"applicationName\": \"drive\"" "\"type\": \"access\"" "\"name\": \"upload\""
| json "id", "actor", "ipAddress" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| parse regex "(?<p_Event>\{\n\s+\"type\": \"\w+\",\n\s+\"name\": \"\w+\",\n\s+\"parameters\": \[\n\s+\{\n\s+\"name\": \"primary_event\",\n\s+\"boolValue\": true\n(?s).+?)(?=,\n\s+\{\n\s+\"type\"|\n\s+\]\n\}$)" multi
| parse regex "\"name\": \"doc_title\",\n\s+\"value\": \"(?<doc_title>[^\"]+)\"" nodrop // short cut here since doc_title is the same for all event objects
| json field=p_Event "type","name" as eventType, eventName
```

**Google Workspace/Excessive Login Failures by User/Google Workspace - Excessive Login Failures by User**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  (("login_failure" and "login_failure_type")  or ("login_challenge" and "login_challenge_status")) "\"type\": \"login\""
| json "actor", "id", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop
| parse regex field=eventparameters "\{\"name\":\"login_type\",\"value\":\"(?<loginType>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_failure_type\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_challenge_status\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
```

**Google Workspace/Login Challenge for Suspicious Sign-ins/Google Workspace - Login Challenge for Suspicious Sign-ins**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  ("login_challenge" and "login_challenge_status") "\"type\": \"login\"" 
| json "actor", "id", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop
| parse regex field=eventparameters "\{\"name\":\"login_type\",\"value\":\"(?<loginType>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_challenge_status\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
```

**Google Workspace/Login/Count by Login State**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  ipAddress email login "\"type\": \"login\""
| json "actor", "id", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop
| parse regex field=eventparameters "\{\"name\":\"login_type\",\"value\":\"(?<loginType>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_failure_type\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_challenge_status\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
```

**Google Workspace/Login/Login Activity by Location**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  ipAddress email login "\"type\": \"login\""
| json "actor", "id", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**Google Workspace/Login/Login Activity Over Time**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  ipAddress email login "\"type\": \"login\""
| json "actor", "id", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**Google Workspace/Login/Login Failures - Outlier**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  (("login_failure" and "login_failure_type")  or ("login_challenge" and "login_challenge_status")) "\"type\": \"login\""
| json "actor", "id", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop
| parse regex field=eventparameters "\{\"name\":\"login_type\",\"value\":\"(?<loginType>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_failure_type\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_challenge_status\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
```

**Google Workspace/Login/Login Failures by Type**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  (("login_failure" and "login_failure_type")  or ("login_challenge" and "login_challenge_status")) "\"type\": \"login\""
| json "actor", "id", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop
| parse regex field=eventparameters "\{\"name\":\"login_type\",\"value\":\"(?<loginType>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_failure_type\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_challenge_status\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
```

**Google Workspace/Login/Login Failures by User, IP Address**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  (("login_failure" and "login_failure_type")  or ("login_challenge" and "login_challenge_status")) "\"type\": \"login\""
| json "actor", "id", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop
| parse regex field=eventparameters "\{\"name\":\"login_type\",\"value\":\"(?<loginType>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_failure_type\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_challenge_status\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
```

**Google Workspace/Login/Logins from Multiple IPs**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  ipAddress email login "\"type\": \"login\""
| json "actor", "id", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**Google Workspace/Login/Successful Logins**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "login_success" ipAddress email login "\"type\": \"login\""
| json "actor", "id", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**Google Workspace/Login/Successful Logins by Compromised Users**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "login_success" ipAddress email login "\"type\": \"login\""
| json "actor", "id", "ipAddress", "events" nodrop
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
| where applicationName="login" and eventType = "login" and eventName="login_success"
| json field=actor "email", "profileId"
| where [subquery:_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  "Leaked password"
 | json "alertId","customerId","source","type","data", "data.email" as alert_id, customer_id, source, type, data, email
```

**Google Workspace/Overview/ACL Changes**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  acl_change "\"applicationName\": \"drive\""
| json "actor", "id", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| parse regex field=events "\"type\":\"(?<eventType>[^\"]+)\",\"name\":\"(?<eventName>[^\"]+)\"" multi
```

**Google Workspace/Overview/Compromised Credentials**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  "Leaked password"
| json "alertId","customerId","source","type","data", "data.email" as alert_id, customer_id, source, type, data, email
```

**Google Workspace/Overview/Compromised Devices**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}   "Device compromised"
| json "alertId","customerId","source","type","data.email", "data.events[*]", "createTime" as alert_id, customer_id, source, type, email, events, create_time
| where type = "Device compromised"
| parse regex field=events "(?<device_info>\{[^\{]+\})" multi
| json field=device_info "deviceId", "serialNumber", "deviceType", "resourceId", "iosVendorId", "deviceCompromisedState"as device_id, serial_number, device_type, resource_id, ios_vendor_id, compromised_state nodrop
| parse field=compromised_state "\u2018*\u2019" as compromised_state
```

**Google Workspace/Overview/Google Activity by Source Location**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  ipAddress
| json "actor", "ipAddress", "events", "id" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**Google Workspace/Overview/Identity Alerts by User**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  email "Google identity"
| json "alertId","customerId","source","type","data"
| where source = "Google identity"
| json auto field=data "email","loginDetails.ipAddress" as user, src_ip
```

**Google Workspace/Overview/Login Failures by User**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  (("login_failure" and "login_failure_type")  or ("login_challenge" and "login_challenge_status")) "\"type\": \"login\""
| json "id", "actor", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop
| parse regex field=eventparameters "\{\"name\":\"login_type\",\"value\":\"(?<login_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_failure_type\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_challenge_status\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
```

**Google Workspace/Overview/Logins from Multiple IPs**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  ipAddress email login "\"type\": \"login\""
| json "actor", "id", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**Google Workspace/Overview/Top Apps**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"applicationName\": \"token\""
| json "actor", "id", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop 
| where applicationName="token"
| parse regex field=eventparameters "\{\"name\":\"app_name\",\"value\":\"(?<app_name>.*?)\"" nodrop
```

**Google Workspace/Overview/Top Event Name by Event Type**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  events type name
| json "actor", "ipAddress", "events", "id" nodrop
| json field=id "applicationName"
| json field=actor "email", "profileId"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop
```

**Google Workspace/Overview/Top Login Failure Reasons**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  (("login_failure" and "login_failure_type")  or ("login_challenge" and "login_challenge_status")) "\"type\": \"login\""
| json "id", "actor", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop
| parse regex field=eventparameters "\{\"name\":\"login_type\",\"value\":\"(?<login_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_failure_type\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_challenge_status\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
```

**Google Workspace/Overview/Total Admins**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"applicationName\": \"admin\""
| json "id", "actor", "events"
| json field=id "applicationName"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"name\":\"(?<admin_action>.*?)\",\"type\":\"(?<admin_action_type>.*?)\",\"parameters\"" nodrop
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"DESTINATION_USER_EMAIL\",\"value\":\"(?<recipient_email>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"APPLICATION_NAME\",\"value\":\"(?<application_name>.*?)\"" nodrop
| parse regex field=events "\{\"name\":\"GROUP_EMAIL\",\"value\":\"(?<group_email>.*?)\"" nodrop
```

**Google Workspace/Overview/Total Alerts**
```
_sourceCategory={{GoogleWorkspaceAlertsDataSource}}  
| json "alertId","customerId","source","type","data" as alert_id, customer_id, source, type, data
```

**Google Workspace/Overview/Total Login Failures**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  (("login_failure" and "login_failure_type")  or ("login_challenge" and "login_challenge_status")) "\"type\": \"login\""
| json "id", "actor", "ipAddress", "events" nodrop
| json field=actor "email", "profileId"
| json field=id "applicationName"
| json "events[0].type" as eventType nodrop | json "events[0].name" as eventName nodrop | json "events[0].parameters" as eventparameters nodrop
| parse regex field=eventparameters "\{\"name\":\"login_type\",\"value\":\"(?<login_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_failure_type\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
| parse regex field=eventparameters "\{\"name\":\"login_challenge_status\",\"value\":\"(?<login_failure_type>.*?)\"\}" nodrop
```

**Google Workspace/Overview/Total Users Sharing Contents Outside of Organization**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  "\"type\": \"acl_change\"" "\"applicationName\": \"drive\"" (can_view OR can_edit OR people_with_link OR public_on_the_web)
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

**Google Workspace/Password Changes Count/Google Workspace - Password Changes Count**
```
_sourceCategory={{GoogleWorkspaceAuditLogsSource}}  USER_EMAIL CHANGE_PASSWORD "\"applicationName\": \"admin\""
| json "id", "actor", "events", "ipAddress"
| json field=id "applicationName"
| where applicationName="admin"
| json field=actor "email" as admin_email
| parse regex field=events "\[\{\"name\":\"USER_EMAIL\",\"value\":\"(?<user_email>.*?)\""  nodrop
| parse regex field=events "\[\{\"name\":\"(?<admin_action>.*?)\",\"type\":\"(?<admin_action_type>.*?)\",\"parameters\"" nodrop
```


