# Parsers For Akamai Cloud Monitor

## Parser:
```
|  parse "\"cliIP\":\"*\"" as ip | parse "\"downloadTime\":\"*\"" as downloadtime| parse "\"country\":\"*\"" as country_code
 
```
### Use Cases:
90%-ile Latency, Cache Offload Percentage Over Time, Cache Performance, Cacheable Content Download Times, Countries, Download Performance Hotspots - Avg Download Above 300 by Country, Error Rate 4xx by Code, Error Rate 5xx by Code, Map (Unique Visitors), Median, Median Latency, Origin Download Times Histogram, Slowest URLs, Top 404-Causing URLs, Top Error-Causing URLs



## Parser:
```
|  parse "\"reqPath\":\"*\"" as reqpath | count_frequent(reqpath) | sort by _approxcount | 
```
### Use Cases:
90%-ile Latency, Cache Offload Percentage Over Time, Cache Performance, Cacheable Content Download Times, Countries, Denials by Host, Download Performance Hotspots - Avg Download Above 300 by Country, Error Rate 4xx by Code, Error Rate 5xx by Code, Map (Unique Visitors), Median, Median Latency, Origin Download Times Histogram, Performance Stats by Country, Slowest URLs, Top 404-Causing URLs, Top Deny Rules, Top Deny URLs, Top Error-Causing URLs, Top Requests, Top Warn Rules, Top Warn URLs, UA Over Time, WAF-Warn Requests per Host



## Parser:
```
| parse "\"bytes\":\"*\"" as bytes, "\"edgeIP\":\"*\"" as edgeip, "\"country\":\"*\"" as country, "\"cookie\":\"*\"" as cookie
 
```
### Use Cases:
90%-ile Latency, Cache Offload Percentage Over Time, Cache Performance, Cacheable Content Download Times, Countries, Denials by Host, Download Performance Hotspots - Avg Download Above 300 by Country, Error Rate 4xx by Code, Error Rate 5xx by Code, Map (Unique Visitors), Median, Median Latency, Origin Download Times Histogram, Performance Stats by Country, Slowest URLs, Top 404-Causing URLs, Top Deny Rules, Top Deny URLs, Top Error-Causing URLs, Top Requests, Top Warn Rules, Top Warn URLs, UA Over Time, User Agents, WAF-Warn Requests per Host



## Parser:
```
| parse "\"cacheStatus\":\"*\"" as cachestatus, "\"downloadTime\":\"*\"" as result
 
```
### Use Cases:
90%-ile Latency, Cache Offload Percentage Over Time, Cacheable Content Download Times, Countries, Download Performance Hotspots - Avg Download Above 300 by Country, Error Rate 4xx by Code, Error Rate 5xx by Code, Map (Unique Visitors), Median, Median Latency, Origin Download Times Histogram, Slowest URLs, Top 404-Causing URLs, Top Error-Causing URLs



## Parser:
```
| parse "\"cacheStatus\":\"*\"" as status
 
```
### Use Cases:
90%-ile Latency, Cache Offload Percentage Over Time, Cache Performance, Cacheable Content Download Times, Countries, Download Performance Hotspots - Avg Download Above 300 by Country, Error Rate 4xx by Code, Error Rate 5xx by Code, Map (Unique Visitors), Median, Median Latency, Origin Download Times Histogram, Slowest URLs, Top 404-Causing URLs, Top Error-Causing URLs



## Parser:
```
| parse "\"cliIP\":\"*\"" as cliip
 
```
### Use Cases:
90%-ile Latency, Cache Offload Percentage Over Time, Cache Performance, Cacheable Content Download Times, Countries, Denials by Host, Download Performance Hotspots - Avg Download Above 300 by Country, Error Rate 4xx by Code, Error Rate 5xx by Code, Map (Unique Visitors), Median, Median Latency, Origin Download Times Histogram, Performance Stats by Country, Slowest URLs, Top 404-Causing URLs, Top Deny Rules, Top Deny URLs, Top Error-Causing URLs, Top Requests, Top Warn Rules, Top Warn URLs, UA Over Time, WAF-Warn Requests per Host



