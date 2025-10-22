# Parsers For Couchbase

**Couchbase/Errors/Buckets Not Ready**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase" "buckets became not ready on node" "error"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
|replace (_raw,/\s+/," ") as _raw
| parse regex "\'\S+@(?<node>\S+)\'\:\s+\[(?<buckets>.+)\]," | parse regex field=buckets "\"(?<bucket>[^,]+)\"" multi
| parse regex "ns_server:error,(?<time>\S+)," | _raw as msg
```

**Couchbase/Errors/Error Queries**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase" ("ERROR" or "Error")
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "_time=(?<time>\S+)"
| parse regex "_msg=(?<msg>.+)"
| parse regex field=msg "Keyspace\s\w+:(?<bucket>.+)\."
| parse regex field=msg "Failed to perform (?<method>\w+)"
```

**Couchbase/Errors/Last 100 Error Logs**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase" "ns_server:error" 
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
|replace (_raw,/\s+/," ") as _raw
| parse regex "ns_server:error,(?<time>\S+),"|_raw as msg | limit 100 | count by time,msg | sort by time | fields time,msg
```

**Couchbase/Errors/Node Down**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase" "error" "nodedown"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
|replace (_raw,/\s+/," ") as _raw
|parse regex "nodedown,\s'\S+@(?<node>\S+)\'"
| parse regex "ns_server:error,(?<time>\S+),"|_raw as msg | count by time,node,msg | limit 100 | fields time,node,msg
```

**Couchbase/Errors/Nodes Not Respond**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase" "error" "Some nodes didn't respond" 
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
|replace (_raw,/\s+/," ") as _raw
| parse regex "stats:error,(?<time>\S+),"
| parse regex "Some nodes didn't respond: \[(?<temp_nodes>.+)\]" | parse regex field=temp_nodes "\'(?<node_temp>[^,]+)\'" multi | parse regex field=node_temp "@(?<node>.+)"| _raw as msg | count by time,node,msg| limit 100|sort by time|fields time,node,msg 
```

**Couchbase/Events/Bucket Selected Events**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase" "select bucket"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| json "name" as event_name
| where event_name matches "select bucket"
| json "bucket"
```

**Couchbase/Events/Delete Bucket Events**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase" "bucket"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| json "name" as event_name
| where event_name matches "*bucket*"
| json "timestamp" as time
| json "description" as description
| json "bucket_name" as bucket_name
| json "real_userid.user" as action_by_user
```

**Couchbase/Events/Group Events**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase" "group"
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

**Couchbase/Events/Login Failure on Management Portal**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase" "login failure"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| json "name" as event_name
| where event_name="login failure"
| json "remote.ip" as client_ip 
| json "local.ip" as couchbase_server
```

**Couchbase/Events/Login Success on Management Portal**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase" "login success"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| json "name" as event_name
| where event_name="login success"
| json "remote.ip" as client_ip 
| json "local.ip" as couchbase_server
| json "real_userid.user" as user
```

**Couchbase/Events/Rebalance Events**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase" "rebalance"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| json "name" as event_name
| where event_name matches "*rebalance*"
| json "timestamp" as time
| json "description" as description
```

**Couchbase/Events/Remove Node Events**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase" "node"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| json "name" as event_name
| where event_name matches "*node*"
| json "timestamp" as time
| json "description" as description | json "hostname" as node_name
```

**Couchbase/Events/User Events**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase" "user"
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

**Couchbase/HTTP Access/Average Latency of All HTTP Requests**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```

**Couchbase/HTTP Access/HTTP Method**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```

**Couchbase/HTTP Access/HTTP Response Code**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```

**Couchbase/HTTP Access/Last 10 Logs for HTTP Access**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase" 
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"| limit 10 |_raw as message
```

**Couchbase/HTTP Access/Top 10 Client Agent Accessed**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```

**Couchbase/HTTP Access/Top 10 IP Client Accessed**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```

**Couchbase/HTTP Access/Top 10 Username Accessed**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```

**Couchbase/HTTP Access/URLs Experiencing with 4XX Response Code**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```

**Couchbase/HTTP Access/URLs Experiencing with 5XX Response Code**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```

**Couchbase/Overview/Last 10 Error Queries**
```
_sourceCategory = *couchbase* db_cluster={{db_cluster}} db_system="couchbase" ("ERROR" or "Error")
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse regex "_time=(?<time>\S+)"
| parse regex "_msg=(?<msg>.+)"
| parse regex field=msg "Keyspace\s\w+:(?<bucket>.+)\."
```


