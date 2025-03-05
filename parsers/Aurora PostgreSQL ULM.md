# Parsers For Aurora PostgreSQL ULM

## Parser:
```
| json "userIdentity", "eventSource", "eventName", "awsRegion", "sourceIPAddress", "userAgent", "eventType", "recipientAccountId", "requestParameters", "responseElements", "requestID", "errorCode", "errorMessage" nodrop
| json field=userIdentity "type", "principalId", "arn", "userName", "accountId" nodrop
| json field=userIdentity "sessionContext.attributes.mfaAuthenticated" as mfaAuthenticated nodrop
| json field=requestParameters "dBClusterIdentifier", "engine", "engineMode" as req_dBClusterIdentifier, req_engine, req_engineMode nodrop
| json field=responseElements "dBClusterIdentifier", "engine", "engineMode" as res_dBClusterIdentifier, res_engine, res_engineMode nodrop
| parse field=arn ":assumed-role/*" as user nodrop  
| parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop
 `n```
### Use Cases:
Event Status, Event Status Trend, Events by User, Failed Event Details, Failed Events, Failure Events Location, Successful Event Details, Successful Events, Successful Events Location, Top Error Codes, Top Users


