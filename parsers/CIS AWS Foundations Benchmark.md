# Parsers For CIS AWS Foundations Benchmark

**CIS AWS Foundations Benchmark/Alert - CloudTrail Changes/Alert - CloudTrail Changes**
```
_sourceCategory = Labs/AWS/CloudTrail* (*Trail or StartLogging or StopLogging)
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as ip_add
| json field=_raw "userIdentity.userName" as user_name
| json "eventName"
```

**CIS AWS Foundations Benchmark/Alert - Config Changes/Alert - Config Changes**
```
_sourceCategory = Labs/AWS/CloudTrail* ("StopConfigurationRecorder" or "DeleteDeliveryChannel" or "PutDeliveryChannel" or "PutConfigurationRecorder")
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as ip_add
| json field=_raw "userIdentity.userName" as user_name
| json "eventName"
```

**CIS AWS Foundations Benchmark/Alert - Console Logins without MFA/Alert - Console Logins without MFA**
```
_sourceCategory = Labs/AWS/CloudTrail* (!Failure and "ConsoleLogin")
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json "eventName", "additionalEventData.MFAUsed" as eventName, MFAUsed nodrop
| json "userIdentity.userName", "responseElements.ConsoleLogin" as user_name, loginResult nodrop
| json "sourceIPAddress" as src_ip
```

**CIS AWS Foundations Benchmark/Alert - Disabled or Scheduled Deletion of CMK/Alert - Disabled or Scheduled Deletion of CMK**
```
_sourceCategory = Labs/AWS/CloudTrail* ("DisableKey" or "ScheduleKeyDeletion")
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "userIdentity.userName" as user_name
| json field=_raw "sourceIPAddress" as src_ip
| json "eventName"
```

**CIS AWS Foundations Benchmark/Alert - Failed Console Logins/Alert - Failed Console Logins**
```
_sourceCategory = Labs/AWS/CloudTrail* ("ConsoleLogin" and "Failed authentication")
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as src_ip
| json "eventName"
| json "errorMessage"
| json "responseElements.ConsoleLogin", "userIdentity.userName" as loginResult, user_name
```

**CIS AWS Foundations Benchmark/Alert - Gateway Changes/Alert - Gateway Changes**
```
_sourceCategory = Labs/AWS/CloudTrail* ("CreateCustomerGateway" or "DeleteCustomerGateway" or "AttachInternetGateway" or "CreateInternetGateway" or "DeleteInternetGateway" or "DetachInternetGateway")
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user_name
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "awsRegion" as region
| json "eventName"
```

**CIS AWS Foundations Benchmark/Alert - IAM Policy Changes/Alert - IAM Policy Changes**
```
_sourceCategory = Labs/AWS/CloudTrail* (Put*Policy or Delete*Policy* or Attach*Policy or Detach*Policy or CreatePolicy*)
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as ip_add
| json field=_raw "userIdentity.userName" as user_name
| json "eventName"
```

**CIS AWS Foundations Benchmark/Alert - Network ACL Changes/Alert - Network ACL Changes**
```
_sourceCategory = Labs/AWS/CloudTrail* ("CreateNetworkAcl" or "CreateNetworkAclEntry" or "DeleteNetworkAcl" or "DeleteNetworkAclEntry" or "ReplaceNetworkAclEntry" or "ReplaceNetworkAclAssociation")
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user_name
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "awsRegion" as region
| json "eventName"
```

**CIS AWS Foundations Benchmark/Alert - Root Account Logins/Alert - Root Account Logins**
```
_sourceCategory = Labs/AWS/CloudTrail* "Root"
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "eventName"
| json "userIdentity.type" as loginType
| json "userIdentity.userName" as user_name
```

**CIS AWS Foundations Benchmark/Alert - Route Table Changes/Alert - Route Table Changes**
```
_sourceCategory = Labs/AWS/CloudTrail* ("CreateRoute" or "CreateRouteTable" or "ReplaceRoute" or "ReplaceRouteTableAssociation" or "DeleteRouteTable" or  "DeleteRoute" or "DisassociateRouteTable")
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user_name
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "awsRegion" as region
| json "eventName"
```

**CIS AWS Foundations Benchmark/Alert - S3 Bucket Policy Changes/Alert - S3 Bucket Policy Changes**
```
_sourceCategory = Labs/AWS/CloudTrail* (*BucketAcl or *BucketPolicy or *BucketCors or *BucketLifecycle)
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "userIdentity.userName" as user_name
| json field=_raw "awsRegion" as region 
| json field=_raw "userIdentity.accountId" as acc_id
| json "eventName"
```

