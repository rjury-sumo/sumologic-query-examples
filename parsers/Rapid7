# Parsers For Rapid7

## Parser:
```
| extract field=asset_vulnerability_last_found "(?<date>.*)T(?<time>\d*:\d*:\d*)" 
```
### Use Cases:
Assets by Type, Assets from Risky Geo Locations, Geo Locations of Assets, New Vulnerability Findings, Recent Scanned Assets, Recent Vulnerabilities, Remediated Vulnerability Findings, Top 10 Assets by Vulnerability, Top 10 Operating Systems, Top 10 Vulnerable Assets, Total Assets, Vulnerabilities by Severity



## Parser:
```
| json "id", "type", "os_system_name", "risk_score", "host_name", "ip","severe_vulnerabilities", "total_vulnerabilities", "last_assessed_for_vulnerabilities", "mac", "last_scan_end", "tags[*].name" as id, type, operating_system, risk_score, host_name, ip, severe_vulnerabilities, total_vulnerabilities, last_assessed_time, mac, last_scan_end, tag_name_list nodrop
| extract field=tag_name_list "\"?(?<tag_name>[\w\s\-&.-z)(,]*?)\"?[,\n\]]" multi
```
### Use Cases:
Assets by Type, Assets from Risky Geo Locations, Geo Locations of Assets, Recent Scanned Assets, Top 10 Assets by Vulnerability, Top 10 Operating Systems, Total Assets



## Parser:
```
| json "id", "type", "os_system_name", "risk_score", "host_name", "ip","severe_vulnerabilities", "total_vulnerabilities", "last_assessed_for_vulnerabilities", "mac", "last_scan_end", "tags[*].name" as id, type, operating_system, risk_score, host_name, ip, severe_vulnerabilities, total_vulnerabilities, last_assessed_time, mac, last_scan_end, tag_name_list nodrop
| extract field=tag_name_list "\"?(?<tag_name>[\w\s\-&.-z)(,]*?)\"?[,\n\]]" multi
| extract field=last_assessed_time "(?<date>.*)T(?<time>\d*:\d*:\d*)"
```
### Use Cases:
Assets by Type, Assets from Risky Geo Locations, Geo Locations of Assets, Recent Scanned Assets, Top 10 Assets by Vulnerability, Top 10 Operating Systems, Top 10 Vulnerable Assets, Total Assets



## Parser:
```
| json "id", "type", "os_system_name", "risk_score", "host_name", "ip","severe_vulnerabilities", "total_vulnerabilities", "last_assessed_for_vulnerabilities", "mac", "last_scan_end", "tags[*].name" as id, type, operating_system, risk_score, host_name, ip, severe_vulnerabilities, total_vulnerabilities, last_assessed_time, mac, last_scan_end, tag_name_list nodrop
| extract field=tag_name_list "\"?(?<tag_name>[\w\s\-&.-z)(,]*?)\"?[,\n\]]" multi
| extract field=last_assessed_time "(?<date>.*)T(?<time>\d*:\d*:\d*)"
| extract field=last_scan_end "(?<date>.*)T(?<time>\d*:\d*:\d*)"
```
### Use Cases:
Recent Scanned Assets, Total Assets



## Parser:
```
| json "id","severity" as id, severity nodrop
| json "vulnerability_id" as id nodrop
```
### Use Cases:
Assets by Type, Assets from Risky Geo Locations, Geo Locations of Assets, Recent Scanned Assets, Top 10 Assets by Vulnerability, Top 10 Operating Systems, Top 10 Vulnerable Assets, Total Assets, Vulnerabilities by Severity



## Parser:
```
| json "vulnerability_id","finding_status","solution_id","solution_summary","solution_type" as vulnerability_id, finding_status, solution_id, solution_summary, solution_type nodrop
```
### Use Cases:
Assets by Type, Assets from Risky Geo Locations, Geo Locations of Assets, New Vulnerability Findings, Recent Scanned Assets, Recent Vulnerabilities, Remediated Vulnerability Findings, Top 10 Assets by Vulnerability, Top 10 Operating Systems, Top 10 Solutions, Top 10 Vulnerable Assets, Total Assets, Vulnerabilities by Severity, Vulnerabilities Over Time


