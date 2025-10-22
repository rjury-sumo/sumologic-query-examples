# Parsers For Netskope

**Netskope/Alert Details/Alerts - Time Compare Today vs Last Week Avg**
```
_sourceCategory={{Logsdatasource}}  "yes"
| json "_id", "srcip", "dstip", "alert_name", "alert", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity" as alert_id, src_ip, dest_ip, alert_name, is_alert, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity nodrop
```

**Netskope/Alert Details/Alerts by Application**
```
_sourceCategory={{Logsdatasource}}  
| json "_id", "srcip", "dstip", "alert", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity" as alert_id, src_ip, dest_ip, is_alert, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity nodrop
```

**Netskope/Alert Details/Alerts Outlier Over Time**
```
_sourceCategory={{Logsdatasource}}  "yes"
| json "_id", "srcip", "dstip", "alert", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity" as alert_id, src_ip, dest_ip, is_alert, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity nodrop
```

**Netskope/Alert Details/Recent Alerts with Poor Cloud Confidence Level**
```
_sourceCategory={{Logsdatasource}}  "yes"
| json "_id", "srcip", "dstip", "alert", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity" as alert_id, src_ip, dest_ip, is_alert, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity nodrop
```

**Netskope/Alert Details/Suspicious Destination IP Locations**
```
_sourceCategory={{Logsdatasource}}  "yes"
| json "_id", "alert", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity" as alert_id, alert, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity nodrop
```

**Netskope/Alert Details/Suspicious Source IP Locations**
```
_sourceCategory={{Logsdatasource}}  
| json "_id", "alert", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity" as alert_id, alert, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity nodrop
```

**Netskope/Alert Overview/Alert Locations by Source IP**
```
_sourceCategory={{Logsdatasource}}  
| json "_id", "srcip", "dstip", "alert", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity" as alert_id, src_ip, dest_ip, is_alert, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity nodrop
```

**Netskope/Alert Overview/Alerts by Type**
```
_sourceCategory={{Logsdatasource}}  "yes"
| json "_id", "srcip", "dstip", "alert", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity" as alert_id, src_ip, dest_ip, is_alert, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity nodrop
```

**Netskope/Alert Overview/Alerts Over Time**
```
_sourceCategory={{Logsdatasource}}  "yes"
| json "srcip", "dstip","alert", "alert_name", "alert_type", "appcategory", "category", "app", "os", "user", "device", "acked" as src_ip, dest_ip, is_alert, alert_name, alert_type, appcategory, category, app, os, user, device, acked nodrop
```

**Netskope/Alert Overview/Anomalies Count**
```
_sourceCategory={{Logsdatasource}}  "anomaly"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level nodrop
```

**Netskope/Alert Overview/App by Alerts - Distribution**
```
_sourceCategory={{Logsdatasource}}  
| json "_id", "srcip", "dstip", "alert", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity" as alert_id, src_ip, dest_ip, is_alert, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity nodrop
```

**Netskope/Alert Overview/Breach Count**
```
_sourceCategory={{Logsdatasource}}  "Compromised Credential"
| json "_id", "alert_name", "alert_type", "user", "acked", "timestamp", "ccl", "breach_id", "breach_date", "breach_media_references", "breach_target_references", "breach_score", "email_source", "matched_username" as alert_id, alert_name, alert_type, user, acked, timestamp, ccl, breach_id, breach_date, breach_media_references, breach_target_references, breach_score, email_source, matched_username nodrop
```

**Netskope/Alert Overview/DLP Incidents Count**
```
_sourceCategory={{Logsdatasource}}  DLP
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy nodrop
```

**Netskope/Alert Overview/Recent Alerts**
```
_sourceCategory={{Logsdatasource}}  
| json "_id", "srcip", "dstip", "alert", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity" as alert_id, src_ip, dest_ip, is_alert, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity nodrop
```

**Netskope/Alert Overview/Top 10 Alerts**
```
_sourceCategory={{Logsdatasource}}  
| json "_id", "srcip", "dstip", "alert", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity" as alert_id, src_ip, dest_ip, is_alert, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity nodrop
```

**Netskope/Alert Overview/Top 10 Users by Alerts**
```
_sourceCategory={{Logsdatasource}}  
| json "_id", "srcip", "dstip", "alert", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity" as alert_id, src_ip, dest_ip, is_alert, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity nodrop
```

