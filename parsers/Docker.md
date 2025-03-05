# Parsers For Docker

## Parser:
```
| json  "cpu_stats.system_cpu_usage","cpu_stats.cpu_usage.usage_in_kernelmode" as  system_cpu_usage,cpu_kernel_usage 
 `n```
### Use Cases:
CPU Total Usage (Jiffy) per Minute by Container, Kernel CPU Usage (%) by Container, Throttled Time (Second) by Container, User CPU Usage (%) by Container



## Parser:
```
| json  "memory_stats.stats.swap" as swap nodrop
 `n```
### Use Cases:
CPU Total Usage (Jiffy) per Minute by Container, Kernel CPU Usage (%) by Container, Major Fault Total Count by Container, Page Fault Increment per Minute by Container, Swap Size by Container, Throttled Time (Second) by Container, Total CPU Consumption (%) Over Time by Container, Total Page Fault Increment, Unevictable Memory Increment by Container, User CPU Usage (%) by Container



## Parser:
```
| json  "memory_stats.stats.total_pgmajfault" as total_pgmajfault nodrop
 `n```
### Use Cases:
CPU Total Usage (Jiffy) per Minute by Container, Kernel CPU Usage (%) by Container, Major Fault Total Count by Container, Throttled Time (Second) by Container, Total CPU Consumption (%) Over Time by Container, Total Page Fault Increment, Unevictable Memory Increment by Container, User CPU Usage (%) by Container



## Parser:
```
| json "cpu_stats.cpu_usage.total_usage" as cpu_total_usage 
 `n```
### Use Cases:
CPU Total Usage (Jiffy) per Minute by Container, Throttled Time (Second) by Container



## Parser:
```
| json "cpu_stats.system_cpu_usage","cpu_stats.cpu_usage.usage_in_usermode" as  system_cpu_usage,cpu_user_usage 
 `n```
### Use Cases:
CPU Total Usage (Jiffy) per Minute by Container, Throttled Time (Second) by Container, User CPU Usage (%) by Container



## Parser:
```
| json "cpu_stats.system_cpu_usage","cpu_stats.cpu_usage.usage_in_usermode","cpu_stats.cpu_usage.usage_in_kernelmode" as  system_cpu_usage,cpu_user_usage,cpu_kernel_usage 
 `n```
### Use Cases:
CPU Total Usage (Jiffy) per Minute by Container, Kernel CPU Usage (%) by Container, Throttled Time (Second) by Container, Total CPU Consumption (%) Over Time by Container, User CPU Usage (%) by Container



## Parser:
```
| json "cpu_stats.system_cpu_usage","cpu_stats.cpu_usage.usage_in_usermode","cpu_stats.cpu_usage.usage_in_kernelmode" as  system_cpu_usage,cpu_user_usage,cpu_kernel_usage nodrop
 `n```
### Use Cases:
Container Actions, Containers Created/Started, Containers Stopped/Paused, CPU Total Usage (Jiffy) per Minute by Container, Kernel CPU Usage (%) by Container, Major Fault Total Count by Container, Page Fault Increment per Minute by Container, Receive Errors by Container, Received Packets by Container, Received Traffic (MB) by Container, Send Errors by Container, Sent Packets by Container, Sent Traffic (MB) by Container, Swap Size by Container, Throttled Time (Second) by Container, Top 10 Containers by Avg Resident Memory Consumption (KB), Top 10 Containers by CPU Consumption (%), Top 10 Containers by Traffic Sent and Received (MB), Top Containers by RSS Memory (KB) Over Time, Total CPU Consumption (%) Over Time by Container, Total Network Error Count, Total Page Fault Increment, Unevictable Memory Increment by Container, User CPU Usage (%) by Container



## Parser:
```
| json "cpu_stats.throttling_data.throttled_time" as  throttled_time 
 `n```
### Use Cases:
Throttled Time (Second) by Container



## Parser:
```
| json "memory_stats.stats.rss" as rss nodrop
 `n```
### Use Cases:
CPU Total Usage (Jiffy) per Minute by Container, Kernel CPU Usage (%) by Container, Major Fault Total Count by Container, Page Fault Increment per Minute by Container, Receive Errors by Container, Received Packets by Container, Received Traffic (MB) by Container, Send Errors by Container, Sent Packets by Container, Sent Traffic (MB) by Container, Swap Size by Container, Throttled Time (Second) by Container, Top 10 Containers by Avg Resident Memory Consumption (KB), Top Containers by RSS Memory (KB) Over Time, Total CPU Consumption (%) Over Time by Container, Total Network Error Count, Total Page Fault Increment, Unevictable Memory Increment by Container, User CPU Usage (%) by Container



## Parser:
```
| json "memory_stats.stats.rss" as rss nodrop | rss/1024 as rss 
 `n```
