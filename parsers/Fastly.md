# Parsers For Fastly

## Parser:
```
| json "client_ip", "cache_status", "waf_logged", "waf_block", "waf_passed", "waf_anomaly_score" as client_ip, cache_status, waf_logged, waf_block, waf_passed, waf_anomaly_score nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "client_ip", "waf_executed", "waf_rule_id" as client_ip, waf_executed, waf_rule_id
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "client_ip", "waf_executed", "waf_rule_id" as client_ip, waf_executed, waf_rule_id nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "client_ip", "waf_executed", "waf_rule_id", "url" as client_ip, waf_executed, waf_rule_id, url nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "client_ip","cache_status","waf_block" as client_ip, cache_status, waf_block nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code", "geo_datacenter","client_ip","status" as user_agent, time_elapsed, url, geo_region, geo_country_code, geo_datacenter, src_ip, status
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip
| json "is_h2"
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip
| json "is_tls"
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip 
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip", "cache_status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, cache_status
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip", "cache_status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, cache_status 
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip", "content_type" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, content_type  
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip", "request_referer" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, request_referer
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","cache_status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip , cache_status
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","cache_status", "status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, cache_status, status
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","cache_status","geo_datacenter" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip , cache_status, geo_datacenter
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","req_header_size","req_body_size" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip,req_header_size,req_body_size 
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","req_header_size","resp_body_size" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip,req_header_size,resp_body_size 
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","request","status","origin_host" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, method, status, origin_host   
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status", "origin_host", "cache_status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status, origin_host, cache_status
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status", "request" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status, method 
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status","cache_status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status, cache_status
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "url", "status", "waf_executed", "waf_block" as url, status, waf_executed, waf_block nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "url", "waf_logged", "waf_passed", "waf_block", "waf_anomaly_score","waf_executed" as url, waf_logged, waf_passed, waf_block, waf_anomaly_score, waf_executed nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "waf_executed" as waf_executed nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "waf_executed", "client_ip" as waf_executed, client_ip nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "waf_executed", "waf_anomaly_score" as waf_executed, waf_anomaly_score nodrop 
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "waf_executed", "waf_anomaly_score", "waf_rule_id" as waf_executed, waf_anomaly_score, waf_rule_id nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "waf_executed", "waf_http_score" as waf_executed, waf_http_score nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "waf_executed", "waf_lfi_score" as waf_executed, waf_lfi_score nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "waf_executed", "waf_php_score" as waf_executed, waf_php_score nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "waf_executed", "waf_rce_score" as waf_executed, waf_rce_score nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "waf_executed", "waf_rfi_score" as waf_executed, waf_rfi_score nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "waf_executed", "waf_session_fixation_score" as waf_executed, waf_session_fixation_score nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "waf_executed", "waf_sql_score" as waf_executed, waf_sql_score nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "waf_executed", "waf_xss_score" as waf_executed, waf_xss_score nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "waf_failures", "waf_logged", "waf_passed", "waf_anomaly_score", "waf_block", "waf_executed" as waf_failures, waf_logged, waf_passed, waf_anomaly_score, waf_block, waf_executed nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "waf_rule_id", "waf_block", "waf_message", "waf_executed" as waf_rule_id, waf_block, waf_message, waf_executed nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "waf_rule_id", "waf_block","waf_message", "client_ip","waf_executed" as waf_rule_id, waf_block, waf_message, client_ip, waf_executed nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "waf_rule_id", "waf_logged", "waf_block", "waf_passed", "waf_anomaly_score", "waf_message", "client_ip", "waf_executed" as waf_rule_id, waf_logged, waf_block, waf_passed, waf_anomaly_score, waf_message, client_ip, waf_executed nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)



## Parser:
```
| json "waf_rule_id", "waf_logged", "waf_block", "waf_passed", "waf_anomaly_score", "waf_message", "waf_executed" as waf_rule_id, waf_logged, waf_block, waf_passed, waf_anomaly_score, waf_message, waf_executed nodrop
 
```
### Use Cases:
90%-ile Latency (millisecs) by Origin Host, Bot Traffic Over Time, Cache Hit Percentage Over Time, Cache Performance, Cacheable Content Download Time (millisecs) Histogram, Client IP (Blocked), Client IP (Warn), Command Injections (932xxx_rules), Count of rules triggered per client, Daily Hits, Download Performance Hotspots - Avg Download Above 300ms, Download Performance Hotspots - Avg Download Above 300ms by Country, Error Rate 4xx by Code, Error Rate 5xx, Geo Location of All Users, HTTP, HTTP Violations (921xxx_rules), HTTP2 Usage, Inbound HTTP (920xxx_rules), LFI (930xxx_rules), LFI-RCE-RFI, Median Latency (millisecs) by Origin Host, Origin Content Download Time (millisecs) Histogram, Origin Download 90%-ile Latency (Microsecs), Overall Content Download Time (millisecs) Histogram, Overall Request Volume, Overall Threat Trends, OWASP (overall), Performance (millisecs) Stats by Country, Performance (millisecs) Stats by Data Center, PHP Injection, PHP Injections (933xxx_rules), Requests by Content Type, Requests by Country, Requests by DataCenter, Requests by User Agent, RFI (931xxx_rules), Rule Count Block, Rule Count Warn, Session Fixations (943xxx_rules), Session-Fixation, Slowest URLs (millisecs), SQL Injection, SQL Injections (942xxx_rules), Threshold Exceptions, TLS Usage, Top 10 Referrers, Top 404-Causing URLs, Top 5XX Error-Causing URLs, Top Clients Affected by Threats, Top Messages (Blocked), Top Messages (Warn), Top Requests, Top Server Error-Causing URLs, Top URLS (Blocked), Top URLS (Warn), Total Request Size Over Time, Total Response Size Over Time, Visitor Countries, Visitor Geolocations, WAF States, XSS, XSS (941xxx_rules)


