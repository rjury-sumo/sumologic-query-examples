# Parsers For Global Intelligence for CloudTrail DevOps

## Parser:
```
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
### Use Cases:
ElastiCache Users Experiencing Insufficient Capacity  Errors



## Parser:
```
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
### Use Cases:
Autoscaling Users Experiencing Account Quota Errors, Autoscaling Users Experiencing Throttling Errors, DynamoDB Users Experiencing Account Quota Errors, EC2 Users Experiencing Insufficient Capacity  Errors, EC2 Users Experiencing Throttling Errors, ElastiCache Users Experiencing Insufficient Capacity  Errors, ElastiCache Users Experiencing Throttling Errors, Lambda Users Experiencing Throttling  Errors, Redshift Users Experiencing Account Quota Errors, Redshift Users Experiencing Insufficient Capacity  Errors, S3 Users Experiencing Throttling Errors



## Parser:
```
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
### Use Cases:
Autoscaling Users Experiencing Account Quota Errors, DynamoDB Users Experiencing Account Quota Errors, EC2 Users Experiencing Throttling Errors, ElastiCache Users Experiencing Insufficient Capacity  Errors, Lambda Users Experiencing Throttling  Errors, Redshift Users Experiencing Insufficient Capacity  Errors



## Parser:
```
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
 
```
### Use Cases:
Autoscaling Users Experiencing Account Quota Errors, Autoscaling Users Experiencing Service Availability Errors, Autoscaling Users Experiencing Throttling Errors, DynamoDB Users Experiencing Account Quota Errors, DynamoDB Users Experiencing Service Availability Errors, EC2 Users Experiencing Account Quota Errors, EC2 Users Experiencing Insufficient Capacity  Errors, EC2 Users Experiencing Service Availability Errors, EC2 Users Experiencing Throttling Errors, ElastiCache Users Experiencing Account Quota Errors, ElastiCache Users Experiencing Insufficient Capacity  Errors, ElastiCache Users Experiencing Service Availability Errors, ElastiCache Users Experiencing Throttling Errors, ELB Users Experiencing Service Availability Errors, ELB Users Experiencing Throttling Errors, Lambda Users Experiencing Account Quota Errors, Lambda Users Experiencing Service Availability Errors, Lambda Users Experiencing Throttling  Errors, RDS Users Experiencing Service Availability Errors, RDS Users Experiencing Throttling Errors, Redshift Users Experiencing Account Quota Errors, Redshift Users Experiencing Insufficient Capacity  Errors, Redshift Users Experiencing Service Availability Errors, Redshift Users Experiencing Throttling Errors, S3 Users Experiencing Account Quota Errors, S3 Users Experiencing Service Availability Errors, S3 Users Experiencing Throttling Errors



## Parser:
```
| parse "\"awsRegion\":\"*\"" as awsRegion
| parse "\"eventSource\":\"*\"" as eventSource
| parse "\"eventName\":\"*\"" as eventName
| parse "\"eventType\":\"*\"" as eventType
| parse "\"recipientAccountId\":\"*\"" as accountId
| parse field=eventSource "*.amazonaws.com" as resourceType
| parse "\"errorCode\":\"*\"" as errorCode
| parse "\"userName\":\"*\"" as userName
| parse "\"autoScalingGroupName\":\"*\"" as autoScalingGroupName nodrop
| parse "\"serviceNamespace\":\"*\"" as serviceNamespace nodrop
 
```
### Use Cases:
Autoscaling Users Experiencing Account Quota Errors, Autoscaling Users Experiencing Throttling Errors, DynamoDB Users Experiencing Account Quota Errors, EC2 Users Experiencing Throttling Errors, ElastiCache Users Experiencing Insufficient Capacity  Errors, ElastiCache Users Experiencing Throttling Errors, Lambda Users Experiencing Throttling  Errors, Redshift Users Experiencing Account Quota Errors, Redshift Users Experiencing Insufficient Capacity  Errors, S3 Users Experiencing Throttling Errors



## Parser:
```
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
### Use Cases:
Autoscaling Users Experiencing Account Quota Errors, Autoscaling Users Experiencing Throttling Errors, DynamoDB Users Experiencing Account Quota Errors, DynamoDB Users Experiencing Service Availability Errors, EC2 Users Experiencing Insufficient Capacity  Errors, EC2 Users Experiencing Throttling Errors, ElastiCache Users Experiencing Insufficient Capacity  Errors, ElastiCache Users Experiencing Throttling Errors, Lambda Users Experiencing Throttling  Errors, RDS Users Experiencing Service Availability Errors, RDS Users Experiencing Throttling Errors, Redshift Users Experiencing Account Quota Errors, Redshift Users Experiencing Insufficient Capacity  Errors, S3 Users Experiencing Account Quota Errors, S3 Users Experiencing Throttling Errors



