# Parsers For AWS Lambda

## Parser:
```
| json "message"
| parse field=logstream "*/[*]*" as logstreamDate,version,logstreamID
| parse field=loggroup "/aws/lambda/*" as function
 `n```
### Use Cases:
Billed Duration vs Duration, Lambda Error Messages



## Parser:
```
| json "message"
| parse regex field=message "REPORT\s+RequestId:\s+(?<RequestId>[^\s]+)\s+Duration:\s+(?<Duration>[^\s]+)\s+ms\s+Billed Duration:\s+(?<BilledDuration>[^\s]+)\s+ms\s+Memory\s+Size:\s+(?<MemorySize>[^\s]+)\s+MB\s+Max\s+Memory\s+Used:\s+(?<MaxMemoryUsed>[^\s]+)\s+MB" 
| parse field=logstream "*/[*]*" as logstreamDate,version,logstreamID
| parse field=loggroup "/aws/lambda/*" as function
 `n```
### Use Cases:
Billed Duration vs Duration



## Parser:
```
| json field=_raw "eventName" as event_name
| json field=_raw "sourceIPAddress" as  IAMUser
| json field=_raw "requestParameters.functionName" as func_name nodrop
| json field=_raw "additionalEventData.functionVersion" as func_version nodrop
| parse regex field=func_name "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_name>[\S]+)$"
| parse regex field=func_version "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_version>[\S]+:[\S ]+)$" | json field=_raw "userAgent" as user_agent
| json field=_raw "userIdentity.type" as caller_type
| json field=_raw "userIdentity.invokedBy"as invoked_by nodrop
| json field=_raw "userIdentity.userName"as user_name nodrop
 `n```
### Use Cases:
AWS Services Invoking Functions, AWS Services Invoking Functions Over Time, Billed Duration vs Duration, Function Callers Details, Function Name Invocation Over Time, Function Version Invocation Over Time, IAM User Invoking Functions, IAM User Invoking Functions - Outlier, IAM User Invoking Functions Over Time, Invoke Breakdown by Function Name, Invoke Breakdown by Function Version, Lambda Error Messages, Location of Callers, Time Compare - Yesterday Vs Today, User Agent Breakdown



## Parser:
```
| json field=_raw "eventName" as event_name
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "requestParameters.functionName" as func_name nodrop
| json field=_raw "additionalEventData.functionVersion" as func_version nodrop
| parse regex field=func_name "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_name>[\S]+)$"
| parse regex field=func_version "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_version>[\S]+:[\S ]+)$" 
| json field=_raw "userAgent" as user_agent
| json field=_raw "userIdentity.type" as caller_type
| json field=_raw "awsRegion" as aws_region
| json field=_raw "userIdentity.invokedBy"as invoked_by nodrop
| json field=_raw "userIdentity.userName"as user_name nodrop
 `n```
### Use Cases:
Billed Duration vs Duration, Function Callers Details, Function Name Invocation Over Time, IAM User Invoking Functions, Invoke Breakdown by Function Name, Lambda Error Messages, Location of Callers, User Agent Breakdown



## Parser:
```
| json field=_raw "eventName" as event_name
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "requestParameters.functionName" as func_name nodrop
| json field=_raw "additionalEventData.functionVersion" as func_version nodrop
| parse regex field=func_name "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_name>[\S]+)$"
| parse regex field=func_version "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_version>[\S]+:[\S ]+)$" 
| json field=_raw "userAgent" as user_agent
| json field=_raw "userIdentity.type" as caller_type
| json field=_raw "userIdentity.invokedBy"as invoked_by nodrop
| json field=_raw "userIdentity.userName"as user_name nodrop
 `n```
### Use Cases:
AWS Services Invoking Functions, Billed Duration vs Duration, Function Callers Details, Function Name Invocation Over Time, Function Version Invocation Over Time, IAM User Invoking Functions, Invoke Breakdown by Function Name, Invoke Breakdown by Function Version, Lambda Error Messages, Location of Callers, User Agent Breakdown



## Parser:
```
| json field=_raw "eventName" as event_name
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "requestParameters.functionName" as func_name nodrop
| json field=_raw "additionalEventData.functionVersion" as func_version nodrop
| parse regex field=func_name "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_name>[\S]+)$"
| parse regex field=func_version "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_version>[\S]+:[\S ]+)$" | json field=_raw "userAgent" as user_agent
| json field=_raw "userIdentity.type" as caller_type
| json field=_raw "userIdentity.invokedBy"as invoked_by nodrop
| json field=_raw "userIdentity.userName"as user_name nodrop
 `n```
### Use Cases:
AWS Services Invoking Functions, AWS Services Invoking Functions Over Time, Billed Duration vs Duration, Function Callers Details, Function Name Invocation Over Time, Function Version Invocation Over Time, IAM User Invoking Functions, IAM User Invoking Functions Over Time, Invoke Breakdown by Function Name, Invoke Breakdown by Function Version, Lambda Error Messages, Location of Callers, User Agent Breakdown



## Parser:
```
| json field=_raw "eventName" as event_name
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "requestParameters.functionName" as func_name nodrop
| json field=_raw "additionalEventData.functionVersion" as func_version nodrop
| parse regex field=func_name "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_name>[\S]+)$"
| parse regex field=func_version "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_version>[\S]+:[\S ]+)$" | json field=_raw "userAgent" as user_agent| json field=_raw "userAgent" as user_agent
| json field=_raw "userIdentity.type" as caller_type
| json field=_raw "userIdentity.invokedBy"as invoked_by nodrop
| json field=_raw "userIdentity.userName"as user_name nodrop
| json field=raw "labels[*].name" as label_name 
 `n```
### Use Cases:
AWS Services Invoking Functions, AWS Services Invoking Functions - Outlier, AWS Services Invoking Functions Over Time, Billed Duration vs Duration, Function Callers Details, Function Name Invocation Over Time, Function Version Invocation Over Time, IAM User Invoking Functions, IAM User Invoking Functions - Outlier, IAM User Invoking Functions Over Time, Invoke Breakdown by Function Name, Invoke Breakdown by Function Version, Lambda Error Messages, Location of Callers, Threat Table based on Caller IP Address, Time Compare - Yesterday Vs Today, User Agent Breakdown



## Parser:
```
| json field=_raw "eventName" as event_name 
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "requestParameters.functionName" as func_name nodrop
| json field=_raw "additionalEventData.functionVersion" as func_version nodrop
| parse regex field=func_name "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_name>[\S]+)$"
| parse regex field=func_version "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_version>[\S]+:[\S ]+)$" | json field=_raw "userAgent" as user_agent
| json field=_raw "userIdentity.type" as caller_type
| json field=_raw "userIdentity.invokedBy"as invoked_by nodrop
| json field=_raw "userIdentity.userName"as user_name nodrop
 `n```
### Use Cases:
AWS Services Invoking Functions, AWS Services Invoking Functions - Outlier, AWS Services Invoking Functions Over Time, Billed Duration vs Duration, Function Callers Details, Function Name Invocation Over Time, Function Version Invocation Over Time, IAM User Invoking Functions, IAM User Invoking Functions - Outlier, IAM User Invoking Functions Over Time, Invoke Breakdown by Function Name, Invoke Breakdown by Function Version, Lambda Error Messages, Location of Callers, Time Compare - Yesterday Vs Today, User Agent Breakdown


