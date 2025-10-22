# Parsers For Twistlock

**Twistlock/Compliance Violations/Container Scan - Top Descriptions**
```
_sourceCategory={{Logsdatasource}}  type log_type "container_scan" containerCompliance host description
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "severity=\"*\"" as severity nodrop | parse "description=\"*\"" as description nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop 
```

**Twistlock/Compliance Violations/Container Scan - Top Rules Triggered**
```
_sourceCategory={{Logsdatasource}}  type log_type "container_scan" containerCompliance rule
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "severity=\"*\"" as severity nodrop | parse "description=\"*\"" as description nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop 
```

**Twistlock/Compliance Violations/Containers Impacted**
```
_sourceCategory={{Logsdatasource}}  type log_type "container_scan" containerCompliance severity
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "severity=\"*\"" as severity nodrop | parse "description=\"*\"" as description nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop
```

**Twistlock/Compliance Violations/Host Scan - Top Descriptions**
```
_sourceCategory={{Logsdatasource}}  type log_type "host_scan" containerCompliance
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "severity=\"*\"" as severity nodrop | parse "description=\"*\"" as description nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop
```

**Twistlock/Compliance Violations/Host Scan - Top Rules Triggered**
```
_sourceCategory={{Logsdatasource}}  type log_type "host_scan" containerCompliance rule
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "severity=\"*\"" as severity nodrop | parse "description=\"*\"" as description nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop
```

**Twistlock/Compliance Violations/Hosts Impacted**
```
_sourceCategory={{Logsdatasource}}  type log_type "host_scan" containerCompliance severity host compliance_id
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "severity=\"*\"" as severity nodrop | parse "description=\"*\"" as description nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop
```

