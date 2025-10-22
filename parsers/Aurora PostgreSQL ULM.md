# Parsers For Aurora PostgreSQL ULM

**Aurora PostgreSQL ULM/CloudTrail Event - Overview - New/Event Status**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventSource\":\"rds.amazonaws.com\"" ("\"engine\":\"aurora-postgresql\"")
| json "userIdentity", "eventSource", "eventName", "awsRegion", "sourceIPAddress", "userAgent", "eventType", "recipientAccountId", "requestParameters", "responseElements", "requestID", "errorCode", "errorMessage" nodrop
| json field=userIdentity "type", "principalId", "arn", "userName", "accountId" nodrop
| json field=userIdentity "sessionContext.attributes.mfaAuthenticated" as mfaAuthenticated nodrop
| json field=requestParameters "dBClusterIdentifier", "engine", "engineMode" as req_dBClusterIdentifier, req_engine, req_engineMode nodrop
| json field=responseElements "dBClusterIdentifier", "engine", "engineMode" as res_dBClusterIdentifier, res_engine, res_engineMode nodrop
| parse field=arn ":assumed-role/*" as user nodrop  
| parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop
```

**Aurora PostgreSQL ULM/CloudTrail Event - Overview - New/Event Status Trend**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventSource\":\"rds.amazonaws.com\"" ("\"engine\":\"aurora-postgresql\"")
| json "userIdentity", "eventSource", "eventName", "awsRegion", "sourceIPAddress", "userAgent", "eventType", "recipientAccountId", "requestParameters", "responseElements", "requestID", "errorCode", "errorMessage" nodrop
| json field=userIdentity "type", "principalId", "arn", "userName", "accountId" nodrop
| json field=userIdentity "sessionContext.attributes.mfaAuthenticated" as mfaAuthenticated nodrop
| json field=requestParameters "dBClusterIdentifier", "engine", "engineMode" as req_dBClusterIdentifier, req_engine, req_engineMode nodrop
| json field=responseElements "dBClusterIdentifier", "engine", "engineMode" as res_dBClusterIdentifier, res_engine, res_engineMode nodrop
| parse field=arn ":assumed-role/*" as user nodrop  
| parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop
```

**Aurora PostgreSQL ULM/CloudTrail Event - Overview - New/Events by User**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventSource\":\"rds.amazonaws.com\"" ("\"engine\":\"aurora-postgresql\"")
| json "userIdentity", "eventSource", "eventName", "awsRegion", "sourceIPAddress", "userAgent", "eventType", "recipientAccountId", "requestParameters", "responseElements", "requestID", "errorCode", "errorMessage" nodrop
| json field=userIdentity "type", "principalId", "arn", "userName", "accountId" nodrop
| json field=userIdentity "sessionContext.attributes.mfaAuthenticated" as mfaAuthenticated nodrop
| json field=requestParameters "dBClusterIdentifier", "engine", "engineMode" as req_dBClusterIdentifier, req_engine, req_engineMode nodrop
| json field=responseElements "dBClusterIdentifier", "engine", "engineMode" as res_dBClusterIdentifier, res_engine, res_engineMode nodrop
| parse field=arn ":assumed-role/*" as user nodrop  
| parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop
```

**Aurora PostgreSQL ULM/CloudTrail Event - Overview - New/Failed Event Details**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventSource\":\"rds.amazonaws.com\"" ("\"engine\":\"aurora-postgresql\"") errorCode
| json "userIdentity", "eventSource", "eventName", "awsRegion", "sourceIPAddress", "userAgent", "eventType", "recipientAccountId", "requestParameters", "responseElements", "requestID", "errorCode", "errorMessage" nodrop
| json field=userIdentity "type", "principalId", "arn", "userName", "accountId" nodrop
| json field=userIdentity "sessionContext.attributes.mfaAuthenticated" as mfaAuthenticated nodrop
| json field=requestParameters "dBClusterIdentifier", "engine", "engineMode" as req_dBClusterIdentifier, req_engine, req_engineMode nodrop
| json field=responseElements "dBClusterIdentifier", "engine", "engineMode" as res_dBClusterIdentifier, res_engine, res_engineMode nodrop
| parse field=arn ":assumed-role/*" as user nodrop  
| parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop
```

**Aurora PostgreSQL ULM/CloudTrail Event - Overview - New/Failed Events**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventSource\":\"rds.amazonaws.com\"" ("\"engine\":\"aurora-postgresql\"") errorCode
| json "userIdentity", "eventSource", "eventName", "awsRegion", "sourceIPAddress", "userAgent", "eventType", "recipientAccountId", "requestParameters", "responseElements", "requestID", "errorCode", "errorMessage" nodrop
| json field=userIdentity "type", "principalId", "arn", "userName", "accountId" nodrop
| json field=userIdentity "sessionContext.attributes.mfaAuthenticated" as mfaAuthenticated nodrop
| json field=requestParameters "dBClusterIdentifier", "engine", "engineMode" as req_dBClusterIdentifier, req_engine, req_engineMode nodrop
| json field=responseElements "dBClusterIdentifier", "engine", "engineMode" as res_dBClusterIdentifier, res_engine, res_engineMode nodrop
| parse field=arn ":assumed-role/*" as user nodrop  
| parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop
```

**Aurora PostgreSQL ULM/CloudTrail Event - Overview - New/Failure Events Location**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventSource\":\"rds.amazonaws.com\"" ("\"engine\":\"aurora-postgresql\"") errorCode
| json "userIdentity", "eventSource", "eventName", "awsRegion", "sourceIPAddress", "userAgent", "eventType", "recipientAccountId", "requestParameters", "responseElements", "requestID", "errorCode", "errorMessage" nodrop
| json field=userIdentity "type", "principalId", "arn", "userName", "accountId" nodrop
| json field=userIdentity "sessionContext.attributes.mfaAuthenticated" as mfaAuthenticated nodrop
| json field=requestParameters "dBClusterIdentifier", "engine", "engineMode" as req_dBClusterIdentifier, req_engine, req_engineMode nodrop
| json field=responseElements "dBClusterIdentifier", "engine", "engineMode" as res_dBClusterIdentifier, res_engine, res_engineMode nodrop
| parse field=arn ":assumed-role/*" as user nodrop  
| parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop
```

