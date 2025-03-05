# Parsers For Cylance

## Parser:
```
| parse "Event Type: *, Event Name: *, Device Name: *, File Path: *, Interpreter: *, Interpreter Version: *, Zone Names: (*), User Name: *, Device Id: *, Policy Name: *" as event_type, event_name, device_name, filepath, interpreter, interpreterVersion, zone, user, device_id, policy nodrop
```
### Use Cases:
Action Trend, App Control, AuditLog, Cylance - Systems with Old Interpreter version, Device, Device Control, Device Control Event Details, Distinct Hosts, Distinct Hosts by Zone, Distinct Hosts By Zone, Event Name, Event Name Trend, Event Names, Event Trend - Time Compare, Event Trend by Actions, Event Type Trend, Event Types, Events, Events by Action, Events by Interpreter - Trend, Events by Name - Trend, Events Time Compare Trend, Events Trend, Exploit Attempt, External Device Types, External Device Types by Zone, External Device Vendor and Product IDs, Old Agents, Old Interpreter, Recent Events, Recent Exploit Attempt Details, Script Control, Threat, Threat Classification, Threat Related Event Outlier, Top Actions, Top Agent Versions, Top Blocked, Terminated Processes, Top Device Names, Top Event Names, Top Exploit Control Violation Type, Top External Device Names, Top Files, Top Hosts, Top Interpreters, Top OS, Top Policies, Top Source IPs, Top Threat Classifications, Top Threat FileTypes, Top Users, Top Violations, Top Zones, Total Events, Unique Agent Versions, Unique Device Names, Unique Devices, Unique Event Names, Unique External Device Product IDs, Unique External Device Vendor IDs, Unique External Devices, Unique IP Addresses, Unique Mac Addresses, Unique Policies, Unique Users, Unique Violation Types, Unique Zones, User Activity Location



## Parser:
```
| parse "Event Type: *, Event Name: *, Device Name: *, File Path: *, Interpreter: *, Interpreter Version: *, Zone Names: (*), User Name: *, Device Id: *, Policy Name: *" as event_type, event_name, device_name, filepath, interpreter, interpreterVersion, zone, user, device_id, policy nodrop
| parse regex field=interpreterVersion "(?<MajorVersion>\d+\.\d+)\."
```
### Use Cases:
Action Trend, App Control, AuditLog, Cylance - Systems with Old Interpreter version, Device, Device Control, Device Control Event Details, Distinct Hosts, Distinct Hosts By Zone, Distinct Hosts by Zone, Event Name, Event Name Trend, Event Trend - Time Compare, Event Trend by Actions, Event Type Trend, Event Types, Events, Events by Action, Events by Interpreter - Trend, Events by Name - Trend, Events Time Compare Trend, Events Trend, Exploit Attempt, External Device Types, External Device Types by Zone, External Device Vendor and Product IDs, Old Agents, Old Interpreter, Recent Events, Recent Exploit Attempt Details, Script Control, Threat, Threat Classification, Threat Related Event Outlier, Top Actions, Top Agent Versions, Top Blocked, Terminated Processes, Top Device Names, Top Event Names, Top Exploit Control Violation Type, Top External Device Names, Top Files, Top Hosts, Top Interpreters, Top OS, Top Policies, Top Source IPs, Top Threat Classifications, Top Threat FileTypes, Top Users, Top Violations, Top Zones, Total Events, Unique Agent Versions, Unique Device Names, Unique Devices, Unique Event Names, Unique External Device Product IDs, Unique External Device Vendor IDs, Unique External Devices, Unique IP Addresses, Unique Mac Addresses, Unique Policies, Unique Users, Unique Violation Types, Unique Zones, User Activity Location



