# Parsers For RabbitMQ

## Parser:
```
| json "log" as _rawlog nodrop
| parse "* * [*] <*> *" as date,time,severity,id,msg
 `n```
### Use Cases:
Brokers Start/Add Events, Error Over Time, Events by Severity, Stopped/Reset Events, Top 10 Errors



## Parser:
```
| json "log" as _rawlog nodrop
| parse "* * [*] <*> *" as date,time,severity,id,msg | limit 10 |concat(date,"-",time) as date_time|count as count by date_time,msg | sort by date_time | `n```
### Use Cases:
Error Over Time, Events by Severity, Stopped/Reset Events, Top 10 Errors



## Parser:
```
| json "log" as _rawlog nodrop
| parse "* * [*] <*> *" as date,time,severity,id,msg | limit 15 |concat(date,"-",time) as date_time
 `n```
### Use Cases:
Brokers Start/Add Events, Error Over Time, Events by Severity, Last 25 Log Messages, Stopped/Reset Events, Top 10 Errors



## Parser:
```
| json "log" as _rawlog nodrop
| parse "* * [*] <*> *" as date,time,severity,id,msg | where severity ="error"   |concat(date,"-",time) as date_time|count as count by severity,msg | sort by count | `n```
### Use Cases:
Error Over Time, Events by Severity, Top 10 Errors



## Parser:
```
| json "log" as _rawlog nodrop
| parse "* * [*] <*> *" as date,time,severity,id,msg | where severity ="error"  | limit 10 |concat(date,"-",time) as date_time|count as count by date_time,severity,msg | sort by date_time | `n```
### Use Cases:
Brokers Start/Add Events, Error Over Time, Events by Severity, File Descriptors, Garbage Collection Operation Rate, Last 10 Errors, Last 25 Log Messages, Log Reduce, Memory Usage, Node Uptime, Ram Transactions (Not Written to Disk), Stopped/Reset Events, Top 10 Errors, Transactions Written to Disk



## Parser:
```
| json "log" as _rawlog nodrop
| parse "* * [*] <*> *" as date,time,severity,id,msg |limit 10000| logreduce by msg | _count as count 
 `n```
### Use Cases:
Brokers Start/Add Events, Error Over Time, Events by Severity, Last 10 Errors, Last 25 Log Messages, Log Reduce, Stopped/Reset Events, Top 10 Errors



## Parser:
```
| json "log" as _rawlog nodrop
| parse "* * [*] <*> *" as date,time,severity,id,msg| where severity="error" |concat(date,"-",time) as date_time|count as count by date_time,severity,msg |sort by count,date_time| limit 10 | `n```
### Use Cases:
Brokers Start/Add Events, Error Over Time, Events by Severity, Last 10 Errors, Last 25 Log Messages, Stopped/Reset Events, Top 10 Errors



## Parser:
```
| json "log" as _rawlog nodrop
| parse "* * [*]" as date,time,severity  | where severity="error"
 `n```
### Use Cases:
Error Over Time, Events by Severity



## Parser:
```
| json "log" as _rawlog nodrop
| parse "* * [*]" as date,time,severity | `n```
### Use Cases:
Events by Severity



## Parser:
```
| parse field=node *@* as user,host | `n```
### Use Cases:
Brokers Start/Add Events, Error Over Time, Events by Severity, File Descriptors, Garbage Collection Operation Rate, Last 10 Errors, Last 25 Log Messages, Log Reduce, Memory Usage, Node Uptime, Ram Transactions (Not Written to Disk), Stopped/Reset Events, Top 10 Errors, Transactions Written to Disk


