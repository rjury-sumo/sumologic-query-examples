# Parsers For Netskope

## Parser:
```
| json "_id", "alert_name", "alert_type", "user", "acked", "timestamp", "ccl", "activity", "srcip", "dstip", "appcategory", "policy", "access_method", "severity", "traffic_type", "organization_unit", "device", "os", "browser" as alert_id, alert_name, alert_type, user, acked, timestamp, ccl, activity, src_ip, dst_ip, appcategory, policy, access_method, severity, traffic_type, organization_unit, device, os, browser nodrop
 
```
### Use Cases:
Alerts - Time Compare Today vs Last Week Avg, Alerts by Application, Alerts Outlier Over Time, Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, App by Alerts - Distribution, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Browser Distribution by User, Device Distribution by User, Failed Logins, Network Usage Over Time, OS Distribution by User, Recent Alerts with Poor Cloud Confidence Level, Recent Anomalies by High Risk Level, Recent User Activity, Suspicious Destination IP Locations, Suspicious Source IP Locations, Top 10 Activity, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Policy Alerts, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "alert_name", "alert_type", "user", "acked", "timestamp", "ccl", "breach_id", "breach_date", "breach_media_references", "breach_target_references", "breach_score", "email_source", "matched_username" as alert_id, alert_name, alert_type, user, acked, timestamp, ccl, breach_id, breach_date, breach_media_references, breach_target_references, breach_score, email_source, matched_username nodrop
 
```
### Use Cases:
Alert Locations by Source IP, Alerts - Time Compare Today vs Last Week Avg, Alerts by Application, Alerts by Type, Alerts Outlier Over Time, Alerts Over Time, Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, App by Alerts - Distribution, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Breach Count, Browser Distribution by User, Compromised Credentials by Source of Info, Compromised Credentials Users Count, Device Distribution by User, DLP Incidents Count, Failed Logins, Network Usage Over Time, OS Distribution by User, Recent Alerts, Recent Alerts with Poor Cloud Confidence Level, Recent Anomalies by High Risk Level, Recent Compromised Credentials, Recent User Activity, Suspicious Destination IP Locations, Suspicious Source IP Locations, Top 10 Activity, Top 10 Alerts, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Breaches by breach score, Top 10 Devices by User Access, Top 10 Users, Top 10 Users by Alerts, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Alerts, Total Malwares Detected, Total Policy Alerts, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "alert", "alert_type", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop
 
```
### Use Cases:
Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Browser Distribution by User, Device Distribution by User, Failed Logins, Network Usage Over Time, OS Distribution by User, Recent Anomalies by High Risk Level, Recent User Activity, Top 10 Activity, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "alert", "alert_type", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop| where is_alert="no" and isNull(alert_type) and type="nspolicy"
 
```
### Use Cases:
Applications by Activity Distribution, Applications by Category, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Bytes, User Agent Distribution



## Parser:
```
| json "_id", "alert", "alert_type", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user", "app_session_id" as event_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user, app_session_id nodrop
 
```
### Use Cases:
Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Network Usage Over Time, Recent Anomalies by High Risk Level, Top 10 Activity, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Sessions, Total  Unique Applications, Total  Unique Site, Total Unique Apps, Total Unique Users, User Agent Distribution, User Locations by SourceIP, Users Affected, Users by Traffic Type



## Parser:
```
| json "_id", "alert", "alert_type", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user", "app_session_id", "src_country", "traffic_type" as event_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user, app_session_id, src_country, traffic_type nodrop
 
```
### Use Cases:
Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Device Distribution by User, Failed Logins, Network Usage Over Time, OS Distribution by User, Recent Anomalies by High Risk Level, Recent User Activity, Top 10 Activity, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "alert", "alert_type", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user", "traffic_type" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user, traffic_type nodrop
 
```
### Use Cases:
Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Network Usage Over Time, Recent Anomalies by High Risk Level, Recent User Activity, Top 10 Activity, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Sessions, Total  Unique Applications, Total  Unique Site, Total Unique Apps, Total Unique Users, User Agent Distribution, User Locations by SourceIP, Users Affected, Users by Traffic Type



