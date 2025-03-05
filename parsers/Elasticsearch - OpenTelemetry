# Parsers For Elasticsearch - OpenTelemetry

## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```
### Use Cases:
Avg Young Pause Time, Cluster Health Change Status, Creating Index Over Time, Daily Summary - Index Creation, Daily Summary - Index Deletion, Deleting Index Over Time, Error Logs by Component, Error Logs By Component, Error Mapping Index, Error Summary - Daily, Errors, Exceptions, Failed Login Attempt Summary, Failed Logins by User, Failed Password, Fatal Error Logs By Component, Fatal Error Summary - Daily, Fatal Errors, GC - Real Time, GC - Sys Time, GC - User Time, GC Pause Event, GC Pause Event Min / Max, GC Performance - Percentage Heap Used by Cluster, Heap, JVM Memory Size - Allocated vs Peak (GB), Log Reduce, Login Failed, Login Failed By Host, Logs by Components, Logs by Level, Moving Index Over Time, Node Down, Node Start, Query Hits Over Time, Query Shards Over Time, Rejected Execution Exceptions, Search by Type, Shards Failed, Slow  Queries Over Time, Slow Queries, Slow Queries - Daily, Slow Queries Over Time by Type, Slow Query Total, Slowest Running Queries by Type, Top 10 Host by  GC Time, Total GC Operation Time, Total GC Operations, Total GC Time, Total Pause Time, Total Time GC Causes (Seconds), Total Young Pause Time, Unexpected Error Indexing, Update Mapping Over Time, Updating Replicas Over Time, Warning Logs by Component, Warning Logs By Component, Warning Logs by Component, Warning Summary - Daily, Warning Usage Disk, Warnings



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| json field=_raw "type" as type
```
### Use Cases:
Avg Young Pause Time, Cluster Health Change Status, Creating Index Over Time, Daily Summary - Index Creation, Daily Summary - Index Deletion, Deleting Index Over Time, Error Logs by Component, Error Logs By Component, Error Logs by Component, Error Logs By Component, Error Mapping Index, Error Summary - Daily, Errors, Exceptions, Failed Login Attempt Summary, Failed Logins by User, Failed Password, Fatal Error Logs By Component, Fatal Error Summary - Daily, Fatal Errors, GC - Real Time, GC - Sys Time, GC - User Time, GC Pause Event, GC Pause Event Min / Max, GC Performance - Percentage Heap Used by Cluster, Heap, JVM Memory Size - Allocated vs Peak (GB), Log Reduce, Login Failed, Login Failed By Host, Logs by Components, Logs by Level, Moving Index Over Time, Node Down, Node Start, Query Hits Over Time, Query Shards Over Time, Rejected Execution Exceptions, Search by Type, Shards Failed, Slow  Queries Over Time, Slow Queries, Slow Queries - Daily, Slow Queries Over Time by Type, Slow Query Total, Slowest Running Queries by Type, Top 10 Host by  GC Time, Total GC Operation Time, Total GC Operations, Total GC Time, Total Pause Time, Total Time GC Causes (Seconds), Total Young Pause Time, Unexpected Error Indexing, Update Mapping Over Time, Updating Replicas Over Time, Warning Logs by Component, Warning Logs By Component, Warning Summary - Daily, Warning Usage Disk, Warnings



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| parse field=message "[*] creating index, cause [*], templates [*], *" as index,cause,templates,nextime
```
### Use Cases:
Avg Young Pause Time, Cluster Health Change Status, Creating Index Over Time, Daily Summary - Index Creation, Daily Summary - Index Deletion, Deleting Index Over Time, Error Logs by Component, Error Logs By Component, Error Logs by Component, Error Mapping Index, Error Summary - Daily, Errors, Exceptions, Failed Login Attempt Summary, Failed Logins by User, Failed Password, Fatal Error Logs By Component, Fatal Error Summary - Daily, Fatal Errors, GC - Real Time, GC - Sys Time, GC - User Time, GC Pause Event, GC Pause Event Min / Max, GC Performance - Percentage Heap Used by Cluster, Heap, JVM Memory Size - Allocated vs Peak (GB), Log Reduce, Login Failed, Login Failed By Host, Logs by Components, Logs by Level, Moving Index Over Time, Node Down, Node Start, Query Hits Over Time, Query Shards Over Time, Rejected Execution Exceptions, Search by Type, Shards Failed, Slow  Queries Over Time, Slow Queries, Slow Queries - Daily, Slow Queries Over Time by Type, Slow Query Total, Slowest Running Queries by Type, Top 10 Host by  GC Time, Total GC Operation Time, Total GC Operations, Total GC Time, Total Pause Time, Total Time GC Causes (Seconds), Total Young Pause Time, Unexpected Error Indexing, Update Mapping Over Time, Updating Replicas Over Time, Warning Logs By Component, Warning Logs by Component, Warning Summary - Daily, Warning Usage Disk, Warnings



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| parse regex field=message "\[(?<index>[\S]+)\] deleting index"
```
### Use Cases:
Avg Young Pause Time, Cluster Health Change Status, Creating Index Over Time, Daily Summary - Index Creation, Daily Summary - Index Deletion, Deleting Index Over Time, Error Logs by Component, Error Logs By Component, Error Logs by Component, Error Logs By Component, Error Mapping Index, Error Summary - Daily, Errors, Exceptions, Failed Login Attempt Summary, Failed Logins by User, Failed Password, Fatal Error Logs By Component, Fatal Error Summary - Daily, Fatal Errors, GC - Real Time, GC - Sys Time, GC - User Time, GC Pause Event, GC Pause Event Min / Max, GC Performance - Percentage Heap Used by Cluster, Heap, JVM Memory Size - Allocated vs Peak (GB), Log Reduce, Login Failed, Login Failed By Host, Logs by Components, Logs by Level, Moving Index Over Time, Node Down, Node Start, Query Hits Over Time, Query Shards Over Time, Rejected Execution Exceptions, Search by Type, Shards Failed, Slow  Queries Over Time, Slow Queries, Slow Queries - Daily, Slow Queries Over Time by Type, Slow Query Total, Slowest Running Queries by Type, Top 10 Host by  GC Time, Total GC Operation Time, Total GC Operations, Total GC Time, Total Pause Time, Total Time GC Causes (Seconds), Total Young Pause Time, Unexpected Error Indexing, Update Mapping Over Time, Updating Replicas Over Time, Warning Logs By Component, Warning Logs by Component, Warning Logs By Component, Warning Summary - Daily, Warning Usage Disk, Warnings



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| parse regex field=message "Cluster health status changed from \[(?<last_status>[\S]+)\] to \[(?<curent_status>[\S]+)\]"
```
### Use Cases:
Avg Young Pause Time, Cluster Health Change Status, Creating Index Over Time, Daily Summary - Index Creation, Daily Summary - Index Deletion, Deleting Index Over Time, Error Logs By Component, Error Logs by Component, Error Logs By Component, Error Mapping Index, Error Summary - Daily, Errors, Exceptions, Failed Login Attempt Summary, Failed Logins by User, Failed Password, Fatal Error Logs By Component, Fatal Error Summary - Daily, Fatal Errors, GC - Real Time, GC - Sys Time, GC - User Time, GC Pause Event, GC Pause Event Min / Max, GC Performance - Percentage Heap Used by Cluster, Heap, JVM Memory Size - Allocated vs Peak (GB), Log Reduce, Login Failed, Login Failed By Host, Logs by Components, Logs by Level, Moving Index Over Time, Node Down, Node Start, Query Hits Over Time, Query Shards Over Time, Rejected Execution Exceptions, Search by Type, Shards Failed, Slow  Queries Over Time, Slow Queries, Slow Queries - Daily, Slow Queries Over Time by Type, Slow Query Total, Slowest Running Queries by Type, Top 10 Host by  GC Time, Total GC Operation Time, Total GC Operations, Total GC Time, Total Pause Time, Total Time GC Causes (Seconds), Total Young Pause Time, Unexpected Error Indexing, Update Mapping Over Time, Updating Replicas Over Time, Warning Logs By Component, Warning Logs by Component, Warning Summary - Daily, Warning Usage Disk, Warnings



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| parse regex field=message "failed to authenticate user \[(?<user>[\S]+)\]"
```
### Use Cases:
Avg Young Pause Time, Cluster Health Change Status, Creating Index Over Time, Daily Summary - Index Creation, Daily Summary - Index Deletion, Deleting Index Over Time, Error Logs By Component, Error Logs by Component, Error Logs By Component, Error Mapping Index, Error Summary - Daily, Errors, Exceptions, Failed Login Attempt Summary, Failed Logins by User, Failed Password, Fatal Error Logs By Component, Fatal Error Summary - Daily, Fatal Errors, GC - Real Time, GC - Sys Time, GC - User Time, GC Pause Event, GC Pause Event Min / Max, GC Performance - Percentage Heap Used by Cluster, Heap, JVM Memory Size - Allocated vs Peak (GB), Log Reduce, Login Failed, Login Failed By Host, Logs by Components, Logs by Level, Moving Index Over Time, Node Down, Node Start, Query Hits Over Time, Query Shards Over Time, Rejected Execution Exceptions, Search by Type, Shards Failed, Slow  Queries Over Time, Slow Queries, Slow Queries - Daily, Slow Queries Over Time by Type, Slow Query Total, Slowest Running Queries by Type, Top 10 Host by  GC Time, Total GC Operation Time, Total GC Operations, Total GC Time, Total Pause Time, Total Time GC Causes (Seconds), Total Young Pause Time, Unexpected Error Indexing, Update Mapping Over Time, Updating Replicas Over Time, Warning Logs By Component, Warning Logs by Component, Warning Summary - Daily, Warning Usage Disk, Warnings



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| parse regex field=message "failed to retrieve password hash for reserved user \[(?<user>[\S]+)\]"
```
### Use Cases:
Avg Young Pause Time, Cluster Health Change Status, Creating Index Over Time, Daily Summary - Index Creation, Daily Summary - Index Deletion, Deleting Index Over Time, Error Logs By Component, Error Logs by Component, Error Mapping Index, Error Summary - Daily, Errors, Exceptions, Failed Login Attempt Summary, Failed Logins by User, Failed Password, Fatal Error Logs By Component, Fatal Error Summary - Daily, Fatal Errors, GC - Real Time, GC - Sys Time, GC - User Time, GC Pause Event, GC Pause Event Min / Max, GC Performance - Percentage Heap Used by Cluster, Heap, JVM Memory Size - Allocated vs Peak (GB), Log Reduce, Login Failed, Login Failed By Host, Logs by Components, Logs by Level, Moving Index Over Time, Node Down, Node Start, Query Hits Over Time, Query Shards Over Time, Rejected Execution Exceptions, Search by Type, Shards Failed, Slow  Queries Over Time, Slow Queries, Slow Queries - Daily, Slow Queries Over Time by Type, Slow Query Total, Slowest Running Queries by Type, Top 10 Host by  GC Time, Total GC Operation Time, Total GC Operations, Total GC Time, Total Pause Time, Total Time GC Causes (Seconds), Total Young Pause Time, Unexpected Error Indexing, Update Mapping Over Time, Updating Replicas Over Time, Warning Logs By Component, Warning Logs by Component, Warning Summary - Daily, Warning Usage Disk, Warnings



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| parse regex field=message "low disk watermark \[(?<Disk_Usage>[\S]+)\]"
```
### Use Cases:
Avg Young Pause Time, Cluster Health Change Status, Creating Index Over Time, Daily Summary - Index Creation, Daily Summary - Index Deletion, Deleting Index Over Time, Error Logs By Component, Error Logs by Component, Error Logs By Component, Error Mapping Index, Error Summary - Daily, Errors, Exceptions, Failed Login Attempt Summary, Failed Logins by User, Failed Password, Fatal Error Logs By Component, Fatal Error Summary - Daily, Fatal Errors, GC - Real Time, GC - Sys Time, GC - User Time, GC Pause Event, GC Pause Event Min / Max, GC Performance - Percentage Heap Used by Cluster, Heap, JVM Memory Size - Allocated vs Peak (GB), Log Reduce, Login Failed, Login Failed By Host, Logs by Components, Logs by Level, Moving Index Over Time, Node Down, Node Start, Query Hits Over Time, Query Shards Over Time, Rejected Execution Exceptions, Search by Type, Shards Failed, Slow  Queries Over Time, Slow Queries, Slow Queries - Daily, Slow Queries Over Time by Type, Slow Query Total, Slowest Running Queries by Type, Top 10 Host by  GC Time, Total GC Operation Time, Total GC Operations, Total GC Time, Total Pause Time, Total Time GC Causes (Seconds), Total Young Pause Time, Unexpected Error Indexing, Update Mapping Over Time, Updating Replicas Over Time, Warning Logs By Component, Warning Logs by Component, Warning Logs By Component, Warning Logs by Component, Warning Summary - Daily, Warning Usage Disk, Warnings



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| parse regex field=message "search_type\[(?<search_type>[\S]+)\], "
```
### Use Cases:
Avg Young Pause Time, Cluster Health Change Status, Creating Index Over Time, Daily Summary - Index Creation, Daily Summary - Index Deletion, Deleting Index Over Time, Error Logs By Component, Error Logs by Component, Error Logs By Component, Error Mapping Index, Error Summary - Daily, Errors, Exceptions, Failed Login Attempt Summary, Failed Logins by User, Failed Password, Fatal Error Logs By Component, Fatal Error Summary - Daily, Fatal Errors, GC - Real Time, GC - Sys Time, GC - User Time, GC Pause Event, GC Pause Event Min / Max, GC Performance - Percentage Heap Used by Cluster, Heap, JVM Memory Size - Allocated vs Peak (GB), Log Reduce, Login Failed, Login Failed By Host, Logs by Components, Logs by Level, Moving Index Over Time, Node Down, Node Start, Query Hits Over Time, Query Shards Over Time, Rejected Execution Exceptions, Search by Type, Shards Failed, Slow  Queries Over Time, Slow Queries, Slow Queries - Daily, Slow Queries Over Time by Type, Slow Query Total, Slowest Running Queries by Type, Top 10 Host by  GC Time, Total GC Operation Time, Total GC Operations, Total GC Time, Total Pause Time, Total Time GC Causes (Seconds), Total Young Pause Time, Unexpected Error Indexing, Update Mapping Over Time, Updating Replicas Over Time, Warning Logs By Component, Warning Logs by Component, Warning Logs By Component, Warning Logs by Component, Warning Summary - Daily, Warning Usage Disk, Warnings



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| parse regex field=message "took_millis\[(?<query_time_ms>[\d-]+)\]"
| json field=_raw "type" as type
```
### Use Cases:
Avg Young Pause Time, Cluster Health Change Status, Creating Index Over Time, Daily Summary - Index Creation, Daily Summary - Index Deletion, Deleting Index Over Time, Error Logs By Component, Error Logs by Component, Error Mapping Index, Error Summary - Daily, Errors, Exceptions, Failed Login Attempt Summary, Failed Logins by User, Failed Password, Fatal Error Logs By Component, Fatal Error Summary - Daily, Fatal Errors, GC - Real Time, GC - Sys Time, GC - User Time, GC Pause Event, GC Pause Event Min / Max, GC Performance - Percentage Heap Used by Cluster, Heap, JVM Memory Size - Allocated vs Peak (GB), Log Reduce, Login Failed, Login Failed By Host, Logs by Components, Logs by Level, Moving Index Over Time, Node Down, Node Start, Query Hits Over Time, Query Shards Over Time, Rejected Execution Exceptions, Search by Type, Shards Failed, Slow  Queries Over Time, Slow Queries, Slow Queries - Daily, Slow Queries Over Time by Type, Slow Query Total, Slowest Running Queries by Type, Top 10 Host by  GC Time, Total GC Operation Time, Total GC Operations, Total GC Time, Total Pause Time, Total Time GC Causes (Seconds), Total Young Pause Time, Unexpected Error Indexing, Update Mapping Over Time, Updating Replicas Over Time, Warning Logs by Component, Warning Logs By Component, Warning Summary - Daily, Warning Usage Disk, Warnings



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| parse regex field=message "total_hits\[(?<total_hits>[\d-]+) hits\], "nodrop
| parse regex field=message "total_hits\[(?<total_hits>[\d-]+)\+ hits\], "
```
### Use Cases:
Avg Young Pause Time, Cluster Health Change Status, Creating Index Over Time, Daily Summary - Index Creation, Daily Summary - Index Deletion, Deleting Index Over Time, Error Logs by Component, Error Logs By Component, Error Logs by Component, Error Logs By Component, Error Mapping Index, Error Summary - Daily, Errors, Exceptions, Failed Login Attempt Summary, Failed Logins by User, Failed Password, Fatal Error Logs By Component, Fatal Error Summary - Daily, Fatal Errors, GC - Real Time, GC - Sys Time, GC - User Time, GC Pause Event, GC Pause Event Min / Max, GC Performance - Percentage Heap Used by Cluster, Heap, JVM Memory Size - Allocated vs Peak (GB), Log Reduce, Login Failed, Login Failed By Host, Logs by Components, Logs by Level, Moving Index Over Time, Node Down, Node Start, Query Hits Over Time, Query Shards Over Time, Rejected Execution Exceptions, Search by Type, Shards Failed, Slow  Queries Over Time, Slow Queries, Slow Queries - Daily, Slow Queries Over Time by Type, Slow Query Total, Slowest Running Queries by Type, Top 10 Host by  GC Time, Total GC Operation Time, Total GC Operations, Total GC Time, Total Pause Time, Total Time GC Causes (Seconds), Total Young Pause Time, Unexpected Error Indexing, Update Mapping Over Time, Updating Replicas Over Time, Warning Logs By Component, Warning Logs by Component, Warning Logs By Component, Warning Summary - Daily, Warning Usage Disk, Warnings



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| parse regex field=message "total_shards\[(?<total_shards>[\d-]+)\], "
```
### Use Cases:
Avg Young Pause Time, Cluster Health Change Status, Creating Index Over Time, Daily Summary - Index Creation, Daily Summary - Index Deletion, Deleting Index Over Time, Error Logs by Component, Error Logs By Component, Error Logs by Component, Error Logs By Component, Error Mapping Index, Error Summary - Daily, Errors, Exceptions, Failed Login Attempt Summary, Failed Logins by User, Failed Password, Fatal Error Logs By Component, Fatal Error Summary - Daily, Fatal Errors, GC - Real Time, GC - Sys Time, GC - User Time, GC Pause Event, GC Pause Event Min / Max, GC Performance - Percentage Heap Used by Cluster, Heap, JVM Memory Size - Allocated vs Peak (GB), Log Reduce, Login Failed, Login Failed By Host, Logs by Components, Logs by Level, Moving Index Over Time, Node Down, Node Start, Query Hits Over Time, Query Shards Over Time, Rejected Execution Exceptions, Search by Type, Shards Failed, Slow  Queries Over Time, Slow Queries, Slow Queries - Daily, Slow Queries Over Time by Type, Slow Query Total, Slowest Running Queries by Type, Top 10 Host by  GC Time, Total GC Operation Time, Total GC Operations, Total GC Time, Total Pause Time, Total Time GC Causes (Seconds), Total Young Pause Time, Unexpected Error Indexing, Update Mapping Over Time, Updating Replicas Over Time, Warning Logs by Component, Warning Logs By Component, Warning Summary - Daily, Warning Usage Disk, Warnings



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*(?<pause_young_1>\s\d+)M->(?<pause_young_2>\d+)M\((?<total_size>\d+)M\)\s(?<time>\d+.\d+)ms"
```
### Use Cases:
Avg Young Pause Time, Cluster Health Change Status, Creating Index Over Time, Daily Summary - Index Creation, Daily Summary - Index Deletion, Deleting Index Over Time, Error Logs By Component, Error Logs by Component, Error Mapping Index, Error Summary - Daily, Errors, Exceptions, Failed Login Attempt Summary, Failed Logins by User, Failed Password, Fatal Error Logs By Component, Fatal Error Summary - Daily, Fatal Errors, GC - Real Time, GC - Sys Time, GC - User Time, GC Pause Event, GC Pause Event Min / Max, GC Performance - Percentage Heap Used by Cluster, Heap, JVM Memory Size - Allocated vs Peak (GB), Log Reduce, Login Failed, Login Failed By Host, Logs by Components, Logs by Level, Moving Index Over Time, Node Down, Node Start, Query Hits Over Time, Query Shards Over Time, Rejected Execution Exceptions, Search by Type, Shards Failed, Slow  Queries Over Time, Slow Queries, Slow Queries - Daily, Slow Queries Over Time by Type, Slow Query Total, Slowest Running Queries by Type, Top 10 Host by  GC Time, Total GC Operation Time, Total GC Operations, Total GC Time, Total Pause Time, Total Time GC Causes (Seconds), Total Young Pause Time, Unexpected Error Indexing, Update Mapping Over Time, Updating Replicas Over Time, Warning Logs By Component, Warning Logs by Component, Warning Logs By Component, Warning Logs by Component, Warning Summary - Daily, Warning Usage Disk, Warnings



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*(?<Usage_Heap>\s\d+)M->(?<Feed_memory>\d+)M\((?<total_heap>\d+)M\)\s(?<Total_Time>\d+.\d+)ms"
```
### Use Cases:
Avg Young Pause Time, Cluster Health Change Status, Creating Index Over Time, Daily Summary - Index Creation, Daily Summary - Index Deletion, Deleting Index Over Time, Error Logs by Component, Error Logs By Component, Error Logs by Component, Error Logs By Component, Error Mapping Index, Error Summary - Daily, Errors, Exceptions, Failed Login Attempt Summary, Failed Logins by User, Failed Password, Fatal Error Logs By Component, Fatal Error Summary - Daily, Fatal Errors, GC - Real Time, GC - Sys Time, GC - User Time, GC Pause Event, GC Pause Event Min / Max, GC Performance - Percentage Heap Used by Cluster, Heap, JVM Memory Size - Allocated vs Peak (GB), Log Reduce, Login Failed, Login Failed By Host, Logs by Components, Logs by Level, Moving Index Over Time, Node Down, Node Start, Query Hits Over Time, Query Shards Over Time, Rejected Execution Exceptions, Search by Type, Shards Failed, Slow  Queries Over Time, Slow Queries, Slow Queries - Daily, Slow Queries Over Time by Type, Slow Query Total, Slowest Running Queries by Type, Top 10 Host by  GC Time, Total GC Operation Time, Total GC Operations, Total GC Time, Total Pause Time, Total Time GC Causes (Seconds), Total Young Pause Time, Unexpected Error Indexing, Update Mapping Over Time, Updating Replicas Over Time, Warning Logs By Component, Warning Logs by Component, Warning Summary - Daily, Warning Usage Disk, Warnings



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\]\s+GC\(.*\)\s*User=(?<user_time>\d+.\d+)s\s+Sys=(?<sys_time>\d+\.\d+)s\s+Real=(?<real_time>\d+.\d+)"
```
### Use Cases:
Avg Young Pause Time, Cluster Health Change Status, Creating Index Over Time, Daily Summary - Index Creation, Daily Summary - Index Deletion, Deleting Index Over Time, Error Logs By Component, Error Logs by Component, Error Logs By Component, Error Mapping Index, Error Summary - Daily, Errors, Exceptions, Failed Login Attempt Summary, Failed Logins by User, Failed Password, Fatal Error Logs By Component, Fatal Error Summary - Daily, Fatal Errors, GC - Real Time, GC - Sys Time, GC - User Time, GC Pause Event, GC Pause Event Min / Max, GC Performance - Percentage Heap Used by Cluster, Heap, JVM Memory Size - Allocated vs Peak (GB), Log Reduce, Login Failed, Login Failed By Host, Logs by Components, Logs by Level, Moving Index Over Time, Node Down, Node Start, Query Hits Over Time, Query Shards Over Time, Rejected Execution Exceptions, Search by Type, Shards Failed, Slow  Queries Over Time, Slow Queries, Slow Queries - Daily, Slow Queries Over Time by Type, Slow Query Total, Slowest Running Queries by Type, Top 10 Host by  GC Time, Total GC Operation Time, Total GC Operations, Total GC Time, Total Pause Time, Total Time GC Causes (Seconds), Total Young Pause Time, Unexpected Error Indexing, Update Mapping Over Time, Updating Replicas Over Time, Warning Logs by Component, Warning Logs By Component, Warning Logs by Component, Warning Logs By Component, Warning Summary - Daily, Warning Usage Disk, Warnings



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms"
```
### Use Cases:
Avg Young Pause Time, Cluster Health Change Status, Creating Index Over Time, Daily Summary - Index Creation, Daily Summary - Index Deletion, Deleting Index Over Time, Error Logs By Component, Error Logs by Component, Error Mapping Index, Error Summary - Daily, Errors, Exceptions, Failed Login Attempt Summary, Failed Logins by User, Failed Password, Fatal Error Logs By Component, Fatal Error Summary - Daily, Fatal Errors, GC - Real Time, GC - Sys Time, GC - User Time, GC Pause Event, GC Pause Event Min / Max, GC Performance - Percentage Heap Used by Cluster, Heap, JVM Memory Size - Allocated vs Peak (GB), Log Reduce, Login Failed, Login Failed By Host, Logs by Components, Logs by Level, Moving Index Over Time, Node Down, Node Start, Query Hits Over Time, Query Shards Over Time, Rejected Execution Exceptions, Search by Type, Shards Failed, Slow  Queries Over Time, Slow Queries, Slow Queries - Daily, Slow Queries Over Time by Type, Slow Query Total, Slowest Running Queries by Type, Top 10 Host by  GC Time, Total GC Operation Time, Total GC Operations, Total GC Time, Total Pause Time, Total Time GC Causes (Seconds), Total Young Pause Time, Unexpected Error Indexing, Update Mapping Over Time, Updating Replicas Over Time, Warning Logs By Component, Warning Logs by Component, Warning Summary - Daily, Warning Usage Disk, Warnings



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*\s+GC\((?<gc_id>\d+)\)\s+Pause\s+Young\s+\((?<Cause>[^\]]+)\)\s+(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms" nodrop
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*\s+GC\((?<gc_id>\d+)\)\s+Pause\s+Young\s+\((?<Cause_Status>[^\]]+)\)\s+\((?<Cause>[^\]]+)\)\s+(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms"
```
### Use Cases:
Avg Young Pause Time, Cluster Health Change Status, Creating Index Over Time, Daily Summary - Index Creation, Daily Summary - Index Deletion, Deleting Index Over Time, Error Logs by Component, Error Logs By Component, Error Logs by Component, Error Mapping Index, Error Summary - Daily, Errors, Exceptions, Failed Login Attempt Summary, Failed Logins by User, Failed Password, Fatal Error Logs By Component, Fatal Error Summary - Daily, Fatal Errors, GC - Real Time, GC - Sys Time, GC - User Time, GC Pause Event, GC Pause Event Min / Max, GC Performance - Percentage Heap Used by Cluster, Heap, JVM Memory Size - Allocated vs Peak (GB), Log Reduce, Login Failed, Login Failed By Host, Logs by Components, Logs by Level, Moving Index Over Time, Node Down, Node Start, Query Hits Over Time, Query Shards Over Time, Rejected Execution Exceptions, Search by Type, Shards Failed, Slow  Queries Over Time, Slow Queries, Slow Queries - Daily, Slow Queries Over Time by Type, Slow Query Total, Slowest Running Queries by Type, Top 10 Host by  GC Time, Total GC Operation Time, Total GC Operations, Total GC Time, Total Pause Time, Total Time GC Causes (Seconds), Total Young Pause Time, Unexpected Error Indexing, Update Mapping Over Time, Updating Replicas Over Time, Warning Logs By Component, Warning Logs by Component, Warning Summary - Daily, Warning Usage Disk, Warnings



