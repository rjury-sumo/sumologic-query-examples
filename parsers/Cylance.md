# Parsers For Cylance

**Cylance/AuditLog/Event Name**
```
_sourceCategory={{_sourceCategory}} "Event Type:" AuditLog
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

**Cylance/AuditLog/Event Name Trend**
```
_sourceCategory={{_sourceCategory}} "Event Type:" AuditLog
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

**Cylance/AuditLog/Events**
```
_sourceCategory={{_sourceCategory}} "Event Type:" AuditLog
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

**Cylance/AuditLog/Recent Events**
```
_sourceCategory={{_sourceCategory}} "Event Type:" AuditLog
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

**Cylance/AuditLog/Top Source IPs**
```
_sourceCategory={{_sourceCategory}} "Event Type:" AuditLog
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

**Cylance/AuditLog/Top Users**
```
_sourceCategory={{_sourceCategory}} "Event Type:" AuditLog
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

**Cylance/AuditLog/User Activity Location**
```
_sourceCategory={{_sourceCategory}} "Event Type:" AuditLog
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

**Cylance/Device Control/Action Trend**
```
_sourceCategory={{_sourceCategory}} "Event Type: DeviceControl"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, External Device Type: *, External Device Vendor ID: *, External Device Name: *, External Device Product ID: *, External Device Serial Number: *, Zone Names: (*), Device Id: *, Policy Name: *" as device_name, external_device_type, external_device_vendor_id, external_device_name, external_device_product_id, external_device_serialno, zone, device_id, policy nodrop
```

**Cylance/Device Control/Device Control Event Details**
```
_sourceCategory={{_sourceCategory}} "Event Type: DeviceControl"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, External Device Type: *, External Device Vendor ID: *, External Device Name: *, External Device Product ID: *, External Device Serial Number: *, Zone Names: (*), Device Id: *, Policy Name: *" as device_name, external_device_type, external_device_vendor_id, external_device_name, external_device_product_id, external_device_serialno, zone, device_id, policy nodrop
```

**Cylance/Device Control/Distinct Hosts**
```
_sourceCategory={{_sourceCategory}} "Event Type: DeviceControl"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, External Device Type: *, External Device Vendor ID: *, External Device Name: *, External Device Product ID: *, External Device Serial Number: *, Zone Names: (*), Device Id: *, Policy Name: *" as device_name, external_device_type, external_device_vendor_id, external_device_name, external_device_product_id, external_device_serialno, zone, device_id, policy nodrop
```

**Cylance/Device Control/Distinct Hosts By Zone**
```
_sourceCategory={{_sourceCategory}} "Event Type: DeviceControl"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, External Device Type: *, External Device Vendor ID: *, External Device Name: *, External Device Product ID: *, External Device Serial Number: *, Zone Names: (*), Device Id: *, Policy Name: *" as device_name, external_device_type, external_device_vendor_id, external_device_name, external_device_product_id, external_device_serialno, zone, device_id, policy nodrop
| parse regex field=zone "\s*(?<zones>[^,]*)" multi nodrop
```

**Cylance/Device Control/Event Trend - Time Compare**
```
_sourceCategory={{_sourceCategory}} "Event Type: DeviceControl"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, External Device Type: *, External Device Vendor ID: *, External Device Name: *, External Device Product ID: *, External Device Serial Number: *, Zone Names: (*), Device Id: *, Policy Name: *" as device_name, external_device_type, external_device_vendor_id, external_device_name, external_device_product_id, external_device_serialno, zone, device_id, policy nodrop
```

**Cylance/Device Control/Events**
```
_sourceCategory={{_sourceCategory}} "Event Type: DeviceControl"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, External Device Type: *, External Device Vendor ID: *, External Device Name: *, External Device Product ID: *, External Device Serial Number: *, Zone Names: (*), Device Id: *, Policy Name: *" as device_name, external_device_type, external_device_vendor_id, external_device_name, external_device_product_id, external_device_serialno, zone, device_id, policy nodrop
```

**Cylance/Device Control/Events by Action**
```
_sourceCategory={{_sourceCategory}} "Event Type: DeviceControl"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, External Device Type: *, External Device Vendor ID: *, External Device Name: *, External Device Product ID: *, External Device Serial Number: *, Zone Names: (*), Device Id: *, Policy Name: *" as device_name, external_device_type, external_device_vendor_id, external_device_name, external_device_product_id, external_device_serialno, zone, device_id, policy nodrop
```

**Cylance/Device Control/External Device Types**
```
_sourceCategory={{_sourceCategory}} "Event Type: DeviceControl"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, External Device Type: *, External Device Vendor ID: *, External Device Name: *, External Device Product ID: *, External Device Serial Number: *, Zone Names: (*), Device Id: *, Policy Name: *" as device_name, external_device_type, external_device_vendor_id, external_device_name, external_device_product_id, external_device_serialno, zone, device_id, policy nodrop
```

**Cylance/Device Control/External Device Types by Zone**
```
_sourceCategory={{_sourceCategory}} "Event Type: DeviceControl"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, External Device Type: *, External Device Vendor ID: *, External Device Name: *, External Device Product ID: *, External Device Serial Number: *, Zone Names: (*), Device Id: *, Policy Name: *" as device_name, external_device_type, external_device_vendor_id, external_device_name, external_device_product_id, external_device_serialno, zone, device_id, policy nodrop
```

**Cylance/Device Control/External Device Vendor and Product IDs**
```
_sourceCategory={{_sourceCategory}} "Event Type: DeviceControl"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, External Device Type: *, External Device Vendor ID: *, External Device Name: *, External Device Product ID: *, External Device Serial Number: *, Zone Names: (*), Device Id: *, Policy Name: *" as device_name, external_device_type, external_device_vendor_id, external_device_name, external_device_product_id, external_device_serialno, zone, device_id, policy nodrop
```

**Cylance/Device Control/Top External Device Names**
```
_sourceCategory={{_sourceCategory}} "Event Type: DeviceControl"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, External Device Type: *, External Device Vendor ID: *, External Device Name: *, External Device Product ID: *, External Device Serial Number: *, Zone Names: (*), Device Id: *, Policy Name: *" as device_name, external_device_type, external_device_vendor_id, external_device_name, external_device_product_id, external_device_serialno, zone, device_id, policy nodrop
```

**Cylance/Device Control/Top Hosts**
```
_sourceCategory={{_sourceCategory}} "Event Type: DeviceControl"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, External Device Type: *, External Device Vendor ID: *, External Device Name: *, External Device Product ID: *, External Device Serial Number: *, Zone Names: (*), Device Id: *, Policy Name: *" as device_name, external_device_type, external_device_vendor_id, external_device_name, external_device_product_id, external_device_serialno, zone, device_id, policy nodrop
| parse regex field=zone "\s*(?<zones>[^,]*)" multi nodrop
```

**Cylance/Device Control/Top Policies**
```
_sourceCategory={{_sourceCategory}} "Event Type: DeviceControl"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, External Device Type: *, External Device Vendor ID: *, External Device Name: *, External Device Product ID: *, External Device Serial Number: *, Zone Names: (*), Device Id: *, Policy Name: *" as device_name, external_device_type, external_device_vendor_id, external_device_name, external_device_product_id, external_device_serialno, zone, device_id, policy nodrop
```

**Cylance/Device Control/Top Zones**
```
_sourceCategory={{_sourceCategory}} "Event Type: DeviceControl"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, External Device Type: *, External Device Vendor ID: *, External Device Name: *, External Device Product ID: *, External Device Serial Number: *, Zone Names: (*), Device Id: *, Policy Name: *" as device_name, external_device_type, external_device_vendor_id, external_device_name, external_device_product_id, external_device_serialno, zone, device_id, policy nodrop
| parse regex field=zone "\s*(?<zones>[^,]*)" multi nodrop
```

**Cylance/Device Control/Unique External Device Product IDs**
```
_sourceCategory={{_sourceCategory}} "Event Type: DeviceControl"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, External Device Type: *, External Device Vendor ID: *, External Device Name: *, External Device Product ID: *, External Device Serial Number: *, Zone Names: (*), Device Id: *, Policy Name: *" as device_name, external_device_type, external_device_vendor_id, external_device_name, external_device_product_id, external_device_serialno, zone, device_id, policy nodrop
```

**Cylance/Device Control/Unique External Device Vendor IDs**
```
_sourceCategory={{_sourceCategory}} "Event Type: DeviceControl"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, External Device Type: *, External Device Vendor ID: *, External Device Name: *, External Device Product ID: *, External Device Serial Number: *, Zone Names: (*), Device Id: *, Policy Name: *" as device_name, external_device_type, external_device_vendor_id, external_device_name, external_device_product_id, external_device_serialno, zone, device_id, policy nodrop
```

**Cylance/Device Control/Unique External Devices**
```
_sourceCategory={{_sourceCategory}} "Event Type: DeviceControl"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, External Device Type: *, External Device Vendor ID: *, External Device Name: *, External Device Product ID: *, External Device Serial Number: *, Zone Names: (*), Device Id: *, Policy Name: *" as device_name, external_device_type, external_device_vendor_id, external_device_name, external_device_product_id, external_device_serialno, zone, device_id, policy nodrop
```

**Cylance/Device/Events Trend**
```
_sourceCategory={{_sourceCategory}} "Event Type: Device"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, Agent Version: *, IP Address: (*), MAC Address: (*), Logged On Users: (*), OS: *, Zone Names: (*)" as device_name, agent_version, ip_address, mac_address, LoggedOnUsers, os, zone nodrop
| parse "Device Name: *, Zone Names: (*), Device Id: *" as device_name, zone, device_id nodrop
| parse "Device Message: *, User: *, Zone Names: (*), Device Id: *" as  device_message, user, zone, device_id nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| parse field=device_message "Device: *; " as device_name nodrop
| if (isempty(ipaddress), ip_address, ipaddress) as ip_address
| parse regex field=LoggedOnUsers "\s*(?<users>[^,]*)" multi nodrop
```

**Cylance/Device/Old Agents**
```
_sourceCategory={{_sourceCategory}} "Event Type: Device" "Agent Version"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, Agent Version: *, IP Address: (*), MAC Address: (*), Logged On Users: (*), OS: *, Zone Names: (*)" as device_name, agent_version, ip_address, mac_address, LoggedOnUsers, os, zone nodrop
| parse "Device Name: *, Zone Names: (*), Device Id: *" as device_name, zone, device_id nodrop
| parse "Device Message: *, User: *, Zone Names: (*), Device Id: *" as  device_message, user, zone, device_id nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| parse field=device_message "Device: *; " as device_name nodrop
| if (isempty(ipaddress), ip_address, ipaddress) as ip_address
| parse regex field=LoggedOnUsers "\s*(?<users>[^,]*)" multi nodrop
| if (isempty(users), user, users) as user
| where event_type = "Device"
| parse regex field=agent_version "(?<MajorVersion>\d+\.\d+)\."
```

**Cylance/Device/Top Agent Versions**
```
_sourceCategory={{_sourceCategory}} "Event Type: Device" "Agent Version"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, Agent Version: *, IP Address: (*), MAC Address: (*), Logged On Users: (*), OS: *, Zone Names: (*)" as device_name, agent_version, ip_address, mac_address, LoggedOnUsers, os, zone nodrop
| parse "Device Name: *, Zone Names: (*), Device Id: *" as device_name, zone, device_id nodrop
| parse "Device Message: *, User: *, Zone Names: (*), Device Id: *" as  device_message, user, zone, device_id nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| parse field=device_message "Device: *; " as device_name nodrop
| if (isempty(ipaddress), ip_address, ipaddress) as ip_address
| parse regex field=LoggedOnUsers "\s*(?<users>[^,]*)" multi nodrop
```

**Cylance/Device/Top Event Names**
```
_sourceCategory={{_sourceCategory}} "Event Type: Device"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, Agent Version: *, IP Address: (*), MAC Address: (*), Logged On Users: (*), OS: *, Zone Names: (*)" as device_name, agent_version, ip_address, mac_address, LoggedOnUsers, os, zone nodrop
| parse "Device Name: *, Zone Names: (*), Device Id: *" as device_name, zone, device_id nodrop
| parse "Device Message: *, User: *, Zone Names: (*), Device Id: *" as  device_message, user, zone, device_id nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| parse field=device_message "Device: *; " as device_name nodrop
| if (isempty(ipaddress), ip_address, ipaddress) as ip_address
| parse regex field=LoggedOnUsers "\s*(?<users>[^,]*)" multi nodrop
```

**Cylance/Device/Top Hosts**
```
_sourceCategory={{_sourceCategory}} "Event Type: Device"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, Agent Version: *, IP Address: (*), MAC Address: (*), Logged On Users: (*), OS: *, Zone Names: (*)" as device_name, agent_version, ip_address, mac_address, LoggedOnUsers, os, zone nodrop
| parse "Device Name: *, Zone Names: (*), Device Id: *" as device_name, zone, device_id  
| parse "Device Message: *, User: *, Zone Names: (*), Device Id: *" as  device_message, user, zone, device_id nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| parse field=device_message "Device: *; " as device_name nodrop
| if (isempty(ipaddress), ip_address, ipaddress) as ip_address
| parse regex field=LoggedOnUsers "\s*(?<users>[^,]*)" multi nodrop
```

**Cylance/Device/Top OS**
```
_sourceCategory={{_sourceCategory}} "Event Type: Device" OS
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, Agent Version: *, IP Address: (*), MAC Address: (*), Logged On Users: (*), OS: *, Zone Names: (*)" as device_name, agent_version, ip_address, mac_address, LoggedOnUsers, os, zone nodrop
| parse "Device Name: *, Zone Names: (*), Device Id: *" as device_name, zone, device_id nodrop
| parse "Device Message: *, User: *, Zone Names: (*), Device Id: *" as  device_message, user, zone, device_id nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| parse field=device_message "Device: *; " as device_name nodrop
| if (isempty(ipaddress), ip_address, ipaddress) as ip_address
| parse regex field=LoggedOnUsers "\s*(?<users>[^,]*)" multi nodrop
```

**Cylance/Device/Top Users**
```
_sourceCategory={{_sourceCategory}} "Event Type: Device"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, Agent Version: *, IP Address: (*), MAC Address: (*), Logged On Users: (*), OS: *, Zone Names: (*)" as device_name, agent_version, ip_address, mac_address, LoggedOnUsers, os, zone nodrop
| parse "Device Name: *, Zone Names: (*), Device Id: *" as device_name, zone, device_id nodrop
| parse "Device Message: *, User: *, Zone Names: (*), Device Id: *" as  device_message, user, zone, device_id nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| parse field=device_message "Device: *; " as device_name nodrop
| if (isempty(ipaddress), ip_address, ipaddress) as ip_address
| parse regex field=LoggedOnUsers "\s*(?<users>[^,]*)" multi nodrop
```

**Cylance/Device/Top Zones**
```
_sourceCategory={{_sourceCategory}} "Event Type: Device"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, Agent Version: *, IP Address: (*), MAC Address: (*), Logged On Users: (*), OS: *, Zone Names: (*)" as device_name, agent_version, ip_address, mac_address, LoggedOnUsers, os, zone nodrop
| parse "Device Name: *, Zone Names: (*), Device Id: *" as device_name, zone, device_id nodrop
| parse "Device Message: *, User: *, Zone Names: (*), Device Id: *" as  device_message, user, zone, device_id nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| parse field=device_message "Device: *; " as device_name nodrop
| if (isempty(ipaddress), ip_address, ipaddress) as ip_address
| parse regex field=LoggedOnUsers "\s*(?<users>[^,]*)" multi nodrop
| if (isempty(users), user, users) as user
| parse regex field=zone "\s*(?<zones>[^,]*)" multi nodrop
```

**Cylance/Device/Unique Agent Versions**
```
_sourceCategory={{_sourceCategory}} "Event Type: Device" "Agent Version"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, Agent Version: *, IP Address: (*), MAC Address: (*), Logged On Users: (*), OS: *, Zone Names: (*)" as device_name, agent_version, ip_address, mac_address, LoggedOnUsers, os, zone nodrop
| parse "Device Name: *, Zone Names: (*), Device Id: *" as device_name, zone, device_id nodrop
| parse "Device Message: *, User: *, Zone Names: (*), Device Id: *" as  device_message, user, zone, device_id nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| parse field=device_message "Device: *; " as device_name nodrop
| if (isempty(ipaddress), ip_address, ipaddress) as ip_address
| parse regex field=LoggedOnUsers "\s*(?<users>[^,]*)" multi nodrop
```

**Cylance/Device/Unique Device Names**
```
_sourceCategory={{_sourceCategory}} "Event Type: Device"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, Agent Version: *, IP Address: (*), MAC Address: (*), Logged On Users: (*), OS: *, Zone Names: (*)" as device_name, agent_version, ip_address, mac_address, LoggedOnUsers, os, zone nodrop
| parse "Device Name: *, Zone Names: (*), Device Id: *" as device_name, zone, device_id nodrop
| parse "Device Message: *, User: *, Zone Names: (*), Device Id: *" as  device_message, user, zone, device_id nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| parse field=device_message "Device: *; " as device_name nodrop
| if (isempty(ipaddress), ip_address, ipaddress) as ip_address
| parse regex field=LoggedOnUsers "\s*(?<users>[^,]*)" multi nodrop
```

**Cylance/Device/Unique Event Names**
```
_sourceCategory={{_sourceCategory}} "Event Type: Device"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, Agent Version: *, IP Address: (*), MAC Address: (*), Logged On Users: (*), OS: *, Zone Names: (*)" as device_name, agent_version, ip_address, mac_address, LoggedOnUsers, os, zone nodrop
| parse "Device Name: *, Zone Names: (*), Device Id: *" as device_name, zone, device_id nodrop
| parse "Device Message: *, User: *, Zone Names: (*), Device Id: *" as  device_message, user, zone, device_id nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| parse field=device_message "Device: *; " as device_name nodrop
| if (isempty(ipaddress), ip_address, ipaddress) as ip_address
| parse regex field=LoggedOnUsers "\s*(?<users>[^,]*)" multi nodrop
```

**Cylance/Device/Unique IP Addresses**
```
_sourceCategory={{_sourceCategory}} "Event Type: Device"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, Agent Version: *, IP Address: (*), MAC Address: (*), Logged On Users: (*), OS: *, Zone Names: (*)" as device_name, agent_version, ip_address, mac_address, LoggedOnUsers, os, zone nodrop
| parse "Device Name: *, Zone Names: (*), Device Id: *" as device_name, zone, device_id nodrop
| parse "Device Message: *, User: *, Zone Names: (*), Device Id: *" as  device_message, user, zone, device_id nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| parse field=device_message "Device: *; " as device_name nodrop
| if (isempty(ipaddress), ip_address, ipaddress) as ip_address
| parse regex field=LoggedOnUsers "\s*(?<users>[^,]*)" multi nodrop
```

**Cylance/Device/Unique Mac Addresses**
```
_sourceCategory={{_sourceCategory}} "Event Type: Device"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, Agent Version: *, IP Address: (*), MAC Address: (*), Logged On Users: (*), OS: *, Zone Names: (*)" as device_name, agent_version, ip_address, mac_address, LoggedOnUsers, os, zone nodrop
| parse "Device Name: *, Zone Names: (*), Device Id: *" as device_name, zone, device_id nodrop
| parse "Device Message: *, User: *, Zone Names: (*), Device Id: *" as  device_message, user, zone, device_id nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| parse field=device_message "Device: *; " as device_name nodrop
| if (isempty(ipaddress), ip_address, ipaddress) as ip_address
| parse regex field=LoggedOnUsers "\s*(?<users>[^,]*)" multi nodrop
```

**Cylance/Device/Unique Users**
```
_sourceCategory={{_sourceCategory}} "Event Type: Device"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, Agent Version: *, IP Address: (*), MAC Address: (*), Logged On Users: (*), OS: *, Zone Names: (*)" as device_name, agent_version, ip_address, mac_address, LoggedOnUsers, os, zone nodrop
| parse "Device Name: *, Zone Names: (*), Device Id: *" as device_name, zone, device_id nodrop
| parse "Device Message: *, User: *, Zone Names: (*), Device Id: *" as  device_message, user, zone, device_id nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| parse field=device_message "Device: *; " as device_name nodrop
| if (isempty(ipaddress), ip_address, ipaddress) as ip_address
| parse regex field=LoggedOnUsers "\s*(?<users>[^,]*)" multi nodrop
```

**Cylance/Memory Exploit Attempts/Event Name**
```
_sourceCategory={{_sourceCategory}} ExploitAttempt
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as 
```

**Cylance/Memory Exploit Attempts/Event Trend by Actions**
```
_sourceCategory={{_sourceCategory}} ExploitAttempt
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as event_type, event_name, device_name, ip_address, action, pid, pname, user, violation, zone, device_id, policy
```

**Cylance/Memory Exploit Attempts/Events**
```
_sourceCategory={{_sourceCategory}} ExploitAttempt
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as event_type, event_name, device_name, ip_address, action, pid, pname, user, violation, zone, device_id, policy
```

**Cylance/Memory Exploit Attempts/Recent Exploit Attempt Details**
```
_sourceCategory={{_sourceCategory}} ExploitAttempt (Blocked or Terminated)
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as event_type, event_name, device_name, ip_address, action, pid, pname, user, violation, zone, device_id, policy
```

**Cylance/Memory Exploit Attempts/Top Actions**
```
_sourceCategory={{_sourceCategory}} ExploitAttempt
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as event_type, event_name, device_name, ip_address, action, pid, pname, user, violation, zone, device_id, policy
```

**Cylance/Memory Exploit Attempts/Top Blocked, Terminated Processes**
```
_sourceCategory={{_sourceCategory}} ExploitAttempt (Blocked or Terminated)
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as event_type, event_name, device_name, ip_address, action, pid, pname, user, violation, zone, device_id, policy
```

**Cylance/Memory Exploit Attempts/Top Hosts**
```
_sourceCategory={{_sourceCategory}} ExploitAttempt
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as event_type, event_name, device_name, ip_address, action, pid, pname, user, violation, zone, device_id, policy
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi
```

**Cylance/Memory Exploit Attempts/Top Policies**
```
_sourceCategory={{_sourceCategory}} ExploitAttempt
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as event_type, event_name, device_name, ip_address, action, pid, pname, user, violation, zone, device_id, policy
```

**Cylance/Memory Exploit Attempts/Top Users**
```
_sourceCategory={{_sourceCategory}} ExploitAttempt
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as event_type, event_name, device_name, ip_address, action, pid, pname, user, violation, zone, device_id, policy
```

**Cylance/Memory Exploit Attempts/Top Violations**
```
_sourceCategory={{_sourceCategory}} ExploitAttempt
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as event_type, event_name, device_name, ip_address, action, pid, pname, user, violation, zone, device_id, policy
```

**Cylance/Memory Exploit Attempts/Top Zones**
```
_sourceCategory={{_sourceCategory}} ExploitAttempt
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as event_type, event_name, device_name, ip_address, action, pid, pname, user, violation, zone, device_id, policy
| parse regex field=zone "\s*(?<zones>[^,]*)" multi nodrop
```

**Cylance/Memory Exploit Attempts/Unique Device Names**
```
_sourceCategory={{_sourceCategory}} ExploitAttempt
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as event_type, event_name, device_name, ip_address, action, pid, pname, user, violation, zone, device_id, policy
```

**Cylance/Memory Exploit Attempts/Unique IP Addresses**
```
_sourceCategory={{_sourceCategory}} ExploitAttempt
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as event_type, event_name, device_name, ip_address, action, pid, pname, user, violation, zone, device_id, policy
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi
```

**Cylance/Memory Exploit Attempts/Unique Users**
```
_sourceCategory={{_sourceCategory}} ExploitAttempt
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as event_type, event_name, device_name, ip_address, action, pid, pname, user, violation, zone, device_id, policy
```

**Cylance/Memory Exploit Attempts/Unique Violation Types**
```
_sourceCategory={{_sourceCategory}} ExploitAttempt
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as event_type, event_name, device_name, ip_address, action, pid, pname, user, violation, zone, device_id, policy
```

**Cylance/Overview/App Control**
```
_sourceCategory={{_sourceCategory}} CylancePROTECT "Event Type:" AppControl
| parse "Event Type: *," as event_type nodrop
| parse "Event Name: *, Device Name: *, IP Address: (*), Action: *, Action Type: *, File Path: *, SHA256: *" as event_name, device_name, ip_address, action, action_type, filepath, sha nodrop
```

**Cylance/Overview/AuditLog**
```
_sourceCategory={{_sourceCategory}} CylancePROTECT "Event Type:" AuditLog
| parse "Event Type: *," as event_type
```

**Cylance/Overview/Device**
```
_sourceCategory={{_sourceCategory}} CylancePROTECT "Event Type:" Device
| parse "Event Type: *," as event_type
```

**Cylance/Overview/Device Control**
```
_sourceCategory={{_sourceCategory}} CylancePROTECT "Event Type:" DeviceControl
| parse "Event Type: *," as event_type
```

**Cylance/Overview/Event Type Trend**
```
_sourceCategory={{_sourceCategory}} "Event Type:"
| parse "Event Type: *," as event_type
```

**Cylance/Overview/Event Types**
```
_sourceCategory={{_sourceCategory}} "Event Type:"
| parse "Event Type: *," as event_type
```

**Cylance/Overview/Events Time Compare Trend**
```
_sourceCategory={{_sourceCategory}} "Event Type:"
| parse "Event Type: *," as event_type
```

**Cylance/Overview/Exploit Attempt**
```
_sourceCategory={{_sourceCategory}} CylancePROTECT "Event Type:" ExploitAttempt
| parse "Event Type: *," as event_type
```

**Cylance/Overview/Script Control**
```
_sourceCategory={{_sourceCategory}} CylancePROTECT "Event Type:" ScriptControl
| parse "Event Type: *," as event_type
```

**Cylance/Overview/Threat**
```
_sourceCategory={{_sourceCategory}} CylancePROTECT "Event Type:" Threat
| parse "Event Type: *," as event_type
```

**Cylance/Overview/Threat Classification**
```
_sourceCategory={{_sourceCategory}} CylancePROTECT "Event Type:" ThreatClassification
| parse "Event Type: *," as event_type
```

**Cylance/Overview/Threat Related Event Outlier**
```
_sourceCategory={{_sourceCategory}} CylancePROTECT "Event Type:" (Threat or ScriptControl or ExploitAttempt or ThreatClassification or DeviceControl or AppControl)
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
```

**Cylance/Overview/Top Device Names**
```
_sourceCategory={{_sourceCategory}} CylancePROTECT "Device Name"
| parse "Event Type: *," as event_type nodrop
| parse "Device Name: *," as device_name nodrop
```

**Cylance/Overview/Top Exploit Control Violation Type**
```
_sourceCategory={{_sourceCategory}} CylancePROTECT ExploitAttempt
| parse "Event Type: *, Event Name: *, Device Name: *, IP Address: (*), Action: *, Process ID: *, Process Name: *, User Name: *, Violation Type: *, Zone Names: (*), Device Id: *, Policy Name: *" as event_type, event_name, device_name, ip_address, action, pid, pname, user, violation, zone, device_id, policy
```

**Cylance/Overview/Top Interpreters**
```
_sourceCategory={{_sourceCategory}} ScriptControl
| parse "Event Type: *, Event Name: *, Device Name: *, File Path: *, Interpreter: *, Interpreter Version: *, Zone Names: (*), User Name: *, Device Id: *, Policy Name: *" as event_type, event_name, device_name, filepath, interpreter, interpreterVersion, zone, user, device_id, policy nodrop
```

**Cylance/Overview/Top Threat Classifications**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```