## Parser:
```
| json "_id", "alert", "alert_type", "user" nodrop
 
```
### Use Cases:
Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Network Usage Over Time, Recent Anomalies by High Risk Level, Recent User Activity, Top 10 Activity, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Sessions, Total  Unique Applications, Total  Unique Site, Total Unique Apps, Total Unique Users, User Agent Distribution, User Locations by SourceIP, Users Affected, Users by Traffic Type



## Parser:
```
| json "_id", "alert", "alert_type","type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop
 
```
### Use Cases:
Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Device Distribution by User, Failed Logins, Network Usage Over Time, OS Distribution by User, Recent Anomalies by High Risk Level, Recent User Activity, Top 10 Activity, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Traffic Type



## Parser:
```
| json "_id", "alert", "alert_type","type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user", "app_session_id" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user, app_session_id  nodrop
 
```
### Use Cases:
Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by Users, Network Usage Over Time, Recent Anomalies by High Risk Level, Top 10 Activity, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Sessions, Total  Unique Site, Total Unique Apps, Total Unique Users, User Agent Distribution, User Locations by SourceIP, Users Affected



## Parser:
```
| json "_id", "alert", "alert_type","type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user", "app_session_id" as event_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user, app_session_id nodrop
 
```
### Use Cases:
Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Network Usage Over Time, OS Distribution by User, Recent Anomalies by High Risk Level, Recent User Activity, Top 10 Activity, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Unique Apps, Total Unique Users, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Traffic Type



## Parser:
```
| json "_id", "alert", "alert_type","type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user", "traffic_type" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user, traffic_type nodrop
 
```
### Use Cases:
Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Failed Logins, Network Usage Over Time, OS Distribution by User, Recent Anomalies by High Risk Level, Recent User Activity, Top 10 Activity, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Unique Apps, Total Unique Users, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Traffic Type



## Parser:
```
| json "_id", "alert", "app_session_id", "browser", "bypass_traffic", "client_bytes", "appcategory", "app", "os", "user", "device", "domain", "http_transaction_count","num_bytes","server_bytes", "site", "timestamp", "ccl", "traffic_type", "type", "url", "page", "conn_duration", "hostname", "req_cnt", "resp_cnt" as event_id, alert, app_session_id, browser, bypass_traffic, client_bytes, appcategory, app, os, user, device, domain, http_transaction_count,num_bytes,server_bytes, site, timestamp, ccl, traffic_type, type, url, page, conn_duration, hostname, req_cnt, resp_cnt nodrop
 
```
### Use Cases:
Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Network Usage Over Time, Recent Anomalies by High Risk Level, Top 10 Activity, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Sessions, Total  Unique Applications, Total  Unique Site, Total Unique Apps, Total Unique Users, User Agent Distribution, User Locations by SourceIP, Users Affected, Users by Traffic Type



## Parser:
```
| json "_id", "alert", "app_session_id", "browser", "bypass_traffic", "client_bytes", "appcategory", "app", "os", "user", "device", "domain", "http_transaction_count","num_bytes","server_bytes", "site", "timestamp", "ccl", "traffic_type", "type", "url", "page", "conn_duration", "hostname", "req_cnt", "resp_cnt" as event_id, is_alert, app_session_id, browser, bypass_traffic, client_bytes, appcategory, app, os, user, device, domain, http_transaction_count,num_bytes,server_bytes, site, timestamp, ccl, traffic_type, type, url, page, conn_duration, hostname, req_cnt, resp_cnt nodrop
 
```
### Use Cases:
Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, Applications by Activity Distribution, Applications by Category, Network Usage Over Time, Recent Anomalies by High Risk Level, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top User by Anomaly Risk Level, Total Unique Apps, User Agent Distribution, Users Affected



## Parser:
```
| json "_id", "alert", "app_session_id", "browser", "bypass_traffic", "client_bytes", "appcategory", "app", "os", "user", "device", "domain", "http_transaction_count","num_bytes","server_bytes", "site", "timestamp", "ccl", "traffic_type", "type", "url", "page", "conn_duration", "hostname", "req_cnt", "resp_cnt", "useragent" as event_id, alert, app_session_id, browser, bypass_traffic, client_bytes, appcategory, app, os, user, device, domain, http_transaction_count,num_bytes,server_bytes, site, timestamp, ccl, traffic_type, type, url, page, conn_duration, hostname, req_cnt, resp_cnt, useragent nodrop
 
```
### Use Cases:
Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, Applications by Activity Distribution, Applications by Category, Network Usage Over Time, Recent Anomalies by High Risk Level, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total Unique Apps, User Agent Distribution, Users Affected



