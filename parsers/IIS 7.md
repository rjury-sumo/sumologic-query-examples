# Parsers For IIS 7

## Parser:
```
| parse regex "(?:80|443) (?:\w+|-+|\\+)+ (?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) "
 
```
### Use Cases:
400 and 500 Server Errors, IIS 7 - All HTTP Response Codes with their Count, IIS 7 - Client Errors (4xx response codes) per Day, IIS 7 - HTTP Status Code Summary over time, IIS 7 - Malicious URL Requests, IIS 7 - Robots, IIS 7 - Slowest URLs by Average Time, IIS 7 - Time Taken to Serve Requests, IIS 7 - Top 404 URLs, IIS 7 - Top Browsers, IIS 7 - Top Clients, IIS 7 - Top Clients Causing Errors, IIS 7 - Top URLs by Count, IIS 7 - Traffic Volume Served per Day, OS Platform Breakdown, Response Time Histogram, Top Apps by Request, Visits by Country



## Parser:
```
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" nodrop 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
| parse regex "(?<s_sitename>\S+?) (?<cs_computername>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_version>\S+?) (?<cs_User_Agent>\S+?) (?<cs_cookie>\S+?) (?<cs_referer>\S+?) (?<cs_host>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
 
```
### Use Cases:
IIS 7 - All HTTP Response Codes with their Count, IIS 7 - Client Errors (4xx response codes) per Day, IIS 7 - HTTP Status Code Summary over time, IIS 7 - Malicious URL Requests, IIS 7 - Robots, IIS 7 - Slowest URLs by Average Time, IIS 7 - Time Taken to Serve Requests, IIS 7 - Top 404 URLs, IIS 7 - Top Browsers, IIS 7 - Top Clients, IIS 7 - Top Clients Causing Errors, IIS 7 - Top URLs by Count



## Parser:
```
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" nodrop 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
| parse regex "(?<s_sitename>\S+?) (?<cs_computername>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_version>\S+?) (?<cs_User_Agent>\S+?) (?<cs_cookie>\S+?) (?<cs_referer>\S+?) (?<cs_host>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop 
 
```
### Use Cases:
IIS 7 - All HTTP Response Codes with their Count, IIS 7 - Client Errors (4xx response codes) per Day, IIS 7 - HTTP Status Code Summary over time, IIS 7 - Malicious URL Requests, IIS 7 - Robots, IIS 7 - Slowest URLs by Average Time, IIS 7 - Time Taken to Serve Requests, IIS 7 - Top 404 URLs, IIS 7 - Top Browsers, IIS 7 - Top Clients, IIS 7 - Top Clients Causing Errors, IIS 7 - Top URLs by Count, IIS 7 - Traffic Volume Served per Day



## Parser:
```
| parse regex "\d+-\d+-\d+ \d+:\d+:\d+ (?<server_ip>\S+) (?<method>\S+) (?<cs_uri_stem>/\S+?) "
| parse regex field=cs_uri_stem "/(?<app>[^\./]+)/"
 
```
### Use Cases:
400 and 500 Server Errors, IIS 7 - All HTTP Response Codes with their Count, IIS 7 - Client Errors (4xx response codes) per Day, IIS 7 - HTTP Status Code Summary over time, IIS 7 - Malicious URL Requests, IIS 7 - Robots, IIS 7 - Slowest URLs by Average Time, IIS 7 - Time Taken to Serve Requests, IIS 7 - Top 404 URLs, IIS 7 - Top Browsers, IIS 7 - Top Clients, IIS 7 - Top Clients Causing Errors, IIS 7 - Top URLs by Count, IIS 7 - Traffic Volume Served per Day, OS Platform Breakdown, Response Time Histogram, Top Apps by Request



## Parser:
```
| parse regex "\d+-\d+-\d+ \d+:\d+:\d+ (?<server_ip>\S+) (?<method>\S+) (?<cs_uri_stem>/\S+?) \S+ \d+ (?<user>\S+) (?<client_ip>[\.\d]+) "
 
```
### Use Cases:
400 and 500 Server Errors, IIS 7 - All HTTP Response Codes with their Count, IIS 7 - Client Errors (4xx response codes) per Day, IIS 7 - HTTP Status Code Summary over time, IIS 7 - Malicious URL Requests, IIS 7 - Robots, IIS 7 - Slowest URLs by Average Time, IIS 7 - Time Taken to Serve Requests, IIS 7 - Top 404 URLs, IIS 7 - Top Browsers, IIS 7 - Top Clients, IIS 7 - Top Clients Causing Errors, IIS 7 - Top URLs by Count, IIS 7 - Traffic Volume Served per Day, Media Types Requested Over Time, OS Platform Breakdown, OSes and Browsers, Response Time Histogram, Top Apps by Request, Top Requested Documents, Visits by Country



