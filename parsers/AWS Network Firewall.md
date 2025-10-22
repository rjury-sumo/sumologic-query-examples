# Parsers For AWS Network Firewall

**AWS Network Firewall/IDS Overview/Blocked vs Allowed Over Time**
```
_sourceCategory = Labs/AWS/Vanta* alert 
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "alert" nodrop
| where event_type="alert"
| json field=alert "severity", "signature", "action", "category" nodrop
```

**AWS Network Firewall/IDS Overview/High Severity Events**
```
_sourceCategory = Labs/AWS/Vanta* 
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "app_proto", "proto", "alert" nodrop
| where event_type="alert"
| json field=alert "severity", "signature", "action", "category" nodrop
```

**AWS Network Firewall/IDS Overview/IDS Signatures Over Time**
```
_sourceCategory = Labs/AWS/Vanta* 
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "app_proto", "proto", "alert" nodrop
| where event_type="alert"
| json field=alert "severity", "signature", "action", "category" nodrop
```

**AWS Network Firewall/IDS Overview/Outlier - Total IDS Alerts**
```
_sourceCategory = Labs/AWS/Vanta* 
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "app_proto", "proto", "alert" nodrop
| where event_type="alert"
| json field=alert "severity", "signature", "action", "category" nodrop
```

**AWS Network Firewall/IDS Overview/Threat Intel Hits**
```
_sourceCategory = Labs/AWS/Vanta* 
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "app_proto", "proto", "alert" nodrop
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=dest_ip 
| where type="ip_address" and !isNull(malicious_confidence) 
| if (isEmpty(actor), "Unassigned", actor) as Actor 
| json field=raw "labels[*].name" as label_name 
```

**AWS Network Firewall/IDS Overview/Top 10 Blocked Destination IP**
```
_sourceCategory = Labs/AWS/Vanta* 
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "alert" nodrop
| where event_type="alert"
| json field=alert "severity", "signature", "action", "category" nodrop
```

**AWS Network Firewall/IDS Overview/Top 10 Blocked Source IP**
```
_sourceCategory = Labs/AWS/Vanta* 
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "alert" nodrop
| where event_type="alert"
| json field=alert "severity", "signature", "action", "category" nodrop
```

**AWS Network Firewall/IDS Overview/Top 10 Signature**
```
_sourceCategory = Labs/AWS/Vanta* 
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "alert" nodrop
| where event_type="alert"
| json field=alert "severity", "signature", "action", "category" nodrop
```

**AWS Network Firewall/IDS Overview/Top Alert Destinations by Geo location**
```
_sourceCategory = Labs/AWS/Vanta* 
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "app_proto", "proto", "alert" nodrop | where event_type = "alert"
```

**AWS Network Firewall/IDS Overview/Total Alerts**
```
_sourceCategory = Labs/AWS/Vanta* 
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "alert" nodrop
| where event_type="alert"
| json field=alert "severity", "signature", "action", "category" nodrop
```

**AWS Network Firewall/Netflow Overview/Outbound Bytes**
```
_sourceCategory = Labs/AWS/Vanta* 
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "app_proto", "netflow" nodrop
| json field=netflow "bytes", "pkts" nodrop
```

**AWS Network Firewall/Netflow Overview/Top 10 Connection**
```
_sourceCategory = Labs/AWS/Vanta* 
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "app_proto", "netflow" nodrop
| json field=netflow "bytes", "pkts" nodrop
```

**AWS Network Firewall/Netflow Overview/Top Destination by Geolocation**
```
_sourceCategory = Labs/AWS/Vanta* 
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "app_proto", "proto", "alert" nodrop 
```

**AWS Network Firewall/Netflow Overview/Traffic By Application**
```
_sourceCategory = Labs/AWS/Vanta* 
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "app_proto", "netflow" nodrop
| json field=netflow "bytes", "pkts" nodrop
```

**AWS Network Firewall/Netflow Overview/Traffic By Protocol**
```
_sourceCategory = Labs/AWS/Vanta* 
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "app_proto", "netflow" nodrop
| json field=netflow "bytes", "pkts" nodrop
```

**AWS Network Firewall/Netflow Overview/Traffic Over Time**
```
_sourceCategory = Labs/AWS/Vanta* 
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "app_proto", "netflow" nodrop
| json field=netflow "bytes", "pkts" nodrop
```


