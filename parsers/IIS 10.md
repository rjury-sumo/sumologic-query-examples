# Parsers For IIS 10

## Parser:
```
|  parse field=instance * as app_pool_instance | sum by webserver_farm, host, 
```
### Use Cases:
Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, Queue Rejected Requests, Requests, Response Time Histogram, Site Uptime, Threat Count, Top Apps by Request, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name
| parse field=iis_log_message "ArrivalRate = \"*\";" as ArrivalRate
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Avg. Response Time, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, Files Received Per Sec, Files Sent Per Sec, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Non Anonymous Users, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Rejection Rate, Requests, Requests Per Sec (All methods), Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Total Bytes Transferred Per Sec, Total Requests Per Sec, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name
| parse field=iis_log_message "BytesReceivedPersec = \"*\";" as BytesReceivedPersec
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Avg. Response Time, Bytes Received Per Sec, Cache Hit Rate, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Rejection Rate, Requests, Requests Per Sec (All methods), Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Total Bytes Transferred Per Sec, Total Requests Per Sec, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name
| parse field=iis_log_message "BytesSentPersec = \"*\";" as BytesSentPersec
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Avg. Response Time, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Rejection Rate, Requests, Requests Per Sec (All methods), Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Total Bytes Transferred Per Sec, Total Requests Per Sec, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name
| parse field=iis_log_message "BytesTotalPersec = \"*\";" as BytesTotalPersec
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Avg. Response Time, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Requests, Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Total Bytes Transferred Per Sec, Total Requests Per Sec, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name
| parse field=iis_log_message "CacheHitRate = \"*\";" as CacheHitRate
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Avg. Response Time, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, Files Received Per Sec, Files Sent Per Sec, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Non Anonymous Users, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Rejection Rate, Requests, Requests Per Sec (All methods), Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Total Bytes Transferred Per Sec, Total Requests Per Sec, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name
| parse field=iis_log_message "CGIRequestsPersec = *;" as CGIRequestsPersec
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Avg. Response Time, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, Files Received Per Sec, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, Non Anonymous Users, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Rejection Rate, Requests, Requests Per Sec (All methods), Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Total Bytes Transferred Per Sec, Total Requests Per Sec, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name
| parse field=iis_log_message "CurrentAnonymousUsers = *;" as CurrentAnonymousUsers
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Avg. Response Time, Bytes Received Per Sec, Cache Hit Rate, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Rejection Rate, Requests, Requests Per Sec (All methods), Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Total Bytes Transferred Per Sec, Total Requests Per Sec, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name
| parse field=iis_log_message "CurrentConnections = *;" as CurrentConnections
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Avg. Response Time, Cache Hit Rate, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Rejection Rate, Requests, Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Total Bytes Transferred Per Sec, Total Requests Per Sec, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name
| parse field=iis_log_message "CurrentNonAnonymousUsers = *;" as CurrentNonAnonymousUsers
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Avg. Response Time, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, Non Anonymous Users, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Rejection Rate, Requests, Requests Per Sec (All methods), Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Total Bytes Transferred Per Sec, Total Requests Per Sec, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name
| parse field=iis_log_message "CurrentQueueSize = *;" as CurrentQueueSize
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Avg. Response Time, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, Files Received Per Sec, Files Sent Per Sec, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Non Anonymous Users, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Rejection Rate, Requests, Requests Per Sec (All methods), Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Total Bytes Transferred Per Sec, Total Requests Per Sec, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name
| parse field=iis_log_message "FilesReceivedPersec = *;" as FilesReceivedPersec
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Avg. Response Time, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, Files Received Per Sec, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, Non Anonymous Users, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Rejection Rate, Requests, Requests Per Sec (All methods), Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Total Bytes Transferred Per Sec, Total Requests Per Sec, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name
| parse field=iis_log_message "FilesSentPersec = *;" as FilesSentPersec
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Avg. Response Time, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, Files Received Per Sec, Files Sent Per Sec, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Non Anonymous Users, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Rejection Rate, Requests, Requests Per Sec (All methods), Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Total Bytes Transferred Per Sec, Total Requests Per Sec, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name
| parse field=iis_log_message "GetRequestsPersec = *;" as GetRequestsPersec
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Avg. Response Time, Bytes Received Per Sec, Cache Hit Rate, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Rejection Rate, Requests, Requests Per Sec (All methods), Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Total Bytes Transferred Per Sec, Total Requests Per Sec, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name
| parse field=iis_log_message "ISAPIExtensionRequestsPersec = *;" as ISAPIExtensionRequestsPersec
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Avg. Response Time, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, Files Received Per Sec, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Non Anonymous Users, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Rejection Rate, Requests, Requests Per Sec (All methods), Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Total Bytes Transferred Per Sec, Total Requests Per Sec, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name
| parse field=iis_log_message "PostRequestsPersec = *;" as PostRequestsPersec
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Avg. Response Time, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Rejection Rate, Requests, Requests Per Sec (All methods), Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Total Bytes Transferred Per Sec, Total Requests Per Sec, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name
| parse field=iis_log_message "RejectionRate = \"*\";" as RejectionRate
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Avg. Response Time, Cache Hit Rate, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Rejection Rate, Requests, Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Total Bytes Transferred Per Sec, Total Requests Per Sec, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name
| parse field=iis_log_message "ServiceUptime = *;" as ServiceUptime
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Avg. Response Time, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, Queue Rejected Requests, Requests, Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name
| parse field=iis_log_message "TotalMethodRequestsPersec = *;" as TotalMethodRequestsPersec
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Avg. Response Time, Cache Hit Rate, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Rejection Rate, Requests, Requests Per Sec (All methods), Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Total Bytes Transferred Per Sec, Total Requests Per Sec, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name nodrop
| parse field=iis_log_message "ArrivalRate = \"*\";" as ArrivalRate nodrop
| parse field=iis_log_message "CacheHitRate = \"*\";" as CacheHitRate nodrop
```
### Use Cases:
Counters_HTTPServiceRequestQueues Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse field=iis_log_message "Name = \"*\";" as Name nodrop
| parse field=iis_log_message "BytesReceivedPersec = \"*\";" as BytesReceivedPersec nodrop
| parse "TotalMethodRequestsPersec = *;" as TotalMethodRequestsPersec nodrop
```
### Use Cases:
Counters_HTTPServiceRequestQueues Log Parser, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message  "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Average Redirection Time, Average Response Time, Avg. Response Time, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client Error Outliers, Client Errors by Server, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Cumulative Response Time Percentiles, Current Queue Size, Error Events, Files Received Per Sec, Files Sent Per Sec, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Non 200 Response Status Codes, Non Anonymous Users, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Reason Phrase - Time Compare, Redirections by Server, Rejection Rate, Requests, Requests Per Sec (All methods), Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors by Server, Server Errors Over Time, Site Uptime, Threat Count, Top 10 Bots Observed, Top 10 Slowest Pages, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing 4xx Errors, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Total Bytes Transferred Per Sec, Total Requests Per Sec, Traffic Distribution by Server, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message  "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| parse regex field=cs_User_Agent "(?<bot_name>facebook)externalhit?\W+" nodrop
| parse regex field=cs_User_Agent "Feedfetcher-(?<bot_name>Google?)\S+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>PaperLiBot?)/.+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>TweetmemeBot?)/.+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>msn?)bot\W" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Nutch?)-.+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Google?)bot\W" nodrop
| parse regex field=cs_User_Agent "Feedfetcher-(?<bot_name>Google?)\W" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Yahoo?)!\s+Slurp[;/].+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>bing?)bot\W" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Bing?)Preview\W" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Sogou?)\s+web\s" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Yandex?)Bot\W" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>rogerbot?)\W" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>AddThis\.com?)\s+robot\s+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>ShareThis?)Fetcher/.+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Ahrefs?)Bot/.+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>MetaURI?)\s+API/.+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Showyou?)Bot\s+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Google?)Producer;" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Ezooms?)\W" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Rockmelt?)Embedder\s+" nodrop 
| parse regex field=cs_User_Agent "(?<bot_name>Sosospider?)\W" nodrop 
| parse regex field=cs_User_Agent "(?<bot_name>Baidu?)spider" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Exabot?)\W"
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Average Redirection Time, Average Response Time, Avg. Response Time, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client Error Outliers, Client Errors by Server, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Cumulative Response Time Percentiles, Current Queue Size, Error Events, Files Received Per Sec, Files Sent Per Sec, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Non 200 Response Status Codes, Non Anonymous Users, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Reason Phrase - Time Compare, Redirections by Server, Rejection Rate, Requests, Requests Per Sec (All methods), Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors by Server, Server Errors Over Time, Site Uptime, Threat Count, Top 10 Bots Observed, Top 10 Slowest Pages, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Total Bytes Transferred Per Sec, Total Requests Per Sec, Traffic Distribution by Server, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<c_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<c_port>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<s_port>\S+?) (?<protocol_version>\S+?) (?<verb>\S+?) (?<cookedurl_query>\S+?) (?<streamid>\S+?) (?<Protocol_Status>\S+?) (?<SiteId>\S+?) (?<Reason_Phrase>\S+?) (?<Queue_Name>\S+?)"
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Avg. Response Time, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, Error Events, Files Received Per Sec, Files Sent Per Sec, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Non Anonymous Users, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Rejection Rate, Requests, Requests Per Sec (All methods), Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Top Client IPs, Total Bytes Transferred Per Sec, Total Requests Per Sec, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<c_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<c_port>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<s_port>\S+?) (?<protocol_version>\S+?) (?<verb>\S+?) (?<cookedurl_query>\S+?) (?<streamid>\S+?) (?<Protocol_Status>\S+?) (?<SiteId>\S+?) (?<Reason_Phrase>\S+?) (?<Queue_Name>\S+?)" 
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Avg. Response Time, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Current Queue Size, Error Events, Files Received Per Sec, Files Sent Per Sec, Get Requests Per Sec, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Non Anonymous Users, NonAnonymous Users, Post Requests Per Sec, Queue Rejected Requests, Queue Size, Reason Phrase - Time Compare, Rejection Rate, Requests, Requests Per Sec (All methods), Response Time Histogram, Site Uptime, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Server IPs, Top Verbs, Total Bytes Transferred Per Sec, Total Requests Per Sec, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Average Redirection Time, Average Response Time, Avg. Response Time, Browsers and Operating Systems, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client Error Outliers, Client Errors by Server, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Cumulative Client Request Percentiles, Cumulative Response Time Percentiles, Cumulative User Request Percentiles, Current Queue Size, Delete Requests, Desktop OS Version, Error Events, Files Received Per Sec, Files Sent Per Sec, Get Requests, Get Requests Per Sec, Highly Malicious Threat Table, HTTP Methods, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Media Types Served, Method, Non 200 Response Status Codes, Non Anonymous Users, NonAnonymous Users, Number of Requests - Time Compare, Popular Mobile Device Versions, Post Requests, Post Requests Per Sec, Put Requests, Queue Rejected Requests, Queue Size, Reason Phrase - Time Compare, Redirections by Server, Rejection Rate, Request Outlier, Requests, Requests by App Over Time, Requests Per Sec (All methods), Requests Stats by Client IP, Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors by Server, Server Errors Over Time, Site Uptime, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Threat Table, Top 10 Bots Observed, Top 10 Queries, Top 10 Slowest Pages, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 URLs, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Requests by Users, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Total Bytes Transferred Per Sec, Total Requests Per Sec, Traffic Distribution by Server, Unique Visitors, Unique Visitors Outlier, US Visitors, Visitor Location, Visitor Platforms, Visitors by US Region Over Time, Visitors Platforms Over Time, Visits by Country Over Time, W3SVC_WebService Log Parser, Worldwide Visitors



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| json field=raw "labels[*].name" as label_name
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Average Redirection Time, Average Response Time, Avg. Response Time, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client Error Outliers, Client Errors by Server, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Cumulative Response Time Percentiles, Current Queue Size, Delete Requests, Error Events, Files Received Per Sec, Files Sent Per Sec, Get Requests, Get Requests Per Sec, Highly Malicious Threat Table, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Method, Non 200 Response Status Codes, Non Anonymous Users, NonAnonymous Users, Number of Requests - Time Compare, Post Requests, Post Requests Per Sec, Put Requests, Queue Rejected Requests, Queue Size, Reason Phrase - Time Compare, Redirections by Server, Rejection Rate, Request Outlier, Requests, Requests Per Sec (All methods), Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors by Server, Server Errors Over Time, Site Uptime, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Top 10 Bots Observed, Top 10 Slowest Pages, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing 4xx Errors, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Total Bytes Transferred Per Sec, Total Requests Per Sec, Traffic Distribution by Server, Unique Visitors Outlier, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| parse regex field=cs_referer "(?:\?|&)(?:p|q|wd|searchfor)=(?<search_term>[^=]+?)(?:&|$)" nodrop 
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Average Redirection Time, Average Response Time, Avg. Response Time, Browsers and Operating Systems, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client Error Outliers, Client Errors by Server, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Cumulative Client Request Percentiles, Cumulative Response Time Percentiles, Cumulative User Request Percentiles, Current Queue Size, Delete Requests, Desktop OS Version, Error Events, Files Received Per Sec, Files Sent Per Sec, Get Requests, Get Requests Per Sec, Highly Malicious Threat Table, HTTP Methods, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Media Types Served, Method, Non 200 Response Status Codes, Non Anonymous Users, NonAnonymous Users, Number of Requests - Time Compare, Popular Mobile Device Versions, Post Requests, Post Requests Per Sec, Put Requests, Queue Rejected Requests, Queue Size, Reason Phrase - Time Compare, Redirections by Server, Rejection Rate, Request Outlier, Requests, Requests by App Over Time, Requests Per Sec (All methods), Requests Stats by Client IP, Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors by Server, Server Errors Over Time, Site Uptime, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Threat Table, Top 10 Bots Observed, Top 10 Queries, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Pages, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 URLs, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Requests by Users, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Total Bytes Transferred Per Sec, Total Requests Per Sec, Traffic Distribution by Server, Unique Visitors, Unique Visitors Outlier, US Visitors, Visitor Location, Visitor Platforms, Visitors by US Region Over Time, Visitors Platforms Over Time, Visits by Country Over Time, W3SVC_WebService Log Parser, Worldwide Visitors



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| parse regex field=cs_uri_stem "/(?<app>[^\./]+?)(?:/|$)" nodrop
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Average Redirection Time, Average Response Time, Avg. Response Time, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client Error Outliers, Client Errors by Server, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Cumulative Response Time Percentiles, Current Queue Size, Delete Requests, Error Events, Files Received Per Sec, Files Sent Per Sec, Get Requests, Get Requests Per Sec, Highly Malicious Threat Table, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Method, Non 200 Response Status Codes, Non Anonymous Users, NonAnonymous Users, Number of Requests - Time Compare, Post Requests, Post Requests Per Sec, Put Requests, Queue Rejected Requests, Queue Size, Reason Phrase - Time Compare, Redirections by Server, Rejection Rate, Request Outlier, Requests, Requests by App Over Time, Requests Per Sec (All methods), Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors by Server, Server Errors Over Time, Site Uptime, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Threat Table, Top 10 Bots Observed, Top 10 Slowest Pages, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Requests by Users, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Total Bytes Transferred Per Sec, Total Requests Per Sec, Traffic Distribution by Server, Unique Visitors Outlier, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| parse regex field=cs_uri_stem "\.(?<media_type>[A-Za-z]+)$" 
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Average Redirection Time, Average Response Time, Avg. Response Time, Browsers and Operating Systems, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client Error Outliers, Client Errors by Server, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Cumulative Client Request Percentiles, Cumulative Response Time Percentiles, Cumulative User Request Percentiles, Current Queue Size, Delete Requests, Desktop OS Version, Error Events, Files Received Per Sec, Files Sent Per Sec, Get Requests, Get Requests Per Sec, Highly Malicious Threat Table, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Media Types Served, Method, Non 200 Response Status Codes, Non Anonymous Users, NonAnonymous Users, Number of Requests - Time Compare, Popular Mobile Device Versions, Post Requests, Post Requests Per Sec, Put Requests, Queue Rejected Requests, Queue Size, Reason Phrase - Time Compare, Redirections by Server, Rejection Rate, Request Outlier, Requests, Requests by App Over Time, Requests Per Sec (All methods), Requests Stats by Client IP, Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors by Server, Server Errors Over Time, Site Uptime, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Threat Table, Top 10 Bots Observed, Top 10 Queries, Top 10 Slowest Pages, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Requests by Users, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Total Bytes Transferred Per Sec, Total Requests Per Sec, Traffic Distribution by Server, Unique Visitors, Unique Visitors Outlier, US Visitors, Visitor Location, Visitor Platforms, Visitors by US Region Over Time, Visitors Platforms Over Time, Visits by Country Over Time, W3SVC_WebService Log Parser, Worldwide Visitors



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| parse regex field=cs_User_Agent "(?<device>iPad);\+CPU\+OS\+(?<version>[\d_]+?)(?:\+|\))" nodrop 
| parse regex field=cs_User_Agent "(?<device>iPhone);\+CPU\+iPhone\+OS\+(?<version>[\d_]+?)(?:\+|\))" nodrop 
| parse regex field=cs_User_Agent "(?<device>Android)\+(?<version>[\d.]+?)(?:;|\))" nodrop 
| parse regex field=cs_User_Agent "(?<device>SAMSUNG).+?(?<version>(?:GT-\w+|SGH-\w+|SPH-\w+|SCH-\w+))" 
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Average Redirection Time, Average Response Time, Avg. Response Time, Browsers and Operating Systems, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client Error Outliers, Client Errors by Server, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Cumulative Client Request Percentiles, Cumulative Response Time Percentiles, Cumulative User Request Percentiles, Current Queue Size, Delete Requests, Error Events, Files Received Per Sec, Files Sent Per Sec, Get Requests, Get Requests Per Sec, Highly Malicious Threat Table, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Method, Non 200 Response Status Codes, Non Anonymous Users, NonAnonymous Users, Number of Requests - Time Compare, Popular Mobile Device Versions, Post Requests, Post Requests Per Sec, Put Requests, Queue Rejected Requests, Queue Size, Reason Phrase - Time Compare, Redirections by Server, Rejection Rate, Request Outlier, Requests, Requests by App Over Time, Requests Per Sec (All methods), Requests Stats by Client IP, Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors by Server, Server Errors Over Time, Site Uptime, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Threat Table, Top 10 Bots Observed, Top 10 Queries, Top 10 Slowest Pages, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Requests by Users, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Total Bytes Transferred Per Sec, Total Requests Per Sec, Traffic Distribution by Server, Unique Visitors, Unique Visitors Outlier, Visitor Location, Visitor Platforms, Visitors Platforms Over Time, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| parse regex field=cs_User_Agent "(?<os>Windows)\+NT\+(?<version>[\d.]+?)(?:;|\))" nodrop 
| parse regex field=cs_User_Agent "(?<os>Mac OS)\+(?<version>[X\+\d.\_]+?)(?:;|\))" nodrop 
| parse regex field=cs_User_Agent "(?<os>Linux)\+(?<version>[x\d.\_]+?)(?:;|\))" nodrop 
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Average Redirection Time, Average Response Time, Avg. Response Time, Browsers and Operating Systems, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client Error Outliers, Client Errors by Server, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Cumulative Client Request Percentiles, Cumulative Response Time Percentiles, Cumulative User Request Percentiles, Current Queue Size, Delete Requests, Desktop OS Version, Error Events, Files Received Per Sec, Files Sent Per Sec, Get Requests, Get Requests Per Sec, Highly Malicious Threat Table, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Method, Non 200 Response Status Codes, Non Anonymous Users, NonAnonymous Users, Number of Requests - Time Compare, Popular Mobile Device Versions, Post Requests, Post Requests Per Sec, Put Requests, Queue Rejected Requests, Queue Size, Reason Phrase - Time Compare, Redirections by Server, Rejection Rate, Request Outlier, Requests, Requests by App Over Time, Requests Per Sec (All methods), Requests Stats by Client IP, Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors by Server, Server Errors Over Time, Site Uptime, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Threat Table, Top 10 Bots Observed, Top 10 Queries, Top 10 Slowest Pages, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Requests by Users, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Total Bytes Transferred Per Sec, Total Requests Per Sec, Traffic Distribution by Server, Unique Visitors, Unique Visitors Outlier, Visitor Location, Visitor Platforms, Visitors Platforms Over Time, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Average Redirection Time, Average Response Time, Avg. Response Time, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client Error Outliers, Client Errors by Server, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Cumulative Response Time Percentiles, Cumulative User Request Percentiles, Current Queue Size, Delete Requests, Error Events, Files Received Per Sec, Files Sent Per Sec, Get Requests, Get Requests Per Sec, Highly Malicious Threat Table, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Method, Non 200 Response Status Codes, Non Anonymous Users, NonAnonymous Users, Number of Requests - Time Compare, Post Requests, Post Requests Per Sec, Put Requests, Queue Rejected Requests, Queue Size, Reason Phrase - Time Compare, Redirections by Server, Rejection Rate, Request Outlier, Requests, Requests by App Over Time, Requests Per Sec (All methods), Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors by Server, Server Errors Over Time, Site Uptime, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Threat Table, Top 10 Bots Observed, Top 10 Slowest Pages, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Requests by Users, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Total Bytes Transferred Per Sec, Total Requests Per Sec, Traffic Distribution by Server, Unique Visitors Outlier, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
| json field=raw "labels[*].name" as label_name
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Average Redirection Time, Average Response Time, Avg. Response Time, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client Error Outliers, Client Errors by Server, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Cumulative Response Time Percentiles, Current Queue Size, Delete Requests, Error Events, Files Received Per Sec, Files Sent Per Sec, Get Requests, Get Requests Per Sec, Highly Malicious Threat Table, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Method, Non 200 Response Status Codes, Non Anonymous Users, NonAnonymous Users, Number of Requests - Time Compare, Post Requests, Post Requests Per Sec, Put Requests, Queue Rejected Requests, Queue Size, Reason Phrase - Time Compare, Redirections by Server, Rejection Rate, Request Outlier, Requests, Requests Per Sec (All methods), Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors by Server, Server Errors Over Time, Site Uptime, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Threat Table, Top 10 Bots Observed, Top 10 Slowest Pages, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing 4xx Errors, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Total Bytes Transferred Per Sec, Total Requests Per Sec, Traffic Distribution by Server, Unique Visitors Outlier, Visitor Location, W3SVC_WebService Log Parser



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"  
```
### Use Cases:
Counters_HTTPServiceRequestQueues Log Parser, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests



## Parser:
```
| parse field=instance * as app_pool_instance |```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Application Pool State, Arrival Rate, Average Redirection Time, Average Response Time, Avg. Response Time, Browsers and Operating Systems, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client Error Outliers, Client Errors by Server, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Cumulative Client Request Percentiles, Cumulative Response Time Percentiles, Cumulative User Request Percentiles, Current Application Pool Uptime (Days), Current Queue Size, Delete Requests, Desktop OS Version, Error Events, Files Received Per Sec, Files Sent Per Sec, Get Requests, Get Requests Per Sec, Highly Malicious Threat Table, HTTP Methods, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Media Types Served, Method, Non 200 Response Status Codes, Non Anonymous Users, NonAnonymous Users, Number of Requests - Time Compare, Popular Mobile Device Versions, Post Requests, Post Requests Per Sec, Put Requests, Queue Rejected Requests, Queue Size, Reason Phrase - Time Compare, Redirections by Server, Rejection Rate, Request Outlier, Requests, Requests by App Over Time, Requests Per Sec (All methods), Requests Stats by Client IP, Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors by Server, Server Errors Over Time, Site Uptime, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Threat Table, Top 10 Bots Observed, Top 10 Queries, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Pages, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 URLs, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Requests by Users, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Total Bytes Transferred Per Sec, Total Requests Per Sec, Traffic Distribution by Server, Unique Visitors, Unique Visitors Outlier, US Visitors, Visitor Location, Visitor Platforms, Visitors by US Region Over Time, Visitors Platforms Over Time, Visits by Country Over Time, W3SVC_WebService Log Parser, Worldwide Visitors



## Parser:
```
| parse field=instance * as app_pool_instance | sum by webserver_farm, host, 
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Arrival Rate, Average Redirection Time, Average Response Time, Avg. Response Time, Browsers and Operating Systems, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client Error Outliers, Client Errors by Server, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Cumulative Client Request Percentiles, Cumulative Response Time Percentiles, Cumulative User Request Percentiles, Current Application Pool Uptime (Days), Current Queue Size, Delete Requests, Desktop OS Version, Error Events, Files Received Per Sec, Files Sent Per Sec, Get Requests, Get Requests Per Sec, Highly Malicious Threat Table, HTTP Methods, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Media Types Served, Method, Non 200 Response Status Codes, Non Anonymous Users, NonAnonymous Users, Number of Requests - Time Compare, Popular Mobile Device Versions, Post Requests, Post Requests Per Sec, Put Requests, Queue Rejected Requests, Queue Size, Reason Phrase - Time Compare, Redirections by Server, Rejection Rate, Request Outlier, Requests, Requests by App Over Time, Requests Per Sec (All methods), Requests Stats by Client IP, Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors by Server, Server Errors Over Time, Site Uptime, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Threat Table, Top 10 Bots Observed, Top 10 Queries, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Pages, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 URLs, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Requests by Users, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Total Bytes Transferred Per Sec, Total Requests Per Sec, Traffic Distribution by Server, Unique Visitors, Unique Visitors Outlier, US Visitors, Visitor Location, Visitor Platforms, Visitors by US Region Over Time, Visitors Platforms Over Time, Visits by Country Over Time, W3SVC_WebService Log Parser, Worldwide Visitors



