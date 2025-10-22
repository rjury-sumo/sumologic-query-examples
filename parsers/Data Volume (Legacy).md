# Parsers For Data Volume (Legacy)

**Data Volume (Legacy)/Collector Not Sending Data/Collector Not Sending Data**
```
_index=sumologic_volume sizeInBytes 
| where _sourceCategory="collector_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Daily Plan Limit/Daily Plan Limit**
```
_index=sumologic_volume sizeInBytes
| where _sourceCategory="collector_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Data Volume - Log Spikes - New/Data Volume Outlier**
```
_index=sumologic_volume sizeInBytes 
| where _sourceCategory="collector_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Data Volume - Log Spikes - New/Data Volume Outlook**
```
_index=sumologic_volume sizeInBytes 
| where _sourceCategory="collector_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Data Volume - Log Spikes - New/Top 5 Collectors Per Day**
```
_index=sumologic_volume sizeInBytes 
| where _sourceCategory="collector_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Data Volume - Log Spikes - New/Top 5 Source Categories Per Day**
```
_index=sumologic_volume sizeInBytes 
| where _sourceCategory="sourcecategory_volume"
| parse regex "\"(?<sourceCategory>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Data Volume - Log Spikes - New/Top 5 Source Hosts Per Day**
```
_index=sumologic_volume sizeInBytes 
| where _sourceCategory="sourcehost_volume"
| parse regex "\"(?<sourceHost>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Data Volume - Log Spikes - New/Top 5 Source Names Per Day**
```
_index=sumologic_volume sizeInBytes 
| where _sourceCategory="sourcename_volume"
| parse regex "\"(?<sourceName>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Data Volume - Log Spikes - New/Top 5 Sources Per Day**
```
_index=sumologic_volume sizeInBytes 
| where _sourceCategory="source_volume"
| parse regex "\"(?<source>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Data Volume - Log Spikes - New/Top Ingest Spikes for Top 5 Collectors Per Day**
```
_index=sumologic_volume sizeInBytes 
| where _sourceCategory="collector_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Data Volume - Log Spikes - New/Top Ingest Spikes for Top 5 Source Categories Per Day**
```
_index=sumologic_volume sizeInBytes 
| where _sourceCategory="sourcecategory_volume"
| parse regex "\"(?<sourceCategory>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Data Volume - Log Spikes - New/Top Ingest Spikes for Top 5 Source Hosts Per Day**
```
_index=sumologic_volume sizeInBytes 
| where _sourceCategory="sourcehost_volume"
| parse regex "\"(?<sourceHost>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Data Volume - Log Spikes - New/Top Ingest Spikes for Top 5 Source Names Per Day**
```
_index=sumologic_volume sizeInBytes 
| where _sourceCategory="sourcename_volume"
| parse regex "\"(?<sourceName>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Data Volume - Log Spikes - New/Top Ingest Spikes for Top 5 Sources Per Day**
```
_index=sumologic_volume sizeInBytes 
| where _sourceCategory="source_volume"
| parse regex "\"(?<source>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Data Volume - Overview - New/Day**
```
_index=sumologic_volume sizeInBytes
| where _sourceCategory="collector_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Data Volume - Overview - New/Ingest - Data Points**
```
_index=sumologic_volume datapoints
| where _sourceCategory="collector_metrics_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume (Legacy)/Data Volume - Overview - New/Ingest - DPM**
```
_index=sumologic_volume dataPoints
| where _sourceCategory="collector_metrics_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```

**Data Volume (Legacy)/Data Volume - Overview - New/Ingest - Log Volume**
```
_index=sumologic_volume sizeInBytes
| where _sourceCategory="collector_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Data Volume - Overview - New/Top 5 Collectors**
```
_index=sumologic_volume sizeInBytes
| where _sourceCategory="collector_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Data Volume - Overview - New/Top 5 Source Categories**
```
_index=sumologic_volume sizeInBytes
| where _sourceCategory="sourcecategory_volume"
| parse regex "\"(?<sourcecategory>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Indexes with Zero Ingest/Indexes with Zero Ingest**
```
_index=sumologic_volume sizeInBytes
| where _sourceCategory = "view_volume"
| parse regex "\"(?<view_name>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Ingest Spike by sourceCategory/Ingest Spike by sourceCategory**
```
_index=sumologic_volume sizeInBytes
| where _sourceCategory="sourcecategory_volume"
| parse regex "\"(?<sourceCategory>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Ingest Spike/Ingest Spike**
```
_index=sumologic_volume sizeInBytes
| where _sourceCategory="sourcecategory_volume"
| parse regex "\"(?<sourceCategory>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Message Size, Average by Source Category/Message Size, Average by Source Category**
```
_index=sumologic_volume sizeInBytes
| where _sourceCategory="sourcecategory_volume"
| parse regex "\"(?<sourcecategory>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Message Size, Average by Source Name/Message Size, Average by Source Name**
```
_index=sumologic_volume sizeInBytes
| where _sourceCategory="sourcename_volume"
| parse regex "\"(?<sourcename>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Message Size, BoxPlot by Source Category/Message Size, BoxPlot by Source Category**
```
_index=sumologic_volume sizeInBytes
| where _sourceCategory="sourcecategory_volume"
| parse regex "\"(?<sourcecategory>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Monthly Plan Limit/Monthly Plan Limit**
```
_index=sumologic_volume sizeInBytes
| where _sourceCategory="collector_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Over Daily Capacity For Last 3 Days/Over Daily Capacity For Last 3 Days**
```
_index=sumologic_volume sizeInBytes
| where _sourceCategory="sourcecategory_volume"
| parse regex "\"(?<sourcecategory>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/sourceCategory Ingest Spike/sourceCategory Ingest Spike**
```
_index=sumologic_volume sizeInBytes
| where _sourceCategory="sourcecategory_volume" 
| parse regex "\"(?<sourcecategory>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Volume by Collector/Volume by Collector**
```
_index=sumologic_volume sizeInBytes
| where _sourceCategory="collector_volume"
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Volume by Source Category/Volume by Source Category**
```
_index=sumologic_volume sizeInBytes
| where _sourceCategory="sourcecategory_volume"
| parse regex "\"(?<sourcecategory>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Volume by Source Host/Volume by Source Host**
```
_index=sumologic_volume sizeInBytes
| where _sourceCategory="sourcehost_volume"
| parse regex "\"(?<sourcehost>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```

**Data Volume (Legacy)/Volume by Source Name/Volume by Source Name**
```
_index=sumologic_volume sizeInBytes
| where _sourceCategory="sourcename_volume"
| parse regex "\"(?<sourcename>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```


