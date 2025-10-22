# Parsers For Druva Cyber Resilience

**Druva Cyber Resilience/Admin Events/Admin Events by Type Over Time**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"adminName\\\": \\\"*\\\"" as admin_name nodrop
| parse "\\\"adminEmail\\\": \\\"*\\\"" as admin_email nodrop
| parse "\\\"adminIPAddress\\\": \\\"*\\\"" as admin_ip_address nodrop
| parse "\\\"adminActivity\\\": \\\"*\\\"" as admin_activity nodrop
| parse "\\\"loginResult\\\": \\\"*\\\"" as login_result nodrop
| parse "\\\"location\\\": \\\"*\\\"" as location nodrop
```

**Druva Cyber Resilience/Admin Events/Admin Events Count**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"adminName\\\": \\\"*\\\"" as admin_name nodrop
| parse "\\\"adminEmail\\\": \\\"*\\\"" as admin_email nodrop
| parse "\\\"adminIPAddress\\\": \\\"*\\\"" as admin_ip_address nodrop
| parse "\\\"adminActivity\\\": \\\"*\\\"" as admin_activity nodrop
| parse "\\\"loginResult\\\": \\\"*\\\"" as login_result nodrop
| parse "\\\"location\\\": \\\"*\\\"" as location nodrop
```

**Druva Cyber Resilience/Admin Events/Admin Events from High Risk Countries**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"adminName\\\": \\\"*\\\"" as admin_name nodrop
| parse "\\\"adminEmail\\\": \\\"*\\\"" as admin_email nodrop
| parse "\\\"adminIPAddress\\\": \\\"*\\\"" as admin_ip_address nodrop
| parse "\\\"adminActivity\\\": \\\"*\\\"" as admin_activity nodrop
| parse "\\\"loginResult\\\": \\\"*\\\"" as login_result nodrop
| parse "\\\"location\\\": \\\"*\\\"" as location nodrop

// global filters
| where type matches "{{type}}"
| where admin_activity matches "{{admin_activity}}"
| where syslog_severity matches "{{syslog_severity}}"
| where area matches "{{area}}"

| where category matches("*Admin Event*")
| where isValidIPv4(admin_ip_address) or isValidIPv6(admin_ip_address)
| where !isNull(admin_ip_address)
| if(isValidIPv4(admin_ip_address), if(!isPrivateIP(admin_ip_address),true,false),true) as is_public
| where is_public
| count_distinct(id) as frequency by admin_ip_address
| lookup latitude, longitude, country_code from geo://location on ip = admin_ip_address
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code
```

**Druva Cyber Resilience/Admin Events/Admin Logins Success Ratio**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"adminName\\\": \\\"*\\\"" as admin_name nodrop
| parse "\\\"adminEmail\\\": \\\"*\\\"" as admin_email nodrop
| parse "\\\"adminIPAddress\\\": \\\"*\\\"" as admin_ip_address nodrop
| parse "\\\"adminActivity\\\": \\\"*\\\"" as admin_activity nodrop
| parse "\\\"loginResult\\\": \\\"*\\\"" as login_result nodrop
| parse "\\\"location\\\": \\\"*\\\"" as location nodrop
```

**Druva Cyber Resilience/Admin Events/Curated Snapshots by Operations**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"adminName\\\": \\\"*\\\"" as admin_name nodrop
| parse "\\\"adminEmail\\\": \\\"*\\\"" as admin_email nodrop
| parse "\\\"adminIPAddress\\\": \\\"*\\\"" as admin_ip_address nodrop
| parse "\\\"adminActivity\\\": \\\"*\\\"" as admin_activity nodrop
| parse "\\\"loginResult\\\": \\\"*\\\"" as login_result nodrop
| parse "\\\"location\\\": \\\"*\\\"" as location nodrop

// global filters
| where type matches "{{type}}"
| where admin_activity matches "{{admin_activity}}"
| where syslog_severity matches "{{syslog_severity}}"
| where area matches "{{area}}"