## Parser:
```
| parse regex "\d+-\d+-\d+ \d+:\d+:\d+ (?<server_ip>\S+) (?<method>\S+) (?<cs_uri_stem>/\S+?) \S+ \d+ (?<user>\S+) (?<client_ip>[\.\d]+) "
| parse regex "(?<sc_status>\d+) (?<sc_substatus>\d+) (?<sc_win32_status>\d+) (?<time_taken>\d+)$"
 
```
### Use Cases:
400 and 500 Server Errors, IIS 7 - All HTTP Response Codes with their Count, IIS 7 - Client Errors (4xx response codes) per Day, IIS 7 - HTTP Status Code Summary over time, IIS 7 - Malicious URL Requests, IIS 7 - Robots, IIS 7 - Slowest URLs by Average Time, IIS 7 - Time Taken to Serve Requests, IIS 7 - Top 404 URLs, IIS 7 - Top Browsers, IIS 7 - Top Clients, IIS 7 - Top Clients Causing Errors, IIS 7 - Top URLs by Count, IIS 7 - Traffic Volume Served per Day, Response Time Histogram



## Parser:
```
| parse regex "\d+-\d+-\d+ \d+:\d+:\d+ (?<server_ip>\S+) (?<method>\S+) (?<cs_uri_stem>/\S+?) \S+ \d+ (?<user>\S+) (?<client_ip>[\.\d]+) "
| parse regex "\d+ \d+ \d+ (?<time_taken>\d+)$"
 
```
### Use Cases:
IIS 7 - All HTTP Response Codes with their Count, IIS 7 - Client Errors (4xx response codes) per Day, IIS 7 - HTTP Status Code Summary over time, IIS 7 - Malicious URL Requests, IIS 7 - Robots, IIS 7 - Slowest URLs by Average Time, IIS 7 - Time Taken to Serve Requests, IIS 7 - Top 404 URLs, IIS 7 - Top Browsers, IIS 7 - Top Clients, IIS 7 - Top Clients Causing Errors, IIS 7 - Top URLs by Count, IIS 7 - Traffic Volume Served per Day, Response Time Histogram



## Parser:
```
| parse regex "\d+-\d+-\d+ \d+:\d+:\d+ (?<server_ip>\S+) (?<method>\S+) (?<cs_uri_stem>/\S+?) \S+ \d+ (?<user>\S+) (?<client_ip>[\.\d]+) " 
| parse regex field=cs_uri_stem "\.(?<media_type>[A-Za-z]+)$" 
 
```
### Use Cases:
400 and 500 Server Errors, IIS 7 - All HTTP Response Codes with their Count, IIS 7 - Client Errors (4xx response codes) per Day, IIS 7 - HTTP Status Code Summary over time, IIS 7 - Malicious URL Requests, IIS 7 - Robots, IIS 7 - Slowest URLs by Average Time, IIS 7 - Time Taken to Serve Requests, IIS 7 - Top 404 URLs, IIS 7 - Top Browsers, IIS 7 - Top Clients, IIS 7 - Top Clients Causing Errors, IIS 7 - Top URLs by Count, IIS 7 - Traffic Volume Served per Day, Media Types Requested Over Time, OS Platform Breakdown, OSes and Browsers, Response Time Histogram, Top Apps by Request, Visits by Country



## Parser:
```
| parse regex "\d+-\d+-\d+ \d+:\d+:\d+ (?<server_ip>\S+) (?<method>\S+) (?<cs_uri_stem>/\S+?) \S+ \d+ (?<user>\S+) (?<client_ip>[\.\d]+) (?<agent>\S+) "
 
```
### Use Cases:
400 and 500 Server Errors, IIS 7 - All HTTP Response Codes with their Count, IIS 7 - Client Errors (4xx response codes) per Day, IIS 7 - HTTP Status Code Summary over time, IIS 7 - Malicious URL Requests, IIS 7 - Robots, IIS 7 - Slowest URLs by Average Time, IIS 7 - Time Taken to Serve Requests, IIS 7 - Top 404 URLs, IIS 7 - Top Browsers, IIS 7 - Top Clients, IIS 7 - Top Clients Causing Errors, IIS 7 - Top URLs by Count, IIS 7 - Traffic Volume Served per Day, OS Platform Breakdown, Response Time Histogram



## Parser:
```
| parse regex "\d+-\d+-\d+ \d+:\d+:\d+ (?<server_ip>\S+) (?<method>\S+) (?<cs_uri_stem>/\S+?) \S+ \d+ (?<user>\S+) (?<client_ip>[\.\d]+) (?<agent>\S+) " 
 
```
### Use Cases:
400 and 500 Server Errors, IIS 7 - All HTTP Response Codes with their Count, IIS 7 - Client Errors (4xx response codes) per Day, IIS 7 - HTTP Status Code Summary over time, IIS 7 - Malicious URL Requests, IIS 7 - Robots, IIS 7 - Slowest URLs by Average Time, IIS 7 - Time Taken to Serve Requests, IIS 7 - Top 404 URLs, IIS 7 - Top Browsers, IIS 7 - Top Clients, IIS 7 - Top Clients Causing Errors, IIS 7 - Top URLs by Count, IIS 7 - Traffic Volume Served per Day, Media Types Requested Over Time, OS Platform, OS Platform Breakdown, OSes and Browsers, Response Time Histogram, Top Apps by Request, Top Requested Documents, Visits by Country


