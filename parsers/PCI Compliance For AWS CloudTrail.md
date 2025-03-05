# Parsers For PCI Compliance For AWS CloudTrail

## Parser:
```
| parse "\"eventName\":\"*\"" as event_name nodrop
 `n```
### Use Cases:
Non Read Only Events, Read Only Events, Security Group Activity, Security Group Activity Over Time



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop 
 `n```
### Use Cases:
Non Read Only Events, Read Only Events, Security Group Activity, Security Group Activity Over Time



## Parser:
```
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"roleName\":\"*\"" as roleName nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse "\"portRange\":{\"from\":*,\"to\":*}" as from_port,to_port nodrop | parse "\"fromPort\":*,\"toPort\":*," as from_Port,to_Port nodrop | parse "\"cidrBlock\":\"*\"" as cidr_block nodrop | parse "\"cidrIp\":\"*\"" as cidr_ip nodrop | parse "\"egress\":*," as egress nodrop  | parse "\"ruleAction\":\"*\"" as action nodrop | parse "\"groupName\":\"*\"," as groupName nodrop | parse "\"groupDescription\":\"*\"," as groupDescription nodrop | parse "\"groupId\":\"*\"" as groupId nodrop | parse regex field=event_name "SecurityGroup(?<direction>[A-Za-z]+)" nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop
 `n```
### Use Cases:
Security Group Activity, Security Group Activity Over Time



## Parser:
```
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"accountId\":\"*\"" as accountId nodrop| parse "\"principalId\":\"*\"" as principalId nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop | parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop
 `n```
### Use Cases:
Console Login Failures, Console Root Login Failures, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Non Read Only Events, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Console Logins, Successful Root Console Logins



## Parser:
```
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"accountId\":\"*\"" as accountId nodrop| parse "\"principalId\":\"*\"" as principalId nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop | parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop
| json "userIdentity.type" as type nodrop
 `n```
### Use Cases:
Console Root Login Failures, Failed API Calls, Failed API Calls - Reason - Login Credentials and Permission Issues, Non Read Only Events, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Root Console Logins



## Parser:
```
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"errorMessage\":\"*\"" as errorMessage nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop | parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop
| json "userIdentity.type" as type nodrop
 `n```
### Use Cases:
Console Login Failures, Console Root Login Failures, Failed API Calls, Failed API Calls - Reason - Login Credentials and Permission Issues, Non Read Only Events, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Root Console Logins



## Parser:
```
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"errorMessage\":\"*\"" as errorMessage nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop | parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop | parse field=errorMessage " Error Code: *; Request ID" as errorCode2 nodrop | parse "\"accountId\":\"*\"" as accountId nodrop
 `n```
### Use Cases:
Console Login Failures, Console Root Login Failures, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Non Read Only Events, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Console Logins, Successful Root Console Logins



## Parser:
```
| parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | parse "\"errorMessage\":\"*\"" as errorMessage nodrop | parse "\"mfaAuthenticated\":\"*\"" as mfaAuthenticated nodrop 
 `n```
### Use Cases:
Console Login Failures, Console Root Login Failures, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Non Read Only Events, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Root Console Logins


