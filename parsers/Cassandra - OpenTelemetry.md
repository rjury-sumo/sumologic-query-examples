# Parsers For Cassandra - OpenTelemetry

**Cassandra - OpenTelemetry/Cassandra - Cache Stats/Cache Init**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "INFO" Initializing | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| where thread_name matches "main" and source_file matches "CacheService*" and message matches "Initializing*"
| parse field=message "Initializing * cache with capacity of * MBs*" as cache_type,cache_capacity_mb,cache_provider
```

**Cassandra - OpenTelemetry/Cassandra - Cache Stats/Cache Init Capacity (MB)**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "INFO" Initializing | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| where thread_name matches "main" and source_file matches "CacheService*" and message matches "Initializing*"
| parse field=message "Initializing * cache with capacity of * MBs*" as cache_type,cache_capacity_mb,cache_provider
```

**Cassandra - OpenTelemetry/Cassandra - Cache Stats/Cache Items Save**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "INFO" "CompactionExecutor" "Saved" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| where thread_name matches "CompactionExecutor" and source_file matches "AutoSavingCache*" and message matches "*Saved KeyCache*"
| parse regex field=message "Saved (?<cache_type>[^ ]*) \((?<cache_items>[0-9]*) items\) in (?<save_duration_ms>[0-9]*) ms"
```

**Cassandra - OpenTelemetry/Cassandra - Cache Stats/Cache Loading Details**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "INFO" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| where source_file matches "AutoSavingCache*" and message matches "*Completed loading*"
| parse regex field=message "Completed loading \((?<load_duration_ms>[0-9]*) ms; (?<cache_items>[0-9]*) keys\) KeyCache cache"
```

**Cassandra - OpenTelemetry/Cassandra - Cache Stats/Cache Loading Items**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "INFO" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| where source_file matches "AutoSavingCache*" and message matches "*Completed loading*"
| parse regex field=message "Completed loading \((?<load_duration_ms>[0-9]*) ms; (?<cache_items>[0-9]*) keys\) KeyCache cache"
```

**Cassandra - OpenTelemetry/Cassandra - Cache Stats/Cache Read**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "INFO" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| where source_file matches "AutoSavingCache*" and message matches "*reading saved cache*"
| parse regex field=message "reading saved cache (?<cache_file>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Cache Stats/Cache Saving Details**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "INFO" "CompactionExecutor" "Saved" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| where thread_name matches "CompactionExecutor" and source_file matches "AutoSavingCache*" and message matches "*Saved KeyCache*"
| parse regex field=message "Saved (?<cache_type>[^ ]*) \((?<cache_items>[0-9]*) items\) in (?<save_duration_ms>[0-9]*) ms"
```

**Cassandra - OpenTelemetry/Cassandra - Cache Stats/Cache Saving Schedule**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "INFO" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| where thread_name matches "main" and source_file matches "CacheService*" and message matches "Scheduling*"
| parse regex field=message "Scheduling (?<cache_type>[^ ]*) cache save to every (?<save_interval>[0-9]*) seconds \(going to save (?<keys_to_save>[^ ]*) keys\)."
```

**Cassandra - OpenTelemetry/Cassandra - Cache Stats/Cache Status**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "INFO" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| where thread_name matches "Service Thread" and message matches "KeyCache*"
| parse regex field=message "(?<cache_type>[A-Za-z]*Cache(?! Type)) *(?<size>[0-9]*) *(?<capacity>[0-9]*) *(?<keys_to_save>[^ ]*) *(?<provider>[A-Za-z_.$]*)"
```

