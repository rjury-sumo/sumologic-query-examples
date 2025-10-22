# Parsers For F5 - BIG-IP - LTM

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Metrics and Connections/Bytes (MB) Out by Host**
```
_sourceCategory={{Logsdatasource}} 
| json "system.hostname" as host
| json field=_raw "$['system']['tmmTraffic']['clientSideTraffic.bitsOut']" as clientside_bits_out
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Metrics and Connections/Bytes(MB) IN by Host**
```
_sourceCategory={{Logsdatasource}} 
| json "system.hostname" as host
| json field=_raw "$['system']['tmmTraffic']['clientSideTraffic.bitsIn']" as clientside_bits_in
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Metrics and Connections/Packets In by Host**
```
_sourceCategory={{Logsdatasource}} 
| json "system.hostname" as host
| json field=_raw "$['system']['tmmTraffic']['clientSideTraffic.bitsIn']" as clientside_pkts_in
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Metrics and Connections/Packets Out by Host**
```
_sourceCategory={{Logsdatasource}} 
| json "system.hostname" as host
| json field=_raw "$['system']['tmmTraffic']['clientSideTraffic.bitsOut']" as clientside_pkts_out
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Metrics and Connections/TCP Connections by Host**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "telemetryEventCategory" , "system.hostname"  as telemetryEventCategory, host
| where telemetryEventCategory="systemInfo"
| json field=_raw "virtualServers"
| parse regex field=virtualServers "name\"\:\"(?<virtualServer_name>[\S]+?)\"" multi
| parse regex field=virtualServers "clientside.curConns\"\:(?<clientside_cur_conns>[\S]+?)\," multi
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Metrics and Connections/TMM CPU Usage**
```
_sourceCategory={{Logsdatasource}} 
| json "system.tmmCpu" as cpu
| json "system.tmmMemory" as memory
| json "system.hostname" as host
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Metrics and Connections/TMM Memory Usage by Host**
```
_sourceCategory={{Logsdatasource}} 
| json "system.tmmCpu" as cpu
| json "system.tmmMemory" as memory
| json "system.hostname" as host
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Metrics and Connections/Total TCP Connections**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="systemInfo"
| json field=_raw "virtualServers"
| parse regex field=virtualServers "name\"\:\"(?<virtualServer_name>[\S]+?)\"" multi
| parse regex field=virtualServers "clientside.curConns\"\:(?<clientside_cur_conns>[\S]+?)\," multi
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Outlier Analysis/Bytes(MB) IN - Outlier**
```
_sourceCategory={{Logsdatasource}}  
| json "system.hostname" as host
| json field=_raw "$['system']['tmmTraffic']['clientSideTraffic.bitsIn']" as clientside_bits_in
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Outlier Analysis/Login Request - Outlier**
```
_sourceCategory={{Logsdatasource}}    
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="ASM"
| json  "method", "ip_client","violations", "policy_name", "web_application_name", "hostname", "protocol", "severity", "attack_type", "geo_location", "username", "session_id" ,"dest_ip", "threat_campaign_names", "staged_threat_campaign_names" , "blocking_exception_reason", "uri", "request", "tenant", "application" nodrop
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Outlier Analysis/Packets Out - Outlier Analysis**
```
_sourceCategory={{Logsdatasource}}  
| json "system.hostname" as host
| json field=_raw "$['system']['tmmTraffic']['clientSideTraffic.bitsOut']" as clientside_pkts_out
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Outlier Analysis/TCP Connections - Outlier**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="systemInfo"
| json field=_raw "virtualServers"
| parse regex field=virtualServers "name\"\:\"(?<virtualServer_name>[\S]+?)\"" multi
| parse regex field=virtualServers "clientside.curConns\"\:(?<clientside_cur_conns>[\S]+?)\," multi
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Outlier Analysis/TMM CPU Usage  - Outlier**
```
_sourceCategory={{Logsdatasource}}   
| json "system.tmmCpu" as cpu
| json "system.tmmMemory" as memory
| json "system.hostname" as host
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Outlier Analysis/TMM Memory Usage - Outlier**
```
_sourceCategory={{Logsdatasource}}   
| json "system.tmmCpu" as cpu
| json "system.tmmMemory" as memory
| json "system.hostname" as host
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Overview/Applications**
```
_sourceCategory={{Logsdatasource}}   systemInfo
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
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Overview/Geo Location of Attacks**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="ASM"
| json  "method", "ip_client","violations", "policy_name", "web_application_name", "hostname", "protocol", "severity", "attack_type", "geo_location", "username", "session_id" ,"dest_ip", "threat_campaign_names", "staged_threat_campaign_names" , "blocking_exception_reason", "uri", "request", "tenant", "application" nodrop
| parse regex field=request  "(?<mthd>[A-Z]+)\s(?<URL>\S+)\sHTTP\/[\d.]+[\S]+User-Agent\:\s(?<user_agent>.+)[\S]+Host\:\s(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}).+" nodrop
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Overview/Geo Location of User Session**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="ASM"
| json  "method", "ip_client","violations", "policy_name", "web_application_name", "hostname", "protocol", "severity", "attack_type", "geo_location", "username", "dest_ip", "threat_campaign_names", "staged_threat_campaign_names" , "blocking_exception_reason", "uri", "request", "tenant", "application" nodrop
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Overview/Pool Status**
```
_sourceCategory={{Logsdatasource}}   systemInfo
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
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Overview/Top 20 Pools**
```
_sourceCategory={{Logsdatasource}}   systemInfo
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
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Overview/Violations Triggered by Hosts**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="ASM"
| json  "method", "ip_client","violations", "policy_name", "web_application_name", "hostname", "protocol", "severity", "attack_type", "geo_location", "username", "session_id" ,"dest_ip", "threat_campaign_names", "staged_threat_campaign_names" , "blocking_exception_reason", "uri", "request", "tenant", "application" nodrop
| parse regex field=request  "(?<mthd>[A-Z]+)\s(?<URL>\S+)\sHTTP\/[\d.]+[\S]+User-Agent\:\s(?<user_agent>.+)[\S]+Host\:\s(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}).+" nodrop
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Threat Analysis/Threat Breakdown by Sources**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="LTM"
| json  "application", "tenant", "virtual_name", "http_uri", "http_method", "client_ip", "hostname"
| count as ip_count by client_ip, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=client_ip 
| json field=raw "labels[*].name" as label_name 
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Threat Analysis/Threat by Actor**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="LTM"
| json  "application", "tenant", "virtual_name", "http_uri", "http_method", "client_ip", "hostname"
| count as ip_count by client_ip, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=client_ip 
| json field=raw "labels[*].name" as label_name 
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Threat Analysis/Threat by Geo Location**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="LTM"
| json  "application", "tenant", "virtual_name", "http_uri", "http_method", "client_ip", "hostname"
| count as ip_count by client_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=client_ip 
| json field=raw "labels[*].name" as label_name 
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Threat Analysis/Threat Count**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="LTM"
| json  "application", "tenant", "virtual_name", "http_uri", "http_method", "client_ip", "hostname"
| count as ip_count by client_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=client_ip 
| json field=raw "labels[*].name" as label_name 
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Threat Analysis/Threat Table**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="LTM"
| json  "application", "tenant", "virtual_name", "http_uri", "http_method", "client_ip", "hostname"
| count as ip_count by client_ip, _source, application, tenant, http_method, http_uri, hostname
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=client_ip 
| json field=raw "labels[*].name" as label_name 
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - Threat Analysis/Threats by Malicious Confidence**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="LTM"
| json  "application", "tenant", "virtual_name", "http_uri", "http_method", "client_ip", "hostname"
| count as ip_count by client_ip, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=client_ip 
| json field=raw "labels[*].name" as label_name 
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - User Session/Attack Summary**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="ASM"
| json  "method", "ip_client","violations", "policy_name", "web_application_name", "hostname", "protocol", "severity", "attack_type", "geo_location", "username", "session_id" ,"dest_ip", "threat_campaign_names", "staged_threat_campaign_names" , "blocking_exception_reason", "uri", "request", "tenant", "application" nodrop
| parse regex field=request  "(?<mthd>[A-Z]+)\s(?<URL>\S+)\sHTTP\/[\d.]+[\S]+User-Agent\:\s(?<user_agent>.+)[\S]+Host\:\s(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}).+" nodrop
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - User Session/Attacks Detected**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="ASM"
| json  "method", "ip_client","violations", "policy_name", "web_application_name", "hostname", "protocol", "severity", "attack_type", "geo_location", "username", "session_id" ,"dest_ip", "threat_campaign_names", "staged_threat_campaign_names" , "blocking_exception_reason", "uri", "request", "tenant", "application" nodrop
| parse regex field=request  "(?<mthd>[A-Z]+)\s(?<URL>\S+)\sHTTP\/[\d.]+[\S]+User-Agent\:\s(?<user_agent>.+)[\S]+Host\:\s(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}).+" nodrop
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - User Session/F5 - BIG-IP LTM - User Session**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="ASM"
| json  "method", "ip_client","violations", "policy_name", "web_application_name", "hostname", "protocol", "severity", "attack_type", "geo_location", "username", "dest_ip", "threat_campaign_names", "staged_threat_campaign_names" , "blocking_exception_reason", "uri", "request", "tenant", "application" nodrop
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - User Session/Login Events Over Time**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="ASM"
| json  "method", "ip_client","violations", "policy_name", "web_application_name", "hostname", "protocol", "severity", "attack_type", "geo_location", "username", "session_id" ,"dest_ip", "threat_campaign_names", "staged_threat_campaign_names" , "blocking_exception_reason", "uri", "request", "tenant", "application" nodrop
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - User Session/Number of Session IDs by Users**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="ASM"
| json  "method", "ip_client","violations", "policy_name", "web_application_name", "hostname", "protocol", "severity", "attack_type", "geo_location", "username", "session_id" ,"dest_ip", "threat_campaign_names", "staged_threat_campaign_names" , "blocking_exception_reason", "uri", "request", "tenant", "application" nodrop
| parse regex field=request  "(?<mthd>[A-Z]+)\s(?<URL>\S+)\sHTTP\/[\d.]+[\S]+User-Agent\:\s(?<user_agent>.+)[\S]+Host\:\s(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}).+" nodrop
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - User Session/OS Breakdown**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="ASM"
| json  "method", "ip_client","violations", "policy_name", "web_application_name", "hostname", "protocol", "severity", "attack_type", "geo_location", "username", "session_id" ,"dest_ip", "threat_campaign_names", "staged_threat_campaign_names" , "blocking_exception_reason", "uri", "request", "tenant", "application" nodrop
| parse regex field=request  "(?<mthd>[A-Z]+)\s(?<URL>\S+)\sHTTP\/[\d.]+[\S]+User-Agent\:\s(?<user_agent>.+)[\S]+Host\:\s(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}).+" nodrop
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - User Session/Severity Levels of Violations**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="ASM"
| json  "method", "ip_client","violations", "policy_name", "web_application_name", "hostname", "protocol", "severity", "attack_type", "geo_location", "username", "session_id" ,"dest_ip", "threat_campaign_names", "staged_threat_campaign_names" , "blocking_exception_reason", "uri", "request", "tenant", "application" nodrop
| parse regex field=request  "(?<mthd>[A-Z]+)\s(?<URL>\S+)\sHTTP\/[\d.]+[\S]+User-Agent\:\s(?<user_agent>.+)[\S]+Host\:\s(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}).+" nodrop
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - User Session/Users By Application Profile**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="ASM"
| json  "method", "ip_client","violations", "policy_name", "web_application_name", "hostname", "protocol", "severity", "attack_type", "geo_location", "username", "session_id" ,"dest_ip", "threat_campaign_names", "staged_threat_campaign_names" , "blocking_exception_reason", "uri", "request", "tenant", "application" nodrop
| parse regex field=request  "(?<mthd>[A-Z]+)\s(?<URL>\S+)\sHTTP\/[\d.]+[\S]+User-Agent\:\s(?<user_agent>.+)[\S]+Host\:\s(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}).+" nodrop
```

**F5 - BIG-IP - LTM/F5 - BIG-IP LTM - User Session/Violations Triggered**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "telemetryEventCategory"  as telemetryEventCategory
| where telemetryEventCategory="ASM"
| json  "method", "ip_client","violations", "policy_name", "web_application_name", "hostname", "protocol", "severity", "attack_type", "geo_location", "username", "session_id" ,"dest_ip", "threat_campaign_names", "staged_threat_campaign_names" , "blocking_exception_reason", "uri", "request", "tenant", "application" nodrop
| parse regex field=request  "(?<mthd>[A-Z]+)\s(?<URL>\S+)\sHTTP\/[\d.]+[\S]+User-Agent\:\s(?<user_agent>.+)[\S]+Host\:\s(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}).+" nodrop
```