## Parser:
```
| json "_id", "alert", "app_session_id", "browser", "bypass_traffic", "client_bytes", "appcategory", "app", "os", "user", "device", "domain", "http_transaction_count","num_bytes","server_bytes", "site", "timestamp", "ccl", "traffic_type", "type", "url", "page", "page_duration", "hostname", "req_cnt", "resp_cnt" as event_id, alert, app_session_id, browser, bypass_traffic, client_bytes, appcategory, app, os, user, device, domain, http_transaction_count,num_bytes,server_bytes, site, timestamp, ccl, traffic_type, type, url, page, page_duration, hostname, req_cnt, resp_cnt nodrop
 
```
### Use Cases:
Applications by Activity Distribution, Applications by Category, Network Usage Over Time, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Bytes, Total Unique Apps, User Agent Distribution



## Parser:
```
| json "_id", "alert", "app_session_id", "browser", "bypass_traffic", "client_bytes", "appcategory", "app", "os", "user", "device", "domain", "http_transaction_count","num_bytes","server_bytes", "site", "timestamp", "ccl", "traffic_type", "type", "url", "page", "page_duration", "hostname", "req_cnt", "resp_cnt" as event_id, is_alert, app_session_id, browser, bypass_traffic, client_bytes, appcategory, app, os, user, device, domain, http_transaction_count,num_bytes,server_bytes, site, timestamp, ccl, traffic_type, type, url, page, page_duration, hostname, req_cnt, resp_cnt nodrop
 
```
### Use Cases:
Applications by Activity Distribution, Applications by Category, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Bytes, Total Unique Apps, User Agent Distribution



## Parser:
```
| json "_id", "alert", "app_session_id", "browser", "bypass_traffic", "client_bytes", "appcategory", "app", "os", "user", "device", "domain", "http_transaction_count","num_bytes","server_bytes", "site", "timestamp", "ccl", "traffic_type", "type", "url", "page", "page_duration", "hostname", "req_cnt", "resp_cnt", "useragent" as event_id, alert, app_session_id, browser, bypass_traffic, client_bytes, appcategory, app, os, user, device, domain, http_transaction_count,num_bytes,server_bytes, site, timestamp, ccl, traffic_type, type, url, page, page_duration, hostname, req_cnt, resp_cnt, useragent nodrop
 
```
### Use Cases:
Applications by Category, User Agent Distribution



## Parser:
```
| json "_id", "alert", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity" as alert_id, alert, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity nodrop
 
```
### Use Cases:
Alerts - Time Compare Today vs Last Week Avg, Alerts by Application, Alerts Outlier Over Time, Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Browser Distribution by User, Device Distribution by User, Failed Logins, Network Usage Over Time, OS Distribution by User, Recent Alerts with Poor Cloud Confidence Level, Recent Anomalies by High Risk Level, Recent User Activity, Suspicious Destination IP Locations, Suspicious Source IP Locations, Top 10 Activity, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "alert", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser" as alert_id, is_alert, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser nodrop
 
```
### Use Cases:
Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Network Usage Over Time, Recent Anomalies by High Risk Level, Top 10 Activity, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Sessions, Total  Unique Applications, Total  Unique Site, Total Unique Apps, Total Unique Users, User Agent Distribution, User Locations by SourceIP, Users Affected



## Parser:
```
| json "_id", "alert", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop
 
```
### Use Cases:
Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Network Usage Over Time, Recent Anomalies by High Risk Level, Top 10 Activity, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Sessions, Total  Unique Site, Total Unique Apps, Total Unique Users, User Agent Distribution, User Locations by SourceIP, Users Affected



## Parser:
```
| json "_id", "alert", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user", "app_session_id", "alert_type" as event_id, is_alert, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user, app_session_id, alert_type nodrop
 
