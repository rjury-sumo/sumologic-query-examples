# Parsers For Couchbase - OpenTelemetry

## Parser:
```
| json "log" as _rawlog nodrop
| json "name" as event_name
| json "bucket"
```
### Use Cases:
Bucket Selected Events, Buckets Not Ready, Create/Delete Bucket Events, Error Queries, Group Events, Last 100 Error Logs, Login Success on Management Portal, Node Down, Nodes Not Respond, User Events



## Parser:
```
| json "log" as _rawlog nodrop
| json "name" as event_name
| json "remote.ip" as client_ip 
| json "local.ip" as couchbase_server
```
### Use Cases:
Add/Remove Node Events, Bucket Selected Events, Buckets Not Ready, Create/Delete Bucket Events, Error Queries, Group Events, Last 100 Error Logs, Login Failure on Management Portal, Login Success on Management Portal, Node Down, Nodes Not Respond, Rebalance Events, User Events



## Parser:
```
| json "log" as _rawlog nodrop
| json "name" as event_name
| json "remote.ip" as client_ip 
| json "local.ip" as couchbase_server
| json "real_userid.user" as user
```
### Use Cases:
Buckets Not Ready, Create/Delete Bucket Events, Error Queries, Group Events, Last 100 Error Logs, Login Success on Management Portal, Node Down, Nodes Not Respond, User Events



## Parser:
```
| json "log" as _rawlog nodrop
| json "name" as event_name
| json "remote.ip" as src_ip 
| json "local.ip" as couchbase_server
| json "timestamp" as time
| json "description" as description
```
### Use Cases:
Buckets Not Ready, Error Queries, Last 100 Error Logs, Node Down, Nodes Not Respond, User Events



## Parser:
```
| json "log" as _rawlog nodrop
| json "name" as event_name
| json "timestamp" as time
| json "description" as description
```
### Use Cases:
Add/Remove Node Events, Bucket Selected Events, Buckets Not Ready, Create/Delete Bucket Events, Error Queries, Group Events, Last 100 Error Logs, Login Success on Management Portal, Node Down, Nodes Not Respond, Rebalance Events, User Events



## Parser:
```
| json "log" as _rawlog nodrop
| json "name" as event_name
| json "timestamp" as time
| json "description" as description
| json "bucket_name" as bucket_name
| json "real_userid.user" as action_by_user
```
### Use Cases:
Buckets Not Ready, Create/Delete Bucket Events, Error Queries, Last 100 Error Logs, Node Down, Nodes Not Respond, User Events



## Parser:
```
| json "log" as _rawlog nodrop
| json "name" as event_name
| json "timestamp" as time
| json "description" as description
| json "group_name" as group_name
| json "real_userid.user" as action_by_user
```
### Use Cases:
Buckets Not Ready, Create/Delete Bucket Events, Error Queries, Group Events, Last 100 Error Logs, Node Down, Nodes Not Respond, User Events



## Parser:
```
| json "log" as _rawlog nodrop
| json "name" as event_name
| json "timestamp" as time
| json "description" as description | json "hostname" as node_name
```
### Use Cases:
Add/Remove Node Events, Bucket Selected Events, Buckets Not Ready, Create/Delete Bucket Events, Error Queries, Group Events, Last 100 Error Logs, Login Success on Management Portal, Node Down, Nodes Not Respond, User Events



## Parser:
```
| json "log" as _rawlog nodrop
| parse regex "_time=(?<time>\S+)"
| parse regex "_msg=(?<msg>.+)"
| parse regex field=msg "Keyspace\s\w+:(?<bucket>.+)\."
```
### Use Cases:
Add/Remove Node Events, Average Latency of All HTTP Requests, Bucket Selected Events, Buckets Not Ready, Create/Delete Bucket Events, Error Queries, Group Events, HTTP Method, HTTP Response Code, Last 10 Error Queries, Last 10 Logs for HTTP Access, Last 100 Error Logs, Login Failure on Management Portal, Login Success on Management Portal, Node Down, Nodes Not Respond, Rebalance Events, Top 10 client IP addresses, Top 10 User Agent Accessed, Top 10 Username Accessed, Top URLs with 4XX response codes, Top URLs with 5XX response codes, URLs Experiencing with 5XX Response Code, User Events