**CIS AWS Foundations Benchmark/Alert - Security Group Changes/Alert - Security Group Changes**
```
_sourceCategory = Labs/AWS/CloudTrail* ("CreateSecurityGroup" or "DeleteSecurityGroup" or "RevokeSecurityGroupEgress" or "RevokeSecurityGroupIngress")
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user_name
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "awsRegion" as region
| json "eventName" 
```

**CIS AWS Foundations Benchmark/Alert - Unauthorized AWS API Requests/Alert - Unauthorized AWS API Requests**
```
_sourceCategory = Labs/AWS/CloudTrail* ("AccessDenied" or "UnauthorizedOperation")
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as src_ip
| json "errorCode" as error
| json field=_raw "eventName"
| json "userIdentity.sessionContext.sessionIssuer.userName" as user_name
```

**CIS AWS Foundations Benchmark/Alert - VPC Changes/Alert - VPC Changes**
```
_sourceCategory = Labs/AWS/CloudTrail* ("CreateVpc" or "DeleteVpc" or "ModifyVpcAttribute" or *VpcPeeringConnection or *tachClassicLink or *ableVpcClassic)
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as user_name
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "awsRegion" as region
| json "eventName" 
```

**CIS AWS Foundations Benchmark/CIS AWS Benchmark (Monitoring) - Access and Authentication - New/Console Logins without MFA**
```
_sourceCategory = Labs/AWS/CloudTrail* (!Failure and "ConsoleLogin")
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json "eventName", "additionalEventData.MFAUsed" as eventName, MFAUsed nodrop
| json "userIdentity.userName", "responseElements.ConsoleLogin" as user_name, loginResult nodrop
| json "sourceIPAddress" as src_ip
```

**CIS AWS Foundations Benchmark/CIS AWS Benchmark (Monitoring) - Access and Authentication - New/Disabled or Scheduled Deletion of CMK**
```
_sourceCategory = Labs/AWS/CloudTrail* ("DisableKey" or "ScheduleKeyDeletion")
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "userIdentity.userName" as user_name
| json field=_raw "sourceIPAddress" as src_ip
| json "eventName"
```

**CIS AWS Foundations Benchmark/CIS AWS Benchmark (Monitoring) - Access and Authentication - New/Failed Console Logins**
```
_sourceCategory = Labs/AWS/CloudTrail* ("ConsoleLogin" and "Failed authentication")
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as src_ip
| json "eventName"
| json "errorMessage"
| json "responseElements.ConsoleLogin", "userIdentity.userName" as loginResult, user_name
```

**CIS AWS Foundations Benchmark/CIS AWS Benchmark (Monitoring) - Access and Authentication - New/Failed Console Logins by Location**
```
_sourceCategory = Labs/AWS/CloudTrail* ("ConsoleLogin" and "Failed authentication")
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "userIdentity.userName" as user_name
| json "eventName"
| json "errorMessage"
| json "responseElements.ConsoleLogin", "userIdentity.userName" as loginResult, user_name
```

**CIS AWS Foundations Benchmark/CIS AWS Benchmark (Monitoring) - Access and Authentication - New/Outlier - Failed Console Logins**
```
_sourceCategory = Labs/AWS/CloudTrail* ("ConsoleLogin" and "Failed authentication")
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as src_ip
| json "eventName"
| json "errorMessage"
| json "responseElements.ConsoleLogin", "userIdentity.userName" as loginResult, user_name
```

**CIS AWS Foundations Benchmark/CIS AWS Benchmark (Monitoring) - Access and Authentication - New/Root Account Logins**
```
_sourceCategory = Labs/AWS/CloudTrail* "Root"
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as src_ip
| json field=_raw "eventName"
| json "userIdentity.type" as loginType
| json "userIdentity.userName" as user_name
```

**CIS AWS Foundations Benchmark/CIS AWS Benchmark (Monitoring) - Access and Authentication - New/Unauthorized AWS API Requests**
```
_sourceCategory = Labs/AWS/CloudTrail* ("AccessDenied" or "UnauthorizedOperation")
| json field=_raw "awsRegion" as region
| json field=_raw "userIdentity.accountId" as acc_id
| json field=_raw "sourceIPAddress" as src_ip
| json "errorCode" as error
| json field=_raw "eventName"
| json "userIdentity.sessionContext.sessionIssuer.userName" as user_name
```


