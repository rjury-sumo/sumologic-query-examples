# Parsers For Couchbase - OpenTelemetry

**Couchbase - OpenTelemetry/Couchbase - Errors/Buckets Not Ready**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase" "buckets became not ready on node" "error"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
|replace (_raw,/\s+/," ") as _raw
| parse regex "\'\S+@(?<node>\S+)\'\:\s+\[(?<buckets>.+)\]," | parse regex field=buckets "\"(?<bucket>[^,]+)\"" multi
| parse regex "ns_server:error,(?<time>\S+)," | _raw as msg
```

**Couchbase - OpenTelemetry/Couchbase - Errors/Error Queries**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase" ("ERROR" or "Error")
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "_time=(?<time>\S+)"
| parse regex "_msg=(?<msg>.+)"
| parse regex field=msg "Keyspace\s\w+:(?<bucket>.+)\."
| parse regex field=msg "Failed to perform (?<method>\w+)"
```

**Couchbase - OpenTelemetry/Couchbase - Errors/Last 100 Error Logs**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase" "ns_server:error" 
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
|replace (_raw,/\s+/," ") as _raw
| parse regex "ns_server:error,(?<time>\S+),"|_raw as msg  | count by time,msg | sort by time | limit 100| fields time,msg
```

**Couchbase - OpenTelemetry/Couchbase - Errors/Node Down**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase" "error" "nodedown"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
|replace (_raw,/\s+/," ") as _raw
|parse regex "nodedown,\s'\S+@(?<node>\S+)\'"
| parse regex "ns_server:error,(?<time>\S+),"|_raw as msg | count by time,node,msg| sort by time | limit 100 | fields time,node,msg
```

**Couchbase - OpenTelemetry/Couchbase - Errors/Nodes Not Respond**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase" "error" "Some nodes didn't respond" 
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
|replace (_raw,/\s+/," ") as _raw
| parse regex "stats:error,(?<time>\S+),"
| parse regex "Some nodes didn't respond: \[(?<temp_nodes>.+)\]" | parse regex field=temp_nodes "\'(?<node_temp>[^,]+)\'" multi | parse regex field=node_temp "@(?<node>.+)"| _raw as msg | count by time,node,msg|sort by time| limit 100|fields time,node,msg 
```

**Couchbase - OpenTelemetry/Couchbase - Events/Bucket Selected Events**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase" "select bucket"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| json "name" as event_name
| where event_name matches "select bucket"
| json "bucket"
```

**Couchbase - OpenTelemetry/Couchbase - Events/Delete Bucket Events**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase" "bucket"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| json "name" as event_name
| where event_name matches "*bucket*"
| json "timestamp" as time
| json "description" as description
| json "bucket_name" as bucket_name
| json "real_userid.user" as action_by_user
```

**Couchbase - OpenTelemetry/Couchbase - Events/Group Events**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase" "group"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| json "name" as event_name
| where event_name matches "*group*"
| where event_name matches /set user group|delete user group/
| json "timestamp" as time
| json "description" as description
| json "group_name" as group_name
| json "real_userid.user" as action_by_user
```

**Couchbase - OpenTelemetry/Couchbase - Events/Login Failure on Management Portal**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase" "login failure"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| json "name" as event_name
| where event_name="login failure"
| json "remote.ip" as client_ip 
| json "local.ip" as couchbase_server
```

**Couchbase - OpenTelemetry/Couchbase - Events/Login Success on Management Portal**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase" "login success"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| json "name" as event_name
| where event_name="login success"
| json "remote.ip" as client_ip 
| json "local.ip" as couchbase_server
| json "real_userid.user" as user
```

**Couchbase - OpenTelemetry/Couchbase - Events/Rebalance Events**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase" "rebalance"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| json "name" as event_name
| where event_name matches "*rebalance*"
| json "timestamp" as time
| json "description" as description
```

**Couchbase - OpenTelemetry/Couchbase - Events/Remove Node Events**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase" "node"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| json "name" as event_name
| where event_name matches "*node*"
| json "timestamp" as time
| json "description" as description | json "hostname" as node_name
```

**Couchbase - OpenTelemetry/Couchbase - Events/User Events**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase" "user"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| json "name" as event_name
| where event_name matches "*user*"
| json "remote.ip" as src_ip 
| json "local.ip" as couchbase_server
| json "timestamp" as time
|json "identity.user" as username
| json "description" as description
```

**Couchbase - OpenTelemetry/Couchbase - HTTP Access/Average Latency of All HTTP Requests**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```

**Couchbase - OpenTelemetry/Couchbase - HTTP Access/HTTP Method**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```

**Couchbase - OpenTelemetry/Couchbase - HTTP Access/HTTP Response Code**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```

**Couchbase - OpenTelemetry/Couchbase - HTTP Access/Last 10 Logs for HTTP Access**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase" 
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)" |_raw as message
```

**Couchbase - OpenTelemetry/Couchbase - HTTP Access/Top 10 client IP addresses**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```

**Couchbase - OpenTelemetry/Couchbase - HTTP Access/Top 10 User Agent Accessed**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```

**Couchbase - OpenTelemetry/Couchbase - HTTP Access/Top 10 Username Accessed**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```

**Couchbase - OpenTelemetry/Couchbase - HTTP Access/Top URLs with 4XX response codes**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```

**Couchbase - OpenTelemetry/Couchbase - HTTP Access/Top URLs with 5XX response codes**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```

**Couchbase - OpenTelemetry/Couchbase - Overview/Average Latency of All HTTP Requests**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```

**Couchbase - OpenTelemetry/Couchbase - Overview/HTTP Response Code**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```

**Couchbase - OpenTelemetry/Couchbase - Overview/Last 10 Error Queries**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase" ("ERROR" or "Error")
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "_time=(?<time>\S+)"
| parse regex "_msg=(?<msg>.+)"
| parse regex field=msg "Keyspace\s\w+:(?<bucket>.+)\."
```

**Couchbase - OpenTelemetry/Couchbase - Overview/Last 100 Error Logs**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase" "ns_server:error" 
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
|replace (_raw,/\s+/," ") as _raw
| parse regex "ns_server:error,(?<time>\S+),"|_raw as msg  | count by time,msg | sort by time | limit 100| fields time,msg
```

**Couchbase - OpenTelemetry/Couchbase - Overview/URLs Experiencing with 5XX Response Code**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource="couchbase"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```


