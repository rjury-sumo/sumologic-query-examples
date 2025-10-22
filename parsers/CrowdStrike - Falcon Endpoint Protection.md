# Parsers For CrowdStrike - Falcon Endpoint Protection

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Authentication/API Client Events**
```
_sourceCategory={{Logsdatasource}}   AuthActivityAuditEvent 	CreateAPIClient
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| json "event.UserId", "event.UserIp", "event.OperationName", "event.ServiceName", "event.Success", "event.UTCTimestamp" as src_user, user_ip, operation_name, service_name, success, operation_time
| where src_user matches "{{src_user}}" and operation_name matches "{{operation_name}}" and success matches "{{success}}"
| formatDate(fromMillis(operation_time), "MM/dd/yyyy HH:mm:ss:SSS") as operation_time
| parse regex "name\",\s*\"ValueString\":\s*\"(?<name>.+?)\""
| parse regex "scope\(s\)\",\s*\"ValueString\":\s*\"(?<scope>.+?)\""
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Authentication/Authentication Operations**
```
_sourceCategory={{Logsdatasource}}   AuthActivityAuditEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| json "event.UserId", "event.UserIp", "event.OperationName", "event.ServiceName", "event.Success", "event.UTCTimestamp" as src_user, user_ip, operation_name, service_name, success, operation_time
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Authentication/Authentication Operations - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}}  AuthActivityAuditEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| json "event.UserId", "event.UserIp", "event.OperationName", "event.ServiceName", "event.Success", "event.UTCTimestamp" as src_user, user_ip, operation_name, service_name, success, operation_time
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Authentication/Authentication Operations Over Time**
```
_sourceCategory={{Logsdatasource}}   AuthActivityAuditEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| json "event.UserId", "event.UserIp", "event.OperationName", "event.ServiceName", "event.Success", "event.UTCTimestamp" as src_user, user_ip, operation_name, service_name, success, operation_time
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Authentication/Create User Event**
```
_sourceCategory={{Logsdatasource}}   AuthActivityAuditEvent 	createUser
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| json "event.UserId", "event.UserIp", "event.OperationName", "event.ServiceName", "event.Success", "event.UTCTimestamp" as src_user, user_ip, operation_name, service_name, success, operation_time
| where src_user matches "{{src_user}}" and operation_name matches "{{operation_name}}" and success matches "{{success}}"
| where success="true"
| formatDate(fromMillis(operation_time), "MM/dd/yyyy HH:mm:ss:SSS") as operation_time
| json "event.AuditKeyValues[0].ValueString" as target_user
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Authentication/Failed Events**
```
_sourceCategory={{Logsdatasource}}   AuthActivityAuditEvent 	
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| json "event.UserId", "event.UserIp", "event.OperationName", "event.ServiceName", "event.Success", "event.UTCTimestamp" as src_user, user_ip, operation_name, service_name, success, operation_time
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Authentication/Geo Location of Authentication Events**
```
_sourceCategory={{Logsdatasource}}  AuthActivityAuditEvent 
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| json "event.UserId", "event.UserIp", "event.OperationName", "event.ServiceName", "event.Success", "event.UTCTimestamp" as src_user, user_ip, operation_name, service_name, success, operation_time
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Authentication/Grant User Role Events**
```
_sourceCategory={{Logsdatasource}}   AuthActivityAuditEvent grantUserRoles
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| json "event.UserId", "event.UserIp", "event.OperationName", "event.ServiceName", "event.Success", "event.UTCTimestamp" as src_user, user_ip, operation_name, service_name, success, operation_time
| where src_user matches "{{src_user}}" and operation_name matches "{{operation_name}}" and success matches "{{success}}"
| formatDate(fromMillis(operation_time), "MM/dd/yyyy HH:mm:ss:SSS") as operation_time
| where success="true"
| parse regex "roles\",\s*\"ValueString\":\s*\"(?<updated_roles>.+?)\""
| parse regex "target_name\",\s*\"ValueString\":\s*\"(?<target_user>.+?)\""
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Authentication/Requested Auth Secret Reset Event**
```
_sourceCategory={{Logsdatasource}}   AuthActivityAuditEvent 	resetAuthSecret
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| json "event.UserId", "event.UserIp", "event.OperationName", "event.ServiceName", "event.Success", "event.UTCTimestamp" as src_user, user_ip, operation_name, service_name, success, operation_time
| where src_user matches "{{src_user}}" and operation_name matches "{{operation_name}}" and success matches "{{success}}"
| formatDate(fromMillis(operation_time), "MM/dd/yyyy HH:mm:ss:SSS") as operation_time
| where success="true"
| json "event.AuditKeyValues[0].ValueString" as target_user
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Authentication/Success 2FA Authenticate Events**
```
_sourceCategory={{Logsdatasource}}   AuthActivityAuditEvent 	twoFactorAuthenticate
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| json "event.UserId", "event.UserIp", "event.OperationName", "event.ServiceName", "event.Success", "event.UTCTimestamp" as src_user, user_ip, operation_name, service_name, success, operation_time
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Authentication/User Auth Without 2FA**
```
_sourceCategory={{Logsdatasource}}   AuthActivityAuditEvent userAuthenticate
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| json "event.UserId", "event.UserIp", "event.OperationName", "event.ServiceName", "event.Success", "event.UTCTimestamp" as src_user, user_ip, operation_name, service_name, success, operation_time
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Detection Status Update/Geo Location of Detection Status Update Events**
```
_sourceCategory={{Logsdatasource}}   UserActivityAuditEvent 
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="UserActivityAuditEvent"
| json "event.OperationName",  "event.UserId", "event.UserIp", "event.ServiceName", "event.AuditKeyValues" as operation_name, src_user, user_ip, service_name, audit_values
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Detection Status Update/Operation Name**
```
_sourceCategory={{Logsdatasource}}  UserActivityAuditEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="UserActivityAuditEvent"
| json "event.OperationName",  "event.UserId", "event.UserIp", "event.ServiceName", "event.AuditKeyValues" as operation_name, src_user, user_ip, service_name, audit_values
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Detection Status Update/Quarantined Files**
```
_sourceCategory={{Logsdatasource}}   UserActivityAuditEvent quarantined action_taken
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="UserActivityAuditEvent"
| json "event.OperationName",  "event.UserId", "event.UserIp", "event.ServiceName", "event.AuditKeyValues" as operation_name, src_user, user_ip, service_name, audit_values
| where operation_name="quarantined_file_update"  
| where src_user matches "{{src_user}}" and operation_name matches "{{operation_name}}" and event_type matches "{{event_type}}" and event_time matches "{{event_time}}" and service_name matches "{{service_name}}" and customer_id matches "{{customer_id}}"
| parse regex field=audit_values "\"ValueString\":\"(?<file_id>.+)\",\"Key\":\"quarantined_file_id\"" 
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Detection Status Update/Quarantined Files Count**
```
_sourceCategory={{Logsdatasource}}   UserActivityAuditEvent quarantined action_taken
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="UserActivityAuditEvent"
| json "event.OperationName",  "event.UserId", "event.UserIp", "event.ServiceName", "event.AuditKeyValues" as operation_name, src_user, user_ip, service_name, audit_values
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Detection Status Update/Update Group**
```
_sourceCategory={{Logsdatasource}}   UserActivityAuditEvent 
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="UserActivityAuditEvent"
| json "event.OperationName",  "event.UserId", "event.UserIp", "event.ServiceName", "event.AuditKeyValues" as operation_name, src_user, user_ip, service_name, changed_values
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Detection Status Update/Update Policy**
```
_sourceCategory={{Logsdatasource}}   UserActivityAuditEvent 
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="UserActivityAuditEvent"
| json "event.OperationName",  "event.UserId", "event.UserIp", "event.ServiceName", "event.AuditKeyValues" as operation_name, src_user, user_ip, service_name, changed_values
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Detections/Blocked Detections**
```
_sourceCategory={{Logsdatasource}}   DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme nodrop
| where tactic matches "{{tactic}}" and technique matches "{{technique}}" and objective matches "{{objective}}" and computer_name matches "{{computer_name}}" and user_name matches "{{user_name}}" and customer_id matches "{{customer_id}}" and machine_domain matches "{{machine_domain}}"  and detect_desc matches "{{detect_desc}}" and severity_name matches "{{severity_name}}"
| tourl(falconHost_link, event_time,"Detected at: ","") as detection_URL
| json "event.PatternDispositionFlags.ProcessBlocked" as isProcessBlocked
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Detections/Detection Based on Command Line Execution**
```
_sourceCategory={{Logsdatasource}}   DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme nodrop
| where tactic matches "{{tactic}}" and technique matches "{{technique}}" and objective matches "{{objective}}" and computer_name matches "{{computer_name}}" and user_name matches "{{user_name}}" and customer_id matches "{{customer_id}}" and machine_domain matches "{{machine_domain}}"  and detect_desc matches "{{detect_desc}}" and severity_name matches "{{severity_name}}"
| tourl(falconHost_link, event_time,"Detected at: ","") as detection_URL
| json   "event.ParentImageFileName", "event.ParentCommandLine", "event.GrandparentImageFileName", "event.GrandparentCommandLine" as  ParentImageFileName, ParentCommandLine, GrandparentImageFileName, GrandparentCommandLine
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Detections/Detection by Host**
```
_sourceCategory={{Logsdatasource}}   DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Detections/Detection by Severity**
```
_sourceCategory={{Logsdatasource}}   DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Detections/Detection by Tactic**
```
_sourceCategory={{Logsdatasource}}   DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Detections/Detection by User**
```
_sourceCategory={{Logsdatasource}}   DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Detections/Detection Count**
```
_sourceCategory={{Logsdatasource}}   DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Detections/Detection Summary**
```
_sourceCategory={{Logsdatasource}}   DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIm nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Detections/Detection Summary by Severity and Tactic**
```
_sourceCategory={{Logsdatasource}}  detectionsummaryevent
| json field=_raw "event.SeverityName", "event.Tactic", "event.Technique" as severity, tactic, technique
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Detections/File Based Detections**
```
_sourceCategory={{Logsdatasource}}   DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Detections/Severity**
```
_sourceCategory={{Logsdatasource}}   DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Detections/SHA and MD5 Based Detections**
```
_sourceCategory={{Logsdatasource}}   DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.SHA256String", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, sha256string, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Detections/Trending IOCs**
```
_sourceCategory={{Logsdatasource}}   DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Incident Summary Events/Closed Incidents**
```
_sourceCategory={{Logsdatasource}}  IncidentSummaryEvent
| json field=_raw "metadata.eventType","metadata.eventCreationTime","event.FineScore","event.LateralMovement", "event.IncidentStartTime", "event.IncidentEndTime", "event.FalconHostLink", "event.State" as eventType, eventCreationTime, FineScore, LateralMovement, IncidentStartTime, IncidentEndTime, FalconHostLink, State nodrop
| parse "/inc:*:" as incID nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Incident Summary Events/Date of Last Incident**
```
_sourceCategory={{Logsdatasource}}  IncidentSummaryEvent
| json field=_raw "metadata.eventType","metadata.eventCreationTime","event.FineScore","event.LateralMovement", "event.IncidentStartTime", "event.IncidentEndTime", "event.FalconHostLink", "event.State" as eventType, eventCreationTime, FineScore, LateralMovement, IncidentStartTime, IncidentEndTime, FalconHostLink, State nodrop
| parse "/inc:*\"," as incidentID nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Incident Summary Events/Incident Average Duration**
```
_sourceCategory={{Logsdatasource}}  IncidentSummaryEvent
| json field=_raw "metadata.eventType","metadata.eventCreationTime","event.FineScore","event.LateralMovement", "event.IncidentStartTime", "event.IncidentEndTime", "event.FalconHostLink", "event.State" as eventType, eventCreationTime, FineScore, LateralMovement, IncidentStartTime, IncidentEndTime, FalconHostLink, State nodrop
| parse "/inc:*\"," as incidentID nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Incident Summary Events/Incident Start, End, Duration**
```
_sourceCategory={{Logsdatasource}}  IncidentSummaryEvent
| json field=_raw "metadata.eventType","metadata.eventCreationTime","event.FineScore","event.LateralMovement", "event.IncidentStartTime", "event.IncidentEndTime", "event.FalconHostLink", "event.State" as eventType, eventCreationTime, FineScore, LateralMovement, IncidentStartTime, IncidentEndTime, FalconHostLink, State nodrop
| parse "/inc:*\"," as incidentID nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Incident Summary Events/Open Incidents**
```
_sourceCategory={{Logsdatasource}}  IncidentSummaryEvent
| json field=_raw "metadata.eventType","metadata.eventCreationTime","event.FineScore","event.LateralMovement", "event.IncidentStartTime", "event.IncidentEndTime", "event.FalconHostLink", "event.State" as eventType, eventCreationTime, FineScore, LateralMovement, IncidentStartTime, IncidentEndTime, FalconHostLink, State nodrop
| parse "/inc:*:" as incID nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Incident Summary Events/Parent Incident Count by Day**
```
_sourceCategory={{Logsdatasource}}  IncidentSummaryEvent
| json field=_raw "metadata.eventType","metadata.eventCreationTime","event.FineScore","event.LateralMovement", "event.IncidentStartTime", "event.IncidentEndTime", "event.FalconHostLink", "event.State" as eventType, eventCreationTime, FineScore, LateralMovement, IncidentStartTime, IncidentEndTime, FalconHostLink, State nodrop
| parse "/inc:*:*\"," as parent_incident,incident_update
| parse "/inc:*\"," as incidentID nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Incident Summary Events/Top Incident FineScore by Parent Incident**
```
_sourceCategory={{Logsdatasource}}  IncidentSummaryEvent
| json field=_raw "metadata.eventType","metadata.eventCreationTime","event.FineScore","event.LateralMovement", "event.IncidentStartTime", "event.IncidentEndTime", "event.FalconHostLink", "event.State" as eventType, eventCreationTime, FineScore, LateralMovement, IncidentStartTime, IncidentEndTime, FalconHostLink, State nodrop
| parse "/inc:*:*\"," as parent_incident,incident_update
| parse "/inc:*\"," as incidentID nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Overview/Active Sensors**
```
_sourceCategory={{Logsdatasource}} 
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| where event_type matches "{{event_type}}" and customer_id matches "{{customer_id}}"
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.SensorId" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, sensor_id nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Overview/Breakdown by Operation Name**
```
_sourceCategory={{Logsdatasource}}   UserActivityAuditEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| where event_type matches "{{event_type}}" and customer_id matches "{{customer_id}}"
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="UserActivityAuditEvent"
| json "event.OperationName",  "event.UserId", "event.UserIp", "event.ServiceName", "event.AuditKeyValues" as operation_name, user_id, src_user, service_name, audit_values
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Overview/Detection Distribution by Tactic**
```
_sourceCategory={{Logsdatasource}}  DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| where event_type matches "{{event_type}}" and customer_id matches "{{customer_id}}"
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Overview/Detection Update Events - Outlier**
```
_sourceCategory={{Logsdatasource}}   UserActivityAuditEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| where event_type matches "{{event_type}}" and customer_id matches "{{customer_id}}"
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="UserActivityAuditEvent"
| json "event.OperationName",  "event.UserId", "event.UserIp", "event.ServiceName", "event.AuditKeyValues" as operation_name, user_id, src_user, service_name, audit_values
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Overview/Detections by Objective**
```
_sourceCategory={{Logsdatasource}}   DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| where event_type matches "{{event_type}}" and customer_id matches "{{customer_id}}"
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Overview/Detections for the Past 7 Days**
```
_sourceCategory={{Logsdatasource}}   DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| where event_type matches "{{event_type}}" and customer_id matches "{{customer_id}}"
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Overview/Distribution of Detections by Technique**
```
_sourceCategory={{Logsdatasource}}   DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| where event_type matches "{{event_type}}" and customer_id matches "{{customer_id}}"
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme nodrop
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Overview/Event Type Distribution**
```
_sourceCategory={{Logsdatasource}} 
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Overview/Events - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}} 
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Overview/Events Over Time**
```
_sourceCategory={{Logsdatasource}} 
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Overview/Failed User Login Events**
```
_sourceCategory={{Logsdatasource}}   AuthActivityAuditEvent (userAuthenticate or twoFactorAuthenticate)
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| where event_type matches "{{event_type}}" and customer_id matches "{{customer_id}}"
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| json "event.UserId", "event.UserIp", "event.OperationName", "event.ServiceName", "event.Success", "event.UTCTimestamp" as src_user, user_ip, operation_name, service_name, success, operation_time
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Overview/Login Events - Outlier**
```
_sourceCategory={{Logsdatasource}}   AuthActivityAuditEvent (userAuthenticate or twoFactorAuthenticate)
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| where event_type matches "{{event_type}}" and customer_id matches "{{customer_id}}"
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| json "event.UserId", "event.UserIp", "event.OperationName", "event.ServiceName", "event.Success", "event.UTCTimestamp" as src_user, user_ip, operation_name, service_name, success, operation_time
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Overview/Operation Name - OneDay TimeComparison**
```
_sourceCategory={{Logsdatasource}}   UserActivityAuditEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| where event_type matches "{{event_type}}" and customer_id matches "{{customer_id}}"
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="UserActivityAuditEvent"
| json "event.OperationName",  "event.UserId", "event.UserIp", "event.ServiceName", "event.AuditKeyValues" as operation_name, user_id, src_user, service_name, audit_values
```

**CrowdStrike - Falcon Endpoint Protection/CrowdStrike Falcon - Overview/Successful User Login Events**
```
_sourceCategory={{Logsdatasource}}   AuthActivityAuditEvent (userAuthenticate or twoFactorAuthenticate)
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| where event_type matches "{{event_type}}" and customer_id matches "{{customer_id}}"
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| json "event.UserId", "event.UserIp", "event.OperationName", "event.ServiceName", "event.Success", "event.UTCTimestamp" as src_user, user_ip, operation_name, service_name, success, operation_time
```

**CrowdStrike - Falcon Endpoint Protection/FER Crowdstrike Falcon - ActivityAuditEvent/FER Crowdstrike Falcon - ActivityAuditEvent**
```
_sourceCategory={{Logsdatasource}}  *ActivityAuditEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time nodrop
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| json "event.UserId", "event.UserIp", "event.OperationName", "event.ServiceName", "event.Success", "event.UTCTimestamp" as src_user, user_ip, operation_name, service_name, success, operation_time nodrop
```

**CrowdStrike - Falcon Endpoint Protection/FER Crowdstrike Falcon - DetectionSummaryEvent/FER Crowdstrike Falcon - DetectionSummaryEvent**
```
_sourceCategory={{Logsdatasource}}  DetectionSummaryEvent
| json field=_raw "metadata.eventType" as event_type
| where event_type = "DetectionSummaryEvent"
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess nodrop
```

**CrowdStrike - Falcon Endpoint Protection/FER Crowdstrike Falcon - IncidentSummaryEvent timestamp conversions/FER Crowdstrike Falcon - IncidentSummaryEvent timestamp conversions**
```
_sourceCategory={{Logsdatasource}}  IncidentSummaryEvent
| json field=_raw "metadata.eventType","metadata.eventCreationTime","event.FineScore","event.LateralMovement", "event.IncidentStartTime", "event.IncidentEndTime", "event.FalconHostLink", "event.State" as eventType, eventCreationTime, FineScore, LateralMovement, IncidentStartTime, IncidentEndTime, FalconHostLink, State nodrop
| parse "/inc:*:" as incID nodrop
```

**CrowdStrike - Falcon Endpoint Protection/FER Crowdstrike Falcon - IncidentSummaryEvent/FER Crowdstrike Falcon - IncidentSummaryEvent**
```
_sourceCategory={{Logsdatasource}}  IncidentSummaryEvent
| json field=_raw "metadata.eventType","event.FineScore","event.LateralMovement", "event.IncidentStartTime", "event.IncidentEndTime", "event.FalconHostLink", "event.State" as eventType, FineScore, LateralMovement, IncidentStartTime, IncidentEndTime, FalconHostLink, State nodrop
```

**CrowdStrike - Falcon Endpoint Protection/FER Crowdstrike Falcon - RemoteResponseSession/FER Crowdstrike Falcon - RemoteResponseSession**
```
_sourceCategory={{Logsdatasource}}   RemoteResponseSession*
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| json field=_raw "event.SessionId","event.HostnameField", "event.UserName", "event.Commands", "event.StartTimestamp", "event.EndTimestamp" as sessionID, hosname, user_name, command, starttime1, endtime1 nodrop
```

**CrowdStrike - Falcon Endpoint Protection/High Severity Detections by Host/High Severity Detections by Host**
```
_sourceCategory={{Logsdatasource}}  DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme nodrop
```

**CrowdStrike - Falcon Endpoint Protection/High Severity Detections by User/High Severity Detections by User**
```
_sourceCategory={{Logsdatasource}}  DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme nodrop
```

**CrowdStrike - Falcon Endpoint Protection/High Severity Detections/High Severity Detections**
```
_sourceCategory={{Logsdatasource}}   DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme nodrop
```

**CrowdStrike - Falcon Endpoint Protection/High Severity Trending IOCs/High Severity Trending IOCs**
```
_sourceCategory={{Logsdatasource}}  DetectionSummaryEvent
| json "metadata.eventType", "metadata.customerIDString", "metadata.eventCreationTime" as event_type, customer_id, event_time
| formatDate(fromMillis(event_time), "MM/dd/yyyy HH:mm:ss:SSS") as event_time
| where event_type="DetectionSummaryEvent"
| json  "event.Tactic","event.Technique", "event.Objective", "event.ComputerName", "event.UserName", "event.DetectId", "event.DetectDescription", "event.Severity", "event.SeverityName", "event.FileName", "event.FilePath", "event.CommandLine", "event.MD5String", "event.SHA1String", "event.MachineDomain" , "event.FalconHostLink", "event.IOCType", "event.IOCValue", "event.LocalIP", "event.MACAddress", "event.ProcessEndTime" as tactic, technique, objective, computer_name, user_name, detect_id, detect_desc, severity, severity_name, file_name, file_path, cmd_line, md5_string, sha1_string, machine_domain, falconHost_link, IOC_Ttype, IOC_value, local_ip, mac_adderess, process_endTIme nodrop
```


