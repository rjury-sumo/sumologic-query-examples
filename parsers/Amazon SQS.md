# Parsers For Amazon SQS

## Parser:
```
| json "eventName" nodrop | json "eventSource" nodrop | json "requestParameters.queueName" as queueName nodrop | json "requestParameters.queueUrl" as queueUrl nodrop | json "userIdentity.accountId" as accountId nodrop
 `n```
### Use Cases:
Events, Events by User, Events Location, Events Trend



## Parser:
```
| json "eventSource" nodrop | json "userIdentity.type" as type nodrop | json "userIdentity.arn" as arn nodrop | json "userName" nodrop | json "eventName" nodrop | json "requestParameters.queueName" as queueName nodrop | json "requestParameters.queueUrl" as queueUrl nodrop | json "userIdentity.accountId" as accountId nodrop
| parse field=arn ":assumed-role/*" as user
 `n```
### Use Cases:
Events, Events by User, Events Details, Events Location, Events Trend, Top Queues, Top Users



## Parser:
```
| json "eventSource" nodrop | json "userIdentity.type" as type nodrop | json "userIdentity.arn" as arn nodrop | json "userName" nodrop | json "eventName" nodrop | json "sourceIPAddress" as src_ip | json "requestParameters.queueName" as queueName nodrop | json "requestParameters.queueUrl" as queueUrl nodrop | json "userIdentity.accountId" as accountId nodrop
| parse field=arn ":assumed-role/*" as user
 `n```
### Use Cases:
Events, Events by User, Events Details, Events Location, Events Trend, Top Queues, Top Users



## Parser:
```
| json "eventSource" nodrop | json "userName" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "userIdentity.type" as type nodrop | json "userIdentity.arn" as arn nodrop | json "userIdentity.accountId" as accountId nodrop
| json "requestParameters.queueName" as queueName nodrop
| json "requestParameters.queueUrl" as queueUrl nodrop
| parse field=arn ":assumed-role/*" as user
 `n```
### Use Cases:
Events, Events by User, Events Details, Events Location, Events Trend, Top Queues



## Parser:
```
| json "eventSource" nodrop | json "userName" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "userIdentity.type" as type nodrop | json "userIdentity.arn" as arn nodrop | json "userIdentity.accountId" as accountId nodrop
| json "requestParameters.queueName" as queueName nodrop | json "requestParameters.queueUrl" as queueUrl nodrop
| parse field=arn ":assumed-role/*" as user
 `n```
### Use Cases:
Events by User, Events Location, Events Trend



## Parser:
```
| json "eventSource" nodrop | json "userName" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "userIdentity.type" as type nodrop | json "userIdentity.arn" as arn nodrop | json "userIdentity.accountId" as accountId nodrop | json "requestParameters.queueName" as queueName nodrop | json "requestParameters.queueUrl" as queueUrl nodrop
| parse field=arn ":assumed-role/*" as user
 `n```
### Use Cases:
Events, Events by User, Events Details, Events Location, Events Trend, Top Queues, Top Users



## Parser:
```
| json "eventSource" nodrop| json "userIdentity.type" as type nodrop | json "userIdentity.arn" as arn nodrop | json "userName" nodrop | json "eventName" nodrop | json "requestParameters.queueName" as queueName nodrop | json "requestParameters.queueUrl" as queueUrl nodrop | json "userIdentity.accountId" as accountId nodrop
| parse field=arn ":assumed-role/*" as user
 `n```
### Use Cases:
Events, Events by User, Events Details, Events Location, Events Trend, Top Queues, Top Users


