# Parsers For Amazon CloudTrail - Cloud Security Monitoring and Analytics

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Access Monitoring/Non Read Only Events**
```
_sourceCategory = Labs/AWS/CloudTrail
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Access Monitoring/Read Only Events**
```
_sourceCategory = Labs/AWS/CloudTrail (Describe* or Get* or List*)
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Access Monitoring/Security Group Activity**
```
_sourceCategory = Labs/AWS/CloudTrail *SecurityGroup*
| json "recipientAccountId" as recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"roleName\":\"*\"" as roleName nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse "\"portRange\":{\"from\":*,\"to\":*}" as from_port,to_port nodrop | parse "\"fromPort\":*,\"toPort\":*," as from_Port,to_Port nodrop | parse "\"cidrBlock\":\"*\"" as cidr_block nodrop | parse "\"cidrIp\":\"*\"" as cidr_ip nodrop | parse "\"egress\":*," as egress nodrop  | parse "\"ruleAction\":\"*\"" as action nodrop | parse "\"groupName\":\"*\"," as groupName nodrop | parse "\"groupDescription\":\"*\"," as groupDescription nodrop | parse "\"groupId\":\"*\"" as groupId nodrop | parse regex field=event_name "SecurityGroup(?<direction>[A-Za-z]+)" nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Access Monitoring/Security Group Activity Over Time**
```
_sourceCategory = Labs/AWS/CloudTrail *SecurityGroup*
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Login Activity/Console Login Failures**
```
_sourceCategory = Labs/AWS/CloudTrail ConsoleLogin AwsConsoleSignIn Failure
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"errorMessage\":\"*\"" as errorMessage nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop | parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop | parse field=errorMessage " Error Code: *; Request ID" as errorCode2 nodrop | parse "\"accountId\":\"*\"" as accountId nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Login Activity/Console Root Login Failures**
```
_sourceCategory = Labs/AWS/CloudTrail ConsoleLogin AwsConsoleSignIn Failure Root
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"errorMessage\":\"*\"" as errorMessage nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop | parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop
| json "userIdentity.type" as type nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Login Activity/Failed API Calls**
```
_sourceCategory = Labs/AWS/CloudTrail AwsApiCall ("Client.UnauthorizedOperation" or AccessDenied) 
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user_username nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | parse "\"errorMessage\":\"*\"" as errorMessage nodrop | parse "\"mfaAuthenticated\":\"*\"" as mfaAuthenticated nodrop 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Login Activity/Failed API Calls - Acct Breakup**
```
_sourceCategory = Labs/AWS/CloudTrail AwsApiCall ("Client.UnauthorizedOperation" or AccessDenied) 
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | parse "\"errorMessage\":\"*\"" as errorMessage nodrop | parse "\"mfaAuthenticated\":\"*\"" as mfaAuthenticated nodrop 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Login Activity/Failed API Calls - Reason - Login Credentials and Permission Issues**
```
_sourceCategory = Labs/AWS/CloudTrail AwsApiCall ("Client.UnauthorizedOperation" or AccessDenied) 
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | parse "\"errorMessage\":\"*\"" as errorMessage nodrop | parse "\"mfaAuthenticated\":\"*\"" as mfaAuthenticated nodrop 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Login Activity/Successful Console Logins**
```
_sourceCategory = Labs/AWS/CloudTrail ConsoleLogin AwsConsoleSignIn Success 
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"accountId\":\"*\"" as accountId nodrop| parse "\"principalId\":\"*\"" as principalId nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop | parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Login Activity/Successful Root Console Logins**
```
_sourceCategory = Labs/AWS/CloudTrail ConsoleLogin AwsConsoleSignIn Success Root
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"accountId\":\"*\"" as accountId nodrop| parse "\"principalId\":\"*\"" as principalId nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop | parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop
| json "userIdentity.type" as type nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Privileged Activity/Created Security Groups**
```
_sourceCategory = Labs/AWS/CloudTrail "ec2.amazonaws.com" CreateSecurityGroup
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop
| parse "\"eventTime\":\"*\"" as eventTime nodrop | parse "\"groupName\":\"*\"," as groupName nodrop | parse "\"groupDescription\":\"*\"," as groupDescription nodrop | parse "\"groupId\":\"*\"" as groupId nodrop | json "errorCode" nodrop | json "errorMessage" as errorMessage nodrop | json "sourceIPAddress" as source_ipaddress nodrop | json "eventSource" as event_Source nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Privileged Activity/Deleted Security Groups**
```
_sourceCategory = Labs/AWS/CloudTrail "ec2.amazonaws.com" DeleteSecurityGroup 
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop
| parse "\"eventTime\":\"*\"" as eventTime nodrop | parse "\"groupId\":\"*\"" as groupId nodrop | json "errorCode" nodrop | json "errorMessage" as errorMessage nodrop | json "sourceIPAddress" as source_ipaddress nodrop | json "eventSource" as event_Source nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Privileged Activity/Failed Configuration Changes**
```
_sourceCategory = Labs/AWS/CloudTrail (Delete* or Create* or Terminate*)
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse "\"portRange\":{\"from\":*,\"to\":*}" as from_port, to_port nodrop | parse "\"fromPort\":*,\"toPort\":*," as from_Port, to_Port nodrop | parse "\"errorCode\":\"*\",\"errorMessage\":\"*\"" as errorCode, errorMessage nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop
| if (isEmpty(errorCode), "Success", "Failure") as OperationStatus
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Privileged Activity/Failed Policy Changes**
```
_sourceCategory = Labs/AWS/CloudTrail (Create*Policy or Update*Policy or Put*Policy or Attach*Policy or Detach*Policy or Delete*Policy) errorCode
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "sourceIPAddress" as source_ipaddress nodrop | json "eventSource" as event_Source nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "requestParameters.policyName" as policyName nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Privileged Activity/Group Operation Failures**
```
_sourceCategory = Labs/AWS/CloudTrail "ec2.amazonaws.com" (AuthorizeSecurityGroupIngress or AuthorizeSecurityGroupEgress or RevokeSecurityGroupIngress or RevokeSecurityGroupEgress) errorCode errorMessage
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | parse "\"groupId\":\"*\"" as groupId nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | json "errorMessage" as errorMessage nodrop | json "sourceIPAddress" as source_ipaddress nodrop | json "eventSource" as event_source nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Privileged Activity/Group Operation Successes**
```
_sourceCategory = Labs/AWS/CloudTrail "ec2.amazonaws.com" (AuthorizeSecurityGroupIngress or AuthorizeSecurityGroupEgress or RevokeSecurityGroupIngress or RevokeSecurityGroupEgress) !errorCode !errorMessage
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | parse "\"groupId\":\"*\"" as groupId nodrop | json "sourceIPAddress" as source_ipaddress nodrop | json "eventSource" as event_source nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Privileged Activity/Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules**
```
_sourceCategory = Labs/AWS/CloudTrail "ec2.amazonaws.com" (AuthorizeSecurityGroupIngress or AuthorizeSecurityGroupEgress or RevokeSecurityGroupIngress or RevokeSecurityGroupEgress) errorCode errorMessage
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | parse "\"groupId\":\"*\"" as groupId nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | json "errorMessage" as errorMessage nodrop | json "sourceIPAddress" as source_ipaddress nodrop | json "eventSource" as event_source nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Privileged Activity/Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules**
```
_sourceCategory = Labs/AWS/CloudTrail "ec2.amazonaws.com" (AuthorizeSecurityGroupIngress or AuthorizeSecurityGroupEgress or RevokeSecurityGroupIngress or RevokeSecurityGroupEgress) !errorCode !errorMessage
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | parse "\"groupId\":\"*\"" as groupId nodrop | json "sourceIPAddress" as source_ipaddress nodrop | json "eventSource" as event_source nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Privileged Activity/Outlier- Failed Configuration Changes**
```
_sourceCategory = Labs/AWS/CloudTrail (Delete* or Create* or Terminate*)
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse "\"portRange\":{\"from\":*,\"to\":*}" as from_port, to_port nodrop | parse "\"fromPort\":*,\"toPort\":*," as from_Port, to_Port nodrop | parse "\"errorCode\":\"*\",\"errorMessage\":\"*\"" as errorCode, errorMessage nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Privileged Activity/Outlier- Successful Configuration Changes**
```
_sourceCategory = Labs/AWS/CloudTrail (Delete* or Create* or Terminate*)
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse "\"portRange\":{\"from\":*,\"to\":*}" as from_port, to_port nodrop | parse "\"fromPort\":*,\"toPort\":*," as from_Port, to_Port nodrop | parse "\"errorCode\":\"*\",\"errorMessage\":\"*\"" as errorCode, errorMessage nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Privileged Activity/Security Group Activity Over Time**
```
_sourceCategory = Labs/AWS/CloudTrail *SecurityGroup*
| parse "\"eventName\":\"*\"" as event_name nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Privileged Activity/Successful Configuration Changes**
```
_sourceCategory = Labs/AWS/CloudTrail (Delete* or Create* or Terminate*)
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse "\"portRange\":{\"from\":*,\"to\":*}" as from_port, to_port nodrop | parse "\"fromPort\":*,\"toPort\":*," as from_Port, to_Port nodrop | parse "\"errorCode\":\"*\",\"errorMessage\":\"*\"" as errorCode, errorMessage nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Privileged Activity/Successful Policy Changes**
```
_sourceCategory = Labs/AWS/CloudTrail (Create*Policy or Update*Policy or Put*Policy or Attach*Policy or Detach*Policy or Delete*Policy) !errorCode !errorMessage
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "sourceIPAddress" as source_ipaddress nodrop | json "eventSource" as event_Source nodrop | json "errorCode" nodrop | json "errorMessage" nodrop
| json "requestParameters.policyName" as policyName nodrop | json "requestParameters.policyArn" as policyArn nodrop | parse field=policyArn ":policy/*" as policyName nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Privileged Activity/Top 10 Failed Configuration Changes**
```
_sourceCategory = Labs/AWS/CloudTrail (Delete* or Create* or Terminate*)
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse "\"portRange\":{\"from\":*,\"to\":*}" as from_port, to_port nodrop | parse "\"fromPort\":*,\"toPort\":*," as from_Port, to_Port nodrop | parse "\"errorCode\":\"*\",\"errorMessage\":\"*\"" as errorCode, errorMessage nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Privileged Activity/Top 10 Security Group Activities**
```
_sourceCategory = Labs/AWS/CloudTrail *SecurityGroup*
| parse "\"eventName\":\"*\"" as event_name nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Analytics - Privileged Activity/Top 10 Successful Configuration Changes**
```
_sourceCategory = Labs/AWS/CloudTrail (Delete* or Create* or Terminate*)
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse "\"portRange\":{\"from\":*,\"to\":*}" as from_port, to_port nodrop | parse "\"fromPort\":*,\"toPort\":*," as from_Port, to_Port nodrop | parse "\"errorCode\":\"*\",\"errorMessage\":\"*\"" as errorCode, errorMessage nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Account and System Monitoring/Created Access Keys**
```
_sourceCategory = Labs/AWS/CloudTrail CreateAccessKey 
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Account and System Monitoring/Created AccessKey**
```
_sourceCategory = Labs/AWS/CloudTrail CreateAccessKey 
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Account and System Monitoring/Created IAM Roles**
```
_sourceCategory = Labs/AWS/CloudTrail CreateRole
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop
| parse "\"roleName\":\"*\"" as roleName nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Account and System Monitoring/Created IAM Users**
```
_sourceCategory = Labs/AWS/CloudTrail CreateUser 
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop
| parse "\"requestParameters\":{\"userName\":\"*\"}" as targetUser_username nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop
| parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Account and System Monitoring/Created Roles**
```
_sourceCategory = Labs/AWS/CloudTrail CreateRole
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop
| parse "\"roleName\":\"*\"" as roleName nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Account and System Monitoring/Deleted  IAM Users**
```
_sourceCategory = Labs/AWS/CloudTrail DeleteUser
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop
| parse "\"requestParameters\":{\"userName\":\"*\"}" as dest_user nodrop | json "eventType" as event_type nodrop
| parse "\"eventTime\":\"*\"" as eventTime nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Account and System Monitoring/Deleted Access Keys**
```
_sourceCategory = Labs/AWS/CloudTrail DeleteAccessKey 
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Account and System Monitoring/Deleted AccessKey**
```
_sourceCategory = Labs/AWS/CloudTrail DeleteAccessKey 
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Account and System Monitoring/Deleted IAM Roles**
```
_sourceCategory = Labs/AWS/CloudTrail DeleteRole
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop
| parse "\"roleName\":\"*\"" as roleName nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Account and System Monitoring/Deleted IAM Users**
```
_sourceCategory = Labs/AWS/CloudTrail DeleteUser
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop
| parse "\"requestParameters\":{\"userName\":\"*\"}" as targetUser_username nodrop | json "eventType" as event_type nodrop
| parse "\"eventTime\":\"*\"" as eventTime nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Account and System Monitoring/Deleted Roles**
```
_sourceCategory = Labs/AWS/CloudTrail DeleteRole
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop
| parse "\"roleName\":\"*\"" as roleName nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Account and System Monitoring/IAM Activity**
```
_sourceCategory = Labs/AWS/CloudTrail "iam.amazonaws.com" (Create* or Delete* or Put* or Terminate*)
| json "recipientAccountId" as recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"roleName\":\"*\"" as roleName nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Account and System Monitoring/IAM Events Over Time**
```
_sourceCategory = Labs/AWS/CloudTrail "iam.amazonaws.com"
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | json "eventType" as event_type nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Account and System Monitoring/Password - Create, Update, Delete**
```
_sourceCategory = Labs/AWS/CloudTrail "iam.amazonaws.com" (ChangePassword or UpdateLoginProfile or DeleteLoginProfile) 
| json "recipientAccountId" as recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "sourceIPAddress" as source_ipaddress nodrop | json "eventSource" as event_source nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "requestParameters.userName" as dest_user nodrop | json "userIdentity.principalId" as principalId nodrop | json "userIdentity.arn" as arn nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Account and System Monitoring/User Added To Security Group**
```
_sourceCategory = Labs/AWS/CloudTrail "iam.amazonaws.com" (AddUserToGroup ) !errorCode !errorMesage
| json "recipientAccountId" as recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "sourceIPAddress" as srcDevice_ip nodrop | json "eventSource" as event_source nodrop
| json "requestParameters.groupName" as groupName nodrop | json "requestParameters.userName" as targetUser_username nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Account and System Monitoring/User Deleted From Security Group**
```
_sourceCategory = Labs/AWS/CloudTrail "iam.amazonaws.com" (RemoveUserFromGroup) !errorCode !errorMesage
| json "recipientAccountId" as recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"awsRegion\":\"*\"" as aws_region nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "sourceIPAddress" as srcDevice_ip nodrop | json "eventSource" as event_source nodrop
| json "requestParameters.groupName" as groupName nodrop | json "requestParameters.userName" as dest_user nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Overview/Added User To Security Group**
```
_sourceCategory = Labs/AWS/CloudTrail "iam.amazonaws.com" (AddUserToGroup ) !errorCode !errorMesage
| json "recipientAccountId" as recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop | parse "\"awsRegion\":\"*\"" as aws_region nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "sourceIPAddress" as srcDevice_ip nodrop | json "eventSource" as event_source nodrop
| json "requestParameters.groupName" as groupName nodrop | json "requestParameters.userName" as targetUser_username nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Overview/Created AccessKey**
```
_sourceCategory = Labs/AWS/CloudTrail CreateAccessKey 
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Overview/Created Roles**
```
_sourceCategory = Labs/AWS/CloudTrail CreateRole
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop
| parse "\"roleName\":\"*\"" as roleName nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Overview/Created Users**
```
_sourceCategory = Labs/AWS/CloudTrail CreateUser 
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop
| parse "\"requestParameters\":{\"userName\":\"*\"}" as targetUser_username nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop
| parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Overview/Deleted AccessKey**
```
_sourceCategory = Labs/AWS/CloudTrail DeleteAccessKey 
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Overview/Deleted Roles**
```
_sourceCategory = Labs/AWS/CloudTrail DeleteRole
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop
| parse "\"roleName\":\"*\"" as roleName nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Overview/Deleted Users**
```
_sourceCategory = Labs/AWS/CloudTrail DeleteUser
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop
| parse "\"requestParameters\":{\"userName\":\"*\"}" as targetUser_username nodrop | json "eventType" as event_type nodrop
| parse "\"eventTime\":\"*\"" as eventTime nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Overview/Login locations**
```
_sourceCategory = Labs/AWS/CloudTrail
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "displayName\":\"*\"" as user_username, "ipAddress\":\"*\"" as srcDevice_ip nodrop
| parse "\"userName\":\"*\"" as user_username, "\"sourceIPAddress\":\"*\"," as srcDevice_ip 
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse "ruser= rhost=* user=*" as src_host, dest_user nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Overview/Non Read Only Events**
```
_sourceCategory = Labs/AWS/CloudTrail
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"userName\":\"*\"" as user_username nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Overview/Outlier - Failed Login**
```
_sourceCategory = Labs/AWS/CloudTrail  "ConsoleLogin" "Failure"
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as eventName nodrop
| where eventName="ConsoleLogin"
| where recipient_acc_id matches "{{aws_account}}" and aws_region matches "{{aws_region}}"
| parse "\"sourceIPAddress\":\"*\"" as sourceIPAddress nodrop
| parse "\"userName\":\"*\"" as user_username nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| if (user_username="", user_principal, user_username) as user 
| json field=_raw "responseElements.ConsoleLogin" as loginResult nodrop
| where loginResult ="Failure"
| parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Overview/Potential Threats by IP**
```
_sourceCategory = Labs/AWS/CloudTrail sourceIPAddress 
| json "recipientAccountId" as recipient_acc_id nodrop
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, event_name, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| where recipient_acc_id matches "{{aws_account}}" and aws_region matches "{{aws_region}}"
| if (result=="" or isNull(result), "Success",result) as result 
| lookup type, actor, raw, threatlevel as malicious_confidence ,threat from sumo://threat/cs on src_ip=threat
| where type="ip_address" and  malicious_confidence="high"
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
|  formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Overview/Read Only Events**
```
_sourceCategory = Labs/AWS/CloudTrail (Describe* or Get* or List*)
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"userName\":\"*\"" as user_username nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Overview/Removed User From Security Group**
```
_sourceCategory = Labs/AWS/CloudTrail "iam.amazonaws.com" (RemoveUserFromGroup) !errorCode !errorMesage
| json "recipientAccountId" as recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"awsRegion\":\"*\"" as aws_region nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "sourceIPAddress" as srcDevice_ip nodrop | json "eventSource" as event_source nodrop
| json "requestParameters.groupName" as groupName nodrop | json "requestParameters.userName" as dest_user nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Overview/Threat Outlier**
```
_sourceCategory = Labs/AWS/CloudTrail sourceIPAddress 
| json "recipientAccountId" as recipient_acc_id nodrop
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, event_name, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as user_username, accountId nodrop 
| where recipient_acc_id matches "{{aws_account}}" and aws_region matches "{{aws_region}}"
| if (result=="" or isNull(result), "Success",result) as result 
| lookup type, actor, raw, threatlevel as malicious_confidence,threat from sumo://threat/cs on src_ip=threat
| where type="ip_address" and  malicious_confidence="high"
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
|  formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Overview/Threats Over Time**
```
_sourceCategory = Labs/AWS/CloudTrail sourceIPAddress 
| json "recipientAccountId" as recipient_acc_id nodrop
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, event_name, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| where recipient_acc_id matches "{{aws_account}}" and aws_region matches "{{aws_region}}"
| if (result=="" or isNull(result), "Success",result) as result 
| lookup type, actor, raw, threatlevel as malicious_confidence,threat from sumo://threat/cs on src_ip=threat
| where type="ip_address" and  malicious_confidence="high"
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
|  formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Overview/Unauthorized AWS API Requests**
```
_sourceCategory = Labs/AWS/CloudTrail ("AccessDenied" or "UnauthorizedOperation")
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| where recipient_acc_id matches "{{aws_account}}" and aws_region matches "{{aws_region}}"
| json "sourceIPAddress" as srcDevice_ip
| json "errorCode" as error
| json "eventName"
| json "userIdentity.sessionContext.sessionIssuer.userName" as user_username
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Threat Intelligence/Threat Count by I.P**
```
_sourceCategory = Labs/AWS/CloudTrail 
| json "recipientAccountId" as recipient_acc_id nodrop
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, event_name, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| where recipient_acc_id matches "{{aws_account}}" and aws_region matches "{{aws_region}}"
| if (result=="" or isNull(result), "Success",result) as result 
| where result!="AccessDenied"
| lookup type, actor, raw, threatlevel  as malicious_confidence ,threat from sumo://threat/cs on src_ip=threat
| where type="ip_address" 
| json field=raw "labels[*].name" as label_name 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Threat Intelligence/Threats Associated with CloudTrail Events**
```
_sourceCategory = Labs/AWS/CloudTrail 
| json "recipientAccountId" as recipient_acc_id nodrop
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, event_name, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| where recipient_acc_id matches "{{aws_account}}" and aws_region matches "{{aws_region}}"
| if (result=="" or isNull(result), "Success",result) as result 
| lookup type, actor, raw, threatlevel  as malicious_confidence ,threat from sumo://threat/cs on src_ip=threat
| where type="ip_address" 
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Threat Intelligence/Threats By Actor**
```
_sourceCategory = Labs/AWS/CloudTrail sourceIPAddress 
| json "recipientAccountId" as recipient_acc_id nodrop
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, event_name, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| where recipient_acc_id matches "{{aws_account}}" and aws_region matches "{{aws_region}}"
| if (result=="" or isNull(result), "Unknown",result) as result
| lookup type, actor, raw, threatlevel as malicious_confidence ,threat from sumo://threat/cs on src_ip=threat
| where type="ip_address" 
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Threat Intelligence/Threats by Events and Result**
```
_sourceCategory = Labs/AWS/CloudTrail 
| json "recipientAccountId" as recipient_acc_id nodrop
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, event_name, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| where recipient_acc_id matches "{{aws_account}}" and aws_region matches "{{aws_region}}"
| if (result=="" or isNull(result), "Success",result) as result 
| lookup type, actor, raw, threatlevel as malicious_confidence ,threat from sumo://threat/cs on src_ip=threat
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Threat Intelligence/Threats by Geo Location**
```
_sourceCategory = Labs/AWS/CloudTrail  sourceIPAddress
| json "recipientAccountId" as recipient_acc_id nodrop
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, action, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| where recipient_acc_id matches "{{aws_account}}" and aws_region matches "{{aws_region}}"
| if (result=="" or isNull(result), "Success",result) as result 
| lookup type, actor, raw, threatlevel as malicious_confidence,threat from sumo://threat/cs on src_ip=threat
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/Amazon CloudTrail - Security Monitoring - Threat Intelligence/Threats Over Time by Result**
```
_sourceCategory = Labs/AWS/CloudTrail 
| json "recipientAccountId" as recipient_acc_id nodrop
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, event_name, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| where recipient_acc_id matches "{{aws_account}}" and aws_region matches "{{aws_region}}"
| if (result=="" or isNull(result), "Success",result) as result 
| lookup type, actor, raw, threatlevel  as malicious_confidence ,threat from sumo://threat/cs on src_ip=threat
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - ACL or Route Changes/AWS CloudTrail - ACL or Route Changes**
```
_sourceCategory = Labs/AWS/CloudTrail (CreateNetworkAclEntry OR CreateRoute)
| parse "\"eventName\":\"*\"" as event_name | where event_name in ("CreateNetworkAclEntry","CreateRoute")
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - Attempt to create a publicly accessible database/AWS CloudTrail - Attempt to create a publicly accessible database**
```
_sourceCategory = Labs/AWS/CloudTrail (CreateDBInstance)
| parse "\"eventName\":\"*\"" as event_name | where event_name="CreateDBInstance"
| parse "\"publiclyAccessible\":\"*\"" as publicly_accessible | where publicly_accessible="true"
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - Authorisation Failures/AWS CloudTrail - Authorisation Failures**
```
_sourceCategory = Labs/AWS/CloudTrail errorCode (*UnauthorizedOperation OR AccessDenied*)
| parse "\"errorCode\":\"*\"" as error_code | where error_code matches "*UnauthorizedOperation" OR error_code matches "AccessDenied*"
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - CloudTrail Changes/AWS CloudTrail - CloudTrail Changes**
```
_sourceCategory = Labs/AWS/CloudTrail (*Trail OR *Logging)
| parse "\"eventName\":\"*\"" as event_name | where event_name in ("CreateTrail","UpdateTrail","DeleteTrail","StartLogging","StopLogging")
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - CMK Disabled or Scheduled for Deletion/AWS CloudTrail - CMK Disabled or Scheduled for Deletion**
```
_sourceCategory = Labs/AWS/CloudTrail (DisableKey OR ScheduleKeyDeletion)
| parse "\"eventSource\":\"*\"" as event_source | where event_source="kms.amazonaws.com"
| parse "\"eventName\":\"*\"" as event_name | where event_name in ("DisableKey","ScheduleKeyDeletion")
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - Configuration Changes/AWS CloudTrail - Configuration Changes**
```
_sourceCategory = Labs/AWS/CloudTrail (*Channel OR *Recorder)
| parse "\"eventSource\":\"*\"" as event_source | where event_source="config.amazonaws.com"
| parse "\"eventName\":\"*\"" as event_name 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - Console Sign-In Failures/AWS CloudTrail - Console Sign-In Failures**
```
_sourceCategory = Labs/AWS/CloudTrail (ConsoleLogin Failure)
| parse "\"eventName\":\"*\"" as event_name | where event_name="ConsoleLogin"
| json field=_raw "userIdentity.principalId","responseElements.ConsoleLogin" as principal_id,action nodrop
| toLowerCase(action)
| where action="failure"
| parse "\"userName\":\"*\"" as user nodrop
| parse regex field=principal_id ":(?<user_principal>.*)" nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - Console Sign-In Without MFA/AWS CloudTrail - Console Sign-In Without MFA**
```
_sourceCategory = Labs/AWS/CloudTrail (ConsoleLogin)
| parse "\"eventName\":\"*\"" as event_name
| parse "\"MFAUsed\":\"*\"" as mfa_used
| where (event_name="ConsoleLogin" AND mfa_used="No")
| parse "\"userName\":\"*\"" as user nodrop
| json field=_raw "userIdentity.principalId","responseElements.ConsoleLogin" as principal_id,action nodrop
| parse regex field=principal_id ":(?<user_principal>.*)" nodrop
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - Default Policy Version Set/AWS CloudTrail - Default Policy Version Set**
```
_sourceCategory = Labs/AWS/CloudTrail (SetDefaultPolicyVersion)
| parse "\"eventSource\":\"*\"" as eventSource | where eventSource="iam.amazonaws.com"
| parse "\"eventName\":\"*\"" as eventName | where eventName="SetDefaultPolicyVersion"
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - Detect Permanent Key Creation/AWS CloudTrail - Detect Permanent Key Creation**
```
_sourceCategory = Labs/AWS/CloudTrail (CreateAccessKey IAMUser)
| parse "\"eventName\":\"*\"" as event_name | where event_name="CreateAccessKey"
| parse "\"userIdentity\":{\"type\":\"*\"" as type | where type="IAMUser"
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - Detect Sts Get Session Token Abuse/AWS CloudTrail - Detect Sts Get Session Token Abuse**
```
_sourceCategory = Labs/AWS/CloudTrail (GetSessionToken IAMUser)
| parse "\"eventName\":\"*\"" as event_name | where event_name="GetSessionToken"
| parse "\"userIdentity\":{\"type\":\"*\"" as type | where type="IAMUser"
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - EC2 Instance Changes/AWS CloudTrail - EC2 Instance Changes**
```
_sourceCategory = Labs/AWS/CloudTrail (*Instances)
| parse "\"eventName\":\"*\"" as event_name
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - EC2 Large Instance Changes/AWS CloudTrail - EC2 Large Instance Changes**
```
_sourceCategory = Labs/AWS/CloudTrail 
 (RunInstances)