## Parser:
```
| parse "Event Type: *, Event Name: *, Device Name: *, File Path: *, Interpreter: *, Interpreter Version: *, Zone Names: (*), User Name: *, Device Id: *, Policy Name: *" as event_type, event_name, device_name, filepath, interpreter, interpreterVersion, zone, user, device_id, policy nodrop
| parse regex field=zone "\s*(?<zones>[^,]*)" multi nodrop
```
### Use Cases:
Action Trend, App Control, AuditLog, Cylance - Systems with Old Interpreter version, Device, Device Control, Device Control Event Details, Distinct Hosts, Distinct Hosts By Zone, Distinct Hosts by Zone, Event Name, Event Name Trend, Event Trend - Time Compare, Event Trend by Actions, Event Type Trend, Event Types, Events, Events by Action, Events by Interpreter - Trend, Events Time Compare Trend, Events Trend, Exploit Attempt, External Device Types, External Device Types by Zone, External Device Vendor and Product IDs, Old Agents, Recent Events, Recent Exploit Attempt Details, Script Control, Threat, Threat Classification, Threat Related Event Outlier, Top Actions, Top Agent Versions, Top Blocked, Terminated Processes, Top Device Names, Top Event Names, Top Exploit Control Violation Type, Top External Device Names, Top Files, Top Hosts, Top Interpreters, Top OS, Top Policies, Top Source IPs, Top Threat Classifications, Top Threat FileTypes, Top Users, Top Violations, Top Zones, Total Events, Unique Agent Versions, Unique Device Names, Unique Devices, Unique Event Names, Unique External Device Product IDs, Unique External Device Vendor IDs, Unique External Devices, Unique IP Addresses, Unique Mac Addresses, Unique Policies, Unique Users, Unique Violation Types, Unique Zones, User Activity Location



## Parser:
```
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as 
```
### Use Cases:
Action Trend, Cylance - Systems with Old Interpreter version, Device Control Event Details, Distinct Hosts, Distinct Hosts By Zone, Event Name, Event Name Trend, Event Trend - Time Compare, Event Trend by Actions, Events, Events by Action, Events Trend, External Device Types, External Device Types by Zone, External Device Vendor and Product IDs, Old Agents, Recent Events, Recent Exploit Attempt Details, Top Actions, Top Agent Versions, Top Blocked, Terminated Processes, Top Event Names, Top External Device Names, Top Hosts, Top OS, Top Policies, Top Source IPs, Top Users, Top Zones, Unique Agent Versions, Unique Device Names, Unique Event Names, Unique External Device Product IDs, Unique External Device Vendor IDs, Unique External Devices, Unique IP Addresses, Unique Mac Addresses, Unique Users, Unique Violation Types, User Activity Location



## Parser:
```
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as event_type, event_name, device_name, ip_address, action, pid, pname, user, violation, zone, device_id, policy
```
### Use Cases:
Action Trend, App Control, AuditLog, Cylance - Systems with Old Interpreter version, Device, Device Control Event Details, Distinct Hosts, Distinct Hosts By Zone, Event Name, Event Name Trend, Event Trend - Time Compare, Event Trend by Actions, Events, Events by Action, Events Trend, Exploit Attempt, External Device Types, External Device Types by Zone, External Device Vendor and Product IDs, Old Agents, Recent Events, Recent Exploit Attempt Details, Top Actions, Top Agent Versions, Top Blocked, Terminated Processes, Top Event Names, Top Exploit Control Violation Type, Top External Device Names, Top Hosts, Top Interpreters, Top OS, Top Policies, Top Source IPs, Top Users, Top Violations, Top Zones, Unique Agent Versions, Unique Device Names, Unique Devices, Unique Event Names, Unique External Device Product IDs, Unique External Device Vendor IDs, Unique External Devices, Unique IP Addresses, Unique Mac Addresses, Unique Policies, Unique Users, Unique Violation Types, User Activity Location



## Parser:
```
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as event_type, event_name, device_name, ip_address, action, pid, pname, user, violation, zone, device_id, policy
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi
```
### Use Cases:
Action Trend, Cylance - Systems with Old Interpreter version, Device Control Event Details, Distinct Hosts, Distinct Hosts By Zone, Event Name, Event Name Trend, Event Trend - Time Compare, Events, Events by Action, Events Trend, External Device Types, External Device Types by Zone, External Device Vendor and Product IDs, Old Agents, Recent Events, Top Actions, Top Agent Versions, Top Blocked, Terminated Processes, Top Event Names, Top External Device Names, Top Hosts, Top OS, Top Policies, Top Source IPs, Top Users, Top Zones, Unique Agent Versions, Unique Device Names, Unique Event Names, Unique External Device Product IDs, Unique External Device Vendor IDs, Unique External Devices, Unique IP Addresses, Unique Mac Addresses, Unique Users, User Activity Location



