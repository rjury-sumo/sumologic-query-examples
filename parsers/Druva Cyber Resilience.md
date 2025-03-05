# Parsers For Druva Cyber Resilience

## Parser:
```
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
 `n```
### Use Cases:
Admin Events by Type Over Time, Admin Events Count, Admin Events from High Risk Countries, Admin Logins Success Ratio, Alert Events, Critical Events, Curated Snapshots by Operations, Curated Snapshots by Resource Type, Curated Snapshots Count, Data Access Events by Status, Data Access Events by Syslog Severity, Data Access Events by Type Over Time, Data Access Events Count, Data Access Events from High Risk Countries, Emergency Events, Events by Area, Events by Category Over Time, Events by Syslog Severity, Events Count, Geo Locations of Admin Events, Geo Locations of Data Access Events, Recent Admin Events, Recent Data Access Events, Recent Events, Top 10 Admins, Top 10 Event Types, Top 10 Resources



## Parser:
```
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
| parse "\\\"adminName\\\": \\\"*\\\"" as admin_name nodrop
| parse "\\\"adminEmail\\\": \\\"*\\\"" as admin_email nodrop
| parse "\\\"adminIPAddress\\\": \\\"*\\\"" as admin_ip_address nodrop
| parse "\\\"adminActivity\\\": \\\"*\\\"" as admin_activity nodrop
| parse "\\\"loginResult\\\": \\\"*\\\"" as login_result nodrop
| parse "\\\"location\\\": \\\"*\\\"" as location nodrop
 `n```
### Use Cases:
Admin Events by Type Over Time, Admin Events Count, Admin Events from High Risk Countries, Admin Logins Success Ratio, Curated Snapshots by Operations, Curated Snapshots by Resource Type, Curated Snapshots Count, Geo Locations of Admin Events, Recent Admin Events, Top 10 Admins



## Parser:
```
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
| parse "\\\"adminName\\\": \\\"*\\\"" as admin_name nodrop
| parse "\\\"adminEmail\\\": \\\"*\\\"" as admin_email nodrop
| parse "\\\"adminIPAddress\\\": \\\"*\\\"" as admin_ip_address nodrop
| parse "\\\"adminActivity\\\": \\\"*\\\"" as admin_activity nodrop
| parse "\\\"loginResult\\\": \\\"*\\\"" as login_result nodrop
| parse "\\\"location\\\": \\\"*\\\"" as location nodrop
| parse "\\\"Activity\\\": \\\"*\\\"" as activity nodrop
 `n```
### Use Cases:
Admin Events by Type Over Time, Curated Snapshots by Operations, Curated Snapshots Count, Recent Admin Events



## Parser:
```
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
| parse "\\\"adminName\\\": \\\"*\\\"" as admin_name nodrop
| parse "\\\"adminEmail\\\": \\\"*\\\"" as admin_email nodrop
| parse "\\\"adminIPAddress\\\": \\\"*\\\"" as admin_ip_address nodrop
| parse "\\\"adminActivity\\\": \\\"*\\\"" as admin_activity nodrop
| parse "\\\"loginResult\\\": \\\"*\\\"" as login_result nodrop
| parse "\\\"location\\\": \\\"*\\\"" as location nodrop
| parse "\\\"ResourceType\\\": \\\"*\\\"" as resource_type nodrop
 `n```
### Use Cases:
Admin Events by Type Over Time, Curated Snapshots by Operations, Curated Snapshots by Resource Type, Curated Snapshots Count, Recent Admin Events