## Parser:
```
| parse field=instance * as site_instance | sum by webserver_farm,host,site_instance|```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Active Connections, Anonymous Users, Application Pool State, Arrival Rate, Average Redirection Time, Average Response Time, Avg. Response Time, Browsers and Operating Systems, Bytes Received Per Sec, Bytes Sent Per Sec, Cache Hit Rate, CGI Requests Per Sec, Client and Server Errors, Client Error Outliers, Client Errors by Server, Client OS Platforms, Counters_HTTPServiceRequestQueues Log Parser, Cumulative Client Request Percentiles, Cumulative Response Time Percentiles, Cumulative User Request Percentiles, Current Application Pool Uptime (Days), Current Queue Size, Delete Requests, Desktop OS Version, Error Events, Files Received Per Sec, Files Sent Per Sec, Get Requests, Get Requests Per Sec, Highly Malicious Threat Table, HTTP Methods, IIS - All HTTP Response Codes with their Count, IIS - Client Errors (4xx response codes) per Day, IIS - HTTP Status Code Summary over time, IIS - Malicious URL Requests, IIS - Robots, IIS - Slowest URLs by Average Time, IIS - Time Taken to Serve Requests, IIS - Top 404 URLs, IIS - Top Browsers, IIS - Top Clients, IIS - Top Clients Causing Errors, IIS - Top URLs by Count, IIS - Traffic Volume Served per Day, IIS Site Uptime, ISAPI Extension Requests Per Sec, Media Types Served, Method, Non 200 Response Status Codes, Non Anonymous Users, NonAnonymous Users, Number of Requests - Time Compare, Popular Mobile Device Versions, Post Requests, Post Requests Per Sec, Put Requests, Queue Rejected Requests, Queue Size, Reason Phrase - Time Compare, Redirections by Server, Rejection Rate, Request Outlier, Requests, Requests by App Over Time, Requests Per Sec (All methods), Requests Stats by Client IP, Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors by Server, Server Errors Over Time, Site Uptime, Site Uptime, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Threat Table, Top 10 Bots Observed, Top 10 Queries, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Pages, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 URLs, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Requests by Users, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Total Bytes Transferred Per Sec, Total Requests Per Sec, Traffic Distribution by Server, Unique Visitors, Unique Visitors Outlier, US Visitors, Visitor Location, Visitor Platforms, Visitors by US Region Over Time, Visitors Platforms Over Time, Visits by Country Over Time, W3SVC_WebService Log Parser, Worldwide Visitors


