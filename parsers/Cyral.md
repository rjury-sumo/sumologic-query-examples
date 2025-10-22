# Parsers For Cyral

**Cyral/Application Activity Details/{{topKLimit}} Most Recent Sessions**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","client.applicationName","activityTime","response.records","response.bytes","repo.name","identity.repoUser","client.connectionId" nodrop
```

**Cyral/Application Activity Details/Avg Bytes Read**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","response.message","client.applicationName","response.bytes" nodrop
```

**Cyral/Application Activity Details/Avg Execution Time**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","response.message","client.applicationName","response.executionTimeNanos" nodrop
```

**Cyral/Application Activity Details/Avg Records Read**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","response.message","client.applicationName","response.records" nodrop
```

**Cyral/Application Activity Details/Data Reads Breakdown**
```
(_sourceCategory={{Logsdatasource}}  )
| json "request.datasetsAccessed[*].accessType" as accessType nodrop
| json "request.datasetsAccessed[*].dataset" as dataset nodrop
| json "client.applicationName","response.records","identity.endUser","repo.name" nodrop
```

**Cyral/Application Activity Details/Modifications**
```
(_sourceCategory={{Logsdatasource}}  )
| json "request.datasetsAccessed[*].accessType" as accessType nodrop
| json "request.datasetsAccessed[*].dataset" as dataset nodrop
| json "client.applicationName","request.statementType","response.records","identity.endUser","repo.name" nodrop
```

**Cyral/Application Activity Details/Statement Type Breakdown by Sum of Records**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","identity.endUser","client.applicationName","response.records","request.statementType" nodrop
```

**Cyral/Application Activity Details/Top {{topKLimit}} End Users By Sum Records**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","identity.endUser","client.applicationName","response.records" nodrop
```

**Cyral/Application Activity Details/Top {{topKLimit}} Hosts by Sum Records**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","identity.endUser","client.applicationName","response.records","client.host" nodrop
```

**Cyral/Application Activity Details/Top {{topKLimit}} Policy Violations**
```
(_sourceCategory={{Logsdatasource}}  )
| json "policyViolations[*].policyName" as policyName nodrop
| json "policyViolations[*].severity" as policySeverity nodrop
| json "policyViolations[*].accessType" as accessType nodrop
| json "policyViolated" as policyViolated nodrop
| json "client.applicationName" as applicationName nodrop
```

**Cyral/Application Activity Details/Top {{topKLimit}} Repos By Sum Records**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","identity.endUser","client.applicationName","response.records","repo.name" nodrop
```

**Cyral/Application Activity Details/Total Reads**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","client.applicationName" nodrop
| where !isNull(%"identity.group")
| json "request.datasetsAccessed[*].accessType" as accessType
```

**Cyral/Application Activity Details/User Statement Type Trend by Sum of Records**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","identity.endUser","client.applicationName","response.records","request.statementType" nodrop
```

**Cyral/Data Monitoring Activity/Anomalous Read Access**
```
(_sourceCategory={{Logsdatasource}}  )
| json "request.fieldsAccessed[*].label" as fieldLabel nodrop
| json "identity.group" as SSOGroup nodrop
| json "request.statementType" nodrop
```

**Cyral/Data Monitoring Activity/Avg Bytes Read**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","request.statementType","response.message","response.bytes" nodrop
```

**Cyral/Data Monitoring Activity/Avg Execution Time**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","request.statementType","response.message","response.executionTimeNanos" nodrop
```

**Cyral/Data Monitoring Activity/Avg Records Read**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","request.statementType","response.message","response.records" nodrop
```

**Cyral/Data Monitoring Activity/Data Activity by SSO Group**
```
(_sourceCategory={{Logsdatasource}}  )
| json "activityTypes","identity.group","request.statementType" nodrop
```

**Cyral/Data Monitoring Activity/Groups By Statement Category**
```
(_sourceCategory={{Logsdatasource}} )
| json "request.fieldsAccessed[*].label" as fieldLabel nodrop
| json "identity.group","request.statementType" nodrop
```

**Cyral/Data Monitoring Activity/Inactive Users**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","request.statementType","activityTime","identity.endUser","identity.repoUser" nodrop
```

