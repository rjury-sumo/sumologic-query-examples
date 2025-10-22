# Parsers For Tenable

**Tenable/Audit Activity/Audit Events**
```
_sourceCategory={{Logsdatasource}} 
| json "description", "actor.name", "target.name", "action" as description, actor_name, target_name, action
```

**Tenable/Audit Activity/Audit Summary**
```
_sourceCategory={{Logsdatasource}} 
| json "description", "actor.name", "target.name", "action" as description, actor_name, target_name, action
```

**Tenable/Audit Activity/User Create Events**
```
_sourceCategory={{Logsdatasource}} 
| json "description", "actor.name", "target.name", "action" as description, actor_name, target_name, action
```

**Tenable/Audit Activity/User Delete Events**
```
_sourceCategory={{Logsdatasource}} 
| json "description", "actor.name", "target.name", "action" as description, actor_name, target_name, action
```

**Tenable/Audit Activity/User Impersonating Events**
```
_sourceCategory={{Logsdatasource}} 
| json "description", "actor.name", "target.name", "action" as description, actor_name, target_name, action
```

**Tenable/Audit Activity/User Update Events**
```
_sourceCategory={{Logsdatasource}} 
| json "description", "actor.name", "target.name", "action" as description, actor_name, target_name, action
```

**Tenable/Overview/Critical Vulnerabilities**
```
(_sourceCategory={{Logsdatasource}}  fqdn)
| json "asset.device_type", "asset.fqdn" ,"asset.hostname", "asset.ipv4", "asset.ipv6", "asset.last_authenticated_results", "asset.operating_system" , "output", "plugin.family" , "plugin.type" , "plugin.name", "plugin.risk_factor", "plugin.synopsis", "plugin.exploit_available" , "plugin.exploited_by_malware", "plugin.solution", "state", "scan.completed_at", "port.port", "port.protocol", "last_found",  "severity" as device_type, fqdn, hostname, host_ipv4, host_ipv6, last_authenticated_scan_time, host_os, output,plugin_family, plugin_type ,plugin_name, plugin_risk_factor, plugin_synopsis, plugin_exploit_available, plugin_exploited_by_malware, plugin_solution, state, scan_completed_at, port, protocol, last_scan_time, severity nodrop
```

**Tenable/Overview/Finding Details**
```
(_sourceCategory={{Logsdatasource}}  fqdn)
| json "asset.device_type", "asset.fqdn" ,"asset.hostname", "asset.ipv4", "asset.ipv6", "asset.last_authenticated_results", "asset.operating_system" , "output", "plugin.family" , "plugin.type" , "plugin.name", "plugin.risk_factor", "plugin.synopsis", "plugin.exploit_available" , "plugin.exploited_by_malware", "plugin.solution", "state", "scan.completed_at", "port.port", "port.protocol", "last_found" as device_type, fqdn, hostname, host_ipv4, host_ipv6, last_authenticated_scan_time, host_os, output,plugin_family, plugin_type ,plugin_name, plugin_risk_factor, plugin_synopsis, plugin_exploit_available, plugin_exploited_by_malware, plugin_solution, state, scan_completed_at, port, protocol, last_scan_time nodrop
```

**Tenable/Overview/Hosts Scanned**
```

(_sourceCategory={{Logsdatasource}}  fqdn)
| json "asset.device_type", "asset.fqdn" ,"asset.hostname", "asset.ipv4", "asset.ipv6", "asset.last_authenticated_results", "asset.operating_system" , "output", "plugin.family" , "plugin.type" , "plugin.name", "plugin.risk_factor", "plugin.synopsis", "plugin.exploit_available" , "plugin.exploited_by_malware", "plugin.solution", "state", "scan.completed_at", "port.port", "port.protocol", "last_found" as device_type, fqdn, hostname, host_ipv4, host_ipv6, last_authenticated_scan_time, host_os, output,plugin_family, plugin_type ,plugin_name, plugin_risk_factor, plugin_synopsis, plugin_exploit_available, plugin_exploited_by_malware, plugin_solution, state, scan_completed_at, port, protocol, last_scan_time nodrop
```