**Netskope/Alert Overview/Total Alerts**
```
_sourceCategory={{Logsdatasource}}  
| json "_id", "srcip", "dstip", "alert", "alert_name", "alert_type", "appcategory", "category", "app", "os", "user", "device", "acked" as alert_id, src_ip, dest_ip, is_alert, alert_name, alert_type, appcategory, category, app, os, user, device, acked nodrop
```

**Netskope/Alert Overview/Total Malwares Detected**
```
_sourceCategory={{Logsdatasource}}  "Malware"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_id", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_id, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type nodrop
```

**Netskope/Alert Overview/Total Policy Alerts**
```
_sourceCategory={{Logsdatasource}}  "policy"
| json "_id", "alert_name", "alert_type", "user", "acked", "timestamp", "ccl", "activity", "srcip", "dstip", "appcategory", "policy", "access_method", "severity", "traffic_type", "organization_unit", "device", "os", "browser" as alert_id, alert_name, alert_type, user, acked, timestamp, ccl, activity, src_ip, dst_ip, appcategory, policy, access_method, severity, traffic_type, organization_unit, device, os, browser nodrop
```

**Netskope/Anomalies - New/Anomalies by Activity**
```
_sourceCategory = Labs/Netskope "anomaly"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level nodrop
```

**Netskope/Anomalies - New/Anomalies by Alert Name**
```
_sourceCategory = Labs/Netskope "anomaly"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level", "browser" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level, browser nodrop
```

**Netskope/Anomalies - New/Anomalies by App**
```
_sourceCategory = Labs/Netskope "anomaly"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level nodrop
```

**Netskope/Anomalies - New/Anomalies by App Category**
```
_sourceCategory = Labs/Netskope "anomaly"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level nodrop
```

**Netskope/Anomalies - New/Anomalies by Risk Level**
```
_sourceCategory = Labs/Netskope "anomaly"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level nodrop
```

**Netskope/Anomalies - New/Anomalies Count**
```
_sourceCategory = Labs/Netskope "anomaly"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level nodrop
```

**Netskope/Anomalies - New/Anomalies Over Time**
```
_sourceCategory = Labs/Netskope "anomaly"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level nodrop
```

**Netskope/Anomalies - New/Recent Anomalies by High Risk Level**
```
_sourceCategory = Labs/Netskope "high" "anomaly" 
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level", "browser" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level, browser nodrop
```

**Netskope/Anomalies - New/Top User by Anomaly Risk Level**
```
_sourceCategory = Labs/Netskope "anomaly"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level nodrop
```

**Netskope/Anomalies - New/Users Affected**
```
_sourceCategory = Labs/Netskope "anomaly"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level nodrop
```

**Netskope/Anomalies/Anomalies by Activity**
```
_sourceCategory={{Logsdatasource}}  "anomaly"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level nodrop
```

**Netskope/Anomalies/Anomalies by Alert Name**
```
_sourceCategory={{Logsdatasource}}  "anomaly"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level", "browser" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level, browser nodrop
```

**Netskope/Anomalies/Anomalies by App**
```
_sourceCategory={{Logsdatasource}}  "anomaly"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level nodrop
```

**Netskope/Anomalies/Anomalies by App Category**
```
_sourceCategory={{Logsdatasource}}  "anomaly"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level nodrop
```

**Netskope/Anomalies/Anomalies by Risk Level**
```
_sourceCategory={{Logsdatasource}}  "anomaly"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level nodrop
```

**Netskope/Anomalies/Anomalies Count**
```
_sourceCategory={{Logsdatasource}}  "anomaly"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level nodrop
```

**Netskope/Anomalies/Anomalies Over Time**
```
_sourceCategory={{Logsdatasource}}  "anomaly"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level nodrop
```

**Netskope/Anomalies/Recent Anomalies by High Risk Level**
```
_sourceCategory={{Logsdatasource}}  "high" "anomaly" 
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level", "browser" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level, browser nodrop
```

**Netskope/Anomalies/Top User by Anomaly Risk Level**
```
_sourceCategory={{Logsdatasource}}  "anomaly"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level nodrop
```

**Netskope/Anomalies/Users Affected**
```
_sourceCategory={{Logsdatasource}}  "anomaly"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "from_user", "shared_credential_user", "risk_level" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, from_user, shared_credential_user, risk_level nodrop
```

**Netskope/Application Detail - New/Applications by Activity Distribution**
```
_sourceCategory = Labs/Netskope "nspolicy" "no" 
| json "_id", "alert", "alert_type", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop| where is_alert="no" and isNull(alert_type) and type="nspolicy"
```