```
### Use Cases:
Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Device Distribution by User, Failed Logins, Network Usage Over Time, OS Distribution by User, Recent Anomalies by High Risk Level, Recent User Activity, Top 10 Activity, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_id", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_id, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type nodrop
 
```
### Use Cases:
Alert Locations by Source IP, Alerts - Time Compare Today vs Last Week Avg, Alerts by Application, Alerts by Type, Alerts Outlier Over Time, Alerts Over Time, Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, App by Alerts - Distribution, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Breach Count, Browser Distribution by User, Compromised Credentials by Source of Info, Compromised Credentials Users Count, Device Distribution by User, DLP incidents by Activity, DLP Incidents by Browser and Browser Version, DLP incidents by Category, DLP incidents by File Type, DLP Incidents by OS and OS Version, DLP Incidents by Policy Over Time, DLP incidents by Severity, DLP Incidents Count, Failed Logins, Malware by Activity, Malware by Category, Malware by Severity, Malware Incidents by App, Malware Types affecting Unique UserIP, Network Usage Over Time, Objects with High and Critical Severity, OS Distribution by User, Recent Alerts, Recent Alerts with Poor Cloud Confidence Level, Recent Anomalies by High Risk Level, Recent Compromised Credentials, Recent DLP incidents with High and Critical Severity, Recent Malwares, Recent User Activity, Suspicious Destination IP Locations, Suspicious Source IP Locations, Top 10 Activity, Top 10 Affected File Types, Top 10 Alerts, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Breaches by breach score, Top 10 Devices by User Access, Top 10 DLP Policy Violations, Top 10 DLP Profile, Top 10 DLP Rules, Top 10 Malware by Malware Id, Malware Name, Top 10 Malware Type, Top 10 Source IPs, Top 10 UserIP violating DLP Policy, Top 10 Users, Top 10 Users affected by Malwares, Top 10 Users by Alerts, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Top Users and Hostname by DLP Incidents Count, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Alerts, Total App Affected, Total Files Infected, Total Malwares Detected, Total Policy Alerts, Total Unique Apps, Total Unique Users, Total Users Affected, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, UserIP affected by Unique Malware Name, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_id", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type", "object", "local_md5" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_id, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type, object, local_md5 nodrop
 
```
### Use Cases:
Alert Locations by Source IP, Alerts - Time Compare Today vs Last Week Avg, Alerts by Application, Alerts by Type, Alerts Outlier Over Time, Alerts Over Time, Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, App by Alerts - Distribution, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Breach Count, Browser Distribution by User, Compromised Credentials by Source of Info, Compromised Credentials Users Count, Device Distribution by User, DLP incidents by Activity, DLP Incidents by Browser and Browser Version, DLP incidents by Category, DLP incidents by File Type, DLP Incidents by OS and OS Version, DLP Incidents by Policy Over Time, DLP incidents by Severity, DLP Incidents Count, Failed Logins, Malware by Activity, Malware by Severity, Malware Incidents by App, Malware Types affecting Unique UserIP, Network Usage Over Time, Objects with High and Critical Severity, OS Distribution by User, Recent Alerts, Recent Alerts with Poor Cloud Confidence Level, Recent Anomalies by High Risk Level, Recent Compromised Credentials, Recent DLP incidents with High and Critical Severity, Recent Malwares, Recent User Activity, Suspicious Destination IP Locations, Suspicious Source IP Locations, Top 10 Activity, Top 10 Affected File Types, Top 10 Alerts, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Breaches by breach score, Top 10 Devices by User Access, Top 10 DLP Policy Violations, Top 10 DLP Profile, Top 10 DLP Rules, Top 10 Malware by Malware Id, Malware Name, Top 10 Malware Type, Top 10 Source IPs, Top 10 UserIP violating DLP Policy, Top 10 Users, Top 10 Users affected by Malwares, Top 10 Users by Alerts, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Top Users and Hostname by DLP Incidents Count, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Alerts, Total App Affected, Total Files Infected, Total Malwares Detected, Total Policy Alerts, Total Unique Apps, Total Unique Users, Total Users Affected, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, UserIP affected by Unique Malware Name, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_id", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type", "object", "local_md5", "userip" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_id, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type, object, local_md5, userip nodrop
 
```
### Use Cases:
Alert Locations by Source IP, Alerts - Time Compare Today vs Last Week Avg, Alerts by Application, Alerts by Type, Alerts Outlier Over Time, Alerts Over Time, Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, App by Alerts - Distribution, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Breach Count, Browser Distribution by User, Compromised Credentials by Source of Info, Compromised Credentials Users Count, Device Distribution by User, DLP incidents by Activity, DLP Incidents by Browser and Browser Version, DLP incidents by Category, DLP incidents by File Type, DLP Incidents by OS and OS Version, DLP Incidents by Policy Over Time, DLP incidents by Severity, DLP Incidents Count, Failed Logins, Malware Types affecting Unique UserIP, Network Usage Over Time, Objects with High and Critical Severity, OS Distribution by User, Recent Alerts, Recent Alerts with Poor Cloud Confidence Level, Recent Anomalies by High Risk Level, Recent Compromised Credentials, Recent DLP incidents with High and Critical Severity, Recent User Activity, Suspicious Destination IP Locations, Suspicious Source IP Locations, Top 10 Activity, Top 10 Alerts, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Breaches by breach score, Top 10 Devices by User Access, Top 10 DLP Policy Violations, Top 10 DLP Profile, Top 10 DLP Rules, Top 10 Malware Type, Top 10 UserIP violating DLP Policy, Top 10 Users, Top 10 Users by Alerts, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Top Users and Hostname by DLP Incidents Count, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Alerts, Total App Affected, Total Malwares Detected, Total Policy Alerts, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, UserIP affected by Unique Malware Name, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type", "object_type", "object", "object_count" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type, object_type, object, object_count nodrop
 
