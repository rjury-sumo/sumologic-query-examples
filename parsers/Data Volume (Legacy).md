# Parsers For Data Volume (Legacy)

## Parser:
```
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```
### Use Cases:
Collector Not Sending Data, Daily Plan Limit, Data Volume Outlier, Data Volume Outlook, Indexes with Zero Ingest, Ingest - Data Points, Ingest - DPM, Ingest Spike, Ingest Spike by sourceCategory, Message Size, Average by Source Category, Message Size, Average by Source Name, Message Size, BoxPlot by Source Category, Monthly Plan Limit, Over Daily Capacity For Last 3 Days, sourceCategory Ingest Spike, Top 5 Collectors, Top 5 Collectors Per Day, Top 5 Source Categories, Top 5 Source Categories Per Day, Top 5 Source Hosts Per Day, Top 5 Source Names Per Day, Top 5 Sources Per Day, Top Ingest Spikes for Top 5 Collectors Per Day, Top Ingest Spikes for Top 5 Source Categories Per Day, Top Ingest Spikes for Top 5 Source Hosts Per Day, Top Ingest Spikes for Top 5 Source Names Per Day, Top Ingest Spikes for Top 5 Sources Per Day, Volume by Collector, Volume by Source Category, Volume by Source Host, Volume by Source Name



## Parser:
```
| parse regex "\"(?<collector>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```
### Use Cases:
Collector Not Sending Data, Daily Plan Limit, Data Volume Outlier, Data Volume Outlook, Indexes with Zero Ingest, Ingest - Data Points, Ingest - DPM, Ingest - GB/Day, Ingest - Log Volume, Ingest Spike, Ingest Spike by sourceCategory, Message Size, Average by Source Category, Message Size, Average by Source Name, Message Size, BoxPlot by Source Category, Monthly Plan Limit, Over Daily Capacity For Last 3 Days, sourceCategory Ingest Spike, Top 5 Collectors, Top 5 Collectors Per Day, Top 5 Source Categories, Top 5 Source Categories Per Day, Top 5 Source Hosts Per Day, Top 5 Source Names Per Day, Top 5 Sources Per Day, Top Ingest Spikes for Top 5 Collectors Per Day, Top Ingest Spikes for Top 5 Source Categories Per Day, Top Ingest Spikes for Top 5 Source Hosts Per Day, Top Ingest Spikes for Top 5 Source Names Per Day, Top Ingest Spikes for Top 5 Sources Per Day, Volume by Collector, Volume by Source Category, Volume by Source Host, Volume by Source Name



## Parser:
```
| parse regex "\"(?<source>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```
### Use Cases:
Collector Not Sending Data, Daily Plan Limit, Data Volume Outlier, Data Volume Outlook, Indexes with Zero Ingest, Ingest Spike, Ingest Spike by sourceCategory, Message Size, Average by Source Category, Message Size, Average by Source Name, Message Size, BoxPlot by Source Category, Monthly Plan Limit, Over Daily Capacity For Last 3 Days, sourceCategory Ingest Spike, Top 5 Collectors Per Day, Top 5 Source Categories Per Day, Top 5 Source Names Per Day, Top 5 Sources Per Day, Top Ingest Spikes for Top 5 Collectors Per Day, Top Ingest Spikes for Top 5 Source Hosts Per Day, Top Ingest Spikes for Top 5 Sources Per Day, Volume by Collector, Volume by Source Category, Volume by Source Host, Volume by Source Name



## Parser:
```
| parse regex "\"(?<sourcecategory>[^\"]+)\"\:\{\"dataPoints\"\:(?<datapoints>\d+)\}" multi
```
### Use Cases:
Collector Not Sending Data, Daily Plan Limit, Data Volume Outlier, Data Volume Outlook, Indexes with Zero Ingest, Ingest - Data Points, Ingest Spike, Ingest Spike by sourceCategory, Message Size, Average by Source Category, Message Size, Average by Source Name, Message Size, BoxPlot by Source Category, Monthly Plan Limit, Over Daily Capacity For Last 3 Days, sourceCategory Ingest Spike, Top 5 Collectors Per Day, Top 5 Source Categories, Top 5 Source Categories Per Day, Top 5 Source Hosts Per Day, Top 5 Source Names Per Day, Top 5 Sources Per Day, Top Ingest Spikes for Top 5 Collectors Per Day, Top Ingest Spikes for Top 5 Source Categories Per Day, Top Ingest Spikes for Top 5 Source Hosts Per Day, Top Ingest Spikes for Top 5 Source Names Per Day, Top Ingest Spikes for Top 5 Sources Per Day, Volume by Collector, Volume by Source Category, Volume by Source Host, Volume by Source Name



## Parser:
```
| parse regex "\"(?<sourceCategory>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```
### Use Cases:
Collector Not Sending Data, Daily Plan Limit, Data Volume Outlier, Data Volume Outlook, Indexes with Zero Ingest, Ingest Spike, Ingest Spike by sourceCategory, Message Size, Average by Source Category, Message Size, Average by Source Name, Message Size, BoxPlot by Source Category, Monthly Plan Limit, Over Daily Capacity For Last 3 Days, sourceCategory Ingest Spike, Top 5 Collectors Per Day, Top 5 Source Categories Per Day, Top 5 Source Names Per Day, Top 5 Sources Per Day, Top Ingest Spikes for Top 5 Collectors Per Day, Top Ingest Spikes for Top 5 Source Categories Per Day, Top Ingest Spikes for Top 5 Source Hosts Per Day, Top Ingest Spikes for Top 5 Sources Per Day, Volume by Collector, Volume by Source Category, Volume by Source Host, Volume by Source Name



