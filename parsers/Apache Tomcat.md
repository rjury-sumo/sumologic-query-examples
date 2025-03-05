# Parsers For Apache Tomcat

## Parser:
```
| json "log" as _rawlog nodrop 
 `n```
### Use Cases:
4xx Error, 5xx Codes, 5xx Error, Average Server Startup Time, Component Errors, Errors by Component, Exceptions, Log Levels, Non-INFO Errors, Responses Over Time, Server State Events Over Time, Top 10 Recent Exceptions, Top 10 URLs causing Errors, Visitor Locations



## Parser:
```
| json "log" as _rawlog nodrop 
| parse "INFO: Server startup in * ms" as startuptime
 `n```
### Use Cases:
4xx Error, 5xx Codes, 5xx Error, Average Server Startup Time, Component Errors, Errors by Component, Exceptions, Log Levels, Non-INFO Errors, Responses Over Time, Top 10 Recent Exceptions, Top 10 URLs causing Errors, Visitor Locations



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[PSPermGen: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\), (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]"
 `n```
### Use Cases:
4xx Error, 5xx Codes, 5xx Error, Average Server Startup Time, Component Errors, Errors by Component, Exceptions, Heap, Log Levels, Non-INFO Errors, Par Old Gen, PS Perm Gen, PS Young Gen, Responses Over Time, Server State Events Over Time, Top 10 Host - High GC Time, Top 10 Hosts - Low Average JVM Up-Time, Top 10 Recent Exceptions, Top 10 URLs causing Errors, Total GC Operation Time, Total GC Operations, Visitor Locations



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[PSPermGen: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[Metaspace: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\), (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]"
 `n```
### Use Cases:
4xx Error, 5xx Codes, 5xx Error, Average Server Startup Time, Component Errors, Errors by Component, Exceptions, Heap, Log Levels, Non-INFO Errors, PS Young Gen, Responses Over Time, Server State Events Over Time, Top 10 Host - High GC Time, Top 10 Hosts - Low Average JVM Up-Time, Top 10 Recent Exceptions, Top 10 URLs causing Errors, Total GC Operation Time, Total GC Operations, Visitor Locations



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
 `n```
### Use Cases:
4xx Error, 5xx Codes, 5xx Error, Average Server Startup Time, Bytes Served, Bytes Served - Outlier, Client Errors, Component Errors, Errors by Component, Exceptions, Heap, Highly Malicious Threat Table, HTTP Methods, Log Levels, Media Types Served, Non 200 Response Status Codes, Non-INFO Errors, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Par Old Gen, PS Perm Gen, PS Young Gen, Responses Over Time, Server Errors, Server State Events Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Locations, Threat Table, Top 10 Host - High GC Time, Top 10 Hosts - Low Average JVM Up-Time, Top 10 Recent Exceptions, Top 10 Search Terms from Popular Search Engines, Top 10 URLs causing Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 URLs, Total GC Operation Time, Total GC Operations, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Worldwide



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\""
| parse regex field=referrer "(?:\?|&)(?:p|q|wd|searchfor)=(?<search_term>[^=]+?)(?:&|$)"
 `n```
### Use Cases:
4xx Error, 5xx Codes, 5xx Error, Average Server Startup Time, Bytes Served, Bytes Served - Outlier, Client Errors, Component Errors, Errors by Component, Exceptions, Heap, Highly Malicious Threat Table, Log Levels, Media Types Served, Non-INFO Errors, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Par Old Gen, PS Perm Gen, PS Young Gen, Responses Over Time, Server Errors, Server State Events Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Locations, Threat Table, Top 10 Host - High GC Time, Top 10 Hosts - Low Average JVM Up-Time, Top 10 Recent Exceptions, Top 10 Search Terms from Popular Search Engines, Top 10 URLs causing Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 URLs, Total GC Operation Time, Total GC Operations, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Worldwide



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<user_agent>.*)\"" nodrop
| parse regex field=user_agent "(?<bot_name>facebook)externalhit?\W+" nodrop
| parse regex field=user_agent "Feedfetcher-(?<bot_name>Google?)\S+" nodrop
| parse regex field=user_agent "(?<bot_name>PaperLiBot?)/.+" nodrop
| parse regex field=user_agent "(?<bot_name>TweetmemeBot?)/.+" nodrop
| parse regex field=user_agent "(?<bot_name>msn?)bot\W" nodrop
| parse regex field=user_agent "(?<bot_name>Nutch?)-.+" nodrop
| parse regex field=user_agent "(?<bot_name>Google?)bot\W" nodrop
| parse regex field=user_agent "Feedfetcher-(?<bot_name>Google?)\W" nodrop
| parse regex field=user_agent "(?<bot_name>Yahoo?)!\s+Slurp[;/].+" nodrop
| parse regex field=user_agent "(?<bot_name>bing?)bot\W" nodrop
| parse regex field=user_agent "(?<bot_name>Bing?)Preview\W" nodrop
| parse regex field=user_agent "(?<bot_name>Sogou?)\s+web\s" nodrop
| parse regex field=user_agent "(?<bot_name>Yandex?)Bot\W" nodrop
| parse regex field=user_agent "(?<bot_name>rogerbot?)\W" nodrop
| parse regex field=user_agent "(?<bot_name>AddThis\.com?)\s+robot\s+" nodrop
| parse regex field=user_agent "(?<bot_name>ShareThis?)Fetcher/.+" nodrop
| parse regex field=user_agent "(?<bot_name>Ahrefs?)Bot/.+" nodrop
| parse regex field=user_agent "(?<bot_name>MetaURI?)\s+API/.+" nodrop
| parse regex field=user_agent "(?<bot_name>Showyou?)Bot\s+" nodrop
| parse regex field=user_agent "(?<bot_name>Google?)Producer;" nodrop
| parse regex field=user_agent "(?<bot_name>Ezooms?)\W" nodrop
| parse regex field=user_agent "(?<bot_name>Rockmelt?)Embedder\s+" nodrop 
| parse regex field=user_agent "(?<bot_name>Sosospider?)\W" nodrop 
| parse regex field=user_agent "(?<bot_name>Baidu?)spider" nodrop
| parse regex field=user_agent "(?<bot_name>Exabot?)\W"
 `n```
