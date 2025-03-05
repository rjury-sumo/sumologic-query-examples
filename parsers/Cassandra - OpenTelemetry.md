# Parsers For Cassandra - OpenTelemetry

## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=_raw "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg " - (?<keyspace>[^.]*)\.(?<table>[^ ]*) +(?<ops>[0-9]*),(?<data>[0-9]*)"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg " - (?<pool_name>[A-Za-z_]+) +(?<active>[0-9]+) +(?<pending>[0-9]+) +(?<completed>[0-9]+) +(?<blocked>[0-9]+) +(?<all_time_blocked>[0-9]+)"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse field=message "Initializing * cache with capacity of * MBs*" as cache_type,cache_capacity_mb,cache_provider
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "(?<cache_type>[A-Za-z]*Cache(?! Type)) *(?<size>[0-9]*) *(?<capacity>[0-9]*) *(?<keys_to_save>[^ ]*) *(?<provider>[A-Za-z_.$]*)"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "(?<memory_type>.*) memory: init = (?<memory_init>[0-9]*)\([0-9]*K\) used = (?<memory_used>[0-9]*)\([0-9]*K\) committed = (?<memory_committed>[0-9]*)\([0-9]*K\) max = (?<memory_max>[0-9-]*)\([0-9-]*K\)"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Cannot handshake version with /(?<endpoint>.*)"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Completed loading \((?<load_duration_ms>[0-9]*) ms; (?<cache_items>[0-9]*) keys\) KeyCache cache"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Endpoint /(?<target_endpoint>[^ ]*) is down and will not receive data for re-replication of /(?<source_endpoint>.*)"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Enqueuing flush of Memtable-(?<table>[^@]*)@(?<hash_code>[0-9]*)\((?<serialized_bytes>[0-9]*)/(?<live_bytes>[0-9]*) serialized/live bytes, (?<ops>[0-9]*) ops\)" nodrop
| parse regex field=message "Enqueuing flush of (?<table>[^:]*): (?<on_heap_bytes>[^:]*) \((?<on_heap_limit>[0-9]*)%\) on-heap, (?<off_heap_bytes>[^:]*) \((?<off_heap_limit>[0-9]*)%\) off-heap"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "FatClient /(?<endpoint>[^ ]*) has been silent for 30000ms, removing from gossip"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Flushing largest CFS\(Keyspace='(?<keyspace>[^']*)', ColumnFamily='(?<table>[^']*)'\) to free up room. Used total: (?<used_on_heap>\d+\.\d+)/(?<used_off_heap>\d+\.\d+), live: (?<live_on_heap>\d+\.\d+)/(?<live_off_heap>\d+\.\d+), flushing: (?<flushing_on_heap>\d+\.\d+)/(?<flushing_off_heap>\d+\.\d+), this: (?<this_on_heap>\d+\.\d+)/(?<this_off_heap>\d+\.\d+)"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Gossip stage has (?<pending_tasks>[0-9]+) pending tasks; skipping status check \(no nodes will be marked down\)"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Heap size: (?<heap_used>[0-9].*)/(?<total_heap>[0-9].*)"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Heap size: (?<heap_used>[0-9].*)MiB/(?<total_heap>[0-9].*)MiB"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "InetAddress /(?<endpoint>[^ ]*) is now DOWN"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "InetAddress /(?<endpoint>[^ ]*) is now UP"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Initializing (?<keyspace>[^.]*).(?<table>.*)"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Node /(?<endpoint>[^ ]*) is now part of the cluster"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "reading saved cache (?<cache_file>.*)"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Saved (?<cache_type>[^ ]*) \((?<cache_items>[0-9]*) items\) in (?<save_duration_ms>[0-9]*) ms"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Scheduling (?<cache_type>[^ ]*) cache save to every (?<save_interval>[0-9]*) seconds \(going to save (?<keys_to_save>[^ ]*) keys\)."
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=mesg "(?<level>[A-Z]*) *\[(?<thread_name>[^\]]*?)[:_-]?(?<thread_id>[0-9]*)\] (?<Date>.{10} .{12}) *(?<source_file>[^:]*):(?<source_line>[0-9]*) - (?<message>.*)"
| parse regex field=message "Sleeping for 30000ms to ensure /(?<endpoint>[^ ]*) does not change"
 `n```
### Use Cases:
Cache Init, Cache Init Capacity (MB), Cache Items Save, Cache Loading Details, Cache Loading Items, Cache Read, Cache Saving Details, Cache Saving Schedule, Cache Status, Enqueue Flush, Error Logs by Thread, Error Summary - Daily, Errors, Flush Activity, Handshake Failures by Endpoint, Heap Size, Heap Used, Largest CFS being Flushed, Log Reduce, Memory Committed (GB), Memory Init (GB), Memory Max (GB), Memory Size, Memory Used (GB), Memtable Status, Node Activity, Node Down Events, Node Join Events, Node Up Events, Nodes Down, Nodes Joined, Nodes Up, Pending Tasks, Replication Endpoints Down Events, Silent Client Removed, Sleep Events, Table Init, Threadpool Activity, Threadpool Status, Total Cache Capacity, Total Cache Read, Total Cache Size, Total Heap, Warnings, Warnings Logs by Thread, Warnings Summary - Daily


