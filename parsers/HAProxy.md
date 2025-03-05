# Parsers For HAProxy

## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)/1:\s+(?<msg>.*)"
 `n```
### Use Cases:
Client Locations with Critical Errors, Critical Errors, Responses Over Time, Top 5 Clients Causing Errors, Top 5 URLs with Errors, Visitor Locations



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
| parse regex field=referrer "(?:\?|&)(?:p|q|wd|searchfor)=(?<search_term>[^=]+?)(?:&|$)" nodrop 
 `n```
### Use Cases:
Backend Errors, Bytes Served, Bytes Served - Outlier, Client Errors, Client Locations - 4xx Errors, Client Locations with Critical Errors, Critical Errors, Highly Malicious Threats, HTTP Methods, Media Types Served, Non 200 Response Status Codes, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Responses Over Time, Server Down Events, Server Errors, Threat Count, Threat Locations, Threats by Actors, Threats by Malicious Confidence, Threats by Source, Top 10 Search Terms from Popular Search Engines, Top 10 Threats, Top 5 Clients Causing 4xx Errors, Top 5 Clients Causing Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 Urls, Top 5 URLs Causing 4xx Responses, Top 5 URLs with Errors, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Visitor Locations, Visitor Locations - One Day Time Comparison, Visitor Platforms, Visits by Country Over Time, Visits by US Regions Over Time, Worldwide



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
 `n```
### Use Cases:
Backend Errors, Bytes Served, Bytes Served - Outlier, Client Errors, Client Locations - 4xx Errors, Client Locations with Critical Errors, Critical Errors, Highly Malicious Threats, HTTP Methods, Media Types Served, Non 200 Response Status Codes, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Responses Over Time, Server Down Events, Server Errors, Threat Count, Threat Locations, Threats by Actors, Threats by Malicious Confidence, Threats by Source, Top 10 Search Terms from Popular Search Engines, Top 10 Threats, Top 5 Clients Causing 4xx Errors, Top 5 Clients Causing Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 Urls, Top 5 URLs Causing 4xx Responses, Top 5 URLs with Errors, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Visitor Locations, Visitor Locations - One Day Time Comparison, Visitor Platforms, Visits by Country Over Time, Visits by US Regions Over Time, Worldwide



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
| json field=raw "labels[*].name" as label_name 
 `n```
### Use Cases:
Backend Errors, Bytes Served - Outlier, Client Errors, Client Locations with Critical Errors, Critical Errors, Highly Malicious Threats, Number of Visitors, Responses Over Time, Server Down Events, Server Errors, Threat Count, Threat Locations, Threats by Actors, Threats by Malicious Confidence, Threats by Source, Top 10 Threats, Top 5 Clients Causing Errors, Top 5 Highly Malicious URLs, Top 5 URLs with Errors, Visitor Locations



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
| parse regex field=request "^/[^\?]+?\.(?<type>[a-zA-Z]{2,4})$" nodrop
| parse regex field=request "/\S+?(?<email_prefix>(?:%40|@)[^.]+?)\.\w+" nodrop
 `n```
### Use Cases:
Backend Errors, Bytes Served, Bytes Served - Outlier, Client Errors, Client Locations - 4xx Errors, Client Locations with Critical Errors, Critical Errors, Highly Malicious Threats, HTTP Methods, Media Types Served, Non 200 Response Status Codes, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Responses Over Time, Server Down Events, Server Errors, Threat Count, Threat Locations, Threats by Actors, Threats by Malicious Confidence, Threats by Source, Top 10 Threats, Top 5 Clients Causing 4xx Errors, Top 5 Clients Causing Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 Urls, Top 5 URLs Causing 4xx Responses, Top 5 URLs with Errors, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Visitor Locations, Visitor Locations - One Day Time Comparison, Visitor Platforms, Visits by Country Over Time, Visits by US Regions Over Time, Worldwide



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"| where status_code matches "4*" or status_code matches "5*" and  !isEmpty(c_ip) |count by status_code,request
 `n```
### Use Cases:
Top 5 URLs with Errors, Visitor Locations



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message "\s+backend\s+(?<frontend_name>\S+)\s+(?<msg>.*)" nodrop
 `n```
### Use Cases:
Backend Errors, Client Locations with Critical Errors, Critical Errors, Responses Over Time, Server Down Events, Top 5 Clients Causing Errors, Top 5 URLs with Errors, Visitor Locations



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message "\s+Server\s+(?<frontend_name>\S+)/(?<backend_name>\S+)\s+is\s+DOWN,\s+reason:\s+(?<reason>.*),\s+info:\s+\"(?<info>.*)\",\s+check\s+duration:\s+(?<check_duration>\d+)ms.\s+(?<active>\d+)\s+active\s+and\s+(?<backup>\d+)\s+backup\s+servers\s+left.\s+(?<sessions>\d+) sessions\s+active,\s+(?<requeued>\d+)\s+requeued,\s+(?<remaining>\d+)\s+remaining\s+in\s+queue." nodrop
 `n```
