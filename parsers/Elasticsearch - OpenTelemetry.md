# Parsers For Elasticsearch - OpenTelemetry

**Elasticsearch - OpenTelemetry/Elasticsearch - Errors And Warnings/Error Logs By Component**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Errors And Warnings/Error Mapping Index**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} ERROR | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Errors And Warnings/Error Summary - Daily**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} ERROR | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Errors And Warnings/Errors**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} ERROR | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Errors And Warnings/Exceptions**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} ERROR | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Errors And Warnings/Fatal Error Logs By Component**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} FATAL | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Errors And Warnings/Fatal Error Summary - Daily**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} FATAL | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Errors And Warnings/Fatal Errors**
```
 sumo.datasource=elasticsearch  deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} FATAL | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Errors And Warnings/Log Reduce**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} (ERROR or FATAL or WARN) | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Errors And Warnings/Rejected Execution Exceptions**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} DEBUG | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Errors And Warnings/Shards Failed**
```
 sumo.datasource=elasticsearch  deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} DEBUG | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Errors And Warnings/Warning Logs By Component**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} WARN | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Errors And Warnings/Warning Summary - Daily**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} WARN | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Errors And Warnings/Warnings**
```
 sumo.datasource=elasticsearch  deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} WARN | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Garbage Collection/ Max**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "Pre Evacuate Collection Set" or "Merge Heap Roots" or "Evacuate Collection Set" or "Post Evacuate Collection Set" or "Other" | json "log" as rawlog nodrop 
| if (isEmpty(_rawlog), raw, rawlog) as raw 
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\]\s+GC\(.*\)(?<time_name>.*):\s+(?<pre_collect_set>\d+\.\d+)ms"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Garbage Collection/Avg Young Pause Time**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*(?<pause_young_1>\s\d+)M->(?<pause_young_2>\d+)M\((?<total_size>\d+)M\)\s(?<time>\d+.\d+)ms"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Garbage Collection/GC - Real Time**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\]\s+GC\(.*\)\s*User=(?<user_time>\d+.\d+)s\s+Sys=(?<sys_time>\d+\.\d+)s\s+Real=(?<real_time>\d+.\d+)"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Garbage Collection/GC - Sys Time**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\]\s+GC\(.*\)\s*User=(?<user_time>\d+.\d+)s\s+Sys=(?<sys_time>\d+\.\d+)s\s+Real=(?<real_time>\d+.\d+)"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Garbage Collection/GC - User Time**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\]\s+GC\(.*\)\s*User=(?<user_time>\d+.\d+)s\s+Sys=(?<sys_time>\d+\.\d+)s\s+Real=(?<real_time>\d+.\d+)"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Garbage Collection/GC Pause Event**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "Pre Evacuate Collection Set" or "Merge Heap Roots" or "Evacuate Collection Set" or "Post Evacuate Collection Set" or "Other" | json "log" as rawlog nodrop
| if (isEmpty(_rawlog), raw, rawlog) as raw 
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\]\s+GC\(.*\)(?<Time_Name>.*):\s+(?<pre_collect_set>\d+\.\d+)ms"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Garbage Collection/GC Performance - Percentage Heap Used by Cluster**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*(?<Usage_Heap>\s\d+)M->(?<Feed_memory>\d+)M\((?<total_heap>\d+)M\)\s(?<Total_Time>\d+.\d+)ms"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Garbage Collection/Heap**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Garbage Collection/JVM Memory Size - Allocated vs Peak (GB)**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Garbage Collection/Top 10 Host by  GC Time**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Garbage Collection/Total GC Operation Time**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Garbage Collection/Total GC Operations**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*\s+GC\((?<gc_id>\d+)\)\s+Pause\s+Young\s+\((?<Cause>[^\]]+)\)\s+(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms" nodrop
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*\s+GC\((?<gc_id>\d+)\)\s+Pause\s+Young\s+\((?<Cause_Status>[^\]]+)\)\s+\((?<Cause>[^\]]+)\)\s+(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Garbage Collection/Total GC Time**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*\s+GC\((?<gc_id>\d+)\)\s+Pause\s+Young\s+\((?<Cause>[^\]]+)\)\s+(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms" nodrop
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*\s+GC\((?<gc_id>\d+)\)\s+Pause\s+Young\s+\((?<Cause_Status>[^\]]+)\)\s+\((?<Cause>[^\]]+)\)\s+(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Garbage Collection/Total Pause Time**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*(?<pause_young_1>\s\d+)M->(?<pause_young_2>\d+)M\((?<total_size>\d+)M\)\s(?<time>\d+.\d+)ms"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Garbage Collection/Total Time GC Causes (Seconds)**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*\s+GC\((?<gc_id>\d+)\)\s+Pause\s+Young\s+\((?<Cause>[^\]]+)\)\s+(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms" nodrop
| parse regex field=mesg "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*\s+GC\((?<gc_id>\d+)\)\s+Pause\s+Young\s+\((?<Cause_Status>[^\]]+)\)\s+\((?<Cause>[^\]]+)\)\s+(?<HeapBfrGC>\d+)M->(?<HeapAftrGC>\d+)M\((?<HeapSize>\d+)M\)\s+(?<GCOperationTime>[\d.]+)ms"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Garbage Collection/Total Young Pause Time**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "\[(?<date>[^\]]+)\]\[(?<process_id>[^\]]+)\]\[(?<module>[^\]]+)\].*(?<pause_young_1>\s\d+)M->(?<pause_young_2>\d+)M\((?<total_size>\d+)M\)\s(?<time>\d+.\d+)ms"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Login And Connections/Failed Login Attempt Summary**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "failed to authenticate user" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| where level = "INFO" and message matches "*failed to authenticate user*"
| parse regex field=message "failed to authenticate user \[(?<user>[\S]+)\]"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Login And Connections/Failed Logins by User**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "failed to authenticate user" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| where level = "INFO" and message matches "*failed to authenticate user*"
| parse regex field=message "failed to authenticate user \[(?<user>[\S]+)\]"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Login And Connections/Failed Password**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "failed to retrieve password hash for reserved user" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| where level = "ERROR" and message matches "*failed to retrieve password hash for reserved user*"
| parse regex field=message "failed to retrieve password hash for reserved user \[(?<user>[\S]+)\]"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Login And Connections/Login Failed**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "failed to authenticate user" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Login And Connections/Login Failed By Host**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "failed to authenticate user" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Operations/Cluster Health Change Status**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "Cluster health status changed" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| where level = "INFO" and message matches "*Cluster health status changed*"
| parse regex field=message "Cluster health status changed from \[(?<last_status>[\S]+)\] to \[(?<curent_status>[\S]+)\]"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Operations/Creating Index Over Time**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Operations/Daily Summary - Index Creation**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "creating index" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| where level = "INFO" and message matches "*creating index*"
| if (isEmpty(pod),db.node.name,pod) as db.node.name
| parse field=message "[*] creating index, cause [*], templates [*], *" as index,cause,templates,nextime
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Operations/Daily Summary - Index Deletion**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "deleting index" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| where level = "INFO" and message matches "*deleting index*"
| if (isEmpty(pod),db.node.name,pod) as db.node.name
| parse regex field=message "\[(?<index>[\S]+)\] deleting index"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Operations/Deleting Index Over Time**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Operations/Moving Index Over Time**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Operations/Node Down**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Operations/Node Start**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Operations/Unexpected Error Indexing**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "WARN" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Operations/Update Mapping Over Time**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Operations/Updating Replicas Over Time**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Operations/Warning Usage Disk**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "low disk watermark" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| where level = "INFO" and message matches "*low disk watermark*"
| parse regex field=message "low disk watermark \[(?<Disk_Usage>[\S]+)\]"
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Overview/Error Logs by Component**
```
sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Overview/Logs by Components**
```
sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Overview/Logs by Level**
```
sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Overview/Slow  Queries Over Time**
```
sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Overview/Slow Query Total**
```
sumo.datasource=elasticsearch db.cluster.name={{db.cluster.name}}  deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Overview/Warning Logs by Component**
```
sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Queries/Query Hits Over Time**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} took_millis | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| parse regex field=message "total_hits\[(?<total_hits>[\d-]+) hits\], "nodrop
| parse regex field=message "total_hits\[(?<total_hits>[\d-]+)\+ hits\], "
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Queries/Query Shards Over Time**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} took_millis | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| where level = "WARN" and message matches "*took_millis*"
| parse regex field=message "total_shards\[(?<total_shards>[\d-]+)\], "
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Queries/Search by Type**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} took_millis | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| where level = "WARN" and message matches "*took_millis*"
| parse regex field=message "search_type\[(?<search_type>[\S]+)\], "
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Queries/Slow Queries**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} took_millis | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| json field=_raw "type" as type
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Queries/Slow Queries - Daily**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} took_millis | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| where level = "WARN" and message matches "*took_millis*"
| parse regex field=message "took_millis\[(?<query_time_ms>[\d-]+)\]"
| json field=_raw "type" as type
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Queries/Slow Queries Over Time by Type**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} took_millis index_search_slowlog | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| where level = "WARN" and message matches "*took_millis*"
| json field=_raw "type" as type
```

**Elasticsearch - OpenTelemetry/Elasticsearch - Queries/Slowest Running Queries by Type**
```
 sumo.datasource=elasticsearch deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} took_millis index_search_slowlog | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| json field=_raw "timestamp" as timestamp
| json field=_raw "level" as level
| json field=_raw "component" as es_component
| json field=_raw "message" as message
| where level = "WARN" and message matches "*took_millis*"
| parse regex field=message "took_millis\[(?<query_time_ms>[\d-]+)\]"
| json field=_raw "type" as type
```


