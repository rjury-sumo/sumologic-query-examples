# Parsers For MongoDB Atlas 6

## Parser:
```
| json "atype", "local.ip", "remote.ip", "users", "result", "project_id", "hostname", "cluster_name" as atype, local_ip, remote_ip, users, result, project_id, hostname, cluster_name
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| json field=raw "labels[*].name" as label_name nodrop
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "atype", "local.ip", "remote.ip", "users","result", "project_id", "hostname", "cluster_name" as atype, local_ip, remote_ip, users, result, project_id, hostname, cluster_name
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "atype", "local.ip", "remote.ip", "users","result", "project_id", "hostname", "cluster_name" as atype, local_ip, remote_ip, users, result, project_id, hostname, cluster_name
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| json field=raw "labels[*].name" as label_name nodrop
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "atype", "local.ip", "remote.ip", "users","result", "project_id", "hostname", "cluster_name" as atype, local_ip, remote_ip, users, result, project_id, hostname, cluster_name
| parse regex field=users "(?<json_blob>\{[^\}]+\})" multi
| json auto field=json_blob
| json field=json_blob "user", "db" as user, database_name
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "atype", "local.ip", "remote.ip", "users","result", "project_id", "hostname", "cluster_name", "param.ns", "param.command" as atype, local_ip, remote_ip, users, result, project_id, hostname, cluster_name, namespace, command
| parse regex field=users "\"user\":\"(?<user>.*?)\"" multi nodrop
| parse field=namespace "*.*" as database, collection
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "atype", "local.ip", "remote.ip", "users","result", "project_id", "hostname", "cluster_name", "param" as atype, local_ip, remote_ip, users, result, project_id, hostname, cluster_name, param
| json field=param "db", "ns" as database1, database2 nodrop
| parse field=database2 "*.*" as database2, collection nodrop
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "id", "groupId", "orgId", "eventTypeName", "metricName", "links", "hostname", "port", "created", "username", "remoteAddress" as id, project_id, org_id, eventTypeName, metricName, links, hostname, port, created, username, remoteAddress nodrop
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "id", "groupId", "orgId", "eventTypeName", "metricName", "links", "hostname", "port", "created", "username", "remoteAddress" as id, project_id, org_id, eventTypeName, metricName, links, hostname, port,created, username, remoteAddress nodrop
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "id", "groupId", "orgId", "eventTypeName", "metricName", "links", "hostname", "port", "replicaSetName", "created", "username", "remoteAddress" as id, project_id, org_id, eventTypeName, metricName, links, hostname, port, replicaSetName, created, username, remoteAddress nodrop
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "id", "groupId", "orgId", "eventTypeName", "metricName", "links", "hostname","clusterName", "port", "replicaSetName", "created", "username", "remoteAddress" as id, project_id, org_id, eventTypeName, metricName, links, hostname,cluster_name, port, replicaSetName, created, username, remoteAddress nodrop
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "id","updated","metricName","status", "groupId","hostnameAndPort","typeName","replicaSetName","links","clusterName" as id,updated,metricName,status, project_id,hostnameAndPort,typeName,replicaSetName,links,cluster_name nodrop
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "id","updated","metricName","status", "groupId","hostnameAndPort","typeName","replicaSetName","links","clusterName" as id,updated,metricName,status, project_id,hostnameAndPort,typeName,replicaSetName,links,cluster_name nodrop
| parse field=hostnameAndPort "*:*" as hostname, port
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "id","updated","metricName","status", "groupId","orgId","hostnameAndPort","typeName","replicaSetName","links","clusterName" as id,updated,metricName,status, project_id, org_id, hostnameAndPort,typeName,replicaSetName,links,cluster_name nodrop
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx" as severity,timestamp,component,context
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.command.$db","attr.durationMillis" as severity,timestamp,component,context,database,duration
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.command.$db","attr.durationMillis","attr.command","attr.ns" as severity,timestamp,component,context,database,duration,db_cmd,collection
| parse regex field=db_cmd "(?<crud_operation>^[^:]*)"
| parse regex field=crud_operation "(?<crud_operation>(?<=\").*(?=\"))"
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.command.$db","attr.durationMillis","attr.command","attr.ns","attr.nreturned","attr.docsExamined","attr.keysExamined" as severity,timestamp,component,context,database,duration,db_cmd,collection,nreturned,docs_examined,keys_examined 
| parse regex field=db_cmd "(?<crud_operation>^[^:]*)"
| parse regex field=crud_operation "(?<crud_operation>(?<=\").*(?=\"))"
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.command.$db","attr.durationMillis","attr.ns" as severity,timestamp,component,context,database,duration,namespace
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.exitCode" as severity,timestamp,component,context,code
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.hostAndPort" as severity,timestamp,component,context,host_name
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.hostAndPort","attr.newState" as severity,timestamp,component,context,hostaddressport,state
| parse regex field=hostaddressport "(?<host_name>^.*(?=:))"
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.namespace" as severity,timestamp,component,context,namespace
| parse regex field=namespace "(?<database>.+?(?=\.))"
| parse regex field=namespace "(?<collection>(?<=\.).+?(?=$))"
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.primary" as severity,timestamp,component,context,primary_node
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.splitPoint","attr.namespace","attr.shardId" as severity,timestamp,component,context,chunkSplitPoint,collection,shard
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "t.$date","s","c","ctx" as timestamp,severity,component,context
| json "msg","project_id","hostname","cluster_name"
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "t.$date","s","c","ctx","attr.authenticationDatabase","attr.remote","attr.principalName","attr.error" as timestamp,severity,component,context,database,client_ip,user,reason
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "t.$date","s","c","ctx","attr.authenticationDatabase","attr.remote","attr.principalName","attr.error" as timestamp,severity,component,context,database,client_ip,user,reason
| json "msg","project_id","hostname","cluster_name"
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "t.$date","s","c","ctx","attr.authenticationDatabase","attr.remote","attr.principalName","attr.error" as timestamp,severity,component,context,database,client_ip,user,reason
| parse regex field=client_ip "(?<client_ip>(?<=).*(?=:))"
| json "msg","project_id","hostname","cluster_name" 
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "t.$date","s","c","ctx","attr.error.codeName","attr.error.errmsg" as timestamp,severity,component,context,errorName,errorMessage
| json "msg","project_id","hostname","cluster_name"
| parse regex field=errorMessage "(?<dest_node>(?<=server ).*(?=,))" nodrop
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json "t.$date","s","c","ctx","attr.remote" as timestamp,severity,component,context,client_ip
| json "msg","project_id","hostname","cluster_name"
| parse regex field=client_ip "(?<client_ip>(?<=).*(?=:))"
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component



## Parser:
```
| json field=_raw "attr.event.ns"
| json "t.$date","s","c","ctx","attr.event.details.from","attr.event.details.to","attr.event.ns" as timestamp,severity,component,context,fromShard,toShard,collection
| json "msg","project_id","hostname","cluster_name"
 
