# Parsers For Flex

**Flex/Capacity Utilization/Actual (Average) DPM Ingested**
```
_index=sumologic_volume dataPoints
| where _sourceCategory="collector_metrics_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Capacity Utilization/Actual (Average) Logs Data Scanned**
```
_view=sumologic_search_usage_per_query  !(status_message="Query Failed")	
 | where analytics_tier matches /Flex/ 
| fields scanned_bytes_breakdown_by_metering_type, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
| json field=scanned_bytes_breakdown_by_metering_type "Flex" as flex_data_scanned_bytes 
```

**Flex/Capacity Utilization/DPM Ingest Capacity Utilization**
```
_index=sumologic_volume dataPoints
| where _sourceCategory="collector_metrics_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Capacity Utilization/Log Data Scan Capacity Utilization**
```
_view=sumologic_search_usage_per_query  !(status_message="Query Failed")	
 | where analytics_tier matches /Flex/ 
| fields scanned_bytes_breakdown_by_metering_type, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
| json field=scanned_bytes_breakdown_by_metering_type "Flex" as flex_data_scanned_bytes 
```

**Flex/Capacity Utilization/Subscribed DPM Ingest Capacity**
```
_index=sumologic_volume dataPoints
| where _sourceCategory="collector_metrics_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Capacity Utilization/Subscribed Logs Data Scan Capacity**
```
_index=sumologic_volume
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourcecategory, dataTier, bytes, count
```

**Flex/Content items with scan volume  10x of avg daily ingest of last 30 days/Content items with scan volume  10x of avg daily ingest of last 30 days**
```
_view=sumologic_search_usage_per_query !(status_message="Query Failed")
| "dummy" as dummy // this field is only used to artificially link the parent query and subquery
| where [subquery from=(-30d) to=(-1d):
              // this subquery saves the average daily ingest for the org to a lookup table
              _index=sumologic_volume _sourceCategory=view_and_tier_volume 
              | parse regex "\"field\":\"(?<field>.*?)\",\"dataTier\":\"(?<tier>.*?)\",\"sizeInBytes\":(?<size>.*?)," multi
              | where tier in ("Continuous", "Infrequent", "Frequent", "Flex")  
              | timeslice 1d 
              | where (queryStartTime() < _timeslice and queryEndTime() > __timeslice_end) // this eliminates partial time slices
              | sum(size) as dailyIngest by _timeslice
              | avg(dailyIngest) as avgDailyIngest
              | round(avgDailyIngest,0) as avgDailyIngest
              // create artificial primary key for later use as lookup in parent query
              | 0 as pkey
              // save the avgDailyIngest and primary key to legacy lookup table
              | save /avgDailyIngest2
              // create dummy field to link to parent query
              | "dummy" as dummy
              | compose dummy]
// break out the scan volume for each query by tier
| parse regex field=scanned_bytes_breakdown "\"(?<tier>[a-zA-Z]+)\" \: (?<tier_scanned_bytes>[0-9]+)" multi nodrop
```

**Flex/Credits Consumed/Credits Consumed by Feature**
```
_view=sumologic_search_usage_per_query  !(status_message="Query Failed")	
 | where analytics_tier matches /Flex/ 
| fields scanned_bytes_breakdown_by_metering_type, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
| if (query_type == "View Maintenance", "Scheduled Views", query_type) as query_type
|  json field=scanned_bytes_breakdown_by_metering_type "Flex" as flex_data_scanned_bytes 
```

**Flex/Credits Consumed/Credits Consumed Over Time**
```
_view=sumologic_search_usage_per_query  !(status_message="Query Failed")	
 | where analytics_tier matches /Flex/ 
| fields scanned_bytes_breakdown_by_metering_type, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
| if (query_type == "View Maintenance", "Scheduled Views", query_type) as query_type
|  json field=scanned_bytes_breakdown_by_metering_type "Flex" as flex_data_scanned_bytes 
```

**Flex/Credits Consumed/Credits Consumed Over Time (Previous Month)**
```
_view=sumologic_search_usage_per_query  !(status_message="Query Failed")	
 | where analytics_tier matches /Flex/ 
