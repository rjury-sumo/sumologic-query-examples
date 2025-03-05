# Parsers For ActiveMQ

## Parser:
```
| json "log" as _rawlog nodrop
| parse "*|*|*" as datetime,severity,msg
 
```
### Use Cases:
Last 10 Errors



## Parser:
```
| json "log" as _rawlog nodrop
| parse "*|*|*|*|*" as timedate,severity,msg,class,address  | count as count by timedate,msg | sort by timedate | 
```
### Use Cases:
Broker Stopped/Reset Events, Error Over Time, Events by Severity, Last 10 Errors, Last 10 Errors and Warnings, Top 10 Errors



## Parser:
```
| json "log" as _rawlog nodrop
| parse "*|*|*|*|*" as timedate,severity,msg,class,address  | trim(severity) as severity | limit 10000|logreduce by msg | _count as count | sort by count
 
```
### Use Cases:
Broker Start/Add Events, Broker Stopped/Reset Events, Error Over Time, Events by Severity, Last 10 Errors, Last 10 Errors and Warnings, Last 25 Log Messages, Log Reduce, Top 10 Errors



## Parser:
```
| json "log" as _rawlog nodrop
| parse "*|*|*|*|*" as timedate,severity,msg,class,address | count as count by timedate,msg | sort by timedate | 
```
### Use Cases:
Broker Start/Add Events, Broker Stopped/Reset Events, Error Over Time, Events by Severity, Last 10 Errors, Last 10 Errors and Warnings, Top 10 Errors



## Parser:
```
| json "log" as _rawlog nodrop
| parse "*|*|*|*|*" as timedate,severity,msg,class,address |limit 25 | trim(severity) as severity |count as count by timedate,msg,severity | sort by timedate | 
```
### Use Cases:
Broker Start/Add Events, Broker Stopped/Reset Events, Error Over Time, Events by Severity, Last 10 Errors, Last 10 Errors and Warnings, Last 25 Log Messages, Top 10 Errors



## Parser:
```
| json "log" as _rawlog nodrop
| parse "*|*|*|*|*" as timedate,severity,msg,class,address |trim(severity) as severity 
 
```
### Use Cases:
Error Over Time, Events by Severity, Last 10 Errors



## Parser:
```
| json "log" as _rawlog nodrop
| parse "*|*|*|*|*" as timedate,severity,msg,class,address |trim(severity) as severity | 
```
### Use Cases:
Events by Severity, Last 10 Errors



## Parser:
```
| json "log" as _rawlog nodrop
| parse "*|*|*|*|*" as timedate,severity,msg,class,address |trim(severity) as severity | count as count by severity,msg | sort by count | 
```
### Use Cases:
Error Over Time, Events by Severity, Last 10 Errors, Top 10 Errors



## Parser:
```
| json "log" as _rawlog nodrop
| parse "*|*|*|*|*" as timedate,severity,msg,class,address |trim(severity) as severity | count as count by severity,msg,timedate | sort by count,timedate | limit 10 | 
```
### Use Cases:
Error Over Time, Events by Severity, Last 10 Errors, Last 10 Errors and Warnings, Top 10 Errors



## Parser:
```
| parse  field=destinationName * as queue | avg by queue,messaging_cluster | 
```
### Use Cases:
Broker Start/Add Events, Broker Stopped/Reset Events, Error Over Time, Events by Severity, Last 10 Errors, Last 10 Errors and Warnings, Last 25 Log Messages, Log Reduce, Top 10 Errors, Top 10 Queues by Errors



## Parser:
```
| parse  field=destinationName * as queue |avg by queue,messaging_cluster | 
```
### Use Cases:
Broker Start/Add Events, Broker Stopped/Reset Events, Error Over Time, Events by Severity, Last 10 Errors, Last 10 Errors and Warnings, Last 25 Log Messages, Log Reduce, Top 10 Errors, Top 10 Queues by Errors, Top 10 Queues by Producers



## Parser:
```
| parse  field=destinationName * as queue |avg by queue,messaging_cluster| 
```
### Use Cases:
Average Message Size, Broker Start/Add Events, Broker Stopped/Reset Events, Error Over Time, Events by Severity, Last 10 Errors, Last 10 Errors and Warnings, Last 25 Log Messages, Log Reduce, Top 10 Errors, Top 10 Queues by Consumers, Top 10 Queues by Errors, Top 10 Queues by Producers



## Parser:
```
| parse  field=destinationName * as topic | 
```
### Use Cases:
Average Message Size, Avg Message Dequeue Count, Avg Message Enqueue Count, Broker Start/Add Events, Broker Stopped/Reset Events, Consumer Count, Error Over Time, Events by Severity, Expired Messages, Last 10 Errors, Last 10 Errors and Warnings, Last 25 Log Messages, Log Reduce, Producer Count, Top 10 Errors, Top 10 Queues by Consumers, Top 10 Queues by Errors, Top 10 Queues by Producers, Top 5 Topics by Errors



## Parser:
```
| parse  field=destinationName * as topic |avg by messaging_cluster,topic | topk(10, avg) | 
```
### Use Cases:
Average Message Size, Avg Message Dequeue Count, Avg Message Enqueue Count, Broker Start/Add Events, Broker Stopped/Reset Events, Consumer Count, Error Over Time, Events by Severity, Expired Messages, Last 10 Errors, Last 10 Errors and Warnings, Last 25 Log Messages, Log Reduce, Producer Count, Top 10 Errors, Top 10 Queues by Consumers, Top 10 Queues by Errors, Top 10 Queues by Producers, Top 5 Topics by Errors



## Parser:
```
| parse  field=destinationName * as topic| avg by topic,messaging_cluster | 
```
### Use Cases:
Average Message Size, Broker Start/Add Events, Broker Stopped/Reset Events, Error Over Time, Events by Severity, Last 10 Errors, Last 10 Errors and Warnings, Last 25 Log Messages, Log Reduce, Top 10 Errors, Top 10 Queues by Consumers, Top 10 Queues by Errors, Top 10 Queues by Producers, Top 5 Topics by Errors



## Parser:
```
| parse field=destinationName * as queue | avg by queue,messaging_cluster | 
```
### Use Cases:
Average Message Size, Broker Start/Add Events, Broker Stopped/Reset Events, Error Over Time, Events by Severity, Last 10 Errors, Last 10 Errors and Warnings, Last 25 Log Messages, Log Reduce, Top 10 Errors, Top 10 Queues by Errors, Top 10 Queues by Producers