## Parser:
```
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as event_type, event_name, device_name, ip_address, action, pid, pname, user, violation, zone, device_id, policy
| parse regex field=zone "\s*(?<zones>[^,]*)" multi nodrop
```
### Use Cases:
Action Trend, Cylance - Systems with Old Interpreter version, Device Control Event Details, Distinct Hosts, Distinct Hosts By Zone, Event Name, Event Name Trend, Event Trend - Time Compare, Events, Events by Action, Events Trend, External Device Types, External Device Types by Zone, External Device Vendor and Product IDs, Old Agents, Recent Events, Top Agent Versions, Top Event Names, Top External Device Names, Top Hosts, Top OS, Top Policies, Top Source IPs, Top Users, Top Zones, Unique Agent Versions, Unique Device Names, Unique Event Names, Unique External Device Product IDs, Unique External Device Vendor IDs, Unique External Devices, Unique IP Addresses, Unique Mac Addresses, Unique Users, User Activity Location



## Parser:
```
| parse "Event Type: *, Event Name: *, Threat Class: *, Threat Subclass: *, SHA256: *, MD5: *" as event_type, event_name, threat_class, threat_subclass, sha, md5
```
### Use Cases:
Action Trend, App Control, AuditLog, Cylance - Systems with Old Interpreter version, Detected By Trend, Device, Device Control, Device Control Event Details, Distinct Hosts, Distinct Hosts by Zone, Distinct Hosts By Zone, Dual Use Subclass Trend, Event Name, Event Name Trend, Event Names, Event Trend - Time Compare, Event Trend by Actions, Event Type Trend, Event Types, Events, Events Break Down, Events by Action, Events by Interpreter - Trend, Events by Name - Trend, Events Time Compare Trend, Events Trend, Exploit Attempt, External Device Types, External Device Types by Zone, External Device Vendor and Product IDs, Malware Subclass Trend, Old Agents, Old Interpreter, PUP Subclass Trend, Recent Events, Recent Exploit Attempt Details, Recent Malware, Dual Use  and PUP Files, Recent Safe Files, Script Control, Threat, Threat Class, Threat Classification, Threat Related Event Outlier, Threat Severity, Threat Severity Across Zones, Threats Blocked, Threats Severity by Zone, Top Actions, Top Agent Versions, Top Blocked, Terminated Processes, Top Detected By, Top Device Names, Top Event Names, Top Exploit Control Violation Type, Top External Device Names, Top File Names, Top File Types, Top Files, Top Host - High Avg Score Threats, Top Hosts, Top Hosts - Multiple Critical Threats, Top Interpreters, Top IP Address, Top OS, Top Paths, Top Policies, Top Scores, Top SHA, Top SHA Occurring Multiple Times, Top Source IPs, Top Status, Top Threat Classification, Top Threat Classifications, Top Threat FileTypes, Top Users, Top Violations, Top Zones, Total Events, Unique Agent Versions, Unique Device Names, Unique Devices, Unique Event Names, Unique External Device Product IDs, Unique External Device Vendor IDs, Unique External Devices, Unique IP Addresses, Unique Mac Addresses, Unique Policies, Unique Threats, Unique Users, Unique Violation Types, Unique Zones, User Activity Location



