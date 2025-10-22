# Parsers For Elasticsearch

**Elasticsearch/Errors And Warnings/Error Logs By Component**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Errors And Warnings/Error Mapping Index**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} ERROR | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Errors And Warnings/Error Summary - Daily**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} ERROR | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Errors And Warnings/Errors**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} ERROR | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Errors And Warnings/Exceptions**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} ERROR | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Errors And Warnings/Fatal Error Logs By Component**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} FATAL | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Errors And Warnings/Fatal Error Summary - Daily**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} FATAL | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Errors And Warnings/Fatal Errors**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} FATAL | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Errors And Warnings/Log Reduce**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} (ERROR or FATAL or WARN) | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Errors And Warnings/Rejected Execution Exceptions**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} DEBUG | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Errors And Warnings/Shards Failed**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} DEBUG | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Errors And Warnings/Warning Logs By Component**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} WARN | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Errors And Warnings/Warning Summary - Daily**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} WARN | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Errors And Warnings/Warnings**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} WARN | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Garbage Collection/ Max**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} "Pre Evacuate Collection Set" or "Merge Heap Roots" or "Evacuate Collection Set" or "Post Evacuate Collection Set" or "Other" | json "log" as rawlog nodrop 
| if (isEmpty(_rawlog), raw, rawlog) as raw 
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\]\s+GC\(.*\)(?<time_name>.*):\s+(?<pre_collect_set>\d+\.\d+)ms"
```

**Elasticsearch/Garbage Collection/Avg Young Pause Time**
```
db_cluster=* db_system=elasticsearch db_cluster=* | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*(?<pause_young_1>\s\d+)M->(?<pause_young_2>\d+)M\((?<total_size>\d+)M\)\s(?<time>\d+.\d+)ms"
```

**Elasticsearch/Garbage Collection/GC - Real Time**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\]\s+GC\(.*\)\s*User=(?<user_time>\d+.\d+)s\s+Sys=(?<sys_time>\d+\.\d+)s\s+Real=(?<real_time>\d+.\d+)"
```

**Elasticsearch/Garbage Collection/GC - Sys Time**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\]\s+GC\(.*\)\s*User=(?<user_time>\d+.\d+)s\s+Sys=(?<sys_time>\d+\.\d+)s\s+Real=(?<real_time>\d+.\d+)"
```

**Elasticsearch/Garbage Collection/GC - User Time**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\]\s+GC\(.*\)\s*User=(?<user_time>\d+.\d+)s\s+Sys=(?<sys_time>\d+\.\d+)s\s+Real=(?<real_time>\d+.\d+)"
```

**Elasticsearch/Garbage Collection/GC Pause Event**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} "Pre Evacuate Collection Set" or "Merge Heap Roots" or "Evacuate Collection Set" or "Post Evacuate Collection Set" or "Other" | json "log" as rawlog nodrop
| if (isEmpty(_rawlog), raw, rawlog) as raw 
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\]\s+GC\(.*\)(?<Time_Name>.*):\s+(?<pre_collect_set>\d+\.\d+)ms"
```

**Elasticsearch/Garbage Collection/GC Performance - Percentage Heap Used**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*(?<Usage_Heap>\s\d+)M->(?<Feed_memory>\d+)M\((?<total_heap>\d+)M\)\s(?<Total_Time>\d+.\d+)ms"
```

**Elasticsearch/Garbage Collection/Heap**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms"
```

**Elasticsearch/Garbage Collection/JVM Memory Size - Allocated vs Peak (GB)**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms"
```

**Elasticsearch/Garbage Collection/Top 10 Host by  GC Time**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms"
```

**Elasticsearch/Garbage Collection/Total GC Operation Time**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms"
```