## Parser:
```
| parse "\"cliIP\":\"*\"" as ip 
| parse "\"downloadTime\":\"*\"" as downloadtime| parse "\"country\":\"*\"" as country_code
 
```
### Use Cases:
90%-ile Latency, Cache Offload Percentage Over Time, Cache Performance, Cacheable Content Download Times, Countries, Download Performance Hotspots - Avg Download Above 300 by Country, Error Rate 4xx by Code, Error Rate 5xx by Code, Map (Unique Visitors), Median, Median Latency, Origin Download Times Histogram, Performance Stats by Country, Slowest URLs, Top 404-Causing URLs, Top Error-Causing URLs



## Parser:
```
| parse "\"denyRules\":\"*\"" as deny |urldecode(deny)
 
```
### Use Cases:
90%-ile Latency, Cache Offload Percentage Over Time, Cache Performance, Cacheable Content Download Times, Countries, Denials by Host, Download Performance Hotspots - Avg Download Above 300 by Country, Error Rate 4xx by Code, Error Rate 5xx by Code, Map (Unique Visitors), Median, Median Latency, Origin Download Times Histogram, Performance Stats by Country, Slowest URLs, Top 404-Causing URLs, Top Deny Rules, Top Deny URLs, Top Error-Causing URLs, Top Warn Rules, Top Warn URLs, WAF-Warn Requests per Host



## Parser:
```
| parse "\"denyRules\":\"*\"" as deny, "\"reqHost\":\"*\"" as host
 
```
### Use Cases:
90%-ile Latency, Cache Offload Percentage Over Time, Cache Performance, Cacheable Content Download Times, Countries, Denials by Host, Download Performance Hotspots - Avg Download Above 300 by Country, Error Rate 4xx by Code, Error Rate 5xx by Code, Map (Unique Visitors), Median, Median Latency, Origin Download Times Histogram, Performance Stats by Country, Slowest URLs, Top 404-Causing URLs, Top Deny URLs, Top Error-Causing URLs, Top Warn URLs, WAF-Warn Requests per Host



## Parser:
```
| parse "\"denyRules\":\"*\"" as deny, "\"reqPath\":\"*\"" as path
 
```
### Use Cases:
90%-ile Latency, Cache Offload Percentage Over Time, Cache Performance, Cacheable Content Download Times, Countries, Download Performance Hotspots - Avg Download Above 300 by Country, Error Rate 4xx by Code, Error Rate 5xx by Code, Map (Unique Visitors), Median, Median Latency, Origin Download Times Histogram, Performance Stats by Country, Slowest URLs, Top 404-Causing URLs, Top Deny URLs, Top Error-Causing URLs, Top Warn URLs, WAF-Warn Requests per Host



## Parser:
```
| parse "\"netOriginLatency\":\"*\"" as originLatency, "\"fwdHost\":\"*\"" as fwdHost
 
```
### Use Cases:
90%-ile Latency, Error Rate 4xx by Code, Error Rate 5xx by Code, Median, Median Latency, Slowest URLs, Top 404-Causing URLs, Top Error-Causing URLs



## Parser:
```
| parse "\"netOriginLatency\":\"*\"" as originLatency, "\"originIP\":\"*\"" as originIP
 
```
### Use Cases:
90%-ile Latency, Error Rate 4xx by Code, Error Rate 5xx by Code, Median, Median Latency, Slowest URLs, Top 404-Causing URLs, Top Error-Causing URLs



## Parser:
```
| parse "\"reqMethod\":\"*\"" as method, "\"status\":\"*\"" as status, "\"fwdHost\":\"*\"" as origin
 
```
### Use Cases:
90%-ile Latency, Error Rate 4xx by Code, Error Rate 5xx by Code, Median, Median Latency, Slowest URLs, Top 404-Causing URLs, Top Error-Causing URLs



## Parser:
```
| parse "\"reqPath\":\"*\"" as path, "\"netOriginLatency\":\"*\"" as latency
 
```
### Use Cases:
90%-ile Latency, Error Rate 4xx by Code, Error Rate 5xx by Code, Median, Median Latency, Slowest URLs, Top 404-Causing URLs, Top Error-Causing URLs



## Parser:
```
| parse "\"reqPath\":\"*\"" as path, "\"status\":\"*\"" as status
 
```
### Use Cases:
90%-ile Latency, Download Performance Hotspots - Avg Download Above 300 by Country, Error Rate 4xx by Code, Error Rate 5xx by Code, Map (Unique Visitors), Median, Median Latency, Slowest URLs, Top 404-Causing URLs, Top Error-Causing URLs



