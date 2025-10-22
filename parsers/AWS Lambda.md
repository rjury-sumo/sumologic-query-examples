# Parsers For AWS Lambda

**AWS Lambda/Billed Duration vs Duration/Billed Duration vs Duration**
```
_sourceCategory = Labs/AWS/Lambda*
| json "message"
| _sourceName as logStream
| _sourceHost as logGroup
| parse regex field=message "REPORT\s+RequestId:\s+(?<RequestId>[^\s]+)\s+Duration:\s+(?<Duration>[^\s]+)\s+ms\s+Billed Duration:\s+(?<BilledDuration>[^\s]+)\s+ms\s+Memory\s+Size:\s+(?<MemorySize>[^\s]+)\s+MB\s+Max\s+Memory\s+Used:\s+(?<MaxMemoryUsed>[^\s]+)\s+MB" 
| parse field=logstream "*/[*]*" as logstreamDate,version,logstreamID
| parse field=loggroup "/aws/lambda/*" as function
```

**AWS Lambda/CloudTrail Events - Overview - New/AWS Services Invoking Functions**
```
_sourceCategory = Labs/AWS/CloudTrail* "lambda.amazonaws.com" Invoke
| json field=_raw "eventName" as event_name
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "requestParameters.functionName" as func_name nodrop
| json field=_raw "additionalEventData.functionVersion" as func_version nodrop
| parse regex field=func_name "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_name>[\S]+)$"
| parse regex field=func_version "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_version>[\S]+:[\S ]+)$" | json field=_raw "userAgent" as user_agent
| json field=_raw "userIdentity.type" as caller_type
| json field=_raw "userIdentity.invokedBy"as invoked_by nodrop
| json field=_raw "userIdentity.userName"as user_name nodrop
```

**AWS Lambda/CloudTrail Events - Overview - New/AWS Services Invoking Functions Over Time**
```
_sourceCategory = Labs/AWS/CloudTrail* "lambda.amazonaws.com" Invoke
| json field=_raw "eventName" as event_name
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "requestParameters.functionName" as func_name nodrop
| json field=_raw "additionalEventData.functionVersion" as func_version nodrop
| parse regex field=func_name "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_name>[\S]+)$"
| parse regex field=func_version "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_version>[\S]+:[\S ]+)$" | json field=_raw "userAgent" as user_agent
| json field=_raw "userIdentity.type" as caller_type
| json field=_raw "userIdentity.invokedBy"as invoked_by nodrop
| json field=_raw "userIdentity.userName"as user_name nodrop
```

**AWS Lambda/CloudTrail Events - Overview - New/Function Callers Details**
```
_sourceCategory = Labs/AWS/CloudTrail* "lambda.amazonaws.com" Invoke
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
```

**AWS Lambda/CloudTrail Events - Overview - New/Function Name Invocation Over Time**
```
_sourceCategory = Labs/AWS/CloudTrail* "lambda.amazonaws.com" Invoke
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
```

**AWS Lambda/CloudTrail Events - Overview - New/Function Version Invocation Over Time**
```
_sourceCategory = Labs/AWS/CloudTrail* "lambda.amazonaws.com" Invoke
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
```

**AWS Lambda/CloudTrail Events - Overview - New/IAM User Invoking Functions**
```
_sourceCategory = Labs/AWS/CloudTrail* "lambda.amazonaws.com" Invoke
| json field=_raw "eventName" as event_name
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "requestParameters.functionName" as func_name nodrop
| json field=_raw "additionalEventData.functionVersion" as func_version nodrop
| parse regex field=func_name "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_name>[\S]+)$"
| parse regex field=func_version "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_version>[\S]+:[\S ]+)$" | json field=_raw "userAgent" as user_agent
| json field=_raw "userIdentity.type" as caller_type
| json field=_raw "userIdentity.invokedBy"as invoked_by nodrop
| json field=_raw "userIdentity.userName"as user_name nodrop
```

**AWS Lambda/CloudTrail Events - Overview - New/IAM User Invoking Functions Over Time**
```
_sourceCategory = Labs/AWS/CloudTrail* "lambda.amazonaws.com" Invoke IAMUser
| json field=_raw "eventName" as event_name
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "requestParameters.functionName" as func_name nodrop
| json field=_raw "additionalEventData.functionVersion" as func_version nodrop
| parse regex field=func_name "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_name>[\S]+)$"
| parse regex field=func_version "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_version>[\S]+:[\S ]+)$" | json field=_raw "userAgent" as user_agent
| json field=_raw "userIdentity.type" as caller_type
| json field=_raw "userIdentity.invokedBy"as invoked_by nodrop
| json field=_raw "userIdentity.userName"as user_name nodrop
```

**AWS Lambda/CloudTrail Events - Overview - New/Invoke Breakdown by Function Name**
```
_sourceCategory = Labs/AWS/CloudTrail* "lambda.amazonaws.com" 
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
```

**AWS Lambda/CloudTrail Events - Overview - New/Invoke Breakdown by Function Version**
```
_sourceCategory = Labs/AWS/CloudTrail* "lambda.amazonaws.com" 
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
```