## Parser:
```
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
```
### Use Cases:
Action Trend, App Control, AuditLog, Cylance - Systems with Old Interpreter version, Device, Device Control, Device Control Event Details, Distinct Hosts, Distinct Hosts By Zone, Event Name, Event Name Trend, Event Trend - Time Compare, Event Trend by Actions, Event Type Trend, Event Types, Events, Events by Action, Events Time Compare Trend, Events Trend, Exploit Attempt, External Device Types, External Device Types by Zone, External Device Vendor and Product IDs, Old Agents, Recent Events, Recent Exploit Attempt Details, Script Control, Threat Classification, Threat Related Event Outlier, Top Actions, Top Agent Versions, Top Blocked, Terminated Processes, Top Device Names, Top Event Names, Top Exploit Control Violation Type, Top External Device Names, Top Hosts, Top Interpreters, Top OS, Top Policies, Top Source IPs, Top Threat Classifications, Top Threat FileTypes, Top Users, Top Violations, Top Zones, Total Events, Unique Agent Versions, Unique Device Names, Unique Devices, Unique Event Names, Unique External Device Product IDs, Unique External Device Vendor IDs, Unique External Devices, Unique IP Addresses, Unique Mac Addresses, Unique Policies, Unique Users, Unique Violation Types, Unique Zones, User Activity Location



## Parser:
```
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, Agent Version: *, IP Address: (*), MAC Address: (*), Logged On Users: (*), OS: *, Zone Names: (*)" as device_name, agent_version, ip_address, mac_address, LoggedOnUsers, os, zone nodrop
| parse "Device Name: *, Zone Names: (*), Device Id: *" as device_name, zone, device_id  
| parse "Device Message: *, User: *, Zone Names: (*), Device Id: *" as  device_message, user, zone, device_id nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| parse field=device_message "Device: *; " as device_name nodrop
| parse regex field=LoggedOnUsers "\s*(?<users>[^,]*)" multi nodrop
```
### Use Cases:
Cylance - Systems with Old Interpreter version, Event Name, Event Name Trend, Events, Events Trend, Old Agents, Recent Events, Top Hosts, Top OS, Top Source IPs, Top Users, Top Zones, Unique Device Names, Unique Event Names, Unique IP Addresses, Unique Users, User Activity Location



## Parser:
```
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, Agent Version: *, IP Address: (*), MAC Address: (*), Logged On Users: (*), OS: *, Zone Names: (*)" as device_name, agent_version, ip_address, mac_address, LoggedOnUsers, os, zone nodrop
| parse "Device Name: *, Zone Names: (*), Device Id: *" as device_name, zone, device_id nodrop
| parse "Device Message: *, User: *, Zone Names: (*), Device Id: *" as  device_message, user, zone, device_id nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| parse field=device_message "Device: *; " as device_name nodrop
| parse regex field=LoggedOnUsers "\s*(?<users>[^,]*)" multi nodrop
```
### Use Cases:
Cylance - Systems with Old Interpreter version, Event Name, Event Name Trend, Events, Events Trend, Old Agents, Recent Events, Top Agent Versions, Top Event Names, Top Hosts, Top OS, Top Source IPs, Top Users, Top Zones, Unique Agent Versions, Unique Device Names, Unique Event Names, Unique IP Addresses, Unique Mac Addresses, Unique Users, User Activity Location



## Parser:
```
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, Agent Version: *, IP Address: (*), MAC Address: (*), Logged On Users: (*), OS: *, Zone Names: (*)" as device_name, agent_version, ip_address, mac_address, LoggedOnUsers, os, zone nodrop
| parse "Device Name: *, Zone Names: (*), Device Id: *" as device_name, zone, device_id nodrop
| parse "Device Message: *, User: *, Zone Names: (*), Device Id: *" as  device_message, user, zone, device_id nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| parse field=device_message "Device: *; " as device_name nodrop
| parse regex field=LoggedOnUsers "\s*(?<users>[^,]*)" multi nodrop
| parse regex field=agent_version "(?<MajorVersion>\d+\.\d+)\."
```
### Use Cases:
Cylance - Systems with Old Interpreter version, Event Name, Event Name Trend, Events, Old Agents, Recent Events, Top Source IPs, Top Users, Unique Event Names, Unique IP Addresses, User Activity Location



