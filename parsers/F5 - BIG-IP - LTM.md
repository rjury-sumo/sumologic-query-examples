# Parsers For F5 - BIG-IP - LTM

## Parser:
```
| json "system.hostname" as host
| json field=_raw "$['system']['tmmTraffic']['clientSideTraffic.bitsIn']" as clientside_bits_in
 `n```
### Use Cases:
Bytes (MB) Out by Host, Bytes(MB) IN - Outlier, Bytes(MB) IN by Host, Login Request - Outlier, Packets In by Host, Packets Out - Outlier Analysis, Packets Out by Host, TCP Connections by Host, TMM CPU Usage, TMM Memory Usage - Outlier, TMM Memory Usage by Host, Total TCP Connections



## Parser:
```
| json "system.hostname" as host
| json field=_raw "$['system']['tmmTraffic']['clientSideTraffic.bitsIn']" as clientside_pkts_in
 `n```
### Use Cases:
Bytes (MB) Out by Host, Bytes(MB) IN by Host, Packets In by Host, Packets Out by Host, TMM Memory Usage by Host



## Parser:
```
| json "system.hostname" as host
| json field=_raw "$['system']['tmmTraffic']['clientSideTraffic.bitsOut']" as clientside_bits_out
 `n```
### Use Cases:
Bytes (MB) Out by Host, Bytes(MB) IN by Host



## Parser:
```
| json "system.hostname" as host
| json field=_raw "$['system']['tmmTraffic']['clientSideTraffic.bitsOut']" as clientside_pkts_out
 `n```
### Use Cases:
Bytes (MB) Out by Host, Bytes(MB) IN by Host, Packets In by Host, Packets Out - Outlier Analysis, Packets Out by Host, TCP Connections by Host, TMM CPU Usage, TMM Memory Usage - Outlier, TMM Memory Usage by Host, Total TCP Connections



## Parser:
```
| json "system.tmmCpu" as cpu
| json "system.tmmMemory" as memory
| json "system.hostname" as host
 `n```
### Use Cases:
Bytes (MB) Out by Host, Bytes(MB) IN - Outlier, Bytes(MB) IN by Host, Login Request - Outlier, Packets In by Host, Packets Out - Outlier Analysis, Packets Out by Host, TCP Connections - Outlier, TCP Connections by Host, TMM CPU Usage, TMM CPU Usage  - Outlier, TMM Memory Usage - Outlier, TMM Memory Usage by Host, Total TCP Connections



## Parser:
```
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| json  "application", "tenant", "virtual_name", "http_uri", "http_method", "client_ip", "hostname"
| json field=raw "labels[*].name" as label_name 
 `n```
### Use Cases:
Applications, Bytes (MB) Out by Host, Bytes(MB) IN - Outlier, Bytes(MB) IN by Host, Geo Location of Attacks, Geo Location of User Session, Login Request - Outlier, Packets In by Host, Packets Out - Outlier Analysis, Packets Out by Host, Pool Status, TCP Connections - Outlier, TCP Connections by Host, Threat Breakdown by Sources, Threat by Actor, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, TMM CPU Usage, TMM CPU Usage  - Outlier, TMM Memory Usage - Outlier, TMM Memory Usage by Host, Top 20 Pools, Total TCP Connections, Violations Triggered by Hosts



## Parser:
```
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| json  "method", "ip_client","violations", "policy_name", "web_application_name", "hostname", "protocol", "severity", "attack_type", "geo_location", "username", "dest_ip", "threat_campaign_names", "staged_threat_campaign_names" , "blocking_exception_reason", "uri", "request", "tenant", "application" nodrop
 `n```
### Use Cases:
Applications, Attack Summary, Attacks Detected, Bytes (MB) Out by Host, Bytes(MB) IN - Outlier, Bytes(MB) IN by Host, F5 - BIG-IP LTM - User Session, Geo Location of Attacks, Geo Location of User Session, Login Events Over Time, Login Request - Outlier, Number of Session IDs by Users, Packets In by Host, Packets Out - Outlier Analysis, Packets Out by Host, Pool Status, Severity Levels of Violations, TCP Connections - Outlier, TCP Connections by Host, Threat Breakdown by Sources, Threat by Actor, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, TMM CPU Usage, TMM CPU Usage  - Outlier, TMM Memory Usage - Outlier, TMM Memory Usage by Host, Top 20 Pools, Total TCP Connections, Users By Application Profile, Violations Triggered, Violations Triggered by Hosts



## Parser:
```
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| json  "method", "ip_client","violations", "policy_name", "web_application_name", "hostname", "protocol", "severity", "attack_type", "geo_location", "username", "session_id" ,"dest_ip", "threat_campaign_names", "staged_threat_campaign_names" , "blocking_exception_reason", "uri", "request", "tenant", "application" nodrop
 `n```
