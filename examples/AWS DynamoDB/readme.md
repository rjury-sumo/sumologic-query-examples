# AWS DynamoDB
## Sumo Logic App For: AWS DynamoDB
The Sumo Logic App for Amazon DynamoDB is using both logs and metrics to provide operational insights into your DynamoDB. The App includes Dashboards that allow you to monitor key metrics, view the throttle events, errors, latency, and help you plan the capacity of your DynamoDB instances.
Docs Link: [AWS DynamoDB](https://help.sumologic.com/?cid=6114)

## Searches

### Log Searches


### Metric Searches

- **Conditional Check Failed Request Count by Table Name**: from Dashboard: AWS DynamoDB/Amazon DynamoDB  - Latency and Errors - New 
- **Latency By Table and Operation Name**: from Dashboard: AWS DynamoDB/Amazon DynamoDB  - Latency and Errors - New 
- **Latency By Table Name**: from Dashboard: AWS DynamoDB/Amazon DynamoDB  - Latency and Errors - New 
- **Number of Successful Requests by Table and Operation Name**: from Dashboard: AWS DynamoDB/Amazon  DynamoDB - Capacity Planning - New 
- **Percent of Provisioned Read Consumed**: from Dashboard: AWS DynamoDB/Amazon  DynamoDB - Capacity Planning - New 
- **Percent of Provisioned Write Consumed**: from Dashboard: AWS DynamoDB/Amazon  DynamoDB - Capacity Planning - New 
- **ReadThrottleEvents Count by Table and GlobalSecondaryIndex**: from Dashboard: AWS DynamoDB/Amazon  DynamoDB - Capacity Planning - New 
- **System Error Count by Table and Operation Name**: from Dashboard: AWS DynamoDB/Amazon DynamoDB  - Latency and Errors - New 
- **Throttled Requests by Table and Operation Name**: from Dashboard: AWS DynamoDB/Amazon  DynamoDB - Capacity Planning - New 
- **User Error Count**: from Dashboard: AWS DynamoDB/Amazon DynamoDB  - Latency and Errors - New 
- **WriteThrottleEvents Count by Table and GlobalSecondaryIndex**: from Dashboard: AWS DynamoDB/Amazon  DynamoDB - Capacity Planning - New

## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|AWS DynamoDB|Conditional Check Failed Request Count by Table Name|Metrics|AWS DynamoDB/Amazon DynamoDB  - Latency and Errors - New|region={{region}} tablename={{tablename}} \_sourceCategory = Labs/AWS/DynamoDB\* Namespace=AWS/DynamoDB metric=ConditionalCheckFailedRequests Statistic=SampleCount Region=\*|
|AWS DynamoDB|Latency By Table and Operation Name|Metrics|AWS DynamoDB/Amazon DynamoDB  - Latency and Errors - New|operation={{operation}} region={{region}} tablename={{tablename}} \_sourceCategory = Labs/AWS/DynamoDB\* Namespace=AWS/DynamoDB metric=SuccessfulRequestLatency Statistic=Average Region=\*|
|AWS DynamoDB|Latency By Table Name|Metrics|AWS DynamoDB/Amazon DynamoDB  - Latency and Errors - New|operation={{operation}} region={{region}} tablename={{tablename}} \_sourceCategory = Labs/AWS/DynamoDB\* Namespace=AWS/DynamoDB metric=SuccessfulRequestLatency Statistic=Average Region=\* \| avg by TableName |
|AWS DynamoDB|Number of Successful Requests by Table and Operation Name|Metrics|AWS DynamoDB/Amazon  DynamoDB - Capacity Planning - New|operation={{operation}} region={{region}} tablename={{tablename}} \_sourceCategory = Labs/AWS/DynamoDB\* Namespace=AWS/DynamoDB metric=SuccessfulRequestLatency Statistic=SampleCount Region=\*|
|AWS DynamoDB|Percent of Provisioned Read Consumed|Metrics|AWS DynamoDB/Amazon  DynamoDB - Capacity Planning - New|region={{region}} tablename={{tablename}} \_sourceCategory = Labs/AWS/DynamoDB\* Namespace=AWS/DynamoDB metric=ProvisionedReadCapacityUnits Statistic=Maximum   Region=\* TableName=\* \| avg by TableName, GlobalSecondaryIndexName|
|AWS DynamoDB|Percent of Provisioned Write Consumed|Metrics|AWS DynamoDB/Amazon  DynamoDB - Capacity Planning - New|region={{region}} tablename={{tablename}} \_sourceCategory = Labs/AWS/DynamoDB\* Namespace=AWS/DynamoDB metric=ProvisionedWriteCapacityUnits Statistic=Maximum Region=\* TableName=\* \| avg by TableName, GlobalSecondaryIndexName|
|AWS DynamoDB|ReadThrottleEvents Count by Table and GlobalSecondaryIndex|Metrics|AWS DynamoDB/Amazon  DynamoDB - Capacity Planning - New|region={{region}} tablename={{tablename}} \_sourceCategory = Labs/AWS/DynamoDB\* Namespace=AWS/DynamoDB metric=ReadThrottleEvents Region=\* Statistic=Sum |
|AWS DynamoDB|System Error Count by Table and Operation Name|Metrics|AWS DynamoDB/Amazon DynamoDB  - Latency and Errors - New|region={{region}} \_sourceCategory = Labs/AWS/DynamoDB\* Namespace=AWS/DynamoDB metric=SystemErrors Statistic=SampleCount Region=\*|
|AWS DynamoDB|Throttled Requests by Table and Operation Name|Metrics|AWS DynamoDB/Amazon  DynamoDB - Capacity Planning - New|operation={{operation}} region={{region}} tablename={{tablename}} \_sourceCategory = Labs/AWS/DynamoDB\* Namespace=AWS/DynamoDB Region=\* Metric=ThrottledRequests Statistic=Sum Region=\*|
|AWS DynamoDB|User Error Count|Metrics|AWS DynamoDB/Amazon DynamoDB  - Latency and Errors - New|region={{region}} \_sourceCategory = Labs/AWS/DynamoDB\* Namespace=AWS/DynamoDB metric=UserErrors Statistic=SampleCount Region=\*|
|AWS DynamoDB|WriteThrottleEvents Count by Table and GlobalSecondaryIndex|Metrics|AWS DynamoDB/Amazon  DynamoDB - Capacity Planning - New|region={{region}} tablename={{tablename}} \_sourceCategory = Labs/AWS/DynamoDB\* Namespace=AWS/DynamoDB metric=WriteThrottleEvents Statistic=Sum Region=\*|

