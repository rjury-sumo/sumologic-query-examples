# Parsers For Kafka

## Parser:
```
| json auto maxdepth 1 nodrop
| parse field=kafka_log_message "[*] * *" as date_time,severity,msg
```
### Use Cases:
Active Controller, Broker Shutdown Events, Brokers Added/Started Events, Error Over Time, Events by  Severity, Failed Fetch Request - One Minute Rate, Failed Fetch Request Count, Failed Produce Request - One Minute Rate, Failed Produce Request Count, Fetch Purgatory Size, Fetch Request Rate Per Second, Last 10 Errors, Leader Election Count, Leader Partition Count, Log flush rate and time (ms), Log Reduce, Memory Cleared across Memory Pool (MB), Memory Cleared across Memory Pools, Messages In per second, Messages In per second (1 min rate), Messages In per second (15 min rate), Messages In per second (5 min rate), Offline Partition Count, Operating System Information, Partition Count, Produce Purgatory Size, Produce Request Rate Per Second, Request Handle Avg Idle Percent, Request Local Time, Request Queue Time, Request Remote Time, Request Total Time, Response Queue Time, Response Send Time, Supported Thread Flags, Thread Allocated Memory, Thread Contention Monitoring, Thread CPU Time, Top 10 Errors, Traffic IN  (1 min rate), Traffic IN  (15 min rate), Traffic IN  (5 min rate), Traffic IN (Count), Traffic OUT, Traffic OUT  (1 min rate), Traffic OUT  (15 min rate), Traffic OUT  (5 min rate), Unclean Leader Election Count, Under Min ISR Partitions, Under Replicated Partitions



## Parser:
```
| parse field=jolokia_agent_url * as Server
```
### Use Cases:
Active Controller, Active Controllers for Brokers, Broker Shutdown Events, Brokers Added/Started Events, Bytes IN Per Second  (1 min rate), Bytes IN Per Second  (15 min rate), Bytes IN Per Second  (5 min rate), Bytes IN Per Second  (Count), Bytes IN Per Second (Mean rate), Bytes OUT Per Second  (15 min rate), Bytes OUT Per Second - Count, Bytes OUT Per Second (1 min rate), Bytes OUT Per Second (5 min rate), Bytes OUT Per Second (Mean rate), Error Over Time, Events by  Severity, Failed Fetch Request - One Minute Rate, Failed Fetch Request Count, Failed ISR Updates - One Minute Rate, Failed Produce Request - One Minute Rate, Failed Produce Request Count, Fetch Purgatory Size, Fetch Request Rate, Fetch Request Rate Per Second, In-Sync Replicas (ISR) Expand Rate - One  Minute Rate, In-Sync Replicas (ISR) Shrink Rate - One  Minute Rate, Incoming Bytes and Topics by Server, ISR Shrink Vs Expand Rate, Last 10 Errors, Leader Election Count, Leader Partition Count, Leader Partitions, Log End Offset (Latest), Log EndOffset - Start Offset, Log flush rate and time (ms), Log Reduce, Log Segment Count, Log Start Offset (Earliest), Memory Cleared across Memory Pool (MB), Memory Cleared across Memory Pools, Messages In per second, Messages In per second (1 min rate), Messages In Per Second (1 min rate), Messages In per second (15 min rate), Messages In Per Second (15 min rate), Messages In Per Second (5 min rate), Messages In per second (5 min rate), Messages In Per Second (count), Messages In Per Second (Mean rate), Number of Topics, Offline Partition Count, Operating System Information, Partition Count, Partition Size, Partitions, Produce Purgatory Size, Produce Request Rate, Produce Request Rate Per Second, Request Handle Avg Idle Percent, Request Handler Idle Percent, Request Local Time, Request Queue Time, Request Remote Time, Request Total Time, Response Queue Time, Response Send Time, Supported Thread Flags, Thread Allocated Memory, Thread Contention Monitoring, Thread CPU Time, Top 10 Errors, Traffic IN  (1 min rate), Traffic IN  (15 min rate), Traffic IN  (5 min rate), Traffic IN (Count), Traffic OUT, Traffic OUT  (1 min rate), Traffic OUT  (15 min rate), Traffic OUT  (5 min rate), Unclean Leader Election Count, Under Min ISR Partitions, Under Min ISR Partitions Count, Under Replicated Partition by Topic, Under Replicated Partitions, Under Replicated Partitions Count, Zookeepers



