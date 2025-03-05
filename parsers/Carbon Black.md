# Parsers For Carbon Black

## Parser:
```
| json "threat_indicators[*].ttps" as threatInfo_indicators1 nodrop
| json "threatInfo.indicators[*].indicatorName" as threatInfo_indicators2 nodrop
| extract field=threatInfo_indicators1 "\"(?<Indicators1>.*?)\"(,|\])" multi nodrop
| extract field=threatInfo_indicators2 "\"(?<Indicators2>.*?)\"(,|\])" multi nodrop
| json "type" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Device, Alerts by Device OS, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts by Severity, Alerts by Severity and Device, Alerts by Target Priority, Alerts Over Time, Alerts over Time, Alerts Over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Devices, Devices by Group, Devices by OS, Devices by Target-Priority, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Host Watchlist Hits, Incidents by Device, Indicators, Indicators and Applications, Indicators by Severity, Most Recent Alerts, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Process Query Watchlist Hits, Process Watchlist Hits, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Outbound Alerts, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Indicators, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Watchlist Comparison over Time, Watchlist Hits by Name over Time, Watchlist Hits by Type over Time, Watchlists



## Parser:
```
| json "threat_indicators[*].ttps" as threatInfo_indicators1 nodrop
| json "threatInfo.indicators[*].indicatorName" as threatInfo_indicators2 nodrop
| extract field=threatInfo_indicators1 "\"(?<Indicators1>.*?)\"(,|\])" multi nodrop
| extract field=threatInfo_indicators2 "\"(?<Indicators2>.*?)\"(,|\])" multi nodrop
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
| json "type" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Device, Alerts by Device OS, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts by Severity, Alerts by Severity and Device, Alerts by Target Priority, Alerts Over Time, Alerts over Time, Alerts Over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Devices, Devices by Group, Devices by OS, Devices by Target-Priority, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Host Watchlist Hits, Incidents by Device, Indicators, Indicators and Applications, Indicators by Severity, Most Recent Alerts, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Process Query Watchlist Hits, Process Watchlist Hits, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Outbound Alerts, Top Indicators, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Indicators, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Watchlist Comparison over Time, Watchlist Hits by Name over Time, Watchlist Hits by Type over Time, Watchlists



## Parser:
```
| json "threat_indicators[*].ttps" as threatInfo_indicators1 nodrop
| json "threatInfo.indicators[*].indicatorName" as threatInfo_indicators2 nodrop
| extract field=threatInfo_indicators1 "\"(?<Indicators1>.*?)\"(,|\])" multi nodrop
| extract field=threatInfo_indicators2 "\"(?<Indicators2>.*?)\"(,|\])" multi nodrop
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os","severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score, reason1 nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
| json "type" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Device, Alerts by Device OS, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts by Severity, Alerts by Severity and Device, Alerts by Target Priority, Alerts Over Time, Alerts over Time, Alerts Over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Devices, Devices by Group, Devices by OS, Devices by Target-Priority, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Host Watchlist Hits, Incidents by Device, Indicators, Indicators and Applications, Indicators by Severity, Indicators of Compromise, Most Recent Alerts, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Process Query Watchlist Hits, Process Watchlist Hits, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Outbound Alerts, Top Indicators, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Indicators, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Watchlist Comparison over Time, Watchlist Hits by Name over Time, Watchlist Hits by Type over Time, Watchlists



## Parser:
```
| json "threat_indicators[*].ttps" as threatInfo_indicators1 nodrop
| json field=_raw "threatInfo.indicators[*].indicatorName" as threatInfo_indicators2 nodrop
| extract field=threatInfo_indicators1 "\"(?<Indicators1>.*?)\"(,|\])" multi nodrop
| extract field=threatInfo_indicators2 "\"(?<Indicators2>.*?)\"(,|\])" multi nodrop
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
| json "type" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Device, Alerts by Device OS, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts by Severity, Alerts by Severity and Device, Alerts by Target Priority, Alerts Over Time, Alerts over Time, Alerts Over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Devices, Devices by Group, Devices by OS, Devices by Target-Priority, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Host Watchlist Hits, Incidents by Device, Indicators and Applications, Indicators by Severity, Most Recent Alerts, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Process Query Watchlist Hits, Process Watchlist Hits, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Outbound Alerts, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Indicators, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Watchlist Comparison over Time, Watchlist Hits by Name over Time, Watchlist Hits by Type over Time, Watchlists



