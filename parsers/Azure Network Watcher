# Parsers For Azure Network Watcher

## Parser:
```
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
### Use Cases:
Breakdown of Traffic (Allowed or Denied), Denied Flow Traffic by Rule Name, Denied Traffic Comparison (Today Vs Yesterday) - Outlier, Denied Traffic Flow by Source Location, Denied Traffic per Hour -  Outlier, Denied Traffic per Minute, Flow Traffic by Protocol, Flow Traffic by Rule Name, Source Address Location of Inbound Traffic, Top 10 Denied Destination IP, Top 10 Denied Destination IP, Port, Top 10 Denied Source IP, Top 10 Denied Source IP, Port, Top 10 Destination Ports



## Parser:
```
| json field=_raw "rule_name" 
| json field=_raw "resource_id"
| json field=_raw "event_name"
| json field=_raw "mac"
| json field=_raw "src_ip"
| json field=_raw "dest_IP"
| json field=_raw "dest_port"
| json field=_raw "protocol"
| parse regex field=resource_id"(?<NSG>[\w-_.]+)$"
| json field=_raw "src_port"
| json field=_raw "traffic_destination"
| json field=_raw "traffic_a/d" as traffic_a_d
```
### Use Cases:
Breakdown of Traffic (Allowed or Denied), Denied Flow Traffic by Rule Name, Denied Traffic Comparison (Today Vs Yesterday) - Outlier, Denied Traffic Flow by Source Location, Denied Traffic per Hour -  Outlier, Denied Traffic per Minute, Flow Traffic by Protocol, Flow Traffic by Rule Name, Source Address Location of Inbound Traffic, Top 10 Denied Destination IP, Top 10 Denied Destination IP, Port, Top 10 Denied Source IP, Top 10 Denied Source IP, Port, Top 10 Destination Ports



## Parser:
```
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
### Use Cases:
Breakdown of Traffic (Allowed or Denied), Denied Traffic Comparison (Today Vs Yesterday) - Outlier, Denied Traffic per Hour -  Outlier, Denied Traffic per Minute, Flow Traffic by Protocol, Flow Traffic by Rule Name, Source Address Location of Inbound Traffic, Top 10 Denied Source IP, Port, Top 10 Destination Ports



## Parser:
```
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
### Use Cases:
Breakdown of Traffic (Allowed or Denied), Denied Flow Traffic by Rule Name, Denied Traffic Comparison (Today Vs Yesterday) - Outlier, Denied Traffic Flow by Source Location, Denied Traffic per Hour -  Outlier, Denied Traffic per Minute, Flow Traffic by Protocol, Flow Traffic by Rule Name, Source Address Location of Inbound Traffic, Top 10 Denied Destination IP, Top 10 Denied Destination IP, Port, Top 10 Denied Source IP, Top 10 Denied Source IP, Port, Top 10 Destination Ports


