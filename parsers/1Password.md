# Parsers For 1Password

## Parser:
```
| json "timestamp", "user.name", "client.app_name", "client.platform_name", "client.platform_version", "client.os_name", "client.os_version", "client.ip_address", "location.country", "location.region", "location.city", "action", "vault_uuid", "item_uuid" as timestamp, user_name, client_app_name, client_platform, client_platform_version, client_os, client_os_version, client_ip, country, region, city, action, vault_uuid, item_uuid
 `n```
### Use Cases:
Breakdown by Action, Breakdown by Client App, Breakdown by Client OS, Breakdown by Country, Region, City, Failed Sign In Events, Geolocation of Clients, Highly Malicious Threat Table, Item Usage Summary, One Day Time Comparison, Outlier - Failed Sign-ins, Outlier - Sign-in Events, Sign In Events by Category, Sign In Events by Type, Sign-in Events - One Day Time Comparison, Sign-in Events Over Time, Sign-in Summary, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Intel - Item Usage Clients, Threat Locations, Threat Table, Top 10 Active Users



## Parser:
```
| json "timestamp", "user.name", "client.app_name", "client.platform_name", "client.platform_version", "client.os_name", "client.os_version", "client.ip_address", "location.country", "location.region", "location.city", "action", "vault_uuid", "item_uuid" as timestamp, user_name, client_app_name, client_platform, client_platform_version, client_os, client_os_version, client_ip, country, region, city, action, vault_uuid, item_uuid
| json field=raw "labels[*].name" as label_name
 `n```
### Use Cases:
Breakdown by Action, Breakdown by Client App, Breakdown by Client OS, Breakdown by Country, Region, City, Failed Sign In Events, Geolocation of Clients, Highly Malicious Threat Table, Item Usage Summary, One Day Time Comparison, Outlier - Failed Sign-ins, Outlier - Sign-in Events, Sign In Events by Category, Sign In Events by Type, Sign-in Events - One Day Time Comparison, Sign-in Events Over Time, Sign-in Summary, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Intel - Item Usage Clients, Threat Locations, Threat Table, Top 10 Active Users



## Parser:
```
| json "type", "category", "timestamp",  "details", "target_user.name", "target_user.email", "client.app_name", "client.app_version", "client.platform_name", "client.os_name", "client.os_version", "client.ip_address", "location.country", "location.region", "location.city" as type, category, timestamp, details, target_user_name, target_user_email, client_app_name, client_app_version, client_platform, client_os, client_os_version, client_ip, country, region, city
 `n```
### Use Cases:
Breakdown by Action, Breakdown by Client App, Breakdown by Client OS, Breakdown by Country, Region, City, Failed Sign In Events, Geolocation of Clients, Highly Malicious Threat Table, Item Usage Summary, One Day Time Comparison, Outlier - Failed Sign-ins, Outlier - Sign-in Events, Sign In Events by Category, Sign In Events by Type, Sign-in Events - One Day Time Comparison, Sign-in Events Over Time, Sign-in Summary, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Intel - Item Usage Clients, Threat Locations, Threat Table, Top 10 Active Users



## Parser:
```
| json "type", "category", "timestamp",  "details", "target_user.name", "target_user.email", "client.app_name", "client.app_version", "client.platform_name", "client.os_name", "client.os_version", "client.ip_address", "location.country", "location.region", "location.city" as type, category, timestamp, details, target_user_name, target_user_email, client_app_name, client_app_version, client_platform, client_os, client_os_version, client_ip, country, region, city
| json field=raw "labels[*].name" as label_name
 `n```
### Use Cases:
Breakdown by Action, Breakdown by Client App, Breakdown by Client OS, Breakdown by Country, Region, City, Failed Sign In Events, Geolocation of Clients, Highly Malicious Threat Table, Item Usage Summary, One Day Time Comparison, Outlier - Failed Sign-ins, Outlier - Sign-in Events, Sign In Events by Category, Sign In Events by Type, Sign-in Events - One Day Time Comparison, Sign-in Events Over Time, Sign-in Summary, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Intel - Item Usage Clients, Threat Locations, Threat Table, Top 10 Active Users



## Parser:
```
| json "type", "category", "timestamp",  "details", "target_user.name", "target_user.email", "client.app_name", "client.app_version", "client.platform_version", "client.os_name", "client.os_version", "client.ip_address", "location.country", "location.region", "location.city" as type, category, timestamp, details, target_user_name, target_user_email, client_app_name, client_app_version, client_platform, client_os, client_os_version, client_ip, country, region, city
 `n```
### Use Cases:
Breakdown by Action, Breakdown by Client App, Breakdown by Client OS, Breakdown by Country, Region, City, Failed Sign In Events, Geolocation of Clients, Highly Malicious Threat Table, Item Usage Summary, One Day Time Comparison, Outlier - Failed Sign-ins, Outlier - Sign-in Events, Sign In Events by Category, Sign In Events by Type, Sign-in Events - One Day Time Comparison, Sign-in Events Over Time, Sign-in Summary, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Intel - Item Usage Clients, Threat Locations, Threat Table, Top 10 Active Users


