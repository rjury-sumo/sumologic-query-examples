# Host Metrics
## Sumo Logic App For: Host Metrics
The Host Metrics app allows you to monitor the performance and resource utilization of hosts and processes that your mission critical applications are dependent upon. Preconfigured dashboards provide insight into CPU, memory, network, file descriptors, page faults and TCP connectors. This app uses the Sumo Logic installed collector for collection of host metrics data.
Docs Link: [Host Metrics](https://help.sumologic.com/?cid=6014)

## Searches

### Log Searches


### Metric Searches

- **CloseWait Connections per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - TCP 
- **CPU 1min Average Load  per Host**: from Dashboard: Host Metrics/Host Metrics - CPU - New 
- **CPU 1min Average Load  per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - CPU 
- **CPU Idle Time per Host**: from Dashboard: Host Metrics/Host Metrics - CPU - New 
- **CPU Idle Time per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - CPU 
- **CPU IO Wait Time per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - CPU 
- **CPU IO Wait Time per Host**: from Dashboard: Host Metrics/Host Metrics - CPU - New 
- **CPU System Time per Host**: from Dashboard: Host Metrics/Host Metrics - CPU - New 
- **CPU System Time per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - CPU 
- **CPU User Time per Host**: from Dashboard: Host Metrics/Host Metrics - CPU - New 
- **CPU User Time per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - CPU 
- **Disk Available Bytes per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Disk 
- **Disk Available Bytes per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Overview 
- **Disk Read Byte Rate per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Disk 
- **Disk Read Rate per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Disk 
- **Disk Used Bytes per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Overview 
- **Disk Used Bytes per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Disk 
- **Disk Write Byte Rate per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Disk 
- **Disk Write Rate per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Disk 
- **Established Connections per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - TCP 
- **Inbound Connections per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - TCP 
- **Listen Connections per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - TCP 
- **Network  InPacket Rate per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Network 
- **Network InByte  Rate per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Overview 
- **Network InByte Rate per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Network 
- **Network OutByte Rate per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Overview 
- **Network OutByte Rate per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Network 
- **Network OutPacket Rate per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Network 
- **Outbound Connections per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - TCP 
- **Overall Average CPU Idle**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Overview 
- **Overall Average CPU Idle Time**: from Dashboard: Host Metrics/Host Metrics - CPU - New 
- **Overall Average CPU Idle Time**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - CPU 
- **Overall Average CPU Load (1m, 5m, 15m)**: from Dashboard: Host Metrics/Host Metrics - CPU - New 
- **Overall Average CPU Load (1m, 5m, 15m)**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Overview 
- **Overall Average CPU Load (1m, 5m, 15m)**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - CPU 
- **Overall Average CPU System Time**: from Dashboard: Host Metrics/Host Metrics - CPU - New 
- **Overall Average CPU System Time**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - CPU 
- **Overall Average CPU User Time**: from Dashboard: Host Metrics/Host Metrics - CPU - New 
- **Overall Average CPU User Time**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - CPU 
- **Percent Memory Used per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Memory 
- **TimeWait Connections per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - TCP 
- **Total Free Memory per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Memory 
- **Total Free System Memory per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Overview 
- **Total Free, Buffers and Cached Memory per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Memory 
- **Total Memory per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Memory 
- **Total Used System Memory per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Memory 
- **Total Used, Less Buffers and Cached Memory per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Memory 
- **Total Used, Less Buffers and Cached Memory per Host**: from Dashboard: Installed Apps/Host Metrics/Host Metrics - Overview

## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|Host Metrics|CloseWait Connections per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - TCP|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=TCP\_CloseWait \| avg by \_sourcehost|
|Host Metrics|CPU 1min Average Load  per Host|Metrics|Host Metrics/Host Metrics - CPU - New|\_collector={{\_collector}} \_source={{\_source}} \_sourcecategory={{\_sourcecategory}} \_sourcehost={{\_sourcehost}} \_sourceCategory = host\_metrics  metric=CPU\_LoadAvg\_1min\* |
|Host Metrics|CPU 1min Average Load  per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - CPU|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}   metric=CPU\_LoadAvg\_1min\* \| avg by \_sourcehost|
|Host Metrics|CPU Idle Time per Host|Metrics|Host Metrics/Host Metrics - CPU - New|\_collector={{\_collector}} \_source={{\_source}} \_sourcecategory={{\_sourcecategory}} \_sourcehost={{\_sourcehost}} \_sourceCategory = host\_metrics  metric=CPU\_Idle \| avg by \_sourceCategory|
|Host Metrics|CPU Idle Time per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - CPU|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}   metric=CPU\_Idle \| avg by \_sourceHost|
|Host Metrics|CPU IO Wait Time per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - CPU|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}   metric=CPU\_IOWait \| avg by \_sourcehost|
|Host Metrics|CPU IO Wait Time per Host|Metrics|Host Metrics/Host Metrics - CPU - New|\_collector={{\_collector}} \_source={{\_source}} \_sourcecategory={{\_sourcecategory}} \_sourcehost={{\_sourcehost}} \_sourceCategory = host\_metrics  metric=CPU\_IOWait|
|Host Metrics|CPU System Time per Host|Metrics|Host Metrics/Host Metrics - CPU - New|\_collector={{\_collector}} \_source={{\_source}} \_sourcecategory={{\_sourcecategory}} \_sourcehost={{\_sourcehost}} \_sourceCategory = host\_metrics  metric=CPU\_Sys|
|Host Metrics|CPU System Time per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - CPU|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}   metric=CPU\_Sys \| avg by \_sourcehost|
|Host Metrics|CPU User Time per Host|Metrics|Host Metrics/Host Metrics - CPU - New|\_collector={{\_collector}} \_source={{\_source}} \_sourcecategory={{\_sourcecategory}} \_sourcehost={{\_sourcehost}} \_sourceCategory = host\_metrics metric=CPU\_User|
|Host Metrics|CPU User Time per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - CPU|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=CPU\_User \| avg by \_sourcehost|
|Host Metrics|Disk Available Bytes per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Disk|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}   metric=Disk\_Available |
|Host Metrics|Disk Available Bytes per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Overview|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}   metric=Disk\_Available |
|Host Metrics|Disk Read Byte Rate per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Disk|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=Disk\_ReadBytes \| sum by \_sourceHost \| rate|
|Host Metrics|Disk Read Rate per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Disk|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=Disk\_Reads \| sum by \_sourceHost \| rate|
|Host Metrics|Disk Used Bytes per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Overview|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}    metric=Disk\_Used |
|Host Metrics|Disk Used Bytes per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Disk|\_sourceCategory={{Metricsdatasource}}  metric=Disk\_Used \_sourceHost={{\_sourcehost}} |
|Host Metrics|Disk Write Byte Rate per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Disk|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=Disk\_WriteBytes \| sum by \_sourceHost \| rate|
|Host Metrics|Disk Write Rate per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Disk|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=Disk\_Writes \| sum by \_sourceHost \| rate|
|Host Metrics|Established Connections per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - TCP|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=TCP\_Established \| avg by \_sourcehost|
|Host Metrics|Inbound Connections per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - TCP|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=TCP\_InboundTotal \| avg by \_sourcehost|
|Host Metrics|Listen Connections per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - TCP|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=TCP\_Listen \| avg by \_sourcehost|
|Host Metrics|Network  InPacket Rate per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Network|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}   metric=Net\_InPackets \| sum by \_sourceHost \| rate|
|Host Metrics|Network InByte  Rate per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Overview|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=Net\_InBytes \| sum by \_sourceHost \| rate|
|Host Metrics|Network InByte Rate per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Network|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=Net\_InBytes \| sum by \_sourceHost \| rate|
|Host Metrics|Network OutByte Rate per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Overview|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}   metric=Net\_OutBytes \| sum by \_sourceHost \| rate|
|Host Metrics|Network OutByte Rate per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Network|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=Net\_OutBytes \| sum by \_sourceHost \| rate|
|Host Metrics|Network OutPacket Rate per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Network|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=Net\_OutPackets \| sum by \_sourceHost \| rate|
|Host Metrics|Outbound Connections per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - TCP|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=TCP\_OutboundTotal \| avg by \_sourcehost|
|Host Metrics|Overall Average CPU Idle|Metrics|Installed Apps/Host Metrics/Host Metrics - Overview|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=CPU\_Idle \| avg by \_sourcehost |
|Host Metrics|Overall Average CPU Idle Time|Metrics|Host Metrics/Host Metrics - CPU - New|\_collector={{\_collector}} \_source={{\_source}} \_sourcecategory={{\_sourcecategory}} \_sourcehost={{\_sourcehost}} \_sourceCategory = host\_metrics  metric=CPU\_Idle \| avg |
|Host Metrics|Overall Average CPU Idle Time|Metrics|Installed Apps/Host Metrics/Host Metrics - CPU|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}   metric=CPU\_Idle \| avg by \_sourceHost|
|Host Metrics|Overall Average CPU Load (1m, 5m, 15m)|Metrics|Host Metrics/Host Metrics - CPU - New|\_collector={{\_collector}} \_source={{\_source}} \_sourcecategory={{\_sourcecategory}} \_sourcehost={{\_sourcehost}} \_sourceCategory = host\_metrics  metric=CPU\_LoadAvg\_1min \| avg by metric|
|Host Metrics|Overall Average CPU Load (1m, 5m, 15m)|Metrics|Installed Apps/Host Metrics/Host Metrics - Overview|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}   metric=CPU\_LoadAvg\_1min \| avg by \_sourceHost|
|Host Metrics|Overall Average CPU Load (1m, 5m, 15m)|Metrics|Installed Apps/Host Metrics/Host Metrics - CPU|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}   metric=CPU\_LoadAvg\_1min \| avg by \_sourceHost|
|Host Metrics|Overall Average CPU System Time|Metrics|Host Metrics/Host Metrics - CPU - New|\_collector={{\_collector}} \_source={{\_source}} \_sourcecategory={{\_sourcecategory}} \_sourcehost={{\_sourcehost}} \_sourceCategory = host\_metrics  metric=CPU\_Sys \| avg|
|Host Metrics|Overall Average CPU System Time|Metrics|Installed Apps/Host Metrics/Host Metrics - CPU|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}   metric=CPU\_Sys \| avg by \_sourceHost|
|Host Metrics|Overall Average CPU User Time|Metrics|Host Metrics/Host Metrics - CPU - New|\_collector={{\_collector}} \_source={{\_source}} \_sourcecategory={{\_sourcecategory}} \_sourcehost={{\_sourcehost}} \_sourceCategory = host\_metrics  metric=CPU\_User   \| avg |
|Host Metrics|Overall Average CPU User Time|Metrics|Installed Apps/Host Metrics/Host Metrics - CPU|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}   metric=CPU\_User   \| avg by \_sourceHost|
|Host Metrics|Percent Memory Used per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Memory|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=Mem\_UsedPercent \| avg by \_sourcehost|
|Host Metrics|TimeWait Connections per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - TCP|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=TCP\_TimeWait \| avg by \_sourcehost|
|Host Metrics|Total Free Memory per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Memory|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=Mem\_Free \| avg by \_sourcehost|
|Host Metrics|Total Free System Memory per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Overview|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}   metric=Mem\_Free \| avg by \_sourcehost|
|Host Metrics|Total Free, Buffers and Cached Memory per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Memory|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=Mem\_ActualFree \| avg by \_sourcehost|
|Host Metrics|Total Memory per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Memory|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=Mem\_Total \| avg by \_sourcehost|
|Host Metrics|Total Used System Memory per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Memory|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=Mem\_Used \| avg by \_sourcehost|
|Host Metrics|Total Used, Less Buffers and Cached Memory per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Memory|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=Mem\_ActualUsed \| avg by \_sourcehost |
|Host Metrics|Total Used, Less Buffers and Cached Memory per Host|Metrics|Installed Apps/Host Metrics/Host Metrics - Overview|\_sourceCategory={{Metricsdatasource}}  \_sourceHost={{\_sourcehost}}  metric=Mem\_ActualUsed \| avg by \_sourcehost|

