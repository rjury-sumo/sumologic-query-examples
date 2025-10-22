# Parsers For MongoDB Atlas 6

**MongoDB Atlas 6/MongoDB Atlas  - Slow Queries /Indexed Keys by database and collection**
```
_sourceCategory={{Logsdatasource}}  INDEX
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.namespace" as severity,timestamp,component,context,namespace
| where component matches "*INDEX*"
| parse regex field=namespace "(?<database>.+?(?=\.))"
| parse regex field=namespace "(?<collection>(?<=\.).+?(?=$))"
```

**MongoDB Atlas 6/MongoDB Atlas  - Slow Queries /Returned Objects ratio greater than 1**
```
_sourceCategory={{Logsdatasource}}  
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.command.$db","attr.durationMillis","attr.command","attr.ns","attr.nreturned","attr.docsExamined","attr.keysExamined" as severity,timestamp,component,context,database,duration,db_cmd,collection,nreturned,docs_examined,keys_examined 
| where component matches "*COMMAND*"
| parse regex field=db_cmd "(?<crud_operation>^[^:]*)"
| parse regex field=crud_operation "(?<crud_operation>(?<=\").*(?=\"))"
```

**MongoDB Atlas 6/MongoDB Atlas  - Slow Queries /Returned Objects ratio less than  1**
```
_sourceCategory={{Logsdatasource}}  
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.command.$db","attr.durationMillis","attr.command","attr.ns","attr.nreturned","attr.docsExamined","attr.keysExamined" as severity,timestamp,component,context,database,duration,db_cmd,collection,nreturned,docs_examined,keys_examined 
| where component matches "*COMMAND*"
| parse regex field=db_cmd "(?<crud_operation>^[^:]*)"
| parse regex field=crud_operation "(?<crud_operation>(?<=\").*(?=\"))"
```

**MongoDB Atlas 6/MongoDB Atlas  - Slow Queries /Slow CRUD Operations by Database and Collection**
```
_sourceCategory={{Logsdatasource}}  
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.command.$db","attr.durationMillis","attr.command","attr.ns" as severity,timestamp,component,context,database,duration,db_cmd,collection
| where component matches "*COMMAND*"
| parse regex field=db_cmd "(?<crud_operation>^[^:]*)"
| parse regex field=crud_operation "(?<crud_operation>(?<=\").*(?=\"))"
```

**MongoDB Atlas 6/MongoDB Atlas  - Slow Queries /Slow Queries**
```
_sourceCategory={{Logsdatasource}}  "Slow query"
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.command.$db","attr.durationMillis" as severity,timestamp,component,context,database,duration
```

**MongoDB Atlas 6/MongoDB Atlas  - Slow Queries /Slow Queries by Connection ID**
```
_sourceCategory={{Logsdatasource}}  
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.command.$db","attr.durationMillis","attr.command","attr.ns" as severity,timestamp,component,context,database,duration,db_cmd,collection
| where component matches "*COMMAND*"
| parse regex field=db_cmd "(?<crud_operation>^[^:]*)"
| parse regex field=crud_operation "(?<crud_operation>(?<=\").*(?=\"))"
```

**MongoDB Atlas 6/MongoDB Atlas  - Slow Queries /Slow Queries by Database**
```
_sourceCategory={{Logsdatasource}}  "Slow query"
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.command.$db","attr.durationMillis" as severity,timestamp,component,context,database,duration
```

**MongoDB Atlas 6/MongoDB Atlas  - Slow Queries /Slow Queries Over Time by Type**
```
_sourceCategory={{Logsdatasource}}  
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.command.$db","attr.durationMillis","attr.command","attr.ns" as severity,timestamp,component,context,database,duration,db_cmd,collection
| where component matches "*COMMAND*"
| parse regex field=db_cmd "(?<crud_operation>^[^:]*)"
| parse regex field=crud_operation "(?<crud_operation>(?<=\").*(?=\"))"
```

