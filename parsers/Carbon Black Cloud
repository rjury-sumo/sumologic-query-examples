# Parsers For Carbon Black Cloud

## Parser:
```
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp nodrop //s3
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp nodrop //s3
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id nodrop //s3
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id","ioc_hit","report_name","report_description" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id,ioc_hit,report_name,report_description nodrop //s3
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id","ioc_hit","report_name","report_description" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id,ioc_hit,report_name,report_description nodrop //s3
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ioc_id","ioc_hit","report_name","report_description" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ioc_id,ioc_hit,report_name,report_description nodrop //s3
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
| parse regex field=alert_url "(?<domain>^[^?]+)"
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop 
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop  
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop  
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop  //s3
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop  //s3 
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop //s3
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop //s3
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop //s3
| extract field=ttps "\"(?<indicators>.*?)\"(,|\])" multi nodrop
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "alert_url" , "severity", "device_name","device_username", "device_target_value", "threat_id", "device_os", "type", "sensor_action", "process_name", "reason", "backend_timestamp","ttps" as alert_id, alert_url ,severity ,device_name, user,target_priority, incident_id, device_os, type, sensor_action, process_name, reason, backend_timestamp,ttps nodrop //s3
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| json field=_raw "id", "severity","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "type", "status", "sensor_action", "process_name", "reason" as alert_id, severity, device_name, user,target_priority, device_group, incident_id, device_os, type, status, sensor_action, process_name, reason nodrop //s3
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata



## Parser:
```
| parse regex field=process_name "(?<process_name>[^\\//]*)$"
```
### Use Cases:
Alert Console, Alert Summary, Alerts, Alerts  by Severity, Alerts - One Day Time Comparison, Alerts by Device, Alerts by Device and Severity, Alerts by Device OS, Alerts by Device Over Time, Alerts by OS, Alerts by Process Name, Alerts by Sensor Action, Alerts Over Time, CB Analytics Alerts, Device and Process, Devices, Indicators, Indicators by Device, Indicators by Process Name, Indicators by Severity, Indicators Over Time, IOCs, NGAV Alerts with Rich Process Metadata, Threat Actors, Threat Summary, Threats by Severity, Top 10 Alert Reasons, Top 10 Device Names, Top 10 Devices, Top 10 Indicators, Top 10 Process Names, Top 10 Processes, Top 10 Threat Actors, Top 10 Users, Unique Indicators, Users, Watchlist Alerts, Watchlist Alerts with Rich Process Metadata