## Parser:
```
| parse "\"UA\":\"*\"" as ua
 
```
### Use Cases:
90%-ile Latency, Cache Offload Percentage Over Time, Cache Performance, Cacheable Content Download Times, Countries, Denials by Host, Download Performance Hotspots - Avg Download Above 300 by Country, Error Rate 4xx by Code, Error Rate 5xx by Code, Map (Unique Visitors), Median, Median Latency, Origin Download Times Histogram, Performance Stats by Country, Slowest URLs, Top 404-Causing URLs, Top Deny Rules, Top Deny URLs, Top Error-Causing URLs, Top Requests, Top Warn Rules, Top Warn URLs, UA Over Time, User Agents, WAF-Warn Requests per Host



## Parser:
```
| parse "\"UA\":\"*\"" as ua | timeslice 1m
 
```
### Use Cases:
90%-ile Latency, Cache Offload Percentage Over Time, Cache Performance, Cacheable Content Download Times, Countries, Denials by Host, Download Performance Hotspots - Avg Download Above 300 by Country, Error Rate 4xx by Code, Error Rate 5xx by Code, Map (Unique Visitors), Median, Median Latency, Origin Download Times Histogram, Performance Stats by Country, Slowest URLs, Top 404-Causing URLs, Top Deny Rules, Top Deny URLs, Top Error-Causing URLs, Top Warn Rules, Top Warn URLs, UA Over Time, WAF-Warn Requests per Host



## Parser:
```
| parse "\"warnRules\":\"*\"" as warn |urldecode(warn)
| parse regex field=warn "(?<warn_rule>[\w-]+)" multi
 
```
### Use Cases:
90%-ile Latency, Cache Offload Percentage Over Time, Cache Performance, Cacheable Content Download Times, Countries, Denials by Host, Download Performance Hotspots - Avg Download Above 300 by Country, Error Rate 4xx by Code, Error Rate 5xx by Code, Map (Unique Visitors), Median, Median Latency, Origin Download Times Histogram, Performance Stats by Country, Slowest URLs, Top 404-Causing URLs, Top Deny URLs, Top Error-Causing URLs, Top Warn Rules, Top Warn URLs, WAF-Warn Requests per Host



## Parser:
```
| parse "\"warnRules\":\"*\"" as warn, "\"denyRules\":\"*\"" as deny, "\"cliIP\":\"*\"" as cliip
 
```
### Use Cases:
90%-ile Latency, Attacks (Individual Warn/Deny Events), Cache Offload Percentage Over Time, Cache Performance, Cacheable Content Download Times, Countries, Denials by Host, Download Performance Hotspots - Avg Download Above 300 by Country, Error Rate 4xx by Code, Error Rate 5xx by Code, Map (Unique Visitors), Median, Median Latency, Origin Download Times Histogram, Performance Stats by Country, Slowest URLs, Top 404-Causing URLs, Top Deny Rules, Top Deny URLs, Top Error-Causing URLs, Top Requests, Top Warn Rules, Top Warn URLs, UA Over Time, User Agents, WAF-Warn Requests per Host



## Parser:
```
| parse "\"warnRules\":\"*\"" as warn, "\"reqHost\":\"*\"" as host
 
```
### Use Cases:
90%-ile Latency, Cache Offload Percentage Over Time, Cache Performance, Cacheable Content Download Times, Countries, Download Performance Hotspots - Avg Download Above 300 by Country, Error Rate 4xx by Code, Error Rate 5xx by Code, Map (Unique Visitors), Median, Median Latency, Origin Download Times Histogram, Performance Stats by Country, Slowest URLs, Top 404-Causing URLs, Top Error-Causing URLs, Top Warn URLs, WAF-Warn Requests per Host



## Parser:
```
| parse "\"warnRules\":\"*\"" as warning_id, "\"reqPath\":\"*\"" as path | urldecode(path)
 
```
### Use Cases:
90%-ile Latency, Cache Offload Percentage Over Time, Cache Performance, Cacheable Content Download Times, Countries, Download Performance Hotspots - Avg Download Above 300 by Country, Error Rate 4xx by Code, Error Rate 5xx by Code, Map (Unique Visitors), Median, Median Latency, Origin Download Times Histogram, Performance Stats by Country, Slowest URLs, Top 404-Causing URLs, Top Error-Causing URLs, Top Warn URLs


