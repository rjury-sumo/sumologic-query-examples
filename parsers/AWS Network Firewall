# Parsers For AWS Network Firewall

## Parser:
```
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "app_proto", "proto", "alert" nodrop
| json field=alert "severity", "signature", "action", "category" nodrop
```
### Use Cases:
Blocked vs Allowed Over Time, High Severity Events, IDS Signatures Over Time, Outlier - Total IDS Alerts, Top 10 Blocked Destination IP, Top 10 Blocked Source IP, Top 10 Signature, Total Alerts



## Parser:
```
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "app_proto", "proto", "alert" nodrop
| json field=raw "labels[*].name" as label_name 
```
### Use Cases:
Blocked vs Allowed Over Time, High Severity Events, IDS Signatures Over Time, Outlier - Total IDS Alerts, Threat Intel Hits, Top 10 Blocked Destination IP, Top 10 Blocked Source IP, Top 10 Signature, Total Alerts



## Parser:
```
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "app_proto", "proto", "alert" nodrop 
```
### Use Cases:
Blocked vs Allowed Over Time, High Severity Events, IDS Signatures Over Time, Outbound Bytes, Outlier - Total IDS Alerts, Threat Intel Hits, Top 10 Blocked Destination IP, Top 10 Blocked Source IP, Top 10 Connection, Top 10 Signature, Top Alert Destinations by Geo location, Top Destination by Geolocation, Total Alerts, Traffic By Application, Traffic By Protocol, Traffic Over Time



## Parser:
```
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "app_proto", "proto", "alert" nodrop | where event_type = "alert"
```
### Use Cases:
Blocked vs Allowed Over Time, High Severity Events, IDS Signatures Over Time, Outlier - Total IDS Alerts, Threat Intel Hits, Top 10 Blocked Destination IP, Top 10 Blocked Source IP, Top 10 Signature, Top Alert Destinations by Geo location, Total Alerts



## Parser:
```
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "alert" nodrop
| json field=alert "severity", "signature", "action", "category" nodrop
```
### Use Cases:
Blocked vs Allowed Over Time, High Severity Events, Top 10 Blocked Destination IP, Top 10 Blocked Source IP, Top 10 Signature, Total Alerts



## Parser:
```
| json "firewall_name", "availability_zone", "event" nodrop
| json field=event "event_type", "src_ip", "src_port", "dest_ip", "dest_port", "proto", "app_proto", "netflow" nodrop
| json field=netflow "bytes", "pkts" nodrop
```
### Use Cases:
Blocked vs Allowed Over Time, High Severity Events, IDS Signatures Over Time, Outbound Bytes, Outlier - Total IDS Alerts, Threat Intel Hits, Top 10 Blocked Destination IP, Top 10 Blocked Source IP, Top 10 Connection, Top 10 Signature, Top Alert Destinations by Geo location, Total Alerts, Traffic By Application, Traffic By Protocol, Traffic Over Time


