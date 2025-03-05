# Parsers For Cisco Meraki - C2C

## Parser:
```
| json "id", "name", "url", "api.enabled", "licensing.model", "cloud.region.name", "management.details.[*].name", "management.details.[*].value" as id, name, url, enabled, model, region, management_name, management_value nodrop
```
### Use Cases:
Air Marshal Overview, API Enabled Organizations, Blocked Connections, Blocked Events, Clients Summary, Configuration Change Frequency, Configuration Change Summary, Event Types Breakdown, Events by Activity, Events by SSID, Events by Type, Files Scanned, Geo Locations of Attack Origins, Geo Locations of Attack Targets, Geo Locations of Clients, Geo Locations of Top Threats, Infected Hosts, Malicious Files, Network Activity, Network Summary, Networks by Product Type, Networks by Time Zone, Organizations by Cloud Region, Organizations Summary, Recent Events, Risky Geo Locations, Threat Severity, Threats Trend Analysis, Top 10 Active Admins, Top 10 Network Activity Channels, Top Clients by Events, Total Activities, Total Admin Logs, Total Events, Total Network Logs, Total Organizations



## Parser:
```
| json "id", "organizationId", "name", "productTypes", "timeZone", "tags", "enrollmentString", "url", "notes", "isBoundToConfigTemplate" as id, organization_id, name, product_types, time_zone, tags, enrollment_string, url, notes, is_bound_to_config_template nodrop
```
### Use Cases:
Air Marshal Overview, Blocked Connections, Blocked Events, Clients Summary, Configuration Change Frequency, Configuration Change Summary, Event Types Breakdown, Events by Activity, Events by SSID, Events by Type, Files Scanned, Geo Locations of Attack Origins, Geo Locations of Attack Targets, Geo Locations of Clients, Infected Hosts, Malicious Files, Network Activity, Network Summary, Networks by Product Type, Networks by Time Zone, Organizations by Cloud Region, Organizations Summary, Recent Events, Risky Geo Locations, Threat Severity, Threats Trend Analysis, Top 10 Network Activity Channels, Top Clients by Events, Total Activities, Total Events, Total Network Logs



## Parser:
```
| json "id", "organizationId", "name", "productTypes", "timeZone", "tags", "enrollmentString", "url", "notes", "isBoundToConfigTemplate" as id, organization_id, name, product_types, time_zone, tags, enrollment_string, url, notes, is_bound_to_config_template nodrop
| extract field=product_types "\"?(?<product_types>[\w\s\-&.,]*)\"?[,\n\]]" multi
```
### Use Cases:
Air Marshal Overview, Blocked Connections, Blocked Events, Clients Summary, Configuration Change Frequency, Configuration Change Summary, Event Types Breakdown, Events by Activity, Events by SSID, Events by Type, Files Scanned, Geo Locations of Attack Origins, Geo Locations of Attack Targets, Geo Locations of Clients, Infected Hosts, Malicious Files, Network Activity, Network Summary, Networks by Product Type, Networks by Time Zone, Organizations Summary, Recent Events, Risky Geo Locations, Threat Severity, Threats Trend Analysis, Top 10 Network Activity Channels, Top Clients by Events, Total Activities, Total Events



## Parser:
```
| json "occurredAt", "networkId", "type", "description", "category", "clientId", "clientDescription", "clientMac", "deviceSerial", "deviceName", "ssidNumber", "eventData.radio", "eventData.vap", "eventData.client_mac", "eventData.client_ip", "eventData.channel", "eventData.rssi", "eventData.aid" as occurred_at, network_id, type, description, category, client_id, client_description, clientMac, deviceSerial, deviceName, ssidNumber, radio, vap, client_mac, client_ip, channel, rssi, aid nodrop
```
### Use Cases:
Air Marshal Overview, Clients Summary, Event Types Breakdown, Events by SSID, Geo Locations of Clients, Network Activity, Recent Events, Risky Geo Locations, Top 10 Network Activity Channels, Total Activities