**MongoDB Atlas 6/MongoDB Atlas - Alerts/Alerts by HostName - Distribution**
```
_sourceCategory={{Logsdatasource}}  alertConfigId
| json "id","updated","metricName","status", "groupId","hostnameAndPort","typeName","replicaSetName","links","clusterName" as id,updated,metricName,status, project_id,hostnameAndPort,typeName,replicaSetName,links,cluster_name nodrop
| topk(1, updated) by id
| parse field=hostnameAndPort "*:*" as hostname, port
```

**MongoDB Atlas 6/MongoDB Atlas - Alerts/Alerts by MetricName**
```
_sourceCategory={{Logsdatasource}}  alertConfigId
| json "id","updated","metricName","status", "groupId","hostnameAndPort","typeName","replicaSetName","links","clusterName" as id,updated,metricName,status, project_id,hostnameAndPort,typeName,replicaSetName,links,cluster_name nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Alerts/Alerts by MetricName - Trend**
```
_sourceCategory={{Logsdatasource}}  alertConfigId
| json "id","updated","metricName","status", "groupId","hostnameAndPort","typeName","replicaSetName","links","clusterName" as id,updated,metricName,status, project_id,hostnameAndPort,typeName,replicaSetName,links,cluster_name nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Alerts/Alerts by Status**
```
_sourceCategory={{Logsdatasource}}  alertConfigId
| json "id","updated","metricName","status", "groupId","hostnameAndPort","typeName","replicaSetName","links","clusterName" as id,updated,metricName,status, project_id,hostnameAndPort,typeName,replicaSetName,links,cluster_name nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Alerts/Alerts by Status - Trend**
```
_sourceCategory={{Logsdatasource}}  alertConfigId
| json "id","updated","metricName","status", "groupId","hostnameAndPort","typeName","replicaSetName","links","clusterName" as id,updated,metricName,status, project_id,hostnameAndPort,typeName,replicaSetName,links,cluster_name nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Alerts/Alerts Outlier Over Time**
```
_sourceCategory={{Logsdatasource}}  alertConfigId
| json "id","updated","metricName","status", "groupId","hostnameAndPort","typeName","replicaSetName","links","clusterName" as id,updated,metricName,status, project_id,hostnameAndPort,typeName,replicaSetName,links,cluster_name nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Alerts/Open Alerts**
```
_sourceCategory={{Logsdatasource}}  alertConfigId
| json "id","updated","metricName","status", "groupId","hostnameAndPort","typeName","replicaSetName","links","clusterName" as id,updated,metricName,status, project_id,hostnameAndPort,typeName,replicaSetName,links,cluster_name nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Alerts/Recent Alerts**
```
_sourceCategory={{Logsdatasource}}  alertConfigId
| json "id","updated","metricName","status", "groupId","orgId","hostnameAndPort","typeName","replicaSetName","links","clusterName" as id,updated,metricName,status, project_id, org_id, hostnameAndPort,typeName,replicaSetName,links,cluster_name nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Alerts/Total Alerts by Day**
```
_sourceCategory={{Logsdatasource}}  alertConfigId
| json "id","updated","metricName","status", "groupId","hostnameAndPort","typeName","replicaSetName","links","clusterName" as id,updated,metricName,status, project_id,hostnameAndPort,typeName,replicaSetName,links,cluster_name nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Audit/Audit Events by Action Type**
```
_sourceCategory={{Logsdatasource}}  AND (_sourceName="mongodb-audit-log.gz" OR _sourceName="mongos-audit-log.gz")
| json "atype", "local.ip", "remote.ip", "users","result", "project_id", "hostname", "cluster_name" as atype, local_ip, remote_ip, users, result, project_id, hostname, cluster_name
```

