# Parsers For Carbon Black Cloud

**Carbon Black Cloud/Endpoint Standard - Alert Summary/Alert Summary**
```
_sourceCategory={{AlertDataSource}}
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop //s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") and !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```

**Carbon Black Cloud/Endpoint Standard - Alert Summary/NGAV Alerts with Rich Process Metadata**
```
(_sourceCategory={{EventDataSource}}  or _sourceCategory={{AlertDataSource}} ) (CB_ANALYTICS or NGAV)
| join 

(json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop //s3

| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - Alerts/Alerts**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
```

**Carbon Black Cloud/Endpoint Standard - Alerts/Alerts  by Severity**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
```

**Carbon Black Cloud/Endpoint Standard - Alerts/Alerts - One Day Time Comparison**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "severity","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "type", "status", "sensor_action", "process_name", "reason" as alert_id, severity, device_name, user,target_priority, device_group, incident_id, device_os, type, status, sensor_action, process_name, reason nodrop //s3
```

**Carbon Black Cloud/Endpoint Standard - Alerts/Alerts by Device OS**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
```

**Carbon Black Cloud/Endpoint Standard - Alerts/Alerts by Process Name**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
//s3
| where type ="CB_ANALYTICS"
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```

**Carbon Black Cloud/Endpoint Standard - Alerts/Alerts Over Time**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
```

**Carbon Black Cloud/Endpoint Standard - Device/Alerts by Device**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
//s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - Device/Alerts by Device and Severity**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
```

**Carbon Black Cloud/Endpoint Standard - Device/Alerts by Device Over Time**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
//s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - Device/Alerts by OS**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
```

**Carbon Black Cloud/Endpoint Standard - Device/Device and Process**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
//s3
| where type ="CB_ANALYTICS"
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - Device/Devices**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
//s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - Overview/Alert Console**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop  
//s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - Overview/Alerts**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - Overview/Devices**
```
_sourceCategory={{AlertDataSource}}
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop  //s3 
//s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - Overview/IOCs**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
// s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - Overview/Threat Actors**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
//s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| process_name as threat_actor
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - Overview/Top 10 Alert Reasons**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
//s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - Overview/Top 10 Devices**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
//s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - Overview/Top 10 Indicators**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
//s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - Overview/Top 10 Processes**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop  
//s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```

**Carbon Black Cloud/Endpoint Standard - Overview/Top 10 Threat Actors**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
//s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - Overview/Top 10 Users**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop  
//s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - Overview/Users**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop  //s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - TTPs/Indicators**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
// s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - TTPs/Indicators by Device**
```
_sourceCategory={{AlertDataSource}}
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
//s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - TTPs/Indicators by Process Name**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
//s3
| where type ="CB_ANALYTICS"
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - TTPs/Indicators by Severity**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop  
//s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - TTPs/Indicators Over Time**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
//s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - TTPs/Threat Actors**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
//s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - TTPs/Threat Summary**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
//s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Endpoint Standard - TTPs/Unique Indicators**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
//s3
| where type ="CB_ANALYTICS"
| where !(ttps matches "[]") AND !isNull(ttps)
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Enterprise EDR - Alert Summary/Alert Summary**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
| where type ="WATCHLIST"
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```

**Carbon Black Cloud/Enterprise EDR - Alert Summary/Watchlist Alerts with Rich Process Metadata**
```
(_sourceCategory={{EventDataSource}}  or _sourceCategory={{AlertDataSource}} )(WATCHLIST or EDR) 
| join 

(json field=_raw  "report_name", "process_guid", "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "process_name", "reason", "backend_timestamp" as report_name, process_guid, alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, process_name, reason, backend_timestamp nodrop //s3
| where type ="WATCHLIST"
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```

**Carbon Black Cloud/Enterprise EDR - Alerts/Alerts**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - Alerts/Alerts  by Severity**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - Alerts/Alerts - One Day Time Comparison**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - Alerts/Alerts by Device OS**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - Alerts/Alerts by Process Name**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
| where type ="WATCHLIST"
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```

**Carbon Black Cloud/Enterprise EDR - Alerts/Alerts Over Time**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - Device/Alerts by Device**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - Device/Alerts by Device and Severity**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - Device/Alerts by Device Over Time**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - Device/Alerts by OS**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - Device/Device and Process**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp nodrop //s3
| where type ="WATCHLIST"
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```

**Carbon Black Cloud/Enterprise EDR - Device/Devices**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - IOCs/Indicators**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id","ioc_hit","report_name","report_description" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id,ioc_hit,report_name,report_description nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - IOCs/Indicators by Device**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id","ioc_hit","report_name","report_description" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id,ioc_hit,report_name,report_description nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - IOCs/Indicators by Process Name**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id","ioc_hit","report_name","report_description" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id,ioc_hit,report_name,report_description nodrop //s3
| where type ="WATCHLIST"
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```

**Carbon Black Cloud/Enterprise EDR - IOCs/Indicators by Severity**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id","ioc_hit","report_name","report_description" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id,ioc_hit,report_name,report_description nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - IOCs/Indicators Over Time**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id","ioc_hit","report_name","report_description" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id,ioc_hit,report_name,report_description nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - IOCs/Threat Actors**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id","ioc_hit","report_name","report_description" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id,ioc_hit,report_name,report_description nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - IOCs/Threat Summary**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id","ioc_hit","report_name","report_description" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id,ioc_hit,report_name,report_description nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - IOCs/Unique Indicators**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id","ioc_hit","report_name","report_description" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id,ioc_hit,report_name,report_description nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - Overview/Alert Console**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id","ioc_hit","report_name","report_description" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id,ioc_hit,report_name,report_description nodrop //s3
| where type ="WATCHLIST"
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
| parse regex field=alert_url "(?<domain>^[^?]+)"
```

**Carbon Black Cloud/Enterprise EDR - Overview/Alerts**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - Overview/Devices**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - Overview/IOCs**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - Overview/Threat Actors**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
| where type ="WATCHLIST"
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```

**Carbon Black Cloud/Enterprise EDR - Overview/Top 10 Alert Reasons**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - Overview/Top 10 Devices**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - Overview/Top 10 Indicators**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - Overview/Top 10 Processes**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
| where type ="WATCHLIST"
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```

**Carbon Black Cloud/Enterprise EDR - Overview/Top 10 Threat Actors**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - Overview/Top 10 Users**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
```

**Carbon Black Cloud/Enterprise EDR - Overview/Users**
```
_sourceCategory={{AlertDataSource}} WATCHLIST
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
```

**Carbon Black Cloud/Overview/Alerts by Sensor Action**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop //s3
```

**Carbon Black Cloud/Overview/Alerts Over Time**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop //s3
```

**Carbon Black Cloud/Overview/CB Analytics Alerts**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop //s3
```

**Carbon Black Cloud/Overview/Indicators**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop //s3
| where !isNull(ttps) and !(ttps matches "[]")
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```

**Carbon Black Cloud/Overview/Threat Actors**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop //s3
| where !isNull(ttps) and  !(ttps matches "[]")
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```

**Carbon Black Cloud/Overview/Threats by Severity**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop //s3
```

**Carbon Black Cloud/Overview/Top 10 Alert Reasons**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop //s3
```

**Carbon Black Cloud/Overview/Top 10 Device Names**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop //s3
```

**Carbon Black Cloud/Overview/Top 10 Process Names**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop //s3
| where !isNull(process_name)
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```

**Carbon Black Cloud/Overview/Watchlist Alerts**
```
_sourceCategory={{AlertDataSource}}  
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop //s3
```


