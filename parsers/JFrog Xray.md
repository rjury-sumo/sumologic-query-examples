# Parsers For JFrog Xray

## Parser:
```
| json "created", "top_severity", "issues", "watch_name", "policy_name" as IssueCreated, TopSeverity, Issues, WatchName, PolicyName nodrop
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
 
```
### Use Cases:
Artifact Package Types, Artifacts - Top CVE, Artifacts - Top Description, Artifacts with Vulnerability by Severity, Components - Top CVE, Components - Top Description, Components Package Types, Components with Vulnerability by Severity, CVEs, Detected Vulnerabilities, Detected Vulnerabilities Summary, License Issues, Policies, Policies Invoked, Recent Vulnerable Artifacts, Recent Vulnerable Components, Recently Discovered Issues, Security Issues, Threat by Malicious Confidence, Threat Count, Threat Location, Threats by Actor, Top 10 Artifacts with Most CVEs, Top 10 Components with Most CVEs, Top 10 CVEs, Top 5 Artifacts with Severity, Top 5 Components with Severity, Total Threat Count, Vulnerabilities Severity, Vulnerable Artifacts, Vulnerable Components, Vulnerable Containers, Vulnerable Containers Summary, Vulnerable Hosts, Vulnerable Namespaces, Watches, Watches Invoked



## Parser:
```
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| json "type"
| json "object.involvedObject.namespace", "object.involvedObject.name", "object.message", "object.source.host" as Namespace, Container, Message, Host nodrop
 
```
### Use Cases:
Artifact Package Types, Artifacts - Top CVE, Artifacts - Top Description, Artifacts with Vulnerability by Severity, Components - Top CVE, Components - Top Description, Components Package Types, Components with Vulnerability by Severity, CVEs, Detected Vulnerabilities, Detected Vulnerabilities Summary, Downloaded Artifacts, License Issues, Policies, Policies Invoked, Recent Vulnerable Artifacts, Recent Vulnerable Components, Recently Discovered Issues, Security Issues, Threat by Malicious Confidence, Threat Count, Threat Location, Threats by Actor, Top 10 Artifacts with Most CVEs, Top 10 Components with Most CVEs, Top 10 CVEs, Top 5 Artifacts with Severity, Top 5 Components with Severity, Top Clients IPs, Top Users, Total Threat Count, Uploaded Artifacts, Vulnerabilities Severity, Vulnerable Artifacts, Vulnerable Components, Vulnerable Containers, Vulnerable Containers Summary, Vulnerable Hosts, Vulnerable Namespaces, Watches, Watches Invoked



## Parser:
```
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| json "type"
| json "timestamp", "object.involvedObject.namespace", "object.involvedObject.name", "object.message", "object.source.host" as Time, Namespace, Container, Message, Host nodrop
 
```
### Use Cases:
Artifact Package Types, Artifacts - Top CVE, Artifacts - Top Description, Artifacts with Vulnerability by Severity, Components - Top CVE, Components - Top Description, Components Package Types, Components with Vulnerability by Severity, CVEs, Detected Vulnerabilities, Detected Vulnerabilities Summary, Downloaded Artifacts, License Issues, Policies, Policies Invoked, Recent Vulnerable Artifacts, Recent Vulnerable Components, Recently Discovered Issues, Security Issues, Threat by Malicious Confidence, Threat Count, Threat Location, Threats by Actor, Top 10 Artifacts with Most CVEs, Top 10 Components with Most CVEs, Top 10 CVEs, Top 5 Artifacts with Severity, Top 5 Components with Severity, Top Clients IPs, Top Users, Total Threat Count, Uploaded Artifacts, Vulnerabilities Severity, Vulnerable Artifacts, Vulnerable Components, Vulnerable Containers, Vulnerable Containers Summary, Vulnerable Hosts, Vulnerable Namespaces, Watches, Watches Invoked



