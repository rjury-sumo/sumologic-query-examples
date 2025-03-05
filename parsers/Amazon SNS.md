# Parsers For Amazon SNS

## Parser:
```
| json "eventName" nodrop | json "eventSource" nodrop | json "errorCode" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userAgent" nodrop | json "userIdentity.type" as type nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | json "requestParameters.topicArn" as topicArn nodrop | json "requestParameters.name" as name nodrop | json "requestID" nodrop | json "userIdentity.userName" as username nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop
 `n```
### Use Cases:
Event Status, Event Status Trend, Events by User, Failed Event Details, Failed Events, Failure Events Location, Most Active TopicNames, Successful Event Details, Successful Events, Successful Events Location, Top Error Codes, Top Users



## Parser:
```
| json "eventName" nodrop | json "eventSource" nodrop | json "errorCode" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | json "userIdentity.userName" as username nodrop
 `n```
### Use Cases:
Event Status, Event Status Trend, Events by User, Failed Events, Failure Events Location, Top Error Codes, Top Users



## Parser:
```
| json "eventName" nodrop | json "eventSource" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | json "userIdentity.userName" as username nodrop | json "requestParameters.topicArn" as topicArn1 nodrop | json "responseElements.topicArn" as topicArn2 nodrop
| parse field=topicArn "arn:aws:sns:*:*:*" as topicRegion, topicAccountId, topicName
 `n```
### Use Cases:
Event Status, Event Status Trend, Events by User, Failed Event Details, Failed Events, Failure Events Location, Most Active TopicNames, Successful Events Location, Top Error Codes, Top Users



## Parser:
```
| json "eventName" nodrop | json "eventSource" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.type" as type nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | json "userIdentity.userName" as username nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop
 `n```
### Use Cases:
Event Status, Event Status Trend, Events by User, Failed Event Details, Failed Events, Failure Events Location, Successful Events Location, Top Error Codes, Top Users



## Parser:
```
| json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "errorCode" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | json "userIdentity.userName" as username nodrop 
 `n```
### Use Cases:
Event Status, Event Status Trend, Events by User, Events Trend by Event Name, Failed Event Details, Failed Events, Failure Events Location, Most Active TopicNames, Successful Event Details, Successful Events, Successful Events Location, Top Error Codes, Top Users



## Parser:
```
| json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "userIdentity.type" as type nodrop | json "userIdentity.arn" as arn nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.userName" as userName nodrop | json "errorCode" nodrop
| parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop
 `n```
### Use Cases:
Events by User, Failed Events, Top Error Codes, Top Users



## Parser:
```
| json "eventSource" nodrop | json "sourceIPAddress" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "errorCode" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | json "userIdentity.userName" as username nodrop
 `n```
### Use Cases:
Event Status, Event Status Trend, Events by User, Failed Events, Failure Events Location, Successful Events Location, Top Error Codes, Top Users



## Parser:
```
| json "eventSource" nodrop | json "sourceIPAddress" nodrop | json "eventName" nodrop | json "errorCode" nodrop | json "awsRegion" nodrop | json "errorCode" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | json "userIdentity.userName" as username nodrop
 `n```
### Use Cases:
Events by User, Failed Events, Failure Events Location, Top Error Codes, Top Users


