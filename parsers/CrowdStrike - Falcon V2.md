# Parsers For CrowdStrike - Falcon V2

## Parser:
```
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
```
### Use Cases:
Active Sensors, API clients Events, Authentication Operations, Authentication Operations - One Day Time Comparison, Authentication Operations over Time, Blocked Detections, Breakdown by Operation Name, Create User Event, Detection based on Command Line Execution, Detection by Host, Detection by Severity, Detection by Severity - One Day Time Comparison, Detection by Tactic, Detection by User, Detection Count, Detection Summary, Detection Update Events - Outlier, Detections by Objective, Detections by Technique, Detections for the Past 7 Days, Events, Events - One Day Time Comparison, Events Over Time, Failed Events, Failed User Login Events, File based Detections, Geo Location of Authentication Events, Geo Location of Detection Status Update Events, Grant User Role Events, High Severity Detections, High Severity Detections by Host, High Severity Detections by User, High Severity Trending IOCs, Login Events - Outlier, Operation Name, Operation Name - One Day Time Comparison, Quarantined Files, Quarantined Files Count, Requested Auth Secret Reset Event, Severity, SHA based Detections, Success 2FA Authenticate Events, Successful User Login Events, Trending IOCs, Update Group, Update Policy, User Auth Without 2FA



## Parser:
```
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess
```
### Use Cases:
Active Sensors, API clients Events, Authentication Operations, Authentication Operations - One Day Time Comparison, Authentication Operations over Time, Blocked Detections, Breakdown by Operation Name, Create User Event, Detection based on Command Line Execution, Detection by Host, Detection by Severity, Detection by Severity - One Day Time Comparison, Detection by Tactic, Detection by User, Detection Count, Detection Summary, Detection Update Events - Outlier, Detections by Objective, Detections by Technique, Detections for the Past 7 Days, Events - One Day Time Comparison, Events Over Time, Failed Events, Failed User Login Events, File based Detections, Geo Location of Authentication Events, Geo Location of Detection Status Update Events, Grant User Role Events, High Severity Detections, High Severity Detections by Host, High Severity Detections by User, High Severity Trending IOCs, Login Events - Outlier, Operation Name, Operation Name - One Day Time Comparison, Quarantined Files, Quarantined Files Count, Requested Auth Secret Reset Event, Severity, SHA based Detections, Success 2FA Authenticate Events, Successful User Login Events, Trending IOCs, Update Group, Update Policy, User Auth Without 2FA



## Parser:
```
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme
```
### Use Cases:
Active Sensors, API clients Events, Authentication Operations, Authentication Operations - One Day Time Comparison, Authentication Operations over Time, Blocked Detections, Breakdown by Operation Name, Create User Event, Detection based on Command Line Execution, Detection by Host, Detection by Severity, Detection by Severity - One Day Time Comparison, Detection by Tactic, Detection by User, Detection Count, Detection Summary, Detection Update Events - Outlier, Detections by Objective, Detections by Tactic, Detections by Technique, Detections for the Past 7 Days, Events, Events - One Day Time Comparison, Events Over Time, Failed Events, Failed User Login Events, File based Detections, Geo Location of Authentication Events, Geo Location of Detection Status Update Events, Grant User Role Events, High Severity Detections, High Severity Detections by Host, High Severity Detections by User, High Severity Trending IOCs, Login Events - Outlier, Operation Name, Operation Name - One Day Time Comparison, Quarantined Files, Quarantined Files Count, Requested Auth Secret Reset Event, Severity, SHA based Detections, Success 2FA Authenticate Events, Successful User Login Events, Trending IOCs, Update Group, Update Policy, User Auth Without 2FA



## Parser:
```
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme
| json   "event.ParentImageFileName", "event.ParentCommandLine", "event.GrandparentImageFileName", "event.GrandparentCommandLine" as  ParentImageFileName, ParentCommandLine, GrandparentImageFileName, GrandparentCommandLine
```
### Use Cases:
API clients Events, Authentication Operations, Authentication Operations - One Day Time Comparison, Authentication Operations over Time, Blocked Detections, Create User Event, Detection based on Command Line Execution, Detection by Host, Detection by Severity, Detection by Severity - One Day Time Comparison, Detection by Tactic, Detection by User, Detection Count, Failed Events, File based Detections, Geo Location of Authentication Events, Geo Location of Detection Status Update Events, Grant User Role Events, High Severity Detections, High Severity Detections by Host, High Severity Detections by User, High Severity Trending IOCs, Operation Name, Quarantined Files, Quarantined Files Count, Requested Auth Secret Reset Event, Severity, SHA based Detections, Success 2FA Authenticate Events, Trending IOCs, Update Group, Update Policy, User Auth Without 2FA



