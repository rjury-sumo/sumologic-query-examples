# RabbitMQ - OpenTelemetry

## Searches

### Log Searches

- **Brokers Start/Add Events**: from Dashboard: Installed Apps/RabbitMQ - OpenTelemetry/RabbitMQ - Overview 
- **Error Over Time**: from Dashboard: Installed Apps/RabbitMQ - OpenTelemetry/RabbitMQ - Overview 
- **Events by Severity**: from Dashboard: Installed Apps/RabbitMQ - OpenTelemetry/RabbitMQ - Overview 
- **Last 10 Errors**: from Dashboard: Installed Apps/RabbitMQ - OpenTelemetry/RabbitMQ - Overview 
- **Last 25 Log Messages**: from Dashboard: Installed Apps/RabbitMQ - OpenTelemetry/RabbitMQ - Overview 
- **Log Reduce**: from Dashboard: Installed Apps/RabbitMQ - OpenTelemetry/RabbitMQ - Overview 
- **Stopped/Reset Events**: from Dashboard: Installed Apps/RabbitMQ - OpenTelemetry/RabbitMQ - Overview 
- **Top 10 Errors**: from Dashboard: Installed Apps/RabbitMQ - OpenTelemetry/RabbitMQ - Overview

### Metric Searches


## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|RabbitMQ - OpenTelemetry|Brokers Start/Add Events|Logs|Installed Apps/RabbitMQ - OpenTelemetry/RabbitMQ - Overview| sumo.datasource="rabbitmq" messaging.cluster.name={{messaging.cluster.name}} host.name={{host.name}} ("startup complete" or "up")<br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| where (\_raw contains "rabbit on node") or \_raw contains "startup complete"<br />\| parse "\* \* [\*] \<\*\> \*" as date,time,severity,id,msg<br />\| limit 10 \|concat(date,"-",time) as date\_time\|count as count by date\_time,msg \| sort by date\_time \| fields date\_time,msg|
|RabbitMQ - OpenTelemetry|Error Over Time|Logs|Installed Apps/RabbitMQ - OpenTelemetry/RabbitMQ - Overview| sumo.datasource="rabbitmq" messaging.cluster.name={{messaging.cluster.name}} host.name={{host.name}} <br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\* \* [\*]" as date,time,severity  \| where severity="error"<br />\| timeslice 15m<br />\| count as count by \_timeslice<br />\| fillmissing timeslice(15m)<br />|
|RabbitMQ - OpenTelemetry|Events by Severity|Logs|Installed Apps/RabbitMQ - OpenTelemetry/RabbitMQ - Overview| sumo.datasource="rabbitmq" messaging.cluster.name={{messaging.cluster.name}} host.name={{host.name}} <br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\* \* [\*]" as date,time,severity \| count by severity |
|RabbitMQ - OpenTelemetry|Last 10 Errors|Logs|Installed Apps/RabbitMQ - OpenTelemetry/RabbitMQ - Overview| sumo.datasource="rabbitmq" messaging.cluster.name={{messaging.cluster.name}} host.name={{host.name}} "error"<br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\* \* [\*] \<\*\> \*" as date,time,severity,id,msg\| where severity="error" \|concat(date,"-",time) as date\_time\|count as count by date\_time,severity,msg \|sort by count,date\_time\| limit 10 \|  fields date\_time,severity,msg |
|RabbitMQ - OpenTelemetry|Last 25 Log Messages|Logs|Installed Apps/RabbitMQ - OpenTelemetry/RabbitMQ - Overview| sumo.datasource="rabbitmq" messaging.cluster.name={{messaging.cluster.name}} host.name={{host.name}} <br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\* \* [\*] \<\*\> \*" as date,time,severity,id,msg \| limit 15 \|concat(date,"-",time) as date\_time<br />\|count by date\_time,severity,msg <br />\|sort by date\_time <br />\| limit 25<br />\| fields date\_time,severity,msg|
|RabbitMQ - OpenTelemetry|Log Reduce|Logs|Installed Apps/RabbitMQ - OpenTelemetry/RabbitMQ - Overview| sumo.datasource="rabbitmq" messaging.cluster.name={{messaging.cluster.name}} host.name={{host.name}}<br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\* \* [\*] \<\*\> \*" as date,time,severity,id,msg \|limit 10000\| logreduce by msg \| \_count as count <br />\| fields msg, signature, count|
|RabbitMQ - OpenTelemetry|Stopped/Reset Events|Logs|Installed Apps/RabbitMQ - OpenTelemetry/RabbitMQ - Overview| sumo.datasource="rabbitmq" messaging.cluster.name={{messaging.cluster.name}} host.name={{host.name}} ("stopped" or "Resetting" or "down")<br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\* \* [\*] \<\*\> \*" as date,time,severity,id,msg \| limit 10 \|concat(date,"-",time) as date\_time\|count as count by date\_time,msg \| sort by date\_time \| fields date\_time,msg|
|RabbitMQ - OpenTelemetry|Top 10 Errors|Logs|Installed Apps/RabbitMQ - OpenTelemetry/RabbitMQ - Overview| sumo.datasource="rabbitmq" messaging.cluster.name={{messaging.cluster.name}} host.name={{host.name}} "error"<br />\| json "log" as \_rawlog nodrop<br />\| if(isEmpty(\_rawlog),\_raw,\_rawlog) as \_raw<br />\| parse "\* \* [\*] \<\*\> \*" as date,time,severity,id,msg \| where severity ="error"   \|concat(date,"-",time) as date\_time\|count as count by severity,msg \| sort by count \| limit 10|