### Use Cases:
Client Locations with Critical Errors, Critical Errors, Responses Over Time, Server Down Events, Top 5 Clients Causing Errors, Top 5 URLs with Errors, Visitor Locations



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=haproxy_log_message "(?<syslog_host>[\w\-\.]+) (?<ps>\w+)\[(?<pid>\d+)\]: (?<c_ip>[\w\.]+):(?<c_port>\d+) (?<rs>[^\"]*) (?<TR1>\d+)/(?<Tw>\d+)/(?<Tc>\d+)/(?<Tr>\d+)/(?<Ta>\d+) (?<status_code>\d+) (?<bytes>\d+) (?<req_cookie>\S+) (?<res_cookie>\S+) (?<t_state>[\w-]+) (?<actconn>\d+)/(?<feconn>\d+)/(?<beconn>\d+)\/(?<srv_conn>\d+)/(?<retries>\d+) (?<srv_queue>\d+)/(?<backend_queue>\d+) \"(?<method>\w+) (?<request>[^\"]*) (?<http_version>\w+)"
 `n```
### Use Cases:
Backend Errors, Bytes Served - Outlier, Client Errors, Client Locations - 4xx Errors, Client Locations with Critical Errors, Critical Errors, Highly Malicious Threats, Non 200 Response Status Codes, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Responses Over Time, Server Down Events, Server Errors, Threat Count, Threat Locations, Threats by Actors, Threats by Malicious Confidence, Threats by Source, Top 10 Threats, Top 5 Clients Causing 4xx Errors, Top 5 Clients Causing Errors, Top 5 Highly Malicious URLs, Top 5 URLs Causing 4xx Responses, Top 5 URLs with Errors, Traffic Distribution by Server, Traffic Volume and Bytes Served, Visitor Locations, Visitor Locations - One Day Time Comparison, Visitor Platforms



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=haproxy_log_message "(?<syslog_host>[\w\-\.]+) (?<ps>\w+)\[(?<pid>\d+)\]: (?<c_ip>[\w\.]+):(?<c_port>\d+) (?<rs>[^\"]*) (?<TR1>\d+)/(?<Tw>\d+)/(?<Tc>\d+)/(?<Tr>\d+)/(?<Ta>\d+) (?<status_code>\d+) (?<bytes>\d+) (?<req_cookie>\S+) (?<res_cookie>\S+) (?<t_state>[\w-]+) (?<actconn>\d+)/(?<feconn>\d+)/(?<beconn>\d+)\/(?<srv_conn>\d+)/(?<retries>\d+) (?<srv_queue>\d+)/(?<backend_queue>\d+) \"(?<method>\w+) (?<request>[^\"]*) (?<http_version>\w+)" 
 `n```
### Use Cases:
Backend Errors, Bytes Served - Outlier, Client Errors, Client Locations - 4xx Errors, Client Locations with Critical Errors, Critical Errors, Highly Malicious Threats, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Responses Over Time, Server Down Events, Server Errors, Threat Count, Threat Locations, Threats by Actors, Threats by Malicious Confidence, Threats by Source, Top 10 Threats, Top 5 Clients Causing Errors, Top 5 Highly Malicious URLs, Top 5 URLs with Errors, Traffic Distribution by Server, Traffic Volume and Bytes Served, Visitor Locations, Visitor Locations - One Day Time Comparison, Visitor Platforms



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=haproxy_log_message "(?<syslog_host>[\w\-\.]+) (?<ps>\w+)\[(?<pid>\d+)\]: (?<c_ip>[\w\.]+):(?<c_port>\d+) (?<rs>[^\"]*) (?<TR1>\d+)/(?<Tw>\d+)/(?<Tc>\d+)/(?<Tr>\d+)/(?<Ta>\d+) (?<status_code>\d+) (?<bytes>\d+) (?<req_cookie>\S+) (?<res_cookie>\S+) (?<t_state>[\w-]+) (?<actconn>\d+)/(?<feconn>\d+)/(?<beconn>\d+)\/(?<srv_conn>\d+)/(?<retries>\d+) (?<srv_queue>\d+)/(?<backend_queue>\d+) \{(?<referer>.*)|(?<user_agent>.*)\} \"(?<method>\w+) (?<request>[^\"]*) (?<http_version>\w+)"
 `n```
### Use Cases:
Backend Errors, Bytes Served - Outlier, Client Errors, Client Locations with Critical Errors, Critical Errors, Highly Malicious Threats, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Responses Over Time, Server Down Events, Server Errors, Threat Count, Threat Locations, Threats by Actors, Threats by Malicious Confidence, Threats by Source, Top 10 Threats, Top 5 Clients Causing Errors, Top 5 Highly Malicious URLs, Top 5 URLs with Errors, Traffic Distribution by Server, Traffic Volume and Bytes Served, Visitor Locations, Visitor Locations - One Day Time Comparison, Visitor Platforms



## Parser:
```
| parse field=metric haproxy_http_response_* as code | `n```
### Use Cases:
Backend Errors, Bytes Served, Bytes Served - Outlier, Client Errors, Client Locations - 4xx Errors, Client Locations with Critical Errors, Critical Errors, Highly Malicious Threats, HTTP Methods, HTTP Response Codes, Media Types Served, Non 200 Response Status Codes, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Responses Over Time, Server Down Events, Server Errors, Threat Count, Threat Locations, Threats by Actors, Threats by Malicious Confidence, Threats by Source, Top 10 Search Terms from Popular Search Engines, Top 10 Threats, Top 5 Clients Causing 4xx Errors, Top 5 Clients Causing Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 Urls, Top 5 URLs Causing 4xx Responses, Top 5 URLs with Errors, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Visitor Locations, Visitor Locations - One Day Time Comparison, Visitor Platforms, Visits by Country Over Time, Visits by US Regions Over Time, Worldwide


