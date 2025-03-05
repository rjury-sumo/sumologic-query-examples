# Parsers For RabbitMQ - OpenTelemetry

## Parser:
```
| json "log" as _rawlog nodrop
| parse "* * [*] <*> *" as date,time,severity,id,msg
```
### Use Cases:
Brokers Start/Add Events, Error Over Time, Events by Severity, Last 25 Log Messages, Log Reduce, Stopped/Reset Events, Top 10 Errors



## Parser:
```
| json "log" as _rawlog nodrop
| parse "* * [*] <*> *" as date,time,severity,id,msg | limit 10 |concat(date,"-",time) as date_time|count as count by date_time,msg | sort by date_time |```
### Use Cases:
Stopped/Reset Events



## Parser:
```
| json "log" as _rawlog nodrop
| parse "* * [*] <*> *" as date,time,severity,id,msg | limit 15 |concat(date,"-",time) as date_time
```
### Use Cases:
Error Over Time, Last 25 Log Messages, Stopped/Reset Events



## Parser:
```
| json "log" as _rawlog nodrop
| parse "* * [*] <*> *" as date,time,severity,id,msg | where severity ="error"   |concat(date,"-",time) as date_time|count as count by severity,msg | sort by count |```
### Use Cases:
Error Over Time, Events by Severity, Last 25 Log Messages, Stopped/Reset Events, Top 10 Errors



## Parser:
```
| json "log" as _rawlog nodrop
| parse "* * [*] <*> *" as date,time,severity,id,msg |limit 10000| logreduce by msg | _count as count 
```
### Use Cases:
Error Over Time, Events by Severity, Last 25 Log Messages, Log Reduce, Stopped/Reset Events, Top 10 Errors



## Parser:
```
| json "log" as _rawlog nodrop
| parse "* * [*] <*> *" as date,time,severity,id,msg| where severity="error" |concat(date,"-",time) as date_time|count as count by date_time,severity,msg |sort by count,date_time| limit 10 |```
### Use Cases:
Brokers Start/Add Events, Error Over Time, Events by Severity, Last 10 Errors, Last 25 Log Messages, Log Reduce, Stopped/Reset Events, Top 10 Errors



## Parser:
```
| json "log" as _rawlog nodrop
| parse "* * [*]" as date,time,severity  | where severity="error"
```
### Use Cases:
Error Over Time, Stopped/Reset Events



## Parser:
```
| json "log" as _rawlog nodrop
| parse "* * [*]" as date,time,severity |```
### Use Cases:
Error Over Time, Events by Severity, Last 25 Log Messages, Stopped/Reset Events