## Parser:
```
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme
| json "event.PatternDispositionFlags.ProcessBlocked" as isProcessBlocked
```
### Use Cases:
API clients Events, Authentication Operations, Authentication Operations - One Day Time Comparison, Authentication Operations over Time, Blocked Detections, Create User Event, Failed Events, File based Detections, Geo Location of Authentication Events, Geo Location of Detection Status Update Events, Grant User Role Events, High Severity Detections, High Severity Detections by Host, High Severity Detections by User, High Severity Trending IOCs, Operation Name, Quarantined Files, Quarantined Files Count, Requested Auth Secret Reset Event, Severity, SHA based Detections, Success 2FA Authenticate Events, Trending IOCs, Update Group, Update Policy, User Auth Without 2FA



## Parser:
```
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.SensorId" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, sensor_id nodrop
```
### Use Cases:
Active Sensors, API clients Events, Authentication Operations, Authentication Operations - One Day Time Comparison, Authentication Operations over Time, Blocked Detections, Create User Event, Detection based on Command Line Execution, Detection by Host, Detection by Severity, Detection by Severity - One Day Time Comparison, Detection by Tactic, Detection by User, Detection Count, Detection Summary, Failed Events, File based Detections, Geo Location of Authentication Events, Geo Location of Detection Status Update Events, Grant User Role Events, High Severity Detections, High Severity Detections by Host, High Severity Detections by User, High Severity Trending IOCs, Operation Name, Quarantined Files, Quarantined Files Count, Requested Auth Secret Reset Event, Severity, SHA based Detections, Success 2FA Authenticate Events, Trending IOCs, Update Group, Update Policy, User Auth Without 2FA



## Parser:
```
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| json "event.OperationName",  "event.UserId", "event.UserIp", "event.ServiceName", "event.AuditKeyValues" as operation_name, src_user, user_ip, service_name, audit_values
```
### Use Cases:
API clients Events, Authentication Operations, Authentication Operations - One Day Time Comparison, Authentication Operations over Time, Create User Event, Failed Events, Geo Location of Authentication Events, Geo Location of Detection Status Update Events, Grant User Role Events, High Severity Detections, High Severity Detections by Host, High Severity Detections by User, High Severity Trending IOCs, Requested Auth Secret Reset Event, Success 2FA Authenticate Events, User Auth Without 2FA



## Parser:
```
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| json "event.OperationName",  "event.UserId", "event.UserIp", "event.ServiceName", "event.AuditKeyValues" as operation_name, src_user, user_ip, service_name, changed_values
```
### Use Cases:
API clients Events, Authentication Operations, Authentication Operations - One Day Time Comparison, Authentication Operations over Time, Create User Event, Failed Events, Geo Location of Authentication Events, Geo Location of Detection Status Update Events, Grant User Role Events, High Severity Detections, High Severity Detections by Host, High Severity Detections by User, High Severity Trending IOCs, Operation Name, Quarantined Files, Quarantined Files Count, Requested Auth Secret Reset Event, Success 2FA Authenticate Events, Update Group, Update Policy, User Auth Without 2FA



## Parser:
```
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| json "event.OperationName",  "event.UserId", "event.UserIp", "event.ServiceName", "event.AuditKeyValues" as operation_name, user_id, src_user, service_name, audit_values
```
### Use Cases:
Active Sensors, API clients Events, Authentication Operations, Authentication Operations - One Day Time Comparison, Authentication Operations over Time, Blocked Detections, Breakdown by Operation Name, Create User Event, Detection based on Command Line Execution, Detection by Host, Detection by Severity, Detection by Severity - One Day Time Comparison, Detection by Tactic, Detection by User, Detection Count, Detection Summary, Detection Update Events - Outlier, Detections by Objective, Detections by Technique, Events - One Day Time Comparison, Events Over Time, Failed Events, File based Detections, Geo Location of Authentication Events, Geo Location of Detection Status Update Events, Grant User Role Events, High Severity Detections, High Severity Detections by Host, High Severity Detections by User, High Severity Trending IOCs, Login Events - Outlier, Operation Name, Operation Name - One Day Time Comparison, Quarantined Files, Quarantined Files Count, Requested Auth Secret Reset Event, Severity, SHA based Detections, Success 2FA Authenticate Events, Successful User Login Events, Trending IOCs, Update Group, Update Policy, User Auth Without 2FA