**Netskope/Application Detail - New/Applications by Category**
```
_sourceCategory = Labs/Netskope "page"
| json "_id", "alert", "app_session_id", "browser", "bypass_traffic", "client_bytes", "appcategory", "app", "os", "user", "device", "domain", "http_transaction_count","num_bytes","server_bytes", "site", "timestamp", "ccl", "traffic_type", "type", "url", "page", "page_duration", "hostname", "req_cnt", "resp_cnt" as event_id, alert, app_session_id, browser, bypass_traffic, client_bytes, appcategory, app, os, user, device, domain, http_transaction_count,num_bytes,server_bytes, site, timestamp, ccl, traffic_type, type, url, page, page_duration, hostname, req_cnt, resp_cnt nodrop
```

**Netskope/Application Detail - New/Network Usage Over Time**
```
_sourceCategory = Labs/Netskope "page"
| json "_id", "alert", "app_session_id", "browser", "bypass_traffic", "client_bytes", "appcategory", "app", "os", "user", "device", "domain", "http_transaction_count","num_bytes","server_bytes", "site", "timestamp", "ccl", "traffic_type", "type", "url", "page", "page_duration", "hostname", "req_cnt", "resp_cnt" as event_id, alert, app_session_id, browser, bypass_traffic, client_bytes, appcategory, app, os, user, device, domain, http_transaction_count,num_bytes,server_bytes, site, timestamp, ccl, traffic_type, type, url, page, page_duration, hostname, req_cnt, resp_cnt nodrop
```

**Netskope/Application Detail - New/Top 10 Applications by Avg Page Duration**
```
_sourceCategory = Labs/Netskope "page"
| json "_id", "alert", "app_session_id", "browser", "bypass_traffic", "client_bytes", "appcategory", "app", "os", "user", "device", "domain", "http_transaction_count","num_bytes","server_bytes", "site", "timestamp", "ccl", "traffic_type", "type", "url", "page", "page_duration", "hostname", "req_cnt", "resp_cnt" as event_id, alert, app_session_id, browser, bypass_traffic, client_bytes, appcategory, app, os, user, device, domain, http_transaction_count,num_bytes,server_bytes, site, timestamp, ccl, traffic_type, type, url, page, page_duration, hostname, req_cnt, resp_cnt nodrop
```

**Netskope/Application Detail - New/Top 10 Applications by Total Alerts**
```
_sourceCategory = Labs/Netskope ("DLP" OR "anomaly" OR "Malware" OR "Compromised Credentials") "yes" 
| json "_id", "srcip", "dstip", "alert", "alert_name", "alert_type", "appcategory", "category", "app", "site", "os", "user", "device", "acked" as alert_id, src_ip, dest_ip, is_alert, alert_name, alert_type, appcategory, category, app, site, os, user, device, acked nodrop
```

**Netskope/Application Detail - New/Top 10 Applications by Total Bytes**
```
_sourceCategory = Labs/Netskope "page"
| json "_id", "alert", "app_session_id", "browser", "bypass_traffic", "client_bytes", "appcategory", "app", "os", "user", "device", "domain", "http_transaction_count","num_bytes","server_bytes", "site", "timestamp", "ccl", "traffic_type", "type", "url", "page", "page_duration", "hostname", "req_cnt", "resp_cnt" as event_id, alert, app_session_id, browser, bypass_traffic, client_bytes, appcategory, app, os, user, device, domain, http_transaction_count,num_bytes,server_bytes, site, timestamp, ccl, traffic_type, type, url, page, page_duration, hostname, req_cnt, resp_cnt nodrop
```

**Netskope/Application Detail - New/Top 10 Devices by User Access**
```
_sourceCategory = Labs/Netskope "nspolicy" "no"
| json "_id", "alert", "alert_type","type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop
```

**Netskope/Application Detail - New/Total Unique Apps**
```
_sourceCategory = Labs/Netskope "page"
| json "_id", "alert", "app_session_id", "browser", "bypass_traffic", "client_bytes", "appcategory", "app", "os", "user", "device", "domain", "http_transaction_count","num_bytes","server_bytes", "site", "timestamp", "ccl", "traffic_type", "type", "url", "page", "page_duration", "hostname", "req_cnt", "resp_cnt" as event_id, is_alert, app_session_id, browser, bypass_traffic, client_bytes, appcategory, app, os, user, device, domain, http_transaction_count,num_bytes,server_bytes, site, timestamp, ccl, traffic_type, type, url, page, page_duration, hostname, req_cnt, resp_cnt nodrop
```