**AWS Lambda/CloudTrail Events - Overview - New/Location of Callers**
```
_sourceCategory = Labs/AWS/CloudTrail* "lambda.amazonaws.com" Invoke
| json field=_raw "eventName" as event_name
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "requestParameters.functionName" as func_name nodrop
| json field=_raw "additionalEventData.functionVersion" as func_version nodrop
| parse regex field=func_name "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_name>[\S]+)$"
| parse regex field=func_version "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_version>[\S]+:[\S ]+)$" | json field=_raw "userAgent" as user_agent
| json field=_raw "userIdentity.type" as caller_type
| json field=_raw "userIdentity.invokedBy"as invoked_by nodrop
| json field=_raw "userIdentity.userName"as user_name nodrop
```

**AWS Lambda/CloudTrail Events - Overview - New/User Agent Breakdown**
```
_sourceCategory = Labs/AWS/CloudTrail*  "lambda.amazonaws.com" Invoke
| json field=_raw "eventName" as event_name
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "requestParameters.functionName" as func_name nodrop
| json field=_raw "additionalEventData.functionVersion" as func_version nodrop
| parse regex field=func_name "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_name>[\S]+)$"
| parse regex field=func_version "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_version>[\S]+:[\S ]+)$" | json field=_raw "userAgent" as user_agent
| json field=_raw "userIdentity.type" as caller_type
| json field=_raw "userIdentity.invokedBy"as invoked_by nodrop
| json field=_raw "userIdentity.userName"as user_name nodrop
```

**AWS Lambda/CloudTrail Events - Security - New/AWS Services Invoking Functions - Outlier**
```
_sourceCategory = Labs/AWS/CloudTrail* "lambda.amazonaws.com"  AWSService
| json field=_raw "eventName" as event_name 
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "requestParameters.functionName" as func_name nodrop
| json field=_raw "additionalEventData.functionVersion" as func_version nodrop
| parse regex field=func_name "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_name>[\S]+)$"
| parse regex field=func_version "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_version>[\S]+:[\S ]+)$" | json field=_raw "userAgent" as user_agent
| json field=_raw "userIdentity.type" as caller_type
| json field=_raw "userIdentity.invokedBy"as invoked_by nodrop
| json field=_raw "userIdentity.userName"as user_name nodrop
```

**AWS Lambda/CloudTrail Events - Security - New/IAM User Invoking Functions - Outlier**
```
_sourceCategory = Labs/AWS/CloudTrail* "lambda.amazonaws.com" Invoke IAMUser
| json field=_raw "eventName" as event_name
| json field=_raw "sourceIPAddress" as  IAMUser
| json field=_raw "requestParameters.functionName" as func_name nodrop
| json field=_raw "additionalEventData.functionVersion" as func_version nodrop
| parse regex field=func_name "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_name>[\S]+)$"
| parse regex field=func_version "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_version>[\S]+:[\S ]+)$" | json field=_raw "userAgent" as user_agent
| json field=_raw "userIdentity.type" as caller_type
| json field=_raw "userIdentity.invokedBy"as invoked_by nodrop
| json field=_raw "userIdentity.userName"as user_name nodrop
```

**AWS Lambda/CloudTrail Events - Security - New/Threat Table based on Caller IP Address**
```
_sourceCategory = Labs/AWS/CloudTrail*  "lambda.amazonaws.com" Invoke
| json field=_raw "eventName" as event_name
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "requestParameters.functionName" as func_name nodrop
| json field=_raw "additionalEventData.functionVersion" as func_version nodrop
| parse regex field=func_name "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_name>[\S]+)$"
| parse regex field=func_version "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_version>[\S]+:[\S ]+)$" | json field=_raw "userAgent" as user_agent| json field=_raw "userAgent" as user_agent
| json field=_raw "userIdentity.type" as caller_type
| json field=_raw "userIdentity.invokedBy"as invoked_by nodrop
| json field=_raw "userIdentity.userName"as user_name nodrop
| if (isNull(user_name), invoked_by, user_name ) as caller
| if (isNull(invoked_by), user_name, invoked_by ) as caller
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=src_ip 
| json field=raw "labels[*].name" as label_name 
```

**AWS Lambda/CloudTrail Events - Security - New/Time Compare - Yesterday Vs Today**
```
_sourceCategory = Labs/AWS/CloudTrail* "lambda.amazonaws.com"  AWSService
| json field=_raw "eventName" as event_name 
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "requestParameters.functionName" as func_name nodrop
| json field=_raw "additionalEventData.functionVersion" as func_version nodrop
| parse regex field=func_name "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_name>[\S]+)$"
| parse regex field=func_version "\w+:\w+:\S+:[\w-]+:\S+:\S+:(?<function_version>[\S]+:[\S ]+)$" | json field=_raw "userAgent" as user_agent
| json field=_raw "userIdentity.type" as caller_type
| json field=_raw "userIdentity.invokedBy"as invoked_by nodrop
| json field=_raw "userIdentity.userName"as user_name nodrop
```

**AWS Lambda/Lambda Error Messages/Lambda Error Messages**
```
_sourceCategory = Labs/AWS/Lambda* errorMessage
| json "message"
| _sourceName as logStream
| _sourceHost as logGroup
| parse field=logstream "*/[*]*" as logstreamDate,version,logstreamID
| parse field=loggroup "/aws/lambda/*" as function
| parse field=message "*\t*\t*" as time,RequestId,errorObj 
```