**MongoDB Atlas 6/MongoDB Atlas - Audit/Audit Events by Hostname - Trend**
```
_sourceCategory={{Logsdatasource}}  AND (_sourceName="mongodb-audit-log.gz" OR _sourceName="mongos-audit-log.gz")
| json "atype", "local.ip", "remote.ip", "users","result", "project_id", "hostname", "cluster_name" as atype, local_ip, remote_ip, users, result, project_id, hostname, cluster_name
```

**MongoDB Atlas 6/MongoDB Atlas - Audit/Audit Events by Users**
```
_sourceCategory={{Logsdatasource}}  AND (_sourceName="mongodb-audit-log.gz" OR _sourceName="mongos-audit-log.gz")
| json "atype", "local.ip", "remote.ip", "users","result", "project_id", "hostname", "cluster_name" as atype, local_ip, remote_ip, users, result, project_id, hostname, cluster_name
| parse regex field=users "(?<json_blob>\{[^\}]+\})" multi
| json auto field=json_blob
| json field=json_blob "user", "db" as user, database_name
```

**MongoDB Atlas 6/MongoDB Atlas - Audit/Audit Events Locations by Remote IP**
```
_sourceCategory={{Logsdatasource}}  AND (_sourceName="mongodb-audit-log.gz" OR _sourceName="mongos-audit-log.gz")
| json "atype", "local.ip", "remote.ip", "users","result", "project_id", "hostname", "cluster_name" as atype, local_ip, remote_ip, users, result, project_id, hostname, cluster_name
```

**MongoDB Atlas 6/MongoDB Atlas - Audit/Failed Audit Events**
```
_sourceCategory={{Logsdatasource}}  AND (_sourceName="mongodb-audit-log.gz" OR _sourceName="mongos-audit-log.gz")
| json "atype", "local.ip", "remote.ip", "users","result", "project_id", "hostname", "cluster_name" as atype, local_ip, remote_ip, users, result, project_id, hostname, cluster_name
```

**MongoDB Atlas 6/MongoDB Atlas - Audit/Failed Authentications**
```
_sourceCategory={{Logsdatasource}}  AND (_sourceName="mongodb-audit-log.gz" OR _sourceName="mongos-audit-log.gz")
| json "atype", "local.ip", "remote.ip", "users","result", "project_id", "hostname", "cluster_name" as atype, local_ip, remote_ip, users, result, project_id, hostname, cluster_name
```

**MongoDB Atlas 6/MongoDB Atlas - Audit/Failed Authorizations**
```
_sourceCategory={{Logsdatasource}}  AND (_sourceName="mongodb-audit-log.gz" OR _sourceName="mongos-audit-log.gz")
| json "atype", "local.ip", "remote.ip", "users","result", "project_id", "hostname", "cluster_name" as atype, local_ip, remote_ip, users, result, project_id, hostname, cluster_name
```