### Use Cases:
Applications, Bytes (MB) Out by Host, Bytes(MB) IN - Outlier, Bytes(MB) IN by Host, Geo Location of Attacks, Geo Location of User Session, Login Events Over Time, Login Request - Outlier, Packets In by Host, Packets Out - Outlier Analysis, Packets Out by Host, Pool Status, TCP Connections - Outlier, TCP Connections by Host, Threat Breakdown by Sources, Threat by Actor, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, TMM CPU Usage, TMM CPU Usage  - Outlier, TMM Memory Usage - Outlier, TMM Memory Usage by Host, Top 20 Pools, Total TCP Connections, Users By Application Profile, Violations Triggered, Violations Triggered by Hosts



## Parser:
```
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| json  "method", "ip_client","violations", "policy_name", "web_application_name", "hostname", "protocol", "severity", "attack_type", "geo_location", "username", "session_id" ,"dest_ip", "threat_campaign_names", "staged_threat_campaign_names" , "blocking_exception_reason", "uri", "request", "tenant", "application" nodrop
| parse regex field=request  "(?<mthd>[A-Z]+)\s(?<URL>\S+)\sHTTP\/[\d.]+[\S]+User-Agent\:\s(?<user_agent>.+)[\S]+Host\:\s(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}).+" nodrop
 `n```
### Use Cases:
Applications, Attack Summary, Attacks Detected, Bytes (MB) Out by Host, Bytes(MB) IN - Outlier, Bytes(MB) IN by Host, F5 - BIG-IP LTM - User Session, Geo Location of Attacks, Geo Location of User Session, Login Events Over Time, Login Request - Outlier, Number of Session IDs by Users, OS Breakdown, Packets In by Host, Packets Out - Outlier Analysis, Packets Out by Host, Pool Status, Severity Levels of Violations, TCP Connections - Outlier, TCP Connections by Host, Threat Breakdown by Sources, Threat by Actor, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, TMM CPU Usage, TMM CPU Usage  - Outlier, TMM Memory Usage - Outlier, TMM Memory Usage by Host, Top 20 Pools, Total TCP Connections, Users By Application Profile, Violations Triggered, Violations Triggered by Hosts



## Parser:
```
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| json field=_raw "virtualServers"
| parse regex field=virtualServers "name\"\:\"(?<virtualServer_name>[\S]+?)\"" multi
| parse regex field=virtualServers "clientside.curConns\"\:(?<clientside_cur_conns>[\S]+?)\," multi
 `n```
### Use Cases:
Bytes (MB) Out by Host, Bytes(MB) IN - Outlier, Bytes(MB) IN by Host, Login Request - Outlier, Packets In by Host, Packets Out - Outlier Analysis, Packets Out by Host, TCP Connections - Outlier, TCP Connections by Host, TMM CPU Usage, TMM Memory Usage - Outlier, TMM Memory Usage by Host, Total TCP Connections



## Parser:
```
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| json field=_raw "virtualServers"
| parse regex field=virtualServers "name\"\:\"(?<virtualServer_name>[\S]+?)\"" multi
| parse regex field=virtualServers "enabledState\"\:\"(?<enabledState>[\S]+?)\"" multi
| parse regex field=virtualServers "application\"\:\"(?<application>[\S]+?)\"" multi
| parse regex field=virtualServers "availabilityState\"\:\"(?<availabilityState>[\S]+?)\"" multi
| parse regex field=virtualServers "tenant\"\:\"(?<tenant>[\S]+?)\"" multi
| parse regex field=virtualServers "pool\"\:\"(?<pool>[\S]+?)\"" multi
| parse regex field=virtualServers "destination\"\:\"(?<destination>[\S]+?)\"" multi
| parse regex field=virtualServers "clientside.curConns\"\:(?<current_connections>[\S]+?)\," multi
| parse regex field=virtualServers "clientside.bitsOut\"\:(?<client_bits_out>[\S]+?)\," multi
 `n```
### Use Cases:
Applications, Bytes (MB) Out by Host, Bytes(MB) IN - Outlier, Bytes(MB) IN by Host, Geo Location of Attacks, Geo Location of User Session, Login Request - Outlier, Packets In by Host, Packets Out - Outlier Analysis, Packets Out by Host, Pool Status, TCP Connections - Outlier, TCP Connections by Host, TMM CPU Usage, TMM CPU Usage  - Outlier, TMM Memory Usage - Outlier, TMM Memory Usage by Host, Top 20 Pools, Total TCP Connections, Violations Triggered by Hosts



## Parser:
```
| json field=_raw "telemetryEventCategory" , "system.hostname"  as telemetryEventCategory, host
| json field=_raw "virtualServers"
| parse regex field=virtualServers "name\"\:\"(?<virtualServer_name>[\S]+?)\"" multi
| parse regex field=virtualServers "clientside.curConns\"\:(?<clientside_cur_conns>[\S]+?)\," multi
 `n```
### Use Cases:
Bytes (MB) Out by Host, Bytes(MB) IN by Host, Packets In by Host, Packets Out by Host, TCP Connections by Host, TMM Memory Usage by Host