**Cylance/Overview/Top Threat FileTypes**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```

**Cylance/Overview/Top Zones**
```
_sourceCategory={{_sourceCategory}} CylancePROTECT "Zone Names"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Zone Names: (*)" as zone nodrop
| parse regex field=zone "\s*(?<zones>[^,]*)" multi nodrop
```

**Cylance/Overview/Total Events**
```
_sourceCategory={{_sourceCategory}} CylancePROTECT "Event Type:"
| parse "Event Type: *," as event_type
```

**Cylance/Overview/Unique Devices**
```
_sourceCategory={{_sourceCategory}} CylancePROTECT "Event Type:"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *," as device_name nodrop
| parse "Device Id: *," as device_id nodrop
```

**Cylance/Overview/Unique Policies**
```
_sourceCategory={{_sourceCategory}} CylancePROTECT "Event Type:" "Policy Name"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Policy Name: *" as policy nodrop
```

**Cylance/Overview/Unique Zones**
```
_sourceCategory={{_sourceCategory}} CylancePROTECT "Zone Names"
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Zone Names: (*)" as zone nodrop
| parse regex field=zone "\s*(?<zones>[^,]*)" multi nodrop
```

**Cylance/Script Control/Distinct Hosts by Zone**
```
_sourceCategory={{_sourceCategory}} ScriptControl
| parse "Event Type: *, Event Name: *, Device Name: *, File Path: *, Interpreter: *, Interpreter Version: *, Zone Names: (*), User Name: *, Device Id: *, Policy Name: *" as event_type, event_name, device_name, filepath, interpreter, interpreterVersion, zone, user, device_id, policy nodrop
| parse regex field=zone "\s*(?<zones>[^,]*)" multi nodrop
```

**Cylance/Script Control/Event Names**
```
_sourceCategory={{_sourceCategory}} ScriptControl
| parse "Event Type: *, Event Name: *, Device Name: *, File Path: *, Interpreter: *, Interpreter Version: *, Zone Names: (*), User Name: *, Device Id: *, Policy Name: *" as event_type, event_name, device_name, filepath, interpreter, interpreterVersion, zone, user, device_id, policy nodrop
```

**Cylance/Script Control/Events**
```
_sourceCategory={{_sourceCategory}} ScriptControl
| parse "Event Type: *, Event Name: *, Device Name: *, File Path: *, Interpreter: *, Interpreter Version: *, Zone Names: (*), User Name: *, Device Id: *, Policy Name: *" as event_type, event_name, device_name, filepath, interpreter, interpreterVersion, zone, user, device_id, policy nodrop
```

**Cylance/Script Control/Events by Interpreter - Trend**
```
_sourceCategory={{_sourceCategory}} ScriptControl
| parse "Event Type: *, Event Name: *, Device Name: *, File Path: *, Interpreter: *, Interpreter Version: *, Zone Names: (*), User Name: *, Device Id: *, Policy Name: *" as event_type, event_name, device_name, filepath, interpreter, interpreterVersion, zone, user, device_id, policy nodrop
```

**Cylance/Script Control/Events by Name - Trend**
```
_sourceCategory={{_sourceCategory}} ScriptControl
| parse "Event Type: *, Event Name: *, Device Name: *, File Path: *, Interpreter: *, Interpreter Version: *, Zone Names: (*), User Name: *, Device Id: *, Policy Name: *" as event_type, event_name, device_name, filepath, interpreter, interpreterVersion, zone, user, device_id, policy nodrop
```

**Cylance/Script Control/Old Interpreter**
```
_sourceCategory={{_sourceCategory}} ScriptControl Interpreter Version
| parse "Event Type: *, Event Name: *, Device Name: *, File Path: *, Interpreter: *, Interpreter Version: *, Zone Names: (*), User Name: *, Device Id: *, Policy Name: *" as event_type, event_name, device_name, filepath, interpreter, interpreterVersion, zone, user, device_id, policy nodrop
| if (interpreter="powershell", "Powershell", interpreter) as interpreter
| where event_type="ScriptControl"
| parse regex field=interpreterVersion "(?<MajorVersion>\d+\.\d+)\."
```

**Cylance/Script Control/Top Files**
```
_sourceCategory={{_sourceCategory}} ScriptControl
| parse "Event Type: *, Event Name: *, Device Name: *, File Path: *, Interpreter: *, Interpreter Version: *, Zone Names: (*), User Name: *, Device Id: *, Policy Name: *" as event_type, event_name, device_name, filepath, interpreter, interpreterVersion, zone, user, device_id, policy nodrop
```

**Cylance/Script Control/Top Hosts**
```
_sourceCategory={{_sourceCategory}} ScriptControl
| parse "Event Type: *, Event Name: *, Device Name: *, File Path: *, Interpreter: *, Interpreter Version: *, Zone Names: (*), User Name: *, Device Id: *, Policy Name: *" as event_type, event_name, device_name, filepath, interpreter, interpreterVersion, zone, user, device_id, policy nodrop
```

**Cylance/Script Control/Top Interpreters**
```
_sourceCategory={{_sourceCategory}} ScriptControl
| parse "Event Type: *, Event Name: *, Device Name: *, File Path: *, Interpreter: *, Interpreter Version: *, Zone Names: (*), User Name: *, Device Id: *, Policy Name: *" as event_type, event_name, device_name, filepath, interpreter, interpreterVersion, zone, user, device_id, policy nodrop
```

**Cylance/Script Control/Top Policies**
```
_sourceCategory={{_sourceCategory}} ScriptControl
| parse "Event Type: *, Event Name: *, Device Name: *, File Path: *, Interpreter: *, Interpreter Version: *, Zone Names: (*), User Name: *, Device Id: *, Policy Name: *" as event_type, event_name, device_name, filepath, interpreter, interpreterVersion, zone, user, device_id, policy nodrop
```

**Cylance/Script Control/Top Users**
```
_sourceCategory={{_sourceCategory}} ScriptControl
| parse "Event Type: *, Event Name: *, Device Name: *, File Path: *, Interpreter: *, Interpreter Version: *, Zone Names: (*), User Name: *, Device Id: *, Policy Name: *" as event_type, event_name, device_name, filepath, interpreter, interpreterVersion, zone, user, device_id, policy nodrop
```

**Cylance/Script Control/Top Zones**
```
_sourceCategory={{_sourceCategory}} ScriptControl
| parse "Event Type: *, Event Name: *, Device Name: *, File Path: *, Interpreter: *, Interpreter Version: *, Zone Names: (*), User Name: *, Device Id: *, Policy Name: *" as event_type, event_name, device_name, filepath, interpreter, interpreterVersion, zone, user, device_id, policy nodrop
| parse regex field=zone "\s*(?<zones>[^,]*)" multi nodrop
```

**Cylance/Script Control/Unique Device Names**
```
_sourceCategory={{_sourceCategory}} ScriptControl
| parse "Event Type: *, Event Name: *, Device Name: *, File Path: *, Interpreter: *, Interpreter Version: *, Zone Names: (*), User Name: *, Device Id: *, Policy Name: *" as event_type, event_name, device_name, filepath, interpreter, interpreterVersion, zone, user, device_id, policy nodrop
```

**Cylance/Systems with Old Interpreter version/Cylance - Systems with Old Interpreter version**
```
_sourceCategory={{_sourceCategory}} ScriptControl Interpreter Version
| parse "Event Type: *, Event Name: *, Device Name: *, File Path: *, Interpreter: *, Interpreter Version: *, Zone Names: (*), User Name: *, Device Id: *, Policy Name: *" as event_type, event_name, device_name, filepath, interpreter, interpreterVersion, zone, user, device_id, policy nodrop
| if (interpreter="powershell", "Powershell", interpreter) as interpreter
| where event_type="ScriptControl"
| parse regex field=interpreterVersion "(?<MajorVersion>\d+\.\d+)\."
```

**Cylance/Threat Classification/Dual Use Subclass Trend**
```
_sourceCategory={{_sourceCategory}} ThreatClassification "Dual Use"
| parse "Event Type: *, Event Name: *, Threat Class: *, Threat Subclass: *, SHA256: *, MD5: *" as event_type, event_name, threat_class, threat_subclass, sha, md5
```

**Cylance/Threat Classification/Event Names**
```
_sourceCategory={{_sourceCategory}} ThreatClassification
| parse "Event Type: *, Event Name: *, Threat Class: *, Threat Subclass: *, SHA256: *, MD5: *" as event_type, event_name, threat_class, threat_subclass, sha, md5
```

**Cylance/Threat Classification/Events**
```
_sourceCategory={{_sourceCategory}} ThreatClassification "Event Type: ThreatClassification"
| parse "Event Type: *, Event Name: *, Threat Class: *, Threat Subclass: *, SHA256: *, MD5: *" as event_type, event_name, threat_class, threat_subclass, sha, md5
```

**Cylance/Threat Classification/Events Break Down**
```
_sourceCategory={{_sourceCategory}} ThreatClassification
| parse "Event Type: *, Event Name: *, Threat Class: *, Threat Subclass: *, SHA256: *, MD5: *" as event_type, event_name, threat_class, threat_subclass, sha, md5
```

**Cylance/Threat Classification/Malware Subclass Trend**
```
_sourceCategory={{_sourceCategory}} ThreatClassification Malware
| parse "Event Type: *, Event Name: *, Threat Class: *, Threat Subclass: *, SHA256: *, MD5: *" as event_type, event_name, threat_class, threat_subclass, sha, md5
```

**Cylance/Threat Classification/PUP Subclass Trend**
```
_sourceCategory={{_sourceCategory}} ThreatClassification PUP
| parse "Event Type: *, Event Name: *, Threat Class: *, Threat Subclass: *, SHA256: *, MD5: *" as event_type, event_name, threat_class, threat_subclass, sha, md5
```

**Cylance/Threat Classification/Recent Malware, Dual Use  and PUP Files**
```
_sourceCategory={{_sourceCategory}} ThreatClassification ("Malware" or "Dual Use" or "PUP")
| parse "Event Type: *, Event Name: *, Threat Class: *, Threat Subclass: *, SHA256: *, MD5: *" as event_type, event_name, threat_class, threat_subclass, sha, md5
```

**Cylance/Threat Classification/Recent Safe Files**
```
_sourceCategory={{_sourceCategory}} ThreatClassification Trusted Local
| parse "Event Type: *, Event Name: *, Threat Class: *, Threat Subclass: *, SHA256: *, MD5: *" as event_type, event_name, threat_class, threat_subclass, sha, md5
```

**Cylance/Threat Classification/Threat Class**
```
_sourceCategory={{_sourceCategory}} ThreatClassification
| parse "Event Type: *, Event Name: *, Threat Class: *, Threat Subclass: *, SHA256: *, MD5: *" as event_type, event_name, threat_class, threat_subclass, sha, md5
```

**Cylance/Threat Classification/Top SHA Occurring Multiple Times**
```
_sourceCategory={{_sourceCategory}} ThreatClassification
| parse "Event Type: *, Event Name: *, Threat Class: *, Threat Subclass: *, SHA256: *, MD5: *" as event_type, event_name, threat_class, threat_subclass, sha, md5
```

**Cylance/Threat/Detected By Trend**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```