```
### Use Cases:
Alert Locations by Source IP, Alerts - Time Compare Today vs Last Week Avg, Alerts by Application, Alerts by Type, Alerts Outlier Over Time, Alerts Over Time, Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, App by Alerts - Distribution, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Breach Count, Browser Distribution by User, Compromised Credentials by Source of Info, Compromised Credentials Users Count, Device Distribution by User, DLP incidents by Activity, DLP Incidents by Browser and Browser Version, DLP incidents by Category, DLP incidents by File Type, DLP Incidents by OS and OS Version, DLP Incidents by Policy Over Time, DLP incidents by Severity, DLP Incidents Count, Failed Logins, Malware by Severity, Malware Incidents by App, Malware Types affecting Unique UserIP, Network Usage Over Time, Objects with High and Critical Severity, OS Distribution by User, Recent Alerts, Recent Alerts with Poor Cloud Confidence Level, Recent Anomalies by High Risk Level, Recent Compromised Credentials, Recent DLP incidents with High and Critical Severity, Recent Malwares, Recent User Activity, Suspicious Destination IP Locations, Suspicious Source IP Locations, Top 10 Activity, Top 10 Affected File Types, Top 10 Alerts, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Breaches by breach score, Top 10 Devices by User Access, Top 10 DLP Policy Violations, Top 10 DLP Profile, Top 10 DLP Rules, Top 10 Malware Type, Top 10 Source IPs, Top 10 UserIP violating DLP Policy, Top 10 Users, Top 10 Users by Alerts, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Top Users and Hostname by DLP Incidents Count, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Alerts, Total App Affected, Total Files Infected, Total Malwares Detected, Total Policy Alerts, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, UserIP affected by Unique Malware Name, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy nodrop
 
```
### Use Cases:
Alert Locations by Source IP, Alerts - Time Compare Today vs Last Week Avg, Alerts by Application, Alerts by Type, Alerts Outlier Over Time, Alerts Over Time, Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, App by Alerts - Distribution, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Breach Count, Browser Distribution by User, Compromised Credentials by Source of Info, Compromised Credentials Users Count, Device Distribution by User, DLP incidents by Activity, DLP Incidents by Browser and Browser Version, DLP incidents by Category, DLP incidents by File Type, DLP Incidents by OS and OS Version, DLP Incidents by Policy Over Time, DLP incidents by Severity, DLP Incidents Count, Failed Logins, Network Usage Over Time, Objects with High and Critical Severity, OS Distribution by User, Recent Alerts, Recent Alerts with Poor Cloud Confidence Level, Recent Anomalies by High Risk Level, Recent Compromised Credentials, Recent DLP incidents with High and Critical Severity, Recent User Activity, Suspicious Destination IP Locations, Suspicious Source IP Locations, Top 10 Activity, Top 10 Alerts, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Breaches by breach score, Top 10 Devices by User Access, Top 10 DLP Policy Violations, Top 10 DLP Profile, Top 10 DLP Rules, Top 10 UserIP violating DLP Policy, Top 10 Users, Top 10 Users by Alerts, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Top Users and Hostname by DLP Incidents Count, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Alerts, Total Malwares Detected, Total Policy Alerts, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy", "os_version" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy, os_version nodrop
 