## Parser:
```
| json "log" as rawlog nodrop
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\]\s+GC\(.*\)(?<Time_Name>.*):\s+(?<pre_collect_set>\d+\.\d+)ms"
```
### Use Cases:
Avg Young Pause Time, Cluster Health Change Status, Creating Index Over Time, Daily Summary - Index Creation, Daily Summary - Index Deletion, Deleting Index Over Time, Error Logs by Component, Error Logs By Component, Error Logs by Component, Error Mapping Index, Error Summary - Daily, Errors, Exceptions, Failed Login Attempt Summary, Failed Logins by User, Failed Password, Fatal Error Logs By Component, Fatal Error Summary - Daily, Fatal Errors, GC - Real Time, GC - Sys Time, GC - User Time, GC Pause Event, GC Pause Event Min / Max, GC Performance - Percentage Heap Used by Cluster, Heap, JVM Memory Size - Allocated vs Peak (GB), Log Reduce, Login Failed, Login Failed By Host, Logs by Components, Logs by Level, Moving Index Over Time, Node Down, Node Start, Query Hits Over Time, Query Shards Over Time, Rejected Execution Exceptions, Search by Type, Shards Failed, Slow  Queries Over Time, Slow Queries, Slow Queries - Daily, Slow Queries Over Time by Type, Slow Query Total, Slowest Running Queries by Type, Top 10 Host by  GC Time, Total GC Operation Time, Total GC Operations, Total GC Time, Total Pause Time, Total Time GC Causes (Seconds), Total Young Pause Time, Unexpected Error Indexing, Update Mapping Over Time, Updating Replicas Over Time, Warning Logs By Component, Warning Logs by Component, Warning Logs By Component, Warning Summary - Daily, Warning Usage Disk, Warnings