| where category matches("*Admin Event*")
| where type matches("*Curated Snapshot*")
| parse "\\\"Activity\\\": \\\"*\\\"" as activity nodrop
```

**Druva Cyber Resilience/Admin Events/Curated Snapshots by Resource Type**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"adminName\\\": \\\"*\\\"" as admin_name nodrop
| parse "\\\"adminEmail\\\": \\\"*\\\"" as admin_email nodrop
| parse "\\\"adminIPAddress\\\": \\\"*\\\"" as admin_ip_address nodrop
| parse "\\\"adminActivity\\\": \\\"*\\\"" as admin_activity nodrop
| parse "\\\"loginResult\\\": \\\"*\\\"" as login_result nodrop
| parse "\\\"location\\\": \\\"*\\\"" as location nodrop

// global filters
| where type matches "{{type}}"
| where admin_activity matches "{{admin_activity}}"
| where syslog_severity matches "{{syslog_severity}}"
| where area matches "{{area}}"

| where category matches("*Admin Event*")
| where type matches("*Curated Snapshot*")
| parse "\\\"ResourceType\\\": \\\"*\\\"" as resource_type nodrop
```

**Druva Cyber Resilience/Admin Events/Curated Snapshots Count**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"adminName\\\": \\\"*\\\"" as admin_name nodrop
| parse "\\\"adminEmail\\\": \\\"*\\\"" as admin_email nodrop
| parse "\\\"adminIPAddress\\\": \\\"*\\\"" as admin_ip_address nodrop
| parse "\\\"adminActivity\\\": \\\"*\\\"" as admin_activity nodrop
| parse "\\\"loginResult\\\": \\\"*\\\"" as login_result nodrop
| parse "\\\"location\\\": \\\"*\\\"" as location nodrop
```

**Druva Cyber Resilience/Admin Events/Geo Locations of Admin Events**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"adminName\\\": \\\"*\\\"" as admin_name nodrop
| parse "\\\"adminEmail\\\": \\\"*\\\"" as admin_email nodrop
| parse "\\\"adminIPAddress\\\": \\\"*\\\"" as admin_ip_address nodrop
| parse "\\\"adminActivity\\\": \\\"*\\\"" as admin_activity nodrop
| parse "\\\"loginResult\\\": \\\"*\\\"" as login_result nodrop
| parse "\\\"location\\\": \\\"*\\\"" as location nodrop
```

**Druva Cyber Resilience/Admin Events/Recent Admin Events**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"adminName\\\": \\\"*\\\"" as admin_name nodrop
| parse "\\\"adminEmail\\\": \\\"*\\\"" as admin_email nodrop
| parse "\\\"adminIPAddress\\\": \\\"*\\\"" as admin_ip_address nodrop
| parse "\\\"adminActivity\\\": \\\"*\\\"" as admin_activity nodrop
| parse "\\\"loginResult\\\": \\\"*\\\"" as login_result nodrop
| parse "\\\"location\\\": \\\"*\\\"" as location nodrop
```

**Druva Cyber Resilience/Admin Events/Top 10 Admins**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"adminName\\\": \\\"*\\\"" as admin_name nodrop
| parse "\\\"adminEmail\\\": \\\"*\\\"" as admin_email nodrop
| parse "\\\"adminIPAddress\\\": \\\"*\\\"" as admin_ip_address nodrop
| parse "\\\"adminActivity\\\": \\\"*\\\"" as admin_activity nodrop
| parse "\\\"loginResult\\\": \\\"*\\\"" as login_result nodrop
| parse "\\\"location\\\": \\\"*\\\"" as location nodrop
```

**Druva Cyber Resilience/Data Access Events/Data Access Events by Status**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"status\\\": \\\"*\\\"" as status nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"targetLocation\\\": \\\"*\\\"" as location nodrop
| parse "\\\"initiatorName\\\": \\\"*\\\"" as initiator_name nodrop
```

**Druva Cyber Resilience/Data Access Events/Data Access Events by Syslog Severity**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"status\\\": \\\"*\\\"" as status nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"targetLocation\\\": \\\"*\\\"" as location nodrop
| parse "\\\"initiatorName\\\": \\\"*\\\"" as initiator_name nodrop
```