## Parser:
```
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, Agent Version: *, IP Address: (*), MAC Address: (*), Logged On Users: (*), OS: *, Zone Names: (*)" as device_name, agent_version, ip_address, mac_address, LoggedOnUsers, os, zone nodrop
| parse "Device Name: *, Zone Names: (*), Device Id: *" as device_name, zone, device_id nodrop
| parse "Device Message: *, User: *, Zone Names: (*), Device Id: *" as  device_message, user, zone, device_id nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| parse field=device_message "Device: *; " as device_name nodrop
| parse regex field=LoggedOnUsers "\s*(?<users>[^,]*)" multi nodrop
| parse regex field=zone "\s*(?<zones>[^,]*)" multi nodrop
```
### Use Cases:
Cylance - Systems with Old Interpreter version, Event Name, Event Name Trend, Events, Events Trend, Old Agents, Recent Events, Top OS, Top Source IPs, Top Users, Top Zones, Unique Device Names, Unique Event Names, Unique IP Addresses, Unique Users, User Activity Location



## Parser:
```
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, External Device Type: *, External Device Vendor ID: *, External Device Name: *, External Device Product ID: *, External Device Serial Number: *, Zone Names: (*), Device Id: *, Policy Name: *" as device_name, external_device_type, external_device_vendor_id, external_device_name, external_device_product_id, external_device_serialno, zone, device_id, policy nodrop
```
### Use Cases:
Action Trend, Cylance - Systems with Old Interpreter version, Device Control Event Details, Distinct Hosts, Distinct Hosts By Zone, Event Name, Event Name Trend, Event Trend - Time Compare, Events, Events by Action, Events Trend, External Device Types, External Device Types by Zone, External Device Vendor and Product IDs, Old Agents, Recent Events, Top Agent Versions, Top Event Names, Top External Device Names, Top Hosts, Top OS, Top Policies, Top Source IPs, Top Users, Top Zones, Unique Agent Versions, Unique Device Names, Unique Event Names, Unique External Device Product IDs, Unique External Device Vendor IDs, Unique External Devices, Unique IP Addresses, Unique Mac Addresses, Unique Users, User Activity Location



## Parser:
```
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, External Device Type: *, External Device Vendor ID: *, External Device Name: *, External Device Product ID: *, External Device Serial Number: *, Zone Names: (*), Device Id: *, Policy Name: *" as device_name, external_device_type, external_device_vendor_id, external_device_name, external_device_product_id, external_device_serialno, zone, device_id, policy nodrop
| parse regex field=zone "\s*(?<zones>[^,]*)" multi nodrop
```
### Use Cases:
Cylance - Systems with Old Interpreter version, Distinct Hosts, Distinct Hosts By Zone, Event Name, Event Name Trend, Events, Events by Action, Events Trend, External Device Types, External Device Types by Zone, Old Agents, Recent Events, Top Agent Versions, Top Event Names, Top Hosts, Top OS, Top Source IPs, Top Users, Top Zones, Unique Agent Versions, Unique Device Names, Unique Event Names, Unique External Device Product IDs, Unique IP Addresses, Unique Mac Addresses, Unique Users, User Activity Location



## Parser:
```
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *," as device_name nodrop
| parse "Device Id: *," as device_id nodrop
```
### Use Cases:
Action Trend, Cylance - Systems with Old Interpreter version, Device Control Event Details, Distinct Hosts, Distinct Hosts By Zone, Event Name, Event Name Trend, Event Trend - Time Compare, Event Trend by Actions, Events, Events by Action, Events Trend, External Device Types, External Device Types by Zone, External Device Vendor and Product IDs, Old Agents, Recent Events, Recent Exploit Attempt Details, Top Actions, Top Agent Versions, Top Blocked, Terminated Processes, Top Event Names, Top External Device Names, Top Hosts, Top OS, Top Policies, Top Source IPs, Top Users, Top Violations, Top Zones, Unique Agent Versions, Unique Device Names, Unique Devices, Unique Event Names, Unique External Device Product IDs, Unique External Device Vendor IDs, Unique External Devices, Unique IP Addresses, Unique Mac Addresses, Unique Users, Unique Violation Types, User Activity Location