## Parser:
```
| json "occurredAt", "networkId", "type", "description", "category", "clientId", "clientDescription", "clientMac", "deviceSerial", "deviceName", "ssidNumber", "eventData.radio", "eventData.vap", "eventData.client_mac", "eventData.client_ip", "eventData.channel", "eventData.rssi", "eventData.aid" as occurredAt, networkId, type, description, category, client_id, client_description, clientMac, deviceSerial, deviceName, ssid, radio, vap, client_mac, client_ip, channel, rssi, aid nodrop
```
### Use Cases:
Air Marshal Overview, Clients Summary, Events by SSID, Recent Events



## Parser:
```
| json "occurredAt", "networkId", "type", "description", "category", "clientId", "clientDescription", "clientMac", "deviceSerial", "deviceName", "ssidNumber", "eventData.radio", "eventData.vap", "eventData.client_mac", "eventData.client_ip", "eventData.channel", "eventData.rssi", "eventData.aid" as occurredAt, networkId, type, description, category, clientId, clientDescription, clientMac, deviceSerial, deviceName, ssidNumber, radio, vap, client_mac, client_ip, channel, rssi, aid nodrop
```
### Use Cases:
Air Marshal Overview, Clients Summary, Event Types Breakdown, Events by SSID, Network Activity, Recent Events, Top 10 Network Activity Channels, Total Activities



## Parser:
```
| json "ssid", "channels", "firstSeen", "lastSeen", "wiredMacs", "wiredVlans", "wiredLastSeen","bssids[*].bssid","bssids[*].detectedBy[*].device","bssids[*].detectedBy[*].rssi" as ssid, channels, first_seen, last_seen, wired_macs, wired_vlans, wired_last_seen,bssids,devices,rssi_values nodrop
```
### Use Cases:
Air Marshal Overview, Clients Summary, Events by SSID, Recent Events, Total Activities



## Parser:
```
| json "ssid", "channels", "firstSeen", "lastSeen", "wiredMacs", "wiredVlans", "wiredLastSeen","bssids[*].bssid","bssids[*].detectedBy[*].device","bssids[*].detectedBy[*].rssi" as ssid, channels, first_seen, last_seen, wired_macs, wired_vlans, wired_last_seen,bssids,devices,rssi_values nodrop
| extract field=channels "\"?(?<channel>[\d+]*?)\"?[,\n\]]" multi
```
### Use Cases:
Air Marshal Overview, Clients Summary, Events by SSID, Recent Events, Top 10 Network Activity Channels, Total Activities



## Parser:
```
| json "ts", "adminName", "adminEmail", "adminId", "page", "label" as date_time, admin_name, admin_email, admin_id, page, label nodrop
| parse "\"label\": \"*/" as activity
```
### Use Cases:
Air Marshal Overview, Blocked Connections, Blocked Events, Clients Summary, Configuration Change Frequency, Configuration Change Summary, Event Types Breakdown, Events by SSID, Events by Type, Files Scanned, Geo Locations of Attack Origins, Geo Locations of Attack Targets, Geo Locations of Clients, Infected Hosts, Malicious Files, Network Activity, Network Summary, Recent Events, Risky Geo Locations, Threat Severity, Threats Trend Analysis, Top 10 Network Activity Channels, Top Clients by Events, Total Activities, Total Events



## Parser:
```
| json "ts", "adminName", "adminEmail", "adminId", "page", "label" as date_time, adminName, adminEmail, adminId, page, label nodrop
| parse "\"label\": \"*/" as activity
```
### Use Cases:
Air Marshal Overview, Blocked Connections, Blocked Events, Clients Summary, Configuration Change Frequency, Event Types Breakdown, Events by SSID, Events by Type, Files Scanned, Geo Locations of Attack Origins, Geo Locations of Attack Targets, Geo Locations of Clients, Infected Hosts, Malicious Files, Network Activity, Recent Events, Risky Geo Locations, Threat Severity, Threats Trend Analysis, Top 10 Network Activity Channels, Top Clients by Events, Total Activities, Total Events