## Parser:
```
| json "log" as _rawlog nodrop
| parse regex "_time=(?<time>\S+)"
| parse regex "_msg=(?<msg>.+)"
| parse regex field=msg "Keyspace\s\w+:(?<bucket>.+)\."
| parse regex field=msg "Failed to perform (?<method>\w+)"
```
### Use Cases:
Error Queries, Last 100 Error Logs, Node Down, Nodes Not Respond



## Parser:
```
| json "log" as _rawlog nodrop
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)"
```
### Use Cases:
Add/Remove Node Events, Average Latency of All HTTP Requests, Bucket Selected Events, Buckets Not Ready, Create/Delete Bucket Events, Error Queries, Group Events, HTTP Method, HTTP Response Code, Last 10 Error Queries, Last 10 Logs for HTTP Access, Last 100 Error Logs, Login Failure on Management Portal, Login Success on Management Portal, Node Down, Nodes Not Respond, Rebalance Events, Top 10 client IP addresses, Top 10 User Agent Accessed, Top 10 Username Accessed, Top URLs with 4XX response codes, Top URLs with 5XX response codes, URLs Experiencing with 5XX Response Code, User Events



## Parser:
```
| json "log" as _rawlog nodrop
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+\-\s+(?<username>\S+)\s+\[(?<time>.+)\]\s+\"(?:(?<method>\w+)\s+(?<path>\S+)\sHTTP\/1.1)\"\s+(?<code>\d+)\s(?<bytes>\d+)\s(?<origin_url>\S+) \"(?<agent>.+)\"\s(?<latency>\d+)" |_raw as message
```
### Use Cases:
Add/Remove Node Events, Average Latency of All HTTP Requests, Bucket Selected Events, Buckets Not Ready, Create/Delete Bucket Events, Error Queries, Group Events, HTTP Response Code, Last 10 Logs for HTTP Access, Last 100 Error Logs, Login Failure on Management Portal, Login Success on Management Portal, Node Down, Nodes Not Respond, Rebalance Events, Top 10 client IP addresses, Top URLs with 5XX response codes, User Events



## Parser:
```
| json "log" as _rawlog nodrop
| parse regex "\'\S+@(?<node>\S+)\'\:\s+\[(?<buckets>.+)\]," | parse regex field=buckets "\"(?<bucket>[^,]+)\"" multi
| parse regex "ns_server:error,(?<time>\S+)," | _raw as msg
```
### Use Cases:
Buckets Not Ready, Error Queries, Last 100 Error Logs, Node Down, Nodes Not Respond



## Parser:
```
| json "log" as _rawlog nodrop
| parse regex "ns_server:error,(?<time>\S+),"|_raw as msg  | count by time,msg | sort by time | limit 100| fields time,msg
```
### Use Cases:
Add/Remove Node Events, Average Latency of All HTTP Requests, Bucket Selected Events, Buckets Not Ready, Create/Delete Bucket Events, Error Queries, Group Events, HTTP Method, HTTP Response Code, Last 10 Error Queries, Last 10 Logs for HTTP Access, Last 100 Error Logs, Login Failure on Management Portal, Login Success on Management Portal, Node Down, Nodes Not Respond, Rebalance Events, Top 10 client IP addresses, Top 10 User Agent Accessed, Top 10 Username Accessed, Top URLs with 4XX response codes, Top URLs with 5XX response codes, URLs Experiencing with 5XX Response Code, User Events



## Parser:
```
| json "log" as _rawlog nodrop
| parse regex "ns_server:error,(?<time>\S+),"|_raw as msg | count by time,node,msg| sort by time | limit 100 | fields time,node,msg
```
### Use Cases:
Node Down, Nodes Not Respond



## Parser:
```
| json "log" as _rawlog nodrop
| parse regex "stats:error,(?<time>\S+),"
| parse regex "Some nodes didn't respond: \[(?<temp_nodes>.+)\]" | parse regex field=temp_nodes "\'(?<node_temp>[^,]+)\'" multi | parse regex field=node_temp "@(?<node>.+)"| _raw as msg | count by time,node,msg|sort by time| limit 100|```
### Use Cases:
Nodes Not Respond