**Elasticsearch/Garbage Collection/Total GC Operations**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*\s+GC\((?<gc_id>\d+)\)\s+Pause\s+Young\s+\((?<Cause>[^\]]+)\)\s+(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms" nodrop
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*\s+GC\((?<gc_id>\d+)\)\s+Pause\s+Young\s+\((?<Cause_Status>[^\]]+)\)\s+\((?<Cause>[^\]]+)\)\s+(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms"
```

**Elasticsearch/Garbage Collection/Total GC Time**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*\s+GC\((?<gc_id>\d+)\)\s+Pause\s+Young\s+\((?<Cause>[^\]]+)\)\s+(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms" nodrop
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*\s+GC\((?<gc_id>\d+)\)\s+Pause\s+Young\s+\((?<Cause_Status>[^\]]+)\)\s+\((?<Cause>[^\]]+)\)\s+(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms"
```

**Elasticsearch/Garbage Collection/Total Pause Time**
```
db_cluster=* db_system=elasticsearch db_cluster=* | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*(?<pause_young_1>\s\d+)M->(?<pause_young_2>\d+)M\((?<total_size>\d+)M\)\s(?<time>\d+.\d+)ms"
```

**Elasticsearch/Garbage Collection/Total Time GC Causes (Seconds)**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*\s+GC\((?<gc_id>\d+)\)\s+Pause\s+Young\s+\((?<Cause>[^\]]+)\)\s+(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms" nodrop
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*\s+GC\((?<gc_id>\d+)\)\s+Pause\s+Young\s+\((?<Cause_Status>[^\]]+)\)\s+\((?<Cause>[^\]]+)\)\s+(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms"
```

**Elasticsearch/Garbage Collection/Total Young Pause Time**
```
db_cluster=* db_system=elasticsearch db_cluster=* | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*(?<pause_young_1>\s\d+)M->(?<pause_young_2>\d+)M\((?<total_size>\d+)M\)\s(?<time>\d+.\d+)ms"
```

**Elasticsearch/Login And Connections/Failed Login Attempt Summary**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} "failed to authenticate user" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
| where level = "INFO" and message matches "*failed to authenticate user*"
| parse regex field=message "failed to authenticate user \[(?<user>[\S]+)\]"
```

**Elasticsearch/Login And Connections/Failed Logins by User**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} "failed to authenticate user" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
| where level = "INFO" and message matches "*failed to authenticate user*"
| parse regex field=message "failed to authenticate user \[(?<user>[\S]+)\]"
```

**Elasticsearch/Login And Connections/Failed Password**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} "failed to retrieve password hash for reserved user" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
| where level = "ERROR" and message matches "*failed to retrieve password hash for reserved user*"
| parse regex field=message "failed to retrieve password hash for reserved user \[(?<user>[\S]+)\]"
```

**Elasticsearch/Login And Connections/Login Failed**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} "failed to authenticate user" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Login And Connections/Login Failed By Host**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} "failed to authenticate user" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Operations/Cluster Health Change Status**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} "Cluster health status changed" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
| where level = "INFO" and message matches "*Cluster health status changed*"
| parse regex field=message "Cluster health status changed from \[(?<last_status>[\S]+)\] to \[(?<curent_status>[\S]+)\]"
```

**Elasticsearch/Operations/Creating Index Over Time**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Operations/Daily Summary - Index Creation**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} "creating index" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
| where level = "INFO" and message matches "*creating index*"
| if (isEmpty(pod),_sourceHost,pod) as host
| parse field=message "[*] creating index, cause [*], templates [*], *" as index,cause,templates,nextime
```

**Elasticsearch/Operations/Daily Summary - Index Deletion**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} "deleting index" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
| where level = "INFO" and message matches "*deleting index*"
| if (isEmpty(pod),_sourceHost,pod) as host
| parse regex field=message "\[(?<index>[\S]+)\] deleting index"
```

**Elasticsearch/Operations/Deleting Index Over Time**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Operations/Moving Index Over Time**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Operations/Node Down**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Operations/Node Start**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Operations/Unexpected Error Indexing**
```
db_cluster=* db_system=elasticsearch "WARN" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Operations/Update Mapping Over Time**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Operations/Updating Replicas Over Time**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Operations/Warning Usage Disk**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} "low disk watermark" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
| where level = "INFO" and message matches "*low disk watermark*"
| parse regex field=message "low disk watermark \[(?<Disk_Usage>[\S]+)\]"
```

**Elasticsearch/Overview/Error Logs by Component**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Overview/Logs by Components**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Overview/Logs by Level**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Overview/Slow  Queries Over Time**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Overview/Slow Query Total**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Overview/Warning Logs by Component**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
```

**Elasticsearch/Queries/Query Hits Over Time**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} took_millis | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
| parse regex field=message "total_hits\[(?<total_hits>[\d-]+) hits\], "nodrop
| parse regex field=message "total_hits\[(?<total_hits>[\d-]+)\+ hits\], "
```

**Elasticsearch/Queries/Query Shards Over Time**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} took_millis | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
| where level = "WARN" and message matches "*took_millis*"
| parse regex field=message "total_shards\[(?<total_shards>[\d-]+)\], "
```

**Elasticsearch/Queries/Search by Type**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} took_millis | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
| where level = "WARN" and message matches "*took_millis*"
| parse regex field=message "search_type\[(?<search_type>[\S]+)\], "
```

**Elasticsearch/Queries/Slow Queries**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} took_millis | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
| json field=_raw "type" as type
```

**Elasticsearch/Queries/Slow Queries - Daily**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} took_millis | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
| where level = "WARN" and message matches "*took_millis*"
| parse regex field=message "took_millis\[(?<query_time_ms>[\d-]+)\]"
| json field=_raw "type" as type
```

**Elasticsearch/Queries/Slow Queries Over Time by Type**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} took_millis index_search_slowlog | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
| where level = "WARN" and message matches "*took_millis*"
| json field=_raw "type" as type
```

**Elasticsearch/Queries/Slowest Running Queries by Type**
```
db_cluster=* db_system=elasticsearch db_cluster={{db_cluster}} took_millis index_search_slowlog | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as component
| json field=_raw "message" as message
| where level = "WARN" and message matches "*took_millis*"
| parse regex field=message "took_millis\[(?<query_time_ms>[\d-]+)\]"
| json field=_raw "type" as type
```