**Tenable/Overview/Protocol**
```
(_sourceCategory={{Logsdatasource}}  fqdn)
| json "asset.device_type", "asset.fqdn" ,"asset.hostname", "asset.ipv4", "asset.ipv6", "asset.last_authenticated_results", "asset.operating_system" , "output", "plugin.family" , "plugin.type" , "plugin.name", "plugin.risk_factor", "plugin.synopsis", "plugin.exploit_available" , "plugin.exploited_by_malware", "plugin.solution", "state", "scan.completed_at", "port.port", "port.protocol", "last_found" as device_type, fqdn, hostname, host_ipv4, host_ipv6, last_authenticated_scan_time, host_os, output,plugin_family, plugin_type ,plugin_name, plugin_risk_factor, plugin_synopsis, plugin_exploit_available, plugin_exploited_by_malware, plugin_solution, state, scan_completed_at, port, protocol, last_scan_time nodrop
```

**Tenable/Overview/Severity Findings by Host**
```
(_sourceCategory={{Logsdatasource}}  fqdn)
| json "asset.device_type", "asset.fqdn" ,"asset.hostname", "asset.ipv4", "asset.ipv6", "asset.last_authenticated_results", "asset.operating_system" , "output", "plugin.family" , "plugin.type" , "plugin.name", "plugin.risk_factor", "plugin.synopsis", "plugin.exploit_available" , "plugin.exploited_by_malware", "plugin.solution", "state", "scan.completed_at", "port.port", "port.protocol", "last_found" as device_type, fqdn, hostname, host_ipv4, host_ipv6, last_authenticated_scan_time, host_os, output,plugin_family, plugin_type ,plugin_name, plugin_risk_factor, plugin_synopsis, plugin_exploit_available, plugin_exploited_by_malware, plugin_solution, state, scan_completed_at, port, protocol, last_scan_time nodrop
```

**Tenable/Overview/Severity Trend**
```
(_sourceCategory={{Logsdatasource}}  fqdn)
| json "asset.device_type", "asset.fqdn" ,"asset.hostname", "asset.ipv4", "asset.ipv6", "asset.last_authenticated_results", "asset.operating_system" , "output", "plugin.family" , "plugin.type" , "plugin.name", "plugin.risk_factor", "plugin.synopsis", "plugin.exploit_available" , "plugin.exploited_by_malware", "plugin.solution", "state", "scan.completed_at", "port.port", "port.protocol", "last_found" as device_type, fqdn, hostname, host_ipv4, host_ipv6, last_authenticated_scan_time, host_os, output,plugin_family, plugin_type ,plugin_name, plugin_risk_factor, plugin_synopsis, plugin_exploit_available, plugin_exploited_by_malware, plugin_solution, state, scan_completed_at, port, protocol, last_scan_time nodrop
```

**Tenable/Overview/Vulnerabilities by Severity**
```
(_sourceCategory={{Logsdatasource}}  fqdn)
| json "asset.device_type", "asset.fqdn" ,"asset.hostname", "asset.ipv4", "asset.ipv6", "asset.last_authenticated_results", "asset.operating_system" , "output", "plugin.family" , "plugin.type" , "plugin.name", "plugin.risk_factor", "plugin.synopsis", "plugin.exploit_available" , "plugin.exploited_by_malware", "plugin.solution", "state", "scan.completed_at", "port.port", "port.protocol", "last_found" as device_type, fqdn, hostname, host_ipv4, host_ipv6, last_authenticated_scan_time, host_os, output,plugin_family, plugin_type ,plugin_name, plugin_risk_factor, plugin_synopsis, plugin_exploit_available, plugin_exploited_by_malware, plugin_solution, state, scan_completed_at, port, protocol, last_scan_time nodrop
```

**Tenable/Overview/Vulnerabilities by State**
```
(_sourceCategory={{Logsdatasource}}  fqdn)
| json "asset.device_type", "asset.fqdn" ,"asset.hostname", "asset.ipv4", "asset.ipv6", "asset.last_authenticated_results", "asset.operating_system" , "output", "plugin.family" , "plugin.type" , "plugin.name", "plugin.risk_factor", "plugin.synopsis", "plugin.exploit_available" , "plugin.exploited_by_malware", "plugin.solution", "state", "scan.completed_at", "port.port", "port.protocol", "last_found" as device_type, fqdn, hostname, host_ipv4, host_ipv6, last_authenticated_scan_time, host_os, output,plugin_family, plugin_type ,plugin_name, plugin_risk_factor, plugin_synopsis, plugin_exploit_available, plugin_exploited_by_malware, plugin_solution, state, scan_completed_at, port, protocol, last_scan_time nodrop
```