**Druva Cyber Resilience/Data Access Events/Data Access Events by Type Over Time**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"status\\\": \\\"*\\\"" as status nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"targetLocation\\\": \\\"*\\\"" as location nodrop
| parse "\\\"initiatorName\\\": \\\"*\\\"" as initiator_name nodrop
```

**Druva Cyber Resilience/Data Access Events/Data Access Events Count**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"status\\\": \\\"*\\\"" as status nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"targetLocation\\\": \\\"*\\\"" as location nodrop
| parse "\\\"initiatorName\\\": \\\"*\\\"" as initiator_name nodrop
```

**Druva Cyber Resilience/Data Access Events/Data Access Events from High Risk Countries**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"status\\\": \\\"*\\\"" as status nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"targetLocation\\\": \\\"*\\\"" as location nodrop
| parse "\\\"initiatorName\\\": \\\"*\\\"" as initiator_name nodrop
| parse "\\\"targetIP\\\": \\\"*\\\"" as target_ip nodrop

| where type matches "{{type}}"
| where area matches "{{area}}"
| where status matches "{{status}}"
| where syslog_severity matches "{{syslog_severity}}"

| where category matches("*Data Access*")
| where isValidIPv4(target_ip) or isValidIPv6(target_ip)
| where !isNull(target_ip)
| if(isValidIPv4(target_ip), if(!isPrivateIP(target_ip),true,false),true) as is_public
| where is_public
| count by id,target_ip
| count(id) as frequency by target_ip
| lookup latitude,longitude,country_code from geo://location on ip = target_ip
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code
```

**Druva Cyber Resilience/Data Access Events/Geo Locations of Data Access Events**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"status\\\": \\\"*\\\"" as status nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"targetLocation\\\": \\\"*\\\"" as location nodrop
| parse "\\\"initiatorName\\\": \\\"*\\\"" as initiator_name nodrop
| parse "\\\"targetIP\\\": \\\"*\\\"" as target_ip nodrop
```

**Druva Cyber Resilience/Data Access Events/Recent Data Access Events**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"status\\\": \\\"*\\\"" as status nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"files\\\": *," as affected_files nodrop
| parse "\\\"targetLocation\\\": \\\"*\\\"" as location nodrop
| parse "\\\"initiatorName\\\": \\\"*\\\"" as initiator_name nodrop
```

**Druva Cyber Resilience/Data Access Events/Top 10 Resources**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"status\\\": \\\"*\\\"" as status nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"targetLocation\\\": \\\"*\\\"" as location nodrop
| parse "\\\"initiatorName\\\": \\\"*\\\"" as initiator_name nodrop
```

**Druva Cyber Resilience/Overview/Alert Events**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
```

**Druva Cyber Resilience/Overview/Critical Events**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
```

**Druva Cyber Resilience/Overview/Emergency Events**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
```

**Druva Cyber Resilience/Overview/Events by Area**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
```

**Druva Cyber Resilience/Overview/Events by Category Over Time**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
```

**Druva Cyber Resilience/Overview/Events by Syslog Severity**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
```

**Druva Cyber Resilience/Overview/Events Count**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
```

**Druva Cyber Resilience/Overview/Recent Events**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
```

**Druva Cyber Resilience/Overview/Top 10 Event Types**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
```

**Druva Cyber Resilience/Ransomware Recovery Events/Geo Locations of Ransomware Recoveries**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"resourceType\\\": \\\"*\\\"" as resource_type nodrop
| parse "\\\"resourceParent\\\": \\\"*\\\"" as resource_owner nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"mode\\\": \\\"*\\\"" as mode nodrop
| parse "\\\"state\\\": \\\"*\\\"" as state nodrop
| parse "\\\"action\\\": \\\"*\\\"" as action nodrop
| parse "\\\"ipAddress\\\": \\\"*\\\"" as ip_address nodrop
| parse "\\\"initiatorID\\\": \\\"*\\\"" as initiator_id nodrop
| parse "\\\"resourcePlatform\\\": \\\"*\\\"" as resource_platform nodrop
```