**Cylance/Threat/Events**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```

**Cylance/Threat/Threat Severity**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```

**Cylance/Threat/Threat Severity Across Zones**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```

**Cylance/Threat/Threats Blocked**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat" True Quarantined
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```

**Cylance/Threat/Threats Severity by Zone**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```

**Cylance/Threat/Top Detected By**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```

**Cylance/Threat/Top Event Names**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```

**Cylance/Threat/Top File Names**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```

**Cylance/Threat/Top File Types**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```

**Cylance/Threat/Top Host - High Avg Score Threats**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```

**Cylance/Threat/Top Hosts - Multiple Critical Threats**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```

**Cylance/Threat/Top IP Address**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| ipaddress as ip_address
| parse regex field=zone "\s*(?<zones>[^,]*)" multi nodrop
```

**Cylance/Threat/Top Paths**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```

**Cylance/Threat/Top Scores**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```

**Cylance/Threat/Top SHA**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| ipaddress as ip_address
| parse regex field=zone "\s*(?<zones>[^,]*)" multi nodrop
```

**Cylance/Threat/Top Status**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```

**Cylance/Threat/Top Threat Classification**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```

**Cylance/Threat/Top Zones**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
| parse regex field=ip_address "\s*(?<ipaddress>[^,]*)" multi nodrop
| ipaddress as ip_address
| parse regex field=zone "\s*(?<zones>[^,]*)" multi nodrop
```

**Cylance/Threat/Unique Threats**
```
_sourceCategory={{_sourceCategory}} Threat "Event Type: Threat"
| parse "Is Malware: *, " as malware_status nodrop
| parse "Event Type: *, Event Name: *," as event_type, event_name nodrop
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by  nodrop 
| parse "Device Name: *, IP Address: (*), File Name: *, Path: *, Drive Type: *, SHA256: *, MD5: *, Status: *, Cylance Score: *, Found Date: *, File Type: *, Is Running: *, Auto Run: *, Detected By: *, Zone Names: (*)" as device_name, ip_address, file_name, path, drive_type, sha, md5, status, score, found, file_type, isRunning, autoRun, detected_by, zone  nodrop 
| parse "Is Unique To Cylance: *, Threat Classification: *, Device Id: *, Policy Name: *" as isUniqueToCylance, threatClassification, device_id, policy nodrop
```