## Parser:
```
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
| parse "\\\"resourceType\\\": \\\"*\\\"" as resource_type nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"affectedSnapshot\\\": \\\"*\\\"" as affected_snapshot nodrop
| parse "\\\"resourceParentName\\\": \\\"*\\\"" as resource_owner nodrop
| parse "\\\"alertName\\\": \\\"*\\\"" as alert_name nodrop
 `n```
### Use Cases:
Admin Events by Type Over Time, Admin Events Count, Admin Events from High Risk Countries, Admin Logins Success Ratio, Alert Events, Critical Events, Curated Snapshots by Operations, Curated Snapshots by Resource Type, Curated Snapshots Count, Data Access Events by Status, Data Access Events by Syslog Severity, Data Access Events by Type Over Time, Data Access Events Count, Data Access Events from High Risk Countries, Emergency Events, Events by Area, Events by Category Over Time, Events by Syslog Severity, Events Count, Geo Locations of Admin Events, Geo Locations of Data Access Events, Geo Locations of Ransomware Recoveries, Quarantined Events by Resource Type, Ransomware Recoveries by Syslog Severity, Ransomware Recoveries by Type Over Time, Ransomware Recoveries Count, Ransomware Recoveries from High Risk Countries, Recent Admin Events, Recent Data Access Events, Recent Events, Recent Ransomware Recoveries, Recent Unsual Data Activities, Top 10 Admins, Top 10 Event Types, Top 10 Resource Owners, Top 10 Resources, Unusual Data Activities by Resource Type, Unusual Data Activities by Syslog Severity, Unusual Data Activities by Type Over Time, Unusual Data Activities Count



## Parser:
```
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
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
| parse "\\\"alertName\\\": \\\"*\\\"" as alert_name nodrop
 `n```
### Use Cases:
Admin Events by Type Over Time, Admin Events Count, Admin Events from High Risk Countries, Admin Logins Success Ratio, Alert Events, Critical Events, Curated Snapshots by Operations, Curated Snapshots by Resource Type, Curated Snapshots Count, Data Access Events by Status, Data Access Events by Syslog Severity, Data Access Events by Type Over Time, Data Access Events Count, Data Access Events from High Risk Countries, Emergency Events, Events by Area, Events by Category Over Time, Events by Syslog Severity, Events Count, Geo Locations of Admin Events, Geo Locations of Data Access Events, Geo Locations of Ransomware Recoveries, Quarantined Events by Resource Type, Ransomware Recoveries by Syslog Severity, Ransomware Recoveries by Type Over Time, Ransomware Recoveries Count, Ransomware Recoveries from High Risk Countries, Recent Admin Events, Recent Data Access Events, Recent Events, Recent Ransomware Recoveries, Recent Unsual Data Activities, Top 10 Admins, Top 10 Event Types, Top 10 Resource Owners, Top 10 Resources



## Parser:
```
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
| parse "\\\"resourceType\\\": \\\"*\\\"" as resource_type nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"affectedSnapshot\\\": \\\"*\\\"" as affected_snapshot nodrop
| parse "\\\"resourceParentName\\\": \\\"*\\\"" as resource_owner nodrop
| parse "\\\"udaType\\\": [*]" as uda_type
| extract field=uda_type "\\\"(?<uda_type>.*?)\\\"" multi
| parse "\\\"alertName\\\": \\\"*\\\"" as alert_name nodrop
 `n```
### Use Cases:
Admin Events by Type Over Time, Admin Events Count, Admin Events from High Risk Countries, Admin Logins Success Ratio, Alert Events, Critical Events, Curated Snapshots by Operations, Curated Snapshots by Resource Type, Curated Snapshots Count, Data Access Events by Status, Data Access Events by Syslog Severity, Data Access Events by Type Over Time, Data Access Events Count, Data Access Events from High Risk Countries, Emergency Events, Events by Area, Events by Category Over Time, Events by Syslog Severity, Events Count, Geo Locations of Admin Events, Geo Locations of Data Access Events, Geo Locations of Ransomware Recoveries, Quarantined Events by Resource Type, Ransomware Recoveries by Syslog Severity, Ransomware Recoveries by Type Over Time, Ransomware Recoveries Count, Ransomware Recoveries from High Risk Countries, Recent Admin Events, Recent Data Access Events, Recent Events, Recent Ransomware Recoveries, Recent Unsual Data Activities, Top 10 Admins, Top 10 Event Types, Top 10 Resource Owners, Top 10 Resources, Unusual Data Activities by Resource Type, Unusual Data Activities by Syslog Severity, Unusual Data Activities by Type Over Time



## Parser:
```
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
| parse "\\\"resourceType\\\": \\\"*\\\"" as resource_type nodrop
| parse "\\\"resourceParent\\\": \\\"*\\\"" as resource_owner nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"mode\\\": \\\"*\\\"" as mode nodrop
| parse "\\\"state\\\": \\\"*\\\"" as state nodrop
| parse "\\\"action\\\": \\\"*\\\"" as action nodrop
| parse "\\\"ipAddress\\\": \\\"*\\\"" as ip_address nodrop
| parse "\\\"initiatorID\\\": \\\"*\\\"" as initiator_id nodrop
| parse "\\\"resourcePlatform\\\": \\\"*\\\"" as resource_platform nodrop
 `n```
