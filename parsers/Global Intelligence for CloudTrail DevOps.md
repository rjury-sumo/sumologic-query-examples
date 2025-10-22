# Parsers For Global Intelligence for CloudTrail DevOps

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/Autoscaling Users Experiencing Account Quota Errors**
```
// id=@action_plan_accountQuotaErrors_autoscaling
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall autoscaling errorCode userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
| where eventType = "AwsApiCall" and resourceType = "autoscaling" and errorCode matches "*LimitExceeded*"
| parse "\"autoScalingGroupName\":\"*\"" as autoScalingGroupName nodrop
| parse "\"serviceNamespace\":\"*\"" as serviceNamespace nodrop
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/Autoscaling Users Experiencing Service Availability Errors**
```
// id=@action_plan_serviceAvailability_autoscaling
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall autoscaling errorCode (InternalServiceException OR InternalFailure OR ServiceUnavailable) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/Autoscaling Users Experiencing Throttling Errors**
```
// id=@action_plan_throttling_autoscaling
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall autoscaling errorCode userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
| where eventType = "AwsApiCall" and resourceType = "autoscaling" and errorCode = "ThrottlingException"
| parse "\"autoScalingGroupName\":\"*\"" as autoScalingGroupName nodrop
| parse "\"serviceNamespace\":\"*\"" as serviceNamespace nodrop
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/DynamoDB Users Experiencing Account Quota Errors**
```
// id=@action_plan_accountQuotaErrors_dynamodb
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall dynamodb errorCode (*LimitExceeded*) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
| parse "\"tableName\":\"*\"" as tableName nodrop
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/DynamoDB Users Experiencing Service Availability Errors**
```
// id=@action_plan_serviceAvailability_dynamodb
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall dynamodb errorCode (InternalServerError OR InternalFailure OR ServiceUnavailable) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/DynamoDB Users Experiencing Throttling Errors**
```
// id=@action_plan_throttling_dynamodb
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall dynamodb errorCode userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
| parse "\"tableName\":\"*\"" as tableName nodrop
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/EC2 Users Experiencing Account Quota Errors**
```
// id=@action_plan_accountQuotaErrors_ec2
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall ec2 errorCode (*LimitExceeded* AND !*RequestLimitExceeded) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
| parse "\"instanceType\":\"*\"" as instanceType nodrop
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/EC2 Users Experiencing Insufficient Capacity  Errors**
```
// id=@action_plan_insufficientCapacity_ec2_resource
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall ec2 errorCode (RunInstances OR CreateFleet OR RequestSpotInstances) (*Insufficient*) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"instanceType\":\"*\"" as instanceType
| parse "\"userName\":\"*\"" as userName
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/EC2 Users Experiencing Service Availability Errors**
```
// id=@action_plan_serviceAvailability_ec2
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall ec2 errorCode (Server.Unavailable OR Server.InternalFailure OR Server.ServiceUnavailable OR Server.InternalError) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/EC2 Users Experiencing Throttling Errors**
```
// id=@action_plan_throttling_ec2
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall ec2 errorCode userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
| parse "\"instanceType\":\"*\"" as instanceType nodrop
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/ElastiCache Users Experiencing Account Quota Errors**
```
// id=@action_plan_accountQuotaErrors_elasticache
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall elasticache errorCode (*Exceeded*) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
| parse "\"cacheNodeType\":\"*\"" as cacheNodeType nodrop
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/ElastiCache Users Experiencing Insufficient Capacity  Errors**
```
// id=@action_plan_insufficientCapacity_elasticache_resource
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall elasticache errorCode (CreateCacheCluster OR ModifyCacheCluster) (*Insufficient*) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"cacheNodeType\":\"*\"" as cacheNodeType
| parse "\"userName\":\"*\"" as userName
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/ElastiCache Users Experiencing Service Availability Errors**
```
// id=@action_plan_serviceAvailability_elasticache
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall elasticache errorCode (InternalFailure OR ServiceUnavailable) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/ElastiCache Users Experiencing Throttling Errors**
```
// id=@action_plan_throttling_elasticache
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall elasticache errorCode userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
| parse "\"cacheNodeType\":\"*\"" as cacheNodeType nodrop
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/ELB Users Experiencing Account Quota Errors**
```
// id=@action_plan_accountQuotaErrors_elb
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall elasticloadbalancing errorCode (TooManyTargetGroups OR TooManyLoadBalancers OR TooManyActions OR TooManyRegistrationsForTargetId OR TargetGroupAssociationLimit OR TooManyTargets OR TooManyListeners OR TooManyUniqueTargetGroupsPerLoadBalancer OR TooManyTags) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
| parse "\"loadBalancerArn\":\"*\"" as loadBalancerArn nodrop
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/ELB Users Experiencing Service Availability Errors**
```
// id=@action_plan_serviceAvailability_elb
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall elasticloadbalancing errorCode (InternalFailure OR ServiceUnavailable) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/ELB Users Experiencing Throttling Errors**
```
// id=@action_plan_throttling_elb
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall elasticloadbalancing errorCode userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
| parse "\"loadBalancerArn\":\"*\"" as loadBalancerArn nodrop
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/Lambda Users Experiencing Account Quota Errors**
```
// id=@action_plan_accountQuotaErrors_lambda
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall lambda errorCode (ENILimitReachedException OR CodeStorageExceededException) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
| parse "\"functionName\":\"*\"" as functionName nodrop
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/Lambda Users Experiencing Service Availability Errors**
```
// id=@action_plan_serviceAvailability_lambda
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall lambda errorCode (ServiceException OR EC2UnexpectedException) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/Lambda Users Experiencing Throttling  Errors**
```
// id=@action_plan_throttling_lambda
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall lambda errorCode userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
| parse "\"functionName\":\"*\"" as functionName nodrop
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/RDS Users Experiencing Account Quota Errors**
```
// id=@action_plan_accountQuotaErrors_RDS
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall rds errorCode (*QuotaExceeded*) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
| parse "\"resourceName\":\"*\"" as resourceName nodrop
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/RDS Users Experiencing Service Availability Errors**
```
// id=@action_plan_serviceAvailability_rds
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall rds errorCode (InternalServerError OR InternalFailure OR ServiceUnavailable) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/RDS Users Experiencing Throttling Errors**
```
// id=@action_plan_throttling_rds
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall rds errorCode userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
| parse "\"resourceName\":\"*\"" as resourceName nodrop
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/Redshift Users Experiencing Account Quota Errors**
```
// id=@action_plan_accountQuotaErrors_redshift
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall redshift errorCode (*Exceeded*) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
| parse "\"nodeType\":\"*\"" as nodeType nodrop
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/Redshift Users Experiencing Insufficient Capacity  Errors**
```
// id=@action_plan_insufficientCapacity_redshift_resource
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall redshift errorCode (CreateCluster OR ResizeCluster OR ModifyCluster) (*Insufficient*) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"nodeType\":\"*\"" as nodeType
| parse "\"userName\":\"*\"" as userName
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/Redshift Users Experiencing Service Availability Errors**
```
// id=@action_plan_serviceAvailability_redshift
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall redshift errorCode (InternalFailure OR ServiceUnavailable) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/Redshift Users Experiencing Throttling Errors**
```
// id=@action_plan_throttling_redshift
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall redshift errorCode userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
| parse "\"nodeType\":\"*\"" as nodeType nodrop
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/S3 Users Experiencing Account Quota Errors**
```
// id=@action_plan_accountQuotaErrors_s3
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall s3 errorCode (TooManyBuckets) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
| parse "\"bucketName\":\"*\"" as bucketName nodrop
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/S3 Users Experiencing Service Availability Errors**
```
// id=@action_plan_serviceAvailability_s3
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall s3 errorCode (InternalError) userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
```

**Global Intelligence for CloudTrail DevOps/GI CloudTrail DevOps - 06. Action Plan - New/S3 Users Experiencing Throttling Errors**
```
// id=@action_plan_throttling_s3
_sourceCategory = Labs/AWS/CloudTrail
AwsApiCall s3 errorCode userName
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
| parse "\"bucketName\":\"*\"" as bucketName nodrop
```


