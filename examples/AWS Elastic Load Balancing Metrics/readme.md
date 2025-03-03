# AWS Elastic Load Balancing Metrics

## Searches

### Log Searches


### Metric Searches

- **Average and Max Latency**: from Dashboard: AWS Elastic Load Balancing Metrics/Application Load Balancer/AWS Elastic Load Balancing Metrics - ALB - Overview - New 
- **Average UnHealthyHostCount per Availability Zone**: from Dashboard: AWS Elastic Load Balancing Metrics/Application Load Balancer/AWS Elastic Load Balancing Metrics - ALB - Overview - New 
- **HTTP Backend 5XX Code Count per Availability Zone**: from Dashboard: AWS Elastic Load Balancing Metrics/Application Load Balancer/AWS Elastic Load Balancing Metrics - ALB - Overview - New 
- **Overall Average Healthy vs Unhealthy Host Count**: from Dashboard: AWS Elastic Load Balancing Metrics/Application Load Balancer/AWS Elastic Load Balancing Metrics - ALB - Overview - New 
- **Overall RequestCount**: from Dashboard: AWS Elastic Load Balancing Metrics/Application Load Balancer/AWS Elastic Load Balancing Metrics - ALB - Overview - New 
- **RequestCount per Availability Zone**: from Dashboard: AWS Elastic Load Balancing Metrics/Application Load Balancer/AWS Elastic Load Balancing Metrics - ALB - Overview - New

## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|AWS Elastic Load Balancing Metrics/Application Load Balancer|Average and Max Latency|Metrics|AWS Elastic Load Balancing Metrics/Application Load Balancer/AWS Elastic Load Balancing Metrics - ALB - Overview - New|\_sourcecategory={{\_sourcecategory}} availabilityzone={{availabilityzone}} region={{region}} namespace=AWS/ApplicationELB  \_sourceCategory = Labs/AWS/ALB/Metrics metric=TargetResponseTime Statistic=Average  LoadBalancer=\* AvailabilityZone=\* Region=\* \| avg|
|AWS Elastic Load Balancing Metrics/Application Load Balancer|Average UnHealthyHostCount per Availability Zone|Metrics|AWS Elastic Load Balancing Metrics/Application Load Balancer/AWS Elastic Load Balancing Metrics - ALB - Overview - New|\_collector={{\_collector}} \_source={{\_source}} \_sourcecategory={{\_sourcecategory}} availabilityzone={{availabilityzone}} loadbalancername={{loadbalancername}} region={{region}} namespace=AWS/ApplicationELB  \_sourceCategory = Labs/AWS/ALB/Metrics metric=UnHealthyHostCount   Statistic=Average AvailabilityZone=\* \| avg by AvailabilityZone|
|AWS Elastic Load Balancing Metrics/Application Load Balancer|HTTP Backend 5XX Code Count per Availability Zone|Metrics|AWS Elastic Load Balancing Metrics/Application Load Balancer/AWS Elastic Load Balancing Metrics - ALB - Overview - New|\_sourcecategory={{\_sourcecategory}} availabilityzone={{availabilityzone}} namespace=AWS/ApplicationELB  \_sourceCategory = Labs/AWS/ALB/Metrics  metric=HTTPCode\_ELB\_5xx\_Count Statistic=Sum  LoadBalancer=\* AvailabilityZone=\* \| avg by AvailabilityZone|
|AWS Elastic Load Balancing Metrics/Application Load Balancer|Overall Average Healthy vs Unhealthy Host Count|Metrics|AWS Elastic Load Balancing Metrics/Application Load Balancer/AWS Elastic Load Balancing Metrics - ALB - Overview - New|\_collector={{\_collector}} \_source={{\_source}} \_sourcecategory={{\_sourcecategory}} availabilityzone={{availabilityzone}} loadbalancername={{loadbalancername}} region={{region}} namespace=AWS/ApplicationELB  \_sourceCategory = Labs/AWS/ALB/Metrics  metric=\*HealthyHostCount Statistic=Average  LoadBalancer=\* AvailabilityZone=\* \| avg by metric|
|AWS Elastic Load Balancing Metrics/Application Load Balancer|Overall RequestCount|Metrics|AWS Elastic Load Balancing Metrics/Application Load Balancer/AWS Elastic Load Balancing Metrics - ALB - Overview - New|\_sourcecategory={{\_sourcecategory}} availabilityzone={{availabilityzone}} loadbalancername={{loadbalancername}} region={{region}} namespace=AWS/ApplicationELB  \_sourceCategory = Labs/AWS/ALB/Metrics metric=RequestCount Statistic=Sum  LoadBalancer=\* AvailabilityZone=\* Region=\* \| sum|
|AWS Elastic Load Balancing Metrics/Application Load Balancer|RequestCount per Availability Zone|Metrics|AWS Elastic Load Balancing Metrics/Application Load Balancer/AWS Elastic Load Balancing Metrics - ALB - Overview - New|\_sourcecategory={{\_sourcecategory}} availabilityzone={{availabilityzone}} namespace=AWS/ApplicationELB  \_sourceCategory = Labs/AWS/ALB/Metrics  metric=RequestCount Statistic=Sum  LoadBalancer=\* AvailabilityZone=\* \| sum by AvailabilityZone |