**Druva Cyber Resilience/Ransomware Recovery Events/Quarantined Events by Resource Type**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"resourceType\\\": \\\"*\\\"" as resource_type nodrop
| parse "\\\"resourceParent\\\": \\\"*\\\"" as resource_owner nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"mode\\\": \\\"*\\\"" as mode nodrop
| parse "\\\"state\\\": \\\"*\\\"" as state nodrop
| parse "\\\"action\\\": \\\"*\\\"" as action nodrop
| parse "\\\"ipAddress\\\": \\\"*\\\"" as ip_address nodrop
| parse "\\\"initiatorID\\\": \\\"*\\\"" as initiator_id nodrop
| parse "\\\"resourcePlatform\\\": \\\"*\\\"" as resource_platform nodrop
```

**Druva Cyber Resilience/Ransomware Recovery Events/Ransomware Recoveries by Syslog Severity**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"resourceType\\\": \\\"*\\\"" as resource_type nodrop
| parse "\\\"resourceParent\\\": \\\"*\\\"" as resource_owner nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"mode\\\": \\\"*\\\"" as mode nodrop
| parse "\\\"state\\\": \\\"*\\\"" as state nodrop
| parse "\\\"action\\\": \\\"*\\\"" as action nodrop
| parse "\\\"ipAddress\\\": \\\"*\\\"" as ip_address nodrop
| parse "\\\"initiatorID\\\": \\\"*\\\"" as initiator_id nodrop
| parse "\\\"resourcePlatform\\\": \\\"*\\\"" as resource_platform nodrop
```

**Druva Cyber Resilience/Ransomware Recovery Events/Ransomware Recoveries by Type Over Time**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"resourceType\\\": \\\"*\\\"" as resource_type nodrop
| parse "\\\"resourceParent\\\": \\\"*\\\"" as resource_owner nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"mode\\\": \\\"*\\\"" as mode nodrop
| parse "\\\"state\\\": \\\"*\\\"" as state nodrop
| parse "\\\"action\\\": \\\"*\\\"" as action nodrop
| parse "\\\"ipAddress\\\": \\\"*\\\"" as ip_address nodrop
| parse "\\\"initiatorID\\\": \\\"*\\\"" as initiator_id nodrop
| parse "\\\"resourcePlatform\\\": \\\"*\\\"" as resource_platform nodrop
```

**Druva Cyber Resilience/Ransomware Recovery Events/Ransomware Recoveries Count**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"resourceType\\\": \\\"*\\\"" as resource_type nodrop
| parse "\\\"resourceParent\\\": \\\"*\\\"" as resource_owner nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"mode\\\": \\\"*\\\"" as mode nodrop
| parse "\\\"state\\\": \\\"*\\\"" as state nodrop
| parse "\\\"action\\\": \\\"*\\\"" as action nodrop
| parse "\\\"ipAddress\\\": \\\"*\\\"" as ip_address nodrop
| parse "\\\"initiatorID\\\": \\\"*\\\"" as initiator_id nodrop
| parse "\\\"resourcePlatform\\\": \\\"*\\\"" as resource_platform nodrop
```

**Druva Cyber Resilience/Ransomware Recovery Events/Ransomware Recoveries from High Risk Countries**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"resourceType\\\": \\\"*\\\"" as resource_type nodrop
| parse "\\\"resourceParent\\\": \\\"*\\\"" as resource_owner nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"mode\\\": \\\"*\\\"" as mode nodrop
| parse "\\\"state\\\": \\\"*\\\"" as state nodrop
| parse "\\\"action\\\": \\\"*\\\"" as action nodrop
| parse "\\\"ipAddress\\\": \\\"*\\\"" as ip_address nodrop
| parse "\\\"initiatorID\\\": \\\"*\\\"" as initiator_id nodrop
| parse "\\\"resourcePlatform\\\": \\\"*\\\"" as resource_platform nodrop

// global filters
| where type matches "{{type}}"
| where resource_type matches "{{resource_type}}"
| where syslog_severity matches "{{syslog_severity}}"
| where area matches "{{area}}"

| where category matches("*Ransomware Recovery*")

