# Parsers For Windows Performance

**Windows Performance/Alert - Hosts with High CPU during Last 15 mins/Alert - Hosts with High CPU during Last 15 mins**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfOS_Processor" "_Total"
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/Alert - Hosts with Low Available Memory in Last 15 Minutes/Alert - Hosts with Low Available Memory in Last 15 Minutes**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfOS_Memory" "AvailableBytes"
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/Avg IO Reads (per Second) per Host/Avg IO Reads (per Second) per Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfProc_Process" "_Total" "IOReadOperationsPersec" 
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/Avg IO Reads (per Second) per Process and Host/Avg IO Reads (per Second) per Process and Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfProc_Process" !"_Total" "IOReadOperationsPersec" 
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/Avg IO Writes (per Second) per Host/Avg IO Writes (per Second) per Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfProc_Process" "_Total" "IOWriteOperationsPersec" 
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/Avg IO Writes (per Second) per Process and Host/Avg IO Writes (per Second) per Process and Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfProc_Process" !"_Total" "IOWriteOperationsPersec" 
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/Avg MBytes Read by Host/Avg MBytes Read by Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfProc_Process" "_Total" "IOReadBytesPersec" 
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/Avg MBytes Written by Host/Avg MBytes Written by Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfProc_Process" "_Total" "IOWriteBytesPersec" 
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/Avg Other IO Operations (per Second) per Process and Host/Avg Other IO Operations (per Second) per Process and Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfProc_Process" !"_Total" "IOOtherOperationsPersec" 
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/Avg Other IO Operations per Host/Avg Other IO Operations per Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfProc_Process" "_Total" "IOOtherOperationsPersec" 
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/CPU Performance/Avg CPU Usage (%) by Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfOS_Processor" "_Total"
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/CPU Performance/Avg Privileged and User CPU Time (%) per Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfOS_Processor" "_Total"
| parse regex "winbox = (?<dest_host>\S+)" nodrop
```

**Windows Performance/CPU Performance/Top 10 Processes by Avg Privileged Time (%) per Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfProc_Process" !"_Total" "PercentPrivilegedTime"
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/CPU Performance/Top 10 Processes by Avg Processor Time (%) per Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfProc_Process" !"_Total" "PercentProcessorTime"
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/CPU Performance/Top 10 Processes by Avg User Time (%) per Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfProc_Process" !"_Total" "PercentUserTime"
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/Disk Performance/Avg Bytes Read and Written per Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfDisk_PhysicalDisk" "_Total"  
| parse regex "winbox = (?<dest_host>\S+)" nodrop  
```

**Windows Performance/Disk Performance/Avg Disk Queue Length per Physical Disk per Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfDisk_PhysicalDisk" "_Total"  
| parse regex "winbox = (?<dest_host>\S+)" nodrop  
```

**Windows Performance/Disk Performance/Avg Disk Time (%) by Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfDisk_PhysicalDisk" "_Total"  
| parse regex "winbox = (?<dest_host>\S+)" nodrop  
```

**Windows Performance/Disk Performance/Avg Read and Write Counts per Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfDisk_PhysicalDisk" "_Total"  
| parse regex "winbox = (?<dest_host>\S+)" nodrop  
```

**Windows Performance/Disk Performance/Avg Total Bytes (per Second) by Physical Disk per Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfDisk_PhysicalDisk" !"_Total"  
| parse regex "winbox = (?<dest_host>\S+)" nodrop  
```

**Windows Performance/Disk Performance/Avg Total RW Operations (per Second) by Physical Disk per Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfDisk_PhysicalDisk" !"_Total"  
| parse regex "winbox = (?<dest_host>\S+)" nodrop  
```

**Windows Performance/Memory Performance/Available Memory (MB) by Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfOS_Memory" "AvailableBytes"
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/Memory Performance/Avg PageFaults per Second by Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfOS_Memory" "PageFaultsPersec" 
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/Memory Performance/Avg Virtual Memory (MB) per Large Process by Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfProc_Process" !"_Total" "VirtualBytes" "Name"
| parse regex "winbox = (?<dest_host>\S+)" nodrop  
```

**Windows Performance/Memory Performance/Top 10 Processes with Largest Resident Memory**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfProc_Process" !"_Total" 
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/Memory Performance/Top 10 Virtual Memory Consumers per Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfProc_Process" !"_Total" "VirtualBytes"
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/Network Performance/Avg Bytes Received per Second per Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_Tcpip_NetworkInterface" "BytesReceivedPersec"
| parse regex "winbox = (?<dest_host>\S+)" nodrop  
```

**Windows Performance/Network Performance/Avg Bytes Sent per Second per Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_Tcpip_NetworkInterface" "BytesSentPersec"
| parse regex "winbox = (?<dest_host>\S+)" nodrop  
```

**Windows Performance/Network Performance/Avg Current Bandwidth by Interface per Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_Tcpip_NetworkInterface" 
| parse regex "winbox = (?<dest_host>\S+)" nodrop  
```

**Windows Performance/Network Performance/Avg Inbound Packets per Second**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_Tcpip_NetworkInterface" 
| parse regex "winbox = (?<dest_host>\S+)" nodrop  
```

**Windows Performance/Network Performance/Avg Outbound Packets per Second**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_Tcpip_NetworkInterface" 
| parse regex "winbox = (?<dest_host>\S+)" nodrop  
```

**Windows Performance/Network Performance/Avg Output Queue Length**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_Tcpip_NetworkInterface" "OutputQueueLength"
| parse regex "winbox = (?<dest_host>\S+)" nodrop  
```

**Windows Performance/Windows Performance Overview/Avg CPU Usage (%) by Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfOS_Processor" "_Total"
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/Windows Performance Overview/Avg Disk Time (%) by Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfDisk_PhysicalDisk" "_Total"  
| parse regex "winbox = (?<dest_host>\S+)" nodrop  
```

**Windows Performance/Windows Performance Overview/Top 10 Processes by Avg Processor Time (%) per Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfProc_Process" !"_Total" "PercentProcessorTime"
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/Windows Performance Overview/Top 10 Virtual Memory Consumers per Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_PerfProc_Process" !"_Total" "VirtualBytes"
| parse regex "winbox = (?<dest_host>\S+)" nodrop 
```

**Windows Performance/Windows Performance Overview/Total Bandwidth (Bytes) by Host**
```
_sourceCategory={{Logsdatasource}} "Win32_PerfFormattedData_Tcpip_NetworkInterface" 
| parse regex "winbox = (?<dest_host>\S+)" nodrop  
```