### Use Cases:
CPU Total Usage (Jiffy) per Minute by Container, Kernel CPU Usage (%) by Container, Major Fault Total Count by Container, Page Fault Increment per Minute by Container, Swap Size by Container, Throttled Time (Second) by Container, Top Containers by RSS Memory (KB) Over Time, Total CPU Consumption (%) Over Time by Container, Total Page Fault Increment, Unevictable Memory Increment by Container, User CPU Usage (%) by Container



## Parser:
```
| json "memory_stats.stats.total_pgfault" as total_pgfault
 `n```
### Use Cases:
CPU Total Usage (Jiffy) per Minute by Container, Kernel CPU Usage (%) by Container, Major Fault Total Count by Container, Page Fault Increment per Minute by Container, Throttled Time (Second) by Container, Total CPU Consumption (%) Over Time by Container, Total Page Fault Increment, Unevictable Memory Increment by Container, User CPU Usage (%) by Container



## Parser:
```
| json "memory_stats.stats.total_pgfault" as total_pgfault nodrop
 `n```
### Use Cases:
CPU Total Usage (Jiffy) per Minute by Container, Kernel CPU Usage (%) by Container, Throttled Time (Second) by Container, Total CPU Consumption (%) Over Time by Container, Total Page Fault Increment, User CPU Usage (%) by Container



## Parser:
```
| json "memory_stats.stats.total_unevictable" as total_unevictable 
 `n```
### Use Cases:
CPU Total Usage (Jiffy) per Minute by Container, Kernel CPU Usage (%) by Container, Throttled Time (Second) by Container, Total CPU Consumption (%) Over Time by Container, Total Page Fault Increment, Unevictable Memory Increment by Container, User CPU Usage (%) by Container



## Parser:
```
| json "networks"
| parse regex field=networks "(?<ni>\w+)\":(?<metrics>\{[^\}]*?\}),?" multi
| json field=metrics "rx_bytes" as rcv_bytes 
 `n```
### Use Cases:
CPU Total Usage (Jiffy) per Minute by Container, Kernel CPU Usage (%) by Container, Major Fault Total Count by Container, Page Fault Increment per Minute by Container, Received Traffic (MB) by Container, Swap Size by Container, Throttled Time (Second) by Container, Top Containers by RSS Memory (KB) Over Time, Total CPU Consumption (%) Over Time by Container, Total Page Fault Increment, Unevictable Memory Increment by Container, User CPU Usage (%) by Container



## Parser:
```
| json "networks"
| parse regex field=networks "(?<ni>\w+)\":(?<metrics>\{[^\}]*?\}),?" multi
| json field=metrics "rx_errors" as recv_errors
 `n```
### Use Cases:
CPU Total Usage (Jiffy) per Minute by Container, Kernel CPU Usage (%) by Container, Major Fault Total Count by Container, Page Fault Increment per Minute by Container, Receive Errors by Container, Received Traffic (MB) by Container, Swap Size by Container, Throttled Time (Second) by Container, Top Containers by RSS Memory (KB) Over Time, Total CPU Consumption (%) Over Time by Container, Total Network Error Count, Total Page Fault Increment, Unevictable Memory Increment by Container, User CPU Usage (%) by Container



## Parser:
```
| json "networks"
| parse regex field=networks "(?<ni>\w+)\":(?<metrics>\{[^\}]*?\}),?" multi
| json field=metrics "rx_packets" as rcv_packets
 `n```
### Use Cases:
CPU Total Usage (Jiffy) per Minute by Container, Kernel CPU Usage (%) by Container, Major Fault Total Count by Container, Page Fault Increment per Minute by Container, Receive Errors by Container, Received Packets by Container, Received Traffic (MB) by Container, Send Errors by Container, Sent Packets by Container, Swap Size by Container, Throttled Time (Second) by Container, Top Containers by RSS Memory (KB) Over Time, Total CPU Consumption (%) Over Time by Container, Total Network Error Count, Total Page Fault Increment, Unevictable Memory Increment by Container, User CPU Usage (%) by Container



## Parser:
```
| json "networks"
| parse regex field=networks "(?<ni>\w+)\":(?<metrics>\{[^\}]*?\}),?" multi
| json field=metrics "tx_bytes" ,"rx_bytes"  as sent_bytes,recv_bytes 
 `n```
### Use Cases:
CPU Total Usage (Jiffy) per Minute by Container, Kernel CPU Usage (%) by Container, Major Fault Total Count by Container, Page Fault Increment per Minute by Container, Receive Errors by Container, Received Packets by Container, Received Traffic (MB) by Container, Send Errors by Container, Sent Packets by Container, Sent Traffic (MB) by Container, Swap Size by Container, Throttled Time (Second) by Container, Top 10 Containers by Avg Resident Memory Consumption (KB), Top 10 Containers by Traffic Sent and Received (MB), Top Containers by RSS Memory (KB) Over Time, Total CPU Consumption (%) Over Time by Container, Total Network Error Count, Total Page Fault Increment, Unevictable Memory Increment by Container, User CPU Usage (%) by Container



## Parser:
```
| json "networks"
| parse regex field=networks "(?<ni>\w+)\":(?<metrics>\{[^\}]*?\}),?" multi
| json field=metrics "tx_bytes" as sent_bytes 
 `n```
