# Parsers For Amazon CloudTrail - Cloud Security Monitoring and Analytics

## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| json "sourceIPAddress" as srcDevice_ip
| json "errorCode" as error
| json "eventName"
| json "userIdentity.sessionContext.sessionIssuer.userName" as user_username
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Access Keys, Created AccessKey, Created IAM Roles, Created IAM Users, Created Roles, Created Security Groups, Deleted  IAM Users, Deleted Access Keys, Deleted AccessKey, Deleted IAM Roles, Deleted IAM Users, Deleted Roles, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, IAM Activity, IAM Events Over Time, Login locations, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Password - Create, Update, Delete, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes, Unauthorized AWS API Requests, User Added To Security Group, User Deleted From Security Group



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Security Group Activity, Security Group Activity Over Time



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created AccessKey, Created IAM Users, Created Roles, Created Security Groups, Deleted  IAM Users, Deleted AccessKey, Deleted Roles, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop
| parse "\"requestParameters\":{\"userName\":\"*\"}" as dest_user nodrop | json "eventType" as event_type nodrop
| parse "\"eventTime\":\"*\"" as eventTime nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created IAM Users, Created Security Groups, Deleted  IAM Users, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop
| parse "\"requestParameters\":{\"userName\":\"*\"}" as dest_user nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop
| parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created IAM Users, Created Security Groups, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop
| parse "\"roleName\":\"*\"" as roleName nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created IAM Users, Created Roles, Created Security Groups, Deleted  IAM Users, Deleted Roles, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop
| parse "\"accessKeyId\":\"*\"" as accessKeyId nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Access Keys, Created AccessKey, Created IAM Roles, Created IAM Users, Created Roles, Created Security Groups, Created Users, Deleted  IAM Users, Deleted Access Keys, Deleted AccessKey, Deleted IAM Roles, Deleted IAM Users, Deleted Roles, Deleted Security Groups, Deleted Users, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, IAM Activity, IAM Events Over Time, Login locations, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Password - Create, Update, Delete, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes, Unauthorized AWS API Requests, User Added To Security Group, User Deleted From Security Group



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop
| parse "\"requestParameters\":{\"userName\":\"*\"}" as targetUser_username nodrop | json "eventType" as event_type nodrop
| parse "\"eventTime\":\"*\"" as eventTime nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Access Keys, Created AccessKey, Created IAM Roles, Created IAM Users, Created Roles, Created Security Groups, Created Users, Deleted  IAM Users, Deleted Access Keys, Deleted AccessKey, Deleted IAM Roles, Deleted IAM Users, Deleted Roles, Deleted Security Groups, Deleted Users, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, IAM Activity, IAM Events Over Time, Login locations, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Password - Create, Update, Delete, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes, Unauthorized AWS API Requests, User Added To Security Group, User Deleted From Security Group



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop
| parse "\"requestParameters\":{\"userName\":\"*\"}" as targetUser_username nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop
| parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Access Keys, Created AccessKey, Created IAM Roles, Created IAM Users, Created Roles, Created Security Groups, Created Users, Deleted  IAM Users, Deleted Access Keys, Deleted AccessKey, Deleted IAM Roles, Deleted IAM Users, Deleted Roles, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, IAM Activity, IAM Events Over Time, Login locations, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Password - Create, Update, Delete, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes, Unauthorized AWS API Requests, User Added To Security Group, User Deleted From Security Group



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop
| parse "\"roleName\":\"*\"" as roleName nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "eventType" as event_type nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Access Keys, Created AccessKey, Created IAM Roles, Created IAM Users, Created Roles, Created Security Groups, Created Users, Deleted  IAM Users, Deleted Access Keys, Deleted AccessKey, Deleted IAM Roles, Deleted IAM Users, Deleted Roles, Deleted Security Groups, Deleted Users, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, IAM Activity, IAM Events Over Time, Login locations, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Password - Create, Update, Delete, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes, Unauthorized AWS API Requests, User Added To Security Group, User Deleted From Security Group



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop 
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Non Read Only Events, Read Only Events, Security Group Activity, Security Group Activity Over Time



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"userName\":\"*\"" as user_username nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop 
 