| fields scanned_bytes_breakdown_by_metering_type, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
| if (query_type == "View Maintenance", "Scheduled Views", query_type) as query_type
|  json field=scanned_bytes_breakdown_by_metering_type "Flex" as flex_data_scanned_bytes 
```

**Flex/Credits Consumed/day**
```
_view=sumologic_search_usage_per_query  !(status_message="Query Failed")	
 | where analytics_tier matches /Flex/ 
| fields scanned_bytes_breakdown_by_metering_type, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
| if (query_type == "View Maintenance", "Scheduled Views", query_type) as query_type
|  json field=scanned_bytes_breakdown_by_metering_type "Flex" as flex_data_scanned_bytes 
```

**Flex/Feature Level Scan Volume/Credits Consumed**
```
_view=sumologic_search_usage_per_query  !(status_message="Query Failed")
| where analytics_tier matches /Flex/ 
| if (query_type == "View Maintenance", "Scheduled Views", query_type) as query_type
| where query_type matches "{{query_type}}"
| fields scanned_bytes_breakdown_by_metering_type, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
|  json field=scanned_bytes_breakdown_by_metering_type "Flex" as flex_data_scanned_bytes 
```

**Flex/Feature Level Scan Volume/day**
```
_view=sumologic_search_usage_per_query  !(status_message="Query Failed")
| where analytics_tier matches /Flex/ 
| if (query_type == "View Maintenance", "Scheduled Views", query_type) as query_type
| where query_type matches "{{query_type}}"
| fields scanned_bytes_breakdown_by_metering_type, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
|  json field=scanned_bytes_breakdown_by_metering_type "Flex" as flex_data_scanned_bytes 
```

**Flex/Feature Level Scan Volume/Top 50 Expensive Queries**
```
_view=sumologic_search_usage_per_query  !(status_message="Query Failed")
| where analytics_tier matches /Flex/ 
| if (query_type == "View Maintenance", "Scheduled Views", query_type) as query_type
| where query_type matches "{{query_type}}"
| fields scanned_bytes_breakdown_by_metering_type, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name, query_start_time, query_end_time
| query_end_time - query_start_time as query_time_range_hrs
| query_time_range_hrs / 3600000 as query_time_range_hrs
| json field=scanned_bytes_breakdown_by_metering_type "Flex" as flex_data_scanned_bytes 
```

**Flex/Log Spikes/Data Volume Outlier**
```
_index=sumologic_volume 
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Flex/Log Spikes/Top 5 Collectors Per Day**
```

_index=sumologic_volume 
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Flex/Log Spikes/Top Ingest Spikes for Top 5 Collectors Per Day**
```
_index=sumologic_volume
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Flex/Logs/Data Ingest Prediction**
```
_index=sumologic_volume 
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Flex/Logs/Data Scan Volume**
```
_view=sumologic_search_usage_per_query  !(status_message="Query Failed")	
 | where analytics_tier matches /Flex/ 
| fields scanned_bytes_breakdown_by_metering_type, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
| json field=scanned_bytes_breakdown_by_metering_type "Flex" as flex_data_scanned_bytes 
```

**Flex/Logs/Data Scan Volume Prediction**
```
_view=sumologic_search_usage_per_query  !(status_message="Query Failed")	
 | where analytics_tier matches /Flex/ 
| fields scanned_bytes_breakdown_by_metering_type, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
| json field=scanned_bytes_breakdown_by_metering_type "Flex" as flex_data_scanned_bytes 
```

**Flex/Logs/Ingest Volume**
```
_index=sumologic_volume 
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Flex/Logs/Ingest Volume - Default Index**
```
_index=sumologic_volume 
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as index, dataTier, bytes, count
```

**Flex/Logs/Ingest Volume - Non-Default Index**
```
_index=sumologic_volume 
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as index, dataTier, bytes, count
```

**Flex/Logs/Top 5 Indexes (Non-Default)**
```
_index=sumologic_volume 
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as index, dataTier, bytes, count
```

