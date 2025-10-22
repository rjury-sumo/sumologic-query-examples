# Parsers For RabbitMQ

**RabbitMQ/Logs/Add Events**
```
messaging_cluster=rabbit* messaging_system="rabbitmq" messaging_cluster={{messaging_cluster}} (_sourceHost={{host}} or pod={{host}}) ("startup complete" or "up")
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| where (_raw contains "rabbit on node") or _raw contains "startup complete"
| parse "* * [*] <*> *" as date,time,severity,id,msg
```

**RabbitMQ/Logs/Error Over Time**
```
messaging_cluster=rabbit* messaging_system="rabbitmq" messaging_cluster={{messaging_cluster}} (_sourceHost={{host}} or pod={{host}}) 
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse "* * [*]" as date,time,severity  | where severity="error"
```

**RabbitMQ/Logs/Events by Severity**
```
messaging_cluster=rabbit* messaging_system="rabbitmq" messaging_cluster={{messaging_cluster}} (_sourceHost={{host}} or pod={{host}}) 
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse "* * [*]" as date,time,severity | count by severity 
```

**RabbitMQ/Logs/Last 10 Errors**
```
messaging_cluster=rabbit* messaging_system="rabbitmq" messaging_cluster={{messaging_cluster}} (_sourceHost={{host}} or pod={{host}}) "error"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse "* * [*] <*> *" as date,time,severity,id,msg| where severity="error" |concat(date,"-",time) as date_time|count as count by date_time,severity,msg |sort by count,date_time| limit 10 |  fields date_time,severity,msg 
```

**RabbitMQ/Logs/Last 25 Log Messages**
```
messaging_cluster=rabbit* messaging_system="rabbitmq" messaging_cluster={{messaging_cluster}} (_sourceHost={{host}} or pod={{host}}) 
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse "* * [*] <*> *" as date,time,severity,id,msg | limit 15 |concat(date,"-",time) as date_time
```

**RabbitMQ/Logs/Log Reduce**
```
messaging_cluster=rabbit* messaging_system="rabbitmq" messaging_cluster={{messaging_cluster}} (_sourceHost={{host}} or pod={{host}})
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse "* * [*] <*> *" as date,time,severity,id,msg |limit 10000| logreduce by msg | _count as count 
```

**RabbitMQ/Logs/Reset Events**
```
messaging_cluster=rabbit* messaging_system="rabbitmq" messaging_cluster={{messaging_cluster}} (_sourceHost={{host}} or pod={{host}}) ("stopped" or "Resetting" or "down")
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse "* * [*] <*> *" as date,time,severity,id,msg | limit 10 |concat(date,"-",time) as date_time|count as count by date_time,msg | sort by date_time | fields date_time,msg
```

**RabbitMQ/Logs/Top 10 Errors**
```
messaging_cluster=rabbit* messaging_system="rabbitmq" messaging_cluster={{messaging_cluster}} (_sourceHost={{host}} or pod={{host}}) "error"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse "* * [*] <*> *" as date,time,severity,id,msg | where severity ="error"   |concat(date,"-",time) as date_time|count as count by severity,msg | sort by count | limit 10
```

**RabbitMQ/Overview/Last 10 Errors**
```
messaging_cluster=rabbit* messaging_system="rabbitmq" messaging_cluster={{messaging_cluster}}  "error"
| json "log" as _rawlog nodrop
| if(isEmpty(_rawlog),_raw,_rawlog) as _raw
| parse "* * [*] <*> *" as date,time,severity,id,msg | where severity ="error"  | limit 10 |concat(date,"-",time) as date_time|count as count by date_time,severity,msg | sort by date_time | fields date_time,severity,msg
```