## Parser:
```
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
### Use Cases:
Autoscaling Users Experiencing Account Quota Errors, Autoscaling Users Experiencing Throttling Errors, DynamoDB Users Experiencing Account Quota Errors, DynamoDB Users Experiencing Service Availability Errors, EC2 Users Experiencing Insufficient Capacity  Errors, EC2 Users Experiencing Throttling Errors, ElastiCache Users Experiencing Account Quota Errors, ElastiCache Users Experiencing Insufficient Capacity  Errors, ElastiCache Users Experiencing Service Availability Errors, ElastiCache Users Experiencing Throttling Errors, ELB Users Experiencing Service Availability Errors, Lambda Users Experiencing Throttling  Errors, RDS Users Experiencing Service Availability Errors, RDS Users Experiencing Throttling Errors, Redshift Users Experiencing Account Quota Errors, Redshift Users Experiencing Insufficient Capacity  Errors, S3 Users Experiencing Account Quota Errors, S3 Users Experiencing Throttling Errors



## Parser:
```
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
### Use Cases:
Autoscaling Users Experiencing Account Quota Errors, Autoscaling Users Experiencing Throttling Errors, DynamoDB Users Experiencing Account Quota Errors, DynamoDB Users Experiencing Service Availability Errors, EC2 Users Experiencing Insufficient Capacity  Errors, EC2 Users Experiencing Service Availability Errors, EC2 Users Experiencing Throttling Errors, ElastiCache Users Experiencing Account Quota Errors, ElastiCache Users Experiencing Insufficient Capacity  Errors, ElastiCache Users Experiencing Service Availability Errors, ElastiCache Users Experiencing Throttling Errors, ELB Users Experiencing Service Availability Errors, Lambda Users Experiencing Account Quota Errors, Lambda Users Experiencing Throttling  Errors, RDS Users Experiencing Service Availability Errors, RDS Users Experiencing Throttling Errors, Redshift Users Experiencing Account Quota Errors, Redshift Users Experiencing Insufficient Capacity  Errors, S3 Users Experiencing Account Quota Errors, S3 Users Experiencing Service Availability Errors, S3 Users Experiencing Throttling Errors



## Parser:
```
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
### Use Cases:
Autoscaling Users Experiencing Account Quota Errors, Autoscaling Users Experiencing Service Availability Errors, Autoscaling Users Experiencing Throttling Errors, DynamoDB Users Experiencing Account Quota Errors, DynamoDB Users Experiencing Service Availability Errors, EC2 Users Experiencing Account Quota Errors, EC2 Users Experiencing Insufficient Capacity  Errors, EC2 Users Experiencing Service Availability Errors, EC2 Users Experiencing Throttling Errors, ElastiCache Users Experiencing Account Quota Errors, ElastiCache Users Experiencing Insufficient Capacity  Errors, ElastiCache Users Experiencing Service Availability Errors, ElastiCache Users Experiencing Throttling Errors, ELB Users Experiencing Service Availability Errors, ELB Users Experiencing Throttling Errors, Lambda Users Experiencing Account Quota Errors, Lambda Users Experiencing Throttling  Errors, RDS Users Experiencing Service Availability Errors, RDS Users Experiencing Throttling Errors, Redshift Users Experiencing Account Quota Errors, Redshift Users Experiencing Insufficient Capacity  Errors, Redshift Users Experiencing Service Availability Errors, Redshift Users Experiencing Throttling Errors, S3 Users Experiencing Account Quota Errors, S3 Users Experiencing Service Availability Errors, S3 Users Experiencing Throttling Errors



## Parser:
```
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
### Use Cases:
Autoscaling Users Experiencing Account Quota Errors, Autoscaling Users Experiencing Service Availability Errors, Autoscaling Users Experiencing Throttling Errors, DynamoDB Users Experiencing Account Quota Errors, DynamoDB Users Experiencing Service Availability Errors, EC2 Users Experiencing Account Quota Errors, EC2 Users Experiencing Insufficient Capacity  Errors, EC2 Users Experiencing Service Availability Errors, EC2 Users Experiencing Throttling Errors, ElastiCache Users Experiencing Account Quota Errors, ElastiCache Users Experiencing Insufficient Capacity  Errors, ElastiCache Users Experiencing Service Availability Errors, ElastiCache Users Experiencing Throttling Errors, ELB Users Experiencing Account Quota Errors, ELB Users Experiencing Service Availability Errors, ELB Users Experiencing Throttling Errors, Lambda Users Experiencing Account Quota Errors, Lambda Users Experiencing Service Availability Errors, Lambda Users Experiencing Throttling  Errors, RDS Users Experiencing Account Quota Errors, RDS Users Experiencing Service Availability Errors, RDS Users Experiencing Throttling Errors, Redshift Users Experiencing Account Quota Errors, Redshift Users Experiencing Insufficient Capacity  Errors, Redshift Users Experiencing Service Availability Errors, Redshift Users Experiencing Throttling Errors, S3 Users Experiencing Account Quota Errors, S3 Users Experiencing Service Availability Errors, S3 Users Experiencing Throttling Errors