**Cyral/Data Monitoring Activity/Number of Users**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","request.statementType","activityTypes","identity.endUser" nodrop
```

**Cyral/Data Monitoring Activity/Queries By User - Aggregate**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","request.statementType","identity.endUser" nodrop
```

**Cyral/Data Monitoring Activity/Query Trend By User**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","request.statementType","identity.endUser" nodrop
```

**Cyral/Data Monitoring Activity/Recent Activity By User**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","request.statementType","activityTime","identity.endUser","identity.repoUser" nodrop
```

**Cyral/Data Monitoring Activity/Requests by SSO Group**
```
(_sourceCategory={{Logsdatasource}}  )
| json "activityTypes","identity.group","request.statementType" nodrop
```

**Cyral/Data Monitoring Activity/Total Reads**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","request.statementType" nodrop
| where %"identity.group" matches "{{GroupName}}" AND %"request.statementType" matches "{{StatementType}}"
| json "request.datasetsAccessed[*].accessType" as accessType nodrop
```

**Cyral/Policy Summary/Apps With Violations**
```
(_sourceCategory={{Logsdatasource}}  )
| json "policyViolated","sidecar.name","repo.name","client.applicationName" nodrop
```

**Cyral/Policy Summary/Bottom {{topKLimit}} SELECT Queries Without a Policy**
```
(_sourceCategory={{Logsdatasource}}  )
| json "policyViolated","request.statementType","sidecar.name","repo.name","request.datasetsAccessed","request.statement","response.records","client.connectionTime","identity.group","identity.endUser","client.applicationName","client.host" nodrop
| where %"policyViolated" = "false" and %"request.statementType" = "SELECT" and %"sidecar.name" matches "{{sidecar_name}}" and %"repo.name" matches "{{repo_name}}" and isNull(%"request.datasetsAccessed")
| parse regex field=%"request.statement" "^SELECT (?<Fields>.*) FROM (?<TableName>[a-z_\.\-A-Z$]*\b)"
```

**Cyral/Policy Summary/Policies Not In Use**
```
(_sourceCategory={{Logsdatasource}}  )
| json "policyViolated","sidecar.name","repo.name","activityTime","identity.endUser","identity.group","identity.repoUser" nodrop
```

**Cyral/Policy Summary/Repos With Violations**
```
(_sourceCategory={{Logsdatasource}}  )
| json "policyViolated","sidecar.name","repo.name" nodrop
```

**Cyral/Policy Summary/Statement Types Without Policy**
```
(_sourceCategory={{Logsdatasource}}  )
| json "policyViolated","sidecar.name","repo.name","request.datasetsAccessed","request.statementType" nodrop
```

**Cyral/Policy Summary/Top {{topKLimit}} Policies Not Used in Past 30 Days**
```
(_sourceCategory={{Logsdatasource}}  )
| json "policyViolated","sidecar.name","repo.name","activityTime" nodrop
| json "policyViolations[*].policyName" as policyName nodrop
```

**Cyral/Policy Summary/Top {{topKLimit}} Policies Violated**
```
(_sourceCategory={{Logsdatasource}}  )
| json "policyViolated","sidecar.name","repo.name" nodrop
| where %"policyViolated" = "true" and %"sidecar.name" matches "{{sidecar_name}}" and %"repo.name" matches "{{repo_name}}"
| json "policyViolations[*].policyName" as policyName
```

**Cyral/Policy Summary/Top {{topKLimit}} Queries Without a Policy**
```
(_sourceCategory={{Logsdatasource}}  )
| json "policyViolated","request.statementType","sidecar.name","repo.name","request.datasetsAccessed","request.statement" nodrop
```

**Cyral/Policy Summary/Top {{topKLimit}} Users With Violations**
```
(_sourceCategory={{Logsdatasource}}  )
| json "policyViolated","sidecar.name","repo.name","identity.endUser" nodrop
```

**Cyral/Policy Summary/Total Violations**
```
(_sourceCategory={{Logsdatasource}}  )
| json "policyViolated","sidecar.name","repo.name" nodrop
```

**Cyral/Policy Summary/Users With Violations**
```
(_sourceCategory={{Logsdatasource}}  )
| json "policyViolated","sidecar.name","repo.name","identity.endUser" nodrop
```

**Cyral/Security Summary/{{topKLimit}} Most Recent Authentication Failures**
```
(_sourceCategory={{Logsdatasource}}  )
| json "activityTypes","sidecar.name","repo.name","identity.repoUser","identity.endUser","activityTime","client.host","client.applicationName" nodrop
```

**Cyral/Security Summary/Suspicious Activity**
```
(_sourceCategory={{Logsdatasource}}  )
| json "activityTypes","sidecar.name","repo.name" nodrop
```

**Cyral/Security Summary/Suspicious Activity By Geography**
```
(_sourceCategory={{Logsdatasource}}  )
| json "activityTypes","sidecar.name","repo.name","client.host" nodrop
```

**Cyral/Security Summary/Suspicious Activity By Repo**
```
(_sourceCategory={{Logsdatasource}}  )
| json "activityTypes","repo.name","sidecar.name" nodrop
```

**Cyral/Security Summary/Top {{topKLimit}} Suspicious IPs**
```
(_sourceCategory={{Logsdatasource}} )
| json "activityTypes","sidecar.name","repo.name","client.host" nodrop
```

**Cyral/User Activity Details/{{topKLimit}}  Most Recent Sessions by Session End**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","identity.endUser","request.statementType","activityTime","response.records","response.bytes","repo.name","identity.repoUser","client.connectionId" nodrop
```

