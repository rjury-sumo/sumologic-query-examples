# RabbitMQ
## Sumo Logic App For: RabbitMQ
The RabbitMQ app is a unified logs and metrics app that helps you monitor the availability, performance, health, and resource utilization of your RabbitMQ messaging clusters. Preconfigured dashboards provide insight into cluster status, exchanges, queues, nodes and error logs.
Docs Link: [RabbitMQ](https://help.sumologic.com/?cid=210622)

## Searches

### Log Searches

- **Brokers Start/Add Events**: from Dashboard: RabbitMQ/Logs/RabbitMQ - Logs 
- **Error Over Time**: from Dashboard: RabbitMQ/Logs/RabbitMQ - Logs 
- **Events by Severity**: from Dashboard: RabbitMQ/Logs/RabbitMQ - Logs 
- **Last 10 Errors**: from Dashboard: RabbitMQ/Logs/RabbitMQ - Logs 
- **Last 10 Errors**: from Dashboard: RabbitMQ/RabbitMQ - Overview 
- **Last 25 Log Messages**: from Dashboard: RabbitMQ/Logs/RabbitMQ - Logs 
- **Log Reduce**: from Dashboard: RabbitMQ/Logs/RabbitMQ - Logs 
- **Stopped/Reset Events**: from Dashboard: RabbitMQ/Logs/RabbitMQ - Logs 
- **Top 10 Errors**: from Dashboard: RabbitMQ/Logs/RabbitMQ - Logs

### Metric Searches

- **Average Delivery Message Rate**: from Dashboard: RabbitMQ/RabbitMQ - Overview 
- **Average Disk Usage Percent**: from Dashboard: RabbitMQ/RabbitMQ - Overview 
- **Average Memory Usage Percent**: from Dashboard: RabbitMQ/RabbitMQ - Overview 
- **Average Number of Connections**: from Dashboard: RabbitMQ/RabbitMQ - Overview 
- **Average Number of Consumers**: from Dashboard: RabbitMQ/RabbitMQ - Overview 
- **Average Number of Exchanges**: from Dashboard: RabbitMQ/RabbitMQ - Overview 
- **Average Number of Nodes**: from Dashboard: RabbitMQ/RabbitMQ - Overview 
- **Average Number of Queues**: from Dashboard: RabbitMQ/RabbitMQ - Overview 
- **Average Publishing Message Rate**: from Dashboard: RabbitMQ/RabbitMQ - Overview 
- **Average Unacknowledged Messages**: from Dashboard: RabbitMQ/RabbitMQ - Overview 
- **File Descriptors**: from Dashboard: RabbitMQ/Metrics/RabbitMQ - Nodes 
- **Garbage Collection Operation Rate**: from Dashboard: RabbitMQ/Metrics/RabbitMQ - Nodes 
- **Memory Usage**: from Dashboard: RabbitMQ/Metrics/RabbitMQ - Nodes 
- **Message Delivery Rate**: from Dashboard: RabbitMQ/Metrics/RabbitMQ - Queues 
- **Message Publish Rate**: from Dashboard: RabbitMQ/Metrics/RabbitMQ - Queues 
- **Message Publish Rate In Exchanges**: from Dashboard: RabbitMQ/Metrics/RabbitMQ - Exchanges 
- **Message Publish Rate Out Exchanges**: from Dashboard: RabbitMQ/Metrics/RabbitMQ - Exchanges 
- **Node Uptime**: from Dashboard: RabbitMQ/Metrics/RabbitMQ - Nodes 
- **Queue Memory Usage**: from Dashboard: RabbitMQ/Metrics/RabbitMQ - Queues 
- **Ram Transactions (Not Written to Disk)**: from Dashboard: RabbitMQ/Metrics/RabbitMQ - Nodes 
- **Top 10 Queues by Consumers**: from Dashboard: RabbitMQ/Metrics/RabbitMQ - Queues 
- **Top 10 Queues by Errors**: from Dashboard: RabbitMQ/Metrics/RabbitMQ - Queues 
- **Top 10 Queues by Slave Nodes**: from Dashboard: RabbitMQ/Metrics/RabbitMQ - Queues 
- **Total Messages Published In Exhanges**: from Dashboard: RabbitMQ/Metrics/RabbitMQ - Exchanges 
- **Total Messages Published Out Echanges**: from Dashboard: RabbitMQ/Metrics/RabbitMQ - Exchanges 
- **Total Number of Messages**: from Dashboard: RabbitMQ/RabbitMQ - Overview 
- **Transactions Written to Disk**: from Dashboard: RabbitMQ/Metrics/RabbitMQ - Nodes

## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|RabbitMQ|Average Delivery Message Rate|Metrics|RabbitMQ/RabbitMQ - Overview|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} metric=rabbitmq\_overview\_messages\_delivered\| avg by messaging\_cluster \| rate|
|RabbitMQ|Average Disk Usage Percent|Metrics|RabbitMQ/RabbitMQ - Overview|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} metric=rabbitmq\_node\_disk\_free \| eval \_value/1024 \| avg by messaging\_cluster|
|RabbitMQ|Average Memory Usage Percent|Metrics|RabbitMQ/RabbitMQ - Overview|messaging\_cluster=rabbit\*  messaging\_cluster={{messaging\_cluster}}  metric=rabbitmq\_node\_mem\_used \| avg by messaging\_cluster|
|RabbitMQ|Average Number of Connections|Metrics|RabbitMQ/RabbitMQ - Overview|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} metric=rabbitmq\_overview\_connections\| avg by messaging\_cluster \| sum|
|RabbitMQ|Average Number of Consumers|Metrics|RabbitMQ/RabbitMQ - Overview|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} metric=rabbitmq\_overview\_consumers\|avg by messaging\_cluster \| sum|
|RabbitMQ|Average Number of Exchanges|Metrics|RabbitMQ/RabbitMQ - Overview|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} metric=rabbitmq\_overview\_exchanges\|avg by messaging\_cluster \| sum|
|RabbitMQ|Average Number of Nodes|Metrics|RabbitMQ/RabbitMQ - Overview|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}}  metric=rabbitmq\_overview\_clustering\_listeners \| avg by messaging\_cluster \| sum|
|RabbitMQ|Average Number of Queues|Metrics|RabbitMQ/RabbitMQ - Overview|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} metric=rabbitmq\_overview\_queues\|avg by messaging\_cluster \| sum|
|RabbitMQ|Average Publishing Message Rate|Metrics|RabbitMQ/RabbitMQ - Overview|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} metric=rabbitmq\_overview\_messages\_published \| avg by messaging\_cluster \|rate|
|RabbitMQ|Average Unacknowledged Messages|Metrics|RabbitMQ/RabbitMQ - Overview|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} metric=rabbitmq\_overview\_messages\_unacked\|avg by messaging\_cluster \| sum|
|RabbitMQ/Logs|Brokers Start/Add Events|Logs|RabbitMQ/Logs/RabbitMQ - Logs|messaging\_cluster=rabbit\* messaging\_system="rabbitmq" messaging\_cluster={{messaging\_cluster}} (\_sourceHost={{host}} or pod={{host}}) ("startup complete" or "up")<br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| where (\_raw contains "rabbit on node") or \_raw contains "startup complete"<br />\| parse "\* \* [\*] \<\*\> \*" as date,time,severity,id,msg<br />\| limit 10 \|concat(date,"-",time) as date\_time\|count as count by date\_time,msg \| sort by date\_time \| fields date\_time,msg|
|RabbitMQ/Logs|Error Over Time|Logs|RabbitMQ/Logs/RabbitMQ - Logs|messaging\_cluster=rabbit\* messaging\_system="rabbitmq" messaging\_cluster={{messaging\_cluster}} (\_sourceHost={{host}} or pod={{host}}) <br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\* \* [\*]" as date,time,severity  \| where severity="error"<br />\| timeslice 15m<br />\| count as count by \_timeslice<br />\| fillmissing timeslice(15m)<br />|
|RabbitMQ/Logs|Events by Severity|Logs|RabbitMQ/Logs/RabbitMQ - Logs|messaging\_cluster=rabbit\* messaging\_system="rabbitmq" messaging\_cluster={{messaging\_cluster}} (\_sourceHost={{host}} or pod={{host}}) <br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\* \* [\*]" as date,time,severity \| count by severity |
|RabbitMQ/Metrics|File Descriptors|Metrics|RabbitMQ/Metrics/RabbitMQ - Nodes|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric=rabbitmq\_node\_fd\_used \| avg by node \| parse field=node \*@\* as user,host \| avg by host|
|RabbitMQ/Metrics|Garbage Collection Operation Rate|Metrics|RabbitMQ/Metrics/RabbitMQ - Nodes|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric=rabbitmq\_node\_gc\_num\_rate \| avg by messaging\_cluster,node \| parse field=node \*@\* as user,host \| avg by host,messaging\_cluster|
|RabbitMQ|Last 10 Errors|Logs|RabbitMQ/RabbitMQ - Overview|messaging\_cluster=rabbit\* messaging\_system="rabbitmq" messaging\_cluster={{messaging\_cluster}}  "error"<br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\* \* [\*] \<\*\> \*" as date,time,severity,id,msg \| where severity ="error"  \| limit 10 \|concat(date,"-",time) as date\_time\|count as count by date\_time,severity,msg \| sort by date\_time \| fields date\_time,severity,msg|
|RabbitMQ/Logs|Last 10 Errors|Logs|RabbitMQ/Logs/RabbitMQ - Logs|messaging\_cluster=rabbit\* messaging\_system="rabbitmq" messaging\_cluster={{messaging\_cluster}} (\_sourceHost={{host}} or pod={{host}}) "error"<br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\* \* [\*] \<\*\> \*" as date,time,severity,id,msg\| where severity="error" \|concat(date,"-",time) as date\_time\|count as count by date\_time,severity,msg \|sort by count,date\_time\| limit 10 \|  fields date\_time,severity,msg |
|RabbitMQ/Logs|Last 25 Log Messages|Logs|RabbitMQ/Logs/RabbitMQ - Logs|messaging\_cluster=rabbit\* messaging\_system="rabbitmq" messaging\_cluster={{messaging\_cluster}} (\_sourceHost={{host}} or pod={{host}}) <br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\* \* [\*] \<\*\> \*" as date,time,severity,id,msg \| limit 15 \|concat(date,"-",time) as date\_time<br />\|count by date\_time,severity,msg <br />\|sort by date\_time <br />\| limit 25<br />\| fields date\_time,severity,msg|
|RabbitMQ/Logs|Log Reduce|Logs|RabbitMQ/Logs/RabbitMQ - Logs|messaging\_cluster=rabbit\* messaging\_system="rabbitmq" messaging\_cluster={{messaging\_cluster}} (\_sourceHost={{host}} or pod={{host}})<br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\* \* [\*] \<\*\> \*" as date,time,severity,id,msg \|limit 10000\| logreduce by msg \| \_count as count <br />\| fields msg, signature, count|
|RabbitMQ/Metrics|Memory Usage|Metrics|RabbitMQ/Metrics/RabbitMQ - Nodes|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric=rabbitmq\_node\_mem\_used \| eval \_value/1024/1024 \| avg by node,messaging\_cluster \| parse field=node \*@\* as user,host \| avg by host,messaging\_cluster|
|RabbitMQ/Metrics|Message Delivery Rate|Metrics|RabbitMQ/Metrics/RabbitMQ - Queues|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric=rabbitmq\_queue\_messages\_deliver\_rate \| avg by queue,messaging\_cluster|
|RabbitMQ/Metrics|Message Publish Rate|Metrics|RabbitMQ/Metrics/RabbitMQ - Queues|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric=rabbitmq\_queue\_messages\_publish\_rate \| avg by queue,messaging\_cluster|
|RabbitMQ/Metrics|Message Publish Rate In Exchanges|Metrics|RabbitMQ/Metrics/RabbitMQ - Exchanges|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric=rabbitmq\_exchange\_messages\_publish\_in\_rate \| avg by messaging\_cluster,exchange|
|RabbitMQ/Metrics|Message Publish Rate Out Exchanges|Metrics|RabbitMQ/Metrics/RabbitMQ - Exchanges|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric=rabbitmq\_exchange\_messages\_publish\_out\_rate \| avg by exchange,messaging\_cluster|
|RabbitMQ/Metrics|Node Uptime|Metrics|RabbitMQ/Metrics/RabbitMQ - Nodes|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric=rabbitmq\_node\_uptime \| eval \_value/3600000 \| avg by node \| parse field=node \*@\* as user,host \| avg by host|
|RabbitMQ/Metrics|Queue Memory Usage|Metrics|RabbitMQ/Metrics/RabbitMQ - Queues|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric=rabbitmq\_queue\_memory \|eval \_value/1024/1024\| avg by queue,messaging\_cluster|
|RabbitMQ/Metrics|Ram Transactions (Not Written to Disk)|Metrics|RabbitMQ/Metrics/RabbitMQ - Nodes|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric=rabbitmq\_node\_mnesia\_ram\_tx\_count \| avg by node \| parse field=node \*@\* as user,host \| avg by host|
|RabbitMQ/Logs|Stopped/Reset Events|Logs|RabbitMQ/Logs/RabbitMQ - Logs|messaging\_cluster=rabbit\* messaging\_system="rabbitmq" messaging\_cluster={{messaging\_cluster}} (\_sourceHost={{host}} or pod={{host}}) ("stopped" or "Resetting" or "down")<br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\* \* [\*] \<\*\> \*" as date,time,severity,id,msg \| limit 10 \|concat(date,"-",time) as date\_time\|count as count by date\_time,msg \| sort by date\_time \| fields date\_time,msg|
|RabbitMQ/Logs|Top 10 Errors|Logs|RabbitMQ/Logs/RabbitMQ - Logs|messaging\_cluster=rabbit\* messaging\_system="rabbitmq" messaging\_cluster={{messaging\_cluster}} (\_sourceHost={{host}} or pod={{host}}) "error"<br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\* \* [\*] \<\*\> \*" as date,time,severity,id,msg \| where severity ="error"   \|concat(date,"-",time) as date\_time\|count as count by severity,msg \| sort by count \| limit 10|
|RabbitMQ/Metrics|Top 10 Queues by Consumers|Metrics|RabbitMQ/Metrics/RabbitMQ - Queues|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric=rabbitmq\_queue\_consumers \| avg by queue,messaging\_cluster \| topk(5,avg)|
|RabbitMQ/Metrics|Top 10 Queues by Errors|Metrics|RabbitMQ/Metrics/RabbitMQ - Queues|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric=rabbitmq\_queue\_messages\_unack  \| avg by queue,messaging\_cluster|
|RabbitMQ/Metrics|Top 10 Queues by Slave Nodes|Metrics|RabbitMQ/Metrics/RabbitMQ - Queues|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric=rabbitmq\_queue\_slave\_nodes \| avg by queue,messaging\_cluster \| topk(5,avg)|
|RabbitMQ/Metrics|Total Messages Published In Exhanges|Metrics|RabbitMQ/Metrics/RabbitMQ - Exchanges|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric=rabbitmq\_exchange\_messages\_publish\_in \| avg by exchange,messaging\_cluster \| filter sum \> 0|
|RabbitMQ/Metrics|Total Messages Published Out Echanges|Metrics|RabbitMQ/Metrics/RabbitMQ - Exchanges|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric=rabbitmq\_exchange\_messages\_publish\_out \| avg by exchange,messaging\_cluster \| filter avg\>0|
|RabbitMQ|Total Number of Messages|Metrics|RabbitMQ/RabbitMQ - Overview|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} metric=rabbitmq\_overview\_messages\|avg by messaging\_cluster \| sum|
|RabbitMQ/Metrics|Transactions Written to Disk|Metrics|RabbitMQ/Metrics/RabbitMQ - Nodes|messaging\_cluster=rabbit\* messaging\_cluster={{messaging\_cluster}} host={{host}} metric=rabbitmq\_node\_mnesia\_disk\_tx\_count \| avg by node \| parse field=node \*@\* as user,host \| avg by host|

