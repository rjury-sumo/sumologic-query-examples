# Parsers For Data Volume

**Data Volume/Capacity Utilization/Actual (Average) DPM Ingested**
```
_index=sumologic_volume dataPoints _sourceCategory="collector_metrics_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Capacity Utilization/Actual (Average) Log Ingested**
```
_index=sumologic_volume _sourcecategory="collector_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourcecategory, dataTier, bytes, count
```

**Data Volume/Capacity Utilization/DPM Ingest Capacity Utilization**
```
_index=sumologic_volume dataPoints _sourceCategory="collector_metrics_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Capacity Utilization/Log Ingest Capacity Utilization**
```
_index=sumologic_volume _sourcecategory="collector_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourcecategory, dataTier, bytes, count
```

**Data Volume/Capacity Utilization/Subscribed DPM Ingest Capacity**
```
_index=sumologic_volume dataPoints _sourceCategory="collector_metrics_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Capacity Utilization/Subscribed Log Ingest Capacity**
```
_index=sumologic_volume _sourcecategory="collector_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourcecategory, dataTier, bytes, count
```

**Data Volume/Credits/Continuous Tier**
```
_index=sumologic_volume _sourcecategory={{LogView}}_and_tier_volume
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "dataTier","sizeInBytes" as  dataTier, bytes
```

**Data Volume/Credits/Credits Usage Trend**
```
_index=sumologic_volume _sourcecategory={{LogView}}_and_tier_volume
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data  "dataTier","sizeInBytes" as  dataTier, bytes
```

**Data Volume/Credits/CSE Tier**
```
_index=sumologic_volume _sourcecategory={{LogView}}_and_tier_volume
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "dataTier","sizeInBytes" as  dataTier, bytes
```

**Data Volume/Credits/Frequent Tier**
```
_index=sumologic_volume _sourcecategory={{LogView}}_and_tier_volume
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "dataTier","sizeInBytes" as  dataTier, bytes
```

**Data Volume/Credits/Infrequent Tier**
```
_index=sumologic_volume _sourcecategory={{LogView}}_and_tier_volume
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "dataTier","sizeInBytes" as  dataTier, bytes
```

**Data Volume/Credits/Metrics Ingestion**
```
_index=sumologic_volume _sourcecategory={{MetricsView}}_metrics_volume
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Credits/Top 10 {{LogView}} by Credits used in Continuous Tier**
```
_index=sumologic_volume _sourcecategory={{LogView}}_and_tier_volume
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes" as sourceCategory, dataTier, bytes
```

**Data Volume/Credits/Top 10 {{LogView}} by Credits used in CSE Tier**
```
_index=sumologic_volume _sourcecategory={{LogView}}_and_tier_volume
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes" as sourceCategory, dataTier, bytes
```

**Data Volume/Credits/Top 10 {{LogView}} by Credits used in Frequent Tier**
```
_index=sumologic_volume _sourcecategory={{LogView}}_and_tier_volume
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes" as sourceCategory, dataTier, bytes
```

**Data Volume/Credits/Top 10 {{LogView}} by Credits used in Infrequent Tier**
```
_index=sumologic_volume _sourcecategory={{LogView}}_and_tier_volume
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes" as sourceCategory, dataTier, bytes
```

**Data Volume/Credits/Top 10 {{MetricsView}} by Credits used in Metrics Ingestion**
```
_index=sumologic_volume _sourcecategory={{MetricsView}}_metrics_volume
| parse regex "\"(?<sourceCategory>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Credits/Top 10 {{TracingView}} by Credits used in Tracing Ingestion**
```
_index=sumologic_volume _sourcecategory={{TracingView}}_tracing_volume
| parse regex "\"(?<sourceCategory>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Data Volume/Credits/Top Sources  (Other < {{other_pct}}%)**
```
_index=sumologic_volume _sourceCategory="{{LogView}}_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as value, dataTier, bytes, count

| sum(count) as events,sum(bytes) as bytes by datatier,value,_sourceCategory
| bytes /1Gi as gb | sort gb
| parse field=_sourcecategory "*_and_tier_volume" as dimension 
```

