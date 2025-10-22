# Parsers For RabbitMQ - OpenTelemetry

**RabbitMQ - OpenTelemetry/RabbitMQ - Overview/Add Events**
```
 sumo.datasource="rabbitmq" messaging.cluster.name={{messaging.cluster.name}} host.name={{host.name}} ("startup complete" or "up")
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| where (_raw contains "rabbit on node") or _raw contains "startup complete"
| parse "* * [*] <*> *" as date,time,severity,id,msg
```

**RabbitMQ - OpenTelemetry/RabbitMQ - Overview/Error Over Time**
```
 sumo.datasource="rabbitmq" messaging.cluster.name={{messaging.cluster.name}} host.name={{host.name}} 
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse "* * [*]" as date,time,severity  | where severity="error"
```

**RabbitMQ - OpenTelemetry/RabbitMQ - Overview/Events by Severity**
```
 sumo.datasource="rabbitmq" messaging.cluster.name={{messaging.cluster.name}} host.name={{host.name}} 
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse "* * [*]" as date,time,severity | count by severity 
```

**RabbitMQ - OpenTelemetry/RabbitMQ - Overview/Last 10 Errors**
```
 sumo.datasource="rabbitmq" messaging.cluster.name={{messaging.cluster.name}} host.name={{host.name}} "error"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse "* * [*] <*> *" as date,time,severity,id,msg| where severity="error" |concat(date,"-",time) as date_time|count as count by date_time,severity,msg |sort by count,date_time| limit 10 |  fields date_time,severity,msg 
```

**RabbitMQ - OpenTelemetry/RabbitMQ - Overview/Last 25 Log Messages**
```
 sumo.datasource="rabbitmq" messaging.cluster.name={{messaging.cluster.name}} host.name={{host.name}} 
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse "* * [*] <*> *" as date,time,severity,id,msg | limit 15 |concat(date,"-",time) as date_time
```

**RabbitMQ - OpenTelemetry/RabbitMQ - Overview/Log Reduce**
```
 sumo.datasource="rabbitmq" messaging.cluster.name={{messaging.cluster.name}} host.name={{host.name}}
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse "* * [*] <*> *" as date,time,severity,id,msg |limit 10000| logreduce by msg | _count as count 
```

**RabbitMQ - OpenTelemetry/RabbitMQ - Overview/Reset Events**
```
 sumo.datasource="rabbitmq" messaging.cluster.name={{messaging.cluster.name}} host.name={{host.name}} ("stopped" or "Resetting" or "down")
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse "* * [*] <*> *" as date,time,severity,id,msg | limit 10 |concat(date,"-",time) as date_time|count as count by date_time,msg | sort by date_time | fields date_time,msg
```

**RabbitMQ - OpenTelemetry/RabbitMQ - Overview/Top 10 Errors**
```
 sumo.datasource="rabbitmq" messaging.cluster.name={{messaging.cluster.name}} host.name={{host.name}} "error"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse "* * [*] <*> *" as date,time,severity,id,msg | where severity ="error"   |concat(date,"-",time) as date_time|count as count by severity,msg | sort by count | limit 10
```