| where isValidIPv4(ip_address) or isValidIPv6(ip_address)
| where !isNull(ip_address)
| if(isValidIPv4(ip_address), if(!isPrivateIP(ip_address),true,false),true) as is_public
| where is_public
| count by id,ip_address
| count(id) as frequency by ip_address
| lookup latitude,longitude,country_code from geo://location on ip = ip_address
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code
```

**Druva Cyber Resilience/Ransomware Recovery Events/Recent Ransomware Recoveries**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"resourceType\\\": \\\"*\\\"" as resource_type nodrop
| parse "\\\"resourceParent\\\": \\\"*\\\"" as resource_owner nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"mode\\\": \\\"*\\\"" as mode nodrop
| parse "\\\"state\\\": \\\"*\\\"" as state nodrop
| parse "\\\"action\\\": \\\"*\\\"" as action nodrop
| parse "\\\"ipAddress\\\": \\\"*\\\"" as ip_address nodrop
| parse "\\\"initiatorID\\\": \\\"*\\\"" as initiator_id nodrop
| parse "\\\"resourcePlatform\\\": \\\"*\\\"" as resource_platform nodrop
```

**Druva Cyber Resilience/Ransomware Recovery Events/Top 10 Resource Owners**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"resourceType\\\": \\\"*\\\"" as resource_type nodrop
| parse "\\\"resourceParent\\\": \\\"*\\\"" as resource_owner nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"mode\\\": \\\"*\\\"" as mode nodrop
| parse "\\\"state\\\": \\\"*\\\"" as state nodrop
| parse "\\\"action\\\": \\\"*\\\"" as action nodrop
| parse "\\\"ipAddress\\\": \\\"*\\\"" as ip_address nodrop
| parse "\\\"initiatorID\\\": \\\"*\\\"" as initiator_id nodrop
| parse "\\\"resourcePlatform\\\": \\\"*\\\"" as resource_platform nodrop
```

**Druva Cyber Resilience/Unusual Data Activities/Recent Unsual Data Activities**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"resourceType\\\": \\\"*\\\"" as resource_type nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"affectedSnapshot\\\": \\\"*\\\"" as affected_snapshot nodrop
| parse "\\\"resourceParentName\\\": \\\"*\\\"" as resource_owner nodrop
| parse "\\\"encryptedFiles\\\": *}" as encrypted_files
| parse "\\\"updatedFiles\\\": *," as updated_files
| parse "\\\"deletedFiles\\\": *," as deleted_files
| parse "\\\"newFiles\\\": *," as new_files
| extract field=encrypted_files "(?<encrypted_files>\d+.*?)"
| extract field=updated_files "(?<updated_files>\d+.*?)"
| extract field=deleted_files "(?<deleted_files>\d+.*?)"
| extract field=new_files "(?<new_files>\d+.*?)"
| new_files+updated_files+deleted_files+encrypted_files as affected_files

// global filters
| where type matches "{{type}}"
| where resource_type matches "{{resource_type}}"
| where syslog_severity matches "{{syslog_severity}}"
| where area matches "{{area}}"

| where category matches("*Unusual Data Activity*") or (category matches("*Alerts & Notification*"))
| parse "\\\"alertName\\\": \\\"*\\\"" as alert_name nodrop
```

**Druva Cyber Resilience/Unusual Data Activities/Top 10 Resource Owners**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"resourceType\\\": \\\"*\\\"" as resource_type nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"affectedSnapshot\\\": \\\"*\\\"" as affected_snapshot nodrop
| parse "\\\"resourceParentName\\\": \\\"*\\\"" as resource_owner nodrop

// global filters
| where type matches "{{type}}"
| where resource_type matches "{{resource_type}}"
| where syslog_severity matches "{{syslog_severity}}"
| where area matches "{{area}}"