**Netskope/Application Detail - New/User Agent Distribution**
```
_sourceCategory = Labs/Netskope "page"
| json "_id", "alert", "app_session_id", "browser", "bypass_traffic", "client_bytes", "appcategory", "app", "os", "user", "device", "domain", "http_transaction_count","num_bytes","server_bytes", "site", "timestamp", "ccl", "traffic_type", "type", "url", "page", "page_duration", "hostname", "req_cnt", "resp_cnt", "useragent" as event_id, alert, app_session_id, browser, bypass_traffic, client_bytes, appcategory, app, os, user, device, domain, http_transaction_count,num_bytes,server_bytes, site, timestamp, ccl, traffic_type, type, url, page, page_duration, hostname, req_cnt, resp_cnt, useragent nodrop
```

**Netskope/Application Detail/Applications by Activity Distribution**
```
_sourceCategory={{Logsdatasource}}  "nspolicy" "no" 
| json "_id", "alert", "alert_type", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop
```

**Netskope/Application Detail/Network Usage Over Time**
```
_sourceCategory={{Logsdatasource}}  "page"
| json "_id", "alert", "app_session_id", "browser", "bypass_traffic", "client_bytes", "appcategory", "app", "os", "user", "device", "domain", "http_transaction_count","num_bytes","server_bytes", "site", "timestamp", "ccl", "traffic_type", "type", "url", "page", "conn_duration", "hostname", "req_cnt", "resp_cnt" as event_id, alert, app_session_id, browser, bypass_traffic, client_bytes, appcategory, app, os, user, device, domain, http_transaction_count,num_bytes,server_bytes, site, timestamp, ccl, traffic_type, type, url, page, conn_duration, hostname, req_cnt, resp_cnt nodrop
```

**Netskope/Application Detail/Top 10 Applications by Avg Connection Duration**
```
_sourceCategory={{Logsdatasource}}  "page"
| json "_id", "alert", "app_session_id", "browser", "bypass_traffic", "client_bytes", "appcategory", "app", "os", "user", "device", "domain", "http_transaction_count","num_bytes","server_bytes", "site", "timestamp", "ccl", "traffic_type", "type", "url", "page", "conn_duration", "hostname", "req_cnt", "resp_cnt" as event_id, alert, app_session_id, browser, bypass_traffic, client_bytes, appcategory, app, os, user, device, domain, http_transaction_count,num_bytes,server_bytes, site, timestamp, ccl, traffic_type, type, url, page, conn_duration, hostname, req_cnt, resp_cnt nodrop
```

**Netskope/Application Detail/Top 10 Applications by Total Alerts**
```
_sourceCategory={{Logsdatasource}}  ("anomaly" OR "Compromised Credential" OR "policy" OR "Legal Hold" OR "malsite" OR "Malware" OR "DLP" OR "Security Assessment" OR "watchlist" OR "quarantine" OR "Remediation" OR "uba") "yes" 
| json "_id", "srcip", "dstip", "alert", "alert_name", "alert_type", "appcategory", "category", "app", "site", "os", "user", "device", "acked" as alert_id, src_ip, dest_ip, is_alert, alert_name, alert_type, appcategory, category, app, site, os, user, device, acked nodrop
```

**Netskope/Application Detail/Top 10 Applications by Total Bytes**
```
_sourceCategory={{Logsdatasource}}  "page"
| json "_id", "alert", "app_session_id", "browser", "bypass_traffic", "client_bytes", "appcategory", "app", "os", "user", "device", "domain", "http_transaction_count","num_bytes","server_bytes", "site", "timestamp", "ccl", "traffic_type", "type", "url", "page", "conn_duration", "hostname", "req_cnt", "resp_cnt" as event_id, alert, app_session_id, browser, bypass_traffic, client_bytes, appcategory, app, os, user, device, domain, http_transaction_count,num_bytes,server_bytes, site, timestamp, ccl, traffic_type, type, url, page, conn_duration, hostname, req_cnt, resp_cnt nodrop
```

**Netskope/Application Detail/Top 10 Devices by User Access**
```
_sourceCategory={{Logsdatasource}}  "nspolicy" "no"
| json "_id", "alert", "alert_type","type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop
```