**MongoDB Atlas 6/MongoDB Atlas - Audit/Recent Audit Events**
```
_sourceCategory={{Logsdatasource}}  AND (_sourceName="mongodb-audit-log.gz" OR _sourceName="mongos-audit-log.gz")
| json "atype", "local.ip", "remote.ip", "users","result", "project_id", "hostname", "cluster_name", "param" as atype, local_ip, remote_ip, users, result, project_id, hostname, cluster_name, param
| json field=param "db", "ns" as database1, database2 nodrop
| parse field=database2 "*.*" as database2, collection nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Audit/Write Operations**
```
_sourceCategory={{Logsdatasource}}  AND (_sourceName="mongodb-audit-log.gz" OR _sourceName="mongos-audit-log.gz")
| json "atype", "local.ip", "remote.ip", "users","result", "project_id", "hostname", "cluster_name", "param.ns", "param.command" as atype, local_ip, remote_ip, users, result, project_id, hostname, cluster_name, namespace, command
| parse regex field=users "\"user\":\"(?<user>.*?)\"" multi nodrop
| parse field=namespace "*.*" as database, collection
```

**MongoDB Atlas 6/MongoDB Atlas - Errors and Warnings/Error Messages with Low Severity**
```
_sourceCategory={{Logsdatasource}}  
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx" as severity,timestamp,component,context
```

**MongoDB Atlas 6/MongoDB Atlas - Errors and Warnings/Errors**
```
_sourceCategory={{Logsdatasource}}  
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx" as severity,timestamp,component,context
```

**MongoDB Atlas 6/MongoDB Atlas - Errors and Warnings/Errors - Time Compare**
```
_sourceCategory={{Logsdatasource}}  
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx" as severity,timestamp,component,context
```

**MongoDB Atlas 6/MongoDB Atlas - Errors and Warnings/Errors by Component**
```
_sourceCategory={{Logsdatasource}}  
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx" as severity,timestamp,component,context
```

**MongoDB Atlas 6/MongoDB Atlas - Errors and Warnings/Hosts  by Errors and Warnings**
```
_sourceCategory={{Logsdatasource}}  
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx" as severity,timestamp,component,context
```

**MongoDB Atlas 6/MongoDB Atlas - Errors and Warnings/Messages  with High Severity**
```
_sourceCategory={{Logsdatasource}}  
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx" as severity,timestamp,component,context
```

**MongoDB Atlas 6/MongoDB Atlas - Errors and Warnings/MongoDB Exit Events**
```
_sourceCategory={{Logsdatasource}}  (dbexit OR shutdown OR "shutting down")
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.exitCode" as severity,timestamp,component,context,code
| lookup desc  as error_description from https://s3.amazonaws.com/sumologic-app-data/mongo_exit_codes.csv on code=code
```

**MongoDB Atlas 6/MongoDB Atlas - Errors and Warnings/Socket Excpetions**
```
_sourceCategory={{Logsdatasource}}  ("socket exception" or exception or "SocketException")
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx" as severity,timestamp,component,context
```

**MongoDB Atlas 6/MongoDB Atlas - Errors and Warnings/Timeout Events**
```
_sourceCategory={{Logsdatasource}}  (Timeout or timeout) not ("SocketException")
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx" as severity,timestamp,component,context
```

**MongoDB Atlas 6/MongoDB Atlas - Errors and Warnings/Warnings**
```
_sourceCategory={{Logsdatasource}}  
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx" as severity,timestamp,component,context
```

**MongoDB Atlas 6/MongoDB Atlas - Errors and Warnings/Warnings by Component**
```
_sourceCategory={{Logsdatasource}}  
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx" as severity,timestamp,component,context
```

**MongoDB Atlas 6/MongoDB Atlas - Events/Cluster Ready Events**
```
_sourceCategory={{Logsdatasource}}  and (_sourceName=events OR _sourceName=orgevents)
| json "id", "groupId", "orgId", "eventTypeName", "metricName", "links", "hostname", "port", "replicaSetName", "created", "username", "remoteAddress" as id, project_id, org_id, eventTypeName, metricName, links, hostname, port, replicaSetName, created, username, remoteAddress nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Events/Events by Location**
```
_sourceCategory={{Logsdatasource}}  and (_sourceName=events OR _sourceName=orgevents)
| json "id", "groupId", "orgId", "eventTypeName", "metricName", "links", "hostname", "port", "created", "username", "remoteAddress" as id, project_id, org_id, eventTypeName, metricName, links, hostname, port, created, username, remoteAddress nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Events/Events by User Name**
```
_sourceCategory={{Logsdatasource}}  and (_sourceName=events OR _sourceName=orgevents)
| json "id", "groupId", "orgId", "eventTypeName", "metricName", "links", "hostname", "port", "replicaSetName", "created", "username", "remoteAddress" as id, project_id, org_id, eventTypeName, metricName, links, hostname, port, replicaSetName, created, username, remoteAddress nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Events/Events Distribution by type**
```
_sourceCategory={{Logsdatasource}}  and (_sourceName=events OR _sourceName=orgevents)
| json "id", "groupId", "orgId", "eventTypeName", "metricName", "links", "hostname", "port", "replicaSetName", "created", "username", "remoteAddress" as id, project_id, org_id, eventTypeName, metricName, links, hostname, port, replicaSetName, created, username, remoteAddress nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Events/Last 3 Cluster Events**
```
_sourceCategory={{Logsdatasource}}  and (_sourceName=events OR _sourceName=orgevents)
| json "id", "groupId", "orgId", "eventTypeName", "metricName", "links", "hostname","clusterName", "port", "replicaSetName", "created", "username", "remoteAddress" as id, project_id, org_id, eventTypeName, metricName, links, hostname,cluster_name, port, replicaSetName, created, username, remoteAddress nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Events/Last 3 Host Events**
```
_sourceCategory={{Logsdatasource}}  and (_sourceName=events OR _sourceName=orgevents)
| json "id", "groupId", "orgId", "eventTypeName", "metricName", "links", "hostname", "port", "replicaSetName", "created", "username", "remoteAddress" as id, project_id, org_id, eventTypeName, metricName, links, hostname, port, replicaSetName, created, username, remoteAddress nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Events/MongoDB User Updated Events**
```
_sourceCategory={{Logsdatasource}}  and (_sourceName=events OR _sourceName=orgevents)
| json "id", "groupId", "orgId", "eventTypeName", "metricName", "links", "hostname", "port", "replicaSetName", "created", "username", "remoteAddress" as id, project_id, org_id, eventTypeName, metricName, links, hostname, port, replicaSetName, created, username, remoteAddress nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Events/Project Events**
```
_sourceCategory={{Logsdatasource}}  and (_sourceName=events OR _sourceName=orgevents)
| json "id", "groupId", "orgId", "eventTypeName", "metricName", "links", "hostname", "port", "replicaSetName", "created", "username", "remoteAddress" as id, project_id, org_id, eventTypeName, metricName, links, hostname, port, replicaSetName, created, username, remoteAddress nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Events/Recent Events**
```
_sourceCategory={{Logsdatasource}}  and (_sourceName=events OR _sourceName=orgevents)
| json "id", "groupId", "orgId", "eventTypeName", "metricName", "links", "hostname", "port", "created", "username", "remoteAddress" as id, project_id, org_id, eventTypeName, metricName, links, hostname, port,created, username, remoteAddress nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Events/Total Events**
```
_sourceCategory={{Logsdatasource}}  and (_sourceName=events OR _sourceName=orgevents)
| json "id", "groupId", "orgId", "eventTypeName", "metricName", "links", "hostname", "port", "replicaSetName", "created", "username", "remoteAddress" as id, project_id, org_id, eventTypeName, metricName, links, hostname, port, replicaSetName, created, username, remoteAddress nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Logins and Connections/Failed Login Attempt Summary**
```
_sourceCategory={{Logsdatasource}}  "authentication failed"
| json "t.$date","s","c","ctx","attr.authenticationDatabase","attr.remote","attr.principalName","attr.error" as timestamp,severity,component,context,database,client_ip,user,reason
| substring(client_ip,0,15) as client_ip
| json "msg","project_id","hostname","cluster_name"
```

**MongoDB Atlas 6/MongoDB Atlas - Logins and Connections/Location of Client Connection Requests**
```
_sourceCategory={{Logsdatasource}}  ("connection accepted" and NETWORK) 
| json "t.$date","s","c","ctx","attr.remote" as timestamp,severity,component,context,client_ip
| json "msg","project_id","hostname","cluster_name"
| parse regex field=client_ip "(?<client_ip>(?<=).*(?=:))"
```

**MongoDB Atlas 6/MongoDB Atlas - Logins and Connections/Location of Failed Logins**
```
_sourceCategory={{Logsdatasource}}  "authentication failed"
| json "t.$date","s","c","ctx","attr.authenticationDatabase","attr.remote","attr.principalName","attr.error" as timestamp,severity,component,context,database,client_ip,user,reason
| parse regex field=client_ip "(?<client_ip>(?<=).*(?=:))"
| json "msg","project_id","hostname","cluster_name" 
```

**MongoDB Atlas 6/MongoDB Atlas - Logins and Connections/Logins from Malicious Remote IP**
```
_sourceCategory={{Logsdatasource}}  AND (_sourceName="mongodb-audit-log.gz" OR _sourceName="mongos-audit-log.gz")
| json "atype", "local.ip", "remote.ip", "users", "result", "project_id", "hostname", "cluster_name" as atype, local_ip, remote_ip, users, result, project_id, hostname, cluster_name
| timeslice 1h
| count by remote_ip
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=remote_ip
| where type="ip_address" and malicious_confidence ="high"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Logins and Connections/Threat Intel by Remote IP**
```
_sourceCategory={{Logsdatasource}}  AND (_sourceName="mongodb-audit-log.gz" OR _sourceName="mongos-audit-log.gz")
| json "atype", "local.ip", "remote.ip", "users", "result", "project_id", "hostname", "cluster_name" as atype, local_ip, remote_ip, users, result, project_id, hostname, cluster_name
| timeslice 1h
| count by remote_ip
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=remote_ip
| where type="ip_address" and malicious_confidence ="high"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Logins and Connections/Threat Intel Outlier by Remote IP**
```
_sourceCategory={{Logsdatasource}}  AND (_sourceName="mongodb-audit-log.gz" OR _sourceName="mongos-audit-log.gz")| json "atype", "local.ip", "remote.ip", "users","result", "project_id", "hostname", "cluster_name" as atype, local_ip, remote_ip, users, result, project_id, hostname, cluster_name
| timeslice 1h
| count by _timeslice, remote_ip
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=remote_ip
| where type="ip_address" and malicious_confidence ="high"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Logins and Connections/Unreachable Nodes**
```
_sourceCategory={{Logsdatasource}}  (NETWORK OR ASIO) (reach OR connect)
| json "t.$date","s","c","ctx","attr.error.codeName","attr.error.errmsg" as timestamp,severity,component,context,errorName,errorMessage
| json "msg","project_id","hostname","cluster_name"
| where (component matches "*NETWORK*" or component matches "*ASIO*") and (errorName matches "*HostUnreachable*")
| hostname as from_node
| parse regex field=errorMessage "(?<dest_node>(?<=server ).*(?=,))" nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Overview/Average Query Duration by Namespace**
```
_sourceCategory={{Logsdatasource}}  COMMAND
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.command.$db","attr.durationMillis","attr.ns" as severity,timestamp,component,context,database,duration,namespace
```

**MongoDB Atlas 6/MongoDB Atlas - Overview/Errors**
```
_sourceCategory={{Logsdatasource}}  
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx" as severity,timestamp,component,context
```

**MongoDB Atlas 6/MongoDB Atlas - Overview/Failed Audit Events**
```
_sourceCategory={{Logsdatasource}}  AND (_sourceName="mongodb-audit-log.gz" OR _sourceName="mongos-audit-log.gz")
| json "atype", "local.ip", "remote.ip", "users","result", "project_id", "hostname", "cluster_name" as atype, local_ip, remote_ip, users, result, project_id, hostname, cluster_name
```

**MongoDB Atlas 6/MongoDB Atlas - Overview/Failed Logins**
```
_sourceCategory={{Logsdatasource}}  "authentication failed"
| json "t.$date","s","c","ctx","attr.authenticationDatabase","attr.remote","attr.principalName","attr.error" as timestamp,severity,component,context,database,client_ip,user,reason
```

**MongoDB Atlas 6/MongoDB Atlas - Overview/Last 3 Errors by Hostname**
```
_sourceCategory={{Logsdatasource}}  
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx" as severity,timestamp,component,context
```

**MongoDB Atlas 6/MongoDB Atlas - Overview/Messages by Severity**
```
_sourceCategory={{Logsdatasource}}  
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx" as severity,timestamp,component,context
```

**MongoDB Atlas 6/MongoDB Atlas - Overview/Number of CRUD Commands Over Time**
```
_sourceCategory={{Logsdatasource}}  
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.command.$db","attr.durationMillis","attr.command","attr.ns" as severity,timestamp,component,context,database,duration,db_cmd,collection
| where component matches "*COMMAND*"
| parse regex field=db_cmd "(?<crud_operation>^[^:]*)"
| parse regex field=crud_operation "(?<crud_operation>(?<=\").*(?=\"))"
```

**MongoDB Atlas 6/MongoDB Atlas - Overview/Open Alerts**
```
_sourceCategory={{Logsdatasource}}  alertConfigId
| json "id","updated","metricName","status", "groupId","hostnameAndPort","typeName","replicaSetName","links","clusterName" as id,updated,metricName,status, project_id,hostnameAndPort,typeName,replicaSetName,links,cluster_name nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Overview/Recent Alerts**
```
_sourceCategory={{Logsdatasource}}  alertConfigId
| json "id","updated","metricName","status", "groupId","orgId","hostnameAndPort","typeName","replicaSetName","links","clusterName" as id,updated,metricName,status, project_id, org_id, hostnameAndPort,typeName,replicaSetName,links,cluster_name nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Overview/Recent Events**
```
_sourceCategory={{Logsdatasource}}  and (_sourceName=events OR _sourceName=orgevents)
| json "id", "groupId", "orgId", "eventTypeName", "metricName", "links", "hostname", "port", "created", "username", "remoteAddress" as id, project_id, org_id, eventTypeName, metricName, links, hostname, port,created, username, remoteAddress nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Overview/Running Servers**
```
_sourceCategory={{Logsdatasource}}  ("dbexit") or  ( "] waiting for connections on port") or ("transition to" or "Transition to") 
| json "t.$date","s","c","ctx" as timestamp,severity,component,context
| json "msg","project_id","hostname","cluster_name"
```

