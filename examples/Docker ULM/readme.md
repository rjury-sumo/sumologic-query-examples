# Docker ULM
## Sumo Logic App For: Docker ULM
The Sumo Logic App for Docker ULM is a unified logs and metrics app for monitoring your Docker deployment. The preconfigured dashboards present information about container state and resource usage, including CPU, memory, block I/O, and network.
Docs Link: [Docker ULM](https://help.sumologic.com/?cid=80901)

## Searches

### Log Searches

- **Container Events - One Day Time Comparison**: from Dashboard: Installed Apps/Docker ULM/Docker - Overview 
- **Containers by State**: from Dashboard: Installed Apps/Docker ULM/Docker - Overview 
- **Docker Events Over Time**: from Dashboard: Installed Apps/Docker ULM/Docker - Overview 
- **Number of Containers Killed**: from Dashboard: Installed Apps/Docker ULM/Docker - Overview 
- **Number of Containers Paused**: from Dashboard: Installed Apps/Docker ULM/Docker - Overview 
- **Number of Containers Started**: from Dashboard: Installed Apps/Docker ULM/Docker - Overview 
- **Number of Containers Stopped**: from Dashboard: Installed Apps/Docker ULM/Docker - Overview 
- **Number of Docker Hosts**: from Dashboard: Installed Apps/Docker ULM/Docker - Overview

### Metric Searches

- **Average Rx Bytes by Container**: from Dashboard: Installed Apps/Docker ULM/Docker - Network Usage 
- **Average Rx Packets by Container**: from Dashboard: Installed Apps/Docker ULM/Docker - Network Usage 
- **Average Tx Bytes by Container**: from Dashboard: Installed Apps/Docker ULM/Docker - Network Usage 
- **Average Tx Packets by Container**: from Dashboard: Installed Apps/Docker ULM/Docker - Network Usage 
- **Count of Page Faults by Container**: from Dashboard: Installed Apps/Docker ULM/Docker - Memory Usage 
- **Count of Periods with Throttling Active.**: from Dashboard: Installed Apps/Docker ULM/Docker - CPU Usage 
- **Count of Rx Dropped Packets**: from Dashboard: Installed Apps/Docker ULM/Docker - Network Usage 
- **Count of Rx Error Packets**: from Dashboard: Installed Apps/Docker ULM/Docker - Network Usage 
- **Count of Tx Dropped Packets**: from Dashboard: Installed Apps/Docker ULM/Docker - Network Usage 
- **Count of Tx Error Packets**: from Dashboard: Installed Apps/Docker ULM/Docker - Network Usage 
- **CPU Usage by Image Name**: from Dashboard: Installed Apps/Docker ULM/Docker - CPU Usage 
- **CPU Usage in Kernel Mode**: from Dashboard: Installed Apps/Docker ULM/Docker - CPU Usage 
- **CPU Usage in User Mode**: from Dashboard: Installed Apps/Docker ULM/Docker - CPU Usage 
- **Current and Max Memory Usage**: from Dashboard: Installed Apps/Docker ULM/Docker - Memory Usage 
- **Memory Limit by Container**: from Dashboard: Installed Apps/Docker ULM/Docker - Memory Usage 
- **Memory that Cannot be Reclaimed**: from Dashboard: Installed Apps/Docker ULM/Docker - Memory Usage 
- **Percentage of Memory Used by Container**: from Dashboard: Installed Apps/Docker ULM/Docker - Memory Usage 
- **Rate of Incoming Bytes**: from Dashboard: Installed Apps/Docker ULM/Docker - Network Usage 
- **Rate of Outgoing Bytes**: from Dashboard: Installed Apps/Docker ULM/Docker - Network Usage 
- **Rate of Rx Packets**: from Dashboard: Installed Apps/Docker ULM/Docker - Network Usage 
- **Rate of Tx Packets**: from Dashboard: Installed Apps/Docker ULM/Docker - Network Usage 
- **RSS Memory by Container**: from Dashboard: Installed Apps/Docker ULM/Docker - Memory Usage 
- **Time for Which Container was Throttled**: from Dashboard: Installed Apps/Docker ULM/Docker - CPU Usage 
- **Top 5 Containers by  Rx Bytes**: from Dashboard: Installed Apps/Docker ULM/Docker - Overview 
- **Top 5 Containers by  Tx Bytes**: from Dashboard: Installed Apps/Docker ULM/Docker - Overview 
- **Top 5 Containers by CPU Usage**: from Dashboard: Installed Apps/Docker ULM/Docker - Overview 
- **Top 5 Containers by Memory Usage**: from Dashboard: Installed Apps/Docker ULM/Docker - Overview 
- **Total CPU Consumed by Container in Kernel Mode**: from Dashboard: Installed Apps/Docker ULM/Docker - CPU Usage

## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|Docker ULM|Average Rx Bytes by Container|Metrics|Installed Apps/Docker ULM/Docker - Network Usage|\_sourceCategory={{Metricsdatasource}}  container.id={{container.id}} container.imageid={{container.imageid}} container.imagename={{container.imagename}} container.name={{container.name}}  metric=rx\_bytes \| avg by container.Name |
|Docker ULM|Average Rx Packets by Container|Metrics|Installed Apps/Docker ULM/Docker - Network Usage|\_sourceCategory={{Metricsdatasource}}  container.id={{container.id}} container.imageid={{container.imageid}} container.imagename={{container.imagename}} container.name={{container.name}}   metric=rx\_packets	\| avg by container.Name |
|Docker ULM|Average Tx Bytes by Container|Metrics|Installed Apps/Docker ULM/Docker - Network Usage|\_sourceCategory={{Metricsdatasource}}  container.id={{container.id}} container.imageid={{container.imageid}} container.imagename={{container.imagename}} container.name={{container.name}}   metric=tx\_bytes \| avg by container.Name |
|Docker ULM|Average Tx Packets by Container|Metrics|Installed Apps/Docker ULM/Docker - Network Usage|\_sourceCategory={{Metricsdatasource}}  container.id={{container.id}} container.imageid={{container.imageid}} container.imagename={{container.imagename}} container.name={{container.name}}   metric=tx\_packets	\| avg by container.Name |
|Docker ULM|Container Events - One Day Time Comparison|Logs|Installed Apps/Docker ULM/Docker - Overview|\_sourceCategory={{Logsdatasource}} <br />\| json field=\_raw "status" as state<br />\| json field=\_raw "Type" as type<br />\| json field=\_raw "Actor.Attributes.image" as image<br />\| json field=\_raw "Actor.Attributes.name" as name<br />\|where if ("{{name}}" = "\*", true, name matches "{{name}}") AND if ("{{state}}" = "\*", true, state matches "{{state}}") AND if ("{{image}}" = "\*", true, image matches "{{image}}")<br />\|count by state, image, name<br />\| sort by \_count <br />\| compare with timeshift 1d|
|Docker ULM|Containers by State|Logs|Installed Apps/Docker ULM/Docker - Overview|\_sourceCategory={{Logsdatasource}} <br />\| json field=\_raw "status" as state<br />\| json field=\_raw "Type" as type<br />\| json field=\_raw "Actor.Attributes.image" as image<br />\| json field=\_raw "Actor.Attributes.name" as name<br />\| json field=\_raw "time" as event\_time<br />\| toLong(event\_time) \* 1000 as event\_time<br />\| formatDate(fromMillis(toLong(event\_time)), "MM-dd-yyyy HH:mm:ss") as event\_date<br />\|where if ("{{name}}" = "\*", true, name matches "{{name}}") AND if ("{{state}}" = "\*", true, state matches "{{state}}") AND if ("{{image}}" = "\*", true, image matches "{{image}}")<br />\|count by event\_date, image, name,state<br />\| sort by event\_date asc|
|Docker ULM|Count of Page Faults by Container|Metrics|Installed Apps/Docker ULM/Docker - Memory Usage|\_sourceCategory={{Metricsdatasource}}  container.id={{container.id}} container.imageid={{container.imageid}} container.imagename={{container.imagename}} container.name={{container.name}}   metric=stats.pgfault	\| avg by container.Name |
|Docker ULM|Count of Periods with Throttling Active.|Metrics|Installed Apps/Docker ULM/Docker - CPU Usage|\_sourceCategory={{Metricsdatasource}}   metric=throttling\_data.periods	  \| avg by container.Name|
|Docker ULM|Count of Rx Dropped Packets|Metrics|Installed Apps/Docker ULM/Docker - Network Usage|\_sourceCategory={{Metricsdatasource}}  container.id={{container.id}} container.imageid={{container.imageid}} container.imagename={{container.imagename}} container.name={{container.name}}   metric=rx\_dropped \| avg by container.Name |
|Docker ULM|Count of Rx Error Packets|Metrics|Installed Apps/Docker ULM/Docker - Network Usage|\_sourceCategory={{Metricsdatasource}}  container.id={{container.id}} container.imageid={{container.imageid}} container.imagename={{container.imagename}} container.name={{container.name}}   metric=rx\_errors \| avg by container.name|
|Docker ULM|Count of Tx Dropped Packets|Metrics|Installed Apps/Docker ULM/Docker - Network Usage|\_sourceCategory={{Metricsdatasource}}  container.id={{container.id}} container.imageid={{container.imageid}} container.imagename={{container.imagename}} container.name={{container.name}}   metric=tx\_dropped \| avg by container.name|
|Docker ULM|Count of Tx Error Packets|Metrics|Installed Apps/Docker ULM/Docker - Network Usage|\_sourceCategory={{Metricsdatasource}}  container.id={{container.id}} container.imageid={{container.imageid}} container.imagename={{container.imagename}} container.name={{container.name}}   metric=tx\_errors \| avg by container.Name |
|Docker ULM|CPU Usage by Image Name|Metrics|Installed Apps/Docker ULM/Docker - CPU Usage|\_sourceCategory={{Metricsdatasource}}   metric=cpu\_usage.total\_usage \| avg by container.ImageName |
|Docker ULM|CPU Usage in Kernel Mode|Metrics|Installed Apps/Docker ULM/Docker - CPU Usage| \_sourceCategory={{Metricsdatasource}}  metric=cpu\_usage.usage\_in\_kernelmode \| avg by container.Name|
|Docker ULM|CPU Usage in User Mode|Metrics|Installed Apps/Docker ULM/Docker - CPU Usage|\_sourceCategory={{Metricsdatasource}}  metric=cpu\_usage.usage\_in\_usermode \| avg by container.Name|
|Docker ULM|Current and Max Memory Usage|Metrics|Installed Apps/Docker ULM/Docker - Memory Usage|\_sourceCategory={{Metricsdatasource}}  container.id={{container.id}} container.imageid={{container.imageid}} container.imagename={{container.imagename}} container.name={{container.name}}   metric=usage	\| avg by container.Name |
|Docker ULM|Docker Events Over Time|Logs|Installed Apps/Docker ULM/Docker - Overview|\_sourceCategory={{Logsdatasource}} <br />\| json field=\_raw "status" as state<br />\| json field=\_raw "Type" as type<br />\| json field=\_raw "Actor.Attributes.image" as image<br />\| json field=\_raw "Actor.Attributes.name" as name<br />\| timeslice 1h<br />\|where if ("{{name}}" = "\*", true, name matches "{{name}}") AND if ("{{state}}" = "\*", true, state matches "{{state}}") AND if ("{{image}}" = "\*", true, image matches "{{image}}")<br />\|count by \_timeslice, state<br />\| transpose row \_timeslice column state<br />\| fillmissing timeslice(1h)|
|Docker ULM|Memory Limit by Container|Metrics|Installed Apps/Docker ULM/Docker - Memory Usage|\_sourceCategory={{Metricsdatasource}}  container.id={{container.id}} container.imageid={{container.imageid}} container.imagename={{container.imagename}} container.name={{container.name}}  metric=limit \| avg by container.Name |
|Docker ULM|Memory that Cannot be Reclaimed|Metrics|Installed Apps/Docker ULM/Docker - Memory Usage|\_sourceCategory={{Metricsdatasource}}  container.id={{container.id}} container.imageid={{container.imageid}} container.imagename={{container.imagename}} container.name={{container.name}}  metric=stats.unevictable 	\| avg by container.Name |
|Docker ULM|Number of Containers Killed|Logs|Installed Apps/Docker ULM/Docker - Overview|\_sourceCategory={{Logsdatasource}} <br />\| json field=\_raw "status" as state<br />\| where state in ( "kill")<br />\| json field=\_raw "Type" as type<br />\| json field=\_raw "Actor.Attributes.image" as image<br />\| json field=\_raw "Actor.Attributes.name" as name<br />\|where if ("{{name}}" = "\*", true, name matches "{{name}}") AND if ("{{state}}" = "\*", true, state matches "{{state}}") AND if ("{{image}}" = "\*", true, image matches "{{image}}")<br />\|count by name<br />\| count|
|Docker ULM|Number of Containers Paused|Logs|Installed Apps/Docker ULM/Docker - Overview|\_sourceCategory={{Logsdatasource}} <br />\| json field=\_raw "status" as state<br />\| where state in ( "pause")<br />\| json field=\_raw "Type" as type<br />\| json field=\_raw "Actor.Attributes.image" as image<br />\| json field=\_raw "Actor.Attributes.name" as name<br />\|where if ("{{name}}" = "\*", true, name matches "{{name}}") AND if ("{{state}}" = "\*", true, state matches "{{state}}") AND if ("{{image}}" = "\*", true, image matches "{{image}}")<br />\|count by name<br />\| count|
|Docker ULM|Number of Containers Started|Logs|Installed Apps/Docker ULM/Docker - Overview|\_sourceCategory={{Logsdatasource}} <br />\| json field=\_raw "status" as state<br />// we are looking in to start as re starting container generate two events - 1 start, 2 re start. So count only start is good <br />\| where state in ( "start")<br />\| json field=\_raw "Type" as type<br />\| json field=\_raw "Actor.Attributes.image" as image<br />\| json field=\_raw "Actor.Attributes.name" as name<br />\|where if ("{{name}}" = "\*", true, name matches "{{name}}") AND if ("{{state}}" = "\*", true, state matches "{{state}}") AND if ("{{image}}" = "\*", true, image matches "{{image}}")<br />\|count by name<br />\| count|
|Docker ULM|Number of Containers Stopped|Logs|Installed Apps/Docker ULM/Docker - Overview|\_sourceCategory={{Logsdatasource}} <br />\| json field=\_raw "status" as state<br />\| where state in ( "stop")<br />\| json field=\_raw "Type" as type<br />\| json field=\_raw "Actor.Attributes.image" as image<br />\| json field=\_raw "Actor.Attributes.name" as name<br />\|where if ("{{name}}" = "\*", true, name matches "{{name}}") AND if ("{{state}}" = "\*", true, state matches "{{state}}") AND if ("{{image}}" = "\*", true, image matches "{{image}}")<br />\|count by name<br />\| count|
|Docker ULM|Number of Docker Hosts|Logs|Installed Apps/Docker ULM/Docker - Overview|\_sourceCategory={{Logsdatasource}} <br />\| json field=\_raw "status" as state<br />\| json field=\_raw "Type" as type<br />\| json field=\_raw "Actor.Attributes.image" as image<br />\| json field=\_raw "Actor.Attributes.name" as name<br />\|where if ("{{name}}" = "\*", true, name matches "{{name}}") AND if ("{{state}}" = "\*", true, state matches "{{state}}") AND if ("{{image}}" = "\*", true, image matches "{{image}}")<br />\|count\_distinct(\_sourcehost)|
|Docker ULM|Percentage of Memory Used by Container|Metrics|Installed Apps/Docker ULM/Docker - Memory Usage|\_sourceCategory={{Metricsdatasource}}  container.id={{container.id}} container.imageid={{container.imageid}} container.imagename={{container.imagename}} container.name={{container.name}}   metric=memory\_percentage \| avg by container.Name |
|Docker ULM|Rate of Incoming Bytes|Metrics|Installed Apps/Docker ULM/Docker - Network Usage|\_sourceCategory={{Metricsdatasource}}  container.id={{container.id}} container.imageid={{container.imageid}} container.imagename={{container.imagename}} container.name={{container.name}}   metric=rx\_bytes \|  avg by container.Name \| rate |
|Docker ULM|Rate of Outgoing Bytes|Metrics|Installed Apps/Docker ULM/Docker - Network Usage|\_sourceCategory={{Metricsdatasource}}  container.id={{container.id}} container.imageid={{container.imageid}} container.imagename={{container.imagename}} container.name={{container.name}}   metric=tx\_bytes \| avg by container.name \|rate |
|Docker ULM|Rate of Rx Packets|Metrics|Installed Apps/Docker ULM/Docker - Network Usage|\_sourceCategory={{Metricsdatasource}}  container.id={{container.id}} container.imageid={{container.imageid}} container.imagename={{container.imagename}} container.name={{container.name}}   metric=rx\_packets	\| avg by container.name \|rate|
|Docker ULM|Rate of Tx Packets|Metrics|Installed Apps/Docker ULM/Docker - Network Usage|\_sourceCategory={{Metricsdatasource}}  container.id={{container.id}} container.imageid={{container.imageid}} container.imagename={{container.imagename}} container.name={{container.name}}  metric=tx\_packets \| avg by container.Name  \|rate|
|Docker ULM|RSS Memory by Container|Metrics|Installed Apps/Docker ULM/Docker - Memory Usage|\_sourceCategory={{Metricsdatasource}}   metric=stats.rss \| avg by container.Name |
|Docker ULM|Time for Which Container was Throttled|Metrics|Installed Apps/Docker ULM/Docker - CPU Usage|\_sourceCategory={{Metricsdatasource}}  metric=throttling\_data.throttled\_time \| avg by container.Name|
|Docker ULM|Top 5 Containers by  Rx Bytes|Metrics|Installed Apps/Docker ULM/Docker - Overview|\_sourceCategory={{Metricsdatasource}}  container.imageid={{container.imageid}} container.name={{container.name}}  metric=rx\_bytes \| avg by container.Name \| topk(5,avg)|
|Docker ULM|Top 5 Containers by  Tx Bytes|Metrics|Installed Apps/Docker ULM/Docker - Overview|\_sourceCategory={{Metricsdatasource}}  container.imageid={{container.imageid}} container.name={{container.name}}  metric=tx\_bytes \| avg by container.Name \| topk(5,avg)|
|Docker ULM|Top 5 Containers by CPU Usage|Metrics|Installed Apps/Docker ULM/Docker - Overview|\_sourceCategory={{Metricsdatasource}}  metric=cpu\_usage.total\_usage \| avg by container.Name \| topk(5,avg)|
|Docker ULM|Top 5 Containers by Memory Usage|Metrics|Installed Apps/Docker ULM/Docker - Overview|\_sourceCategory={{Metricsdatasource}}  container.imageid={{container.imageid}} container.name={{container.name}}  metric=memory\_percentage \| avg by container.Name \| topk(5,avg)|
|Docker ULM|Total CPU Consumed by Container in Kernel Mode|Metrics|Installed Apps/Docker ULM/Docker - CPU Usage|\_sourceCategory={{Metricsdatasource}}  metric=system\_cpu\_usage \| avg by container.Name|