## Parser:
```
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Device, Alerts by Device OS, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts by Severity, Alerts by Severity and Device, Alerts by Target Priority, Alerts over Time, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Devices, Devices by Group, Devices by OS, Devices by Target-Priority, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Host Watchlist Hits, Incidents by Device, Indicators, Indicators and Applications, Indicators by Severity, Indicators of Compromise, Most Recent Alerts, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Process Query Watchlist Hits, Process Watchlist Hits, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, Recent Policy Actions, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Applications, Top Devices, Top Devices Affected, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Malware Attacks, Top Hosts with Outbound Alerts, Top Indicators, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top Reasons, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Indicators, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Users, Watchlist Comparison over Time, Watchlist Hits by Name over Time, Watchlist Hits by Type over Time, Watchlists



## Parser:
```
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1  nodrop //Defense Source and syslog-forwarder
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Device, Alerts by Device OS, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts by Severity, Alerts by Severity and Device, Alerts by Target Priority, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Devices, Devices by Group, Devices by OS, Devices by Target-Priority, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Host Watchlist Hits, Incidents by Device, Indicators, Indicators and Applications, Indicators by Severity, Indicators of Compromise, Most Recent Alerts, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Process Query Watchlist Hits, Process Watchlist Hits, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, Recent Policy Actions, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Applications, Top Devices, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Outbound Alerts, Top Indicators, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top Reasons, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Indicators, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Users, Watchlist Comparison over Time, Watchlist Hits by Name over Time, Watchlist Hits by Type over Time, Watchlists



## Parser:
```
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Device, Alerts by Device OS, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts by Severity, Alerts by Severity and Device, Alerts by Target Priority, Alerts Over Time, Alerts over Time, Alerts Over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Devices, Devices by Group, Devices by OS, Devices by Target-Priority, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Host Watchlist Hits, Incidents by Device, Indicators, Indicators and Applications, Indicators by Severity, Indicators of Compromise, Most Recent Alerts, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Process Query Watchlist Hits, Process Watchlist Hits, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, Recent Policy Actions, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Applications, Top Devices, Top Devices - Multiple Critical Threats, Top Devices Affected, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Malware Attacks, Top Hosts with Outbound Alerts, Top Indicators, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top Reasons, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Indicators, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Users, Watchlist Comparison over Time, Watchlist Hits by Name over Time, Watchlist Hits by Type over Time, Watchlists



## Parser:
```
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
| parse field=url1 "*/investigate" as server nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Device, Alerts by Device OS, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts by Severity, Alerts by Severity and Device, Alerts by Target Priority, Alerts Over Time, Alerts over Time, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Devices, Devices by Group, Devices by OS, Devices by Target-Priority, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Host Watchlist Hits, Incidents by Device, Indicators, Indicators and Applications, Indicators by Severity, Indicators of Compromise, Most Recent Alerts, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Process Query Watchlist Hits, Process Watchlist Hits, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, Recent Policy Actions, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Applications, Top Devices, Top Devices Affected, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Malware Attacks, Top Hosts with Outbound Alerts, Top Indicators, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top Reasons, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Indicators, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Users, Watchlist Comparison over Time, Watchlist Hits by Name over Time, Watchlist Hits by Type over Time, Watchlists



