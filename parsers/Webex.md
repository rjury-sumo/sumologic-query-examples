# Parsers For Webex

**Webex/Overview/Devices Created**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Overview/Devices Deleted**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Overview/Devices Rebooted**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Overview/Events by Admin**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Overview/Events by Category**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Overview/Events by Category Over Time**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Overview/Events by User Agent**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Overview/Events from High Risk Countries**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop

// global filters
| where event_category matches "{{event_category}}"
| where event_description matches "{{event_description}}"

| where isValidIPv4(actor_ip) or isValidIPv6(actor_ip)
| where !isNull(actor_ip)
| if(isValidIPv4(actor_ip), if(!isPrivateIP(actor_ip),true,false),true) as is_public
| where is_public
| count as frequency by actor_ip
| lookup latitude, longitude, country_code from geo://location on ip = actor_ip
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code
```

**Webex/Overview/Geo Location of Events**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Overview/Groups Created**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Overview/Recent Events**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Overview/Total Audit Events**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Overview/Users Created**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Overview/Users Deleted**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Overview/Users Updated**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Security Events/Account Assigned to External User Events**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
| parse "domainName\": [*]" as domain_name nodrop
| parse "\"accountType\": \"*\"" as account_type nodrop
| parse "\"webexSite\": \"*\"" as webex_site nodrop
| parse "\"externalAdminEmail\": \"*\"" as external_admin_email nodrop
| parse "\"externalAdminOrgName\": \"*\"" as external_admin_org_name nodrop
| parse "roleAdded\": [*]" as role_added nodrop
| parse "roleRemoved\": [*]" as role_removed nodrop
| parse "\"targetEmail\": \"*\"" as target_email nodrop
```

**Webex/Security Events/Authorization Code Related Events Over Time**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Security Events/Authorization Events Over Time**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Security Events/Change in MFA Over Time**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Security Events/External Admin Addition Events**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
| parse "domainName\": [*]" as domain_name nodrop
| parse "\"accountType\": \"*\"" as account_type nodrop
| parse "\"webexSite\": \"*\"" as webex_site nodrop
| parse "\"externalAdminEmail\": \"*\"" as external_admin_email nodrop
| parse "\"externalAdminOrgName\": \"*\"" as external_admin_org_name nodrop
| parse "roleAdded\": [*]" as role_added nodrop
| parse "roleRemoved\": [*]" as role_removed nodrop
```

**Webex/Security Events/Login Events Over Time**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Security Events/Recent Activity on Allow List**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
| parse "domainName\": [*]" as domain_name nodrop
```

**Webex/Security Events/Recent Activity on Deny List**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
| parse "domainName\": [*]" as domain_name nodrop
```

**Webex/Security Events/Recent Authorization Code Events**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Security Events/Recent Authorization Events**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Security Events/Recent Deactivated Users**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Security Events/Recent Login Events**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Security Events/Recent Reactivated Users**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```

**Webex/Security Events/Recent Revoked Accounts by Admin**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
| parse "domainName\": [*]" as domain_name nodrop
| parse "\"accountType\": \"*\"" as account_type nodrop
| parse "\"webexSite\": \"*\"" as webex_site nodrop
```

**Webex/Security Events/Remote Access Related Events Over Time**
```
_sourceCategory={{Logsdatasource}} 
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
```


