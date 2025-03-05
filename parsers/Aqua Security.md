# Parsers For Aqua Security

## Parser:
```
| json "rule_type", "result" , "category" nodrop
 `n```
### Use Cases:
Failed Docker CIS, Failed Kube CIS, Failed Linux CIS, Host Assurance, Images failed by malware, Images failed by severe CVE, Infected Images, Network Security Events by Pod, Non-compliant Images List, Noncompliant Hosts, Noncompliant Images, Runtime Events, Severe Vulnerabilities, Unauthorized File Activity, Unauthorized Image Activity, Unauthorized Image Starts, Unauthorized Network Activity



## Parser:
```
| json "rule_type", "result" , "category", "action" nodrop
 `n```
### Use Cases:
Failed Docker CIS, Failed Kube CIS, Failed Linux CIS, Host Assurance, Images failed by malware, Images failed by severe CVE, Infected Images, Network Security Events by Pod, Non-compliant Images List, Noncompliant Hosts, Noncompliant Images, Runtime Events, Severe Vulnerabilities, Unauthorized File Activity, Unauthorized Image Activity, Unauthorized Image Starts, Unauthorized Network Activity



## Parser:
```
| json "rule_type", "result", "category" nodrop
 `n```
### Use Cases:
Failed Docker CIS, Failed Kube CIS, Failed Linux CIS, Host Assurance, Images failed by malware, Images failed by severe CVE, Infected Images, Network Security Events by Pod, Non-compliant Images List, Noncompliant Hosts, Noncompliant Images, Runtime Events, Severe Vulnerabilities, Unauthorized File Activity, Unauthorized Image Activity, Unauthorized Image Starts, Unauthorized Network Activity



## Parser:
```
| json "rule_type", "result", "category", "action", "podnamespace", "poddeployment" nodrop
 `n```
### Use Cases:
Failed Docker CIS, Failed Kube CIS, Failed Linux CIS, Host Assurance, Images failed by malware, Images failed by severe CVE, Infected Images, Network Security Events by Pod, Non-compliant Images List, Noncompliant Hosts, Noncompliant Images, Runtime Events, Severe Vulnerabilities, Unauthorized File Activity, Unauthorized Image Activity, Unauthorized Image Starts, Unauthorized Network Activity



## Parser:
```
| json "rule_type", "result", "category", "action", "podnamespace", "poddeployment", "image", "reason", "containerid", "resource" nodrop
 `n```
### Use Cases:
Failed Docker CIS, Failed Kube CIS, Failed Linux CIS, Host Assurance, Images failed by malware, Images failed by severe CVE, Infected Images, Network Security Events by Pod, Non-compliant Images List, Noncompliant Hosts, Noncompliant Images, Runtime Events, Severe Vulnerabilities, Unauthorized File Activity, Unauthorized Image Activity, Unauthorized Image Starts, Unauthorized Network Activity



## Parser:
```
| json "rule_type", "result", "category", "action", "podnamespace", "poddeployment", "image", "type", "data" nodrop
| json field=data "blocking"
 `n```
### Use Cases:
Failed Docker CIS, Failed Kube CIS, Failed Linux CIS, Host Assurance, Images failed by malware, Images failed by severe CVE, Infected Images, Network Security Events by Pod, Non-compliant Images List, Noncompliant Hosts, Noncompliant Images, Runtime Events, Severe Vulnerabilities, Unauthorized File Activity, Unauthorized Image Activity, Unauthorized Image Starts, Unauthorized Network Activity



## Parser:
```
| json "rule_type", "result", "category", "action", "podnamespace", "poddeployment", "image", "type", "data", "user" nodrop
| json field=data "controls", "policy_id", "blocking", "policy_name"
 `n```
### Use Cases:
Failed Docker CIS, Failed Kube CIS, Failed Linux CIS, Host Assurance, Images failed by malware, Images failed by severe CVE, Infected Images, Network Security Events by Pod, Non-compliant Images List, Noncompliant Hosts, Noncompliant Images, Runtime Events, Severe Vulnerabilities, Unauthorized File Activity, Unauthorized Image Activity, Unauthorized Image Starts, Unauthorized Network Activity



## Parser:
```
| json "rule_type", "result", "category", "action", "podnamespace", "poddeployment", "image", "type", "data", "user" nodrop
| json field=data "controls", "policy_id", "blocking", "policy_name" nodrop
 `n```
### Use Cases:
Failed Docker CIS, Failed Kube CIS, Failed Linux CIS, Host Assurance, Images failed by malware, Images failed by severe CVE, Infected Images, Network Security Events by Pod, Non-compliant Images List, Noncompliant Hosts, Noncompliant Images, Runtime Events, Severe Vulnerabilities, Unauthorized File Activity, Unauthorized Image Activity, Unauthorized Image Starts, Unauthorized Network Activity



## Parser:
```
| json "rule_type", "result", "category", "action", "podnamespace", "poddeployment", "reason", "containerid", "resource", "data", "user" nodrop
| json "image" as host nodrop
| json field=data "controls", "policy_id", "policy_name", "blocking" nodrop
| parse regex field=controls "\"(?<control>.+?)\"" multi
 `n```
### Use Cases:
Failed Docker CIS, Failed Kube CIS, Failed Linux CIS, Host Assurance, Images failed by malware, Images failed by severe CVE, Infected Images, Network Security Events by Pod, Non-compliant Images List, Noncompliant Hosts, Noncompliant Images, Runtime Events, Severe Vulnerabilities, Unauthorized File Activity, Unauthorized Image Activity, Unauthorized Image Starts, Unauthorized Network Activity



## Parser:
```
| json "rule_type", "result", "image", "category", "action", "podnamespace", "poddeployment", "reason", "containerid", "resource", "data", "user" nodrop
| json field=data "controls", "policy_id", "policy_name", "blocking" nodrop
 `n```
### Use Cases:
Failed Docker CIS, Failed Kube CIS, Failed Linux CIS, Host Assurance, Images failed by malware, Images failed by severe CVE, Infected Images, Network Security Events by Pod, Non-compliant Images List, Noncompliant Hosts, Noncompliant Images, Runtime Events, Severe Vulnerabilities, Unauthorized File Activity, Unauthorized Image Activity, Unauthorized Image Starts, Unauthorized Network Activity



## Parser:
```
| json "rule_type", "result", "image", "category", "action", "podnamespace", "poddeployment", "reason", "containerid", "resource", "data", "user" nodrop
| json field=data "controls", "policy_id", "policy_name", "blocking" nodrop
| parse regex field=controls "\"(?<control>.+?)\"" multi
 `n```
### Use Cases:
Failed Docker CIS, Failed Kube CIS, Failed Linux CIS, Host Assurance, Images failed by malware, Images failed by severe CVE, Infected Images, Network Security Events by Pod, Non-compliant Images List, Noncompliant Hosts, Noncompliant Images, Runtime Events, Severe Vulnerabilities, Unauthorized File Activity, Unauthorized Image Activity, Unauthorized Image Starts, Unauthorized Network Activity