```
### Use Cases:
Added User To Security Group, AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Access Keys, Created AccessKey, Created IAM Roles, Created IAM Users, Created Roles, Created Security Groups, Created Users, Deleted  IAM Users, Deleted Access Keys, Deleted AccessKey, Deleted IAM Roles, Deleted IAM Users, Deleted Roles, Deleted Security Groups, Deleted Users, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, IAM Activity, IAM Events Over Time, Login locations, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Password - Create, Update, Delete, Read Only Events, Removed User From Security Group, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes, Unauthorized AWS API Requests, User Added To Security Group, User Deleted From Security Group



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as eventName nodrop
| parse "\"sourceIPAddress\":\"*\"" as sourceIPAddress nodrop
| parse "\"userName\":\"*\"" as user_username nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| json field=_raw "responseElements.ConsoleLogin" as loginResult nodrop
| parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop
 
```
### Use Cases:
Added User To Security Group, AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Access Keys, Created AccessKey, Created IAM Roles, Created IAM Users, Created Roles, Created Security Groups, Created Users, Deleted  IAM Users, Deleted Access Keys, Deleted AccessKey, Deleted IAM Roles, Deleted IAM Users, Deleted Roles, Deleted Security Groups, Deleted Users, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, IAM Activity, IAM Events Over Time, Login locations, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier - Failed Login, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Password - Create, Update, Delete, Read Only Events, Removed User From Security Group, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes, Unauthorized AWS API Requests, User Added To Security Group, User Deleted From Security Group



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | json "eventType" as event_type nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created AccessKey, Created IAM Users, Created Roles, Created Security Groups, Deleted  IAM Users, Deleted AccessKey, Deleted Roles, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, IAM Activity, IAM Events Over Time, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Password - Create, Update, Delete, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"accountId\":\"*\"" as accountId nodrop| parse "\"principalId\":\"*\"" as principalId nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop | parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Non Read Only Events, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Console Logins, Successful Root Console Logins



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"accountId\":\"*\"" as accountId nodrop| parse "\"principalId\":\"*\"" as principalId nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop | parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop
| json "userIdentity.type" as type nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Non Read Only Events, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Root Console Logins



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"errorMessage\":\"*\"" as errorMessage nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop | parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop
| json "userIdentity.type" as type nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Root Login Failures, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Non Read Only Events, Read Only Events, Security Group Activity, Security Group Activity Over Time



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"errorMessage\":\"*\"" as errorMessage nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop | parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop | parse field=errorMessage " Error Code: *; Request ID" as errorCode2 nodrop | parse "\"accountId\":\"*\"" as accountId nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Non Read Only Events, Read Only Events, Security Group Activity, Security Group Activity Over Time



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse "\"portRange\":{\"from\":*,\"to\":*}" as from_port, to_port nodrop | parse "\"fromPort\":*,\"toPort\":*," as from_Port, to_Port nodrop | parse "\"errorCode\":\"*\",\"errorMessage\":\"*\"" as errorCode, errorMessage nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Security Groups, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Successful Configuration Changes, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Successful Configuration Changes



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse "\"portRange\":{\"from\":*,\"to\":*}" as from_port, to_port nodrop | parse "\"fromPort\":*,\"toPort\":*," as from_Port, to_Port nodrop | parse "\"errorCode\":\"*\",\"errorMessage\":\"*\"" as errorCode, errorMessage nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Non Read Only Events, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Successful Configuration Changes



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse "\"portRange\":{\"from\":*,\"to\":*}" as from_port, to_port nodrop | parse "\"fromPort\":*,\"toPort\":*," as from_Port, to_Port nodrop | parse "\"errorCode\":\"*\",\"errorMessage\":\"*\"" as errorCode, errorMessage nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop 
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Security Groups, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Successful Configuration Changes



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | parse "\"errorMessage\":\"*\"" as errorMessage nodrop | parse "\"mfaAuthenticated\":\"*\"" as mfaAuthenticated nodrop 
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Non Read Only Events, Read Only Events, Security Group Activity, Security Group Activity Over Time



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"userName\":\"*\"" as user_username nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | parse "\"errorMessage\":\"*\"" as errorMessage nodrop | parse "\"mfaAuthenticated\":\"*\"" as mfaAuthenticated nodrop 
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Failed API Calls, Non Read Only Events, Read Only Events, Security Group Activity, Security Group Activity Over Time