**Netskope/Application Detail/Top 20 Applications by Category**
```
_sourceCategory={{Logsdatasource}}  "page"
| json "_id", "alert", "app_session_id", "browser", "bypass_traffic", "client_bytes", "appcategory", "app", "os", "user", "device", "domain", "http_transaction_count","num_bytes","server_bytes", "site", "timestamp", "ccl", "traffic_type", "type", "url", "page", "conn_duration", "hostname", "req_cnt", "resp_cnt" as event_id, alert, app_session_id, browser, bypass_traffic, client_bytes, appcategory, app, os, user, device, domain, http_transaction_count,num_bytes,server_bytes, site, timestamp, ccl, traffic_type, type, url, page, conn_duration, hostname, req_cnt, resp_cnt nodrop
```

**Netskope/Application Detail/Total Unique Apps**
```
_sourceCategory={{Logsdatasource}}  "page"
| json "_id", "alert", "app_session_id", "browser", "bypass_traffic", "client_bytes", "appcategory", "app", "os", "user", "device", "domain", "http_transaction_count","num_bytes","server_bytes", "site", "timestamp", "ccl", "traffic_type", "type", "url", "page", "conn_duration", "hostname", "req_cnt", "resp_cnt" as event_id, is_alert, app_session_id, browser, bypass_traffic, client_bytes, appcategory, app, os, user, device, domain, http_transaction_count,num_bytes,server_bytes, site, timestamp, ccl, traffic_type, type, url, page, conn_duration, hostname, req_cnt, resp_cnt nodrop
```

**Netskope/Application Detail/User Agent Distribution**
```
_sourceCategory={{Logsdatasource}}  "page"
| json "_id", "alert", "app_session_id", "browser", "bypass_traffic", "client_bytes", "appcategory", "app", "os", "user", "device", "domain", "http_transaction_count","num_bytes","server_bytes", "site", "timestamp", "ccl", "traffic_type", "type", "url", "page", "conn_duration", "hostname", "req_cnt", "resp_cnt", "useragent" as event_id, alert, app_session_id, browser, bypass_traffic, client_bytes, appcategory, app, os, user, device, domain, http_transaction_count,num_bytes,server_bytes, site, timestamp, ccl, traffic_type, type, url, page, conn_duration, hostname, req_cnt, resp_cnt, useragent nodrop
```

**Netskope/Application Overview/Applications Distribution by Category**
```
_sourceCategory={{Logsdatasource}}  "page" 
| json "_id", "alert", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop
```

**Netskope/Application Overview/Applications Distribution by CCL**
```
_sourceCategory={{Logsdatasource}}  "page" 
| json "_id", "alert", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop
```

**Netskope/Application Overview/Applications Distribution by Users**
```
_sourceCategory={{Logsdatasource}}  "no" "nspolicy" 
| json "_id", "alert", "alert_type","type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop
```

**Netskope/Application Overview/Applications Used Over Time**
```
_sourceCategory={{Logsdatasource}}  "nspolicy" "no"
| json "_id", "alert", "alert_type","type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop
```

**Netskope/Application Overview/Top 10 Activity**
```
_sourceCategory={{Logsdatasource}}  "no" "nspolicy" 
| json "_id", "alert", "alert_type","type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop
```

**Netskope/Application Overview/Top 10 Users**
```
_sourceCategory={{Logsdatasource}}  "no" "nspolicy"
| json "_id", "alert", "alert_type","type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop
```

**Netskope/Application Overview/Total  Sessions**
```
_sourceCategory={{Logsdatasource}}  "no" "nspolicy" 
| json "_id", "alert", "alert_type","type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user", "app_session_id" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user, app_session_id  nodrop
```

**Netskope/Application Overview/Total  Unique Applications**
```
_sourceCategory={{Logsdatasource}}  "page" 
| json "_id", "alert", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser" as alert_id, is_alert, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser nodrop
```

**Netskope/Application Overview/Total  Unique Site**
```
_sourceCategory={{Logsdatasource}}  "page"
| json "_id", "alert", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser" as alert_id, is_alert, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser nodrop
```

**Netskope/Application Overview/Total Unique Users**
```
_sourceCategory={{Logsdatasource}}  "no" "nspolicy" 
| json "_id", "alert", "alert_type", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop
```

**Netskope/Application Overview/User Locations by SourceIP**
```
_sourceCategory={{Logsdatasource}}  "no" "nspolicy"
| json "_id", "alert", "alert_type","type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop
```

**Netskope/Application Users/Browser Distribution by User**
```
_sourceCategory={{Logsdatasource}}  "no" "nspolicy"
| json "_id", "alert", "alert_type", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop
```

