# Parsers For Rapid7

**Rapid7/Assets Overview/Assets by Type**
```
_sourceCategory={{Logsdatasource}}   assessed_for_policies // fetches assets
| json "id", "type", "os_system_name", "risk_score", "host_name", "ip","severe_vulnerabilities", "total_vulnerabilities", "last_assessed_for_vulnerabilities", "mac", "last_scan_end", "tags[*].name" as id, type, operating_system, risk_score, host_name, ip, severe_vulnerabilities, total_vulnerabilities, last_assessed_time, mac, last_scan_end, tag_name_list nodrop
| extract field=tag_name_list "\"?(?<tag_name>[\w\s\-&.-z)(,]*?)\"?[,\n\]]" multi
```

**Rapid7/Assets Overview/Assets from Risky Geo Locations**
```
_sourceCategory={{Logsdatasource}}   assessed_for_policies // fetches assets
| json "id", "type", "os_system_name", "risk_score", "host_name", "ip","severe_vulnerabilities", "total_vulnerabilities", "last_assessed_for_vulnerabilities", "mac", "last_scan_end", "tags[*].name" as id, type, operating_system, risk_score, host_name, ip, severe_vulnerabilities, total_vulnerabilities, last_assessed_time, mac, last_scan_end, tag_name_list nodrop
| extract field=tag_name_list "\"?(?<tag_name>[\w\s\-&.-z)(,]*?)\"?[,\n\]]" multi
| where tag_name matches "{{tag}}"
| where operating_system matches "{{operating_system}}"
| where isValidIPv4(ip) or isValidIPv6(ip)
| where !isNull(ip)
| if(isValidIPv4(ip), if(!isPrivateIP(ip),true,false),true) as is_public
| where is_public
| count_distinct(id) as frequency by ip
| lookup latitude, longitude, country_code from geo://location on ip = ip
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code
```

**Rapid7/Assets Overview/Geo Locations of Assets**
```
_sourceCategory={{Logsdatasource}}   assessed_for_policies // fetches assets
| json "id", "type", "os_system_name", "risk_score", "host_name", "ip","severe_vulnerabilities", "total_vulnerabilities", "last_assessed_for_vulnerabilities", "mac", "last_scan_end", "tags[*].name" as id, type, operating_system, risk_score, host_name, ip, severe_vulnerabilities, total_vulnerabilities, last_assessed_time, mac, last_scan_end, tag_name_list nodrop
| extract field=tag_name_list "\"?(?<tag_name>[\w\s\-&.-z)(,]*?)\"?[,\n\]]" multi
```

**Rapid7/Assets Overview/Recent Scanned Assets**
```
_sourceCategory={{Logsdatasource}}   assessed_for_policies // fetches assets
| json "id", "type", "os_system_name", "risk_score", "host_name", "ip","severe_vulnerabilities", "total_vulnerabilities", "last_assessed_for_vulnerabilities", "mac", "last_scan_end", "tags[*].name" as id, type, operating_system, risk_score, host_name, ip, severe_vulnerabilities, total_vulnerabilities, last_assessed_time, mac, last_scan_end, tag_name_list nodrop
| extract field=tag_name_list "\"?(?<tag_name>[\w\s\-&.-z)(,]*?)\"?[,\n\]]" multi
| where tag_name matches "{{tag}}"
| where operating_system matches "{{operating_system}}"
| if(isNull(host_name),"-",host_name) as host_name
| count_distinct(id) as frequency by id, ip, host_name, operating_system, last_assessed_time, total_vulnerabilities, severe_vulnerabilities, risk_score, last_scan_end
| extract field=last_assessed_time "(?<date>.*)T(?<time>\d*:\d*:\d*)"
| concat(date," ",time) as last_assessed_time
| extract field=last_scan_end "(?<date>.*)T(?<time>\d*:\d*:\d*)"
```

**Rapid7/Assets Overview/Top 10 Assets by Vulnerability**
```
_sourceCategory={{Logsdatasource}}   assessed_for_policies // fetches assets
| json "id", "type", "os_system_name", "risk_score", "host_name", "ip","severe_vulnerabilities", "total_vulnerabilities", "last_assessed_for_vulnerabilities", "mac", "last_scan_end", "tags[*].name" as id, type, operating_system, risk_score, host_name, ip, severe_vulnerabilities, total_vulnerabilities, last_assessed_time, mac, last_scan_end, tag_name_list nodrop
| extract field=tag_name_list "\"?(?<tag_name>[\w\s\-&.-z)(,]*?)\"?[,\n\]]" multi
| where tag_name matches "{{tag}}"
| where operating_system matches "{{operating_system}}"
| if(isNull(host_name),"-",host_name) as host_name
| if(isNull(mac),"-",mac) as mac
| count_distinct(id) as frequency by id, ip, host_name, mac, last_assessed_time, severe_vulnerabilities, total_vulnerabilities
| extract field=last_assessed_time "(?<date>.*)T(?<time>\d*:\d*:\d*)"
```