```
### Use Cases:
Alert Locations by Source IP, Alerts - Time Compare Today vs Last Week Avg, Alerts by Application, Alerts by Type, Alerts Outlier Over Time, Alerts Over Time, Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, App by Alerts - Distribution, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Breach Count, Browser Distribution by User, Compromised Credentials by Source of Info, Compromised Credentials Users Count, Device Distribution by User, DLP incidents by Activity, DLP Incidents by Browser and Browser Version, DLP incidents by Category, DLP incidents by File Type, DLP Incidents by OS and OS Version, DLP Incidents by Policy Over Time, DLP Incidents Count, Failed Logins, Network Usage Over Time, Objects with High and Critical Severity, OS Distribution by User, Recent Alerts, Recent Alerts with Poor Cloud Confidence Level, Recent Anomalies by High Risk Level, Recent Compromised Credentials, Recent DLP incidents with High and Critical Severity, Recent User Activity, Suspicious Destination IP Locations, Suspicious Source IP Locations, Top 10 Activity, Top 10 Alerts, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Breaches by breach score, Top 10 Devices by User Access, Top 10 DLP Policy Violations, Top 10 DLP Profile, Top 10 DLP Rules, Top 10 Users, Top 10 Users by Alerts, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Top Users and Hostname by DLP Incidents Count, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Alerts, Total Malwares Detected, Total Policy Alerts, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy", "os_version", "browser", "browser_version" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy, os_version, browser, browser_version nodrop
 
```
### Use Cases:
Alert Locations by Source IP, Alerts - Time Compare Today vs Last Week Avg, Alerts by Application, Alerts by Type, Alerts Outlier Over Time, Alerts Over Time, Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, App by Alerts - Distribution, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Breach Count, Browser Distribution by User, Compromised Credentials by Source of Info, Compromised Credentials Users Count, Device Distribution by User, DLP incidents by Activity, DLP Incidents by Browser and Browser Version, DLP Incidents Count, Failed Logins, Network Usage Over Time, OS Distribution by User, Recent Alerts, Recent Alerts with Poor Cloud Confidence Level, Recent Anomalies by High Risk Level, Recent Compromised Credentials, Recent User Activity, Suspicious Destination IP Locations, Suspicious Source IP Locations, Top 10 Activity, Top 10 Alerts, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Breaches by breach score, Top 10 Devices by User Access, Top 10 Users, Top 10 Users by Alerts, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Alerts, Total Malwares Detected, Total Policy Alerts, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy", "os_version", "browser", "browser_version", "hostname" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy, os_version, browser, browser_version, hostname nodrop
 
