# Parsers For JFrog Xray

**JFrog Xray/Detected Vulnerabilities - New/Artifact Package Types**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities - New/Artifacts - Top CVE**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities - New/Artifacts - Top Description**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities - New/Artifacts with Vulnerability by Severity**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities - New/Components - Top CVE**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities - New/Components - Top Description**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities - New/Components Package Types**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities - New/Components with Vulnerability by Severity**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities - New/Detected Vulnerabilities**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities - New/Detected Vulnerabilities Summary**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities - New/Recent Vulnerable Artifacts**
```
_sourceCategory = Labs/jfrog/xray
| json "created", "top_severity", "issues", "watch_name", "policy_name" as IssueCreated, TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities - New/Recent Vulnerable Components**
```
_sourceCategory = Labs/jfrog/xray
| json "created", "top_severity", "issues", "watch_name", "policy_name" as IssueCreated, TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities - New/Top 10 Artifacts with Most CVEs**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities - New/Top 10 Components with Most CVEs**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities - New/Vulnerable Artifacts**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities - New/Vulnerable Components**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities/Artifact Package Types**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities/Artifacts - Top CVE**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities/Artifacts - Top Description**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities/Artifacts with Vulnerability by Severity**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities/Components - Top CVE**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities/Components - Top Description**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities/Components Package Types**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities/Components with Vulnerability by Severity**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities/Detected Vulnerabilities**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities/Detected Vulnerabilities Summary**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities/Recent Vulnerable Artifacts**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "created", "top_severity", "issues", "watch_name", "policy_name" as IssueCreated, TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities/Recent Vulnerable Components**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "created", "top_severity", "issues", "watch_name", "policy_name" as IssueCreated, TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities/Top 10 Artifacts with Most CVEs**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities/Top 10 Components with Most CVEs**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities/Vulnerable Artifacts**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Detected Vulnerabilities/Vulnerable Components**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview - New/CVEs**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview - New/License Issues**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview - New/Policies**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview - New/Policies Invoked**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview - New/Recently Discovered Issues**
```
_sourceCategory = Labs/jfrog/xray
| json "created", "top_severity", "issues", "watch_name", "policy_name" as IssueCreated, TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview - New/Security Issues**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview - New/Top 10 CVEs**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview - New/Top 5 Artifacts with Severity**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview - New/Top 5 Components with Severity**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview - New/Total Threat Count**
```
_sourceCategory = Labs/jfrog/artifactory/request (PUT or GET)
[subquery: _sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, IP, user, method, path, protocol, status_code, size nodrop
| count by IP
| where !isPrivateIP(IP)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=IP 
| json field=raw "labels[*].name" as label_name
```

**JFrog Xray/Overview - New/Vulnerabilities Severity**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview - New/Vulnerable Artifacts**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview - New/Vulnerable Components**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview - New/Vulnerable Containers**
```
_sourceCategory = Labs/jfrog/kubernetes/events "Successfully pulled image"
[subquery: _sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*events*"
| json "type"
| where type matches "ADDED"
| json "object.involvedObject.namespace", "object.involvedObject.name", "object.message", "object.source.host" as Namespace, Container, Message, Host nodrop
```

**JFrog Xray/Overview - New/Watches**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview - New/Watches Invoked**
```
_sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview/CVEs**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview/License Issues**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview/Policies**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview/Policies Invoked**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview/Recently Discovered Issues**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "created", "top_severity", "issues", "watch_name", "policy_name" as IssueCreated, TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview/Security Issues**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview/Top 10 CVEs**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview/Top 5 Artifacts with Severity**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview/Top 5 Components with Severity**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview/Total Threat Count**
```
_sourceCategory={{ArtifactoryLogDataSource}}   (PUT or GET)
[subquery: _sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| where WatchName matches "{{WatchName}}" and Severity matches "{{Severity}}" and  PolicyType matches "{{PolicyType}}" and ArtifactName matches "{{ArtifactName}}" and CVE matches "{{CVE}}"
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, IP, user, method, path, protocol, status_code, size nodrop
| count by IP
| where !isPrivateIP(IP)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=IP 
| json field=raw "labels[*].name" as label_name
```

**JFrog Xray/Overview/Vulnerabilities Severity**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview/Vulnerable Artifacts**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview/Vulnerable Components**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview/Vulnerable Containers**
```
_sourceCategory={{KubernetesEventsLogDataSource}}   "Successfully pulled image"
[subquery: _sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| where WatchName matches "{{WatchName}}" and Severity matches "{{Severity}}" and  PolicyType matches "{{PolicyType}}" and ArtifactName matches "{{ArtifactName}}" and CVE matches "{{CVE}}"
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*events*"
| json "type"
| where type matches "ADDED"
| json "object.involvedObject.namespace", "object.involvedObject.name", "object.message", "object.source.host" as Namespace, Container, Message, Host nodrop
```

**JFrog Xray/Overview/Watches**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Overview/Watches Invoked**
```
_sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts", "severity", "summary", "cve", "provider", "created", "description", "type" as Artifacts, Severity, Summary, CVE, Provider, Created, Description, PolicyType nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "infected_files", "path", "name", "display_name", "pkg_type" as Files, ArtifactPath, ArtifactName, ArtifactDisplayName, ArtifactPkgType nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "path", "name", "display_name", "pkg_type" as ComponentPath, ComponentName, ComponentDisplayName, ComponentPkgType nodrop
```

**JFrog Xray/Threat Analysis - New/Threat by Malicious Confidence**
```
_sourceCategory = Labs/jfrog/artifactory/request PUT
[subquery: _sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, IP, user, method, path, protocol, status_code, size nodrop
|where if ("{{IP}}" = "*", true, IP matches "{{IP}}")
|count by IP
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=IP 
| json field=raw "labels[*].name" as label_name
```

**JFrog Xray/Threat Analysis - New/Threat Count**
```
_sourceCategory = Labs/jfrog/artifactory/request PUT
[subquery: _sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, IP, user, method, path, protocol, status_code, size nodrop
|where if ("{{IP}}" = "*", true, IP matches "{{IP}}")
|count by IP
| where !isPrivateIP(IP)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=IP 
| json field=raw "labels[*].name" as label_name
```

**JFrog Xray/Threat Analysis - New/Threat Location**
```
_sourceCategory = Labs/jfrog/artifactory/request GET
[subquery: _sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, IP, user, method, path, protocol, status_code, size nodrop
|where if ("{{IP}}" = "*", true, IP matches "{{IP}}")
|count by IP
| where !isPrivateIP(IP)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=IP| json field=raw "labels[*].name" as label_name
```

**JFrog Xray/Threat Analysis - New/Threats by Actor**
```
_sourceCategory = Labs/jfrog/artifactory/request PUT
[subquery: _sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, IP, user, method, path, protocol, status_code, size nodrop
|where if ("{{IP}}" = "*", true, IP matches "{{IP}}")
|count by IP
| where !isPrivateIP(IP)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=IP 
| json field=raw "labels[*].name" as label_name
```

**JFrog Xray/Threat Analysis/Threat by Malicious Confidence**
```
_sourceCategory={{ArtifactoryLogDataSource}}   GET
[subquery: _sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, IP, user, method, path, protocol, status_code, size nodrop
|where if ("{{IP}}" = "*", true, IP matches "{{IP}}")
|count by IP
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=IP 
| json field=raw "labels[*].name" as label_name
```

**JFrog Xray/Threat Analysis/Threat Count**
```
_sourceCategory={{ArtifactoryLogDataSource}}   PUT
[subquery: _sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, IP, user, method, path, protocol, status_code, size nodrop
|where if ("{{IP}}" = "*", true, IP matches "{{IP}}")
|count by IP
| where !isPrivateIP(IP)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=IP 
| json field=raw "labels[*].name" as label_name
```

**JFrog Xray/Threat Analysis/Threat Location**
```
_sourceCategory={{ArtifactoryLogDataSource}}   GET
[subquery: _sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, IP, user, method, path, protocol, status_code, size nodrop
|where if ("{{IP}}" = "*", true, IP matches "{{IP}}")
|count by IP
| where !isPrivateIP(IP)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=IP| json field=raw "labels[*].name" as label_name
```

**JFrog Xray/Threat Analysis/Threats by Actor**
```
_sourceCategory={{ArtifactoryLogDataSource}}   PUT
[subquery: _sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, IP, user, method, path, protocol, status_code, size nodrop
|where if ("{{IP}}" = "*", true, IP matches "{{IP}}")
|count by IP
| where !isPrivateIP(IP)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=IP 
| json field=raw "labels[*].name" as label_name
```

**JFrog Xray/Vulnerable Artifacts/Downloaded Artifacts**
```
_sourceCategory={{ArtifactoryLogDataSource}}   GET
[subquery: _sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, IP, user, method, Path, protocol, status_code, size nodrop
```

**JFrog Xray/Vulnerable Artifacts/Top Clients IPs**
```
_sourceCategory={{ArtifactoryLogDataSource}}   PUT
[subquery: _sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, IP, user, method, path, protocol, status_code, size nodrop
```

**JFrog Xray/Vulnerable Artifacts/Top Users**
```
_sourceCategory={{ArtifactoryLogDataSource}}   GET
[subquery: _sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, IP, user, method, path, protocol, status_code, size nodrop
```

**JFrog Xray/Vulnerable Artifacts/Uploaded Artifacts**
```
_sourceCategory={{ArtifactoryLogDataSource}}   PUT
[subquery: _sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, IP, user, method, Path, protocol, status_code, size nodrop
```

**JFrog Xray/Vulnerable Containers - New/Vulnerable Containers**
```
_sourceCategory = Labs/jfrog/kubernetes/events "Successfully pulled image"
[subquery: _sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*events*"
| json "type"
| where type matches "ADDED"
| json "timestamp", "object.involvedObject.namespace", "object.involvedObject.name", "object.message", "object.source.host" as Time, Namespace, Container, Message, Host nodrop
```

**JFrog Xray/Vulnerable Containers - New/Vulnerable Containers Summary**
```
_sourceCategory = Labs/jfrog/kubernetes/events "Successfully pulled image"
[subquery: _sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*events*"
| json "type"
| where type matches "ADDED"
| json "timestamp", "object.involvedObject.namespace", "object.involvedObject.name", "object.message", "object.source.host" as Time, Namespace, Container, Message, Host nodrop 
| parse regex field=Message "Successfully pulled image (?<ImageName>.*)"
```

**JFrog Xray/Vulnerable Containers - New/Vulnerable Hosts**
```
_sourceCategory = Labs/jfrog/kubernetes/events "Successfully pulled image"
[subquery: _sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*events*"
| json "type"
| where type matches "ADDED"
| json "timestamp", "object.involvedObject.namespace", "object.involvedObject.name", "object.message", "object.source.host" as Time, Namespace, Container, Message, Host nodrop
```

**JFrog Xray/Vulnerable Containers - New/Vulnerable Namespaces**
```
_sourceCategory = Labs/jfrog/kubernetes/events "Successfully pulled image"
[subquery: _sourceCategory = Labs/jfrog/xray
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*events*"
| json "type"
| where type matches "ADDED"
| json "timestamp", "object.involvedObject.namespace", "object.involvedObject.name", "object.message", "object.source.host" as Time, Namespace, Container, Message, Host nodrop
```

**JFrog Xray/Vulnerable Containers/Vulnerable Containers**
```
_sourceCategory={{KubernetesEventsLogDataSource}}   "Successfully pulled image"
[subquery: _sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*events*"
| json "type"
| where type matches "ADDED"
| json "object.involvedObject.namespace", "object.involvedObject.name", "object.message", "object.source.host" as Namespace, Container, Message, Host nodrop
```

**JFrog Xray/Vulnerable Containers/Vulnerable Containers Summary**
```
_sourceCategory={{KubernetesEventsLogDataSource}}   "Successfully pulled image"
[subquery: _sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*events*"
| json "type"
| where type matches "ADDED"
| json "timestamp", "object.involvedObject.namespace", "object.involvedObject.name", "object.message", "object.source.host" as Time, Namespace, Container, Message, Host nodrop 
| parse regex field=Message "Successfully pulled image (?<ImageName>.*)"
```

**JFrog Xray/Vulnerable Containers/Vulnerable Hosts**
```
_sourceCategory={{KubernetesEventsLogDataSource}}   "Successfully pulled image"
[subquery: _sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*events*"
| json "type"
| where type matches "ADDED"
| json "timestamp", "object.involvedObject.namespace", "object.involvedObject.name", "object.message", "object.source.host" as Time, Namespace, Container, Message, Host nodrop
```

**JFrog Xray/Vulnerable Containers/Vulnerable Namespaces**
```
_sourceCategory={{KubernetesEventsLogDataSource}}   "Successfully pulled image"
[subquery: _sourceCategory={{JFrogXrayLogDataSource}}  
| json "top_severity", "issues", "watch_name", "policy_name" as TopSeverity, Issues, WatchName, PolicyName nodrop
| where !(TopSeverity matches "Pending Scan")
| parse regex field=Issues "(?<Issue>\{.*?(?=,\{\"severity\"|\]$))" multi
| json field=Issue "impacted_artifacts" as Artifacts nodrop
| parse regex field=Artifacts "(?<Artifact>\{.*?(?=,\{\"sha1\"|\]$))" multi
| json field=Artifact "display_name" as ArtifactDisplayName nodrop
| parse field=ArtifactDisplayName "*" as Field1
| parse regex field=field1 "(?<field2>.*?):(?<field1>[^:]+$)" nodrop
| parse regex field=field2 "(?<field3>.*?):(?<field2>[^:]+$)" nodrop
| if (isEmpty(Field2), "/", Field2) as Field2
| compose Field1, Field2 keywords]
| where _sourceCategory matches "*events*"
| json "type"
| where type matches "ADDED"
| json "timestamp", "object.involvedObject.namespace", "object.involvedObject.name", "object.message", "object.source.host" as Time, Namespace, Container, Message, Host nodrop
```