## Parser:
```
| json "ts", "adminName", "adminEmail", "adminId", "page", "label" as ts, admin_name, admin_email, admin_id, page, label nodrop
```
### Use Cases:
Air Marshal Overview, API Enabled Organizations, Blocked Connections, Blocked Events, Clients Summary, Configuration Change Frequency, Configuration Change Summary, Event Types Breakdown, Events by Activity, Events by SSID, Events by Type, Files Scanned, Geo Locations of Attack Origins, Geo Locations of Attack Targets, Geo Locations of Clients, Geo Locations of Top Threats, Infected Hosts, Malicious Files, Network Activity, Network Summary, Networks by Product Type, Networks by Time Zone, Organizations by Cloud Region, Organizations Summary, Recent Events, Risky Geo Locations, Threat Severity, Threats Trend Analysis, Top 10 Active Admins, Top 10 Network Activity Channels, Top Clients by Events, Total Activities, Total Admin Logs, Total Events, Total Network Logs



## Parser:
```
| json "ts", "adminName", "adminEmail", "adminId", "page", "label" as ts, admin_name, admin_email, admin_id, page, label nodrop
| parse "\"label\": \"*/" as activity
```
### Use Cases:
Air Marshal Overview, Blocked Connections, Blocked Events, Clients Summary, Configuration Change Frequency, Configuration Change Summary, Event Types Breakdown, Events by Activity, Events by SSID, Events by Type, Files Scanned, Geo Locations of Attack Origins, Geo Locations of Attack Targets, Geo Locations of Clients, Infected Hosts, Malicious Files, Network Activity, Network Summary, Organizations Summary, Recent Events, Risky Geo Locations, Threat Severity, Threats Trend Analysis, Top 10 Network Activity Channels, Top Clients by Events, Total Activities, Total Events



## Parser:
```
| json "ts", "eventType", "clientName", "clientMac", "clientIp", "srcIp", "destIp", "protocol", "uri", "canonicalName", "destinationPort", "fileType", "fileSizeBytes", "disposition", "action", "deviceMac", "priority", "classification", "message", "signature", "ruleId"  as date_time, event_type, client_name, client_mac, client_ip, src_ip, dest_ip, protocol, uri, canonical_name, dest_port, file_type, file_size_bytes, disposition, action, device_mac, priority, classification, message, signature, rule_id nodrop
```
### Use Cases:
Air Marshal Overview, Blocked Connections, Blocked Events, Clients Summary, Event Types Breakdown, Events by SSID, Events by Type, Files Scanned, Geo Locations of Attack Origins, Geo Locations of Attack Targets, Geo Locations of Clients, Infected Hosts, Malicious Files, Network Activity, Recent Events, Risky Geo Locations, Threat Severity, Threats Trend Analysis, Top 10 Network Activity Channels, Top Clients by Events, Total Activities, Total Events



## Parser:
```
| json "ts", "eventType", "clientName", "clientMac", "clientIp", "srcIp", "destIp", "protocol", "uri", "canonicalName", "destinationPort", "fileType", "fileSizeBytes", "disposition", "action", "deviceMac", "priority", "classification", "message", "signature", "ruleId"  as ts, eventType, clientName, clientMac, clientIp, srcIp, destIp, protocol, uri, canonicalName, destinationPort, fileType, fileSizeBytes, disposition, action, deviceMac, priority, classification, message, signature, ruleId nodrop
```
### Use Cases:
Air Marshal Overview, API Enabled Organizations, Blocked Connections, Blocked Events, Clients Summary, Configuration Change Frequency, Configuration Change Summary, Event Types Breakdown, Events by Activity, Events by SSID, Events by Type, Files Scanned, Geo Locations of Attack Origins, Geo Locations of Attack Targets, Geo Locations of Clients, Geo Locations of Top Threats, Infected Hosts, Malicious Files, Network Activity, Network Summary, Networks by Product Type, Networks by Time Zone, Organizations by Cloud Region, Organizations Summary, Recent Events, Risky Geo Locations, Threat Severity, Threats Trend Analysis, Top 10 Active Admins, Top 10 Network Activity Channels, Top Clients by Events, Total Activities, Total Events, Total Network Logs