### Use Cases:
Admin Events by Type Over Time, Admin Events Count, Admin Events from High Risk Countries, Admin Logins Success Ratio, Alert Events, Critical Events, Curated Snapshots by Operations, Curated Snapshots by Resource Type, Curated Snapshots Count, Data Access Events by Status, Data Access Events by Syslog Severity, Data Access Events by Type Over Time, Data Access Events Count, Data Access Events from High Risk Countries, Emergency Events, Events by Area, Events by Category Over Time, Events by Syslog Severity, Events Count, Geo Locations of Admin Events, Geo Locations of Data Access Events, Geo Locations of Ransomware Recoveries, Quarantined Events by Resource Type, Ransomware Recoveries by Syslog Severity, Ransomware Recoveries by Type Over Time, Ransomware Recoveries Count, Ransomware Recoveries from High Risk Countries, Recent Admin Events, Recent Data Access Events, Recent Events, Recent Ransomware Recoveries, Top 10 Admins, Top 10 Event Types, Top 10 Resource Owners, Top 10 Resources



## Parser:
```
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
| parse "\\\"status\\\": \\\"*\\\"" as status nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"files\\\": *," as affected_files nodrop
| parse "\\\"targetLocation\\\": \\\"*\\\"" as location nodrop
| parse "\\\"initiatorName\\\": \\\"*\\\"" as initiator_name nodrop
 `n```
### Use Cases:
Admin Events by Type Over Time, Admin Events Count, Admin Events from High Risk Countries, Admin Logins Success Ratio, Curated Snapshots by Operations, Curated Snapshots by Resource Type, Curated Snapshots Count, Geo Locations of Admin Events, Recent Admin Events, Recent Data Access Events, Top 10 Admins



## Parser:
```
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
| parse "\\\"status\\\": \\\"*\\\"" as status nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"targetLocation\\\": \\\"*\\\"" as location nodrop
| parse "\\\"initiatorName\\\": \\\"*\\\"" as initiator_name nodrop
 `n```
### Use Cases:
Admin Events by Type Over Time, Admin Events Count, Admin Events from High Risk Countries, Admin Logins Success Ratio, Curated Snapshots by Operations, Curated Snapshots by Resource Type, Curated Snapshots Count, Data Access Events by Status, Data Access Events by Syslog Severity, Data Access Events by Type Over Time, Data Access Events Count, Data Access Events from High Risk Countries, Geo Locations of Admin Events, Geo Locations of Data Access Events, Recent Admin Events, Recent Data Access Events, Top 10 Admins, Top 10 Resources



## Parser:
```
| json "id","area","category","type","syslogSeverity","syslogFacility" as id,area,category,type,syslog_severity,syslog_facility nodrop
| parse "\\\"status\\\": \\\"*\\\"" as status nodrop
| parse "\\\"resourceName\\\": \\\"*\\\"" as resource_name nodrop
| parse "\\\"resourceID\\\": *," as resource_id nodrop
| parse "\\\"targetLocation\\\": \\\"*\\\"" as location nodrop
| parse "\\\"initiatorName\\\": \\\"*\\\"" as initiator_name nodrop
| parse "\\\"targetIP\\\": \\\"*\\\"" as target_ip nodrop
 `n```
### Use Cases:
Admin Events by Type Over Time, Admin Events Count, Admin Events from High Risk Countries, Admin Logins Success Ratio, Curated Snapshots by Operations, Curated Snapshots by Resource Type, Curated Snapshots Count, Data Access Events by Status, Data Access Events by Syslog Severity, Data Access Events by Type Over Time, Data Access Events from High Risk Countries, Geo Locations of Admin Events, Geo Locations of Data Access Events, Recent Admin Events, Recent Data Access Events, Top 10 Admins


