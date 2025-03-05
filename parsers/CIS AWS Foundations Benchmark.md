# Parsers For CIS AWS Foundations Benchmark

## Parser:
```
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json "eventName", "additionalEventData.MFAUsed" as eventName, MFAUsed nodrop
| json "userIdentity.userName", "responseElements.ConsoleLogin" as user_name, loginResult nodrop
| json "sourceIPAddress" as src_ip
 `n```
### Use Cases:
Alert - CloudTrail Changes, Alert - Config Changes, Alert - Console Logins without MFA, Alert - Disabled or Scheduled Deletion of CMK, Alert - Failed Console Logins, Alert - Gateway Changes, Alert - IAM Policy Changes, Alert - Network ACL Changes, Alert - Root Account Logins, Alert - Route Table Changes, Alert - S3 Bucket Policy Changes, Alert - Security Group Changes, Alert - Unauthorized AWS API Requests, Alert - VPC Changes, Console Logins without MFA, Disabled or Scheduled Deletion of CMK, Failed Console Logins by Location, Unauthorized AWS API Requests



## Parser:
```
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as ip_add
| json field=_raw "userIdentity.userName" as user_name
| json "eventName"
 `n```
### Use Cases:
Alert - CloudTrail Changes, Alert - Config Changes, Alert - Console Logins without MFA, Alert - Disabled or Scheduled Deletion of CMK, Alert - Failed Console Logins, Alert - Gateway Changes, Alert - IAM Policy Changes



## Parser:
```
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as src_ip
| json "errorCode" as error
| json field=_raw "eventName"
| json "userIdentity.sessionContext.sessionIssuer.userName" as user_name
 `n```
### Use Cases:
Alert - CloudTrail Changes, Alert - Config Changes, Alert - Console Logins without MFA, Alert - Disabled or Scheduled Deletion of CMK, Alert - Failed Console Logins, Alert - Gateway Changes, Alert - IAM Policy Changes, Alert - Network ACL Changes, Alert - Root Account Logins, Alert - Route Table Changes, Alert - S3 Bucket Policy Changes, Alert - Security Group Changes, Alert - Unauthorized AWS API Requests, Alert - VPC Changes, Failed Console Logins by Location, Unauthorized AWS API Requests



## Parser:
```
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as src_ip
| json "eventName"
| json "errorMessage"
| json "responseElements.ConsoleLogin", "userIdentity.userName" as loginResult, user_name
 `n```
### Use Cases:
Alert - CloudTrail Changes, Alert - Config Changes, Alert - Console Logins without MFA, Alert - Disabled or Scheduled Deletion of CMK, Alert - Failed Console Logins, Alert - Gateway Changes, Alert - IAM Policy Changes, Alert - Network ACL Changes, Alert - Root Account Logins, Alert - Route Table Changes, Alert - S3 Bucket Policy Changes, Alert - Security Group Changes, Alert - Unauthorized AWS API Requests, Alert - VPC Changes, Console Logins without MFA, Disabled or Scheduled Deletion of CMK, Failed Console Logins, Failed Console Logins by Location, Outlier - Failed Console Logins, Unauthorized AWS API Requests



## Parser:
```
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "eventName"
| json "userIdentity.type" as loginType
| json "userIdentity.userName" as user_name
 `n```
### Use Cases:
Alert - CloudTrail Changes, Alert - Config Changes, Alert - Console Logins without MFA, Alert - Disabled or Scheduled Deletion of CMK, Alert - Failed Console Logins, Alert - Gateway Changes, Alert - IAM Policy Changes, Alert - Network ACL Changes, Alert - Root Account Logins, Alert - Route Table Changes, Alert - S3 Bucket Policy Changes, Alert - Security Group Changes, Alert - Unauthorized AWS API Requests, Alert - VPC Changes, Console Logins without MFA, Disabled or Scheduled Deletion of CMK, Failed Console Logins, Failed Console Logins by Location, Outlier - Failed Console Logins, Root Account Logins, Unauthorized AWS API Requests



## Parser:
```
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "userIdentity.userName" as user_name
| json "eventName"
| json "errorMessage"
| json "responseElements.ConsoleLogin", "userIdentity.userName" as loginResult, user_name
 `n```
### Use Cases:
Alert - CloudTrail Changes, Alert - Config Changes, Alert - Console Logins without MFA, Alert - Disabled or Scheduled Deletion of CMK, Alert - Failed Console Logins, Alert - Gateway Changes, Alert - IAM Policy Changes, Alert - Network ACL Changes, Alert - Root Account Logins, Alert - Route Table Changes, Alert - S3 Bucket Policy Changes, Alert - Security Group Changes, Alert - Unauthorized AWS API Requests, Alert - VPC Changes, Failed Console Logins by Location



## Parser:
```
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "userIdentity.userName" as user_name
| json field=_raw "sourceIPAddress" as src_ip
| json "eventName"
 `n```
### Use Cases:
Alert - CloudTrail Changes, Alert - Config Changes, Alert - Console Logins without MFA, Alert - Disabled or Scheduled Deletion of CMK, Alert - Failed Console Logins, Alert - Gateway Changes, Alert - IAM Policy Changes, Alert - Network ACL Changes, Alert - Root Account Logins, Alert - Route Table Changes, Alert - S3 Bucket Policy Changes, Alert - Security Group Changes, Alert - Unauthorized AWS API Requests, Alert - VPC Changes, Disabled or Scheduled Deletion of CMK, Failed Console Logins by Location, Unauthorized AWS API Requests



## Parser:
```
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "userIdentity.userName" as user_name
| json field=_raw "awsRegion" as region 
| json field=_raw "userIdentity.accountId" as acc_id
| json "eventName"
 `n```
### Use Cases:
Alert - CloudTrail Changes, Alert - Config Changes, Alert - Console Logins without MFA, Alert - Disabled or Scheduled Deletion of CMK, Alert - Failed Console Logins, Alert - Gateway Changes, Alert - IAM Policy Changes, Alert - Network ACL Changes, Alert - Root Account Logins, Alert - Route Table Changes, Alert - S3 Bucket Policy Changes



## Parser:
```
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user_name
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "awsRegion" as region
| json "eventName"
 `n```
### Use Cases:
Alert - CloudTrail Changes, Alert - Config Changes, Alert - Console Logins without MFA, Alert - Disabled or Scheduled Deletion of CMK, Alert - Failed Console Logins, Alert - Gateway Changes, Alert - IAM Policy Changes, Alert - Network ACL Changes, Alert - Root Account Logins, Alert - Route Table Changes



## Parser:
```
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user_name
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "awsRegion" as region
| json "eventName" 
 `n```
### Use Cases:
Alert - CloudTrail Changes, Alert - Config Changes, Alert - Console Logins without MFA, Alert - Disabled or Scheduled Deletion of CMK, Alert - Failed Console Logins, Alert - Gateway Changes, Alert - IAM Policy Changes, Alert - Network ACL Changes, Alert - Root Account Logins, Alert - Route Table Changes, Alert - S3 Bucket Policy Changes, Alert - Security Group Changes, Alert - Unauthorized AWS API Requests, Alert - VPC Changes


