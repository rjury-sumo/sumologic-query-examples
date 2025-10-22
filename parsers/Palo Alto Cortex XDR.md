# Parsers For Palo Alto Cortex XDR

**Palo Alto Cortex XDR/Alerts Overview/Alerts by IP**
```
_sourceCategory={{Logsdatasource}}   "alert_id" "is_whitelisted"
| json "alert_id","name","severity","source","host_ip","alert_type","action_pretty","agent_os_type","category","detection_timestamp","is_whitelisted","resolution_status" as alert_id,name,severity,source,host_ip,alert_type,action_pretty,agent_os_type,category,detection_timestamp,is_whitelisted,resolution_status nodrop

| action_pretty as action

| where severity matches "{{severity}}"
| where category matches "{{category}}"
| where source matches "{{source}}"
| where action matches "{{action}}"
| where agent_os_type matches "{{agent_os}}"
| where alert_type matches "{{alert_type}}"
| where is_whitelisted matches "{{is_whitelisted}}"

| extract field=host_ip "\"?(?<ip>[\w\s\-&.,]*)\"?[,\n\]]" multi
```

**Palo Alto Cortex XDR/Alerts Overview/Alerts by Severity Over Time**
```
_sourceCategory={{Logsdatasource}}   "alert_id" "is_whitelisted"
| json "alert_id","name","severity","source","host_ip","alert_type","action_pretty","agent_os_type","category","detection_timestamp","is_whitelisted","resolution_status" as alert_id,name,severity,source,host_ip,alert_type,action_pretty,agent_os_type,category,detection_timestamp,is_whitelisted,resolution_status nodrop
```

**Palo Alto Cortex XDR/Alerts Overview/Alerts from Risky Countries**
```
_sourceCategory={{Logsdatasource}}   "alert_id" "is_whitelisted"
| json "alert_id","name","severity","source","host_ip","alert_type","action_pretty","agent_os_type","category","detection_timestamp","is_whitelisted","resolution_status" as alert_id,name,severity,source,host_ip,alert_type,action_pretty,agent_os_type,category,detection_timestamp,is_whitelisted,resolution_status nodrop

| action_pretty as action

| where severity matches "{{severity}}"
| where category matches "{{category}}"
| where source matches "{{source}}"
| where action matches "{{action}}"
| where agent_os_type matches "{{agent_os}}"
| where alert_type matches "{{alert_type}}"
| where is_whitelisted matches "{{is_whitelisted}}"

| extract field=host_ip "\"?(?<ip>[\w\s\-&.,]*)\"?[,\n\]]" multi
| where isValidIPv4(ip) or isValidIPv6(ip)
| where !isNull(ip)
| if(isValidIPv4(ip), if(!isPrivateIP(ip),true,false),true) as is_public
| where is_public
| count_distinct(alert_id) as frequency by ip
| lookup latitude, longitude, country_code from geo://location on ip = ip
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code
```

**Palo Alto Cortex XDR/Alerts Overview/Alerts Triggered**
```
_sourceCategory={{Logsdatasource}}   "alert_id" "is_whitelisted"
| json "alert_id","name","severity","source","host_ip","alert_type","action_pretty","agent_os_type","category","detection_timestamp","is_whitelisted","resolution_status" as alert_id,name,severity,source,host_ip,alert_type,action_pretty,agent_os_type,category,detection_timestamp,is_whitelisted,resolution_status nodrop
```

**Palo Alto Cortex XDR/Alerts Overview/Geo Location of Alerts**
```
_sourceCategory={{Logsdatasource}}   "alert_id" "is_whitelisted"
| json "alert_id","name","severity","source","host_ip","alert_type","action_pretty","agent_os_type","category","detection_timestamp","is_whitelisted","resolution_status" as alert_id,name,severity,source,host_ip,alert_type,action_pretty,agent_os_type,category,detection_timestamp,is_whitelisted,resolution_status nodrop

| action_pretty as action

| where severity matches "{{severity}}"
| where category matches "{{category}}"
| where source matches "{{source}}"
| where action matches "{{action}}"
| where agent_os_type matches "{{agent_os}}"
| where alert_type matches "{{alert_type}}"
| where is_whitelisted matches "{{is_whitelisted}}"

| extract field=host_ip "\"?(?<ip>[\w\s\-&.,]*)\"?[,\n\]]" multi
```

**Palo Alto Cortex XDR/Alerts Overview/Recent Alerts**
```
_sourceCategory={{Logsdatasource}}   "alert_id" "is_whitelisted"
| json "alert_id","name","severity","source","host_ip","alert_type","action_pretty","agent_os_type","category","detection_timestamp","is_whitelisted","resolution_status" as alert_id,name,severity,source,host_ip,alert_type,action_pretty,agent_os_type,category,detection_timestamp,is_whitelisted,resolution_status nodrop
```