**Twistlock/Compliance Violations/Image Scan - Top Descriptions**
```
_sourceCategory={{Logsdatasource}}  type log_type "image_scan" containerCompliance image_id description
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "severity=\"*\"" as severity nodrop | parse "description=\"*\"" as description nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Compliance Violations/Image Scan - Top Rules Triggered**
```
_sourceCategory={{Logsdatasource}}  type log_type "image_scan" containerCompliance rule
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "severity=\"*\"" as severity nodrop | parse "description=\"*\"" as description nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Compliance Violations/Images Impacted**
```
_sourceCategory={{Logsdatasource}}  type log_type "image_scan" containerCompliance severity
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "severity=\"*\"" as severity nodrop | parse "description=\"*\"" as description nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Compliance Violations/Registry Impacted**
```
_sourceCategory={{Logsdatasource}}  type log_type "registry_scan" containerCompliance severity
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "severity=\"*\"" as severity nodrop | parse "description=\"*\"" as description nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop
```

**Twistlock/Compliance Violations/Registry Scan - Top Descriptions**
```
_sourceCategory={{Logsdatasource}}  type log_type "registry_scan" containerCompliance
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "severity=\"*\"" as severity nodrop | parse "description=\"*\"" as description nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop
```

**Twistlock/Compliance Violations/Registry Scan - Top Rules Triggered**
```
_sourceCategory={{Logsdatasource}}  type log_type "registry_scan" containerCompliance rule
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "severity=\"*\"" as severity nodrop | parse "description=\"*\"" as description nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop
```

**Twistlock/CVE Status/Available CVE Fixes for Host Vulnerabilities**
```
_sourceCategory={{Logsdatasource}}  type log_type "host_scan" vulnerability vendor_status
| parse regex "\s+(?<component>Twistlock-Console|Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\" log_type=\"*\" vulnerability_id=\"*\" description=\"*\" cve=\"*\" severity=\"*\" package=\"*\" package_version=\"*\" vendor_status=\"*\" rule=\"*\" host=\"*\"" as type, log_type, vulnerability_id, description, cve, severity, package, package_version, vendor_status, rule, host nodrop
```

**Twistlock/CVE Status/Fixes Available by Severity**
```
_sourceCategory={{Logsdatasource}}  type log_type *scan* vulnerability vendor_status
| parse regex "\s+(?<component>Twistlock-Console|Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\" log_type=\"*\" vulnerability_id=\"*\" description=\"*\" cve=\"*\" severity=\"*\" package=\"*\" package_version=\"*\" vendor_status=\"*\" rule=\"*\" host=\"*\"" as type, log_type, vulnerability_id, description, cve, severity, package, package_version, vendor_status, rule, host nodrop
| parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/CVE Status/Fixes Available for CVEs Identified With Images**
```
_sourceCategory={{Logsdatasource}}  type log_type "image_scan" vulnerability image_id vendor_status
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/CVE Status/Fixes Available for CVEs Identified With Registry**
```
_sourceCategory={{Logsdatasource}}  type log_type "registry_scan" vulnerability image_id vendor_status
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop  
```

**Twistlock/CVE Status/Host Scan - CVEs Identified - Time Compare**
```
_sourceCategory={{Logsdatasource}}  type log_type "host_scan" vulnerability vendor_status
| parse regex "\s+(?<component>Twistlock-Console|Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\" log_type=\"*\" vulnerability_id=\"*\" description=\"*\" cve=\"*\" severity=\"*\" package=\"*\" package_version=\"*\" vendor_status=\"*\" rule=\"*\" host=\"*\"" as type, log_type, vulnerability_id, description, cve, severity, package, package_version, vendor_status, rule, host nodrop
```

**Twistlock/CVE Status/Host Scan CVE Status**
```
_sourceCategory={{Logsdatasource}}  type log_type "host_scan" vulnerability vendor_status
| parse regex "\s+(?<component>Twistlock-Console|Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\" log_type=\"*\" vulnerability_id=\"*\" description=\"*\" cve=\"*\" severity=\"*\" package=\"*\" package_version=\"*\" vendor_status=\"*\" rule=\"*\" host=\"*\"" as type, log_type, vulnerability_id, description, cve, severity, package, package_version, vendor_status, rule, host nodrop
```

**Twistlock/CVE Status/Host Scan CVEs - Fix Available**
```
_sourceCategory={{Logsdatasource}}  type log_type "host_scan" vulnerability vendor_status
| parse regex "\s+(?<component>Twistlock-Console|Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\" log_type=\"*\" vulnerability_id=\"*\" description=\"*\" cve=\"*\" severity=\"*\" package=\"*\" package_version=\"*\" vendor_status=\"*\" rule=\"*\" host=\"*\"" as type, log_type, vulnerability_id, description, cve, severity, package, package_version, vendor_status, rule, host nodrop
```

**Twistlock/CVE Status/Image Scan CVE Status**
```
_sourceCategory={{Logsdatasource}}  type log_type "image_scan" vulnerability image_id cve
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/CVE Status/Image Scan CVEs - Fix Available**
```
_sourceCategory={{Logsdatasource}}  type log_type "image_scan" vulnerability image_id vendor_status
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/CVE Status/Image, Registry Scan - CVEs Identified - Time Compare**
```
_sourceCategory={{Logsdatasource}}  type log_type ("image_scan" or "registry_scan") vulnerability vendor_status
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop  
```

**Twistlock/CVE Status/Registry Scan CVE Status**
```
_sourceCategory={{Logsdatasource}}  type log_type "registry_scan" vulnerability image_id cve
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop  
```

**Twistlock/CVE Status/Registry Scan CVEs - Fix Available**
```
_sourceCategory={{Logsdatasource}}  type log_type "registry_scan" vulnerability image_id cve
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop  
```

**Twistlock/Defender Incidents/Defender Incidents**
```
_sourceCategory={{Logsdatasource}}  incident incident_category
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "host=\"*\"" as host nodrop | parse "incident_category=\"*\"" as incident_category nodrop 
| parse "service_name=\"*\"" as service_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Defender Incidents/Incident Category**
```
_sourceCategory={{Logsdatasource}}  incident incident_category
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "host=\"*\"" as host nodrop | parse "incident_category=\"*\"" as incident_category nodrop 
| parse "service_name=\"*\"" as service_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Defender Incidents/Number of Distinct Processes Spawned on Container - Trend**
```
_sourceCategory={{Logsdatasource}}  Twistlock-Defender type process interactive
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop | parse "type=\"*\"" as type nodrop | parse "pid=\"*\"" as pid nodrop | parse "path=\"*\"" as path nodrop | parse "interactive=\"*\"" as interactive nodrop | parse "md5=\"*\"" as md5 nodrop | parse "container_id=\"*\"" as container_id nodrop 
```

**Twistlock/Defender Incidents/Recent Defender Incidents**
```
_sourceCategory={{Logsdatasource}}  incident incident_category
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "host=\"*\"" as host nodrop | parse "incident_category=\"*\"" as incident_category nodrop 
| parse "service_name=\"*\"" as service_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Defender Incidents/Top Processes Spawned on Containers**
```
_sourceCategory={{Logsdatasource}}  Twistlock-Defender type process interactive
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop | parse "type=\"*\"" as type nodrop | parse "pid=\"*\"" as pid nodrop | parse "path=\"*\"" as path nodrop | parse "interactive=\"*\"" as interactive nodrop | parse "md5=\"*\"" as md5 nodrop | parse "container_id=\"*\"" as container_id nodrop 
```

