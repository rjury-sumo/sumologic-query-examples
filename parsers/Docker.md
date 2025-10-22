# Parsers For Docker

**Docker/CPU Performance/CPU Total Usage (Jiffy) per Minute by Container**
```
_sourceCategory={{Logsdatasource}}  "cpu_stats" 
| _sourceName as container_name 
| where container_name matches "{{container_name}}"
| json "cpu_stats.cpu_usage.total_usage" as cpu_total_usage 
```

**Docker/CPU Performance/Kernel CPU Usage (%) by Container**
```
_sourceCategory={{Logsdatasource}}  cpu 
| _sourceName as container_name 
| where container_name matches "{{container_name}}"
| json  "cpu_stats.system_cpu_usage","cpu_stats.cpu_usage.usage_in_kernelmode" as  system_cpu_usage,cpu_kernel_usage 
```

**Docker/CPU Performance/Throttled Time (Second) by Container**
```
_sourceCategory={{Logsdatasource}}  "cpu_stats" 
| _sourceName as container_name 
| where container_name matches "{{container_name}}"
| json "cpu_stats.throttling_data.throttled_time" as  throttled_time 
```

**Docker/CPU Performance/Total CPU Consumption (%) Over Time by Container**
```
_sourceCategory={{Logsdatasource}}  "cpu_stats" 
| _sourceName as container_name 
| where container_name matches "{{container_name}}"
| json "cpu_stats.system_cpu_usage","cpu_stats.cpu_usage.usage_in_usermode","cpu_stats.cpu_usage.usage_in_kernelmode" as  system_cpu_usage,cpu_user_usage,cpu_kernel_usage 
```

**Docker/CPU Performance/User CPU Usage (%) by Container**
```
_sourceCategory={{Logsdatasource}}  cpu 
| _sourceName as container_name 
| where container_name matches "{{container_name}}"
| json "cpu_stats.system_cpu_usage","cpu_stats.cpu_usage.usage_in_usermode" as  system_cpu_usage,cpu_user_usage 
```

**Docker/Memory Performance/Major Fault Total Count by Container**
```
_sourceCategory={{Logsdatasource}}  cpu memory  stats total pgmajfault 
| _sourceName as container_name
| where container_name matches "{{container_name}}"
| json  "memory_stats.stats.total_pgmajfault" as total_pgmajfault nodrop
```

**Docker/Memory Performance/Page Fault Increment per Minute by Container**
```
_sourceCategory={{Logsdatasource}}  cpu memory stats total pgfault 
| _sourceName as container_name 
| where container_name matches "{{container_name}}"
| json "memory_stats.stats.total_pgfault" as total_pgfault
```

**Docker/Memory Performance/Swap Size by Container**
```
_sourceCategory={{Logsdatasource}}  memory stats swap 
| _sourceName as container_name
| where container_name matches "{{container_name}}"
| json  "memory_stats.stats.swap" as swap nodrop
```

**Docker/Memory Performance/Top Containers by RSS Memory (KB) Over Time**
```
_sourceCategory={{Logsdatasource}}  cpu  memory stats rss
| _sourceName as container_name 
| where container_name matches "{{container_name}}"
| json "memory_stats.stats.rss" as rss nodrop | rss/1024 as rss 
```

**Docker/Memory Performance/Total Page Fault Increment**
```
_sourceCategory={{Logsdatasource}}  cpu memory stats total pgfault 
| _sourceName as container_name
| where container_name matches "{{container_name}}"
| json "memory_stats.stats.total_pgfault" as total_pgfault nodrop
```

**Docker/Memory Performance/Unevictable Memory Increment by Container**
```
_sourceCategory={{Logsdatasource}}  memory  stats total unevictable 
| _sourceName as container_name
| where container_name matches "{{container_name}}"
| json "memory_stats.stats.total_unevictable" as total_unevictable 
```

**Docker/Network Performance/Receive Errors by Container**
```
_sourceCategory={{Logsdatasource}}   networks
| _sourceName as container_name 
| json "networks"
| parse regex field=networks "(?<ni>\w+)\":(?<metrics>\{[^\}]*?\}),?" multi
| where ni matches "{{network_interface}}" and container_name matches "{{container_name}}"
| json field=metrics "rx_errors" as recv_errors
```

**Docker/Network Performance/Received Packets by Container**
```
_sourceCategory={{Logsdatasource}}  "cpu_stats"  
| _sourceName as container_name
| json "networks"
| parse regex field=networks "(?<ni>\w+)\":(?<metrics>\{[^\}]*?\}),?" multi
| where ni matches "{{network_interface}}" and container_name matches "{{container_name}}"
| json field=metrics "rx_packets" as rcv_packets
```

