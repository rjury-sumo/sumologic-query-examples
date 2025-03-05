# Parsers For Palo Alto Cortex XDR

## Parser:
```
| json "alert_id","name","severity","source","host_ip","alert_type","action_pretty","agent_os_type","category","detection_timestamp","is_whitelisted","resolution_status" as alert_id,name,severity,source,host_ip,alert_type,action_pretty,agent_os_type,category,detection_timestamp,is_whitelisted,resolution_status nodrop
 
```
### Use Cases:
Alerts by IP, Alerts by Severity Over Time, Alerts from Risky Countries, Alerts Triggered, Geo Location of Alerts, Recent Alerts, Top 10 Actions on Alerts, Top 10 Alerts Triggered, Top 10 Categories, Top 10 Sources, White Listed Alerts



## Parser:
```
| json "alert_id","name","severity","source","host_ip","alert_type","action_pretty","agent_os_type","category","detection_timestamp","is_whitelisted","resolution_status" as alert_id,name,severity,source,host_ip,alert_type,action_pretty,agent_os_type,category,detection_timestamp,is_whitelisted,resolution_status nodrop
| extract field=host_ip "\"?(?<ip>[\w\s\-&.,]*)\"?[,\n\]]" multi
 
```
### Use Cases:
Alerts by IP, Alerts from Risky Countries, Geo Location of Alerts, Recent Alerts, White Listed Alerts



## Parser:
```
| json "incident_id","incident_name","creation_time","modification_time","status","severity","assigned_user_mail","alert_count","high_severity_alert_count","critical_severity_alert_count","user_count","xdr_url","wildfire_hits","alerts_grouping_status","mitre_tactics_ids_and_names","mitre_techniques_ids_and_names" as incident_id,incident_name,creation_time,modification_time,status,severity,assigned_user_mail,alert_count,high_severity_alert_count,critical_severity_alert_count,user_count,xdr_url,wildfire_hits,alerts_grouping_status,mitre_tactics_ids_and_names,mitre_techniques_ids_and_names nodrop
 
```
### Use Cases:
Alerts by IP, Alerts by Severity Over Time, Alerts from Risky Countries, Alerts Triggered, Disabled Incidents, Geo Location of Alerts, Incidents by Severity Over Time, Incidents by Status, Incidents Created, Recent Alerts, Recent Incidents, Top 10 Actions on Alerts, Top 10 Alerts Triggered, Top 10 Assigned Users, Top 10 Categories, Top 10 MITRE Tactics Used, Top 10 MITRE Techniques Used, Top 10 Sources, White Listed Alerts



## Parser:
```
| json "incident_id","incident_name","creation_time","modification_time","status","severity","assigned_user_mail","alert_count","high_severity_alert_count","critical_severity_alert_count","user_count","xdr_url","wildfire_hits","alerts_grouping_status","mitre_tactics_ids_and_names","mitre_techniques_ids_and_names" as incident_id,incident_name,creation_time,modification_time,status,severity,assigned_user_mail,alert_count,high_severity_alert_count,critical_severity_alert_count,user_count,xdr_url,wildfire_hits,alerts_grouping_status,mitre_tactics_ids_and_names,mitre_techniques_ids_and_names nodrop
| extract field=mitre_tactics_ids_and_names "\".*?\s-\s(?<mitre_tactic>.*?)\"" multi
 
```
### Use Cases:
Alerts by IP, Alerts by Severity Over Time, Alerts from Risky Countries, Alerts Triggered, Geo Location of Alerts, Incidents by Status, Recent Alerts, Recent Incidents, Top 10 Actions on Alerts, Top 10 Alerts Triggered, Top 10 Categories, Top 10 MITRE Tactics Used, Top 10 Sources, White Listed Alerts



## Parser:
```
| json "incident_id","incident_name","creation_time","modification_time","status","severity","assigned_user_mail","alert_count","high_severity_alert_count","critical_severity_alert_count","user_count","xdr_url","wildfire_hits","alerts_grouping_status","mitre_tactics_ids_and_names","mitre_techniques_ids_and_names" as incident_id,incident_name,creation_time,modification_time,status,severity,assigned_user_mail,alert_count,high_severity_alert_count,critical_severity_alert_count,user_count,xdr_url,wildfire_hits,alerts_grouping_status,mitre_tactics_ids_and_names,mitre_techniques_ids_and_names nodrop
| extract field=mitre_techniques_ids_and_names "\".*?\s-\s(?<mitre_technique>.*?)\"" multi
 
```
### Use Cases:
Alerts by IP, Alerts by Severity Over Time, Alerts from Risky Countries, Alerts Triggered, Geo Location of Alerts, Incidents by Status, Recent Alerts, Recent Incidents, Top 10 Actions on Alerts, Top 10 Alerts Triggered, Top 10 Categories, Top 10 MITRE Tactics Used, Top 10 MITRE Techniques Used, Top 10 Sources, White Listed Alerts