```
### Use Cases:
Alerts by HostName - Distribution, Alerts by MetricName, Alerts by MetricName - Trend, Alerts by Status, Alerts by Status - Trend, Alerts Outlier Over Time, Audit Events by Action Type, Audit Events by Hostname - Trend, Audit Events by Users, Audit Events Locations by Remote IP, Average Query Duration by Namespace, Balancer Failures, Chunk Split by Shard and Collection, Chunks Moving Between Shards, Chunks Moving by Collection, Cluster Ready Events, Database Read/Write Operations, Error Messages with Low Severity, Errors, Errors - Time Compare, Errors by Component, Events by Location, Events by User Name, Events Distribution by type, Failed Audit Events, Failed Authentications, Failed Authorizations, Failed Login Attempt Summary, Failed Logins, Heartbeat Error Events, Hosts  by Errors and Warnings, Indexed Keys by database and collection, Last 3 Cluster Events, Last 3 Errors by Hostname, Last 3 Host Events, Location of Client Connection Requests, Location of Failed Logins, Logins from Malicious Remote IP, Messages  with High Severity, Messages by Severity, MongoDB Exit Events, MongoDB User Updated Events, Number of CRUD Commands Over Time, Open Alerts, Primary Node, Project Events, Queries with Scanned Keys/Returned Objects ratio less than  1, Queries with Scanned Objects/Returned Objects ratio greater than 1, Recent Alerts, Recent Audit Events, Recent Events, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Running Servers, Secondary Node(s), Slow CRUD Operations by Database and Collection, Slow Queries, Slow Queries by Connection ID, Slow Queries by Database, Slow Queries Over Time by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Threat Intel by Remote IP, Threat Intel Outlier by Remote IP, Timeout Events, Total Alerts by Day, Total Events, Unreachable Nodes, Warnings, Warnings by Component