**Palo Alto Cortex XDR/Alerts Overview/Top 10 Actions on Alerts**
```
_sourceCategory={{Logsdatasource}}   "alert_id" "is_whitelisted"
| json "alert_id","name","severity","source","host_ip","alert_type","action_pretty","agent_os_type","category","detection_timestamp","is_whitelisted","resolution_status" as alert_id,name,severity,source,host_ip,alert_type,action_pretty,agent_os_type,category,detection_timestamp,is_whitelisted,resolution_status nodrop
```

**Palo Alto Cortex XDR/Alerts Overview/Top 10 Alerts Triggered**
```
_sourceCategory={{Logsdatasource}}   "alert_id" "is_whitelisted"
| json "alert_id","name","severity","source","host_ip","alert_type","action_pretty","agent_os_type","category","detection_timestamp","is_whitelisted","resolution_status" as alert_id,name,severity,source,host_ip,alert_type,action_pretty,agent_os_type,category,detection_timestamp,is_whitelisted,resolution_status nodrop
```

**Palo Alto Cortex XDR/Alerts Overview/Top 10 Categories**
```
_sourceCategory={{Logsdatasource}}   "alert_id" "is_whitelisted"
| json "alert_id","name","severity","source","host_ip","alert_type","action_pretty","agent_os_type","category","detection_timestamp","is_whitelisted","resolution_status" as alert_id,name,severity,source,host_ip,alert_type,action_pretty,agent_os_type,category,detection_timestamp,is_whitelisted,resolution_status nodrop
```

**Palo Alto Cortex XDR/Alerts Overview/Top 10 Sources**
```
_sourceCategory={{Logsdatasource}}   "alert_id" "is_whitelisted"
| json "alert_id","name","severity","source","host_ip","alert_type","action_pretty","agent_os_type","category","detection_timestamp","is_whitelisted","resolution_status" as alert_id,name,severity,source,host_ip,alert_type,action_pretty,agent_os_type,category,detection_timestamp,is_whitelisted,resolution_status nodrop
```

**Palo Alto Cortex XDR/Alerts Overview/White Listed Alerts**
```
_sourceCategory={{Logsdatasource}}   "alert_id" "is_whitelisted"
| json "alert_id","name","severity","source","host_ip","alert_type","action_pretty","agent_os_type","category","detection_timestamp","is_whitelisted","resolution_status" as alert_id,name,severity,source,host_ip,alert_type,action_pretty,agent_os_type,category,detection_timestamp,is_whitelisted,resolution_status nodrop
```

**Palo Alto Cortex XDR/Incidents Overview/Disabled Incidents**
```
_sourceCategory={{Logsdatasource}}   "incident_id" "incident_name"
| json "incident_id","incident_name","creation_time","modification_time","status","severity","assigned_user_mail","alert_count","high_severity_alert_count","critical_severity_alert_count","user_count","xdr_url","wildfire_hits","alerts_grouping_status","mitre_tactics_ids_and_names","mitre_techniques_ids_and_names" as incident_id,incident_name,creation_time,modification_time,status,severity,assigned_user_mail,alert_count,high_severity_alert_count,critical_severity_alert_count,user_count,xdr_url,wildfire_hits,alerts_grouping_status,mitre_tactics_ids_and_names,mitre_techniques_ids_and_names nodrop
```

**Palo Alto Cortex XDR/Incidents Overview/Incidents by Severity Over Time**
```
_sourceCategory={{Logsdatasource}}   "incident_id" "incident_name"
| json "incident_id","incident_name","creation_time","modification_time","status","severity","assigned_user_mail","alert_count","high_severity_alert_count","critical_severity_alert_count","user_count","xdr_url","wildfire_hits","alerts_grouping_status","mitre_tactics_ids_and_names","mitre_techniques_ids_and_names" as incident_id,incident_name,creation_time,modification_time,status,severity,assigned_user_mail,alert_count,high_severity_alert_count,critical_severity_alert_count,user_count,xdr_url,wildfire_hits,alerts_grouping_status,mitre_tactics_ids_and_names,mitre_techniques_ids_and_names nodrop
```

**Palo Alto Cortex XDR/Incidents Overview/Incidents by Status**
```
_sourceCategory={{Logsdatasource}}   "incident_id" "incident_name"
| json "incident_id","incident_name","creation_time","modification_time","status","severity","assigned_user_mail","alert_count","high_severity_alert_count","critical_severity_alert_count","user_count","xdr_url","wildfire_hits","alerts_grouping_status","mitre_tactics_ids_and_names","mitre_techniques_ids_and_names" as incident_id,incident_name,creation_time,modification_time,status,severity,assigned_user_mail,alert_count,high_severity_alert_count,critical_severity_alert_count,user_count,xdr_url,wildfire_hits,alerts_grouping_status,mitre_tactics_ids_and_names,mitre_techniques_ids_and_names nodrop
```