| parse "\"eventName\":\"*\"" as event_name | where event_name="RunInstances"
| parse "\"instanceType\":\"*\"" as instance_type | where instance_type matches "*.8xlarge" OR instance_type matches "*.4xlarge"
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - IAM Policy Changes/AWS CloudTrail - IAM Policy Changes**
```
_sourceCategory = Labs/AWS/CloudTrail  (*Policy*)
| parse "\"eventName\":\"*\"" as event_name | where event_name in ("DeleteGroupPolicy","DeleteRolePolicy","DeleteUserPolicy","PutGroupPolicy","PutRolePolicy","PutUserPolicy","CreatePolicy","DeletePolicy","CreatePolicyVersion","DeletePolicyVersion","AttachRolePolicy","DetachRolePolicy","AttachUserPolicy","DetachUserPolicy","AttachGroupPolicy","DetachGroupPolicy")
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - Internet Gateway Changes/AWS CloudTrail - Internet Gateway Changes**
```
_sourceCategory = Labs/AWS/CloudTrail  (*Gateway)
| parse "\"eventName\":\"*\"" as event_name 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - Network ACL Changes/AWS CloudTrail - Network ACL Changes**
```
_sourceCategory = Labs/AWS/CloudTrail  (*AclEntry OR *NetworkAcl*)
| parse "\"eventName\":\"*\"" as event_name 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - Organisation Changes/AWS CloudTrail - Organisation Changes**
```
_sourceCategory = Labs/AWS/CloudTrail (AcceptHandshake OR AttachPolicy OR CancelHandshake OR CreateAccount OR CreateOrganization OR CreateOrganizationalUnit OR CreatePolicy OR DeclineHandshake OR DeleteOrganization OR DeleteOrganizationalUnit OR DeletePolicy OR EnableAllFeatures OR EnablePolicyType OR InviteAccountToOrganization OR LeaveOrganization OR DetachPolicy OR DisablePolicyType OR MoveAccount OR RemoveAccountFromOrganization OR UpdateOrganizationalUnit OR UpdatePolicy)
| parse "\"eventSource\":\"*\"" as event_source
| parse "\"eventName\":\"*\"" as event_name
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - Root Account Usage/AWS CloudTrail - Root Account Usage**
```
_sourceCategory = Labs/AWS/CloudTrail  (Root)
| parse "\"eventName\":\"*\"" as event_name | where !(event_name="AwsServiceEvent")
| json "userIdentity.type","userIdentity.invokedBy" as type,invoked_by nodrop 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - Route Table Changes/AWS CloudTrail - Route Table Changes**
```
_sourceCategory = Labs/AWS/CloudTrail  (ReplaceRouteTableAssociation OR *Route OR *RouteTable)
| parse "\"eventName\":\"*\"" as event_name | where event_name in ("CreateRoute","CreateRouteTable","ReplaceRoute","ReplaceRouteTableAssociation","DeleteRouteTable","DeleteRoute","DisassociateRouteTable")
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - S3 Bucket Changes/AWS CloudTrail - S3 Bucket Changes**
```
_sourceCategory = Labs/AWS/CloudTrail  (*Bucket*)
| parse "\"eventSource\":\"*\"" as event_source | where event_source="s3.amazonaws.com"
| parse "\"eventName\":\"*\"" as event_name 
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - Security Group Changes/AWS CloudTrail - Security Group Changes**
```
_sourceCategory = Labs/AWS/CloudTrail  (*GroupIngress OR *GroupEgress OR *SecurityGroup)
| parse "\"eventName\":\"*\"" as event_name | where event_name in ("AuthorizeSecurityGroupIngress","AuthorizeSecurityGroupEgress","RevokeSecurityGroupIngress","RevokeSecurityGroupEgress","CreateSecurityGroup","DeleteSecurityGroup")
```

**Amazon CloudTrail - Cloud Security Monitoring and Analytics/AWS CloudTrail - VPC Changes/AWS CloudTrail - VPC Changes**
```
_sourceCategory = Labs/AWS/CloudTrail  (*Vpc*)
| parse "\"eventName\":\"*\"" as event_name | where event_name in ("CreateVpc","DeleteVpc","ModifyVpcAttribute","AcceptVpcPeeringConnection","CreateVpcPeeringConnection","DeleteVpcPeeringConnection","RejectVpcPeeringConnection","AttachClassicLinkVpc","DetachClassicLinkVpc","DisableVpcClassicLink","EnableVpcClassicLinkCreateVpc","DeleteVpc","ModifyVpcAttribute","AcceptVpcPeeringConnection","CreateVpcPeeringConnection","DeleteVpcPeeringConnection","RejectVpcPeeringConnection","AttachClassicLinkVpc","DetachClassicLinkVpc","DisableVpcClassicLink","EnableVpcClassicLink")
```