## Parser:
```
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Message: *," as msg nodrop | parse "Source IP: *," as src_ip nodrop | parse "User: *" as user nodrop
| parse field=msg "Device: * was auto assigned to Zone: *" as device_name, zone nodrop
| parse field=msg "Provider: *" as provider nodrop
| parse regex field=msg "Device:\s*(?<device_name>[^\s]*)\s*$" nodrop
| parse field=msg "Tier: *; Zones: *; Agent Version: *" as tier, zone, agent_version nodrop
| parse field=msg "Policy Assigned: *; Devices: *" as policy, device_name nodrop
| parse field=msg "Device: *; " as device_name nodrop
| parse field=msg "Devices: *" as device_name nodrop
| parse field=msg "SHA256: *" as sha nodrop
| parse field=msg "Zone: *; Policy Assigned: *; Policy Applied To All Devices In Zone: *" as zone, policy, PolicyAppliedToAllDevicesInZone
```
### Use Cases:
Cylance - Systems with Old Interpreter version, Event Name, Event Name Trend, Events, Recent Events, Top Source IPs, Top Users, User Activity Location



## Parser:
```
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Policy Name: *" as policy nodrop
```
### Use Cases:
Action Trend, Cylance - Systems with Old Interpreter version, Device Control Event Details, Distinct Hosts, Distinct Hosts By Zone, Event Name, Event Name Trend, Event Trend - Time Compare, Event Trend by Actions, Events, Events by Action, Events Trend, External Device Types, External Device Types by Zone, External Device Vendor and Product IDs, Old Agents, Recent Events, Recent Exploit Attempt Details, Top Actions, Top Agent Versions, Top Blocked, Terminated Processes, Top Event Names, Top External Device Names, Top Hosts, Top OS, Top Policies, Top Source IPs, Top Users, Top Violations, Top Zones, Unique Agent Versions, Unique Device Names, Unique Devices, Unique Event Names, Unique External Device Product IDs, Unique External Device Vendor IDs, Unique External Devices, Unique IP Addresses, Unique Mac Addresses, Unique Policies, Unique Users, Unique Violation Types, User Activity Location



## Parser:
```
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Zone Names: (*)" as zone nodrop
| parse regex field=zone "\s*(?<zones>[^,]*)" multi nodrop
```
### Use Cases:
Action Trend, App Control, AuditLog, Cylance - Systems with Old Interpreter version, Device, Device Control Event Details, Distinct Hosts, Distinct Hosts By Zone, Event Name, Event Name Trend, Event Trend - Time Compare, Event Trend by Actions, Event Type Trend, Event Types, Events, Events by Action, Events Trend, Exploit Attempt, External Device Types, External Device Types by Zone, External Device Vendor and Product IDs, Old Agents, Recent Events, Recent Exploit Attempt Details, Script Control, Threat Classification, Top Actions, Top Agent Versions, Top Blocked, Terminated Processes, Top Event Names, Top Exploit Control Violation Type, Top External Device Names, Top Hosts, Top Interpreters, Top OS, Top Policies, Top Source IPs, Top Threat FileTypes, Top Users, Top Violations, Top Zones, Unique Agent Versions, Unique Device Names, Unique Devices, Unique Event Names, Unique External Device Product IDs, Unique External Device Vendor IDs, Unique External Devices, Unique IP Addresses, Unique Mac Addresses, Unique Policies, Unique Users, Unique Violation Types, Unique Zones, User Activity Location



## Parser:
```
| parse "Event Type: *," as event_type
```
### Use Cases:
Action Trend, App Control, AuditLog, Cylance - Systems with Old Interpreter version, Device, Device Control, Device Control Event Details, Distinct Hosts, Distinct Hosts By Zone, Event Name, Event Name Trend, Event Trend - Time Compare, Event Trend by Actions, Event Type Trend, Event Types, Events, Events by Action, Events Time Compare Trend, Events Trend, Exploit Attempt, External Device Types, External Device Types by Zone, External Device Vendor and Product IDs, Old Agents, Recent Events, Recent Exploit Attempt Details, Script Control, Threat, Threat Classification, Threat Related Event Outlier, Top Actions, Top Agent Versions, Top Blocked, Terminated Processes, Top Device Names, Top Event Names, Top Exploit Control Violation Type, Top External Device Names, Top Hosts, Top Interpreters, Top OS, Top Policies, Top Source IPs, Top Threat Classifications, Top Threat FileTypes, Top Users, Top Violations, Top Zones, Total Events, Unique Agent Versions, Unique Device Names, Unique Devices, Unique Event Names, Unique External Device Product IDs, Unique External Device Vendor IDs, Unique External Devices, Unique IP Addresses, Unique Mac Addresses, Unique Policies, Unique Users, Unique Violation Types, Unique Zones, User Activity Location



