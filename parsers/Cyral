# Parsers For Cyral

## Parser:
```
| json "activityTypes","identity.group","request.statementType" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Avg Bytes Read, Avg Execution Time, Avg Records Read, Data Activity by SSO Group, Data Reads Breakdown, Inactive Users, Modifications, Number of Users, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Repos By Sum Records, Total Reads, User Statement Type Trend by Sum of Records



## Parser:
```
| json "activityTypes","repo.name","sidecar.name" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Authentication Failures, {{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Bottom {{topKLimit}} SELECT Queries Without a Policy, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Suspicious Activity, Suspicious Activity By Repo, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policies Violated, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Users With Violations, Total Reads, Total Violations, User Statement Type Trend by Sum of Records, Users With Violations



## Parser:
```
| json "activityTypes","sidecar.name","repo.name" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Authentication Failures, {{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Bottom {{topKLimit}} SELECT Queries Without a Policy, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Suspicious Activity, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policies Violated, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Users With Violations, Total Reads, Total Violations, User Statement Type Trend by Sum of Records, Users With Violations



## Parser:
```
| json "activityTypes","sidecar.name","repo.name","client.host" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Authentication Failures, {{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Bottom {{topKLimit}} SELECT Queries Without a Policy, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Suspicious Activity, Suspicious Activity By Geography, Suspicious Activity By Repo, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policies Violated, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Suspicious IPs, Top {{topKLimit}} Users With Violations, Total Reads, Total Violations, User Statement Type Trend by Sum of Records, Users With Violations



## Parser:
```
| json "activityTypes","sidecar.name","repo.name","identity.repoUser","identity.endUser","activityTime","client.host","client.applicationName" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Authentication Failures, {{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Bottom {{topKLimit}} SELECT Queries Without a Policy, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policies Violated, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Users With Violations, Total Reads, Total Violations, User Statement Type Trend by Sum of Records, Users With Violations



## Parser:
```
| json "identity.group","client.applicationName" nodrop
| json "request.datasetsAccessed[*].accessType" as accessType
```
### Use Cases:
Total Reads



## Parser:
```
| json "identity.group","client.applicationName","activityTime","response.records","response.bytes","repo.name","identity.repoUser","client.connectionId" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Data Reads Breakdown, Modifications, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Total Reads



## Parser:
```
| json "identity.group","identity.endUser","client.applicationName","response.records" nodrop
```
### Use Cases:
Data Reads Breakdown, Modifications, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Total Reads



## Parser:
```
| json "identity.group","identity.endUser","client.applicationName","response.records","client.host" nodrop
```
### Use Cases:
Modifications, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} Hosts by Sum Records, Total Reads



## Parser:
```
| json "identity.group","identity.endUser","client.applicationName","response.records","repo.name" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Avg Records Read, Data Reads Breakdown, Modifications, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Repos By Sum Records, Total Reads



## Parser:
```
| json "identity.group","identity.endUser","client.applicationName","response.records","request.statementType" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Avg Bytes Read, Avg Execution Time, Avg Records Read, Data Reads Breakdown, Modifications, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Repos By Sum Records, Total Reads, User Statement Type Trend by Sum of Records



## Parser:
```
| json "identity.group","identity.endUser","request.statementType" nodrop
| json "request.datasetsAccessed[*].accessType" as accessType
```
### Use Cases:
{{topKLimit}} Most Recent Authentication Failures, {{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Bottom {{topKLimit}} SELECT Queries Without a Policy, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Suspicious Activity, Suspicious Activity By Geography, Suspicious Activity By Repo, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policies Violated, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Suspicious IPs, Top {{topKLimit}} Users With Violations, Total Reads, Total Violations, User Statement Type Trend by Sum of Records, Users With Violations



## Parser:
```
| json "identity.group","identity.endUser","request.statementType","activityTime","response.records","response.bytes","repo.name","identity.repoUser","client.connectionId" nodrop
```
### Use Cases:
{{topKLimit}}  Most Recent Sessions by Session End, {{topKLimit}} Most Recent Authentication Failures, {{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Bottom {{topKLimit}} SELECT Queries Without a Policy, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Suspicious Activity, Suspicious Activity By Geography, Suspicious Activity By Repo, Top {{topKLimit}}  Repo Users By Sum Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policies Violated, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Suspicious IPs, Top {{topKLimit}} Users With Violations, Total Reads, Total Violations, User Statement Type Trend by Sum of Records, Users With Violations



## Parser:
```
| json "identity.group","identity.endUser","request.statementType","response.bytes" nodrop
```
### Use Cases:
{{topKLimit}}  Most Recent Sessions by Session End, {{topKLimit}} Most Recent Authentication Failures, {{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Bottom {{topKLimit}} SELECT Queries Without a Policy, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Suspicious Activity, Suspicious Activity By Geography, Suspicious Activity By Repo, Top {{topKLimit}}  Repo Users By Sum Records, Top {{topKLimit}}  Repos By Sum Records, Top {{topKLimit}} Applications by Sum Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policies Violated, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Suspicious IPs, Top {{topKLimit}} Users With Violations, Total Reads, Total Violations, User Statement Type Trend by Sum of Records, Users With Violations



## Parser:
```
| json "identity.group","identity.endUser","request.statementType","response.records" nodrop
```
### Use Cases:
{{topKLimit}}  Most Recent Sessions by Session End, {{topKLimit}} Most Recent Authentication Failures, {{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Bottom {{topKLimit}} SELECT Queries Without a Policy, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Suspicious Activity, Suspicious Activity By Geography, Suspicious Activity By Repo, Top {{topKLimit}}  Repo Users By Sum Records, Top {{topKLimit}}  Repos By Sum Records, Top {{topKLimit}} Applications by Sum Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policies Violated, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Suspicious IPs, Top {{topKLimit}} Users With Violations, Total Reads, Total Violations, User Statement Type Trend by Sum of Records, Users With Violations



## Parser:
```
| json "identity.group","identity.endUser","request.statementType","response.records","client.applicationName" nodrop
```
### Use Cases:
{{topKLimit}}  Most Recent Sessions by Session End, {{topKLimit}} Most Recent Authentication Failures, {{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Bottom {{topKLimit}} SELECT Queries Without a Policy, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Suspicious Activity, Suspicious Activity By Geography, Suspicious Activity By Repo, Top {{topKLimit}}  Repo Users By Sum Records, Top {{topKLimit}}  Repos By Sum Records, Top {{topKLimit}} Applications by Sum Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policies Violated, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Suspicious IPs, Top {{topKLimit}} Users With Violations, Total Reads, Total Violations, User Statement Type Trend by Sum of Records, Users With Violations



## Parser:
```
| json "identity.group","identity.endUser","request.statementType","response.records","identity.repoUser" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Authentication Failures, {{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Bottom {{topKLimit}} SELECT Queries Without a Policy, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Suspicious Activity, Suspicious Activity By Geography, Suspicious Activity By Repo, Top {{topKLimit}}  Repo Users By Sum Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policies Violated, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Suspicious IPs, Top {{topKLimit}} Users With Violations, Total Reads, Total Violations, User Statement Type Trend by Sum of Records, Users With Violations



## Parser:
```
| json "identity.group","identity.endUser","request.statementType","response.records","repo.name" nodrop
```
### Use Cases:
{{topKLimit}}  Most Recent Sessions by Session End, {{topKLimit}} Most Recent Authentication Failures, {{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Bottom {{topKLimit}} SELECT Queries Without a Policy, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Suspicious Activity, Suspicious Activity By Geography, Suspicious Activity By Repo, Top {{topKLimit}}  Repo Users By Sum Records, Top {{topKLimit}}  Repos By Sum Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policies Violated, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Suspicious IPs, Top {{topKLimit}} Users With Violations, Total Reads, Total Violations, User Statement Type Trend by Sum of Records, Users With Violations



## Parser:
```
| json "identity.group","identity.endUser","request.statementType","response.records","repo.name" nodrop
| json "request.datasetsAccessed[*].accessType" as accessType nodrop
| json "request.datasetsAccessed[*].dataset" as dataSet nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Authentication Failures, {{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Bottom {{topKLimit}} SELECT Queries Without a Policy, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Suspicious Activity, Suspicious Activity By Geography, Suspicious Activity By Repo, Top {{topKLimit}}  Repo Users By Sum Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policies Violated, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Suspicious IPs, Top {{topKLimit}} Users With Violations, Total Reads, Total Violations, User Statement Type Trend by Sum of Records, Users With Violations



## Parser:
```
| json "identity.group","request.statementType" nodrop
| json "request.datasetsAccessed[*].accessType" as accessType nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Avg Bytes Read, Avg Execution Time, Avg Records Read, Data Reads Breakdown, Inactive Users, Modifications, Number of Users, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Repos By Sum Records, Total Reads, User Statement Type Trend by Sum of Records



## Parser:
```
| json "identity.group","request.statementType","activityTime","identity.endUser","identity.repoUser" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Avg Bytes Read, Avg Execution Time, Avg Records Read, Data Reads Breakdown, Inactive Users, Modifications, Number of Users, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Repos By Sum Records, Total Reads, User Statement Type Trend by Sum of Records



## Parser:
```
| json "identity.group","request.statementType","activityTypes","identity.endUser" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Avg Bytes Read, Avg Execution Time, Avg Records Read, Data Reads Breakdown, Modifications, Number of Users, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Repos By Sum Records, Total Reads, User Statement Type Trend by Sum of Records



## Parser:
```
| json "identity.group","request.statementType","identity.endUser" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Avg Bytes Read, Avg Execution Time, Avg Records Read, Data Reads Breakdown, Inactive Users, Modifications, Number of Users, Queries By User - Aggregate, Query Trend By User, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Repos By Sum Records, Total Reads, User Statement Type Trend by Sum of Records



## Parser:
```
| json "identity.group","request.statementType","response.message","response.bytes" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Avg Bytes Read, Avg Execution Time, Avg Records Read, Data Reads Breakdown, Inactive Users, Modifications, Number of Users, Queries By User - Aggregate, Query Trend By User, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Repos By Sum Records, Total Reads, User Statement Type Trend by Sum of Records



## Parser:
```
| json "identity.group","request.statementType","response.message","response.executionTimeNanos" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Avg Bytes Read, Avg Execution Time, Avg Records Read, Data Reads Breakdown, Inactive Users, Modifications, Number of Users, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Repos By Sum Records, Total Reads, User Statement Type Trend by Sum of Records



## Parser:
```
| json "identity.group","request.statementType","response.message","response.records" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Avg Bytes Read, Avg Execution Time, Avg Records Read, Data Activity by SSO Group, Data Reads Breakdown, Inactive Users, Modifications, Number of Users, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Repos By Sum Records, Total Reads, User Statement Type Trend by Sum of Records



## Parser:
```
| json "identity.group","response.message","client.applicationName","response.bytes" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Avg Bytes Read, Avg Execution Time, Avg Records Read, Data Reads Breakdown, Modifications, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Repos By Sum Records, Total Reads



## Parser:
```
| json "identity.group","response.message","client.applicationName","response.executionTimeNanos" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Avg Execution Time, Avg Records Read, Data Reads Breakdown, Modifications, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Repos By Sum Records, Total Reads



## Parser:
```
| json "identity.group","response.message","client.applicationName","response.records" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Avg Records Read, Data Reads Breakdown, Modifications, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Total Reads



## Parser:
```
| json "identity.group","response.message","identity.endUser","request.statementType","response.records" nodrop
```
### Use Cases:
{{topKLimit}}  Most Recent Sessions by Session End, {{topKLimit}} Most Recent Authentication Failures, {{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Bottom {{topKLimit}} SELECT Queries Without a Policy, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Suspicious Activity, Suspicious Activity By Geography, Suspicious Activity By Repo, Top {{topKLimit}}  Repo Users By Sum Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policies Violated, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Suspicious IPs, Top {{topKLimit}} Users With Violations, Total Reads, Total Violations, User Statement Type Trend by Sum of Records, Users With Violations



## Parser:
```
| json "policyViolated","request.statementType","sidecar.name","repo.name","request.datasetsAccessed","request.statement" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Users With Violations, Total Reads, User Statement Type Trend by Sum of Records



## Parser:
```
| json "policyViolated","request.statementType","sidecar.name","repo.name","request.datasetsAccessed","request.statement","response.records","client.connectionTime","identity.group","identity.endUser","client.applicationName","client.host" nodrop
| parse regex field=%"request.statement" "^SELECT (?<Fields>.*) FROM (?<TableName>[a-z_\.\-A-Z$]*\b)"
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Bottom {{topKLimit}} SELECT Queries Without a Policy, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Users With Violations, Total Reads, User Statement Type Trend by Sum of Records, Users With Violations



## Parser:
```
| json "policyViolated","sidecar.name","repo.name" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Bottom {{topKLimit}} SELECT Queries Without a Policy, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policies Violated, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Users With Violations, Total Reads, Total Violations, User Statement Type Trend by Sum of Records, Users With Violations



## Parser:
```
| json "policyViolated","sidecar.name","repo.name" nodrop
| json "policyViolations[*].policyName" as policyName
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Bottom {{topKLimit}} SELECT Queries Without a Policy, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policies Violated, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Users With Violations, Total Reads, User Statement Type Trend by Sum of Records, Users With Violations



## Parser:
```
| json "policyViolated","sidecar.name","repo.name","activityTime" nodrop
| json "policyViolations[*].policyName" as policyName nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Anomalous Read Access, Avg Bytes Read, Avg Execution Time, Avg Records Read, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Repos By Sum Records, Total Reads, User Statement Type Trend by Sum of Records



## Parser:
```
| json "policyViolated","sidecar.name","repo.name","activityTime","identity.endUser","identity.group","identity.repoUser" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Users With Violations, Total Reads, User Statement Type Trend by Sum of Records



## Parser:
```
| json "policyViolated","sidecar.name","repo.name","client.applicationName" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Users With Violations, Total Reads, User Statement Type Trend by Sum of Records



## Parser:
```
| json "policyViolated","sidecar.name","repo.name","identity.endUser" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Users With Violations, Total Reads, User Statement Type Trend by Sum of Records, Users With Violations



## Parser:
```
| json "policyViolated","sidecar.name","repo.name","request.datasetsAccessed","request.statementType" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Users With Violations, Total Reads, User Statement Type Trend by Sum of Records



## Parser:
```
| json "policyViolations[*].policyName" as policyName nodrop
| json "policyViolations[*].severity" as policySeverity nodrop
| json "policyViolations[*].accessType" as accessType nodrop
| json "policyViolated" as policyViolated nodrop
| json "client.applicationName" as applicationName nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Avg Execution Time, Avg Records Read, Data Reads Breakdown, Modifications, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Repos By Sum Records, Total Reads



## Parser:
```
| json "policyViolations[*].policyName" as policyName nodrop
| json "policyViolations[*].severity" as policySeverity nodrop
| json "policyViolations[*].accessType" as policyAccessType nodrop
| json "identity.group","identity.endUser","request.statementType","policyViolated" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Authentication Failures, {{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Bottom {{topKLimit}} SELECT Queries Without a Policy, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Suspicious Activity, Suspicious Activity By Geography, Suspicious Activity By Repo, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policies Violated, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Suspicious IPs, Top {{topKLimit}} Users With Violations, Total Reads, Total Violations, User Statement Type Trend by Sum of Records, Users With Violations



## Parser:
```
| json "request.datasetsAccessed[*].accessType" as accessType nodrop
| json "request.datasetsAccessed[*].dataset" as dataset nodrop
| json "client.applicationName","request.statementType","response.records","identity.endUser","repo.name" nodrop
```
### Use Cases:
Modifications, Total Reads



## Parser:
```
| json "request.datasetsAccessed[*].accessType" as accessType nodrop
| json "request.datasetsAccessed[*].dataset" as dataset nodrop
| json "client.applicationName","response.records","identity.endUser","repo.name" nodrop
```
### Use Cases:
Data Reads Breakdown, Modifications, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} Hosts by Sum Records, Total Reads



## Parser:
```
| json "request.datasetsAccessed[*].accessType" as dataSetAccessType nodrop
| json "request.datasetsAccessed[*].dataset" as dataSetAccessedDataSet nodrop
| json "identity.group","repo.name","response.records","identity.endUser","request.statementType" nodrop
```
### Use Cases:
{{topKLimit}}  Most Recent Sessions by Session End, {{topKLimit}} Most Recent Authentication Failures, {{topKLimit}} Most Recent Sessions, Anomalous Read Access, Apps With Violations, Avg Bytes Read, Avg Execution Time, Avg Records Read, Bottom {{topKLimit}} SELECT Queries Without a Policy, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Policies Not In Use, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Repos With Violations, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Statement Types Without Policy, Suspicious Activity, Suspicious Activity By Geography, Suspicious Activity By Repo, Top {{topKLimit}}  Repo Users By Sum Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policies Not Used in Past 30 Days, Top {{topKLimit}} Policies Violated, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Queries Without a Policy, Top {{topKLimit}} Repos By Sum Records, Top {{topKLimit}} Suspicious IPs, Top {{topKLimit}} Users With Violations, Total Reads, Total Violations, User Statement Type Trend by Sum of Records, Users With Violations



## Parser:
```
| json "request.fieldsAccessed[*].label" as fieldLabel nodrop
| json "identity.group" as SSOGroup nodrop
| json "request.statementType" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Anomalous Read Access, Avg Bytes Read, Avg Execution Time, Avg Records Read, Data Activity by SSO Group, Data Reads Breakdown, Inactive Users, Modifications, Number of Users, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Repos By Sum Records, Total Reads, User Statement Type Trend by Sum of Records



## Parser:
```
| json "request.fieldsAccessed[*].label" as fieldLabel nodrop
| json "identity.group","request.statementType" nodrop
```
### Use Cases:
{{topKLimit}} Most Recent Sessions, Anomalous Read Access, Avg Bytes Read, Avg Execution Time, Avg Records Read, Data Activity by SSO Group, Data Reads Breakdown, Groups By Statement Category, Inactive Users, Modifications, Number of Users, Queries By User - Aggregate, Query Trend By User, Recent Activity By User, Requests by SSO Group, Statement Type Breakdown by Sum of Records, Top {{topKLimit}} End Users By Sum Records, Top {{topKLimit}} Hosts by Sum Records, Top {{topKLimit}} Policy Violations, Top {{topKLimit}} Repos By Sum Records, Total Reads, User Statement Type Trend by Sum of Records