| where category matches("*Unusual Data Activity*") or (category matches("*Alerts & Notification*"))
| parse "\\\"alertName\\\": \\\"*\\\"" as alert_name nodrop
```

**Druva Cyber Resilience/Unusual Data Activities/Top 10 Resources**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"resourceType\\\": \\\"*\\\"" as resource_type nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"affectedSnapshot\\\": \\\"*\\\"" as affected_snapshot nodrop
| parse "\\\"resourceParentName\\\": \\\"*\\\"" as resource_owner nodrop

// global filters
| where type matches "{{type}}"
| where resource_type matches "{{resource_type}}"
| where syslog_severity matches "{{syslog_severity}}"
| where area matches "{{area}}"

| where category matches("*Unusual Data Activity*") or (category matches("*Alerts & Notification*"))
| parse "\\\"alertName\\\": \\\"*\\\"" as alert_name nodrop
```

**Druva Cyber Resilience/Unusual Data Activities/Unusual Data Activities by Resource Type**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"resourceType\\\": \\\"*\\\"" as resource_type nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"affectedSnapshot\\\": \\\"*\\\"" as affected_snapshot nodrop
| parse "\\\"resourceParentName\\\": \\\"*\\\"" as resource_owner nodrop

// global filters
| where type matches "{{type}}"
| where resource_type matches "{{resource_type}}"
| where syslog_severity matches "{{syslog_severity}}"
| where area matches "{{area}}"

| where category matches("*Unusual Data Activity*") or (category matches("*Alerts & Notification*"))
| parse "\\\"alertName\\\": \\\"*\\\"" as alert_name nodrop
```

**Druva Cyber Resilience/Unusual Data Activities/Unusual Data Activities by Syslog Severity**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"resourceType\\\": \\\"*\\\"" as resource_type nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"affectedSnapshot\\\": \\\"*\\\"" as affected_snapshot nodrop
| parse "\\\"resourceParentName\\\": \\\"*\\\"" as resource_owner nodrop

// global filters
| where type matches "{{type}}"
| where resource_type matches "{{resource_type}}"
| where syslog_severity matches "{{syslog_severity}}"
| where area matches "{{area}}"

| where category matches("*Unusual Data Activity*") or (category matches("*Alerts & Notification*"))
| parse "\\\"alertName\\\": \\\"*\\\"" as alert_name nodrop
```

**Druva Cyber Resilience/Unusual Data Activities/Unusual Data Activities by Type Over Time**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"resourceType\\\": \\\"*\\\"" as resource_type nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"affectedSnapshot\\\": \\\"*\\\"" as affected_snapshot nodrop
| parse "\\\"resourceParentName\\\": \\\"*\\\"" as resource_owner nodrop
| parse "\\\"udaType\\\": [*]" as uda_type
| extract field=uda_type "\\\"(?<uda_type>.*?)\\\"" multi

// global filters
| where type matches "{{type}}"
| where resource_type matches "{{resource_type}}"
| where syslog_severity matches "{{syslog_severity}}"
| where area matches "{{area}}"

| where category matches("*Unusual Data Activity*") or (category matches("*Alerts & Notification*"))
| parse "\\\"alertName\\\": \\\"*\\\"" as alert_name nodrop
```

**Druva Cyber Resilience/Unusual Data Activities/Unusual Data Activities Count**
```
_sourceCategory={{Logsdatasource}} 
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop

| if (syslog_severity=0,"Emergency",if(syslog_severity = 1,"Alert",if(syslog_severity = 2,"Critical",if(syslog_severity=3,"Error",if(syslog_severity = 4,"Warning",if(syslog_severity=5,"Notice",if(syslog_severity=6,"Informational",if(syslog_severity=7,"Debug","Nil")))))))) as syslog_severity

| parse "\\\"resourceType\\\": \\\"*\\\"" as resource_type nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"affectedSnapshot\\\": \\\"*\\\"" as affected_snapshot nodrop
| parse "\\\"resourceParentName\\\": \\\"*\\\"" as resource_owner nodrop

// global filters
| where type matches "{{type}}"
| where resource_type matches "{{resource_type}}"
| where syslog_severity matches "{{syslog_severity}}"
| where area matches "{{area}}"

| where category matches("*Unusual Data Activity*") or (category matches("*Alerts & Notification*"))
| parse "\\\"alertName\\\": \\\"*\\\"" as alert_name nodrop
```


