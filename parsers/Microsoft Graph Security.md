# Parsers For Microsoft Graph Security

**Microsoft Graph Security/Alerts Overview/Geo Locations of Alerts**
```
_sourceCategory={{Logsdatasource}}  
|json"id","status","severity","category","title","description","classification","determination","serviceSource","detectionSource","alertWebUrl" ,"comments[*]","evidence[*]"as  alert_id,status,severity,category,title,description,classification,determination,service_source,detection_source,alert_url,comments,evidence_info nodrop
| where severity matches "{{severity}}" and status matches "{{status}}" and classification matches "{{classification}}" 
| where evidence_info !="[]"
| extract field=evidence_info "(?<evidence_detail>\{.*?\})" multi
| json field=evidence_detail "$['@odata.type']" as data_type
| where data_type matches "#microsoft.graph.security.ipEvidence"
| json field=evidence_detail "ipAddress" as ip
```

**Microsoft Graph Security/Alerts Overview/Top 10 Analysts**
```
_sourceCategory={{Logsdatasource}}  
|json"id","status","severity","category","title","description","classification","determination","serviceSource","detectionSource","alertWebUrl" ,"comments[*]","evidence[*]"as  alert_id,status,severity,category,title,description,classification,determination,service_source,detection_source,alert_url,comments,evidence_info nodrop
| where severity matches "{{severity}}" and status matches "{{status}}" and classification matches "{{classification}}" 
| where comments !="[]"
| extract field=comments "(?<comment_info>\{.*?\})" multi
| json field=comment_info "createdByDisplayName" as analyst
```

**Microsoft Graph Security/Alerts Overview/Top 10 Users Associated with Alerts**
```
_sourceCategory={{Logsdatasource}}  
|json"id","status","severity","category","title","description","classification","determination","serviceSource","detectionSource","alertWebUrl" ,"comments[*]","evidence[*]"as  alert_id,status,severity,category,title,description,classification,determination,service_source,detection_source,alert_url,comments,evidence_info nodrop
| where severity matches "{{severity}}" and status matches "{{status}}" and classification matches "{{classification}}" 
| where evidence_info !="[]"
| extract field=evidence_info "(?<evidence_detail>\{[^\{\}]*?\"userAccount\"[^\{\}]*?\{[^\{\}]*?\}[^\{\}]*?\})" multi
| json field=evidence_detail "$['@odata.type']" as data_type
| where data_type matches "#microsoft.graph.security.userEvidence"
| json field= evidence_detail "userAccount" as user_account
| json field = user_account "userPrincipalName" as user_name
| json field = user_account "userSid" as user_id
| json field = user_account "azureAdUserId" as user_azure_id
| json field = user_account "accountName" as user_account_name
| json field = user_account "displayName" as user_display_name
| json field = user_account "domainName"  as domain_name
```

**Microsoft Graph Security/Alerts Security Overview/Alerts from Risky Countries**
```
_sourceCategory={{Logsdatasource}}  
|json"id","status","severity","category","title","description","classification","determination","serviceSource","detectionSource" ,"comments[*]","evidence[*]"as  alert_id,status,severity,category,title,description,classification,determination,service_source,detection_source,comments,evidence_info nodrop
| where severity matches "{{severity}}" and status matches "{{status}}" and classification matches "{{classification}}" 
| where evidence_info !="[]"
| extract field=evidence_info "(?<evidence_detail>\{.*?\})" multi
| json field=evidence_detail "$['@odata.type']" as data_type
| where data_type matches "#microsoft.graph.security.ipEvidence"
| json field=evidence_detail "ipAddress" as ip
| where isValidIPv4(ip) or isValidIPv6(ip)
| where !isEmpty(ip)
| count by ip,alert_id | count by ip
| lookup latitude, longitude , country_code from geo://location on ip = ip
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code 
```

**Microsoft Graph Security/Alerts Security Overview/Top 10 Attacked Device**
```
_sourceCategory={{Logsdatasource}}  
|json"id","status","severity","category","title","description","classification","determination","serviceSource","detectionSource" ,"comments[*]","evidence[*]"as  alert_id,status,severity,category,title,description,classification,determination,service_source,detection_source,comments,evidence_info nodrop
| where severity matches "{{severity}}" and status matches "{{status}}" and classification matches "{{classification}}" 
| where evidence_info !="[]"
| extract field=evidence_info "(?<evidence_detail>\{[^\{\}]*?\"vmMetadata\"[^\{\}]*?\{[^\{\}]*?\}[^\{\}]*?\})" multi
| json field=evidence_detail "$['@odata.type']" as data_type
| where data_type matches "#microsoft.graph.security.deviceEvidence"
| json field=evidence_detail "roles[*]" as roles
| where contains(roles, "attacked")
| json field=evidence_detail "mdeDeviceId" as device_id
| where !isBlank("device_id")
| json field=evidence_detail "riskScore" as risk_score
| json field=evidence_detail "healthStatus" as health_status
| json field=evidence_detail "osPlatform" as os 
| json field=evidence_detail "deviceDnsName" as dns_name
| json field=evidence_detail "azureAdDeviceId" as azure_id
```

**Microsoft Graph Security/Alerts Security Overview/Top 10 Country with Suspicious or Malicious IP Verdict**
```
_sourceCategory={{Logsdatasource}}  
|json"id","status","severity","category","title","description","classification","determination","serviceSource","detectionSource" ,"comments[*]","evidence[*]"as  alert_id,status,severity,category,title,description,classification,determination,service_source,detection_source,comments,evidence_info nodrop
| where severity matches "{{severity}}" and status matches "{{status}}" and classification matches "{{classification}}" 
| where evidence_info !="[]"
| extract field=evidence_info "(?<evidence_detail>\{.*?\})" multi
| json field=evidence_detail "$['@odata.type']" as data_type
| where data_type matches "#microsoft.graph.security.ipEvidence"
| json field=evidence_detail "verdict" as verdict
| where verdict in ("suspicious","malicious")
| json field=evidence_detail "ipAddress" as ip
```

**Microsoft Graph Security/Alerts Security Overview/Top 10 User Account with Compromised Role**
```
_sourceCategory={{Logsdatasource}}  
|json"id","status","severity","category","title","description","classification","determination","serviceSource","detectionSource" ,"comments[*]","evidence[*]"as  alert_id,status,severity,category,title,description,classification,determination,service_source,detection_source,comments,evidence_info nodrop
| where severity matches "{{severity}}" and status matches "{{status}}" and classification matches "{{classification}}" 
| where evidence_info !="[]"
| extract field=evidence_info "(?<evidence_detail>\{[^\{\}]*?\"userAccount\"[^\{\}]*?\{[^\{\}]*?\}[^\{\}]*?\})" multi
| json field=evidence_detail "$['@odata.type']" as data_type
| where data_type matches "#microsoft.graph.security.userEvidence"
| json field=evidence_detail "roles[*]" as roles
| where contains(roles, "compromised")
| json field=evidence_detail "userAccount" as user_account
| json field = user_account "userPrincipalName" as user_name
| json field = user_account "userSid" as user_id
| json field = user_account "azureAdUserId" as user_azure_id
| json field = user_account "accountName" as user_account_name
| json field = user_account "displayName" as user_display_name
| json field = user_account "domainName"  as domain_name
```