## Parser:
```
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
### Use Cases:
Autoscaling Users Experiencing Account Quota Errors, Autoscaling Users Experiencing Service Availability Errors, Autoscaling Users Experiencing Throttling Errors, DynamoDB Users Experiencing Account Quota Errors, DynamoDB Users Experiencing Service Availability Errors, EC2 Users Experiencing Insufficient Capacity  Errors, EC2 Users Experiencing Service Availability Errors, EC2 Users Experiencing Throttling Errors, ElastiCache Users Experiencing Account Quota Errors, ElastiCache Users Experiencing Insufficient Capacity  Errors, ElastiCache Users Experiencing Service Availability Errors, ElastiCache Users Experiencing Throttling Errors, ELB Users Experiencing Service Availability Errors, Lambda Users Experiencing Account Quota Errors, Lambda Users Experiencing Throttling  Errors, RDS Users Experiencing Service Availability Errors, RDS Users Experiencing Throttling Errors, Redshift Users Experiencing Account Quota Errors, Redshift Users Experiencing Insufficient Capacity  Errors, Redshift Users Experiencing Service Availability Errors, Redshift Users Experiencing Throttling Errors, S3 Users Experiencing Account Quota Errors, S3 Users Experiencing Service Availability Errors, S3 Users Experiencing Throttling Errors



## Parser:
```
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
### Use Cases:
Autoscaling Users Experiencing Account Quota Errors, Autoscaling Users Experiencing Service Availability Errors, Autoscaling Users Experiencing Throttling Errors, DynamoDB Users Experiencing Account Quota Errors, DynamoDB Users Experiencing Service Availability Errors, EC2 Users Experiencing Account Quota Errors, EC2 Users Experiencing Insufficient Capacity  Errors, EC2 Users Experiencing Service Availability Errors, EC2 Users Experiencing Throttling Errors, ElastiCache Users Experiencing Account Quota Errors, ElastiCache Users Experiencing Insufficient Capacity  Errors, ElastiCache Users Experiencing Service Availability Errors, ElastiCache Users Experiencing Throttling Errors, ELB Users Experiencing Service Availability Errors, ELB Users Experiencing Throttling Errors, Lambda Users Experiencing Account Quota Errors, Lambda Users Experiencing Service Availability Errors, Lambda Users Experiencing Throttling  Errors, RDS Users Experiencing Account Quota Errors, RDS Users Experiencing Service Availability Errors, RDS Users Experiencing Throttling Errors, Redshift Users Experiencing Account Quota Errors, Redshift Users Experiencing Insufficient Capacity  Errors, Redshift Users Experiencing Service Availability Errors, Redshift Users Experiencing Throttling Errors, S3 Users Experiencing Account Quota Errors, S3 Users Experiencing Service Availability Errors, S3 Users Experiencing Throttling Errors



## Parser:
```
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
### Use Cases:
Autoscaling Users Experiencing Account Quota Errors, Autoscaling Users Experiencing Service Availability Errors, Autoscaling Users Experiencing Throttling Errors, DynamoDB Users Experiencing Account Quota Errors, DynamoDB Users Experiencing Service Availability Errors, DynamoDB Users Experiencing Throttling Errors, EC2 Users Experiencing Account Quota Errors, EC2 Users Experiencing Insufficient Capacity  Errors, EC2 Users Experiencing Service Availability Errors, EC2 Users Experiencing Throttling Errors, ElastiCache Users Experiencing Account Quota Errors, ElastiCache Users Experiencing Insufficient Capacity  Errors, ElastiCache Users Experiencing Service Availability Errors, ElastiCache Users Experiencing Throttling Errors, ELB Users Experiencing Account Quota Errors, ELB Users Experiencing Service Availability Errors, ELB Users Experiencing Throttling Errors, Lambda Users Experiencing Account Quota Errors, Lambda Users Experiencing Service Availability Errors, Lambda Users Experiencing Throttling  Errors, RDS Users Experiencing Account Quota Errors, RDS Users Experiencing Service Availability Errors, RDS Users Experiencing Throttling Errors, Redshift Users Experiencing Account Quota Errors, Redshift Users Experiencing Insufficient Capacity  Errors, Redshift Users Experiencing Service Availability Errors, Redshift Users Experiencing Throttling Errors, S3 Users Experiencing Account Quota Errors, S3 Users Experiencing Service Availability Errors, S3 Users Experiencing Throttling Errors