```
### Use Cases:
Alert Locations by Source IP, Alerts - Time Compare Today vs Last Week Avg, Alerts by Application, Alerts by Type, Alerts Outlier Over Time, Alerts Over Time, Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, App by Alerts - Distribution, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Breach Count, Browser Distribution by User, Compromised Credentials by Source of Info, Compromised Credentials Users Count, Device Distribution by User, DLP incidents by Activity, DLP Incidents by Browser and Browser Version, DLP incidents by Category, DLP incidents by File Type, DLP Incidents by Policy Over Time, DLP Incidents Count, Failed Logins, Network Usage Over Time, OS Distribution by User, Recent Alerts, Recent Alerts with Poor Cloud Confidence Level, Recent Anomalies by High Risk Level, Recent Compromised Credentials, Recent DLP incidents with High and Critical Severity, Recent User Activity, Suspicious Destination IP Locations, Suspicious Source IP Locations, Top 10 Activity, Top 10 Alerts, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Breaches by breach score, Top 10 Devices by User Access, Top 10 DLP Policy Violations, Top 10 DLP Profile, Top 10 Users, Top 10 Users by Alerts, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Top Users and Hostname by DLP Incidents Count, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Alerts, Total Malwares Detected, Total Policy Alerts, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level nodrop
 
```
### Use Cases:
Alert Locations by Source IP, Alerts - Time Compare Today vs Last Week Avg, Alerts by Application, Alerts by Type, Alerts Outlier Over Time, Alerts Over Time, Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, App by Alerts - Distribution, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Breach Count, Browser Distribution by User, Device Distribution by User, DLP Incidents Count, Failed Logins, Network Usage Over Time, OS Distribution by User, Recent Alerts, Recent Alerts with Poor Cloud Confidence Level, Recent Anomalies by High Risk Level, Recent User Activity, Suspicious Destination IP Locations, Suspicious Source IP Locations, Top 10 Activity, Top 10 Alerts, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 10 Users by Alerts, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Alerts, Total Malwares Detected, Total Policy Alerts, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level", "browser" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level, browser nodrop
 
```
### Use Cases:
Alert Locations by Source IP, Alerts - Time Compare Today vs Last Week Avg, Alerts by Application, Alerts by Type, Alerts Outlier Over Time, Alerts Over Time, Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, App by Alerts - Distribution, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Breach Count, Browser Distribution by User, Device Distribution by User, DLP Incidents Count, Failed Logins, Network Usage Over Time, OS Distribution by User, Recent Alerts, Recent Alerts with Poor Cloud Confidence Level, Recent Anomalies by High Risk Level, Recent User Activity, Suspicious Destination IP Locations, Suspicious Source IP Locations, Top 10 Activity, Top 10 Alerts, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 10 Users by Alerts, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Alerts, Total Malwares Detected, Total Policy Alerts, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "userip", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, userip, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy nodrop
 
```
### Use Cases:
Alert Locations by Source IP, Alerts - Time Compare Today vs Last Week Avg, Alerts by Application, Alerts by Type, Alerts Outlier Over Time, Alerts Over Time, Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, App by Alerts - Distribution, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Breach Count, Browser Distribution by User, Compromised Credentials by Source of Info, Compromised Credentials Users Count, Device Distribution by User, DLP incidents by Activity, DLP Incidents by Browser and Browser Version, DLP incidents by Category, DLP incidents by File Type, DLP Incidents by OS and OS Version, DLP Incidents by Policy Over Time, DLP Incidents Count, Failed Logins, Network Usage Over Time, Objects with High and Critical Severity, OS Distribution by User, Recent Alerts, Recent Alerts with Poor Cloud Confidence Level, Recent Anomalies by High Risk Level, Recent Compromised Credentials, Recent DLP incidents with High and Critical Severity, Recent User Activity, Suspicious Destination IP Locations, Suspicious Source IP Locations, Top 10 Activity, Top 10 Alerts, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Breaches by breach score, Top 10 Devices by User Access, Top 10 DLP Policy Violations, Top 10 DLP Profile, Top 10 DLP Rules, Top 10 UserIP violating DLP Policy, Top 10 Users, Top 10 Users by Alerts, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Top Users and Hostname by DLP Incidents Count, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Alerts, Total Malwares Detected, Total Policy Alerts, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "srcip", "dstip", "alert_name", "alert", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity" as alert_id, src_ip, dest_ip, alert_name, is_alert, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity nodrop
 