## Parser:
```
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_indicators[*].process_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "threatInfo.indicators[*].applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| json "threat_indicators[*].ttps" as threatInfo_indicators1 nodrop
| json field=_raw "threatInfo.indicators[*].indicatorName" as threatInfo_indicators2 nodrop
| extract field=threatInfo_indicators1 "\"(?<Indicators1>.*?)\"(,|\])" multi nodrop
| extract field=threatInfo_indicators2 "\"(?<Indicators2>.*?)\"(,|\])" multi nodrop
| extract field=Application1 "\"(?<Applications1>.*?)\"(,|\])" multi nodrop
| extract field=Application2 "\"(?<Applications2>.*?)\"(,|\])" multi nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Device, Alerts by Device OS, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts by Severity, Alerts by Severity and Device, Alerts by Target Priority, Alerts Over Time, Alerts over Time, Alerts Over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Devices, Devices by Group, Devices by OS, Devices by Target-Priority, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Host Watchlist Hits, Incidents by Device, Indicators and Applications, Most Recent Alerts, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Process Query Watchlist Hits, Process Watchlist Hits, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Outbound Alerts, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Watchlist Comparison over Time, Watchlist Hits by Name over Time, Watchlist Hits by Type over Time, Watchlists



## Parser:
```
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_indicators[*].process_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "threatInfo.indicators[*].applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
| extract field=Application1 "\"(?<Applications1>.*?)\"(,|\])" multi nodrop
| extract field=Application2 "\"(?<Applications2>.*?)\"(,|\])" multi nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Device, Alerts by Device OS, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts by Severity, Alerts by Severity and Device, Alerts by Target Priority, Alerts over Time, Alerts Over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Devices, Devices by Group, Devices by OS, Devices by Target-Priority, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Host Watchlist Hits, Incidents by Device, Indicators, Indicators and Applications, Indicators by Severity, Indicators of Compromise, Most Recent Alerts, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Process Query Watchlist Hits, Process Watchlist Hits, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Applications, Top Devices, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Outbound Alerts, Top Indicators, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Indicators, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Users, Watchlist Comparison over Time, Watchlist Hits by Name over Time, Watchlist Hits by Type over Time, Watchlists



## Parser:
```
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "severity" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, ActualSeverity2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Device, Alerts by Device OS, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts by Severity, Alerts by Severity and Device, Alerts by Target Priority, Alerts over Time, Alerts Over Time, Alerts over Time, Alerts Over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Devices, Devices by Group, Devices by OS, Devices by Target-Priority, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Host Watchlist Hits, Incidents by Device, Indicators, Indicators and Applications, Indicators by Severity, Indicators of Compromise, Most Recent Alerts, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Process Query Watchlist Hits, Process Watchlist Hits, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Devices, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Outbound Alerts, Top Indicators, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Indicators, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Users, Watchlist Comparison over Time, Watchlist Hits by Name over Time, Watchlist Hits by Type over Time, Watchlists



## Parser:
```
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os","severity" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, ActualSeverity2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Device, Alerts by Device OS, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts by Severity, Alerts by Severity and Device, Alerts by Target Priority, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Devices, Devices by Group, Devices by OS, Devices by Target-Priority, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Host Watchlist Hits, Incidents by Device, Indicators, Indicators and Applications, Indicators by Severity, Indicators of Compromise, Most Recent Alerts, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Process Query Watchlist Hits, Process Watchlist Hits, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Devices, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Outbound Alerts, Top Indicators, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Indicators, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Users, Watchlist Comparison over Time, Watchlist Hits by Name over Time, Watchlist Hits by Type over Time, Watchlists