## Parser:
```
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| json "event.OperationName",  "event.UserId", "event.UserIp", "event.ServiceName", "event.AuditKeyValues" as operation_name, user_id, src_user, service_name, audit_values
| parse regex field=audit_values "\"ValueString\":\"(?<file_id>.+)\",\"Key\":\"quarantined_file_id\""
```
### Use Cases:
API clients Events, Authentication Operations, Authentication Operations - One Day Time Comparison, Authentication Operations over Time, Create User Event, Failed Events, Geo Location of Authentication Events, Geo Location of Detection Status Update Events, Grant User Role Events, High Severity Detections, High Severity Detections by Host, High Severity Detections by User, High Severity Trending IOCs, Quarantined Files, Requested Auth Secret Reset Event, Success 2FA Authenticate Events, User Auth Without 2FA



## Parser:
```
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| json "event.UserId", "event.UserIp", "event.OperationName", "event.ServiceName", "event.Success", "event.UTCTimestamp" as src_user, user_ip, operation_name, service_name, success, operation_time
```
### Use Cases:
Active Sensors, API clients Events, Authentication Operations, Authentication Operations - One Day Time Comparison, Authentication Operations over Time, Blocked Detections, Breakdown by Operation Name, Create User Event, Detection based on Command Line Execution, Detection by Host, Detection by Severity, Detection by Severity - One Day Time Comparison, Detection by Tactic, Detection by User, Detection Count, Detection Summary, Detection Update Events - Outlier, Detections by Objective, Detections by Technique, Events - One Day Time Comparison, Events Over Time, Failed Events, Failed User Login Events, File based Detections, Geo Location of Authentication Events, Geo Location of Detection Status Update Events, Grant User Role Events, High Severity Detections, High Severity Detections by Host, High Severity Detections by User, High Severity Trending IOCs, Login Events - Outlier, Operation Name, Operation Name - One Day Time Comparison, Quarantined Files, Quarantined Files Count, Requested Auth Secret Reset Event, Severity, SHA based Detections, Success 2FA Authenticate Events, Successful User Login Events, Trending IOCs, Update Group, Update Policy, User Auth Without 2FA



## Parser:
```
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| json "event.UserId", "event.UserIp", "event.OperationName", "event.ServiceName", "event.Success", "event.UTCTimestamp" as src_user, user_ip, operation_name, service_name, success, operation_time
| json "event.AuditKeyValues[0].ValueString" as target_user
```
### Use Cases:
API clients Events, Authentication Operations, Authentication Operations - One Day Time Comparison, Create User Event, Failed Events, Geo Location of Authentication Events, Grant User Role Events, High Severity Detections, High Severity Detections by Host, High Severity Detections by User, High Severity Trending IOCs, Requested Auth Secret Reset Event, Success 2FA Authenticate Events



## Parser:
```
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| json "event.UserId", "event.UserIp", "event.OperationName", "event.ServiceName", "event.Success", "event.UTCTimestamp" as src_user, user_ip, operation_name, service_name, success, operation_time
| parse regex "name\",[\s]+\"ValueString\": \"(?<name>.+)\""
| parse regex "scope\(s\)\",[\s]+\"ValueString\": \"(?<scope>.+)\""
```
### Use Cases:
API clients Events, Authentication Operations, Authentication Operations - One Day Time Comparison, Failed Events, Grant User Role Events, High Severity Detections, High Severity Detections by Host, High Severity Detections by User, High Severity Trending IOCs, Success 2FA Authenticate Events



## Parser:
```
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| json "event.UserId", "event.UserIp", "event.OperationName", "event.ServiceName", "event.Success", "event.UTCTimestamp" as src_user, user_ip, operation_name, service_name, success, operation_time
| parse regex "roles\",[\s]+\"ValueString\": \"(?<updated_roles>.+)\""
| parse regex "target_name\",[\s]+\"ValueString\": \"(?<target_user>.+)\""
```
### Use Cases:
Authentication Operations, Authentication Operations - One Day Time Comparison, Failed Events, Grant User Role Events, High Severity Detections, High Severity Detections by Host, High Severity Detections by User, High Severity Trending IOCs, Success 2FA Authenticate Events