```
### Use Cases:
Alerts - Time Compare Today vs Last Week Avg, Alerts by Application, Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Browser Distribution by User, Device Distribution by User, Failed Logins, Network Usage Over Time, OS Distribution by User, Recent Alerts with Poor Cloud Confidence Level, Recent Anomalies by High Risk Level, Recent User Activity, Top 10 Activity, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "srcip", "dstip", "alert", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity" as alert_id, src_ip, dest_ip, is_alert, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity nodrop
 
```
### Use Cases:
Alert Locations by Source IP, Alerts - Time Compare Today vs Last Week Avg, Alerts by Application, Alerts by Type, Alerts Outlier Over Time, Alerts Over Time, Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, App by Alerts - Distribution, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Breach Count, Browser Distribution by User, Device Distribution by User, DLP Incidents Count, Failed Logins, Network Usage Over Time, OS Distribution by User, Recent Alerts, Recent Alerts with Poor Cloud Confidence Level, Recent Anomalies by High Risk Level, Recent User Activity, Suspicious Destination IP Locations, Suspicious Source IP Locations, Top 10 Activity, Top 10 Alerts, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 10 Users by Alerts, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Alerts, Total Malwares Detected, Total Policy Alerts, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "srcip", "dstip", "alert", "alert_name", "alert_type", "appcategory", "category", "app", "os", "user", "device", "acked" as alert_id, src_ip, dest_ip, is_alert, alert_name, alert_type, appcategory, category, app, os, user, device, acked nodrop
 
```
### Use Cases:
Alerts - Time Compare Today vs Last Week Avg, Alerts by Application, Alerts by Type, Alerts Outlier Over Time, Alerts Over Time, Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, App by Alerts - Distribution, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Breach Count, Browser Distribution by User, Device Distribution by User, DLP Incidents Count, Failed Logins, Network Usage Over Time, OS Distribution by User, Recent Alerts, Recent Alerts with Poor Cloud Confidence Level, Recent Anomalies by High Risk Level, Recent User Activity, Suspicious Destination IP Locations, Suspicious Source IP Locations, Top 10 Activity, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 10 Users by Alerts, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Alerts, Total Malwares Detected, Total Policy Alerts, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Country, Users by Traffic Type



## Parser:
```
| json "_id", "srcip", "dstip", "alert", "alert_name", "alert_type", "appcategory", "category", "app", "site", "os", "user", "device", "acked" as alert_id, src_ip, dest_ip, is_alert, alert_name, alert_type, appcategory, category, app, site, os, user, device, acked nodrop
 
```
### Use Cases:
Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, Applications by Activity Distribution, Applications by Category, Network Usage Over Time, Recent Anomalies by High Risk Level, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total Unique Apps, User Agent Distribution, Users Affected



## Parser:
```
| json "srcip", "dstip","alert", "alert_name", "alert_type", "appcategory", "category", "app", "os", "user", "device", "acked" as src_ip, dest_ip, is_alert, alert_name, alert_type, appcategory, category, app, os, user, device, acked nodrop
 
```
### Use Cases:
Alerts - Time Compare Today vs Last Week Avg, Alerts by Application, Alerts Outlier Over Time, Alerts Over Time, Anomalies by Activity, Anomalies by Alert Name, Anomalies by App, Anomalies by App Category, Anomalies by Risk Level, Anomalies Count, Anomalies Over Time, App by Alerts - Distribution, Applications by Activity Distribution, Applications by Category, Applications Distribution by Category, Applications Distribution by CCL, Applications Distribution by Users, Applications Used Over Time, Browser Distribution by User, Device Distribution by User, Failed Logins, Network Usage Over Time, OS Distribution by User, Recent Alerts with Poor Cloud Confidence Level, Recent Anomalies by High Risk Level, Recent User Activity, Suspicious Destination IP Locations, Suspicious Source IP Locations, Top 10 Activity, Top 10 Applications by Avg Connection Duration, Top 10 Applications by Avg Page Duration, Top 10 Applications by Total Alerts, Top 10 Applications by Total Bytes, Top 10 Devices by User Access, Top 10 Users, Top 10 Users by Total Alerts, Top 20 Applications by Category, Top User by Anomaly Risk Level, Total  Activities, Total  Sessions, Total  Unique Applications, Total  Unique Sessions, Total  Unique Site, Total  Unique Users, Total Policy Alerts, Total Unique Apps, Total Unique Users, User Activity Distribution, User Agent Distribution, User Locations by DestinationIP, User Locations by SourceIP, Users Affected, Users by Country, Users by Traffic Type