## Parser:
```
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os","severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score, reason1 nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Device, Alerts by Device OS, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts by Severity, Alerts by Severity and Device, Alerts by Target Priority, Alerts over Time, Alerts Over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Devices, Devices by Group, Devices by OS, Devices by Target-Priority, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Host Watchlist Hits, Incidents by Device, Indicators, Indicators and Applications, Indicators by Severity, Indicators of Compromise, Most Recent Alerts, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Process Query Watchlist Hits, Process Watchlist Hits, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Applications, Top Devices, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Outbound Alerts, Top Indicators, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top Reasons, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Indicators, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Users, Watchlist Comparison over Time, Watchlist Hits by Name over Time, Watchlist Hits by Type over Time, Watchlists



## Parser:
```
| json field=_raw "deviceInfo.deviceName", "device_name" as Device1, Device2 nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Device, Alerts by Device OS, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts by Severity, Alerts by Severity and Device, Alerts by Target Priority, Alerts Over Time, Alerts over Time, Alerts Over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Devices, Devices by Group, Devices by OS, Devices by Target-Priority, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Host Watchlist Hits, Incidents by Device, Indicators, Indicators and Applications, Indicators by Severity, Indicators of Compromise, Most Recent Alerts, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Process Query Watchlist Hits, Process Watchlist Hits, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, Recent Policy Actions, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Applications, Top Devices, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Malware Attacks, Top Hosts with Outbound Alerts, Top Indicators, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top Reasons, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Indicators, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Users, Watchlist Comparison over Time, Watchlist Hits by Name over Time, Watchlist Hits by Type over Time, Watchlists



## Parser:
```
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<alliance_score>-?\d+)"
| parse regex "(?:feed_name)(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')"
| parse regex "alliance_link_\w+(?:\"\:\"|=')(?<alliance_link>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, New Binaries Observed, Process Connections to Suspicious Countries, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<alliance_score>-?\d+)"
| parse regex "(?:feed_name)(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts over Time, Alerts Over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, New Binaries Observed, Process Connections to Suspicious Countries, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<alliance_score>-?\d+)"
| parse regex "(?:feed_name)(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, New Binaries Observed, Process Connections to Suspicious Countries, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<alliance_score>-?\d+)"
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, New Binaries Observed, Process Connections to Suspicious Countries, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<alliance_score>-?\d+)"
| parse regex "alliance_link_\w+(?:\"\:\"|=')(?<alliance_link>.*?)(?:\"|')"  
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, New Binaries Observed, Process Connections to Suspicious Countries, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threats by Feed and Score, Threats by Feeds, Threats by Severity, Threats Detected, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<alliance_score>-?\d+)"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, New Binaries Observed, Process Connections to Suspicious Countries, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threats by Feed and Score, Threats by Feeds, Threats by Score, Threats by Severity, Threats Detected, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<alliance_score>-?\d+)"  
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, New Binaries Observed, Process Connections to Suspicious Countries, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threats by Feed and Score, Threats by Feeds, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<score>-?\d+)"
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Processes, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Threats Detected, Top Feeds, Top FileMod Processes, Top Groups, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<score>-?\d+)"
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Processes, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Threats Detected, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - Multiple Critical Threats, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<score>-?\d+)"
| parse regex "(?:path)(?:\"\:\"|=')(?<path>.*?)(?:\"|')" multi
| parse regex "(?:process_name)(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Processes, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensors, Threats Detected, Top Feeds, Top FileMod Processes, Top Groups, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top Remote Ports, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<score>-?\d+)"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, New Binaries Observed, Process Connections to Suspicious Countries, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threats by Severity, Threats Detected, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:cb_server)(?:\"\:\"|=')(?<cb_server>.*?)(?:\"|')" 
| parse regex "(?:cb_version)(?:\"\:\"|=')(?<cb_version>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, CB Server List, Comms IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Remote IP Distribution, Top Feeds, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top Processes  by Feed, Top Protocols, Top Remote Ports, Top Users by Alerts Fired, Unique Comms IP's, Unique Interface IP's, Unique Remote IP's



## Parser:
```
| parse regex "(?:class|ioc_value)(?:\"\:\"|=')(?<class>.*?)(?:\"|')" 
| parse regex "(?:ioc_type)(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" 
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Feeds, Feeds Comparison over Time, Feeds over Time, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Top Feeds, Top IOC DNSs, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOCs, Top Malicious IPv4 Addresses, Top Processes  by Feed, Top Users by Alerts Fired