**MongoDB Atlas 6/MongoDB Atlas - Overview/Slow Queries**
```
_sourceCategory={{Logsdatasource}}  "Slow query"
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.command.$db","attr.durationMillis" as severity,timestamp,component,context,database,duration
```

**MongoDB Atlas 6/MongoDB Atlas - Overview/Stopped Servers**
```
_sourceCategory={{Logsdatasource}}  ("dbexit" or  ( "] waiting for connections on port") or "transition to") 
| json "t.$date","s","c","ctx" as timestamp,severity,component,context
| json "msg","project_id","hostname","cluster_name"
```

**MongoDB Atlas 6/MongoDB Atlas - Overview/Unreachable Nodes**
```
_sourceCategory={{Logsdatasource}}  (NETWORK OR ASIO) (reach OR connect)
| json "t.$date","s","c","ctx","attr.error.codeName","attr.error.errmsg" as timestamp,severity,component,context,errorName,errorMessage
| json "msg","project_id","hostname","cluster_name"
| where (component matches "*NETWORK*" or component matches "*ASIO*") and (errorName matches "*HostUnreachable*")
| hostname as from_node
| parse regex field=errorMessage "(?<dest_node>(?<=server ).*(?=,))" nodrop
```

**MongoDB Atlas 6/MongoDB Atlas - Replication/Heartbeat Error Events**
```
_sourceCategory={{Logsdatasource}}  *Heartbeat* *fail*
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx" as severity,timestamp,component,context
```