**Flex/Metrics/Daily Ingest Vs Average Daily Ingest Capacity**
```
_index=sumologic_volume datapoints
| where _sourceCategory matches "{{MetricsSources}}"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Metrics/Ingest - DataPoints**
```
_index=sumologic_volume dataPoints
| where _sourceCategory="collector_metrics_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Metrics/Ingest DPM**
```
_index=sumologic_volume dataPoints
| where _sourceCategory="collector_metrics_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Metrics/Ingest Outlier of {{MetricsSources}}**
```
_index=sumologic_volume datapoints
| where _sourceCategory="{{MetricsSources}}"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Metrics/Ingest Prediction of {{MetricsSources}}**
```
_index=sumologic_volume datapoints
| where _sourceCategory matches "{{MetricsSources}}"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Metrics/Ingest Spike (Last Data Point)**
```
_index=sumologic_volume datapoints
| where _sourceCategory="collector_metrics_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Metrics/Ingest Spike (Moving Avg)**
```
_index=sumologic_volume datapoints
| where _sourceCategory="collector_metrics_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Metrics/Ingest Today Vs Yesterday of {{MetricsSources}}**
```
_index=sumologic_volume datapoints
| where _sourceCategory matches"{{MetricsSources}}"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Metrics/Ingest Trend of {{MetricsSources}}**
```
_index=sumologic_volume datapoints
| where _sourceCategory matches "{{MetricsSources}}"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Metrics/Top 5 Collectors**
```
_index=sumologic_volume datapoints
| where _sourceCategory="collector_metrics_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Metrics/Top 5 Source Categories**
```
_index=sumologic_volume datapoints
| where _sourceCategory="sourcecategory_metrics_volume"
| parse regex "\"(?<sourcecategory>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Metrics/Top 5 Source Hosts**
```
_index=sumologic_volume datapoints
| parse regex "\"(?<sourcehost>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Metrics/Top 5 Sources**
```
_index=sumologic_volume datapoints
| where _sourceCategory="source_metrics_volume"
| parse regex "\"(?<source>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Orgs total Credits value exceeded input Credit/Orgs total Credits value exceeded input Credit**
```
_view=sumologic_search_usage_per_query  !(status_message="Query Failed")	
 | where analytics_tier matches /Flex/ 
| fields scanned_bytes_breakdown_by_metering_type, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
| json field=scanned_bytes_breakdown_by_metering_type "Flex" as flex_data_scanned_bytes 
```

**Flex/Orgs total data scanned in GB exceeded input GB value/Orgs total data scanned in GB exceeded input GB value**
```
_view=sumologic_search_usage_per_query  !(status_message="Query Failed")	
 | where analytics_tier matches /Flex/ 
| fields scanned_bytes_breakdown_by_metering_type, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
| json field=scanned_bytes_breakdown_by_metering_type "Flex" as flex_data_scanned_bytes 
```

**Flex/Overview/Data Scanned  Trend**
```
_view=sumologic_search_usage_per_query  !(status_message="Query Failed")	
 | where analytics_tier matches /Flex/ 
| json field=scanned_bytes_breakdown_by_metering_type "Flex" as flex_data_scanned_bytes 
```

**Flex/Overview/Day**
```
_index=sumologic_volume 
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourcecategory, dataTier, bytes, count
```

**Flex/Overview/Ingest {{Metricsources}}- Data Points**
```
_index=sumologic_volume datapoints
| where _sourceCategory matches"{{Metricsources}}"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Overview/Ingest {{Metricsources}}- DPM**
```
_index=sumologic_volume dataPoints
| where _sourceCategory matches "{{Metricsources}}"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Overview/Ingest {{Tracingsources}}- Billed Bytes**
```