**Aurora PostgreSQL ULM/CloudTrail Event - Overview - New/Successful Event Details**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventSource\":\"rds.amazonaws.com\"" ("\"engine\":\"aurora-postgresql\"") !errorCode
| json "userIdentity", "eventSource", "eventName", "awsRegion", "sourceIPAddress", "userAgent", "eventType", "recipientAccountId", "requestParameters", "responseElements", "requestID", "errorCode", "errorMessage" nodrop
| json field=userIdentity "type", "principalId", "arn", "userName", "accountId" nodrop
| json field=userIdentity "sessionContext.attributes.mfaAuthenticated" as mfaAuthenticated nodrop
| json field=requestParameters "dBClusterIdentifier", "engine", "engineMode" as req_dBClusterIdentifier, req_engine, req_engineMode nodrop
| json field=responseElements "dBClusterIdentifier", "engine", "engineMode" as res_dBClusterIdentifier, res_engine, res_engineMode nodrop
| parse field=arn ":assumed-role/*" as user nodrop  
| parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop
```

**Aurora PostgreSQL ULM/CloudTrail Event - Overview - New/Successful Events**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventSource\":\"rds.amazonaws.com\"" ("\"engine\":\"aurora-postgresql\"") !errorCode
| json "userIdentity", "eventSource", "eventName", "awsRegion", "sourceIPAddress", "userAgent", "eventType", "recipientAccountId", "requestParameters", "responseElements", "requestID", "errorCode", "errorMessage" nodrop
| json field=userIdentity "type", "principalId", "arn", "userName", "accountId" nodrop
| json field=userIdentity "sessionContext.attributes.mfaAuthenticated" as mfaAuthenticated nodrop
| json field=requestParameters "dBClusterIdentifier", "engine", "engineMode" as req_dBClusterIdentifier, req_engine, req_engineMode nodrop
| json field=responseElements "dBClusterIdentifier", "engine", "engineMode" as res_dBClusterIdentifier, res_engine, res_engineMode nodrop
| parse field=arn ":assumed-role/*" as user nodrop  
| parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop
```

**Aurora PostgreSQL ULM/CloudTrail Event - Overview - New/Successful Events Location**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventSource\":\"rds.amazonaws.com\"" ("\"engine\":\"aurora-postgresql\"") !errorCode
| json "userIdentity", "eventSource", "eventName", "awsRegion", "sourceIPAddress", "userAgent", "eventType", "recipientAccountId", "requestParameters", "responseElements", "requestID", "errorCode", "errorMessage" nodrop
| json field=userIdentity "type", "principalId", "arn", "userName", "accountId" nodrop
| json field=userIdentity "sessionContext.attributes.mfaAuthenticated" as mfaAuthenticated nodrop
| json field=requestParameters "dBClusterIdentifier", "engine", "engineMode" as req_dBClusterIdentifier, req_engine, req_engineMode nodrop
| json field=responseElements "dBClusterIdentifier", "engine", "engineMode" as res_dBClusterIdentifier, res_engine, res_engineMode nodrop
| parse field=arn ":assumed-role/*" as user nodrop  
| parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop
```

**Aurora PostgreSQL ULM/CloudTrail Event - Overview - New/Top Error Codes**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventSource\":\"rds.amazonaws.com\"" ("\"engine\":\"aurora-postgresql\"") errorCode
| json "userIdentity", "eventSource", "eventName", "awsRegion", "sourceIPAddress", "userAgent", "eventType", "recipientAccountId", "requestParameters", "responseElements", "requestID", "errorCode", "errorMessage" nodrop
| json field=userIdentity "type", "principalId", "arn", "userName", "accountId" nodrop
| json field=userIdentity "sessionContext.attributes.mfaAuthenticated" as mfaAuthenticated nodrop
| json field=requestParameters "dBClusterIdentifier", "engine", "engineMode" as req_dBClusterIdentifier, req_engine, req_engineMode nodrop
| json field=responseElements "dBClusterIdentifier", "engine", "engineMode" as res_dBClusterIdentifier, res_engine, res_engineMode nodrop
| parse field=arn ":assumed-role/*" as user nodrop  
| parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop
```

**Aurora PostgreSQL ULM/CloudTrail Event - Overview - New/Top Users**
```
_sourceCategory = Labs/AWS/CloudTrail* "\"eventSource\":\"rds.amazonaws.com\"" ("\"engine\":\"aurora-postgresql\"")
| json "userIdentity", "eventSource", "eventName", "awsRegion", "sourceIPAddress", "userAgent", "eventType", "recipientAccountId", "requestParameters", "responseElements", "requestID", "errorCode", "errorMessage" nodrop
| json field=userIdentity "type", "principalId", "arn", "userName", "accountId" nodrop
| json field=userIdentity "sessionContext.attributes.mfaAuthenticated" as mfaAuthenticated nodrop
| json field=requestParameters "dBClusterIdentifier", "engine", "engineMode" as req_dBClusterIdentifier, req_engine, req_engineMode nodrop
| json field=responseElements "dBClusterIdentifier", "engine", "engineMode" as res_dBClusterIdentifier, res_engine, res_engineMode nodrop
| parse field=arn ":assumed-role/*" as user nodrop  
| parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop
```