## Parser:
```
| parse field=jolokia_agent_url * as Server  |```
### Use Cases:
Active Controller, Active Controllers for Brokers, Broker Shutdown Events, Brokers Added/Started Events, Bytes IN Per Second  (1 min rate), Bytes IN Per Second  (15 min rate), Bytes IN Per Second  (5 min rate), Bytes IN Per Second  (Count), Bytes IN Per Second (Mean rate), Bytes OUT Per Second  (15 min rate), Bytes OUT Per Second - Count, Bytes OUT Per Second (1 min rate), Bytes OUT Per Second (5 min rate), Bytes OUT Per Second (Mean rate), Error Over Time, Events by  Severity, Failed Fetch Request - One Minute Rate, Failed Fetch Request Count, Failed ISR Updates - One Minute Rate, Failed Produce Request - One Minute Rate, Failed Produce Request Count, Fetch Purgatory Size, Fetch Request Rate Per Second, In-Sync Replicas (ISR) Expand Rate - One  Minute Rate, In-Sync Replicas (ISR) Shrink Rate - One  Minute Rate, Incoming Bytes and Topics by Server, ISR Shrink Vs Expand Rate, Last 10 Errors, Leader Election Count, Leader Partition Count, Leader Partitions, Log EndOffset - Start Offset, Log flush rate and time (ms), Log Reduce, Memory Cleared across Memory Pool (MB), Memory Cleared across Memory Pools, Messages In per second, Messages In per second (1 min rate), Messages In per second (15 min rate), Messages In per second (5 min rate), Messages In Per Second (count), Number of Topics, Offline Partition Count, Operating System Information, Partition Count, Partitions, Produce Purgatory Size, Produce Request Rate Per Second, Request Handle Avg Idle Percent, Request Handler Idle Percent, Request Local Time, Request Queue Time, Request Remote Time, Request Total Time, Response Queue Time, Response Send Time, Supported Thread Flags, Thread Allocated Memory, Thread Contention Monitoring, Thread CPU Time, Top 10 Errors, Traffic IN  (1 min rate), Traffic IN  (15 min rate), Traffic IN  (5 min rate), Traffic IN (Count), Traffic OUT, Traffic OUT  (1 min rate), Traffic OUT  (15 min rate), Traffic OUT  (5 min rate), Unclean Leader Election Count, Under Min ISR Partitions, Under Min ISR Partitions Count, Under Replicated Partition by Topic, Under Replicated Partitions, Under Replicated Partitions Count, Zookeepers



## Parser:
```
| parse field=jolokia_agent_url * as Server |```
### Use Cases:
Active Controller, Active Controllers for Brokers, Broker Shutdown Events, Brokers Added/Started Events, Bytes IN Per Second  (1 min rate), Bytes IN Per Second  (15 min rate), Bytes IN Per Second  (5 min rate), Bytes IN Per Second  (Count), Bytes IN Per Second (Mean rate), Bytes OUT Per Second  (15 min rate), Bytes OUT Per Second - Count, Bytes OUT Per Second (1 min rate), Bytes OUT Per Second (5 min rate), Bytes OUT Per Second (Mean rate), Error Over Time, Events by  Severity, Failed Fetch Request - One Minute Rate, Failed Fetch Request Count, Failed ISR Updates - One Minute Rate, Failed Produce Request - One Minute Rate, Failed Produce Request Count, Fetch Purgatory Size, Fetch Request Rate, Fetch Request Rate Per Second, In-Sync Replicas (ISR) Expand Rate - One  Minute Rate, In-Sync Replicas (ISR) Shrink Rate - One  Minute Rate, Incoming Bytes and Topics by Server, ISR Shrink Vs Expand Rate, Last 10 Errors, Leader Election Count, Leader Partition Count, Leader Partitions, Log EndOffset - Start Offset, Log flush rate and time (ms), Log Reduce, Log Start Offset (Earliest), Memory Cleared across Memory Pool (MB), Memory Cleared across Memory Pools, Messages In per second, Messages In per second (1 min rate), Messages In Per Second (1 min rate), Messages In Per Second (15 min rate), Messages In per second (15 min rate), Messages In per second (5 min rate), Messages In Per Second (5 min rate), Messages In Per Second (count), Messages In Per Second (Mean rate), Number of Topics, Offline Partition Count, Operating System Information, Partition Count, Partitions, Produce Purgatory Size, Produce Request Rate Per Second, Request Handle Avg Idle Percent, Request Handler Idle Percent, Request Local Time, Request Queue Time, Request Remote Time, Request Total Time, Response Queue Time, Response Send Time, Supported Thread Flags, Thread Allocated Memory, Thread Contention Monitoring, Thread CPU Time, Top 10 Errors, Traffic IN  (1 min rate), Traffic IN  (15 min rate), Traffic IN  (5 min rate), Traffic IN (Count), Traffic OUT, Traffic OUT  (1 min rate), Traffic OUT  (15 min rate), Traffic OUT  (5 min rate), Unclean Leader Election Count, Under Min ISR Partitions, Under Min ISR Partitions Count, Under Replicated Partition by Topic, Under Replicated Partitions, Under Replicated Partitions Count, Zookeepers