**Data Volume/Credits/Tracing Ingestion by BilledBytes**
```
_index=sumologic_volume _sourcecategory={{TracingView}}_tracing_volume 
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Data Volume/Log Spikes/Data Volume Outliers**
```
_index=sumologic_volume _sourceCategory = "collector_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Data Volume/Log Spikes/Data Volume Predictions**
```
_index=sumologic_volume _sourceCategory = "collector_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Data Volume/Log Spikes/Ingest Spikes for Top 5 Collectors**
```
_index=sumologic_volume _sourceCategory = "collector_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Data Volume/Log Spikes/Ingest Spikes for Top 5 Source Categories**
```
_index=sumologic_volume _sourceCategory = "sourcecategory_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourcecategory, dataTier, bytes, count
```

**Data Volume/Log Spikes/Ingest Spikes for Top 5 Source Hosts**
```
_index=sumologic_volume _sourceCategory = "sourcehost_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourcehost, dataTier, bytes, count
```

**Data Volume/Log Spikes/Ingest Spikes for Top 5 Source Names**
```
_index=sumologic_volume _sourceCategory = "sourcename_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourceName, dataTier, bytes, count
```

**Data Volume/Log Spikes/Ingest Spikes for Top 5 Sources**
```
_index=sumologic_volume _sourceCategory = "source_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as source, dataTier, bytes, count
```

**Data Volume/Log Spikes/Top 5 Collectors**
```

_index=sumologic_volume _sourceCategory = "collector_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Data Volume/Log Spikes/Top 5 Source Categories**
```
_index=sumologic_volume _sourceCategory = "sourcecategory_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourcecategory, dataTier, bytes, count
```

**Data Volume/Log Spikes/Top 5 Source Hosts**
```
_index=sumologic_volume _sourceCategory = "sourcehost_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourcehost, dataTier, bytes, count
```

**Data Volume/Log Spikes/Top 5 Source Names**
```
_index=sumologic_volume _sourceCategory = "sourcename_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourcename, dataTier, bytes, count
```

**Data Volume/Log Spikes/Top 5 Sources**
```
_index=sumologic_volume _sourceCategory = "source_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as source, dataTier, bytes, count
```

**Data Volume/Logs by Metadata Fields/Ingest by Collector**
```
_index=sumologic_volume _sourceCategory = "collector_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Data Volume/Logs by Metadata Fields/Ingest by Source Category**
```
_index=sumologic_volume _sourceCategory = "sourcecategory_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourcecategory, dataTier, bytes, count
```

**Data Volume/Logs by Metadata Fields/Ingest by Source Host**
```
_index=sumologic_volume _sourceCategory = "sourcehost_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourceHost, dataTier, bytes, count
```

**Data Volume/Logs by Metadata Fields/Top 5 Collectors**
```
_index=sumologic_volume _sourceCategory = "collector_and_tier_volume" 
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Data Volume/Logs by Metadata Fields/Top 5 Source Categories**
```
_index=sumologic_volume _sourceCategory = "sourcecategory_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourcecategory, dataTier, bytes, count
```

**Data Volume/Logs by Metadata Fields/Top 5 Source Hosts**
```
_index=sumologic_volume _sourceCategory = "sourcehost_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourceHost, dataTier, bytes, count
```

**Data Volume/Logs/Average Daily Ingest**
```
_index=sumologic_volume _sourceCategory = "collector_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Data Volume/Logs/Candidate Partitions**
```
_index=sumologic_volume _sourceCategory="sourcecategory_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourcecategory, dataTier, bytes, count
```