**Twistlock/Detected Vulnerabilities/Host Vulnerability - Top CVE**
```
_sourceCategory={{Logsdatasource}}  type log_type "host_scan" vulnerability host cve
| parse regex "\s+(?<component>Twistlock-Console|Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\" log_type=\"*\" vulnerability_id=\"*\" description=\"*\" cve=\"*\" severity=\"*\" package=\"*\" package_version=\"*\" vendor_status=\"*\" rule=\"*\" host=\"*\"" as type, log_type, vulnerability_id, description, cve, severity, package, package_version, vendor_status, rule, host nodrop
```

**Twistlock/Detected Vulnerabilities/Host Vulnerability - Top Descriptions**
```
_sourceCategory={{Logsdatasource}}  type log_type "host_scan" vulnerability host cve description
| parse regex "\s+(?<component>Twistlock-Console|Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\" log_type=\"*\" vulnerability_id=\"*\" description=\"*\" cve=\"*\" severity=\"*\" package=\"*\" package_version=\"*\" vendor_status=\"*\" rule=\"*\" host=\"*\"" as type, log_type, vulnerability_id, description, cve, severity, package, package_version, vendor_status, rule, host nodrop
```

**Twistlock/Detected Vulnerabilities/Host Vulnerability - Top Rules Triggered**
```
_sourceCategory={{Logsdatasource}}  type log_type "host_scan" vulnerability rule
| parse regex "\s+(?<component>Twistlock-Console|Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\" log_type=\"*\" vulnerability_id=\"*\" description=\"*\" cve=\"*\" severity=\"*\" package=\"*\" package_version=\"*\" vendor_status=\"*\" rule=\"*\" host=\"*\"" as type, log_type, vulnerability_id, description, cve, severity, package, package_version, vendor_status, rule, host nodrop
```

**Twistlock/Detected Vulnerabilities/Hosts Impacted with Vulnerability by Severity**
```
_sourceCategory={{Logsdatasource}}  type log_type "host_scan" vulnerability host severity
| parse regex "\s+(?<component>Twistlock-Console|Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\" log_type=\"*\" vulnerability_id=\"*\" description=\"*\" cve=\"*\" severity=\"*\" package=\"*\" package_version=\"*\" vendor_status=\"*\" rule=\"*\" host=\"*\"" as type, log_type, vulnerability_id, description, cve, severity, package, package_version, vendor_status, rule, host nodrop
```

