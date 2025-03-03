# ActiveMQ
## Sumo Logic App For: ActiveMQ
The ActiveMQ app is a unified logs and metrics app that helps you monitor the availability, performance, health, and resource utilization of your ActiveMQ messaging clusters. Preconfigured dashboards provide insight into cluster status, nodes, producers, consumers, destinations, resource utilization, message rates, and error logs.
Docs Link: [ActiveMQ](https://help.sumologic.com/?cid=210629)

## Searches

### Log Searches

- **Broker Start/Add Events**: from Dashboard: ActiveMQ/Logs/ActiveMQ - Logs 
- **Broker Stopped/Reset Events**: from Dashboard: ActiveMQ/Logs/ActiveMQ - Logs 
- **Error Over Time**: from Dashboard: ActiveMQ/Logs/ActiveMQ - Logs 
- **Events by Severity**: from Dashboard: ActiveMQ/Logs/ActiveMQ - Logs 
- **Last 10 Errors**: from Dashboard: ActiveMQ/ActiveMQ - Overview 
- **Last 10 Errors and Warnings**: from Dashboard: ActiveMQ/Logs/ActiveMQ - Logs 
- **Last 25 Log Messages**: from Dashboard: ActiveMQ/Logs/ActiveMQ - Logs 
- **Log Reduce**: from Dashboard: ActiveMQ/Logs/ActiveMQ - Logs 
- **Top 10 Errors**: from Dashboard: ActiveMQ/Logs/ActiveMQ - Logs

### Metric Searches

- **Average Consumer Count**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Brokers  
- **Average CPU Usage Percent**: from Dashboard: ActiveMQ/ActiveMQ - Overview 
- **Average Dequeue Message Rate**: from Dashboard: ActiveMQ/ActiveMQ - Overview 
- **Average Enqueue Latency**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Topics 
- **Average Enqueue Message Rate**: from Dashboard: ActiveMQ/ActiveMQ - Overview 
- **Average Enqueue Time**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Queues 
- **Average Memory Usage Percent**: from Dashboard: ActiveMQ/ActiveMQ - Overview 
- **Average Message Size**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Topics 
- **Average Message Size**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Brokers  
- **Average Message Size**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Queues 
- **Average Number of Consumers**: from Dashboard: ActiveMQ/ActiveMQ - Overview 
- **Average Number of Nodes**: from Dashboard: ActiveMQ/ActiveMQ - Overview 
- **Average Number of Producers**: from Dashboard: ActiveMQ/ActiveMQ - Overview 
- **Average Number of Served  Connections**: from Dashboard: ActiveMQ/ActiveMQ - Overview 
- **Average Producer Count**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Brokers  
- **Average Unacknowledged Messages**: from Dashboard: ActiveMQ/ActiveMQ - Overview 
- **Avg Message Dequeue Count**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Topics 
- **Avg Message Enqueue Count**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Topics 
- **Broker Uptime**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Brokers  
- **Consumer Count**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Topics 
- **CPU Usage Percentage**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Resource Utilization 
- **Current Connections Count**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Brokers  
- **Disk Usage Percentage**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Resource Utilization 
- **Enqueue Latency**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Topics 
- **Enqueue Latency**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Queues 
- **Expired Messages**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Topics 
- **File Descriptor Usage Percentage**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Resource Utilization 
- **Garbage Collection Count**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Resource Utilization 
- **Heap Memory Usage**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Resource Utilization 
- **Memory  Usage Percentage**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Resource Utilization 
- **Memory Resource Limits**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Brokers  
- **Memory Usage**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Queues 
- **Message Dequeue Count**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Brokers  
- **Message Dequeue Count**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Queues 
- **Message Enqueue Count**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Queues 
- **Message Enqueue Count**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Brokers  
- **Node Uptime**: from Dashboard: ActiveMQ/ActiveMQ - Overview 
- **Non Heap Memory Usage**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Resource Utilization 
- **Number of Expired Messages**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Queues 
- **Number of Queues**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Queues 
- **Number of Topics**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Topics 
- **Number of Unacknowledged Messages**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Brokers  
- **Producer Count**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Topics 
- **Swap Usage Percentage**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Resource Utilization 
- **Top 10 Hosts by Queues**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Queues 
- **Top 10 Queues by Consumers**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Queues 
- **Top 10 Queues by Errors**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Queues 
- **Top 10 Queues by Producers**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Queues 
- **Top 5 Topics by Errors**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Topics 
- **Total Number of  Destinations**: from Dashboard: ActiveMQ/ActiveMQ - Overview 
- **Total Served Connections**: from Dashboard: ActiveMQ/Metrics/ActiveMQ - Brokers 

## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|ActiveMQ/Metrics|Average Consumer Count|Metrics|ActiveMQ/Metrics/ActiveMQ - Brokers |messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric="activemq\_broker\_TotalConsumerCount"  \| avg by host,messaging\_cluster |
|ActiveMQ|Average CPU Usage Percent|Metrics|ActiveMQ/ActiveMQ - Overview|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} metric=activemq\_OperatingSystem\_SystemCpuLoad \| avg by messaging\_cluster \| eval (\_value \*100)|
|ActiveMQ|Average Dequeue Message Rate|Metrics|ActiveMQ/ActiveMQ - Overview|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} metric=activemq\_broker\_TotalDequeueCount\| rate\|avg by messaging\_cluster|
|ActiveMQ/Metrics|Average Enqueue Latency|Metrics|ActiveMQ/Metrics/ActiveMQ - Topics|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{topic}} metric="activemq\_topic\_AverageEnqueueTime"  \| avg by destinationName,messaging\_cluster|
|ActiveMQ|Average Enqueue Message Rate|Metrics|ActiveMQ/ActiveMQ - Overview|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} metric=activemq\_broker\_TotalEnqueueCount\| rate \| avg by messaging\_cluster |
|ActiveMQ/Metrics|Average Enqueue Time|Metrics|ActiveMQ/Metrics/ActiveMQ - Queues|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{queue}} metric="activemq\_queue\_AverageEnqueueTime"  \| avg by destinationName,messaging\_cluster|
|ActiveMQ|Average Memory Usage Percent|Metrics|ActiveMQ/ActiveMQ - Overview|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} metric=activemq\_jvm\_memory\_HeapMemoryUsage\_used\| avg by messaging\_cluster|
|ActiveMQ/Metrics|Average Message Size|Metrics|ActiveMQ/Metrics/ActiveMQ - Queues|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{queue}} metric="activemq\_queue\_AverageMessageSize" \| parse field=destinationName \* as queue \| avg by queue,messaging\_cluster \| eval \_value/1024|
|ActiveMQ/Metrics|Average Message Size|Metrics|ActiveMQ/Metrics/ActiveMQ - Topics|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{topic}} metric="activemq\_topic\_AverageMessageSize"  \| parse  field=destinationName \* as topic \|avg by messaging\_cluster,topic \| topk(10, avg) \| eval (\_value/1024)|
|ActiveMQ/Metrics|Average Message Size|Metrics|ActiveMQ/Metrics/ActiveMQ - Brokers |messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric="activemq\_broker\_AverageMessageSize"  \| avg by host,messaging\_cluster \| eval (\_value/1024)|
|ActiveMQ|Average Number of Consumers|Metrics|ActiveMQ/ActiveMQ - Overview|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} metric=activemq\_broker\_TotalConsumerCount \| avg by messaging\_cluster\| sum|
|ActiveMQ|Average Number of Nodes|Metrics|ActiveMQ/ActiveMQ - Overview|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} metric=activemq\_jvm\_runtime\_Uptime \|  quantize to 5m using count \| count|
|ActiveMQ|Average Number of Producers|Metrics|ActiveMQ/ActiveMQ - Overview|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} metric=activemq\_broker\_TotalProducerCount \| avg by messaging\_cluster \| sum|
|ActiveMQ|Average Number of Served  Connections|Metrics|ActiveMQ/ActiveMQ - Overview|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} metric=activemq\_broker\_TotalConnectionsCount \| avg by messaging\_cluster\| sum|
|ActiveMQ/Metrics|Average Producer Count|Metrics|ActiveMQ/Metrics/ActiveMQ - Brokers |messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric="activemq\_broker\_TotalProducerCount"  \| avg by host,messaging\_cluster |
|ActiveMQ|Average Unacknowledged Messages|Metrics|ActiveMQ/ActiveMQ - Overview|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} metric=activemq\_\*\_QueueSize\|avg by messaging\_cluster\| sum |
|ActiveMQ/Metrics|Avg Message Dequeue Count|Metrics|ActiveMQ/Metrics/ActiveMQ - Topics|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{topic}} metric="activemq\_topic\_DequeueCount"\| parse  field=destinationName \* as topic \|avg by topic,messaging\_cluster|
|ActiveMQ/Metrics|Avg Message Enqueue Count|Metrics|ActiveMQ/Metrics/ActiveMQ - Topics|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{topic}} metric="activemq\_topic\_EnqueueCount"  \| parse  field=destinationName \* as topic \|avg by topic,messaging\_cluster|
|ActiveMQ/Logs|Broker Start/Add Events|Logs|ActiveMQ/Logs/ActiveMQ - Logs|messaging\_cluster=\* messaging\_system="activemq" messaging\_cluster={{messaging\_cluster}} (\_sourceHost={{host}} or pod={{host}}) "started" "Apache ActiveMQ"<br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\*\|\*\|\*\|\*\|\*" as timedate,severity,msg,class,address \| count as count by timedate,msg \| sort by timedate \| fields timedate,msg|
|ActiveMQ/Logs|Broker Stopped/Reset Events|Logs|ActiveMQ/Logs/ActiveMQ - Logs|messaging\_cluster=\* messaging\_system="activemq" messaging\_cluster={{messaging\_cluster}} (\_sourceHost={{host}} or pod={{host}}) "shutdown" "Apache ActiveMQ"<br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\*\|\*\|\*\|\*\|\*" as timedate,severity,msg,class,address  \| count as count by timedate,msg \| sort by timedate \| fields timedate,msg|
|ActiveMQ/Metrics|Broker Uptime|Metrics|ActiveMQ/Metrics/ActiveMQ - Brokers |messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric="activemq\_broker\_UptimeMillis"  \| avg by host \| eval \_value/3600000|
|ActiveMQ/Metrics|Consumer Count|Metrics|ActiveMQ/Metrics/ActiveMQ - Topics|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{topic}} metric="activemq\_topic\_ConsumerCount" \| parse  field=destinationName \* as topic \|avg by topic,messaging\_cluster|
|ActiveMQ/Metrics|CPU Usage Percentage|Metrics|ActiveMQ/Metrics/ActiveMQ - Resource Utilization|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric="activemq\_OperatingSystem\_SystemCpuLoad" \| avg by host,messaging\_cluster \| eval \_value\*100|
|ActiveMQ/Metrics|Current Connections Count|Metrics|ActiveMQ/Metrics/ActiveMQ - Brokers |messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric="activemq\_broker\_CurrentConnectionsCount"  \| avg by host,messaging\_cluster |
|ActiveMQ/Metrics|Disk Usage Percentage|Metrics|ActiveMQ/Metrics/ActiveMQ - Resource Utilization|host={{host}} metric="disk\_used\_percent" \| avg by host|
|ActiveMQ/Metrics|Enqueue Latency|Metrics|ActiveMQ/Metrics/ActiveMQ - Queues|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{queue}} metric="activemq\_queue\_AverageEnqueueTime" \| avg|
|ActiveMQ/Metrics|Enqueue Latency|Metrics|ActiveMQ/Metrics/ActiveMQ - Topics|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{topic}} metric="activemq\_topic\_AverageEnqueueTime" \| avg|
|ActiveMQ/Logs|Error Over Time|Logs|ActiveMQ/Logs/ActiveMQ - Logs|messaging\_cluster=\* messaging\_system="activemq" messaging\_cluster={{messaging\_cluster}} (\_sourceHost={{host}} or pod={{host}}) ("ERROR" or "Could not accept connection")<br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\*\|\*\|\*\|\*\|\*" as timedate,severity,msg,class,address \|trim(severity) as severity <br />\| timeslice 15m<br />\| count as count by \_timeslice<br />\| fillmissing timeslice(15m)|
|ActiveMQ/Logs|Events by Severity|Logs|ActiveMQ/Logs/ActiveMQ - Logs|messaging\_cluster=\* messaging\_system="activemq" messaging\_cluster={{messaging\_cluster}} (\_sourceHost={{host}} or pod={{host}}) <br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\*\|\*\|\*\|\*\|\*" as timedate,severity,msg,class,address \|trim(severity) as severity \| count by severity|
|ActiveMQ/Metrics|Expired Messages|Metrics|ActiveMQ/Metrics/ActiveMQ - Topics|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{topic}}  metric="activemq\_topic\_ExpiredCount"\| parse  field=destinationName \* as topic \| avg by topic,messaging\_cluster|
|ActiveMQ/Metrics|File Descriptor Usage Percentage|Metrics|ActiveMQ/Metrics/ActiveMQ - Resource Utilization|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric="activemq\_OperatingSystem\_OpenFileDescriptorCount"  \| avg by host,messaging\_cluster|
|ActiveMQ/Metrics|Garbage Collection Count|Metrics|ActiveMQ/Metrics/ActiveMQ - Resource Utilization|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric="activemq\_jvm\_garbage\_collector\_CollectionCount\_CollectionCount"\| sum by host,messaging\_cluster |
|ActiveMQ/Metrics|Heap Memory Usage|Metrics|ActiveMQ/Metrics/ActiveMQ - Resource Utilization|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric="activemq\_jvm\_memory\_HeapMemoryUsage\_used" \| avg by host,messaging\_cluster|
|ActiveMQ|Last 10 Errors|Logs|ActiveMQ/ActiveMQ - Overview|messaging\_system="activemq" messaging\_cluster={{messaging\_cluster}} ("error" or "ERROR" or "Error") <br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\*\|\*\|\*" as datetime,severity,msg<br />\|count as count by datetime,severity,msg<br />\| fields datetime,msg<br />\| limit 10|
|ActiveMQ/Logs|Last 10 Errors and Warnings|Logs|ActiveMQ/Logs/ActiveMQ - Logs|messaging\_cluster=\* messaging\_system="activemq" messaging\_cluster={{messaging\_cluster}} (\_sourceHost={{host}} or pod={{host}}) ("ERROR" or "WARN")<br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\*\|\*\|\*\|\*\|\*" as timedate,severity,msg,class,address \|trim(severity) as severity \| count as count by severity,msg,timedate \| sort by count,timedate \| limit 10 \| fields timedate,severity,msg|
|ActiveMQ/Logs|Last 25 Log Messages|Logs|ActiveMQ/Logs/ActiveMQ - Logs|messaging\_cluster=\* messaging\_system="activemq" messaging\_cluster={{messaging\_cluster}} (\_sourceHost={{host}} or pod={{host}}) <br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\*\|\*\|\*\|\*\|\*" as timedate,severity,msg,class,address \|limit 25 \| trim(severity) as severity \|count as count by timedate,msg,severity \| sort by timedate \|  fields timedate,severity,msg|
|ActiveMQ/Logs|Log Reduce|Logs|ActiveMQ/Logs/ActiveMQ - Logs|messaging\_cluster=\* messaging\_system="activemq" messaging\_cluster={{messaging\_cluster}} (\_sourceHost={{host}} or pod={{host}}) <br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\*\|\*\|\*\|\*\|\*" as timedate,severity,msg,class,address  \| trim(severity) as severity \| limit 10000\|logreduce by msg \| \_count as count \| sort by count<br />\| fields msg, signature, count|
|ActiveMQ/Metrics|Memory  Usage Percentage|Metrics|ActiveMQ/Metrics/ActiveMQ - Resource Utilization|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric="activemq\_OperatingSystem\_FreePhysicalMemorySize" \| avg by host,messaging\_cluster|
|ActiveMQ/Metrics|Memory Resource Limits|Metrics|ActiveMQ/Metrics/ActiveMQ - Brokers |messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric="activemq\_broker\_MemoryLimit" \| avg by host,metric \| eval (\_value/1024/1024/1024)|
|ActiveMQ/Metrics|Memory Usage|Metrics|ActiveMQ/Metrics/ActiveMQ - Queues|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{queue}} metric="activemq\_queue\_MemoryUsageByteCount" \|avg by destinationName,messaging\_cluster |
|ActiveMQ/Metrics|Message Dequeue Count|Metrics|ActiveMQ/Metrics/ActiveMQ - Queues|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{queue}} metric="activemq\_queue\_DequeueCount" \| avg by destinationName,messaging\_cluster |
|ActiveMQ/Metrics|Message Dequeue Count|Metrics|ActiveMQ/Metrics/ActiveMQ - Brokers |messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric="activemq\_broker\_TotalDequeueCount"  \| avg by host,messaging\_cluster |
|ActiveMQ/Metrics|Message Enqueue Count|Metrics|ActiveMQ/Metrics/ActiveMQ - Brokers |messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric="activemq\_broker\_TotalEnqueueCount"  \| avg by host,messaging\_cluster |
|ActiveMQ/Metrics|Message Enqueue Count|Metrics|ActiveMQ/Metrics/ActiveMQ - Queues|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{queue}} metric="activemq\_queue\_EnqueueCount"  \| avg by destinationName,messaging\_cluster |
|ActiveMQ|Node Uptime|Metrics|ActiveMQ/ActiveMQ - Overview|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} metric=activemq\_jvm\_runtime\_Uptime \| eval \_value/3600000\| avg by host|
|ActiveMQ/Metrics|Non Heap Memory Usage|Metrics|ActiveMQ/Metrics/ActiveMQ - Resource Utilization|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric="activemq\_jvm\_memory\_NonHeapMemoryUsage\_used" \| avg by host,messaging\_cluster|
|ActiveMQ/Metrics|Number of Expired Messages|Metrics|ActiveMQ/Metrics/ActiveMQ - Queues|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{queue}} metric="activemq\_queue\_ExpiredCount" \|avg by destinationName,messaging\_cluster |
|ActiveMQ/Metrics|Number of Queues|Metrics|ActiveMQ/Metrics/ActiveMQ - Queues|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric=activemq\_queue\_\* destinationName={{queue}} \| count by destinationName \| count|
|ActiveMQ/Metrics|Number of Topics|Metrics|ActiveMQ/Metrics/ActiveMQ - Topics|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{topic}} metric=activemq\_topic\_\*  \| count by destinationName \| count|
|ActiveMQ/Metrics|Number of Unacknowledged Messages|Metrics|ActiveMQ/Metrics/ActiveMQ - Brokers |messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric="activemq\_broker\_TotalMessageCount"  \| avg by host,messaging\_cluster|
|ActiveMQ/Metrics|Producer Count|Metrics|ActiveMQ/Metrics/ActiveMQ - Topics|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{topic}} metric="activemq\_topic\_ProducerCount"  \| parse  field=destinationName \* as topic \|avg by topic,messaging\_cluster|
|ActiveMQ/Metrics|Swap Usage Percentage|Metrics|ActiveMQ/Metrics/ActiveMQ - Resource Utilization|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric="activemq\_OperatingSystem\_FreeSwapSpaceSize" \| avg by host,messaging\_cluster|
|ActiveMQ/Logs|Top 10 Errors|Logs|ActiveMQ/Logs/ActiveMQ - Logs|messaging\_cluster=\* messaging\_system="activemq" messaging\_cluster={{messaging\_cluster}} (\_sourceHost={{host}} or pod={{host}}) ("ERROR" or "Could not accept connection")<br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\*\|\*\|\*\|\*\|\*" as timedate,severity,msg,class,address \|trim(severity) as severity \| count as count by severity,msg \| sort by count \| limit 10|
|ActiveMQ/Metrics|Top 10 Hosts by Queues|Metrics|ActiveMQ/Metrics/ActiveMQ - Queues|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric=activemq\_queue\_\* destinationName={{queue}} \| count by destinationName, host \| count by host \| topk(10, avg)|
|ActiveMQ/Metrics|Top 10 Queues by Consumers|Metrics|ActiveMQ/Metrics/ActiveMQ - Queues|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{queue}} metric="activemq\_queue\_ConsumerCount" \| parse  field=destinationName \* as queue \|avg by queue,messaging\_cluster\|topk(10,avg) |
|ActiveMQ/Metrics|Top 10 Queues by Errors|Metrics|ActiveMQ/Metrics/ActiveMQ - Queues|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{queue}} metric="activemq\_queue\_QueueSize"\| parse  field=destinationName \* as queue \| avg by queue,messaging\_cluster \|topk(10,avg) |
|ActiveMQ/Metrics|Top 10 Queues by Producers|Metrics|ActiveMQ/Metrics/ActiveMQ - Queues|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{queue}} metric="activemq\_queue\_ProducerCount" \| parse  field=destinationName \* as queue \|avg by queue,messaging\_cluster \|topk(10,avg) |
|ActiveMQ/Metrics|Top 5 Topics by Errors|Metrics|ActiveMQ/Metrics/ActiveMQ - Topics|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} destinationName={{topic}}   metric="activemq\_topic\_AverageEnqueueTime" \| parse  field=destinationName \* as topic\| avg by topic,messaging\_cluster \| topk(5,avg)|
|ActiveMQ|Total Number of  Destinations|Metrics|ActiveMQ/ActiveMQ - Overview|messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} metric=activemq\_\* destinationName=\* \| count by destinationName \| count|
|ActiveMQ/Metrics|Total Served Connections|Metrics|ActiveMQ/Metrics/ActiveMQ - Brokers |messaging\_cluster=\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric="activemq\_broker\_TotalConnectionsCount" \| avg by host|