### Use Cases:
4xx Error, 5xx Codes, 5xx Error, Average Server Startup Time, Bytes Served, Bytes Served - Outlier, Client Errors, Client Locations - 4xx Errors, Component Errors, Error Responses by Server, Errors by Component, Exceptions, Heap, Highly Malicious Threat Table, HTTP Methods, Log Levels, Media Types Served, Non 200 Response Status Codes, Non-INFO Errors, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Par Old Gen, PS Perm Gen, PS Young Gen, Responses Over Time, Server Errors, Server Errors Over Time, Server State Events Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Locations, Threat Table, Top 10 Bots Observed, Top 10 Host - High GC Time, Top 10 Hosts - Low Average JVM Up-Time, Top 10 Recent Exceptions, Top 10 Search Terms from Popular Search Engines, Top 10 URLs causing Errors, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 URIs causing 404 Responses, Top 5 URLs, Total GC Operation Time, Total GC Operations, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Worldwide



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"\?]+?)(?:\"|\?)"
 `n```
### Use Cases:
4xx Error, 5xx Codes, 5xx Error, Average Server Startup Time, Bytes Served, Bytes Served - Outlier, Client Errors, Component Errors, Errors by Component, Exceptions, Heap, Highly Malicious Threat Table, Log Levels, Media Types Served, Non-INFO Errors, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Par Old Gen, PS Perm Gen, PS Young Gen, Responses Over Time, Server Errors, Server State Events Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Locations, Threat Table, Top 10 Host - High GC Time, Top 10 Hosts - Low Average JVM Up-Time, Top 10 Recent Exceptions, Top 10 URLs causing Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 URLs, Total GC Operation Time, Total GC Operations, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Worldwide



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
 `n```