**Rapid7/Assets Overview/Top 10 Operating Systems**
```
_sourceCategory={{Logsdatasource}}   assessed_for_policies // fetches assets
| json "id", "type", "os_system_name", "risk_score", "host_name", "ip","severe_vulnerabilities", "total_vulnerabilities", "last_assessed_for_vulnerabilities", "mac", "last_scan_end", "tags[*].name" as id, type, operating_system, risk_score, host_name, ip, severe_vulnerabilities, total_vulnerabilities, last_assessed_time, mac, last_scan_end, tag_name_list nodrop
| extract field=tag_name_list "\"?(?<tag_name>[\w\s\-&.-z)(,]*?)\"?[,\n\]]" multi
```

**Rapid7/Assets Overview/Top 10 Vulnerable Assets**
```
_sourceCategory={{Logsdatasource}}   assessed_for_policies // fetches assets
| json "id", "type", "os_system_name", "risk_score", "host_name", "ip","severe_vulnerabilities", "total_vulnerabilities", "last_assessed_for_vulnerabilities", "mac", "last_scan_end", "tags[*].name" as id, type, operating_system, risk_score, host_name, ip, severe_vulnerabilities, total_vulnerabilities, last_assessed_time, mac, last_scan_end, tag_name_list nodrop
| extract field=tag_name_list "\"?(?<tag_name>[\w\s\-&.-z)(,]*?)\"?[,\n\]]" multi
| where tag_name matches "{{tag}}"
| where operating_system matches "{{operating_system}}"
| where !isNull(risk_score) 
| if(isNull(host_name),"-",host_name) as host_name
| count_distinct(id) as frequency by id, ip, host_name, mac, last_assessed_time, risk_score
| extract field=last_assessed_time "(?<date>.*)T(?<time>\d*:\d*:\d*)"
```

**Rapid7/Assets Overview/Total Assets**
```
_sourceCategory={{Logsdatasource}}   assessed_for_policies // fetches assets
| json "id", "type", "os_system_name", "risk_score", "host_name", "ip","severe_vulnerabilities", "total_vulnerabilities", "last_assessed_for_vulnerabilities", "mac", "last_scan_end", "tags[*].name" as id, type, operating_system, risk_score, host_name, ip, severe_vulnerabilities, total_vulnerabilities, last_assessed_time, mac, last_scan_end, tag_name_list nodrop
| extract field=tag_name_list "\"?(?<tag_name>[\w\s\-&.-z)(,]*?)\"?[,\n\]]" multi
```

**Rapid7/Vulnerabilities Overview/New Vulnerability Findings**
```
_sourceCategory={{Logsdatasource}}   asset_id // vulnerabilities related to assets
| json "vulnerability_id","finding_status","solution_id","solution_summary","solution_type" as vulnerability_id, finding_status, solution_id, solution_summary, solution_type nodrop
```

**Rapid7/Vulnerabilities Overview/Recent Vulnerabilities**
```
_sourceCategory={{Logsdatasource}}   (cvss_v2_access_complexity or asset_id) 
| join
(json "id","severity","risk_score","title" as id, severity,risk_score, title) as vulnerability,
(json "vulnerability_id","asset_id","finding_status","last_found" as vulnerability_id, asset_id, finding_status, last_found) as asset_vulnerability
on vulnerability.id=asset_vulnerability.vulnerability_id // get information of asset related vulnerabilities from knowledge base
| fields vulnerability_severity, vulnerability_id, vulnerability_risk_score, asset_vulnerability_asset_id, asset_vulnerability_finding_status, vulnerability_title, asset_vulnerability_last_found
| first(asset_vulnerability_finding_status) as asset_vulnerability_finding_status group by vulnerability_id, asset_vulnerability_asset_id, vulnerability_severity, vulnerability_risk_score, vulnerability_title, asset_vulnerability_last_found
| count_distinct(vulnerability_id) as frequency by vulnerability_id, vulnerability_severity, vulnerability_risk_score, vulnerability_title, asset_vulnerability_last_found, asset_vulnerability_finding_status, asset_vulnerability_asset_id
| extract field=asset_vulnerability_last_found "(?<date>.*)T(?<time>\d*:\d*:\d*)" 
```

**Rapid7/Vulnerabilities Overview/Remediated Vulnerability Findings**
```
_sourceCategory={{Logsdatasource}}   asset_id //vulnerabilities related to assets
| json "vulnerability_id","finding_status","solution_id","solution_summary","solution_type" as vulnerability_id, finding_status, solution_id, solution_summary, solution_type nodrop
```

**Rapid7/Vulnerabilities Overview/Top 10 Solutions**
```
_sourceCategory={{Logsdatasource}}   asset_id // vulnerabilities related to assets
| json "vulnerability_id","finding_status","solution_id","solution_summary","solution_type" as vulnerability_id, finding_status, solution_id, solution_summary, solution_type nodrop
```

**Rapid7/Vulnerabilities Overview/Vulnerabilities by Severity**
```
_sourceCategory={{Logsdatasource}}   cvss_v2_access_complexity 
| json "id","severity" as id, severity nodrop
| where [subquery: _sourceCategory={{Logsdatasource}}   asset_id //vulnerabilities related to assets
  | json "vulnerability_id" as id nodrop
```

**Rapid7/Vulnerabilities Overview/Vulnerabilities Over Time**
```
_sourceCategory={{Logsdatasource}}   asset_id // vulnerabilities related to assets 
| json "vulnerability_id","finding_status","solution_id","solution_summary","solution_type" as vulnerability_id, finding_status, solution_id, solution_summary, solution_type nodrop
```