## Parser:
```
| parse field=jolokia_agent_url * as Server | count by topic | count
```
### Use Cases:
Active Controller, Active Controllers for Brokers, Broker Shutdown Events, Brokers Added/Started Events, Error Over Time, Events by  Severity, Failed Fetch Request - One Minute Rate, Failed Fetch Request Count, Failed ISR Updates - One Minute Rate, Failed Produce Request - One Minute Rate, Failed Produce Request Count, Fetch Purgatory Size, Fetch Request Rate Per Second, In-Sync Replicas (ISR) Expand Rate - One  Minute Rate, In-Sync Replicas (ISR) Shrink Rate - One  Minute Rate, ISR Shrink Vs Expand Rate, Last 10 Errors, Leader Election Count, Leader Partition Count, Leader Partitions, Log flush rate and time (ms), Log Reduce, Memory Cleared across Memory Pool (MB), Memory Cleared across Memory Pools, Messages In per second, Messages In per second (1 min rate), Messages In per second (15 min rate), Messages In per second (5 min rate), Number of Topics, Offline Partition Count, Operating System Information, Partition Count, Partitions, Produce Purgatory Size, Produce Request Rate Per Second, Request Handle Avg Idle Percent, Request Handler Idle Percent, Request Local Time, Request Queue Time, Request Remote Time, Request Total Time, Response Queue Time, Response Send Time, Supported Thread Flags, Thread Allocated Memory, Thread Contention Monitoring, Thread CPU Time, Top 10 Errors, Traffic IN  (1 min rate), Traffic IN  (15 min rate), Traffic IN  (5 min rate), Traffic IN (Count), Traffic OUT, Traffic OUT  (1 min rate), Traffic OUT  (15 min rate), Traffic OUT  (5 min rate), Unclean Leader Election Count, Under Min ISR Partitions, Under Min ISR Partitions Count, Under Replicated Partitions, Under Replicated Partitions Count, Zookeepers



## Parser:
```
| parse field=jolokia_agent_url * as Server | filter max=1  |```
### Use Cases:
Active Controller, Active Controllers for Brokers, Broker Shutdown Events, Brokers Added/Started Events, Error Over Time, Events by  Severity, Failed Fetch Request - One Minute Rate, Failed Fetch Request Count, Failed Produce Request - One Minute Rate, Failed Produce Request Count, Fetch Purgatory Size, Fetch Request Rate Per Second, Last 10 Errors, Leader Election Count, Leader Partition Count, Leader Partitions, Log flush rate and time (ms), Log Reduce, Memory Cleared across Memory Pool (MB), Memory Cleared across Memory Pools, Messages In per second, Messages In per second (1 min rate), Messages In per second (15 min rate), Messages In per second (5 min rate), Offline Partition Count, Operating System Information, Partition Count, Partitions, Produce Purgatory Size, Produce Request Rate Per Second, Request Handle Avg Idle Percent, Request Handler Idle Percent, Request Local Time, Request Queue Time, Request Remote Time, Request Total Time, Response Queue Time, Response Send Time, Supported Thread Flags, Thread Allocated Memory, Thread Contention Monitoring, Thread CPU Time, Top 10 Errors, Traffic IN  (1 min rate), Traffic IN  (15 min rate), Traffic IN  (5 min rate), Traffic IN (Count), Traffic OUT, Traffic OUT  (1 min rate), Traffic OUT  (15 min rate), Traffic OUT  (5 min rate), Unclean Leader Election Count, Under Min ISR Partitions, Under Replicated Partitions, Zookeepers



## Parser:
```
| parse field=metric java_lang_GarbageCollector_LastGcInfo*UsageAfterGc*used as unused, MemoryPoolName |```
### Use Cases:
Memory Cleared across Memory Pool (MB), Memory Cleared across Memory Pools, Operating System Information



## Parser:
```
| parse field=metric java_lang_Threading_*Supported as Flag |```
### Use Cases:
Memory Cleared across Memory Pool (MB), Memory Cleared across Memory Pools, Operating System Information, Supported Thread Flags, Thread Allocated Memory, Thread Contention Monitoring, Thread CPU Time



## Parser:
```
| parse field=metric java_lang_Threading_ThreadAllocatedMemory* as Flag |```
### Use Cases:
Memory Cleared across Memory Pool (MB), Memory Cleared across Memory Pools, Operating System Information, Thread Allocated Memory



## Parser:
```
| parse field=metric java_lang_Threading_ThreadContentionMonitoring* as Flag |```
### Use Cases:
Memory Cleared across Memory Pool (MB), Memory Cleared across Memory Pools, Operating System Information, Thread Allocated Memory, Thread Contention Monitoring



## Parser:
```
| parse field=metric java_lang_Threading_ThreadCpuTime* as Flag |```
### Use Cases:
Memory Cleared across Memory Pool (MB), Memory Cleared across Memory Pools, Operating System Information, Thread Allocated Memory, Thread Contention Monitoring, Thread CPU Time


