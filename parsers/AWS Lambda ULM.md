# Parsers For AWS Lambda ULM

**AWS Lambda ULM/Error Analysis - New/Log - AWS Services Invoking Functions - Outlier**
```
_sourceCategory = Labs/AWS/CloudTrail* "lambda.amazonaws.com" "Invoke" "AWSService"
| json field=_raw "eventName" as event_name
| json field=_raw "eventSource" as event_source
| json field=_raw "userIdentity.type" as caller_type
| where event_name = "Invoke" AND caller_type = "AWSService"
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "requestParameters.functionName" as func_name nodrop
| json field=_raw "additionalEventData.functionVersion" as func_version nodrop
| parse regex field=func_name "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<functionName>[\S]+)$"
| parse regex field=func_version "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_version>[\S]+:[\S ]+)$" | json field=_raw "userAgent" as user_agent
| json field=_raw "userIdentity.invokedBy"as invoked_by nodrop
| json field=_raw "userIdentity.userName"as user_name nodrop
```

**AWS Lambda ULM/Error Analysis - New/Log - Duration by Hour (Average) - Outlier**
```
_sourceCategory = Labs/AWS/Lambda*
| json "message"
| _sourceName as logStream
| _sourceHost as logGroup
| parse regex field=message "REPORT\s+RequestId:\s+(?<RequestId>[^\s]+)\s+Duration:\s+(?<Duration>[^\s]+)\s+ms\s+Billed Duration:\s+(?<BilledDuration>[^\s]+)\s+ms\s+Memory\s+Size:\s+(?<MemorySize>[^\s]+)\s+MB\s+Max\s+Memory\s+Used:\s+(?<MaxMemoryUsed>[^\s]+)\s+MB" 
| parse field=logstream "*[*]*" as logstreamDate,version,logstreamID
| parse field=loggroup "/aws/lambda/*" as functionName
```

**AWS Lambda ULM/Error Analysis - New/Log - Duration by Hour (Sum) - Outlier**
```
_sourceCategory = Labs/AWS/Lambda*
| json "message"
| _sourceName as logStream
| _sourceHost as logGroup
| parse regex field=message "REPORT\s+RequestId:\s+(?<RequestId>[^\s]+)\s+Duration:\s+(?<Duration>[^\s]+)\s+ms\s+Billed Duration:\s+(?<BilledDuration>[^\s]+)\s+ms\s+Memory\s+Size:\s+(?<MemorySize>[^\s]+)\s+MB\s+Max\s+Memory\s+Used:\s+(?<MaxMemoryUsed>[^\s]+)\s+MB" 
| parse field=logstream "*/[*]*" as logstreamDate,version,logstreamID
| parse field=loggroup "/aws/lambda/*" as functionName
```

**AWS Lambda ULM/Error Analysis - New/Log - Error Breakdown by Function**
```
_sourceCategory = Labs/AWS/Lambda* errorMessage
| json "message"
| _sourceName as logStream
| _sourceHost as logGroup
| parse field=logstream "*/[*]*" as logstreamDate,version,logstreamID
| parse field=loggroup "/aws/lambda/*" as functionName
| parse field=message "*\t*\t*" as time,RequestId,errorObj
```

**AWS Lambda ULM/Error Analysis - New/Log - Error Count**
```
_sourceCategory = Labs/AWS/Lambda* errorMessage
| json "message"
| _sourceName as logStream
| _sourceHost as logGroup
| parse field=logstream "*/[*]*" as logstreamDate,version,logstreamID
| parse field=loggroup "/aws/lambda/*" as functionName
| parse field=message "*\t*\t*" as time,RequestId,errorObj
```

**AWS Lambda ULM/Error Analysis - New/Log - Max Memory (MB) Used by Hour - Outlier**
```
_sourceCategory = Labs/AWS/Lambda*
| json "message"
| _sourceName as logStream
| _sourceHost as logGroup
| parse regex field=message "REPORT\s+RequestId:\s+(?<RequestId>[^\s]+)\s+Duration:\s+(?<Duration>[^\s]+)\s+ms\s+Billed Duration:\s+(?<BilledDuration>[^\s]+)\s+ms\s+Memory\s+Size:\s+(?<MemorySize>[^\s]+)\s+MB\s+Max\s+Memory\s+Used:\s+(?<MaxMemoryUsed>[^\s]+)\s+MB" 
| parse field=logstream "*/[*]*" as logstreamDate,version,logstreamID
| parse field=loggroup "/aws/lambda/*" as functionName
```

**AWS Lambda ULM/Error Analysis - New/Log - Top Error Messages**
```
_sourceCategory = Labs/AWS/Lambda* errorMessage
| json "message"
| _sourceName as logStream
| _sourceHost as logGroup
| parse field=logstream "*/[*]*" as logstreamDate,version,logstreamID
| parse field=loggroup "/aws/lambda/*" as functionName
| parse field=message "*\t*\t*" as time,RequestId,errorObj
| json  field=errorObj "errorMessage"
```