**Data Volume/Logs/Daily Ingest (GB)**
```
_index=sumologic_volume _sourceCategory = "collector_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Data Volume/Logs/Daily Ingest Vs Ingest Capacity**
```
_index=sumologic_volume _sourceCategory = "collector_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Data Volume/Logs/Data Ingest Outlier**
```
_index=sumologic_volume _sourceCategory = "collector_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Data Volume/Logs/Data Ingest Prediction**
```
_index=sumologic_volume _sourceCategory = "collector_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Data Volume/Logs/Days when Ingestion Exceeded Capacity**
```
_index=sumologic_volume _sourceCategory = "collector_and_tier_volume" 
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Data Volume/Logs/Default Index**
```
_index=sumologic_volume _sourceCategory="view_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as index, dataTier, bytes, count
```

**Data Volume/Logs/Index Volume Trend**
```
_index=sumologic_volume sizeInBytes  _sourceCategory = "view_and_tier_volume" 
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as view_name, dataTier, bytes, count
```

**Data Volume/Logs/Ingest Spike (Last data point)**
```
_index=sumologic_volume _sourceCategory = "collector_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Data Volume/Logs/Predicted Ingest Tomorrow**
```
_index=sumologic_volume _sourceCategory = "collector_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Data Volume/Logs/Source Category (1-30%) Vol**
```
_index=sumologic_volume _sourceCategory="sourcecategory_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourcecategory, dataTier, bytes, count
```

**Data Volume/Logs/Source Category (30%+) Vol**
```
_index=sumologic_volume  _sourceCategory = "sourcecategory_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourcecategory, dataTier, bytes, count
```

**Data Volume/Logs/Top 5 Indexes (Non-Default)**
```
_index=sumologic_volume _sourceCategory="view_and_tier_volume"
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as index, dataTier, bytes, count
```

**Data Volume/Logs/Total Data Ingested**
```
_index=sumologic_volume _sourceCategory = "collector_and_tier_volume" 
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Data Volume/Metrics/Daily Ingest Vs Average Daily Ingest Capacity**
```
_index=sumologic_volume _sourcecategory={{MetricsView}}_metrics_volume datapoints
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Metrics/Days When Ingestion Exceeded Capacity**
```
_index=sumologic_volume dataPoints _sourceCategory="collector_metrics_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Metrics/Ingest - DataPoints**
```
_index=sumologic_volume dataPoints _sourceCategory="collector_metrics_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Metrics/Ingest - LogsToMetricsRuleName**
```
_index=sumologic_volume _sourceCategory="logstometricsrulename_metrics_volume" dataPoints
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Metrics/Ingest DPM**
```
_index=sumologic_volume _sourceCategory="collector_metrics_volume" dataPoints
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Metrics/Ingest Outlier - {{MetricsView}}**
```
_index=sumologic_volume _sourcecategory={{MetricsView}}_metrics_volume datapoints
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Metrics/Ingest Prediction - {{MetricsView}}**
```
_index=sumologic_volume _sourcecategory={{MetricsView}}_metrics_volume datapoints
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Metrics/Ingest Today Vs Yesterday - {{MetricsView}}**
```
_index=sumologic_volume  _sourcecategory={{MetricsView}}_metrics_volume datapoints
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Metrics/Ingest Trend - {{MetricsView}}**
```
_index=sumologic_volume _sourcecategory={{MetricsView}}_metrics_volume datapoints
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Metrics/Predicted Ingest Tomorrow**
```
_index=sumologic_volume dataPoints _sourceCategory="collector_metrics_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Metrics/Top 5 Collectors**
```
_index=sumologic_volume _sourceCategory="collector_metrics_volume" datapoints
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Metrics/Top 5 Source Categories**
```
_index=sumologic_volume _sourceCategory="sourcecategory_metrics_volume" datapoints
| parse regex "\"(?<sourcecategory>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Metrics/Top 5 Source Hosts**
```
_index=sumologic_volume _sourceCategory="sourcehost_metrics_volume" datapoints
| parse regex "\"(?<sourcehost>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Metrics/Top 5 Sources**
```
_index=sumologic_volume _sourceCategory="source_metrics_volume" datapoints
| parse regex "\"(?<source>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Overview/Day**
```
_index=sumologic_volume _sourcecategory={{LogView}}_and_tier_volume
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourcecategory, dataTier, bytes, count
```

**Data Volume/Overview/Ingest {{LogView}}- Log Volume**
```
_index=sumologic_volume _sourcecategory={{LogView}}_and_tier_volume
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as sourcecategory, dataTier, bytes, count
```

**Data Volume/Overview/Ingest {{MetricsView}}- Data Points**
```
_index=sumologic_volume _sourcecategory={{MetricsView}}_metrics_volume datapoints
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Overview/Ingest {{MetricsView}}- DPM**
```
_index=sumologic_volume _sourcecategory={{MetricsView}}_metrics_volume dataPoints
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Overview/Ingest {{TracingView}}- Billed Bytes**
```
_index=sumologic_volume _sourcecategory={{TracingView}}_tracing_volume 
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Data Volume/Overview/Ingest {{TracingView}}- Billed GBytes per min**
```

