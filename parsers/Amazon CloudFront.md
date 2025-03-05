# Parsers For Amazon CloudFront

## Parser:
```
| parse "*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*" as _filedate,_ftime,edgeloc, scbytes, c_ip,method,cs_host,uri_stem,status,referer,user_agent,uri_query,cookie,edgeresult,requestid
 `n```
### Use Cases:
90th 95th 99th Pct Time_taken Trend, Average Latency Time by CloudFront Edge, Average Latency Time in Seconds  by Region, Cache Hit and Miss, Cache Hit and Miss Over Time, Client and Server Errors Over Time, Client Geo Distribution, Edge Result, Global Latency Time in Seconds, HTTP Response Classes, HTTP Status Codes Over Time, Longest Latency by GeoLocation, Number of Unique Visitors, Outlier - Average Latency Time, Outlier - Average Latency Time by Edge Location, Requests Served by Edge Location, Traffic and Megabytes Served, Unique Visitors Over Time, Visitor Access Platforms, Visitor Browsers and Devices, Visitor Session Duration Distribution Histogram



## Parser:
```
| parse "*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*" as _filedate,_ftime,edgeloc, scbytes, c_ip,method,cs_host,uri_stem,status,referer,user_agent,uri_query,cookie,edgeresult,requestid
| parse regex field = requestid "(?<time_taken>\d{1,3}\.\d\d\d)\t"
 `n```
### Use Cases:
90th 95th 99th Pct Time_taken Trend, Average Latency Time by CloudFront Edge, Average Latency Time in Seconds  by Region, Cache Hit and Miss, Cache Hit and Miss Over Time, Client and Server Errors Over Time, Client Geo Distribution, Edge Result, Global Latency Time in Seconds, HTTP Response Classes, HTTP Status Codes Over Time, Longest Latency by GeoLocation, Number of Unique Visitors, Outlier - Average Latency Time, Outlier - Average Latency Time by Edge Location, Requests Served by Edge Location, Traffic and Megabytes Served, Unique Visitors Over Time, Visitor Access Platforms, Visitor Browsers and Devices, Visitor Session Duration Distribution Histogram



## Parser:
```
| parse "*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*" as _filedate,_ftime,edgeloc, scbytes, c_ip,method,cs_host,uri_stem,status,referer,user_agent,uri_query,cookie,edgeresult,requestid 
 `n```
### Use Cases:
90th 95th 99th Pct Time_taken Trend, Average Latency Time by CloudFront Edge, Average Latency Time in Seconds  by Region, Cache Hit and Miss, Cache Hit and Miss Over Time, Client and Server Errors Over Time, Client Geo Distribution, Edge Result, Global Latency Time in Seconds, HTTP Response Classes, HTTP Status Codes Over Time, Longest Latency by GeoLocation, Number of Unique Visitors, Outlier - Average Latency Time, Outlier - Average Latency Time by Edge Location, Requests Served by Edge Location, Traffic and Megabytes Served, Unique Visitors Over Time, Visitor Access Platforms, Visitor Browsers and Devices, Visitor Session Duration Distribution Histogram



## Parser:
```
| parse "*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*" as _filedate,time,edgeloc, scbytes, c_ip,method,cs_host,uri_stem,status_code,referer,user_agent,uri_query,cookie,edgeresult,requestid 
 `n```
### Use Cases:
90th 95th 99th Pct Time_taken Trend, Average Latency Time by CloudFront Edge, Average Latency Time in Seconds  by Region, Cache Hit and Miss, Cache Hit and Miss Over Time, Client and Server Errors Over Time, Client Geo Distribution, Edge Result, Global Latency Time in Seconds, HTTP Response Classes, HTTP Status Codes Over Time, Longest Latency by GeoLocation, Number of Unique Visitors, Outlier - Average Latency Time, Outlier - Average Latency Time by Edge Location, Requests Served by Edge Location, Traffic and Megabytes Served, Unique Visitors Over Time, Visitor Access Platforms, Visitor Browsers and Devices, Visitor Session Duration Distribution Histogram



## Parser:
```
| parse "*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*" as _filedate,time,edgeloc, scbytes, c_ip,method,cs_host,uri_stem,status,referer,user_agent,uri_query,cookie,edgeresult,requestid
 `n```
### Use Cases:
90th 95th 99th Pct Time_taken Trend, Average Latency Time by CloudFront Edge, Average Latency Time in Seconds  by Region, Cache Hit and Miss, Cache Hit and Miss Over Time, Client and Server Errors Over Time, Client Geo Distribution, Edge Result, Global Latency Time in Seconds, HTTP Response Classes, HTTP Status Codes Over Time, Longest Latency by GeoLocation, Number of Unique Visitors, Outlier - Average Latency Time, Outlier - Average Latency Time by Edge Location, Requests Served by Edge Location, Traffic and Megabytes Served, Unique Visitors Over Time, Visitor Access Platforms, Visitor Browsers and Devices, Visitor Session Duration Distribution Histogram



## Parser:
```
| parse "*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*\t*" as _filedate,time,edgeloc, scbytes, c_ip,method,cs_host,uri_stem,status,referer,user_agent,uri_query,cookie,edgeresult,requestid 
 `n```
### Use Cases:
90th 95th 99th Pct Time_taken Trend, Average Latency Time by CloudFront Edge, Average Latency Time in Seconds  by Region, Cache Hit and Miss, Cache Hit and Miss Over Time, Client and Server Errors Over Time, Client Geo Distribution, Edge Result, Global Latency Time in Seconds, HTTP Response Classes, HTTP Status Codes Over Time, Longest Latency by GeoLocation, Number of Unique Visitors, Outlier - Average Latency Time, Outlier - Average Latency Time by Edge Location, Requests Served by Edge Location, Traffic and Megabytes Served, Unique Visitors Over Time, Visitor Access Platforms, Visitor Browsers and Devices, Visitor Session Duration Distribution Histogram


