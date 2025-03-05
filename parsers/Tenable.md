# Parsers For Tenable

## Parser:
```
| json "asset.device_type", "asset.fqdn" ,"asset.hostname", "asset.ipv4", "asset.ipv6", "asset.last_authenticated_results", "asset.operating_system" , "output", "plugin.family" , "plugin.type" , "plugin.name", "plugin.risk_factor", "plugin.synopsis", "plugin.exploit_available" , "plugin.exploited_by_malware", "plugin.solution", "state", "scan.completed_at", "port.port", "port.protocol", "last_found" as device_type, fqdn, hostname, host_ipv4, host_ipv6, last_authenticated_scan_time, host_os, output,plugin_family, plugin_type ,plugin_name, plugin_risk_factor, plugin_synopsis, plugin_exploit_available, plugin_exploited_by_malware, plugin_solution, state, scan_completed_at, port, protocol, last_scan_time nodrop
```
### Use Cases:
Audit Events, Audit Summary, Finding Details, High/Critical Vulnerabilities, Hosts Scanned, Severity Findings by Host, Severity Trend, User Create Events, User Delete Events, User Impersonating Events, User Update Events, Vulnerabilities by Port/Protocol, Vulnerabilities by Severity, Vulnerabilities by State



## Parser:
```
| json "asset.device_type", "asset.fqdn" ,"asset.hostname", "asset.ipv4", "asset.ipv6", "asset.last_authenticated_results", "asset.operating_system" , "output", "plugin.family" , "plugin.type" , "plugin.name", "plugin.risk_factor", "plugin.synopsis", "plugin.exploit_available" , "plugin.exploited_by_malware", "plugin.solution", "state", "scan.completed_at", "port.port", "port.protocol", "last_found",  "severity" as device_type, fqdn, hostname, host_ipv4, host_ipv6, last_authenticated_scan_time, host_os, output,plugin_family, plugin_type ,plugin_name, plugin_risk_factor, plugin_synopsis, plugin_exploit_available, plugin_exploited_by_malware, plugin_solution, state, scan_completed_at, port, protocol, last_scan_time, severity nodrop
```
### Use Cases:
Audit Events, Audit Summary, High/Critical Vulnerabilities, Severity Trend, User Create Events, User Delete Events, User Impersonating Events, User Update Events, Vulnerabilities by Port/Protocol, Vulnerabilities by State



## Parser:
```
| json "description", "actor.name", "target.name", "action" as description, actor_name, target_name, action
```
### Use Cases:
Audit Events, Audit Summary, User Create Events, User Delete Events, User Impersonating Events, User Update Events


