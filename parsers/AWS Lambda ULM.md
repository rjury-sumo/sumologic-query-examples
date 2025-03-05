# Parsers For AWS Lambda ULM

## Parser:
```
| json "message"
| parse field=logstream "*/[*]*" as logstreamDate,version,logstreamID
| parse field=loggroup "/aws/lambda/*" as functionName
| parse field=message "*\t*\t*" as time,RequestId,errorObj
 
```
### Use Cases:
Log - AWS Services Invoking Functions - Outlier, Log - Duration by Hour (Average) - Outlier, Log - Duration by Hour (Sum) - Outlier, Log - Error Breakdown by Function, Log - Error Count



## Parser:
```
| json "message"
| parse field=logstream "*/[*]*" as logstreamDate,version,logstreamID
| parse field=loggroup "/aws/lambda/*" as functionName
| parse field=message "*\t*\t*" as time,RequestId,errorObj
| json  field=errorObj "errorMessage"
 
```
### Use Cases:
Log - AWS Services Invoking Functions - Outlier, Log - Duration by Hour (Average) - Outlier, Log - Duration by Hour (Sum) - Outlier, Log - Error Breakdown by Function, Log - Error Count, Log - Top Error Messages



## Parser:
```
| json "message"
| parse regex field=message "REPORT\s+RequestId:\s+(?<RequestId>[^\s]+)\s+Duration:\s+(?<Duration>[^\s]+)\s+ms\s+Billed Duration:\s+(?<BilledDuration>[^\s]+)\s+ms\s+Memory\s+Size:\s+(?<MemorySize>[^\s]+)\s+MB\s+Max\s+Memory\s+Used:\s+(?<MaxMemoryUsed>[^\s]+)\s+MB" 
| parse field=logstream "*[*]*" as logstreamDate,version,logstreamID
| parse field=loggroup "/aws/lambda/*" as functionName
 
```
### Use Cases:
Log - AWS Services Invoking Functions - Outlier, Log - Duration by Hour (Average) - Outlier, Log - Duration by Hour (Sum) - Outlier, Log - Error Count



## Parser:
```
| json "message"
| parse regex field=message "REPORT\s+RequestId:\s+(?<RequestId>[^\s]+)\s+Duration:\s+(?<Duration>[^\s]+)\s+ms\s+Billed Duration:\s+(?<BilledDuration>[^\s]+)\s+ms\s+Memory\s+Size:\s+(?<MemorySize>[^\s]+)\s+MB\s+Max\s+Memory\s+Used:\s+(?<MaxMemoryUsed>[^\s]+)\s+MB" 
| parse field=logstream "*/[*]*" as logstreamDate,version,logstreamID
| parse field=loggroup "/aws/lambda/*" as functionName
 
```
### Use Cases:
Log - AWS Services Invoking Functions - Outlier, Log - Duration by Hour (Average) - Outlier, Log - Duration by Hour (Sum) - Outlier, Log - Error Breakdown by Function, Log - Error Count, Log - Max Memory (MB) Used by Hour - Outlier, Log - Top Error Messages



## Parser:
```
| json field=_raw "eventName" as event_name
| json field=_raw "eventSource" as event_source
| json field=_raw "userIdentity.type" as caller_type
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "requestParameters.functionName" as func_name nodrop
| json field=_raw "additionalEventData.functionVersion" as func_version nodrop
| parse regex field=func_name "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<functionName>[\S]+)$"
| parse regex field=func_version "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_version>[\S]+:[\S ]+)$" | json field=_raw "userAgent" as user_agent
| json field=_raw "userIdentity.invokedBy"as invoked_by nodrop
| json field=_raw "userIdentity.userName"as user_name nodrop
 
```
### Use Cases:
Log - AWS Services Invoking Functions - Outlier