**MongoDB Atlas 6/MongoDB Atlas - Replication/Primary Node**
```
_sourceCategory={{Logsdatasource}}  REPL 
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.primary" as severity,timestamp,component,context,primary_node
```

**MongoDB Atlas 6/MongoDB Atlas - Replication/Replication Error Summary**
```
_sourceCategory={{Logsdatasource}}  REPL (error* OR fail* OR exception)
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx" as severity,timestamp,component,context
```

**MongoDB Atlas 6/MongoDB Atlas - Replication/Replication Errors**
```
_sourceCategory={{Logsdatasource}}  REPL (error* OR fail* OR exception)
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx" as severity,timestamp,component,context
```

**MongoDB Atlas 6/MongoDB Atlas - Replication/Replication Events**
```
_sourceCategory={{Logsdatasource}}  and REPL
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx" as severity,timestamp,component,context
```

**MongoDB Atlas 6/MongoDB Atlas - Replication/Replication Warnings**
```
_sourceCategory={{Logsdatasource}}  REPL
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx" as severity,timestamp,component,context
```

**MongoDB Atlas 6/MongoDB Atlas - Replication/Secondary Node(s)**
```
_sourceCategory={{Logsdatasource}}  is in state
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.hostAndPort","attr.newState" as severity,timestamp,component,context,hostaddressport,state
| parse regex field=hostaddressport "(?<host_name>^.*(?=:))"
```