## Parser:
```
| parse regex "\"(?<sourcecategory>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```
### Use Cases:
Collector Not Sending Data, Daily Plan Limit, Data Volume Outlier, Data Volume Outlook, Indexes with Zero Ingest, Ingest - Data Points, Ingest - DPM, Ingest Spike, Ingest Spike by sourceCategory, Message Size, Average by Source Category, Message Size, Average by Source Name, Message Size, BoxPlot by Source Category, Monthly Plan Limit, Over Daily Capacity For Last 3 Days, sourceCategory Ingest Spike, Top 5 Collectors, Top 5 Collectors Per Day, Top 5 Source Categories, Top 5 Source Categories Per Day, Top 5 Source Hosts Per Day, Top 5 Source Names Per Day, Top 5 Sources Per Day, Top Ingest Spikes for Top 5 Collectors Per Day, Top Ingest Spikes for Top 5 Source Categories Per Day, Top Ingest Spikes for Top 5 Source Hosts Per Day, Top Ingest Spikes for Top 5 Source Names Per Day, Top Ingest Spikes for Top 5 Sources Per Day, Volume by Collector, Volume by Source Category, Volume by Source Host, Volume by Source Name



## Parser:
```
| parse regex "\"(?<sourceHost>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```
### Use Cases:
Collector Not Sending Data, Daily Plan Limit, Data Volume Outlier, Data Volume Outlook, Indexes with Zero Ingest, Ingest Spike, Ingest Spike by sourceCategory, Message Size, Average by Source Category, Message Size, Average by Source Name, Message Size, BoxPlot by Source Category, Monthly Plan Limit, Over Daily Capacity For Last 3 Days, sourceCategory Ingest Spike, Top 5 Collectors Per Day, Top 5 Source Categories Per Day, Top 5 Source Hosts Per Day, Top 5 Source Names Per Day, Top 5 Sources Per Day, Top Ingest Spikes for Top 5 Collectors Per Day, Top Ingest Spikes for Top 5 Source Categories Per Day, Top Ingest Spikes for Top 5 Source Hosts Per Day, Top Ingest Spikes for Top 5 Source Names Per Day, Top Ingest Spikes for Top 5 Sources Per Day, Volume by Collector, Volume by Source Category, Volume by Source Host, Volume by Source Name



## Parser:
```
| parse regex "\"(?<sourcehost>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```
### Use Cases:
Collector Not Sending Data, Daily Plan Limit, Indexes with Zero Ingest, Ingest Spike, Ingest Spike by sourceCategory, Message Size, Average by Source Category, Message Size, Average by Source Name, Message Size, BoxPlot by Source Category, Monthly Plan Limit, Over Daily Capacity For Last 3 Days, sourceCategory Ingest Spike, Volume by Collector, Volume by Source Category, Volume by Source Host



## Parser:
```
| parse regex "\"(?<sourceName>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```
### Use Cases:
Collector Not Sending Data, Daily Plan Limit, Data Volume Outlier, Data Volume Outlook, Indexes with Zero Ingest, Ingest Spike, Ingest Spike by sourceCategory, Message Size, Average by Source Category, Message Size, Average by Source Name, Message Size, BoxPlot by Source Category, Monthly Plan Limit, Over Daily Capacity For Last 3 Days, sourceCategory Ingest Spike, Top 5 Collectors Per Day, Top 5 Source Categories Per Day, Top 5 Source Names Per Day, Top 5 Sources Per Day, Top Ingest Spikes for Top 5 Collectors Per Day, Top Ingest Spikes for Top 5 Source Categories Per Day, Top Ingest Spikes for Top 5 Source Hosts Per Day, Top Ingest Spikes for Top 5 Source Names Per Day, Top Ingest Spikes for Top 5 Sources Per Day, Volume by Collector, Volume by Source Category, Volume by Source Host, Volume by Source Name



## Parser:
```
| parse regex "\"(?<sourcename>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```
### Use Cases:
Collector Not Sending Data, Daily Plan Limit, Indexes with Zero Ingest, Ingest Spike, Ingest Spike by sourceCategory, Message Size, Average by Source Category, Message Size, Average by Source Name, Message Size, BoxPlot by Source Category, Monthly Plan Limit, Over Daily Capacity For Last 3 Days, sourceCategory Ingest Spike, Volume by Collector, Volume by Source Category, Volume by Source Host, Volume by Source Name



## Parser:
```
| parse regex "\"(?<view_name>[^\"]+)\"\:\{\"sizeInBytes\"\:(?<bytes>\d+),\"count\"\:(?<count>\d+)\}" multi
```
### Use Cases:
Collector Not Sending Data, Daily Plan Limit, Indexes with Zero Ingest