## Parser:
```
| json "awsRegion", "recipientAccountId" as aws_region, recipient_acc_id nodrop
| parse "displayName\":\"*\"" as user_username, "ipAddress\":\"*\"" as srcDevice_ip nodrop
| parse "\"userName\":\"*\"" as user_username, "\"sourceIPAddress\":\"*\"," as srcDevice_ip 
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse "ruser= rhost=* user=*" as src_host, dest_user nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Access Keys, Created AccessKey, Created IAM Roles, Created IAM Users, Created Roles, Created Security Groups, Deleted  IAM Users, Deleted Access Keys, Deleted AccessKey, Deleted IAM Roles, Deleted IAM Users, Deleted Roles, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, IAM Activity, IAM Events Over Time, Login locations, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Password - Create, Update, Delete, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes, User Added To Security Group, User Deleted From Security Group



## Parser:
```
| json "recipientAccountId" as recipient_acc_id nodrop
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, action, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| json field=raw "labels[*].name" as label_name 
 
```
### Use Cases:
Added User To Security Group, AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Access Keys, Created AccessKey, Created IAM Roles, Created IAM Users, Created Roles, Created Security Groups, Created Users, Deleted  IAM Users, Deleted Access Keys, Deleted AccessKey, Deleted IAM Roles, Deleted IAM Users, Deleted Roles, Deleted Security Groups, Deleted Users, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, IAM Activity, IAM Events Over Time, Login locations, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier - Failed Login, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Password - Create, Update, Delete, Potential Threats by IP, Read Only Events, Removed User From Security Group, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Threat Outlier, Threats by Geo Location, Threats Over Time, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes, Unauthorized AWS API Requests, User Added To Security Group, User Deleted From Security Group



## Parser:
```
| json "recipientAccountId" as recipient_acc_id nodrop
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, event_name, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| json field=raw "labels[*].name" as label_name 
 
```
### Use Cases:
Added User To Security Group, AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Access Keys, Created AccessKey, Created IAM Roles, Created IAM Users, Created Roles, Created Security Groups, Created Users, Deleted  IAM Users, Deleted Access Keys, Deleted AccessKey, Deleted IAM Roles, Deleted IAM Users, Deleted Roles, Deleted Security Groups, Deleted Users, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, IAM Activity, IAM Events Over Time, Login locations, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier - Failed Login, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Password - Create, Update, Delete, Potential Threats by IP, Read Only Events, Removed User From Security Group, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Threat Count by I.P, Threat Outlier, Threats Associated with CloudTrail Events, Threats by Geo Location, Threats Over Time, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes, Unauthorized AWS API Requests, User Added To Security Group, User Deleted From Security Group



## Parser:
```
| json "recipientAccountId" as recipient_acc_id nodrop
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, event_name, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| json field=raw "labels[*].name" as label_name 
 
```
### Use Cases:
Added User To Security Group, AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Access Keys, Created AccessKey, Created IAM Roles, Created IAM Users, Created Roles, Created Security Groups, Created Users, Deleted  IAM Users, Deleted Access Keys, Deleted AccessKey, Deleted IAM Roles, Deleted IAM Users, Deleted Roles, Deleted Security Groups, Deleted Users, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, IAM Activity, IAM Events Over Time, Login locations, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier - Failed Login, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Password - Create, Update, Delete, Potential Threats by IP, Read Only Events, Removed User From Security Group, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Threat Count by I.P, Threat Outlier, Threats Associated with CloudTrail Events, Threats By Actor, Threats by Events and Result, Threats by Geo Location, Threats Over Time, Threats Over Time by Result, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes, Unauthorized AWS API Requests, User Added To Security Group, User Deleted From Security Group



## Parser:
```
| json "recipientAccountId" as recipient_acc_id nodrop
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, event_name, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as user_username, accountId nodrop 
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| json field=raw "labels[*].name" as label_name 
 
```
### Use Cases:
Added User To Security Group, AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Access Keys, Created AccessKey, Created IAM Roles, Created IAM Users, Created Roles, Created Security Groups, Created Users, Deleted  IAM Users, Deleted Access Keys, Deleted AccessKey, Deleted IAM Roles, Deleted IAM Users, Deleted Roles, Deleted Security Groups, Deleted Users, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, IAM Activity, IAM Events Over Time, Login locations, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier - Failed Login, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Password - Create, Update, Delete, Potential Threats by IP, Read Only Events, Removed User From Security Group, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Threat Outlier, Threats Over Time, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes, Unauthorized AWS API Requests, User Added To Security Group, User Deleted From Security Group



## Parser:
```
| json "recipientAccountId" as recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "sourceIPAddress" as source_ipaddress nodrop | json "eventSource" as event_source nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "requestParameters.userName" as dest_user nodrop | json "userIdentity.principalId" as principalId nodrop | json "userIdentity.arn" as arn nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Access Keys, Created AccessKey, Created IAM Roles, Created IAM Users, Created Roles, Created Security Groups, Deleted  IAM Users, Deleted Access Keys, Deleted AccessKey, Deleted IAM Roles, Deleted IAM Users, Deleted Roles, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, IAM Activity, IAM Events Over Time, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Password - Create, Update, Delete, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes



