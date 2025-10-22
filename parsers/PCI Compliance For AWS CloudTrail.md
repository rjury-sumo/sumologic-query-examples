# Parsers For PCI Compliance For AWS CloudTrail

**PCI Compliance For AWS CloudTrail/AWS CloudTrail - PCI Req 01 - Access Monitoring - New/Non Read Only Events**
```
_sourceCategory = Labs/AWS/CloudTrail*
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop 
```

**PCI Compliance For AWS CloudTrail/AWS CloudTrail - PCI Req 01 - Access Monitoring - New/Read Only Events**
```
_sourceCategory = Labs/AWS/CloudTrail* (Describe* or Get* or List*)
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop 
```

**PCI Compliance For AWS CloudTrail/AWS CloudTrail - PCI Req 01 - Access Monitoring - New/Security Group Activity**
```
_sourceCategory = Labs/AWS/CloudTrail* *SecurityGroup*
| parse "\"eventName\":\"*\"" as event_name nodrop
```

**PCI Compliance For AWS CloudTrail/AWS CloudTrail - PCI Req 01 - Access Monitoring - New/Security Group Activity Over Time**
```
_sourceCategory = Labs/AWS/CloudTrail* *SecurityGroup*
| parse "\"eventName\":\"*\"" as event_name nodrop
```

**PCI Compliance For AWS CloudTrail/AWS CloudTrail - PCI Req 10 - Login Activity - New/Console Login Failures**
```
_sourceCategory = Labs/AWS/CloudTrail* ConsoleLogin AwsConsoleSignIn Failure
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"errorMessage\":\"*\"" as errorMessage nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop | parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop | parse field=errorMessage " Error Code: *; Request ID" as errorCode2 nodrop | parse "\"accountId\":\"*\"" as accountId nodrop
```

**PCI Compliance For AWS CloudTrail/AWS CloudTrail - PCI Req 10 - Login Activity - New/Console Root Login Failures**
```
_sourceCategory = Labs/AWS/CloudTrail* ConsoleLogin AwsConsoleSignIn Failure Root
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"errorMessage\":\"*\"" as errorMessage nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop | parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop
| json "userIdentity.type" as type nodrop
```

**PCI Compliance For AWS CloudTrail/AWS CloudTrail - PCI Req 10 - Login Activity - New/Failed API Calls**
```
_sourceCategory = Labs/AWS/CloudTrail* AwsApiCall ("Client.UnauthorizedOperation" or AccessDenied) 
| parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | parse "\"errorMessage\":\"*\"" as errorMessage nodrop | parse "\"mfaAuthenticated\":\"*\"" as mfaAuthenticated nodrop 
```

**PCI Compliance For AWS CloudTrail/AWS CloudTrail - PCI Req 10 - Login Activity - New/Failed API Calls - Acct Breakup**
```
_sourceCategory = Labs/AWS/CloudTrail* AwsApiCall ("Client.UnauthorizedOperation" or AccessDenied) 
| parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | parse "\"errorMessage\":\"*\"" as errorMessage nodrop | parse "\"mfaAuthenticated\":\"*\"" as mfaAuthenticated nodrop 
```

**PCI Compliance For AWS CloudTrail/AWS CloudTrail - PCI Req 10 - Login Activity - New/Failed API Calls - Reason - Login Credentials and Permission Issues**
```
_sourceCategory = Labs/AWS/CloudTrail* AwsApiCall ("Client.UnauthorizedOperation" or AccessDenied) 
| parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | parse "\"errorMessage\":\"*\"" as errorMessage nodrop | parse "\"mfaAuthenticated\":\"*\"" as mfaAuthenticated nodrop 
```

**PCI Compliance For AWS CloudTrail/AWS CloudTrail - PCI Req 10 - Login Activity - New/Successful Console Logins**
```
_sourceCategory = Labs/AWS/CloudTrail* ConsoleLogin AwsConsoleSignIn Success 
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"accountId\":\"*\"" as accountId nodrop| parse "\"principalId\":\"*\"" as principalId nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop | parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop
```

**PCI Compliance For AWS CloudTrail/AWS CloudTrail - PCI Req 10 - Login Activity - New/Successful Root Console Logins**
```
_sourceCategory = Labs/AWS/CloudTrail* ConsoleLogin AwsConsoleSignIn Success Root
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"accountId\":\"*\"" as accountId nodrop| parse "\"principalId\":\"*\"" as principalId nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop | parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop
| json "userIdentity.type" as type nodrop
```


