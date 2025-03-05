# Parsers For JMX

## Parser:
```
| parse field=jolokia_agent_url * as Server | 
```
### Use Cases:
Memory Cleared across Memory Pool (MB), Memory Cleared across Memory Pools, Memory Cleared by Garbage Collection (MB), Operating System Information, Supported Thread Flags, Thread Allocated Memory, Thread Contention Monitoring, Thread Cpu Time



## Parser:
```
| parse field=metric java_lang_GarbageCollector_LastGcInfo_*UsageAfterGc_*_used as unused, MemoryPoolName | 
```
### Use Cases:
Memory Cleared across Memory Pool (MB), Memory Cleared across Memory Pools, Memory Cleared by Garbage Collection (MB), Operating System Information, Supported Thread Flags, Thread Allocated Memory, Thread Contention Monitoring, Thread Cpu Time



## Parser:
```
| parse field=metric java_lang_Threading_*Supported as Flag | 
```
### Use Cases:
Memory Cleared across Memory Pool (MB), Memory Cleared across Memory Pools, Memory Cleared by Garbage Collection (MB), Operating System Information, Supported Thread Flags, Thread Allocated Memory, Thread Contention Monitoring, Thread Cpu Time



## Parser:
```
| parse field=metric java_lang_Threading_ThreadAllocatedMemory* as Flag | 
```
### Use Cases:
Memory Cleared across Memory Pool (MB), Memory Cleared across Memory Pools, Memory Cleared by Garbage Collection (MB), Operating System Information, Supported Thread Flags, Thread Allocated Memory, Thread Contention Monitoring, Thread Cpu Time



## Parser:
```
| parse field=metric java_lang_Threading_ThreadContentionMonitoring* as Flag | 
```
### Use Cases:
Memory Cleared across Memory Pool (MB), Memory Cleared across Memory Pools, Memory Cleared by Garbage Collection (MB), Operating System Information, Supported Thread Flags, Thread Allocated Memory, Thread Contention Monitoring, Thread Cpu Time



## Parser:
```
| parse field=metric java_lang_Threading_ThreadCpuTime* as Flag | 
```
### Use Cases:
Memory Cleared across Memory Pool (MB), Memory Cleared across Memory Pools, Memory Cleared by Garbage Collection (MB), Operating System Information, Supported Thread Flags, Thread Allocated Memory, Thread Contention Monitoring, Thread Cpu Time