**Docker/Network Performance/Received Traffic (MB) by Container**
```
_sourceCategory={{Logsdatasource}}  networks 
| _sourceName as container_name 
| json "networks"
| parse regex field=networks "(?<ni>\w+)\":(?<metrics>\{[^\}]*?\}),?" multi
| where ni matches "{{network_interface}}" and container_name matches "{{container_name}}"
| json field=metrics "rx_bytes" as rcv_bytes 
```

**Docker/Network Performance/Send Errors by Container**
```
_sourceCategory={{Logsdatasource}}   networks
| _sourceName as container_name 
| json "networks"
| parse regex field=networks "(?<ni>\w+)\":(?<metrics>\{[^\}]*?\}),?" multi
| where ni matches "{{network_interface}}" and container_name matches "{{container_name}}"
| json field=metrics "tx_errors" as sent_errors
```

**Docker/Network Performance/Sent Packets by Container**
```
_sourceCategory={{Logsdatasource}}  networks 
| _sourceName as container_name
| json "networks"
| parse regex field=networks "(?<ni>\w+)\":(?<metrics>\{[^\}]*?\}),?" multi
| where ni matches "{{network_interface}}" and container_name matches "{{container_name}}"
| json field=metrics "tx_packets" as sent_packets
```

**Docker/Network Performance/Sent Traffic (MB) by Container**
```
_sourceCategory={{Logsdatasource}}  "cpu_stats" 
| _sourceName as container_name 
| json "networks"
| parse regex field=networks "(?<ni>\w+)\":(?<metrics>\{[^\}]*?\}),?" multi
| where ni matches "{{network_interface}}" and container_name matches "{{container_name}}"
| json field=metrics "tx_bytes" as sent_bytes 
```

**Docker/Network Performance/Total Network Error Count**
```
_sourceCategory={{Logsdatasource}}  networks
| _sourceName as container_name 
| json "networks"
| parse regex field=networks "(?<ni>\w+)\":(?<metrics>\{[^\}]*?\}),?" multi
| where ni matches "{{network_interface}}" and container_name matches "{{container_name}}"
| json field=metrics "tx_errors", "rx_errors" as sent_errors,recv_errors
```

**Docker/Overview/Container Actions**
```
_sourceCategory={{Logsdatasource}}  status id from
| parse "\"status\":\"*\"" as status, "\"id\":\"*\"" as container_id, "\"from\":\"*\"" as image
```

**Docker/Overview/Paused**
```
_sourceCategory={{Logsdatasource}}   ("\"status\":\"stop\"" or "\"status\":\"pause\"")  id from
| parse "\"status\":\"*\"" as status, "\"id\":\"*\"" as container_id, "\"from\":\"*\"" as image
```

**Docker/Overview/Started**
```
_sourceCategory={{Logsdatasource}}   ("\"status\":\"create\"" or "\"status\":\"start\"")  id from
| parse "\"status\":\"*\"" as status, "\"id\":\"*\"" as container_id, "\"from\":\"*\"" as image
```

**Docker/Overview/Top 10 Containers by Avg Resident Memory Consumption (KB)**
```
_sourceCategory={{Logsdatasource}}  cpu 
| _sourceName as container_name 
| json "memory_stats.stats.rss" as rss nodrop
```

**Docker/Overview/Top 10 Containers by CPU Consumption (%)**
```
_sourceCategory={{Logsdatasource}}  "cpu_stats" 
| _sourceName as container_name
| json "cpu_stats.system_cpu_usage","cpu_stats.cpu_usage.usage_in_usermode","cpu_stats.cpu_usage.usage_in_kernelmode" as  system_cpu_usage,cpu_user_usage,cpu_kernel_usage nodrop
```

**Docker/Overview/Top 10 Containers by Traffic Sent and Received (MB)**
```
_sourceCategory={{Logsdatasource}}  networks
| _sourceName as container_name 
| json "networks"
| parse regex field=networks "(?<ni>\w+)\":(?<metrics>\{[^\}]*?\}),?" multi
| json field=metrics "tx_bytes" ,"rx_bytes"  as sent_bytes,recv_bytes 
```

**Docker/Overview/Total Network Error Count**
```
_sourceCategory={{Logsdatasource}}  "cpu_stats" 
| _sourceName as container_name 
| json "networks"
| parse regex field=networks "(?<ni>\w+)\":(?<metrics>\{[^\}]*?\}),?" multi
| json field=metrics "tx_errors", "rx_errors" as sent_errors,recv_errors
```