### Use Cases:
CPU Total Usage (Jiffy) per Minute by Container, Kernel CPU Usage (%) by Container, Major Fault Total Count by Container, Page Fault Increment per Minute by Container, Receive Errors by Container, Received Packets by Container, Received Traffic (MB) by Container, Send Errors by Container, Sent Packets by Container, Sent Traffic (MB) by Container, Swap Size by Container, Throttled Time (Second) by Container, Top Containers by RSS Memory (KB) Over Time, Total CPU Consumption (%) Over Time by Container, Total Network Error Count, Total Page Fault Increment, Unevictable Memory Increment by Container, User CPU Usage (%) by Container



## Parser:
```
| json "networks"
| parse regex field=networks "(?<ni>\w+)\":(?<metrics>\{[^\}]*?\}),?" multi
| json field=metrics "tx_errors" as sent_errors
 `n```
### Use Cases:
CPU Total Usage (Jiffy) per Minute by Container, Kernel CPU Usage (%) by Container, Major Fault Total Count by Container, Page Fault Increment per Minute by Container, Receive Errors by Container, Received Traffic (MB) by Container, Send Errors by Container, Sent Packets by Container, Swap Size by Container, Throttled Time (Second) by Container, Top Containers by RSS Memory (KB) Over Time, Total CPU Consumption (%) Over Time by Container, Total Network Error Count, Total Page Fault Increment, Unevictable Memory Increment by Container, User CPU Usage (%) by Container



## Parser:
```
| json "networks"
| parse regex field=networks "(?<ni>\w+)\":(?<metrics>\{[^\}]*?\}),?" multi
| json field=metrics "tx_errors", "rx_errors" as sent_errors,recv_errors
 `n```
### Use Cases:
Container Actions, Containers Created/Started, Containers Stopped/Paused, CPU Total Usage (Jiffy) per Minute by Container, Kernel CPU Usage (%) by Container, Major Fault Total Count by Container, Page Fault Increment per Minute by Container, Receive Errors by Container, Received Packets by Container, Received Traffic (MB) by Container, Send Errors by Container, Sent Packets by Container, Sent Traffic (MB) by Container, Swap Size by Container, Throttled Time (Second) by Container, Top 10 Containers by Avg Resident Memory Consumption (KB), Top 10 Containers by CPU Consumption (%), Top 10 Containers by Traffic Sent and Received (MB), Top Containers by RSS Memory (KB) Over Time, Total CPU Consumption (%) Over Time by Container, Total Network Error Count, Total Page Fault Increment, Unevictable Memory Increment by Container, User CPU Usage (%) by Container



## Parser:
```
| json "networks"
| parse regex field=networks "(?<ni>\w+)\":(?<metrics>\{[^\}]*?\}),?" multi
| json field=metrics "tx_packets" as sent_packets
 `n```
### Use Cases:
CPU Total Usage (Jiffy) per Minute by Container, Kernel CPU Usage (%) by Container, Major Fault Total Count by Container, Page Fault Increment per Minute by Container, Receive Errors by Container, Received Traffic (MB) by Container, Sent Packets by Container, Swap Size by Container, Throttled Time (Second) by Container, Top Containers by RSS Memory (KB) Over Time, Total CPU Consumption (%) Over Time by Container, Total Network Error Count, Total Page Fault Increment, Unevictable Memory Increment by Container, User CPU Usage (%) by Container



## Parser:
```
| parse "\"status\":\"*\"" as status, "\"id\":\"*\"" as container_id, "\"from\":\"*\"" as image
 `n```
### Use Cases:
Container Actions, Containers Created/Started, Containers Stopped/Paused, CPU Total Usage (Jiffy) per Minute by Container, Kernel CPU Usage (%) by Container, Major Fault Total Count by Container, Page Fault Increment per Minute by Container, Receive Errors by Container, Received Packets by Container, Received Traffic (MB) by Container, Send Errors by Container, Sent Packets by Container, Sent Traffic (MB) by Container, Swap Size by Container, Throttled Time (Second) by Container, Top 10 Containers by Avg Resident Memory Consumption (KB), Top 10 Containers by Traffic Sent and Received (MB), Top Containers by RSS Memory (KB) Over Time, Total CPU Consumption (%) Over Time by Container, Total Network Error Count, Total Page Fault Increment, Unevictable Memory Increment by Container, User CPU Usage (%) by Container