## Parser:
```
| json "log" as rawlog nodrop 
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\]\s+GC\(.*\)(?<time_name>.*):\s+(?<pre_collect_set>\d+\.\d+)ms"
```
### Use Cases:
Avg Young Pause Time, Cluster Health Change Status, Creating Index Over Time, Daily Summary - Index Creation, Daily Summary - Index Deletion, Deleting Index Over Time, Error Logs by Component, Error Logs By Component, Error Mapping Index, Error Summary - Daily, Errors, Exceptions, Failed Login Attempt Summary, Failed Logins by User, Failed Password, Fatal Error Logs By Component, Fatal Error Summary - Daily, Fatal Errors, GC - Real Time, GC - Sys Time, GC - User Time, GC Pause Event, GC Pause Event Min / Max, GC Performance - Percentage Heap Used by Cluster, Heap, JVM Memory Size - Allocated vs Peak (GB), Log Reduce, Login Failed, Login Failed By Host, Logs by Components, Logs by Level, Moving Index Over Time, Node Down, Node Start, Query Hits Over Time, Query Shards Over Time, Rejected Execution Exceptions, Search by Type, Shards Failed, Slow  Queries Over Time, Slow Queries, Slow Queries - Daily, Slow Queries Over Time by Type, Slow Query Total, Slowest Running Queries by Type, Top 10 Host by  GC Time, Total GC Operation Time, Total GC Operations, Total GC Time, Total Pause Time, Total Time GC Causes (Seconds), Total Young Pause Time, Unexpected Error Indexing, Update Mapping Over Time, Updating Replicas Over Time, Warning Logs By Component, Warning Logs by Component, Warning Logs By Component, Warning Logs by Component, Warning Summary - Daily, Warning Usage Disk, Warnings