**MongoDB Atlas 6/MongoDB Atlas - Sharding/Balancer Failures**
```
_sourceCategory={{Logsdatasource}}  SHARDING and (error* or fail* or exception*) BALANCER
| json "t.$date","s","c","ctx" as timestamp,severity,component,context
| json "msg","project_id","hostname","cluster_name"
```

**MongoDB Atlas 6/MongoDB Atlas - Sharding/Chunk Split by Shard and Collection**
```
_sourceCategory={{Logsdatasource}}  *split* *chunk* 
| json "msg","hostname","project_id","cluster_name" 
| json "s","t.$date","c","ctx","attr.splitPoint","attr.namespace","attr.shardId" as severity,timestamp,component,context,chunkSplitPoint,collection,shard
```

**MongoDB Atlas 6/MongoDB Atlas - Sharding/Chunks Moving Between Shards**
```
_sourceCategory={{Logsdatasource}}  moveChunk
| json field=_raw "attr.event.ns"
| json "t.$date","s","c","ctx","attr.event.details.from","attr.event.details.to","attr.event.ns" as timestamp,severity,component,context,fromShard,toShard,collection
| json "msg","project_id","hostname","cluster_name"
```

**MongoDB Atlas 6/MongoDB Atlas - Sharding/Chunks Moving by Collection**
```
_sourceCategory={{Logsdatasource}}  *move* *Chunk*
| json field=_raw "attr.event.ns"
| json "t.$date","s","c","ctx","attr.event.details.from","attr.event.details.to","attr.event.ns" as timestamp,severity,component,context,fromShard,toShard,collection
| json "msg","project_id","hostname","cluster_name"
```

**MongoDB Atlas 6/MongoDB Atlas - Sharding/Errors**
```
_sourceCategory={{Logsdatasource}}  SHARDING
| json "t.$date","s","c","ctx" as timestamp,severity,component,context
| json "msg","project_id","hostname","cluster_name"
```

**MongoDB Atlas 6/MongoDB Atlas - Sharding/Summary of Errors**
```
_sourceCategory={{Logsdatasource}}  SHARDING (error or fail or exception)
| json "t.$date","s","c","ctx" as timestamp,severity,component,context
| json "msg","project_id","hostname","cluster_name"
```

**MongoDB Atlas 6/MongoDB Atlas - Sharding/Summary of Warnings**
```
_sourceCategory={{Logsdatasource}}  SHARDING 
| json "t.$date","s","c","ctx" as timestamp,severity,component,context
| json "msg","project_id","hostname","cluster_name"
```

**MongoDB Atlas 6/MongoDB Atlas - Sharding/Warnings**
```
_sourceCategory={{Logsdatasource}}  SHARDING
| json "t.$date","s","c","ctx" as timestamp,severity,component,context
| json "msg","project_id","hostname","cluster_name"
```