## Parser:
```
| json "recipientAccountId" as recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"awsRegion\":\"*\"" as aws_region nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "sourceIPAddress" as srcDevice_ip nodrop | json "eventSource" as event_source nodrop
| json "requestParameters.groupName" as groupName nodrop | json "requestParameters.userName" as dest_user nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Access Keys, Created AccessKey, Created IAM Roles, Created IAM Users, Created Roles, Created Security Groups, Created Users, Deleted  IAM Users, Deleted Access Keys, Deleted AccessKey, Deleted IAM Roles, Deleted IAM Users, Deleted Roles, Deleted Security Groups, Deleted Users, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, IAM Activity, IAM Events Over Time, Login locations, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Password - Create, Update, Delete, Read Only Events, Removed User From Security Group, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes, Unauthorized AWS API Requests, User Added To Security Group, User Deleted From Security Group



## Parser:
```
| json "recipientAccountId" as recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "sourceIPAddress" as srcDevice_ip nodrop | json "eventSource" as event_source nodrop
| json "requestParameters.groupName" as groupName nodrop | json "requestParameters.userName" as targetUser_username nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Access Keys, Created AccessKey, Created IAM Roles, Created IAM Users, Created Roles, Created Security Groups, Deleted  IAM Users, Deleted Access Keys, Deleted AccessKey, Deleted IAM Roles, Deleted IAM Users, Deleted Roles, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, IAM Activity, IAM Events Over Time, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Password - Create, Update, Delete, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes, User Added To Security Group



## Parser:
```
| json "recipientAccountId" as recipient_acc_id nodrop
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user_username nodrop | parse "\"awsRegion\":\"*\"" as aws_region nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "sourceIPAddress" as srcDevice_ip nodrop | json "eventSource" as event_source nodrop
| json "requestParameters.groupName" as groupName nodrop | json "requestParameters.userName" as targetUser_username nodrop
 
```
### Use Cases:
Added User To Security Group, AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Access Keys, Created AccessKey, Created IAM Roles, Created IAM Users, Created Roles, Created Security Groups, Created Users, Deleted  IAM Users, Deleted Access Keys, Deleted AccessKey, Deleted IAM Roles, Deleted IAM Users, Deleted Roles, Deleted Security Groups, Deleted Users, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, IAM Activity, IAM Events Over Time, Login locations, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Password - Create, Update, Delete, Read Only Events, Removed User From Security Group, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes, Unauthorized AWS API Requests, User Added To Security Group, User Deleted From Security Group



## Parser:
```
| json "recipientAccountId" as recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"roleName\":\"*\"" as roleName nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse "\"portRange\":{\"from\":*,\"to\":*}" as from_port,to_port nodrop | parse "\"fromPort\":*,\"toPort\":*," as from_Port,to_Port nodrop | parse "\"cidrBlock\":\"*\"" as cidr_block nodrop | parse "\"cidrIp\":\"*\"" as cidr_ip nodrop | parse "\"egress\":*," as egress nodrop  | parse "\"ruleAction\":\"*\"" as action nodrop | parse "\"groupName\":\"*\"," as groupName nodrop | parse "\"groupDescription\":\"*\"," as groupDescription nodrop | parse "\"groupId\":\"*\"" as groupId nodrop | parse regex field=event_name "SecurityGroup(?<direction>[A-Za-z]+)" nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop | parse field=arn "*:*:*::*:*" as f1, f2, f3, f4, user nodrop | parse field=arn "*:*:*::*:*/*/*" as f1, f2, f3, f4, f5, role, f7 nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Security Group Activity



## Parser:
```
| json "recipientAccountId" as recipient_acc_id nodrop
| parse "\"eventSource\":\"*\"" as event_source nodrop | parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"eventType\":\"*\"" as event_Type nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"sourceIPAddress\":\"*\"" as source_ipaddress nodrop | parse "\"principalId\":\"*\"" as principalId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"roleName\":\"*\"" as roleName nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"arn\":\"*\"" as arn nodrop | parse field=principalId "*:*" as accesskeyId, user_temp nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created AccessKey, Created IAM Users, Created Roles, Created Security Groups, Deleted  IAM Users, Deleted AccessKey, Deleted Roles, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, IAM Activity, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes



## Parser:
```
| parse "\"errorCode\":\"*\"" as error_code | where error_code matches "*UnauthorizedOperation" OR error_code matches "AccessDenied*"
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name
| parse "\"MFAUsed\":\"*\"" as mfa_used
| parse "\"userName\":\"*\"" as user nodrop
| json field=_raw "userIdentity.principalId","responseElements.ConsoleLogin" as principal_id,action nodrop
| parse regex field=principal_id ":(?<user_principal>.*)" nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name 
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name | where !(event_name="AwsServiceEvent")
| json "userIdentity.type","userIdentity.invokedBy" as type,invoked_by nodrop 
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name | where event_name in ("AuthorizeSecurityGroupIngress","AuthorizeSecurityGroupEgress","RevokeSecurityGroupIngress","RevokeSecurityGroupEgress","CreateSecurityGroup","DeleteSecurityGroup")
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name | where event_name in ("CreateNetworkAclEntry","CreateRoute")
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name | where event_name in ("CreateRoute","CreateRouteTable","ReplaceRoute","ReplaceRouteTableAssociation","DeleteRouteTable","DeleteRoute","DisassociateRouteTable")
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name | where event_name in ("CreateTrail","UpdateTrail","DeleteTrail","StartLogging","StopLogging")
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name | where event_name in ("CreateVpc","DeleteVpc","ModifyVpcAttribute","AcceptVpcPeeringConnection","CreateVpcPeeringConnection","DeleteVpcPeeringConnection","RejectVpcPeeringConnection","AttachClassicLinkVpc","DetachClassicLinkVpc","DisableVpcClassicLink","EnableVpcClassicLinkCreateVpc","DeleteVpc","ModifyVpcAttribute","AcceptVpcPeeringConnection","CreateVpcPeeringConnection","DeleteVpcPeeringConnection","RejectVpcPeeringConnection","AttachClassicLinkVpc","DetachClassicLinkVpc","DisableVpcClassicLink","EnableVpcClassicLink")
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name | where event_name in ("DeleteGroupPolicy","DeleteRolePolicy","DeleteUserPolicy","PutGroupPolicy","PutRolePolicy","PutUserPolicy","CreatePolicy","DeletePolicy","CreatePolicyVersion","DeletePolicyVersion","AttachRolePolicy","DetachRolePolicy","AttachUserPolicy","DetachUserPolicy","AttachGroupPolicy","DetachGroupPolicy")
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name | where event_name="ConsoleLogin"
| json field=_raw "userIdentity.principalId","responseElements.ConsoleLogin" as principal_id,action nodrop
| parse "\"userName\":\"*\"" as user nodrop
| parse regex field=principal_id ":(?<user_principal>.*)" nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name | where event_name="CreateAccessKey"
| parse "\"userIdentity\":{\"type\":\"*\"" as type | where type="IAMUser"
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name | where event_name="CreateDBInstance"
| parse "\"publiclyAccessible\":\"*\"" as publicly_accessible | where publicly_accessible="true"
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name | where event_name="GetSessionToken"
| parse "\"userIdentity\":{\"type\":\"*\"" as type | where type="IAMUser"
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name | where event_name="RunInstances"
| parse "\"instanceType\":\"*\"" as instance_type | where instance_type matches "*.8xlarge" OR instance_type matches "*.4xlarge"
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Security Groups, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop
| parse "\"eventTime\":\"*\"" as eventTime nodrop | parse "\"groupId\":\"*\"" as groupId nodrop | json "errorCode" nodrop | json "errorMessage" as errorMessage nodrop | json "sourceIPAddress" as source_ipaddress nodrop | json "eventSource" as event_Source nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Security Groups, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop
| parse "\"eventTime\":\"*\"" as eventTime nodrop | parse "\"groupName\":\"*\"," as groupName nodrop | parse "\"groupDescription\":\"*\"," as groupDescription nodrop | parse "\"groupId\":\"*\"" as groupId nodrop | json "errorCode" nodrop | json "errorMessage" as errorMessage nodrop | json "sourceIPAddress" as source_ipaddress nodrop | json "eventSource" as event_Source nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Security Groups, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "sourceIPAddress" as source_ipaddress nodrop | json "eventSource" as event_Source nodrop | json "errorCode" nodrop | json "errorMessage" nodrop
| json "requestParameters.policyName" as policyName nodrop | json "requestParameters.policyArn" as policyArn nodrop | parse field=policyArn ":policy/*" as policyName nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Security Groups, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | json "sourceIPAddress" as source_ipaddress nodrop | json "eventSource" as event_Source nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "requestParameters.policyName" as policyName nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Security Groups, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | parse "\"groupId\":\"*\"" as groupId nodrop | json "sourceIPAddress" as source_ipaddress nodrop | json "eventSource" as event_source nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Security Groups, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Group Operation Successes, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes



## Parser:
```
| parse "\"eventName\":\"*\"" as event_name nodrop | parse "\"accountId\":\"*\"" as accountId nodrop | parse "\"userName\":\"*\"" as user nodrop | parse "\"awsRegion\":\"*\"" as aws_Region nodrop | parse "\"eventTime\":\"*\"" as eventTime nodrop | parse "\"groupId\":\"*\"" as groupId nodrop | parse "\"errorCode\":\"*\"" as errorCode nodrop | json "errorMessage" as errorMessage nodrop | json "sourceIPAddress" as source_ipaddress nodrop | json "eventSource" as event_source nodrop
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes, AWS CloudTrail - Security Group Changes, AWS CloudTrail - VPC Changes, Console Login Failures, Console Root Login Failures, Created Security Groups, Deleted Security Groups, Failed API Calls, Failed API Calls - Acct Breakup, Failed API Calls - Reason - Login Credentials and Permission Issues, Failed Configuration Changes, Failed Policy Changes, Group Operation Failures, Non Read Only Events, Operation Failure - Authorize, Revoke Security Groups Ingress, Egress Rules, Operation Success - Authorize, Revoke Security Groups Ingress, Egress Rules, Outlier- Failed Configuration Changes, Outlier- Successful Configuration Changes, Read Only Events, Security Group Activity, Security Group Activity Over Time, Successful Configuration Changes, Successful Console Logins, Successful Policy Changes, Successful Root Console Logins, Top 10 Failed Configuration Changes, Top 10 Security Group Activities, Top 10 Successful Configuration Changes