**Netskope/Application Users/Device Distribution by User**
```
_sourceCategory={{Logsdatasource}}  "no" "nspolicy"
| json "_id", "alert", "alert_type","type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop
```

**Netskope/Application Users/Failed Logins**
```
_sourceCategory={{Logsdatasource}}  "no" "nspolicy" "Login Failed"
| json "_id", "alert", "alert_type","type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user", "traffic_type" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user, traffic_type nodrop
```

**Netskope/Application Users/OS Distribution by User**
```
_sourceCategory={{Logsdatasource}}  
| json "_id", "alert", "alert_type","type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop
```

**Netskope/Application Users/Recent User Activity**
```
_sourceCategory={{Logsdatasource}}  "no" "nspolicy"
| json "_id", "alert", "alert_type", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user", "traffic_type" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user, traffic_type nodrop
```

**Netskope/Application Users/Top 10 Users**
```
_sourceCategory={{Logsdatasource}}  "page"
| json "_id", "alert", "app_session_id", "browser", "bypass_traffic", "client_bytes", "appcategory", "app", "os", "user", "device", "domain", "http_transaction_count","num_bytes","server_bytes", "site", "timestamp", "ccl", "traffic_type", "type", "url", "page", "conn_duration", "hostname", "req_cnt", "resp_cnt" as event_id, alert, app_session_id, browser, bypass_traffic, client_bytes, appcategory, app, os, user, device, domain, http_transaction_count,num_bytes,server_bytes, site, timestamp, ccl, traffic_type, type, url, page, conn_duration, hostname, req_cnt, resp_cnt nodrop
```

**Netskope/Application Users/Top 10 Users by Total Alerts**
```
_sourceCategory={{Logsdatasource}}  "yes" ("DLP" OR "anomaly" OR "Malware" OR "Compromised Credential")
| json "_id", "alert", "alert_type", "user" nodrop
```

**Netskope/Application Users/Total  Activities**
```
_sourceCategory={{Logsdatasource}}  "no" "nspolicy"
| json "_id", "alert", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user", "app_session_id", "alert_type" as event_id, is_alert, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user, app_session_id, alert_type nodrop
```

**Netskope/Application Users/Total  Unique Sessions**
```
_sourceCategory={{Logsdatasource}}  "no" "nspolicy"
| json "_id", "alert", "alert_type","type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user", "app_session_id" as event_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user, app_session_id nodrop
```

**Netskope/Application Users/Total  Unique Users**
```
_sourceCategory={{Logsdatasource}}  "no" "nspolicy"
| json "_id", "alert", "alert_type","type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user", "app_session_id" as event_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user, app_session_id nodrop
```

**Netskope/Application Users/User Activity Distribution**
```
_sourceCategory={{Logsdatasource}}  "no" "nspolicy"
| json "_id", "alert", "alert_type", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user" as alert_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user nodrop
```

**Netskope/Application Users/User Locations by DestinationIP**
```
_sourceCategory={{Logsdatasource}}  "no" "nspolicy"
| json "_id", "alert", "alert_type","type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user", "app_session_id" as event_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user, app_session_id nodrop
```

**Netskope/Application Users/User Locations by SourceIP**
```
_sourceCategory={{Logsdatasource}}  "no" "nspolicy"
| json "_id", "alert", "alert_type", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user", "app_session_id" as event_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user, app_session_id nodrop
```

**Netskope/Application Users/Users by Country**
```
_sourceCategory={{Logsdatasource}}  "no" "nspolicy"
| json "_id", "alert", "alert_type", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user", "app_session_id", "src_country", "traffic_type" as event_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user, app_session_id, src_country, traffic_type nodrop
```

**Netskope/Application Users/Users by Traffic Type**
```
_sourceCategory={{Logsdatasource}}  "no" "nspolicy"
| json "_id", "alert", "alert_type", "type", "srcip", "dstip", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "browser", "object", "object_type", "from_user", "to_user", "app_session_id", "src_country", "traffic_type" as event_id, is_alert, alert_type, type, src_ip, dest_ip, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, browser, object, object_type, from_user, to_user, app_session_id, src_country, traffic_type nodrop
```

**Netskope/Compromised Credentials/Breach Count**
```
_sourceCategory={{Logsdatasource}}  "Compromised Credential"
| json "_id", "alert_name", "alert_type", "user", "acked", "timestamp", "ccl", "breach_id", "breach_date", "breach_media_references", "breach_target_references", "breach_score", "email_source", "matched_username" as alert_id, alert_name, alert_type, user, acked, timestamp, ccl, breach_id, breach_date, breach_media_references, breach_target_references, breach_score, email_source, matched_username nodrop
```

