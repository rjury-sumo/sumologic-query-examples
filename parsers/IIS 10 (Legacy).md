# Parsers For IIS 10 (Legacy)

## Parser:
```
| parse "Name = \"*\";" as Name nodrop
| parse "ArrivalRate = \"*\";" as ArrivalRate nodrop
| parse "CacheHitRate = \"*\";" as CacheHitRate nodrop
```
### Use Cases:
Counters_HTTPServiceRequestQueues Log Parser



## Parser:
```
| parse "Name = \"*\";" as Name nodrop
| parse "BytesReceivedPersec = \"*\";" as BytesReceivedPersec nodrop
| parse "TotalMethodRequestsPersec = *;" as TotalMethodRequestsPersec nodrop
```
### Use Cases:
Counters_HTTPServiceRequestQueues Log Parser, W3SVC_WebService Log Parser



## Parser:
```
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```
### Use Cases:
Counters_HTTPServiceRequestQueues Log Parser, IIS 10 - All HTTP Response Codes with their Count, IIS 10 - Client Errors (4xx response codes) per Day, IIS 10 - HTTP Status Code Summary over time, IIS 10 - Malicious URL Requests, IIS 10 - Robots, IIS 10 - Slowest URLs by Average Time, IIS 10 - Time Taken to Serve Requests, IIS 10 - Top 404 URLs, IIS 10 - Top Browsers, IIS 10 - Top Clients, IIS 10 - Top Clients Causing Errors, IIS 10 - Top URLs by Count, IIS 10 - Traffic Volume Served per Day, W3SVC_WebService Log Parser



## Parser:
```
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```
### Use Cases:
Counters_HTTPServiceRequestQueues Log Parser, IIS 10 - All HTTP Response Codes with their Count, IIS 10 - Client Errors (4xx response codes) per Day, IIS 10 - HTTP Status Code Summary over time, IIS 10 - Malicious URL Requests, IIS 10 - Robots, IIS 10 - Slowest URLs by Average Time, IIS 10 - Time Taken to Serve Requests, IIS 10 - Top 404 URLs, IIS 10 - Top Clients Causing Errors, W3SVC_WebService Log Parser



## Parser:
```
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"  
```
### Use Cases:
Counters_HTTPServiceRequestQueues Log Parser, IIS 10 - All HTTP Response Codes with their Count, IIS 10 - Client Errors (4xx response codes) per Day, IIS 10 - HTTP Status Code Summary over time, IIS 10 - Slowest URLs by Average Time, IIS 10 - Time Taken to Serve Requests, W3SVC_WebService Log Parser