## Parser:
```
| parse regex "(?:cmdline)(?:\"\:\"|%3A)(?<cmdline>.*?)(?:\"|%20-)" multi
| parse regex "(?:process_name)(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Processes, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensors, Threats Detected, Top Feeds, Top Groups, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top Remote Ports, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:comms_ip)(?:\"\:\"|=')(?<comms_ip>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Comms IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Remote IP Distribution, Top Feeds, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOCs, Top Malicious IPv4 Addresses, Top Processes  by Feed, Top Protocols, Top Users by Alerts Fired, Unique Comms IP's, Unique Remote IP's



## Parser:
```
| parse regex "(?:direction)(?:\"\:\"|=')(?<direction>.*?)(?:\"|')" 
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" | parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Inbound Alerts, Top Hosts with Outbound Alerts, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:direction)(?:\"\:\"|=')(?<direction>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts over Time, Alerts Over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:dns_name|ioc_value)(?:\"\:\"|=')(?<dns_name>.*?)(?:\"|')" nodrop
| parse regex "(?:ioc_type)(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Feeds, Feeds Comparison over Time, Feeds over Time, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Top Feeds, Top IOC DNSs, Top Processes  by Feed, Top Users by Alerts Fired



## Parser:
```
| parse regex "(?:dstPort|remote_port)(?:\"\:\"|=')(?<remote_port>.*?)(?:\"|')"  
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Comms IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Remote IP Distribution, Top Feeds, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOCs, Top Malicious IPv4 Addresses, Top Processes  by Feed, Top Protocols, Top Remote Ports, Top Users by Alerts Fired, Unique Comms IP's, Unique Remote IP's



## Parser:
```
| parse regex "(?:feed_name)(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, Groups, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Remote IP Distribution, Threats Detected, Top Feeds, Top Groups, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Processes, Top Processes  by Feed, Top Protocols, Top Remote Ports, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's



## Parser:
```
| parse regex "(?:feed_name)(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Feeds, Feeds Comparison over Time, Processes by Associated Feeds, Recent Alerts, Top Feeds, Top Processes  by Feed, Top Users by Alerts Fired



## Parser:
```
| parse regex "(?:filemod_count)(?:\"\:|=')(?<filemod_count>.*?)(?:,|')" multi
| parse regex "(?:process_name)(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Processes, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensors, Threats Detected, Top Feeds, Top FileMod Processes, Top Groups, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top Remote Ports, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:group)(?:\"\:\"|=')(?<group>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Report, Alerts Over Time, Recent Alerts, Top Users by Alerts Fired



## Parser:
```
| parse regex "(?:group)(?:\"\:\"|=')(?<group>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, Groups, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Remote IP Distribution, Threats Detected, Top Feeds, Top Groups, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Processes, Top Processes  by Feed, Top Protocols, Top Remote Ports, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's



## Parser:
```
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<score>-?\d+)"
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts by OS, Alerts by Report, Alerts Over Time, Recent Alerts, Top Users by Alerts Fired



## Parser:
```
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Outbound Alerts, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:interface_ip)(?:\"\:\"|=')(?<interface_ip>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, CB Server List, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Remote IP Distribution, Top Feeds, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top Processes  by Feed, Top Protocols, Top Remote Ports, Top Users by Alerts Fired, Unique Comms IP's, Unique Interface IP's, Unique Remote IP's



## Parser:
```
| parse regex "(?:ioc_query_string|search_query)(?:\"\:\s\"cb\.urlver=1&q=|\"\:\")(?<search_query>.*?)(?:\")" nodrop
| parse regex "(?:ioc_type)(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Feeds, Feeds Comparison over Time, Feeds over Time, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Top Feeds, Top IOC DNSs, Top IOC Process and Binary Queries, Top Processes  by Feed, Top Users by Alerts Fired