## Parser:
```
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| json "type"
| json "timestamp", "object.involvedObject.namespace", "object.involvedObject.name", "object.message", "object.source.host" as Time, Namespace, Container, Message, Host nodrop 
| parse regex field=Message "Successfully pulled image (?<ImageName>.*)"
 
```
### Use Cases:
Artifact Package Types, Artifacts - Top CVE, Artifacts - Top Description, Artifacts with Vulnerability by Severity, Components - Top CVE, Components - Top Description, Components Package Types, Components with Vulnerability by Severity, CVEs, Detected Vulnerabilities, Detected Vulnerabilities Summary, Downloaded Artifacts, License Issues, Policies, Policies Invoked, Recent Vulnerable Artifacts, Recent Vulnerable Components, Recently Discovered Issues, Security Issues, Threat by Malicious Confidence, Threat Count, Threat Location, Threats by Actor, Top 10 Artifacts with Most CVEs, Top 10 Components with Most CVEs, Top 10 CVEs, Top 5 Artifacts with Severity, Top 5 Components with Severity, Top Clients IPs, Top Users, Total Threat Count, Uploaded Artifacts, Vulnerabilities Severity, Vulnerable Artifacts, Vulnerable Components, Vulnerable Containers, Vulnerable Containers Summary, Vulnerable Hosts, Vulnerable Namespaces, Watches, Watches Invoked



## Parser:
```
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, IP, user, method, Path, protocol, status_code, size nodrop
 
```
### Use Cases:
Artifact Package Types, Artifacts - Top CVE, Artifacts - Top Description, Artifacts with Vulnerability by Severity, Components - Top CVE, Components - Top Description, Components Package Types, Components with Vulnerability by Severity, CVEs, Detected Vulnerabilities, Detected Vulnerabilities Summary, Downloaded Artifacts, License Issues, Policies, Policies Invoked, Recent Vulnerable Artifacts, Recent Vulnerable Components, Recently Discovered Issues, Security Issues, Threat by Malicious Confidence, Threat Count, Threat Location, Threats by Actor, Top 10 Artifacts with Most CVEs, Top 10 Components with Most CVEs, Top 10 CVEs, Top 5 Artifacts with Severity, Top 5 Components with Severity, Top Clients IPs, Top Users, Total Threat Count, Uploaded Artifacts, Vulnerabilities Severity, Vulnerable Artifacts, Vulnerable Components, Vulnerable Containers, Vulnerable Containers Summary, Vulnerable Hosts, Vulnerable Namespaces, Watches, Watches Invoked



## Parser:
```
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, IP, user, method, path, protocol, status_code, size nodrop
 
```
### Use Cases:
Artifact Package Types, Artifacts - Top CVE, Artifacts - Top Description, Artifacts with Vulnerability by Severity, Components - Top CVE, Components - Top Description, Components Package Types, Components with Vulnerability by Severity, CVEs, Detected Vulnerabilities, Detected Vulnerabilities Summary, Downloaded Artifacts, License Issues, Policies, Policies Invoked, Recent Vulnerable Artifacts, Recent Vulnerable Components, Recently Discovered Issues, Security Issues, Threat by Malicious Confidence, Threat Count, Threat Location, Threats by Actor, Top 10 Artifacts with Most CVEs, Top 10 Components with Most CVEs, Top 10 CVEs, Top 5 Artifacts with Severity, Top 5 Components with Severity, Top Clients IPs, Top Users, Total Threat Count, Vulnerabilities Severity, Vulnerable Artifacts, Vulnerable Components, Vulnerable Containers, Vulnerable Containers Summary, Vulnerable Hosts, Vulnerable Namespaces, Watches, Watches Invoked