## Parser:
```
| parse "\"eventSource\":\"*\"" as event_source
| parse "\"eventName\":\"*\"" as event_name
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes



## Parser:
```
| parse "\"eventSource\":\"*\"" as event_source | where event_source="config.amazonaws.com"
| parse "\"eventName\":\"*\"" as event_name 
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes



## Parser:
```
| parse "\"eventSource\":\"*\"" as event_source | where event_source="kms.amazonaws.com"
| parse "\"eventName\":\"*\"" as event_name | where event_name in ("DisableKey","ScheduleKeyDeletion")
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion



## Parser:
```
| parse "\"eventSource\":\"*\"" as event_source | where event_source="s3.amazonaws.com"
| parse "\"eventName\":\"*\"" as event_name 
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set, AWS CloudTrail - Detect Permanent Key Creation, AWS CloudTrail - Detect Sts Get Session Token Abuse, AWS CloudTrail - EC2 Instance Changes, AWS CloudTrail - EC2 Large Instance Changes, AWS CloudTrail - IAM Policy Changes, AWS CloudTrail - Internet Gateway Changes, AWS CloudTrail - Network ACL Changes, AWS CloudTrail - Organisation Changes, AWS CloudTrail - Root Account Usage, AWS CloudTrail - Route Table Changes, AWS CloudTrail - S3 Bucket Changes



## Parser:
```
| parse "\"eventSource\":\"*\"" as eventSource | where eventSource="iam.amazonaws.com"
| parse "\"eventName\":\"*\"" as eventName | where eventName="SetDefaultPolicyVersion"
 
```
### Use Cases:
AWS CloudTrail - ACL or Route Changes, AWS CloudTrail - Attempt to create a publicly accessible database, AWS CloudTrail - Authorisation Failures, AWS CloudTrail - CloudTrail Changes, AWS CloudTrail - CMK Disabled or Scheduled for Deletion, AWS CloudTrail - Configuration Changes, AWS CloudTrail - Console Sign-In Failures, AWS CloudTrail - Console Sign-In Without MFA, AWS CloudTrail - Default Policy Version Set


