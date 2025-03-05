# Parsers For IIS 10 - OpenTelemetry

## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message  "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Average Redirection Time, Average Response Time, Avg. Response Time, Client and Server Errors, Client Error Outliers, Client Errors (4xx) by Server, Client OS Platforms, Cumulative Response Time Percentiles, Delete Requests, Error Events, Get Requests, Method, Non 200 Response Status Codes, Number of Requests - Time Compare, Post Requests, Put Requests, Reason Phrase - Time Compare, Redirections (3xx) by Server, Request Outlier, Requests, Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors (5xx) by Server, Server Errors Over Time, Threat Count, Top 10 Bots Observed, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 20 Slowest Pages, Top 5 Clients Causing 4xx Errors, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Traffic Distribution by Server, Unique Visitors Outlier, Visitor Location



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
4xx Status Codes by Server, 5xx Status Codes by Server, Average Redirection Time, Average Response Time, Avg. Response Time, Client and Server Errors, Client Error Outliers, Client Errors (4xx) by Server, Client OS Platforms, Cumulative Response Time Percentiles, Delete Requests, Error Events, Get Requests, Method, Number of Requests - Time Compare, Post Requests, Put Requests, Reason Phrase - Time Compare, Redirections (3xx) by Server, Request Outlier, Requests, Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors (5xx) by Server, Server Errors Over Time, Threat Count, Top 10 Bots Observed, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 20 Slowest Pages, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Traffic Distribution by Server, Unique Visitors Outlier, Visitor Location



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<c_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<c_port>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<s_port>\S+?) (?<protocol_version>\S+?) (?<verb>\S+?) (?<cookedurl_query>\S+?) (?<streamid>\S+?) (?<Protocol_Status>\S+?) (?<SiteId>\S+?) (?<Reason_Phrase>\S+?) (?<Queue_Name>\S+?)"
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Avg. Response Time, Client and Server Errors, Client OS Platforms, Reason Phrase - Time Compare, Requests, Response Time Histogram, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Top Client IPs, Top Server IPs, Visitor Location



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<c_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<c_port>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<s_port>\S+?) (?<protocol_version>\S+?) (?<verb>\S+?) (?<cookedurl_query>\S+?) (?<streamid>\S+?) (?<Protocol_Status>\S+?) (?<SiteId>\S+?) (?<Reason_Phrase>\S+?) (?<Queue_Name>\S+?)" 
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Avg. Response Time, Client and Server Errors, Client OS Platforms, Error Events, Reason Phrase - Time Compare, Requests, Response Time Histogram, Threat Count, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Server IPs, Top Verbs, Visitor Location



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Average Redirection Time, Average Response Time, Avg. Response Time, Browsers and Operating Systems, Client and Server Errors, Client Error Outliers, Client Errors (4xx) by Server, Client OS Platforms, Cumulative Client Request Percentiles, Cumulative Response Time Percentiles, Cumulative User Request Percentiles, Delete Requests, Desktop OS Version, Error Events, Get Requests, Highly Malicious Threat Table, HTTP Methods, Media Types Served, Method, Non 200 Response Status Codes, Number of Requests - Time Compare, Popular Mobile Device Versions, Post Requests, Put Requests, Reason Phrase - Time Compare, Redirections (3xx) by Server, Request Outlier, Requests, Requests by App Over Time, Requests Stats by Client IP, Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors (5xx) by Server, Server Errors Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Threat Table, Top 10 Bots Observed, Top 10 Queries, Top 10 Search Terms from Popular Search Engines, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 20 Slowest Pages, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 URLs, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Requests by Users, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Traffic Distribution by Server, Unique Visitors, Unique Visitors Outlier, US Visitors, Visitor Location, Visitor Platforms, Visitors by US Region Over Time, Visitors Platforms Over Time, Visits by Country Over Time, Worldwide Visitors



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| json field=raw "labels[*].name" as label_name
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Average Redirection Time, Average Response Time, Avg. Response Time, Client and Server Errors, Client Error Outliers, Client Errors (4xx) by Server, Client OS Platforms, Cumulative Response Time Percentiles, Delete Requests, Error Events, Get Requests, Highly Malicious Threat Table, Method, Non 200 Response Status Codes, Number of Requests - Time Compare, Post Requests, Put Requests, Reason Phrase - Time Compare, Redirections (3xx) by Server, Request Outlier, Requests, Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors (5xx) by Server, Server Errors Over Time, Threat Breakdown by Sources, Threat Count, Threat Location, Top 10 Bots Observed, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 20 Slowest Pages, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Traffic Distribution by Server, Unique Visitors Outlier, Visitor Location



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| parse regex field=cs_referer "(?:\?|&)(?:p|q|wd|searchfor)=(?<search_term>[^=]+?)(?:&|$)" nodrop 
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Average Redirection Time, Average Response Time, Avg. Response Time, Browsers and Operating Systems, Client and Server Errors, Client Error Outliers, Client Errors (4xx) by Server, Client OS Platforms, Cumulative Client Request Percentiles, Cumulative Response Time Percentiles, Cumulative User Request Percentiles, Delete Requests, Desktop OS Version, Error Events, Get Requests, Highly Malicious Threat Table, HTTP Methods, Media Types Served, Method, Non 200 Response Status Codes, Number of Requests - Time Compare, Popular Mobile Device Versions, Post Requests, Put Requests, Reason Phrase - Time Compare, Redirections (3xx) by Server, Request Outlier, Requests, Requests by App Over Time, Requests Stats by Client IP, Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors (5xx) by Server, Server Errors Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Threat Table, Top 10 Bots Observed, Top 10 Queries, Top 10 Search Terms from Popular Search Engines, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 20 Slowest Pages, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Requests by Users, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Traffic Distribution by Server, Unique Visitors, Unique Visitors Outlier, US Visitors, Visitor Location, Visitor Platforms, Visitors by US Region Over Time, Visitors Platforms Over Time, Visits by Country Over Time, Worldwide Visitors



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| parse regex field=cs_uri_stem "/(?<app>[^\./]+?)(?:/|$)" nodrop
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Average Redirection Time, Average Response Time, Avg. Response Time, Client and Server Errors, Client Error Outliers, Client Errors (4xx) by Server, Client OS Platforms, Cumulative Response Time Percentiles, Delete Requests, Error Events, Get Requests, Highly Malicious Threat Table, Method, Non 200 Response Status Codes, Number of Requests - Time Compare, Post Requests, Put Requests, Reason Phrase - Time Compare, Redirections (3xx) by Server, Request Outlier, Requests, Requests by App Over Time, Requests Stats by Client IP, Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors (5xx) by Server, Server Errors Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Threat Table, Top 10 Bots Observed, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 20 Slowest Pages, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Traffic Distribution by Server, Unique Visitors Outlier, Visitor Location



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| parse regex field=cs_uri_stem "\.(?<media_type>[A-Za-z]+)$" 
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Average Redirection Time, Average Response Time, Avg. Response Time, Browsers and Operating Systems, Client and Server Errors, Client Error Outliers, Client Errors (4xx) by Server, Client OS Platforms, Cumulative Client Request Percentiles, Cumulative Response Time Percentiles, Cumulative User Request Percentiles, Delete Requests, Desktop OS Version, Error Events, Get Requests, Highly Malicious Threat Table, Media Types Served, Method, Non 200 Response Status Codes, Number of Requests - Time Compare, Popular Mobile Device Versions, Post Requests, Put Requests, Reason Phrase - Time Compare, Redirections (3xx) by Server, Request Outlier, Requests, Requests by App Over Time, Requests Stats by Client IP, Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors (5xx) by Server, Server Errors Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Threat Table, Top 10 Bots Observed, Top 10 Queries, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 20 Slowest Pages, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Requests by Users, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Traffic Distribution by Server, Unique Visitors, Unique Visitors Outlier, US Visitors, Visitor Location, Visitor Platforms, Visitors by US Region Over Time, Visitors Platforms Over Time, Visits by Country Over Time, Worldwide Visitors



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
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Average Redirection Time, Average Response Time, Avg. Response Time, Client and Server Errors, Client Error Outliers, Client Errors (4xx) by Server, Client OS Platforms, Cumulative Client Request Percentiles, Cumulative Response Time Percentiles, Cumulative User Request Percentiles, Delete Requests, Desktop OS Version, Error Events, Get Requests, Highly Malicious Threat Table, Method, Non 200 Response Status Codes, Number of Requests - Time Compare, Popular Mobile Device Versions, Post Requests, Put Requests, Reason Phrase - Time Compare, Redirections (3xx) by Server, Request Outlier, Requests, Requests by App Over Time, Requests Stats by Client IP, Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors (5xx) by Server, Server Errors Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Threat Table, Top 10 Bots Observed, Top 10 Queries, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 20 Slowest Pages, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Requests by Users, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Traffic Distribution by Server, Unique Visitors, Unique Visitors Outlier, Visitor Location, Visitor Platforms



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| parse regex field=cs_User_Agent "(?<os>Windows)\+NT\+(?<version>[\d.]+?)(?:;|\))" nodrop 
| parse regex field=cs_User_Agent "(?<os>Mac OS)\+(?<version>[X\+\d.\_]+?)(?:;|\))" nodrop 
| parse regex field=cs_User_Agent "(?<os>Linux)\+(?<version>[x\d.\_]+?)(?:;|\))" nodrop 
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Average Redirection Time, Average Response Time, Avg. Response Time, Client and Server Errors, Client Error Outliers, Client Errors (4xx) by Server, Client OS Platforms, Cumulative Client Request Percentiles, Cumulative Response Time Percentiles, Cumulative User Request Percentiles, Delete Requests, Desktop OS Version, Error Events, Get Requests, Highly Malicious Threat Table, Method, Non 200 Response Status Codes, Number of Requests - Time Compare, Post Requests, Put Requests, Reason Phrase - Time Compare, Redirections (3xx) by Server, Request Outlier, Requests, Requests by App Over Time, Requests Stats by Client IP, Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors (5xx) by Server, Server Errors Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Threat Table, Top 10 Bots Observed, Top 10 Queries, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 20 Slowest Pages, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Requests by Users, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Traffic Distribution by Server, Unique Visitors, Unique Visitors Outlier, Visitor Location, Visitor Platforms



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Average Redirection Time, Average Response Time, Avg. Response Time, Client and Server Errors, Client Error Outliers, Client Errors (4xx) by Server, Client OS Platforms, Cumulative Response Time Percentiles, Cumulative User Request Percentiles, Delete Requests, Error Events, Get Requests, Highly Malicious Threat Table, Method, Non 200 Response Status Codes, Number of Requests - Time Compare, Post Requests, Put Requests, Reason Phrase - Time Compare, Redirections (3xx) by Server, Request Outlier, Requests, Requests by App Over Time, Requests Stats by Client IP, Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors (5xx) by Server, Server Errors Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Threat Table, Top 10 Bots Observed, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 20 Slowest Pages, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Traffic Distribution by Server, Unique Visitors Outlier, Visitor Location



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
| json field=raw "labels[*].name" as label_name
```
### Use Cases:
4xx Errors - Client Locations, 4xx Status Codes by Server, 5xx Status Codes by Server, Average Redirection Time, Average Response Time, Avg. Response Time, Client and Server Errors, Client Error Outliers, Client Errors (4xx) by Server, Client OS Platforms, Cumulative Response Time Percentiles, Delete Requests, Error Events, Get Requests, Highly Malicious Threat Table, Method, Non 200 Response Status Codes, Number of Requests - Time Compare, Post Requests, Put Requests, Reason Phrase - Time Compare, Redirections (3xx) by Server, Request Outlier, Requests, Requests Stats by Server, Response Codes Over Time, Response Time (Avg) by Server, Response Time (Avg) Outlier, Response Time Histogram, Server Error Outliers, Server Errors (5xx) by Server, Server Errors Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Location, Threat Table, Top 10 Bots Observed, Top 10 URLs Facing 404 Errors, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 20 Slowest Pages, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top Apps by Request, Top Client IPs, Top Cooked URL and Query, Top Protocol Status, Top Protocol Versions, Top Reason Phrase, Top Request Details by Reason, Top Server Errors by Server, Top Server IPs, Top Slowest Get Requests, Top Slowest Post Requests, Top Verbs, Traffic Distribution by Server, Unique Visitors Outlier, Visitor Location