**Cyral/User Activity Details/Avg Bytes Read**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","identity.endUser","request.statementType","response.bytes" nodrop
```

**Cyral/User Activity Details/Avg Records Read**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","response.message","identity.endUser","request.statementType","response.records" nodrop
```

**Cyral/User Activity Details/Data Reads Breakdown**
```
(_sourceCategory={{Logsdatasource}}  )
| json "request.datasetsAccessed[*].accessType" as dataSetAccessType nodrop
| json "request.datasetsAccessed[*].dataset" as dataSetAccessedDataSet nodrop
| json "identity.group","repo.name","response.records","identity.endUser","request.statementType" nodrop
```

**Cyral/User Activity Details/Modifications**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","identity.endUser","request.statementType","response.records","repo.name" nodrop
| where %"identity.group" matches "{{Group}}" and %"identity.endUser" matches "{{endUser}}" and (%"request.statementType"="DELETE" or %"request.statementType"="INSERT" or %"request.statementType"="UPDATE")
| json "request.datasetsAccessed[*].accessType" as accessType nodrop
| json "request.datasetsAccessed[*].dataset" as dataSet nodrop
```

**Cyral/User Activity Details/Statement Type Breakdown by Sum of Records**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","identity.endUser","request.statementType","response.records" nodrop
```

**Cyral/User Activity Details/Top {{topKLimit}}  Repo Users By Sum Records**
```
((_sourceCategory={{Logsdatasource}}  ))
| json "identity.group","identity.endUser","request.statementType","response.records","identity.repoUser" nodrop
```

**Cyral/User Activity Details/Top {{topKLimit}}  Repos By Sum Records**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","identity.endUser","request.statementType","response.records","repo.name" nodrop
```

**Cyral/User Activity Details/Top {{topKLimit}} Applications by Sum Records**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","identity.endUser","request.statementType","response.records","client.applicationName" nodrop
```

**Cyral/User Activity Details/Top {{topKLimit}} Policy Violations**
```
(_sourceCategory={{Logsdatasource}} )
| json "policyViolations[*].policyName" as policyName nodrop
| json "policyViolations[*].severity" as policySeverity nodrop
| json "policyViolations[*].accessType" as policyAccessType nodrop
| json "identity.group","identity.endUser","request.statementType","policyViolated" nodrop
```

**Cyral/User Activity Details/Total Reads**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","identity.endUser","request.statementType" nodrop
| where !isNull(%"identity.group") and %"identity.group" matches "{{Group}}" and %"identity.endUser" matches "{{endUser}}" and %"request.statementType" matches "{{statementType}}"
| json "request.datasetsAccessed[*].accessType" as accessType
```

**Cyral/User Activity Details/User Statement Type Trend by Sum of Records**
```
(_sourceCategory={{Logsdatasource}}  )
| json "identity.group","identity.endUser","request.statementType","response.records" nodrop
```