**Twistlock/Detected Vulnerabilities/Image Vulnerability - Top CVE**
```
_sourceCategory={{Logsdatasource}}  type log_type "image_scan" vulnerability image_id cve
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Detected Vulnerabilities/Image Vulnerability - Top Descriptions**
```
_sourceCategory={{Logsdatasource}}  type log_type "image_scan" vulnerability image_id cve description
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Detected Vulnerabilities/Image Vulnerability - Top Rules Triggered**
```
_sourceCategory={{Logsdatasource}}  type log_type "image_scan" vulnerability rule
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Detected Vulnerabilities/Images Impacted with Vulnerability by Severity**
```
_sourceCategory={{Logsdatasource}}  type log_type "image_scan" vulnerability image_id cve vulnerability_id severity
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Detected Vulnerabilities/Registry Impacted with Vulnerability by Severity**
```
_sourceCategory={{Logsdatasource}}  type log_type "registry_scan" vulnerability image_id cve vulnerability_id
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop 
```

**Twistlock/Detected Vulnerabilities/Registry Vulnerability - Top CVE**
```
_sourceCategory={{Logsdatasource}}  type log_type "registry_scan" vulnerability image_id cve
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop  
```

**Twistlock/Detected Vulnerabilities/Registry Vulnerability - Top Descriptions**
```
_sourceCategory={{Logsdatasource}}  type log_type "registry_scan" vulnerability image_id cve description
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop 
```

**Twistlock/Detected Vulnerabilities/Registry Vulnerability - Top Rules Triggered**
```
_sourceCategory={{Logsdatasource}}  type log_type "registry_scan" vulnerability rule
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop  
```

**Twistlock/Detected Vulnerabilities/Top Hosts with Most CVEs**
```
_sourceCategory={{Logsdatasource}}  type log_type "host_scan" vulnerability host cve
| parse regex "\s+(?<component>Twistlock-Console|Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\" log_type=\"*\" vulnerability_id=\"*\" description=\"*\" cve=\"*\" severity=\"*\" package=\"*\" package_version=\"*\" vendor_status=\"*\" rule=\"*\" host=\"*\"" as type, log_type, vulnerability_id, description, cve, severity, package, package_version, vendor_status, rule, host nodrop
```

