# Parsers For Amazon SQS

**Amazon SQS/CloudTrail Events - New/Events**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventsource\":\"sqs.amazonaws.com\""
| json "eventName" nodrop | json "eventSource" nodrop | json "requestParameters.queueName" as queueName nodrop | json "requestParameters.queueUrl" as queueUrl nodrop | json "userIdentity.accountId" as accountId nodrop
```

**Amazon SQS/CloudTrail Events - New/Events by User**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventsource\":\"sqs.amazonaws.com\""
| json "eventSource" nodrop | json "userName" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "userIdentity.type" as type nodrop | json "userIdentity.arn" as arn nodrop | json "userIdentity.accountId" as accountId nodrop
| json "requestParameters.queueName" as queueName nodrop
| json "requestParameters.queueUrl" as queueUrl nodrop
| where eventSource="sqs.amazonaws.com"
| parse field=arn ":assumed-role/*" as user
```

**Amazon SQS/CloudTrail Events - New/Events Details**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventsource\":\"sqs.amazonaws.com\""
| json "eventSource" nodrop | json "userName" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "userIdentity.type" as type nodrop | json "userIdentity.arn" as arn nodrop | json "userIdentity.accountId" as accountId nodrop
| json "requestParameters.queueName" as queueName nodrop
| json "requestParameters.queueUrl" as queueUrl nodrop
| sourceIPAddress as src_ip
| where eventSource="sqs.amazonaws.com"
| parse field=arn ":assumed-role/*" as user
```

**Amazon SQS/CloudTrail Events - New/Events Location**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventsource\":\"sqs.amazonaws.com\""
| json "eventSource" nodrop | json "userIdentity.type" as type nodrop | json "userIdentity.arn" as arn nodrop | json "userName" nodrop | json "eventName" nodrop | json "sourceIPAddress" as src_ip | json "requestParameters.queueName" as queueName nodrop | json "requestParameters.queueUrl" as queueUrl nodrop | json "userIdentity.accountId" as accountId nodrop
| where eventSource="sqs.amazonaws.com"
| parse field=arn ":assumed-role/*" as user
```

**Amazon SQS/CloudTrail Events - New/Events Trend**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventsource\":\"sqs.amazonaws.com\""
| json "eventSource" nodrop | json "userName" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "userIdentity.type" as type nodrop | json "userIdentity.arn" as arn nodrop | json "userIdentity.accountId" as accountId nodrop
| json "requestParameters.queueName" as queueName nodrop | json "requestParameters.queueUrl" as queueUrl nodrop
| where eventSource="sqs.amazonaws.com"
| parse field=arn ":assumed-role/*" as user
```

**Amazon SQS/CloudTrail Events - New/Top Queues**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventsource\":\"sqs.amazonaws.com\""
| json "eventSource" nodrop | json "userName" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "userIdentity.type" as type nodrop | json "userIdentity.arn" as arn nodrop | json "userIdentity.accountId" as accountId nodrop
| json "requestParameters.queueName" as queueName nodrop
| json "requestParameters.queueUrl" as queueUrl nodrop
| where eventSource="sqs.amazonaws.com"
| parse field=arn ":assumed-role/*" as user
```

**Amazon SQS/CloudTrail Events - New/Top Users**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventsource\":\"sqs.amazonaws.com\""
| json "eventSource" nodrop | json "userIdentity.type" as type nodrop | json "userIdentity.arn" as arn nodrop | json "userName" nodrop | json "eventName" nodrop | json "requestParameters.queueName" as queueName nodrop | json "requestParameters.queueUrl" as queueUrl nodrop | json "userIdentity.accountId" as accountId nodrop
| where eventSource="sqs.amazonaws.com"
| parse field=arn ":assumed-role/*" as user
```

**Amazon SQS/Overview - New/Events Location**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventsource\":\"sqs.amazonaws.com\""
| json "eventSource" nodrop | json "userIdentity.type" as type nodrop | json "userIdentity.arn" as arn nodrop | json "userName" nodrop | json "eventName" nodrop | json "sourceIPAddress" as src_ip | json "requestParameters.queueName" as queueName nodrop | json "requestParameters.queueUrl" as queueUrl nodrop | json "userIdentity.accountId" as accountId nodrop
| where eventSource="sqs.amazonaws.com"
| parse field=arn ":assumed-role/*" as user
```

**Amazon SQS/Overview - New/Events Trend**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventsource\":\"sqs.amazonaws.com\""
| json "eventSource" nodrop | json "userName" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "userIdentity.type" as type nodrop | json "userIdentity.arn" as arn nodrop | json "userIdentity.accountId" as accountId nodrop | json "requestParameters.queueName" as queueName nodrop | json "requestParameters.queueUrl" as queueUrl nodrop
| where eventSource="sqs.amazonaws.com"
| parse field=arn ":assumed-role/*" as user
```

**Amazon SQS/Overview - New/Top Users**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventsource\":\"sqs.amazonaws.com\""
| json "eventSource" nodrop| json "userIdentity.type" as type nodrop | json "userIdentity.arn" as arn nodrop | json "userName" nodrop | json "eventName" nodrop | json "requestParameters.queueName" as queueName nodrop | json "requestParameters.queueUrl" as queueUrl nodrop | json "userIdentity.accountId" as accountId nodrop
| where eventSource="sqs.amazonaws.com"
| parse field=arn ":assumed-role/*" as user
```


