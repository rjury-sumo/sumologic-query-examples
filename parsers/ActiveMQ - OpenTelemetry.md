# Parsers For ActiveMQ - OpenTelemetry

**ActiveMQ - OpenTelemetry/ActiveMQ - Audit/Create Activity**
```
sumo.datasource=activemq deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}} log.file.path=*audit* 
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as raw_log_message
| parse field=raw_log_message "* | * | * * * | *" as timedate,severity, username, operation, params, threadname nodrop
| parse regex field=params "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
```

**ActiveMQ - OpenTelemetry/ActiveMQ - Audit/Delete Activity**
```
sumo.datasource=activemq deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}} log.file.path=*audit* 
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as raw_log_message
| parse field=raw_log_message "* | * | * * * | *" as timedate,severity, username, operation, params, threadname nodrop
| parse regex field=params "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
```

**ActiveMQ - OpenTelemetry/ActiveMQ - Audit/Events by location**
```
sumo.datasource=activemq deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}} log.file.path=*audit* 
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as raw_log_message
| parse field=raw_log_message "* | * | * | *" as timedate,severity, msg, threadname 
| parse regex field=msg "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
```

**ActiveMQ - OpenTelemetry/ActiveMQ - Audit/Events by Severity**
```
sumo.datasource=activemq deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}} log.file.path=*audit* 
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as raw_log_message
| parse field=raw_log_message "* | * | * * * | *" as timedate,severity, username, operation, params, threadname
```

**ActiveMQ - OpenTelemetry/ActiveMQ - Audit/Last 25 Audit Log Messages**
```
sumo.datasource=activemq deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}} log.file.path=*audit* 
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as raw_log_message
| parse field=raw_log_message "* | * | * * * | *" as timedate,severity, username, operation, params, threadname 
| parse regex field=params "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
```

**ActiveMQ - OpenTelemetry/ActiveMQ - Audit/Log Reduce**
```
sumo.datasource=activemq deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}} log.file.path=*audit* 
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as raw_log_message
| parse field=raw_log_message "* | * | * | *" as timedate,severity, msg, threadname 
```

**ActiveMQ - OpenTelemetry/ActiveMQ - Audit/Stop Activity**
```
sumo.datasource=activemq deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}} log.file.path=*audit* 
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as raw_log_message
| parse field=raw_log_message "* | * | * * * | *" as timedate,severity, username, operation, params, threadname nodrop
| parse regex field=params "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
```

**ActiveMQ - OpenTelemetry/ActiveMQ - Audit/Top 10 Users**
```
sumo.datasource=activemq deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}} log.file.path=*audit* 
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as raw_log_message
| parse field=raw_log_message "* | * | * * * | *" as timedate,severity, username, operation, params, threadname
```

**ActiveMQ - OpenTelemetry/ActiveMQ - Logs/Add Events**
```
sumo.datasource=activemq deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}} "started" "Apache ActiveMQ"
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as raw_log_message
| parse field=raw_log_message "*|*|*|*|*" as timedate,severity,msg,class,address | count as count by timedate,msg | sort by timedate | fields timedate,msg
```

**ActiveMQ - OpenTelemetry/ActiveMQ - Logs/Error Over Time**
```
sumo.datasource=activemq deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}} ("ERROR" or "Could not accept connection")
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as raw_log_message
| parse field=raw_log_message "*|*|*|*|*" as timedate,severity,msg,class,address |trim(severity) as severity 
```

**ActiveMQ - OpenTelemetry/ActiveMQ - Logs/Events by Severity**
```
sumo.datasource=activemq deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as raw_log_message
| parse field=raw_log_message "*|*|*|*|*" as timedate,severity,msg,class,address |trim(severity) as severity | count by severity
```

**ActiveMQ - OpenTelemetry/ActiveMQ - Logs/Last 10 Errors and Warnings**
```
sumo.datasource=activemq deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}} ("ERROR" or "WARN")
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as raw_log_message
| parse field=raw_log_message "*|*|*|*|*" as timedate,severity,msg,class,address |trim(severity) as severity | count as count by severity,msg,timedate | sort by count,timedate | limit 10 | fields timedate,severity,msg
```

**ActiveMQ - OpenTelemetry/ActiveMQ - Logs/Last 25 Log Messages**
```
sumo.datasource=activemq deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as raw_log_message
| parse field=raw_log_message "*|*|*|*|*" as timedate,severity,msg,class,address  | trim(severity) as severity |count as count by timedate,msg,severity | sort by timedate | limit 25 |  fields timedate,severity,msg
```

**ActiveMQ - OpenTelemetry/ActiveMQ - Logs/Log Reduce**
```
sumo.datasource=activemq deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as raw_log_message
| parse field=raw_log_message "*|*|*|*|*" as timedate,severity,msg,class,address  | trim(severity) as severity | limit 10000|logreduce by msg | _count as count | sort by count
```

**ActiveMQ - OpenTelemetry/ActiveMQ - Logs/Reset Events**
```
sumo.datasource=activemq deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}} "shutdown" "Apache ActiveMQ"
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as raw_log_message
| parse field=raw_log_message "*|*|*|*|*" as timedate,severity,msg,class,address  | count as count by timedate,msg | sort by timedate | fields timedate,msg
```

**ActiveMQ - OpenTelemetry/ActiveMQ - Logs/Top 10 Errors**
```
sumo.datasource=activemq deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}} ("ERROR" or "Could not accept connection")
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as raw_log_message
| parse field=raw_log_message "*|*|*|*|*" as timedate,severity,msg,class,address |trim(severity) as severity | count as count by severity,msg | sort by count | limit 10
```

**ActiveMQ - OpenTelemetry/ActiveMQ - Overview/Errors**
```
sumo.datasource=activemq deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}} (*error* or *exception* or "Could not accept connection")
| parse "*|*|*" as datetime,severity,msg
```