**Cassandra - OpenTelemetry/Cassandra - Cache Stats/Total Cache Capacity**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "INFO" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| where thread_name matches "Service Thread" and message matches "KeyCache*"
| parse regex field=message "(?<cache_type>[A-Za-z]*Cache(?! Type)) *(?<size>[0-9]*) *(?<capacity>[0-9]*) *(?<keys_to_save>[^ ]*) *(?<provider>[A-Za-z_.$]*)"
```

**Cassandra - OpenTelemetry/Cassandra - Cache Stats/Total Cache Read**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "INFO" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| where source_file matches "AutoSavingCache*" and message matches "*reading saved cache*"
| parse regex field=message "reading saved cache (?<cache_file>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Cache Stats/Total Cache Size**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "INFO" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| where thread_name matches "Service Thread" and message matches "KeyCache*"
| parse regex field=message "(?<cache_type>[A-Za-z]*Cache(?! Type)) *(?<size>[0-9]*) *(?<capacity>[0-9]*) *(?<keys_to_save>[^ ]*) *(?<provider>[A-Za-z_.$]*)"
```

**Cassandra - OpenTelemetry/Cassandra - Errors and Warnings/Error Logs by Thread**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} ("ERROR") db.cluster.name={{db.cluster.name}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Errors and Warnings/Error Summary - Daily**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} ("ERROR") db.cluster.name={{db.cluster.name}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Errors and Warnings/Errors**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} ("ERROR") db.cluster.name={{db.cluster.name}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Errors and Warnings/Log Reduce**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} ("WARN") or ("ERROR") db.cluster.name={{db.cluster.name}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Errors and Warnings/Warnings**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} ("WARN") db.cluster.name={{db.cluster.name}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Errors and Warnings/Warnings Logs by Thread**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} ("WARN") db.cluster.name={{db.cluster.name}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Errors and Warnings/Warnings Summary - Daily**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} ("WARN") db.cluster.name={{db.cluster.name}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Gossip/Handshake Failures by Endpoint**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} handshake db.cluster.name={{db.cluster.name}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Cannot handshake version with /(?<endpoint>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Gossip/Node Activity**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "INFO" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex field=_raw "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Gossip/Node Down Events**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "InetAddress" "is now DOWN"| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "InetAddress /(?<endpoint>[^ ]*) is now DOWN"
```

**Cassandra - OpenTelemetry/Cassandra - Gossip/Node Join Events**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "is now part of the cluster" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Node /(?<endpoint>[^ ]*) is now part of the cluster"
```

**Cassandra - OpenTelemetry/Cassandra - Gossip/Node Up Events**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "InetAddress" "is now UP"| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "InetAddress /(?<endpoint>[^ ]*) is now UP"
```

**Cassandra - OpenTelemetry/Cassandra - Gossip/Nodes Down**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "INFO" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex field=_raw "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Gossip/Nodes Joined**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "INFO" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex field=_raw "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Gossip/Nodes Up**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "INFO" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex field=_raw "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Gossip/Pending Tasks**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "Gossip stage has" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Gossip stage has (?<pending_tasks>[0-9]+) pending tasks; skipping status check \(no nodes will be marked down\)"
```

**Cassandra - OpenTelemetry/Cassandra - Gossip/Replication Endpoints Down Events**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "is down and will not receive data for re-replication of"| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Endpoint /(?<target_endpoint>[^ ]*) is down and will not receive data for re-replication of /(?<source_endpoint>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Gossip/Silent Client Removed**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   FatClient | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "FatClient /(?<endpoint>[^ ]*) has been silent for 30000ms, removing from gossip"
```

**Cassandra - OpenTelemetry/Cassandra - Gossip/Sleep Events**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   Sleeping | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Sleeping for 30000ms to ensure /(?<endpoint>[^ ]*) does not change"
```

**Cassandra - OpenTelemetry/Cassandra - Memtable/Enqueue Flush**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "Enqueuing flush of" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| where source_file matches "ColumnFamilyStore*"
| parse regex field=message "Enqueuing flush of Memtable-(?<table>[^@]*)@(?<hash_code>[0-9]*)\((?<serialized_bytes>[0-9]*)/(?<live_bytes>[0-9]*) serialized/live bytes, (?<ops>[0-9]*) ops\)" nodrop
| parse regex field=message "Enqueuing flush of (?<table>[^:]*): (?<on_heap_bytes>[^:]*) \((?<on_heap_limit>[0-9]*)%\) on-heap, (?<off_heap_bytes>[^:]*) \((?<off_heap_limit>[0-9]*)%\) off-heap"
```

**Cassandra - OpenTelemetry/Cassandra - Memtable/Flush Activity**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   ("Writing Memtable-" or "Completed flushing")| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Memtable/Largest CFS being Flushed**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "Flushing largest CFS" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| where source_file matches "ColumnFamilyStore*"
| parse regex field=message "Flushing largest CFS\(Keyspace='(?<keyspace>[^']*)', ColumnFamily='(?<table>[^']*)'\) to free up room. Used total: (?<used_on_heap>\d+\.\d+)/(?<used_off_heap>\d+\.\d+), live: (?<live_on_heap>\d+\.\d+)/(?<live_off_heap>\d+\.\d+), flushing: (?<flushing_on_heap>\d+\.\d+)/(?<flushing_off_heap>\d+\.\d+), this: (?<this_on_heap>\d+\.\d+)/(?<this_off_heap>\d+\.\d+)"
```

**Cassandra - OpenTelemetry/Cassandra - Memtable/Memtable Status**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "StatusLogger" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg " - (?<keyspace>[^.]*)\.(?<table>[^ ]*) +(?<ops>[0-9]*),(?<data>[0-9]*)"
```

**Cassandra - OpenTelemetry/Cassandra - Overview/Cache Status**
```
sumo.datasource=cassandra deployment.environment=* db.cluster.name=*   "INFO" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| where thread_name matches "Service Thread" and message matches "KeyCache*"
| parse regex field=message "(?<cache_type>[A-Za-z]*Cache(?! Type)) *(?<size>[0-9]*) *(?<capacity>[0-9]*) *(?<keys_to_save>[^ ]*) *(?<provider>[A-Za-z_.$]*)"
```

**Cassandra - OpenTelemetry/Cassandra - Overview/Error Logs by Thread**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} ("ERROR") sumo.datasource=cassandra db.cluster.name={{db.cluster.name}}    | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Overview/Memory Committed (GB)**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "(?<memory_type>.*) memory: init = (?<memory_init>[0-9]*)\([0-9]*K\) used = (?<memory_used>[0-9]*)\([0-9]*K\) committed = (?<memory_committed>[0-9]*)\([0-9]*K\) max = (?<memory_max>[0-9-]*)\([0-9-]*K\)"
```

**Cassandra - OpenTelemetry/Cassandra - Overview/Memory Init (GB)**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "(?<memory_type>.*) memory: init = (?<memory_init>[0-9]*)\([0-9]*K\) used = (?<memory_used>[0-9]*)\([0-9]*K\) committed = (?<memory_committed>[0-9]*)\([0-9]*K\) max = (?<memory_max>[0-9-]*)\([0-9-]*K\)"
```

**Cassandra - OpenTelemetry/Cassandra - Overview/Memory Max (GB)**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "(?<memory_type>.*) memory: init = (?<memory_init>[0-9]*)\([0-9]*K\) used = (?<memory_used>[0-9]*)\([0-9]*K\) committed = (?<memory_committed>[0-9]*)\([0-9]*K\) max = (?<memory_max>[0-9-]*)\([0-9-]*K\)"
```

**Cassandra - OpenTelemetry/Cassandra - Overview/Memory Used (GB)**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "(?<memory_type>.*) memory: init = (?<memory_init>[0-9]*)\([0-9]*K\) used = (?<memory_used>[0-9]*)\([0-9]*K\) committed = (?<memory_committed>[0-9]*)\([0-9]*K\) max = (?<memory_max>[0-9-]*)\([0-9-]*K\)"
```

**Cassandra - OpenTelemetry/Cassandra - Overview/Node Activity**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "INFO" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex field=_raw "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Overview/Nodes Down**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "INFO" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex field=_raw "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Overview/Nodes Up**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "INFO" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex field=_raw "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Overview/Warnings Logs by Thread**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} ("WARN") sumo.datasource=cassandra db.cluster.name={{db.cluster.name}}    | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Resource Usage Logs/Heap Size**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "Heap size" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Heap size: (?<heap_used>[0-9].*)/(?<total_heap>[0-9].*)"
```

**Cassandra - OpenTelemetry/Cassandra - Resource Usage Logs/Heap Used**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "Heap size" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Heap size: (?<heap_used>[0-9].*)MiB/(?<total_heap>[0-9].*)MiB"
```

**Cassandra - OpenTelemetry/Cassandra - Resource Usage Logs/Memory Committed (GB)**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "(?<memory_type>.*) memory: init = (?<memory_init>[0-9]*)\([0-9]*K\) used = (?<memory_used>[0-9]*)\([0-9]*K\) committed = (?<memory_committed>[0-9]*)\([0-9]*K\) max = (?<memory_max>[0-9-]*)\([0-9-]*K\)"
```

**Cassandra - OpenTelemetry/Cassandra - Resource Usage Logs/Memory Init (GB)**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "(?<memory_type>.*) memory: init = (?<memory_init>[0-9]*)\([0-9]*K\) used = (?<memory_used>[0-9]*)\([0-9]*K\) committed = (?<memory_committed>[0-9]*)\([0-9]*K\) max = (?<memory_max>[0-9-]*)\([0-9-]*K\)"
```

**Cassandra - OpenTelemetry/Cassandra - Resource Usage Logs/Memory Max (GB)**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "(?<memory_type>.*) memory: init = (?<memory_init>[0-9]*)\([0-9]*K\) used = (?<memory_used>[0-9]*)\([0-9]*K\) committed = (?<memory_committed>[0-9]*)\([0-9]*K\) max = (?<memory_max>[0-9-]*)\([0-9-]*K\)"
```

**Cassandra - OpenTelemetry/Cassandra - Resource Usage Logs/Memory Size**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "(?<memory_type>.*) memory: init = (?<memory_init>[0-9]*)\([0-9]*K\) used = (?<memory_used>[0-9]*)\([0-9]*K\) committed = (?<memory_committed>[0-9]*)\([0-9]*K\) max = (?<memory_max>[0-9-]*)\([0-9-]*K\)"
```

**Cassandra - OpenTelemetry/Cassandra - Resource Usage Logs/Memory Used (GB)**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "(?<memory_type>.*) memory: init = (?<memory_init>[0-9]*)\([0-9]*K\) used = (?<memory_used>[0-9]*)\([0-9]*K\) committed = (?<memory_committed>[0-9]*)\([0-9]*K\) max = (?<memory_max>[0-9-]*)\([0-9-]*K\)"
```

**Cassandra - OpenTelemetry/Cassandra - Resource Usage Logs/Table Init**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "Initializing" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| where source_file matches "ColumnFamilyStore.java"
| parse regex field=message "Initializing (?<keyspace>[^.]*).(?<table>.*)"
```

**Cassandra - OpenTelemetry/Cassandra - Resource Usage Logs/Threadpool Activity**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "StatusLogger" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg " - (?<pool_name>[A-Za-z_]+) +(?<active>[0-9]+) +(?<pending>[0-9]+) +(?<completed>[0-9]+) +(?<blocked>[0-9]+) +(?<all_time_blocked>[0-9]+)"
```

**Cassandra - OpenTelemetry/Cassandra - Resource Usage Logs/Threadpool Status**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "StatusLogger" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg " - (?<pool_name>[A-Za-z_]+) +(?<active>[0-9]+) +(?<pending>[0-9]+) +(?<completed>[0-9]+) +(?<blocked>[0-9]+) +(?<all_time_blocked>[0-9]+)"
```

**Cassandra - OpenTelemetry/Cassandra - Resource Usage Logs/Total Heap**
```
sumo.datasource=cassandra deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}}   "Heap size" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as mesg
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Heap size: (?<heap_used>[0-9].*)MiB/(?<total_heap>[0-9].*)MiB"
```


