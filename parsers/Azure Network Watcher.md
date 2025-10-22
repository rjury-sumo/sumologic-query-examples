# Parsers For Azure Network Watcher

**Azure Network Watcher/Network Watcher - Denied Traffic Flow/Denied Flow Traffic by Rule Name**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| if(protocol="T","TCP", protocol) as protocol 
| if(protocol="U","UDP", protocol) as protocol
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
```

**Azure Network Watcher/Network Watcher - Denied Traffic Flow/Denied Traffic Flow by Source Location**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
```

**Azure Network Watcher/Network Watcher - Denied Traffic Flow/Denied Traffic per Hour -  Outlier**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
```

**Azure Network Watcher/Network Watcher - Denied Traffic Flow/Top 10 Denied Destination IP**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
```

**Azure Network Watcher/Network Watcher - Denied Traffic Flow/Top 10 Denied Destination IP, Port**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
```

**Azure Network Watcher/Network Watcher - Denied Traffic Flow/Top 10 Denied Source IP**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
```

**Azure Network Watcher/Network Watcher - Denied Traffic Flow/Top 10 Denied Source IP, Port**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "src_port"
| json field=_raw "protocol"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
```

**Azure Network Watcher/Network Watcher - Overview - New/Breakdown of Traffic (Allowed or Denied)**
```
_sourceCategory = Labs/Azure/NetworkWatcher
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
```

**Azure Network Watcher/Network Watcher - Overview - New/Denied Traffic Comparison (Today Vs Yesterday) - Outlier**
```
_sourceCategory = Labs/Azure/NetworkWatcher
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
| where traffic_a_d ="D"
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
```

**Azure Network Watcher/Network Watcher - Overview - New/Denied Traffic per Hour -  Outlier**
```
_sourceCategory = Labs/Azure/NetworkWatcher
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
```

**Azure Network Watcher/Network Watcher - Overview - New/Denied Traffic per Minute**
```
_sourceCategory = Labs/Azure/NetworkWatcher
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
```

**Azure Network Watcher/Network Watcher - Overview - New/Flow Traffic by Protocol**
```
_sourceCategory = Labs/Azure/NetworkWatcher
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| if(protocol="T","TCP", protocol) as protocol 
| if(protocol="U","UDP", protocol) as protocol
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
```

**Azure Network Watcher/Network Watcher - Overview - New/Flow Traffic by Rule Name**
```
_sourceCategory = Labs/Azure/NetworkWatcher
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| if(protocol="T","TCP", protocol) as protocol 
| if(protocol="U","UDP", protocol) as protocol
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
```

**Azure Network Watcher/Network Watcher - Overview - New/Source Address Location of Inbound Traffic**
```
_sourceCategory = Labs/Azure/NetworkWatcher
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
| json field=_raw "protocol"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
```

**Azure Network Watcher/Network Watcher - Overview - New/Top 10 Destination Ports**
```
_sourceCategory = Labs/Azure/NetworkWatcher
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
```

**Azure Network Watcher/Network Watcher - Overview/Breakdown of Traffic (Allowed or Denied)**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
```

**Azure Network Watcher/Network Watcher - Overview/Denied Traffic Comparison (Today Vs Yesterday) - Outlier**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
| where traffic_a_d ="D"
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
```

**Azure Network Watcher/Network Watcher - Overview/Denied Traffic per Hour -  Outlier**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
```

**Azure Network Watcher/Network Watcher - Overview/Denied Traffic per Minute**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
```

**Azure Network Watcher/Network Watcher - Overview/Flow Traffic by Protocol**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| if(protocol="T","TCP", protocol) as protocol 
| if(protocol="U","UDP", protocol) as protocol
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
```

**Azure Network Watcher/Network Watcher - Overview/Flow Traffic by Rule Name**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| if(protocol="T","TCP", protocol) as protocol 
| if(protocol="U","UDP", protocol) as protocol
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
```

**Azure Network Watcher/Network Watcher - Overview/Source Address Location of Inbound Traffic**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
| json field=_raw "protocol"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
```

**Azure Network Watcher/Network Watcher - Overview/Top 10 Destination Ports**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
```