_index=sumologic_volume _sourcecategory={{TracingView}}_tracing_volume 
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Data Volume/Overview/Top 5  {{LogView}}**
```
_index=sumologic_volume _sourcecategory={{LogView}}_and_tier_volume
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Data Volume/Overview/Top 5 {{MetricsView}}**
```
_index=sumologic_volume _sourcecategory={{MetricsView}}_metrics_volume datapoints
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Overview/Top 5 {{TracingView}} by Billed Bytes**
```

_index=sumologic_volume _sourcecategory={{TracingView}}_tracing_volume 
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Data Volume/Overview/Usage Percentage of {{LogView}} by Tier**
```
_index=sumologic_volume _sourcecategory={{LogView}}_and_tier_volume
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Data Volume/Overview/Usage Percentage of {{LogView}} by Tier({{Tier}})**
```
_index=sumologic_volume _sourcecategory={{LogView}}_and_tier_volume
| parse regex "(?<data>\{[^\{]+\})" multi
| json field=data "field","dataTier","sizeInBytes","count" as collector, dataTier, bytes, count
```

**Data Volume/Overview/Usage Percentage of {{MetricsView}}**
```
_index=sumologic_volume _sourcecategory={{MetricsView}}_metrics_volume datapoints
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume/Overview/Usage Percentage of {{TracingView}}**
```
_index=sumologic_volume _sourcecategory={{TracingView}}_tracing_volume 
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Data Volume/Tracing/Ingest - {{Unit}}**
```
_index=sumologic_volume _sourcecategory={{TracingView}}_tracing_volume
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Data Volume/Tracing/Ingest - {{Unit}} per minute**
```
_index=sumologic_volume _sourcecategory={{TracingView}}_tracing_volume
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Data Volume/Tracing/Ingest Outlier - {{TracingView}} by {{Unit}}**
```
_index=sumologic_volume _sourcecategory={{TracingView}}_tracing_volume
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Data Volume/Tracing/Ingest Prediction - {{TracingView}} by {{Unit}}**
```
_index=sumologic_volume _sourcecategory={{TracingView}}_tracing_volume
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Data Volume/Tracing/Ingest Predictions - {{Unit}} for Next Day**
```
_index=sumologic_volume _sourcecategory=sourcecategory_tracing_volume
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Data Volume/Tracing/Ingest Spike  of Last {{Unit}}**
```
_index=sumologic_volume _sourceCategory="collector_tracing_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Data Volume/Tracing/Ingest Today vs Yesterday - {{TracingView}}  by {{Unit}}**
```
_index=sumologic_volume _sourcecategory={{TracingView}}_tracing_volume
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Data Volume/Tracing/Ingest Trend - {{TracingView}}**
```

_index=sumologic_volume _sourcecategory={{TracingView}}_tracing_volume
| parse regex "\"(?<field_type>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Data Volume/Tracing/Top 5 Collectors by {{Unit}}**
```
_index=sumologic_volume _sourceCategory="collector_tracing_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Data Volume/Tracing/Top 5 Service by {{Unit}}**
```
_index=sumologic_volume _sourceCategory="service_tracing_volume"
| parse regex "\"(?<source>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Data Volume/Tracing/Top 5 Source Categories by {{Unit}}**
```
_index=sumologic_volume _sourceCategory="sourcecategory_tracing_volume"
| parse regex "\"(?<sourcecategory>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Data Volume/Tracing/Top 5 source Hosts by {{Unit}}**
```
_index=sumologic_volume _sourceCategory="sourcehost_tracing_volume"
| parse regex "\"(?<sourceHost>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Data Volume/Tracing/Top 5 source Name by {{Unit}}**
```
_index=sumologic_volume _sourceCategory="sourcename_tracing_volume"
| parse regex "\"(?<sourceName>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```

**Data Volume/Tracing/Top 5 Sources by {{Unit}}**
```
_index=sumologic_volume _sourceCategory="source_tracing_volume"
| parse regex "\"(?<source>[^\"]+)\"\:\{\"billedBytes\"\:(?<billedBytes>\d+)\,\"spansCount\"\:(?<spansCount>\d+)\}" multi
```


