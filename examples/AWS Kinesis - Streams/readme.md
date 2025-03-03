# AWS Kinesis - Streams

## Searches

### Log Searches


### Metric Searches

- **Get Bytes (MB) by Stream and Shard**: from Dashboard: AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New 
- **Get Latency by Stream and Shard**: from Dashboard: AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New 
- **Get Records by Stream and Shard**: from Dashboard: AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New 
- **Get Records Success**: from Dashboard: AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New 
- **Incoming Bytes (MB) by Stream and Shard**: from Dashboard: AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New 
- **Incoming Records by Stream and Shard**: from Dashboard: AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New 
- **Iterator Age (ms) by Stream and Shard**: from Dashboard: AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New 
- **Put Latency by Stream and Shard**: from Dashboard: AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New 
- **Read Provisioned Throughput Exceeded**: from Dashboard: AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New 
- **Write Provisioned Throughput Exceeded**: from Dashboard: AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New

## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|AWS Kinesis - Streams|Get Bytes (MB) by Stream and Shard|Metrics|AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New|region={{region}} streamname={{streamname}}  Namespace=AWS/Kinesis metric=GetRecords.Bytes Statistic=Sum \| eval \_value/(1024\*1024)|
|AWS Kinesis - Streams|Get Latency by Stream and Shard|Metrics|AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New|region={{region}} streamname={{streamname}}  Namespace=AWS/Kinesis metric=GetRecords.Latency	 Statistic=Average |
|AWS Kinesis - Streams|Get Records by Stream and Shard|Metrics|AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New|region={{region}} streamname={{streamname}}  Namespace=AWS/Kinesis metric=GetRecords.Records	Statistic=Sum |
|AWS Kinesis - Streams|Get Records Success|Metrics|AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New|region={{region}} streamname={{streamname}}  Namespace=AWS/Kinesis metric=GetRecords.Success Statistic=Average |
|AWS Kinesis - Streams|Incoming Bytes (MB) by Stream and Shard|Metrics|AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New|region={{region}} streamname={{streamname}}  Namespace=AWS/Kinesis metric=IncomingBytes Statistic=Sum \| eval \_value/(1024\*1024)|
|AWS Kinesis - Streams|Incoming Records by Stream and Shard|Metrics|AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New|region={{region}} streamname={{streamname}}  Namespace=AWS/Kinesis metric=IncomingRecords Statistic=Sum |
|AWS Kinesis - Streams|Iterator Age (ms) by Stream and Shard|Metrics|AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New|region={{region}} streamname={{streamname}}  Namespace=AWS/Kinesis metric=GetRecords.IteratorAgeMilliseconds Statistic=Maximum |
|AWS Kinesis - Streams|Put Latency by Stream and Shard|Metrics|AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New|region={{region}} streamname={{streamname}}  Namespace=AWS/Kinesis metric=PutRecord.Latency Statistic=Average |
|AWS Kinesis - Streams|Read Provisioned Throughput Exceeded|Metrics|AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New|region={{region}} streamname={{streamname}}  Namespace=AWS/Kinesis metric=ReadProvisionedThroughputExceeded Statistic=Average |
|AWS Kinesis - Streams|Write Provisioned Throughput Exceeded|Metrics|AWS Kinesis - Streams/Amazon Kinesis - Streams - Metrics - New|region={{region}} streamname={{streamname}}  Namespace=AWS/Kinesis metric=WriteProvisionedThroughputExceeded Statistic=Average |