## Parser:
```
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, IP, user, method, path, protocol, status_code, size nodrop
| json field=raw "labels[*].name" as label_name
 
```
### Use Cases:
Artifact Package Types, Artifacts - Top CVE, Artifacts - Top Description, Artifacts with Vulnerability by Severity, Components - Top CVE, Components - Top Description, Components Package Types, Components with Vulnerability by Severity, CVEs, Detected Vulnerabilities, Detected Vulnerabilities Summary, License Issues, Policies, Policies Invoked, Recent Vulnerable Artifacts, Recent Vulnerable Components, Recently Discovered Issues, Security Issues, Threat by Malicious Confidence, Threat Count, Threat Location, Threats by Actor, Top 10 Artifacts with Most CVEs, Top 10 Components with Most CVEs, Top 10 CVEs, Top 5 Artifacts with Severity, Top 5 Components with Severity, Total Threat Count, Vulnerabilities Severity, Vulnerable Artifacts, Vulnerable Components, Vulnerable Containers, Vulnerable Containers Summary, Vulnerable Hosts, Vulnerable Namespaces, Watches, Watches Invoked



## Parser:
```
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| json "type"
| json "object.involvedObject.namespace", "object.involvedObject.name", "object.message", "object.source.host" as Namespace, Container, Message, Host nodrop
 
```
### Use Cases:
Artifact Package Types, Artifacts - Top CVE, Artifacts - Top Description, Artifacts with Vulnerability by Severity, Components - Top CVE, Components - Top Description, Components Package Types, Components with Vulnerability by Severity, CVEs, Detected Vulnerabilities, Detected Vulnerabilities Summary, License Issues, Policies, Policies Invoked, Recent Vulnerable Artifacts, Recent Vulnerable Components, Recently Discovered Issues, Security Issues, Threat by Malicious Confidence, Threat Count, Threat Location, Threats by Actor, Top 10 Artifacts with Most CVEs, Top 10 Components with Most CVEs, Top 10 CVEs, Top 5 Artifacts with Severity, Top 5 Components with Severity, Total Threat Count, Vulnerabilities Severity, Vulnerable Artifacts, Vulnerable Components, Vulnerable Containers, Vulnerable Containers Summary, Vulnerable Hosts, Vulnerable Namespaces, Watches, Watches Invoked



## Parser:
```
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, IP, user, method, path, protocol, status_code, size nodrop
| json field=raw "labels[*].name" as label_name
 
```
### Use Cases:
Artifact Package Types, Artifacts - Top CVE, Artifacts - Top Description, Artifacts with Vulnerability by Severity, Components - Top CVE, Components - Top Description, Components Package Types, Components with Vulnerability by Severity, CVEs, Detected Vulnerabilities, Detected Vulnerabilities Summary, License Issues, Policies, Policies Invoked, Recent Vulnerable Artifacts, Recent Vulnerable Components, Recently Discovered Issues, Security Issues, Threat by Malicious Confidence, Threat Count, Threat Location, Threats by Actor, Top 10 Artifacts with Most CVEs, Top 10 Components with Most CVEs, Top 10 CVEs, Top 5 Artifacts with Severity, Top 5 Components with Severity, Total Threat Count, Vulnerabilities Severity, Vulnerable Artifacts, Vulnerable Components, Vulnerable Containers, Vulnerable Containers Summary, Vulnerable Hosts, Vulnerable Namespaces, Watches, Watches Invoked



## Parser:
```
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
 
```
### Use Cases:
Artifact Package Types, Artifacts - Top CVE, Artifacts - Top Description, Artifacts with Vulnerability by Severity, Components - Top CVE, Components - Top Description, Components Package Types, Components with Vulnerability by Severity, CVEs, Detected Vulnerabilities, Detected Vulnerabilities Summary, License Issues, Policies, Policies Invoked, Recent Vulnerable Artifacts, Recent Vulnerable Components, Recently Discovered Issues, Security Issues, Threat by Malicious Confidence, Threat Count, Threat Location, Threats by Actor, Top 10 Artifacts with Most CVEs, Top 10 Components with Most CVEs, Top 10 CVEs, Top 5 Artifacts with Severity, Top 5 Components with Severity, Total Threat Count, Vulnerabilities Severity, Vulnerable Artifacts, Vulnerable Components, Vulnerable Containers, Vulnerable Containers Summary, Vulnerable Hosts, Vulnerable Namespaces, Watches, Watches Invoked