## Parser:
```
| parse regex "(?:ioc_type)(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')"
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Remote IP Distribution, Top Feeds, Top Groups, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Processes  by Feed, Top Protocols, Top Remote Ports, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's



## Parser:
```
| parse regex "(?:ioc_type)(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" 
| parse regex "(?:cb_server)(?:\"\:\"|=')(?<cb_server>.*?)(?:\"|')" 
| parse regex "(?:cb_version)(?:\"\:\"|=')(?<cb_version>.*?)(?:\"|')"   
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Remote IP Distribution, Top Feeds, Top Groups, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Processes  by Feed, Top Protocols, Top Remote Ports, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's



## Parser:
```
| parse regex "(?:ioc_type)(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Feeds, Feeds Comparison over Time, Feeds over Time, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Top Feeds, Top IOC DNSs, Top IOC Process and Binary Queries, Top IOCs, Top Processes  by Feed, Top Users by Alerts Fired



## Parser:
```
| parse regex "(?:local_port|srcPort)(?:\"\:\"|=')(?<local_port>.*?)(?:\"|')"  
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Comms IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Remote IP Distribution, Top Feeds, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top Processes  by Feed, Top Protocols, Top Remote Ports, Top Users by Alerts Fired, Unique Comms IP's, Unique Remote IP's



## Parser:
```
| parse regex "(?:md5|ioc_value)(?:\"\:\"|=')(?<md5>.*?)(?:\"|')" nodrop
| parse regex "(?:ioc_type)(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Feeds, Feeds Comparison over Time, Feeds over Time, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Top Feeds, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOCs, Top Malicious IPv4 Addresses, Top Processes  by Feed, Top Users by Alerts Fired



## Parser:
```
| parse regex "(?:os_type)(?:\"\:\"|=')(?<os_type>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Remote IP Distribution, Top Feeds, Top Groups, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Processes  by Feed, Top Protocols, Top Remote Ports, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's



## Parser:
```
| parse regex "(?:os_type)(?:\"\:\"|=')(?<os_type>.*?)(?:\"|')" multi nodrop
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by OS, Alerts by Report, Alerts Over Time, Recent Alerts, Top Users by Alerts Fired



## Parser:
```
| parse regex "(?:parent_name)(?:\"\:\"|%3A)(?<parent_name>.*?)(?:\"|%20)" multi
| parse regex "(?:process_name)(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts over Time, Alerts Over Time, CB Server List, CB Servers, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Processes, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensors, Threats Detected, Top Feeds, Top Groups, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Processes, Top Processes  by Feed, Top Protocols, Top Remote Ports, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:process_name)(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Processes, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensors, Threats Detected, Top Feeds, Top FileMod Processes, Top Groups, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top Remote Ports, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:proto|protocol)(?:\"\:\"|=')(?<protocol>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Feeds, Feeds Comparison over Time, Feeds over Time, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Remote IP Distribution, Top Feeds, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOCs, Top Malicious IPv4 Addresses, Top Processes  by Feed, Top Protocols, Top Users by Alerts Fired, Unique Comms IP's