**Netskope/Compromised Credentials/Compromised Credentials by Source of Info**
```
_sourceCategory={{Logsdatasource}}  "Compromised Credential"
| json "_id", "alert_name", "alert_type", "user", "acked", "timestamp", "ccl", "breach_id", "breach_date", "breach_media_references", "breach_target_references", "breach_score", "email_source", "matched_username" as alert_id, alert_name, alert_type, user, acked, timestamp, ccl, breach_id, breach_date, breach_media_references, breach_target_references, breach_score, email_source, matched_username nodrop
```

**Netskope/Compromised Credentials/Compromised Credentials Users Count**
```
_sourceCategory={{Logsdatasource}}  "Compromised Credential"
| json "_id", "alert_name", "alert_type", "user", "acked", "timestamp", "ccl", "breach_id", "breach_date", "breach_media_references", "breach_target_references", "breach_score", "email_source", "matched_username" as alert_id, alert_name, alert_type, user, acked, timestamp, ccl, breach_id, breach_date, breach_media_references, breach_target_references, breach_score, email_source, matched_username nodrop
```

**Netskope/Compromised Credentials/Recent Compromised Credentials**
```
_sourceCategory={{Logsdatasource}}  "Compromised Credential"
| json "_id", "alert_name", "alert_type", "user", "acked", "timestamp", "ccl", "breach_id", "breach_date", "breach_media_references", "breach_target_references", "breach_score", "email_source", "matched_username" as alert_id, alert_name, alert_type, user, acked, timestamp, ccl, breach_id, breach_date, breach_media_references, breach_target_references, breach_score, email_source, matched_username nodrop
```

**Netskope/Compromised Credentials/Top 10 Breaches by breach score**
```
_sourceCategory={{Logsdatasource}}  "Compromised Credential"
| json "_id", "alert_name", "alert_type", "user", "acked", "timestamp", "ccl", "breach_id", "breach_date", "breach_media_references", "breach_target_references", "breach_score", "email_source", "matched_username" as alert_id, alert_name, alert_type, user, acked, timestamp, ccl, breach_id, breach_date, breach_media_references, breach_target_references, breach_score, email_source, matched_username nodrop
```

**Netskope/Data Loss Prevention/DLP incidents by Activity**
```
_sourceCategory={{Logsdatasource}}  DLP
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy nodrop
```

**Netskope/Data Loss Prevention/DLP Incidents by Browser and Browser Version**
```
_sourceCategory={{Logsdatasource}}  DLP
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy", "os_version", "browser", "browser_version" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy, os_version, browser, browser_version nodrop
```

**Netskope/Data Loss Prevention/DLP incidents by Category**
```
_sourceCategory={{Logsdatasource}}  DLP
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy nodrop
```

**Netskope/Data Loss Prevention/DLP incidents by File Type**
```
_sourceCategory={{Logsdatasource}}  DLP
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy nodrop
```

**Netskope/Data Loss Prevention/DLP Incidents by OS and OS Version**
```
_sourceCategory={{Logsdatasource}}  DLP
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy", "os_version" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy, os_version nodrop
```

**Netskope/Data Loss Prevention/DLP Incidents by Policy Over Time**
```
_sourceCategory={{Logsdatasource}}  DLP
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy nodrop
```

**Netskope/Data Loss Prevention/DLP incidents by Severity**
```
_sourceCategory={{Logsdatasource}}  DLP
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy nodrop
```

**Netskope/Data Loss Prevention/DLP Incidents Count**
```
_sourceCategory={{Logsdatasource}}  DLP
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy nodrop
```

**Netskope/Data Loss Prevention/Objects with High and Critical Severity**
```
_sourceCategory={{Logsdatasource}}  DLP
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy", "os_version" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy, os_version nodrop
```

**Netskope/Data Loss Prevention/Recent DLP incidents with High and Critical Severity**
```
_sourceCategory={{Logsdatasource}}  "DLP" "High"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy nodrop
```

**Netskope/Data Loss Prevention/Top 10 DLP Policy Violations**
```
_sourceCategory={{Logsdatasource}}  DLP
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "userip", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, userip, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy nodrop
```

**Netskope/Data Loss Prevention/Top 10 DLP Profile**
```
_sourceCategory={{Logsdatasource}}  DLP
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy nodrop
```

**Netskope/Data Loss Prevention/Top 10 DLP Rules**
```
_sourceCategory={{Logsdatasource}}  DLP
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy nodrop
```