### Use Cases:
4xx Error, 5xx Codes, 5xx Error, Average Server Startup Time, Bytes Served, Bytes Served - Outlier, Client Errors, Client Locations - 4xx Errors, Component Errors, Error Responses by Server, Errors by Component, Exceptions, Heap, Highly Malicious Threat Table, HTTP Methods, Log Levels, Media Types Served, Non 200 Response Status Codes, Non-INFO Errors, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Par Old Gen, PS Perm Gen, PS Young Gen, Responses Over Time, Server Errors, Server Errors Over Time, Server State Events Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Locations, Threat Table, Top 10 Host - High GC Time, Top 10 Hosts - Low Average JVM Up-Time, Top 10 Recent Exceptions, Top 10 Search Terms from Popular Search Engines, Top 10 URLs causing Errors, Top 5 Clients Causing 4xx Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 URIs causing 404 Responses, Top 5 URLs, Total GC Operation Time, Total GC Operations, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Worldwide



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
| json field=raw "labels[*].name" as label_name 
 `n```
### Use Cases:
4xx Error, 5xx Codes, 5xx Error, Average Server Startup Time, Bytes Served - Outlier, Client Errors, Component Errors, Errors by Component, Exceptions, Heap, Highly Malicious Threat Table, Log Levels, Non-INFO Errors, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Par Old Gen, PS Perm Gen, PS Young Gen, Responses Over Time, Server Errors, Server State Events Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Locations, Threat Table, Top 10 Host - High GC Time, Top 10 Hosts - Low Average JVM Up-Time, Top 10 Recent Exceptions, Top 10 URLs causing Errors, Top 5 Highly Malicious URLs, Total GC Operation Time, Total GC Operations, Traffic Distribution by Server, Traffic Volume and Bytes Served, Visitor Locations, Visitor Locations - One Day Time Comparison



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
| parse regex field=uri "^/[^\?]+?\.(?<type>[a-zA-Z]{2,4})$"
 `n```
### Use Cases:
4xx Error, 5xx Codes, 5xx Error, Average Server Startup Time, Bytes Served, Bytes Served - Outlier, Client Errors, Component Errors, Errors by Component, Exceptions, Heap, Highly Malicious Threat Table, Log Levels, Media Types Served, Non-INFO Errors, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Par Old Gen, PS Perm Gen, PS Young Gen, Responses Over Time, Server Errors, Server State Events Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Locations, Threat Table, Top 10 Host - High GC Time, Top 10 Hosts - Low Average JVM Up-Time, Top 10 Recent Exceptions, Top 10 URLs causing Errors, Top 5 Highly Malicious URLs, Top 5 URLs, Total GC Operation Time, Total GC Operations, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Worldwide



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<time>\w+\s+\d+,\s+\d+\s+\d+:\d+:\d+\s+\w+)\s+(?<component>[\w\S]+)\s+(?<method>[\w\S]+)\s+(?<loglevel>\w+):\s+(?<message>[\s\w]+)(?:$|\n(?<thrown>[\s\S]+)$)"
 `n```
### Use Cases:
4xx Error, 5xx Codes, 5xx Error, Component Errors, Errors by Component, Log Levels, Non-INFO Errors, Responses Over Time, Top 10 URLs causing Errors, Visitor Locations



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<time>\w+\s+\d+,\s+\d+\s+\d+:\d+:\d+\s+\w+)\s+(?<Component>[\w\S]+)\s+(?<method>[\w\S]+)\s+(?<loglevel>\w+):\s+(?<message>[\s\w]+)\n(?<thrown>[\s\S]+)$"
| parse regex field=thrown "\((?<sourcefile>[^\)]+)"
 `n```
### Use Cases:
4xx Error, 5xx Codes, 5xx Error, Component Errors, Errors by Component, Exceptions, Log Levels, Non-INFO Errors, Responses Over Time, Top 10 Recent Exceptions, Top 10 URLs causing Errors, Visitor Locations