## Parser:
```
| parse "Event Type: *," as event_type nodrop
| parse "Device Name: *," as device_name nodrop
```
### Use Cases:
Action Trend, App Control, AuditLog, Cylance - Systems with Old Interpreter version, Device, Device Control, Device Control Event Details, Distinct Hosts, Distinct Hosts By Zone, Event Name, Event Name Trend, Event Trend - Time Compare, Event Trend by Actions, Event Type Trend, Event Types, Events, Events by Action, Events Time Compare Trend, Events Trend, Exploit Attempt, External Device Types, External Device Types by Zone, External Device Vendor and Product IDs, Old Agents, Recent Events, Recent Exploit Attempt Details, Script Control, Threat Classification, Top Actions, Top Agent Versions, Top Blocked, Terminated Processes, Top Device Names, Top Event Names, Top Exploit Control Violation Type, Top External Device Names, Top Hosts, Top Interpreters, Top OS, Top Policies, Top Source IPs, Top Threat Classifications, Top Threat FileTypes, Top Users, Top Violations, Top Zones, Unique Agent Versions, Unique Device Names, Unique Devices, Unique Event Names, Unique External Device Product IDs, Unique External Device Vendor IDs, Unique External Devices, Unique IP Addresses, Unique Mac Addresses, Unique Policies, Unique Users, Unique Violation Types, Unique Zones, User Activity Location



## Parser:
```
| parse "Event Type: *," as event_type nodrop
| parse "Event Name: *, Device Name: *, IP Address: (*), Action: *, Action Type: *, File Path: *, SHA256: *" as event_name, device_name, ip_address, action, action_type, filepath, sha nodrop
```
### Use Cases:
Action Trend, App Control, Cylance - Systems with Old Interpreter version, Device, Device Control Event Details, Distinct Hosts, Distinct Hosts By Zone, Event Name, Event Name Trend, Event Trend - Time Compare, Event Trend by Actions, Events, Events by Action, Events Trend, Exploit Attempt, External Device Types, External Device Types by Zone, External Device Vendor and Product IDs, Old Agents, Recent Events, Recent Exploit Attempt Details, Top Actions, Top Agent Versions, Top Blocked, Terminated Processes, Top Event Names, Top External Device Names, Top Hosts, Top Interpreters, Top OS, Top Policies, Top Source IPs, Top Users, Top Violations, Top Zones, Unique Agent Versions, Unique Device Names, Unique Devices, Unique Event Names, Unique External Device Product IDs, Unique External Device Vendor IDs, Unique External Devices, Unique IP Addresses, Unique Mac Addresses, Unique Policies, Unique Users, Unique Violation Types, User Activity Location



## Parser:
```
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```
### Use Cases:
Action Trend, App Control, AuditLog, Cylance - Systems with Old Interpreter version, Detected By Trend, Device, Device Control, Device Control Event Details, Distinct Hosts, Distinct Hosts by Zone, Distinct Hosts By Zone, Event Name, Event Name Trend, Event Names, Event Trend - Time Compare, Event Trend by Actions, Event Type Trend, Event Types, Events, Events by Action, Events by Interpreter - Trend, Events by Name - Trend, Events Time Compare Trend, Events Trend, Exploit Attempt, External Device Types, External Device Types by Zone, External Device Vendor and Product IDs, Old Agents, Old Interpreter, Recent Events, Recent Exploit Attempt Details, Script Control, Threat, Threat Classification, Threat Related Event Outlier, Threat Severity, Threat Severity Across Zones, Threats Blocked, Threats Severity by Zone, Top Actions, Top Agent Versions, Top Blocked, Terminated Processes, Top Detected By, Top Device Names, Top Event Names, Top Exploit Control Violation Type, Top External Device Names, Top File Names, Top File Types, Top Files, Top Host - High Avg Score Threats, Top Hosts, Top Hosts - Multiple Critical Threats, Top Interpreters, Top IP Address, Top OS, Top Paths, Top Policies, Top Scores, Top SHA, Top Source IPs, Top Status, Top Threat Classification, Top Threat Classifications, Top Threat FileTypes, Top Users, Top Violations, Top Zones, Total Events, Unique Agent Versions, Unique Device Names, Unique Devices, Unique Event Names, Unique External Device Product IDs, Unique External Device Vendor IDs, Unique External Devices, Unique IP Addresses, Unique Mac Addresses, Unique Policies, Unique Threats, Unique Users, Unique Violation Types, Unique Zones, User Activity Location