**Netskope/Data Loss Prevention/Top 10 UserIP violating DLP Policy**
```
_sourceCategory={{Logsdatasource}}  DLP
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "userip", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, userip, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy nodrop
```

**Netskope/Data Loss Prevention/Top Users and Hostname by DLP Incidents Count**
```
_sourceCategory={{Logsdatasource}}  DLP
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy", "os_version", "browser", "browser_version", "hostname" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy, os_version, browser, browser_version, hostname nodrop
```

**Netskope/Data Loss Prevention/Users Affected**
```
_sourceCategory={{Logsdatasource}}  DLP
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "dlp_incident_id", "dlp_file","dlp_rule", "dlp_profile", "dlp_rule_severity", "file_type", "object", "url", "object_type", "policy" as alert_id, src_ip, dest_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, dlp_incident_id, dlp_file,dlp_rule, dlp_profile, dlp_rule_severity, file_type, object, url, object_type, policy nodrop
```

**Netskope/Malware/Malware by Activity**
```
_sourceCategory={{Logsdatasource}}  "Malware"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_id", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_id, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type nodrop
```

**Netskope/Malware/Malware by Category**
```
_sourceCategory={{Logsdatasource}}  "Malware"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_id", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_id, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type nodrop
```

**Netskope/Malware/Malware by Severity**
```
_sourceCategory={{Logsdatasource}}  "Malware"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_id", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_id, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type nodrop
```

**Netskope/Malware/Malware Incidents by App**
```
_sourceCategory={{Logsdatasource}}  "Malware"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_id", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_id, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type nodrop
```

**Netskope/Malware/Malware Types affecting Unique UserIP**
```
_sourceCategory={{Logsdatasource}}  "Malware"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_id", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type", "object", "local_md5", "userip" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_id, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type, object, local_md5, userip nodrop
```

**Netskope/Malware/Recent Malwares**
```
_sourceCategory={{Logsdatasource}}  "Malware"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type", "object_type", "object", "object_count" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type, object_type, object, object_count nodrop
```

**Netskope/Malware/Top 10 Affected File Types**
```
_sourceCategory={{Logsdatasource}}  "Malware"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_id", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_id, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type nodrop
```

**Netskope/Malware/Top 10 Malware by Malware Id, Malware Name**
```
_sourceCategory={{Logsdatasource}}  "Malware"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_id", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type", "object", "local_md5" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_id, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type, object, local_md5 nodrop
```

**Netskope/Malware/Top 10 Malware Type**
```
_sourceCategory={{Logsdatasource}}  "Malware"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_id", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type", "object", "local_md5" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_id, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type, object, local_md5 nodrop
```

**Netskope/Malware/Top 10 Source IPs**
```
_sourceCategory={{Logsdatasource}}  "Malware"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_id", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type", "object", "local_md5" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_id, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type, object, local_md5 nodrop
```

**Netskope/Malware/Top 10 Users affected by Malwares**
```
_sourceCategory={{Logsdatasource}}  "Malware"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_id", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type", "object", "local_md5" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_id, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type, object, local_md5 nodrop
```

**Netskope/Malware/Total App Affected**
```
_sourceCategory={{Logsdatasource}}  "Malware"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_id", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_id, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type nodrop
```

**Netskope/Malware/Total Files Infected**
```
_sourceCategory={{Logsdatasource}}  "Malware"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_id", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_id, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type nodrop
```

**Netskope/Malware/Total Malwares Detected**
```
_sourceCategory={{Logsdatasource}}  "Malware"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_id", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_id, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type nodrop
```

**Netskope/Malware/Total Users Affected**
```
_sourceCategory={{Logsdatasource}}  "Malware"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_id", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_id, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type nodrop
```

**Netskope/Malware/UserIP affected by Unique Malware Name**
```
_sourceCategory={{Logsdatasource}}  "Malware"
| json "_id", "srcip", "dstip", "alert_name", "alert_type", "appcategory", "app", "os", "user", "device", "acked", "site", "timestamp", "ccl", "activity", "action", "browser", "file_id", "file_type", "instance_name", "malware_id", "malware_name", "malware_severity", "malware_type", "object", "local_md5", "userip" as alert_id, src_ip, dst_ip, alert_name, alert_type, appcategory, app, os, user, device, acked, site, timestamp, ccl, activity, action, browser, file_id, file_type, instance_name, malware_id, malware_name, malware_severity, malware_type, object, local_md5, userip nodrop
```