_index=sumologic_volume 
| where _sourceCategory matches "{{Tracingsources}}"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Flex/Overview/Ingest {{Tracingsources}}- Billed GBytes per min**
```

_index=sumologic_volume 
| where _sourceCategory matches "{{Tracingsources}}"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Flex/Overview/Ingest Volume Trend**
```
_index=sumologic_volume 
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourcecategory, dataTier, bytes, count
```

**Flex/Overview/Top 5 {{Metricsources}}**
```
_index=sumologic_volume datapoints
| where _sourceCategory matches"{{Metricsources}}"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Overview/Top 5 {{Tracingsources}} by BilledBytes**
```

_index=sumologic_volume 
| where _sourceCategory matches "{{Tracingsources}}"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Flex/Overview/Usage Percentage of {{Metricsources}}**
```
_index=sumologic_volume datapoints
| where _sourceCategory matches"{{Metricsources}}"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Flex/Overview/Usage Percentage of {{Tracingsources}}**
```
_index=sumologic_volume 
| where _sourceCategory matches "{{Tracingsources}}"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Flex/Tracing/Ingest - {{Unit}}**
```
_index=sumologic_volume 
| where _sourceCategory="collector_tracing_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Flex/Tracing/Ingest {{Unit}} per minute**
```
_index=sumologic_volume 
| where _sourceCategory="collector_tracing_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Flex/Tracing/Ingest Outlier of {{Tracingsources}} by {{Unit}}**
```
_index=sumologic_volume 
| where _sourceCategory matches "{{Tracingsources}}"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Flex/Tracing/Ingest Prediction of {{Tracingsources}} by {{Unit}}**
```
_index=sumologic_volume 
| where _sourceCategory matches"{{Tracingsources}}"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Flex/Tracing/Ingest Spike  of Last {{Unit}}**
```
_index=sumologic_volume 
| where _sourceCategory="collector_tracing_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Flex/Tracing/Ingest Spike (Moving Avg) of {{Unit}}**
```
_index=sumologic_volume 
| where _sourceCategory="collector_tracing_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Flex/Tracing/Ingest Today vs Yesterday of {{Tracingsources}}  by {{Unit}}**
```
_index=sumologic_volume 
| where _sourceCategory matches "{{Tracingsources}}"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Flex/Tracing/Ingest Trend of {{Tracingsources}}**
```

_index=sumologic_volume 
| where _sourceCategory matches "{{Tracingsources}}"
| parse regex "\"(?<field_type>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Flex/Tracing/Top 5 Collectors by {{Unit}}**
```
_index=sumologic_volume 
| where _sourceCategory="collector_tracing_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Flex/Tracing/Top 5 Service by {{Unit}}**
```
_index=sumologic_volume 
| where _sourceCategory="service_tracing_volume"
| parse regex "\"(?<source>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Flex/Tracing/Top 5 Source Categories by {{Unit}}**
```
_index=sumologic_volume 
| where _sourceCategory="sourcecategory_tracing_volume"
| parse regex "\"(?<sourcecategory>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Flex/Tracing/Top 5 source Hosts by {{Unit}}**
```
_index=sumologic_volume 
| where _sourceCategory="sourcehost_tracing_volume"
| parse regex "\"(?<sourceHost>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Flex/Tracing/Top 5 source Name by {{Unit}}**
```
_index=sumologic_volume 
| where _sourceCategory="sourcename_tracing_volume"
| parse regex "\"(?<sourceName>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Flex/Tracing/Top 5 Sources by {{Unit}}**
```
_index=sumologic_volume 
| where _sourceCategory="source_tracing_volume"
| parse regex "\"(?<source>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Flex/Users whose total Credit Consumed exceeded  by input value/Users whose total Credit Consumed exceeded  by input value**
```
_view=sumologic_search_usage_per_query  !(status_message="Query Failed")	
 | where analytics_tier matches /Flex/ 
| fields scanned_bytes_breakdown_by_metering_type, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
| json field=scanned_bytes_breakdown_by_metering_type "Flex" as flex_data_scanned_bytes 
```

**Flex/Users whose total data scanned (GB) exceeded  by input value/Users whose total data scanned (GB) exceeded  by input value**
```
_view=sumologic_search_usage_per_query  !(status_message="Query Failed")	
 | where analytics_tier matches /Flex/ 
| fields scanned_bytes_breakdown_by_metering_type, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
| json field=scanned_bytes_breakdown_by_metering_type "Flex" as flex_data_scanned_bytes 
```