## Parser:
```
| parse regex "(?:regmod_count)(?:\"\:|=')(?<regmod_count>.*?)(?:,|')" multi
| parse regex "(?:process_name)(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Processes, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensors, Threats Detected, Top Feeds, Top FileMod Processes, Top Groups, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:remote_ip)(?:\"\:\"|=')(?<remote_ip>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Feeds, Feeds Comparison over Time, Feeds over Time, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Remote IP Distribution, Top Feeds, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOCs, Top Malicious IPv4 Addresses, Top Processes  by Feed, Top Protocols, Top Users by Alerts Fired, Unique Comms IP's, Unique Remote IP's



## Parser:
```
| parse regex "(?:remote_ip|dst)(?:\"\:\"|=')(?<remote_ip>.*?)(?:\"|')"  
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts over Time, Alerts Over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, New Binaries Observed, Process Connections to Suspicious Countries, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threats Detected, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:report_id)(?:\"\:\"|=')(?<Report>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Report, Top Users by Alerts Fired



## Parser:
```
| parse regex "(?:sensor_id)(?:\"\:|=)(?<sensor_id>.*?)(?:,|\s)"
| parse regex "(?:os_type)(?:\"\:\"|=')(?<os_type>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Processes, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Threats Detected, Top Feeds, Top FileMod Processes, Top Groups, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:sensor_id)(?:\"\:|=)(?<sensor_id>.*?)(?:,|\s)"
| parse regex "(?:report_id)(?:\"\:\"|=')(?<report_id>.*?)(?:\"|')" nodrop
| parse regex "(?:comms_ip)(?:\"\:\"|=')(?<comms_ip>.*?)(?:\"|')" nodrop
| parse regex "(?:interface_ip)(?:\"\:\"|=')(?<interface_ip>.*?)(?:\"|')" nodrop
| parse regex "(?:username)(?:\"\:\"|=')(?<username>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Processes, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensors, Sensors 24h, Sensors 7d, Threats Detected, Top Feeds, Top FileMod Processes, Top Groups, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:sensor_id)(?:\"\:|=)(?<sensor_id>.*?)(?:,|\s)"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts over Time, Alerts Over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Processes, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Threats Detected, Top Feeds, Top FileMod Processes, Top Groups, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:username)(?:\"\:\"|=')(?<username>.*?)(?:\"|')" multi
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "(?:username)(?:\"\:\"|=')(?<username>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Outbound Alerts, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Watchlists



## Parser:
```
| parse regex "(?:watchlist_name)(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Outbound Alerts, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Watchlist Hits by Name over Time, Watchlist Hits by Type over Time, Watchlists



## Parser:
```
| parse regex "(?:watchlist_name)(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" 
| parse regex "(?:alert_type)(?:\"\:\"|=)(?<alert_type>.*?)(?:\"|\s)" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Outbound Alerts, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Watchlist Hits by Name over Time, Watchlist Hits by Type over Time, Watchlists



## Parser:
```
| parse regex "(?:watchlist_name)(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" 
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "(?:status)(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
| parse regex "(?:os_type)(?:\"\:\"|=')(?<os_type>.*?)(?:\"|')" nodrop
| parse regex "(?:ioc_type)(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop
| parse regex "(?:group)(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:feed_name)(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "(?:alert_severity)(?:\"\:\"|=')(?<alert_severity>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Host Watchlist Hits, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Process Query Watchlist Hits, Process Watchlist Hits, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Outbound Alerts, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Watchlist Hits by Name over Time, Watchlist Hits by Type over Time, Watchlists



## Parser:
```
| parse regex "(?:watchlist_name)(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Host Watchlist Hits, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Process Query Watchlist Hits, Process Watchlist Hits, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Outbound Alerts, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Watchlist Comparison over Time, Watchlist Hits by Name over Time, Watchlist Hits by Type over Time, Watchlists



## Parser:
```
| parse regex "(?:watchlist_name)(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Host Watchlist Hits, Most Recent Feeds, Most Recent Threats, Multiple Users using the same Machine (Top 10), New Binaries Observed, Outbound and Inbound Alerts, Process Connections to Suspicious Countries, Process Query Watchlist Hits, Process Watchlist Hits, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threat Score Box Plot by Feed, Threat Scores by Feed, Threats by Feed and Score, Threats by Feeds, Threats by Feeds over Time, Threats by Score, Threats by Severity, Threats Detected, Threats Outlier, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - High Avg Score Threats, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top Hosts by Alerts Fired, Top Hosts by Inbound Alerts, Top Hosts with Outbound Alerts, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, User Alerts Over Time, Watchlist Comparison over Time, Watchlist Hits by Name over Time, Watchlist Hits by Type over Time, Watchlists



## Parser:
```
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Feeds Comparison over Time, Processes by Associated Feeds, Recent Alerts, Top Feeds, Top Processes  by Feed, Top Users by Alerts Fired



## Parser:
```
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop 
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Feeds, Feeds Comparison over Time, Feeds over Time, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Top Feeds, Top Processes  by Feed, Top Users by Alerts Fired



## Parser:
```
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Feeds, Feeds Comparison over Time, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Top Feeds, Top Processes  by Feed, Top Users by Alerts Fired



## Parser:
```
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop 
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Processes by Associated Feeds, Recent Alerts, Top Feeds, Top Processes  by Feed, Top Users by Alerts Fired



## Parser:
```
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "process_name(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi nodrop
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Processes by Associated Feeds, Recent Alerts, Top Users by Alerts Fired



## Parser:
```
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "process_name(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" nodrop
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Processes by Associated Feeds, Recent Alerts, Top Processes  by Feed, Top Users by Alerts Fired



## Parser:
```
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" 
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')"
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, Processes, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Threats Detected, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')"   
| parse regex "sensor_id(?:\"\:|=)(?<sensor_id>.*?)(?:,|\s)" nodrop
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "timestamp(?:\"\:\"|=')(?<timestamp>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "os_type(?:\"\:\"|=')(?<os_type>.*?)(?:\"|')" multi nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<alliance_score>-?\d+)"
| parse regex "(?:feed_name)(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')"
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts over Time, Alerts Over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, Processes, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Threats Detected, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - Multiple Critical Threats, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop
| parse regex "ioc_value(?:\"\:\"|=')(?<malicious_ip>.*?)(?:\"|')" nodrop 
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Feeds, Feeds Comparison over Time, Feeds over Time, Most Recent Feeds, Processes by Associated Feeds, Recent Alerts, Top Feeds, Top IOC DNSs, Top IOC Process and Binary Queries, Top IOCs, Top Malicious IPv4 Addresses, Top Processes  by Feed, Top Users by Alerts Fired



## Parser:
```
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Active Sensors, Activity, Alerts, Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Alerts over Time, CB Server List, CB Servers, Command Line by Process, Comms IP Distribution, Endpoint IP Distribution, Feeds, Feeds Comparison over Time, Feeds over Time, FileMod Processes, Groups, Most Recent Feeds, Most Recent Threats, New Binaries Observed, Processes, Processes Blocked, Processes by Associated Feeds, Recent Alerts, RegMod Processes, Remote IP Distribution, Sensor OS Breakdown, Sensors, Sensors 24h, Sensors 30d, Sensors 7d, Sensors not Reporting in last 7 days, Tampering Processes Observed, Threats Detected, Top Feeds, Top FileMod Processes, Top Groups, Top Hosts - Multiple Critical Threats, Top Hosts Affected, Top IOC DNSs, Top IOC MD5s, Top IOC Process and Binary Queries, Top IOC Query Based Feeds, Top IOC's, Top IOCs, Top Local Ports, Top Malicious IPv4 Addresses, Top OS, Top Parent Processes, Top Paths, Top Processes, Top Processes  by Feed, Top Processes by Host, Top Protocols, Top RegMod Processes, Top Remote Ports, Top Scores, Top Threat Feeds, Top Users by Alerts Fired, Top Watchlists, Unique Comms IP's, Unique Hosts, Unique Interface IP's, Unique Remote IP's, Unique Users, Watchlists



## Parser:
```
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "sensor_id(?:\"\:|=)(?<sensor_id>.*?)(?:,|\s)" nodrop
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "timestamp(?:\"\:\"|=')(?<timestamp>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "os_type(?:\"\:\"|=')(?<os_type>.*?)(?:\"|')" multi nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Report, Recent Alerts, Top Users by Alerts Fired



## Parser:
```
| parse regex "username(?:\"\:\"|%3A|=')(?<username>.*?)(?:\"|%20|\|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
 
```
### Use Cases:
Alerts by Group, Alerts by Host after a Critical Threat Identification, Alerts By Mode, Alerts by OS, Alerts by Report, Alerts Over Time, Recent Alerts, Top Users by Alerts Fired