**Twistlock/Detected Vulnerabilities/Top Images with Most CVEs**
```
_sourceCategory={{Logsdatasource}}  type log_type "image_scan" vulnerability image_id cve
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Detected Vulnerabilities/Top Registry with Most CVEs**
```
_sourceCategory={{Logsdatasource}}  type log_type "registry_scan" vulnerability image_id cve
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop  
```

**Twistlock/Overview/Audit Events**
```
_sourceCategory={{Logsdatasource}}  type log_type *audit*
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "effect=\"*\"" as effect nodrop | parse "msg=\"*\"" as msg nodrop | parse "service_name=\"*\"" as service_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "username=\"*\"" as username nodrop | parse "source_ip=\"*\"" as source_ip nodrop | parse "api=\"*\"" as api nodrop | parse "status=\"*\"" as status nodrop
```

**Twistlock/Overview/Compliance Scan Events by Severity**
```
_sourceCategory={{Logsdatasource}}  type log_type *scan* containerCompliance severity
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "severity=\"*\"" as severity nodrop | parse "description=\"*\"" as description nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop
```

**Twistlock/Overview/Compliance Violations**
```
_sourceCategory={{Logsdatasource}}  type log_type *scan* containerCompliance severity critical
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "severity=\"*\"" as severity nodrop | parse "description=\"*\"" as description nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop
```

**Twistlock/Overview/Containers**
```
_sourceCategory={{Logsdatasource}}  type log_type *scan* container_id host
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop | parse "description=\"*\"" as description nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "hostname=\"*\"" as hostname nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "cve=\"*\"" as cve nodrop | parse "compliance=\"*\"" as compliance nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "host=\"*\"" as host nodrop | parse "severity=\"*\"" as severity nodrop | parse "rule=\"*\"" as rule nodrop
```

**Twistlock/Overview/Containers by Host**
```
_sourceCategory={{Logsdatasource}}  type log_type *scan* host container_id 
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "hostname=\"*\"" as hostname nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "cve=\"*\"" as cve nodrop | parse "compliance=\"*\"" as compliance nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "host=\"*\"" as host nodrop | parse "severity=\"*\"" as severity nodrop | parse "rule=\"*\"" as rule nodrop | parse "description=\"*\"" as description nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop
```

**Twistlock/Overview/Defender Incidents**
```
_sourceCategory={{Logsdatasource}}  incident incident_category
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "host=\"*\"" as host nodrop | parse "incident_category=\"*\"" as incident_category nodrop 
| parse "service_name=\"*\"" as service_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Overview/Fixes Available**
```
_sourceCategory={{Logsdatasource}}  type log_type *scan* vulnerability vendor_status critical
| parse regex "\s+(?<component>Twistlock-Console|Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\" log_type=\"*\" vulnerability_id=\"*\" description=\"*\" cve=\"*\" severity=\"*\" package=\"*\" package_version=\"*\" vendor_status=\"*\" rule=\"*\" host=\"*\"" as type, log_type, vulnerability_id, description, cve, severity, package, package_version, vendor_status, rule, host nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Overview/Hosts**
```
_sourceCategory={{Logsdatasource}}  type log_type *scan* host
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop | parse "description=\"*\"" as description nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "hostname=\"*\"" as hostname nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "cve=\"*\"" as cve nodrop | parse "compliance=\"*\"" as compliance nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "host=\"*\"" as host nodrop | parse "severity=\"*\"" as severity nodrop | parse "rule=\"*\"" as rule nodrop
```

**Twistlock/Overview/Recent Critical Vulnerabilities**
```
_sourceCategory={{Logsdatasource}}  type log_type *scan* vulnerability cve critical
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop
```

**Twistlock/Overview/Rules Triggered**
```
_sourceCategory={{Logsdatasource}}  type log_type *scan* rule
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop | parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop
```

**Twistlock/Overview/Vulnerability Scan Events by Severity**
```
_sourceCategory={{Logsdatasource}}  type log_type *scan* vulnerability severity
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "severity=\"*\"" as severity nodrop | parse "description=\"*\"" as description nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "cve=\"*\"" as cve nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
```

**Twistlock/Overview/Vulnerable Hosts**
```
_sourceCategory={{Logsdatasource}}  type log_type host_scan vulnerability host critical
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "hostname=\"*\"" as hostname nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "cve=\"*\"" as cve nodrop | parse "compliance=\"*\"" as compliance nodrop | parse "host=\"*\"" as host nodrop | parse "severity=\"*\"" as severity nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop | parse "rule=\"*\"" as rule nodrop | parse "description=\"*\"" as description nodrop
```

**Twistlock/Overview/Vulnerable Images**
```
_sourceCategory={{Logsdatasource}}  type log_type image_scan vulnerability image_id severity critical
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "hostname=\"*\"" as hostname nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "cve=\"*\"" as cve nodrop | parse "compliance=\"*\"" as compliance nodrop | parse "host=\"*\"" as host nodrop | parse "severity=\"*\"" as severity nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop | parse "rule=\"*\"" as rule nodrop | parse "description=\"*\"" as description nodrop
```

**Twistlock/Overview/Vulnerable Registry Images**
```
_sourceCategory={{Logsdatasource}}  type log_type registry_scan vulnerability image_id severity critical
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop
```

**Twistlock/Runtime/Alerts by Component**
```
_sourceCategory={{Logsdatasource}}  (Twistlock-Defender or Twistlock-Console) time *audit*
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "effect=\"*\"" as effect nodrop | parse "msg=\"*\"" as msg nodrop | parse "service_name=\"*\"" as service_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "username=\"*\"" as username nodrop | parse "source_ip=\"*\"" as source_ip nodrop | parse "api=\"*\"" as api nodrop | parse "status=\"*\"" as status nodrop
```

**Twistlock/Runtime/Alerts by Component, Type and Log Type**
```
_sourceCategory={{Logsdatasource}}  (Twistlock-Defender or Twistlock-Console) time *audit*
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "effect=\"*\"" as effect nodrop | parse "msg=\"*\"" as msg nodrop | parse "service_name=\"*\"" as service_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "username=\"*\"" as username nodrop | parse "source_ip=\"*\"" as source_ip nodrop | parse "api=\"*\"" as api nodrop | parse "status=\"*\"" as status nodrop
```

**Twistlock/Runtime/Alerts by Log Type**
```
_sourceCategory={{Logsdatasource}}  type log_type *audit*
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "effect=\"*\"" as effect nodrop | parse "msg=\"*\"" as msg nodrop | parse "service_name=\"*\"" as service_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "username=\"*\"" as username nodrop | parse "source_ip=\"*\"" as source_ip nodrop | parse "api=\"*\"" as api nodrop | parse "status=\"*\"" as status nodrop
```

**Twistlock/Runtime/Alerts by Type**
```
_sourceCategory={{Logsdatasource}}  type log_type *audit*
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "effect=\"*\"" as effect nodrop | parse "msg=\"*\"" as msg nodrop | parse "service_name=\"*\"" as service_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "username=\"*\"" as username nodrop | parse "source_ip=\"*\"" as source_ip nodrop | parse "api=\"*\"" as api nodrop | parse "status=\"*\"" as status nodrop
```

**Twistlock/Runtime/Audit Alerts**
```
_sourceCategory={{Logsdatasource}}  type log_type *audit*
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "effect=\"*\"" as effect nodrop | parse "msg=\"*\"" as msg nodrop | parse "service_name=\"*\"" as service_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "username=\"*\"" as username nodrop | parse "source_ip=\"*\"" as source_ip nodrop | parse "api=\"*\"" as api nodrop | parse "status=\"*\"" as status nodrop
```

**Twistlock/Runtime/Management Activity**
```
_sourceCategory={{Logsdatasource}}  Twistlock-Console type log_type management_audit
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "username=\"*\"" as username nodrop | parse "source_ip=\"*\"" as source_ip nodrop | parse "api=\"*\"" as api nodrop | parse "status=\"*\"" as status nodrop
```

**Twistlock/Runtime/Runtime Filesystem Alert Details**
```
_sourceCategory={{Logsdatasource}}  Twistlock-Defender type log_type *audit* filesystem alert
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "effect=\"*\"" as effect nodrop | parse "msg=\"*\"" as msg nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Runtime/Runtime Network Alert Details**
```
_sourceCategory={{Logsdatasource}}  Twistlock-Defender type log_type *audit* network alert
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "effect=\"*\"" as effect nodrop | parse "msg=\"*\"" as msg nodrop | parse "service_name=\"*\"" as service_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Runtime/Runtime Processes Alert Details**
```
_sourceCategory={{Logsdatasource}}  Twistlock-Defender type log_type *audit* processes alert
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "effect=\"*\"" as effect nodrop | parse "msg=\"*\"" as msg nodrop | parse "service_name=\"*\"" as service_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Runtime/Top Runtime Filesystem Alerts**
```
_sourceCategory={{Logsdatasource}}  Twistlock-Defender type log_type runtime *audit* filesystem alert
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "effect=\"*\"" as effect nodrop | parse "msg=\"*\"" as msg nodrop | parse "service_name=\"*\"" as service_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Runtime/Top Runtime Network Alerts**
```
_sourceCategory={{Logsdatasource}}  Twistlock-Defender type log_type runtime *audit* network alert
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "effect=\"*\"" as effect nodrop | parse "msg=\"*\"" as msg nodrop | parse "service_name=\"*\"" as service_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Runtime/Top Runtime Processes Alerts**
```
_sourceCategory={{Logsdatasource}}  Twistlock-Defender type log_type runtime *audit* processes alert
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "effect=\"*\"" as effect nodrop | parse "msg=\"*\"" as msg nodrop | parse "service_name=\"*\"" as service_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Scans/Container Compliance Violations by Severity**
```
_sourceCategory={{Logsdatasource}}  type log_type *scan* containerCompliance severity
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "severity=\"*\"" as severity nodrop | parse "description=\"*\"" as description nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop
```

**Twistlock/Scans/Detected Container Compliance Violations**
```
_sourceCategory={{Logsdatasource}}  type log_type "container_scan" container
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "compliance=\"*\"" as compliance nodrop
```

**Twistlock/Scans/Detected Vulnerabilities by Severity**
```
_sourceCategory={{Logsdatasource}}  type log_type *scan* vulnerability severity
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "vulnerability_id=\"*\"" as vulnerability_id nodrop
| parse "description=\"*\"" as description nodrop | parse "cve=\"*\"" as cve nodrop | parse "severity=\"*\"" as severity nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop
| parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop
```

**Twistlock/Scans/Most Vulnerable Hosts**
```
_sourceCategory={{Logsdatasource}}  type log_type scan_summary host hostname
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "hostname=\"*\"" as hostname nodrop | parse "vulnerabilities=\"*\"" as vulnerabilities nodrop | parse "compliance=\"*\"" as compliance nodrop
```

**Twistlock/Scans/Most Vulnerable Images**
```
_sourceCategory={{Logsdatasource}}  type log_type scan_summary image
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop
| parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "vulnerabilities=\"*\"" as vulnerabilities nodrop | parse "compliance=\"*\"" as compliance nodrop
```

**Twistlock/Scans/Scans**
```
_sourceCategory={{Logsdatasource}}  type log_type *scan*
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "hostname=\"*\"" as hostname nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "cve=\"*\"" as cve nodrop | parse "compliance=\"*\"" as compliance nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop
```

**Twistlock/Scans/Scans  by Component**
```
_sourceCategory={{Logsdatasource}}  type log_type *scan*
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "hostname=\"*\"" as hostname nodrop | parse "cve=\"*\"" as cve nodrop | parse "compliance=\"*\"" as compliance nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop
```

**Twistlock/Scans/Scans by Log Type**
```
_sourceCategory={{Logsdatasource}}  type log_type *scan*
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "hostname=\"*\"" as hostname nodrop | parse "cve=\"*\"" as cve nodrop | parse "compliance=\"*\"" as compliance nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop
```

**Twistlock/Scans/Scans by Type**
```
_sourceCategory={{Logsdatasource}}  type log_type *scan*
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "hostname=\"*\"" as hostname nodrop | parse "cve=\"*\"" as cve nodrop | parse "compliance=\"*\"" as compliance nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop
```

**Twistlock/Scans/Scans by Type and Log Type**
```
_sourceCategory={{Logsdatasource}}  type log_type *scan*
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "image_id=\"*\"" as image_id nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "package=\"*\"" as package nodrop | parse "package_version=\"*\"" as package_version nodrop | parse "vendor_status=\"*\"" as vendor_status nodrop | parse "hostname=\"*\"" as hostname nodrop | parse "cve=\"*\"" as cve nodrop | parse "compliance=\"*\"" as compliance nodrop | parse "compliance_id=\"*\"" as compliance_id nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "rule=\"*\"" as rule nodrop | parse "host=\"*\"" as host nodrop
```

**Twistlock/Scans/Top Container Compliance Violations**
```
_sourceCategory={{Logsdatasource}}  type log_type "container_scan" container
| parse regex "\s+(?<component>Twistlock-Console|Twistlock-Defender?)\s*.*\s*time=\"" nodrop
| parse "type=\"*\"" as type nodrop | parse "log_type=\"*\"" as log_type nodrop | parse "container_id=\"*\"" as container_id nodrop | parse "container_name=\"*\"" as container_name nodrop | parse "image_name=\"*\"" as image_name nodrop | parse "compliance=\"*\"" as compliance nodrop
```


