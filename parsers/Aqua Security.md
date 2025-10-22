# Parsers For Aqua Security

**Aqua Security/Host Security and Compliance/Host Assurance**
```
_sourceCategory={{_sourceCategory}} "policy.failure" "host.policy"
| json "rule_type", "result", "category", "action", "podnamespace", "poddeployment", "reason", "containerid", "resource", "data", "user" nodrop
| json "image" as host nodrop
| json field=data "controls", "policy_id", "policy_name", "blocking" nodrop
| toLowerCase(action) as action_f | toLowerCase(user) as user_f 
| where action_f = "policy.failure" and user_f = "host.policy"
| parse regex field=controls "\"(?<control>.+?)\"" multi
```

**Aqua Security/Image Security and Compliance/Images failed by malware**
```
_sourceCategory={{_sourceCategory}} malware "policy.failure" "image.policy"
| json "rule_type", "result", "image", "category", "action", "podnamespace", "poddeployment", "reason", "containerid", "resource", "data", "user" nodrop
| json field=data "controls", "policy_id", "policy_name", "blocking" nodrop
```

**Aqua Security/Image Security and Compliance/Images failed by severe CVE**
```
_sourceCategory={{_sourceCategory}} max_severity "policy.failure" "image.policy"
| json "rule_type", "result", "image", "category", "action", "podnamespace", "poddeployment", "reason", "containerid", "resource", "data", "user" nodrop
| json field=data "controls", "policy_id", "policy_name", "blocking" nodrop
```

**Aqua Security/Image Security and Compliance/Non-compliant Images List**
```
_sourceCategory={{_sourceCategory}} "policy.failure" "image.policy"
| json "rule_type", "result", "image", "category", "action", "podnamespace", "poddeployment", "reason", "containerid", "resource", "data", "user" nodrop
| json field=data "controls", "policy_id", "policy_name", "blocking" nodrop
| parse regex field=controls "\"(?<control>.+?)\"" multi
```

**Aqua Security/Overview/Failed Docker CIS**
```
_sourceCategory={{_sourceCategory}} docker_cis
| json "rule_type", "result", "category", "action", "podnamespace", "poddeployment", "image", "type", "data", "user" nodrop
| json field=data "controls", "policy_id", "blocking", "policy_name" nodrop
```

**Aqua Security/Overview/Failed Kube CIS**
```
_sourceCategory={{_sourceCategory}} kube_cis
| json "rule_type", "result", "category", "action", "podnamespace", "poddeployment", "image", "type", "data", "user" nodrop
| json field=data "controls", "policy_id", "blocking", "policy_name" nodrop
```

**Aqua Security/Overview/Failed Linux CIS**
```
_sourceCategory={{_sourceCategory}} linux_cis
| json "rule_type", "result", "category", "action", "podnamespace", "poddeployment", "image", "type", "data", "user" nodrop
| json field=data "controls", "policy_id", "blocking", "policy_name" nodrop
```

**Aqua Security/Overview/Infected Images**
```
_sourceCategory={{_sourceCategory}} malware "policy.failure" "image.policy"
| json "rule_type", "result", "category", "action", "podnamespace", "poddeployment", "image", "type", "data", "user" nodrop
| json field=data "controls", "policy_id", "blocking", "policy_name"
```

**Aqua Security/Overview/Noncompliant Hosts**
```
_sourceCategory={{_sourceCategory}} alert "policy.failure" "host.policy"
| json "rule_type", "result", "category", "action", "podnamespace", "poddeployment", "image", "type", "data", "user" nodrop
| json field=data "controls", "policy_id", "blocking", "policy_name" nodrop
```

**Aqua Security/Overview/Noncompliant Images**
```
_sourceCategory={{_sourceCategory}} alert "policy.failure" image
| json "rule_type", "result", "category", "action", "podnamespace", "poddeployment", "image", "type", "data" nodrop
| json field=data "blocking"
```

**Aqua Security/Overview/Runtime Events**
```
_sourceCategory={{_sourceCategory}} "runtime.policy" ("\"result\":2" or "\"result\":3")
| json "rule_type", "result", "category" nodrop
```

**Aqua Security/Overview/Severe Vulnerabilities**
```
_sourceCategory={{_sourceCategory}} max_severity "policy.failure" "image.policy"
| json "rule_type", "result", "category", "action", "podnamespace", "poddeployment", "image", "type", "data", "user" nodrop
| json field=data "controls", "policy_id", "blocking", "policy_name"
```

**Aqua Security/Overview/Unauthorized File Activity**
```
_sourceCategory={{_sourceCategory}} "runtime.policy" file ("\"result\":2" or "\"result\":3")
| json "rule_type", "result" , "category", "action" nodrop
```

**Aqua Security/Overview/Unauthorized Image Activity**
```
_sourceCategory={{_sourceCategory}} container
| json "rule_type", "result" , "category" nodrop
```

**Aqua Security/Overview/Unauthorized Network Activity**
```
_sourceCategory={{_sourceCategory}} "access.control" network
| json "rule_type", "result", "category", "action", "podnamespace", "poddeployment" nodrop
```

**Aqua Security/Runtime Events/Network Security Events by Pod**
```
_sourceCategory={{_sourceCategory}} "access.control" network
| json "rule_type", "result", "category", "action", "podnamespace", "poddeployment", "image", "reason", "containerid", "resource" nodrop
```

**Aqua Security/Runtime Events/Unauthorized File Activity**
```
_sourceCategory={{_sourceCategory}} "runtime.policy" file ("\"result\":2" or "\"result\":3")
| json "rule_type", "result", "category", "action", "podnamespace", "poddeployment", "image", "reason", "containerid", "resource" nodrop
```

**Aqua Security/Runtime Events/Unauthorized Image Starts**
```
_sourceCategory={{_sourceCategory}} container
| json "rule_type", "result", "category", "action", "podnamespace", "poddeployment", "image", "reason", "containerid", "resource" nodrop
```


