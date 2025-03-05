# Parsers For ActiveMQ - OpenTelemetry

## Parser:
```
| json auto maxdepth 1 nodrop
| parse field=raw_log_message "* | * | * * * | *" as timedate,severity, username, operation, params, threadname
 `n```
### Use Cases:
Errors, Events by location, Events by Severity, Last 25 Audit Log Messages, Log Reduce, Start/Stop Activity, Top 10 Users



## Parser:
```
| json auto maxdepth 1 nodrop
| parse field=raw_log_message "* | * | * * * | *" as timedate,severity, username, operation, params, threadname 
| parse regex field=params "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
 `n```
### Use Cases:
Errors, Last 25 Audit Log Messages, Log Reduce



## Parser:
```
| json auto maxdepth 1 nodrop
| parse field=raw_log_message "* | * | * * * | *" as timedate,severity, username, operation, params, threadname nodrop
| parse regex field=params "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
 `n```
### Use Cases:
Create Activity, Delete Activity, Errors, Events by location, Events by Severity, Last 25 Audit Log Messages, Log Reduce, Start/Stop Activity, Top 10 Users



## Parser:
```
| json auto maxdepth 1 nodrop
| parse field=raw_log_message "* | * | * | *" as timedate,severity, msg, threadname 
 `n```
### Use Cases:
Errors, Log Reduce



## Parser:
```
| json auto maxdepth 1 nodrop
| parse field=raw_log_message "* | * | * | *" as timedate,severity, msg, threadname 
| parse regex field=msg "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
 `n```
### Use Cases:
Errors, Events by location, Events by Severity, Last 25 Audit Log Messages, Log Reduce, Start/Stop Activity



## Parser:
```
| json auto maxdepth 1 nodrop
| parse field=raw_log_message "*|*|*|*|*" as timedate,severity,msg,class,address  | count as count by timedate,msg | sort by timedate | `n```
### Use Cases:
Broker Stopped/Reset Events, Create Activity, Delete Activity, Error Over Time, Errors, Events by location, Events by Severity, Last 10 Errors and Warnings, Last 25 Audit Log Messages, Log Reduce, Start/Stop Activity, Top 10 Users



## Parser:
```
| json auto maxdepth 1 nodrop
| parse field=raw_log_message "*|*|*|*|*" as timedate,severity,msg,class,address  | trim(severity) as severity | limit 10000|logreduce by msg | _count as count | sort by count
 `n```
### Use Cases:
Broker Stopped/Reset Events, Create Activity, Delete Activity, Error Over Time, Errors, Events by location, Events by Severity, Last 10 Errors and Warnings, Last 25 Audit Log Messages, Log Reduce, Start/Stop Activity, Top 10 Users



## Parser:
```
| json auto maxdepth 1 nodrop
| parse field=raw_log_message "*|*|*|*|*" as timedate,severity,msg,class,address  | trim(severity) as severity |count as count by timedate,msg,severity | sort by timedate | limit 25 | `n```
### Use Cases:
Broker Stopped/Reset Events, Create Activity, Delete Activity, Error Over Time, Errors, Events by location, Events by Severity, Last 10 Errors and Warnings, Last 25 Audit Log Messages, Last 25 Log Messages, Log Reduce, Start/Stop Activity, Top 10 Users



## Parser:
```
| json auto maxdepth 1 nodrop
| parse field=raw_log_message "*|*|*|*|*" as timedate,severity,msg,class,address | count as count by timedate,msg | sort by timedate | `n```
### Use Cases:
Broker Start/Add Events, Broker Stopped/Reset Events, Create Activity, Delete Activity, Error Over Time, Errors, Events by location, Events by Severity, Last 10 Errors and Warnings, Last 25 Audit Log Messages, Last 25 Log Messages, Log Reduce, Start/Stop Activity, Top 10 Errors, Top 10 Users



## Parser:
```
| json auto maxdepth 1 nodrop
| parse field=raw_log_message "*|*|*|*|*" as timedate,severity,msg,class,address |trim(severity) as severity 
 `n```
### Use Cases:
Create Activity, Delete Activity, Error Over Time, Errors, Events by location, Events by Severity, Last 25 Audit Log Messages, Log Reduce, Start/Stop Activity, Top 10 Users



## Parser:
```
| json auto maxdepth 1 nodrop
| parse field=raw_log_message "*|*|*|*|*" as timedate,severity,msg,class,address |trim(severity) as severity | `n```
### Use Cases:
Broker Start/Add Events, Broker Stopped/Reset Events, Create Activity, Delete Activity, Error Over Time, Errors, Events by location, Events by Severity, Last 10 Errors and Warnings, Last 25 Audit Log Messages, Last 25 Log Messages, Log Reduce, Start/Stop Activity, Top 10 Errors, Top 10 Users



## Parser:
```
| json auto maxdepth 1 nodrop
| parse field=raw_log_message "*|*|*|*|*" as timedate,severity,msg,class,address |trim(severity) as severity | count as count by severity,msg | sort by count | `n```
### Use Cases:
Broker Stopped/Reset Events, Create Activity, Delete Activity, Error Over Time, Errors, Events by location, Events by Severity, Last 10 Errors and Warnings, Last 25 Audit Log Messages, Last 25 Log Messages, Log Reduce, Start/Stop Activity, Top 10 Errors, Top 10 Users



## Parser:
```
| json auto maxdepth 1 nodrop
| parse field=raw_log_message "*|*|*|*|*" as timedate,severity,msg,class,address |trim(severity) as severity | count as count by severity,msg,timedate | sort by count,timedate | limit 10 | `n```
### Use Cases:
Create Activity, Delete Activity, Error Over Time, Errors, Events by location, Events by Severity, Last 10 Errors and Warnings, Last 25 Audit Log Messages, Log Reduce, Start/Stop Activity, Top 10 Users



## Parser:
```
| parse "*|*|*" as datetime,severity,msg
 `n```
### Use Cases:
Errors


