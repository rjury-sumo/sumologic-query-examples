# Docker - OpenTelemetry

## Searches

### Log Searches

- **Container Events - One Day Time Comparison**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Overview 
- **Containers by State**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Overview 
- **Docker Events Over Time**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Overview 
- **Number of Containers Killed**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Overview 
- **Number of Containers Paused**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Overview 
- **Number of Containers Started**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Overview 
- **Number of Containers Stopped**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Overview 
- **Number of Docker Hosts**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Overview

### Metric Searches

- **Average Rx Bytes by Container**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Network Usage 
- **Average Rx Packets by Container**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Network Usage 
- **Average Tx Bytes by Container**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Network Usage 
- **Average Tx Packets by Container**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Network Usage 
- **Count of Page Faults by Container**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Memory Usage 
- **Count of Periods with Throttling Active.**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - CPU Usage 
- **Count of Rx Dropped Packets**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Network Usage 
- **Count of Rx Error Packets**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Network Usage 
- **Count of Tx Dropped Packets**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Network Usage 
- **Count of Tx Error Packets**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Network Usage 
- **CPU Usage by Image Name**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - CPU Usage 
- **CPU Usage in Kernel Mode**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - CPU Usage 
- **CPU Usage in User Mode**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - CPU Usage 
- **Current and Max Memory Usage**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Memory Usage 
- **Memory Limit by Container**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Memory Usage 
- **Memory that Cannot be Reclaimed**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Memory Usage 
- **Number of Bytes Transferred to/from the Disk**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Memory Usage 
- **Percentage of Memory Used by Container**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Memory Usage 
- **Time for Which Container was Throttled**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - CPU Usage 
- **Top 5 Containers by  Rx Bytes**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Overview 
- **Top 5 Containers by  Tx Bytes**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Overview 
- **Top 5 Containers by CPU Usage**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Overview 
- **Top 5 Containers by Memory Usage**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - Overview 
- **Total CPU Consumed by Container in Kernel Mode**: from Dashboard: Installed Apps/Docker - OpenTelemetry/Docker - CPU Usage

## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|Docker - OpenTelemetry|Average Rx Bytes by Container|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - Network Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}} metric=container.network.io.usage.rx\_bytes \| avg by container.name |
|Docker - OpenTelemetry|Average Rx Packets by Container|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - Network Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}}  metric=container.network.io.usage.rx\_packets 	\| avg by container.name |
|Docker - OpenTelemetry|Average Tx Bytes by Container|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - Network Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}}  metric=container.network.io.usage.tx\_bytes \| avg by container.name |
|Docker - OpenTelemetry|Average Tx Packets by Container|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - Network Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}}  metric=container.network.io.usage.tx\_packets 	\| avg by container.name |
|Docker - OpenTelemetry|Container Events - One Day Time Comparison|Logs|Installed Apps/Docker - OpenTelemetry/Docker - Overview|sumo.datasource=docker<br />\| json field=\_raw "status" as state<br />\| json field=\_raw "Type" as type<br />\| json field=\_raw "Actor.Attributes.image" as image<br />\| json field=\_raw "Actor.Attributes.name" as name<br />\| where image matches "{{container.image.name}}" AND state matches "{{state}}" AND name matches "{{container.name}}"<br />\|count by state, image, name<br />\| sort by \_count <br />\| compare with timeshift 1d|
|Docker - OpenTelemetry|Containers by State|Logs|Installed Apps/Docker - OpenTelemetry/Docker - Overview|sumo.datasource=docker<br />\| json field=\_raw "status" as state<br />\| json field=\_raw "Type" as type<br />\| json field=\_raw "Actor.Attributes.image" as image<br />\| json field=\_raw "Actor.Attributes.name" as name<br />\| json field=\_raw "time" as event\_time<br />\| event\_time\*1000 as event\_time<br />\| toLong(event\_time) as event\_time<br />\| formatDate(fromMillis(toLong(event\_time)), "MM-dd-yyyy HH:mm:ss") as event\_date<br />\| where image matches "{{container.image.name}}" AND state matches "{{state}}" AND name matches "{{container.name}}"<br />\|count by event\_date, image, name,state<br />\| sort by event\_date asc|
|Docker - OpenTelemetry|Count of Page Faults by Container|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - Memory Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}} metric=container.memory.pgfault	\| avg by container.name |
|Docker - OpenTelemetry|Count of Periods with Throttling Active.|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - CPU Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}} metric=container.cpu.throttling\_data.periods	  \| avg by container.name|
|Docker - OpenTelemetry|Count of Rx Dropped Packets|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - Network Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}}  metric=container.network.io.usage.rx\_dropped \| avg by container.name |
|Docker - OpenTelemetry|Count of Rx Error Packets|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - Network Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}}  metric=container.network.io.usage.rx\_errors  |
|Docker - OpenTelemetry|Count of Tx Dropped Packets|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - Network Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}}  metric=container.network.io.usage.tx\_dropped |
|Docker - OpenTelemetry|Count of Tx Error Packets|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - Network Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}}  metric=container.network.io.usage.tx\_errors  |
|Docker - OpenTelemetry|CPU Usage by Image Name|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - CPU Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}}  metric=container.cpu.usage.total \| avg by container.image.name |
|Docker - OpenTelemetry|CPU Usage in Kernel Mode|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - CPU Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}}  metric=container.cpu.usage.kernelmode \| avg by container.name|
|Docker - OpenTelemetry|CPU Usage in User Mode|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - CPU Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}} metric=container.cpu.usage.usermode \| avg by container.name|
|Docker - OpenTelemetry|Current and Max Memory Usage|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - Memory Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}} metric=container.memory.usage.total	\| avg by container.name |
|Docker - OpenTelemetry|Docker Events Over Time|Logs|Installed Apps/Docker - OpenTelemetry/Docker - Overview|sumo.datasource=docker<br />\| json field=\_raw "status" as state<br />\| json field=\_raw "Type" as type<br />\| json field=\_raw "Actor.Attributes.image" as image<br />\| json field=\_raw "Actor.Attributes.name" as name<br />\| timeslice 1h<br />\| where image matches "{{container.image.name}}" AND state matches "{{state}}" AND name matches "{{container.name}}"<br />\|count by \_timeslice, state<br />\| transpose row \_timeslice column state<br />\| fillmissing timeslice(1h)|
|Docker - OpenTelemetry|Memory Limit by Container|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - Memory Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}} metric=container.memory.usage.limit \| avg by container.name |
|Docker - OpenTelemetry|Memory that Cannot be Reclaimed|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - Memory Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}} metric=container.memory.unevictable 	\| avg by container.name |
|Docker - OpenTelemetry|Number of Bytes Transferred to/from the Disk|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - Memory Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}}  metric=container.blockio.io\_service\_bytes\_recursive \| avg by container.Name |
|Docker - OpenTelemetry|Number of Containers Killed|Logs|Installed Apps/Docker - OpenTelemetry/Docker - Overview|sumo.datasource=docker<br />\| json field=\_raw "status" as state<br />\| where state in ( "kill")<br />\| json field=\_raw "Type" as type<br />\| json field=\_raw "Actor.Attributes.image" as image<br />\| json field=\_raw "Actor.Attributes.name" as name<br />\| where image matches "{{container.image.name}}" AND state matches "{{state}}" AND name matches "{{container.name}}"<br />\|count by name<br />\| count|
|Docker - OpenTelemetry|Number of Containers Paused|Logs|Installed Apps/Docker - OpenTelemetry/Docker - Overview|sumo.datasource=docker<br />\| json field=\_raw "status" as state<br />\| where state in ( "pause")<br />\| json field=\_raw "Type" as type<br />\| json field=\_raw "Actor.Attributes.image" as image<br />\| json field=\_raw "Actor.Attributes.name" as name<br />\|where image matches "{{container.image.name}}" AND state matches "{{state}}" AND name matches "{{container.name}}"<br />\|count by name<br />\| count|
|Docker - OpenTelemetry|Number of Containers Started|Logs|Installed Apps/Docker - OpenTelemetry/Docker - Overview|sumo.datasource=docker<br />\| json field=\_raw "status" as state<br />// we are looking in to start as re starting container generate two events - 1 start, 2 re start. So count only start is good <br />\| where state in ( "start")<br />\| json field=\_raw "Type" as type<br />\| json field=\_raw "Actor.Attributes.image" as image<br />\| json field=\_raw "Actor.Attributes.name" as name<br />\| where image matches "{{container.image.name}}" AND state matches "{{state}}" AND name matches "{{container.name}}"<br />\|count by name<br />\| count|
|Docker - OpenTelemetry|Number of Containers Stopped|Logs|Installed Apps/Docker - OpenTelemetry/Docker - Overview|sumo.datasource=docker<br />\| json field=\_raw "status" as state<br />\| where state in ( "stop")<br />\| json field=\_raw "Type" as type<br />\| json field=\_raw "Actor.Attributes.image" as image<br />\| json field=\_raw "Actor.Attributes.name" as name<br />\| where image matches "{{container.image.name}}" AND state matches "{{state}}" AND name matches "{{container.name}}"<br />\|count by name<br />\| count|
|Docker - OpenTelemetry|Number of Docker Hosts|Logs|Installed Apps/Docker - OpenTelemetry/Docker - Overview|sumo.datasource=docker<br />\| json field=\_raw "status" as state<br />\| json field=\_raw "Type" as type<br />\| json field=\_raw "Actor.Attributes.image" as image<br />\| json field=\_raw "Actor.Attributes.name" as name<br />\|where image matches "{{container.image.name}}" AND state matches "{{state}}" AND name matches "{{container.name}}"<br />\|count\_distinct(\_sourcehost)|
|Docker - OpenTelemetry|Percentage of Memory Used by Container|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - Memory Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}} metric=container.memory.percent \| avg by container.name |
|Docker - OpenTelemetry|Time for Which Container was Throttled|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - CPU Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}}  metric=container.cpu.throttling\_data.throttled\_time \| avg by container.name|
|Docker - OpenTelemetry|Top 5 Containers by  Rx Bytes|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - Overview|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}}  metric=container.network.io.usage.rx\_bytes  \| avg by container.name \| topk(5,avg)|
|Docker - OpenTelemetry|Top 5 Containers by  Tx Bytes|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - Overview|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}}  metric=container.network.io.usage.tx\_bytes  \| avg by container.name \| topk(5,avg)|
|Docker - OpenTelemetry|Top 5 Containers by CPU Usage|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - Overview|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}}  metric=container.cpu.usage.total \| avg by container.name \| topk(5,avg)|
|Docker - OpenTelemetry|Top 5 Containers by Memory Usage|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - Overview|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}}  metric=container.memory.percent \| avg by container.name \| topk(5,avg)|
|Docker - OpenTelemetry|Total CPU Consumed by Container in Kernel Mode|Metrics|Installed Apps/Docker - OpenTelemetry/Docker - CPU Usage|sumo.datasource=docker container.image.name={{container.image.name}} container.name={{container.name}} metric=container.cpu.usage.system  \| avg by container.name |