## Parser:
```
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```
### Use Cases:
Action Trend, App Control, AuditLog, Cylance - Systems with Old Interpreter version, Detected By Trend, Device, Device Control, Device Control Event Details, Distinct Hosts, Distinct Hosts by Zone, Distinct Hosts By Zone, Event Name, Event Name Trend, Event Names, Event Trend - Time Compare, Event Trend by Actions, Event Type Trend, Event Types, Events, Events by Action, Events by Interpreter - Trend, Events by Name - Trend, Events Time Compare Trend, Events Trend, Exploit Attempt, External Device Types, External Device Types by Zone, External Device Vendor and Product IDs, Old Agents, Old Interpreter, Recent Events, Recent Exploit Attempt Details, Script Control, Threat, Threat Classification, Threat Related Event Outlier, Threat Severity, Threat Severity Across Zones, Threats Blocked, Top Actions, Top Agent Versions, Top Blocked, Terminated Processes, Top Detected By, Top Device Names, Top Event Names, Top Exploit Control Violation Type, Top External Device Names, Top File Names, Top File Types, Top Files, Top Host - High Avg Score Threats, Top Hosts, Top Hosts - Multiple Critical Threats, Top Interpreters, Top IP Address, Top OS, Top Paths, Top Policies, Top Scores, Top SHA, Top Source IPs, Top Status, Top Threat Classification, Top Threat Classifications, Top Threat FileTypes, Top Users, Top Violations, Top Zones, Total Events, Unique Agent Versions, Unique Device Names, Unique Devices, Unique Event Names, Unique External Device Product IDs, Unique External Device Vendor IDs, Unique External Devices, Unique IP Addresses, Unique Mac Addresses, Unique Policies, Unique Threats, Unique Users, Unique Violation Types, Unique Zones, User Activity Location



## Parser:
```
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| parse regex field=zone "\s*(?<zones>[^,]*)" multi nodrop
```
### Use Cases:
Action Trend, App Control, AuditLog, Cylance - Systems with Old Interpreter version, Detected By Trend, Device, Device Control, Device Control Event Details, Distinct Hosts, Distinct Hosts By Zone, Distinct Hosts by Zone, Event Name, Event Name Trend, Event Names, Event Trend - Time Compare, Event Trend by Actions, Event Type Trend, Event Types, Events, Events by Action, Events by Interpreter - Trend, Events by Name - Trend, Events Time Compare Trend, Events Trend, Exploit Attempt, External Device Types, External Device Types by Zone, External Device Vendor and Product IDs, Old Agents, Old Interpreter, Recent Events, Recent Exploit Attempt Details, Script Control, Threat, Threat Classification, Threat Related Event Outlier, Threat Severity, Threat Severity Across Zones, Top Actions, Top Agent Versions, Top Blocked, Terminated Processes, Top Detected By, Top Device Names, Top Event Names, Top Exploit Control Violation Type, Top External Device Names, Top File Types, Top Files, Top Hosts, Top Interpreters, Top IP Address, Top OS, Top Policies, Top SHA, Top Source IPs, Top Status, Top Threat Classification, Top Threat Classifications, Top Threat FileTypes, Top Users, Top Violations, Top Zones, Total Events, Unique Agent Versions, Unique Device Names, Unique Devices, Unique Event Names, Unique External Device Product IDs, Unique External Device Vendor IDs, Unique External Devices, Unique IP Addresses, Unique Mac Addresses, Unique Policies, Unique Threats, Unique Users, Unique Violation Types, Unique Zones, User Activity Location