**Palo Alto Cortex XDR/Incidents Overview/Incidents Created**
```
_sourceCategory={{Logsdatasource}}   "incident_id" "incident_name"
| json "incident_id","incident_name","creation_time","modification_time","status","severity","assigned_user_mail","alert_count","high_severity_alert_count","critical_severity_alert_count","user_count","xdr_url","wildfire_hits","alerts_grouping_status","mitre_tactics_ids_and_names","mitre_techniques_ids_and_names" as incident_id,incident_name,creation_time,modification_time,status,severity,assigned_user_mail,alert_count,high_severity_alert_count,critical_severity_alert_count,user_count,xdr_url,wildfire_hits,alerts_grouping_status,mitre_tactics_ids_and_names,mitre_techniques_ids_and_names nodrop
```

**Palo Alto Cortex XDR/Incidents Overview/Recent Incidents**
```
_sourceCategory={{Logsdatasource}}   "incident_id" "incident_name"
| json "incident_id","incident_name","creation_time","modification_time","status","severity","assigned_user_mail","alert_count","high_severity_alert_count","critical_severity_alert_count","user_count","xdr_url","wildfire_hits","alerts_grouping_status","mitre_tactics_ids_and_names","mitre_techniques_ids_and_names" as incident_id,incident_name,creation_time,modification_time,status,severity,assigned_user_mail,alert_count,high_severity_alert_count,critical_severity_alert_count,user_count,xdr_url,wildfire_hits,alerts_grouping_status,mitre_tactics_ids_and_names,mitre_techniques_ids_and_names nodrop
```

**Palo Alto Cortex XDR/Incidents Overview/Top 10 Assigned Users**
```
_sourceCategory={{Logsdatasource}}   "incident_id" "incident_name"
| json "incident_id","incident_name","creation_time","modification_time","status","severity","assigned_user_mail","alert_count","high_severity_alert_count","critical_severity_alert_count","user_count","xdr_url","wildfire_hits","alerts_grouping_status","mitre_tactics_ids_and_names","mitre_techniques_ids_and_names" as incident_id,incident_name,creation_time,modification_time,status,severity,assigned_user_mail,alert_count,high_severity_alert_count,critical_severity_alert_count,user_count,xdr_url,wildfire_hits,alerts_grouping_status,mitre_tactics_ids_and_names,mitre_techniques_ids_and_names nodrop
```

**Palo Alto Cortex XDR/Incidents Overview/Top 10 MITRE Tactics Used**
```
_sourceCategory={{Logsdatasource}}   "incident_id" "incident_name"
| json "incident_id","incident_name","creation_time","modification_time","status","severity","assigned_user_mail","alert_count","high_severity_alert_count","critical_severity_alert_count","user_count","xdr_url","wildfire_hits","alerts_grouping_status","mitre_tactics_ids_and_names","mitre_techniques_ids_and_names" as incident_id,incident_name,creation_time,modification_time,status,severity,assigned_user_mail,alert_count,high_severity_alert_count,critical_severity_alert_count,user_count,xdr_url,wildfire_hits,alerts_grouping_status,mitre_tactics_ids_and_names,mitre_techniques_ids_and_names nodrop
| where alerts_grouping_status matches"{{alerts_grouping_status}}"
| where severity matches "{{severity}}"
| where status matches "{{status}}"
| where !isNull(mitre_tactics_ids_and_names)

| extract field=mitre_tactics_ids_and_names "\".*?\s-\s(?<mitre_tactic>.*?)\"" multi
```

**Palo Alto Cortex XDR/Incidents Overview/Top 10 MITRE Techniques Used**
```
_sourceCategory={{Logsdatasource}}   "incident_id" "incident_name"
| json "incident_id","incident_name","creation_time","modification_time","status","severity","assigned_user_mail","alert_count","high_severity_alert_count","critical_severity_alert_count","user_count","xdr_url","wildfire_hits","alerts_grouping_status","mitre_tactics_ids_and_names","mitre_techniques_ids_and_names" as incident_id,incident_name,creation_time,modification_time,status,severity,assigned_user_mail,alert_count,high_severity_alert_count,critical_severity_alert_count,user_count,xdr_url,wildfire_hits,alerts_grouping_status,mitre_tactics_ids_and_names,mitre_techniques_ids_and_names nodrop
| where alerts_grouping_status matches"{{alerts_grouping_status}}"
| where severity matches "{{severity}}"
| where status matches "{{status}}"
| where !isNull(mitre_techniques_ids_and_names)

| extract field=mitre_techniques_ids_and_names "\".*?\s-\s(?<mitre_technique>.*?)\"" multi
```


