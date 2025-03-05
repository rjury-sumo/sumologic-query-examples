# Parsers For Varnish - OpenTelemetry

## Parser:
```
| json "log" as _rawlog nodrop 
 `n```
### Use Cases:
Bytes Served - Outlier, Client Errors, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Responses Over Time, Server Errors, Top 10 URLs causing Errors, Traffic Distribution by Server, Traffic Volume and GBytes Served, Traffic Volume and MB Served Over Time, Visitor Locations, Visitor Locations - 4xx Errors, Visitor Locations - One Day Time Comparison



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
 `n```
### Use Cases:
Browsers and Operating Systems, Bytes Served, Bytes Served - Outlier, Client Errors, Client Locations - 4xx Errors, Error Responses by Server, Highly Malicious Threat Table, HTTP Methods, Media Types Served, Non 200 Response Status Codes, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Server Errors Over Time, Threat by Actors, Threat by Malicious Confidence, Threat Locations, Threat Table, Threats, Top 10 Bots Observed, Top 10 PC and Mac Versions, Top 10 Search Terms from Popular Search Engines, Top 10 URLs causing Errors, Top 5 Clients Causing 4xx Errors, Top 5 Clients Causing 5xx Errors, Top 5 Highly Malicious URLs, Top 5 Messages in the Error Logs, Top 5 Referrers, Top 5 URIs causing 4xx Responses, Top 5 URIs Causing 5xx Responses, Top 5 URLs, Top Clients, Traffic Distribution by Server, Traffic Volume and GBytes Served, Traffic Volume and MB Served Over Time, Visitor Locations, Visitor Locations - 4xx Errors, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Vistor Platforms, Worldwide



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
| json field=raw "labels[*].name" as label_name 
 `n```
### Use Cases:
Bytes Served - Outlier, Client Errors, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Responses Over Time, Server Errors, Threat Locations, Top 10 URLs causing Errors, Traffic Distribution by Server, Traffic Volume and GBytes Served, Traffic Volume and MB Served Over Time, Visitor Locations, Visitor Locations - 4xx Errors, Visitor Locations - One Day Time Comparison



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
| parse regex field=agent "(?<bot_name>facebook)externalhit?\W+" nodrop
| parse regex field=agent "Feedfetcher-(?<bot_name>Google?)\S+" nodrop
| parse regex field=agent "(?<bot_name>PaperLiBot?)/.+" nodrop
| parse regex field=agent "(?<bot_name>TweetmemeBot?)/.+" nodrop
| parse regex field=agent "(?<bot_name>msn?)bot\W" nodrop
| parse regex field=agent "(?<bot_name>Nutch?)-.+" nodrop
| parse regex field=agent "(?<bot_name>Google?)bot\W" nodrop
| parse regex field=agent "Feedfetcher-(?<bot_name>Google?)\W" nodrop
| parse regex field=agent "(?<bot_name>Yahoo?)!\s+Slurp[;/].+" nodrop
| parse regex field=agent "(?<bot_name>bing?)bot\W" nodrop
| parse regex field=agent "(?<bot_name>Bing?)Preview\W" nodrop
| parse regex field=agent "(?<bot_name>Sogou?)\s+web\s" nodrop
| parse regex field=agent "(?<bot_name>Yandex?)Bot\W" nodrop
| parse regex field=agent "(?<bot_name>rogerbot?)\W" nodrop
| parse regex field=agent "(?<bot_name>AddThis\.com?)\s+robot\s+" nodrop
| parse regex field=agent "(?<bot_name>ShareThis?)Fetcher/.+" nodrop
| parse regex field=agent "(?<bot_name>Ahrefs?)Bot/.+" nodrop
| parse regex field=agent "(?<bot_name>MetaURI?)\s+API/.+" nodrop
| parse regex field=agent "(?<bot_name>Showyou?)Bot\s+" nodrop
| parse regex field=agent "(?<bot_name>Google?)Producer;" nodrop
| parse regex field=agent "(?<bot_name>Ezooms?)\W" nodrop
| parse regex field=agent "(?<bot_name>Rockmelt?)Embedder\s+" nodrop 
| parse regex field=agent "(?<bot_name>Sosospider?)\W" nodrop 
| parse regex field=agent "(?<bot_name>Baidu?)spider" nodrop
| parse regex field=agent "(?<bot_name>Exabot?)\W"
 `n```
### Use Cases:
Browsers and Operating Systems, Bytes Served, Bytes Served - Outlier, Client Errors, Error Responses by Server, Highly Malicious Threat Table, HTTP Methods, Media Types Served, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Threat by Actors, Threat by Malicious Confidence, Threat Locations, Threat Table, Threats, Top 10 Bots Observed, Top 10 PC and Mac Versions, Top 10 Search Terms from Popular Search Engines, Top 10 URLs causing Errors, Top 5 Clients Causing 5xx Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 URLs, Top Clients, Traffic Distribution by Server, Traffic Volume and GBytes Served, Traffic Volume and MB Served Over Time, Visitor Locations, Visitor Locations - 4xx Errors, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Vistor Platforms, Worldwide



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
| parse regex field=agent "(?<os>Mac OS) (?<version>[^;\)]+?)(?:;|\))" nodrop 
| parse regex field=agent "(?<os>Windows)(?: NT | )(?<version>[\d.]+)" nodrop 
| parse regex field=agent "(?<os>Linux) (?<version>\S+?)(?:\)|;)" nodrop 
 `n```
### Use Cases:
Bytes Served, Bytes Served - Outlier, Client Errors, Highly Malicious Threat Table, Media Types Served, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Responses Over Time, Server Errors, Threat by Actors, Threat by Malicious Confidence, Threat Locations, Threat Table, Threats, Top 10 PC and Mac Versions, Top 10 Search Terms from Popular Search Engines, Top 10 URLs causing Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 URLs, Traffic Distribution by Server, Traffic Volume and GBytes Served, Traffic Volume and MB Served Over Time, Visitor Locations, Visitor Locations - 4xx Errors, Visitor Locations - One Day Time Comparison, Visits by Country Over Time



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
| parse regex field=referrer "(?:\?|&)(?:p|q|wd|searchfor)=(?<search_term>[^=]+?)(?:&|$)" nodrop 
 `n```
### Use Cases:
Bytes Served - Outlier, Client Errors, Highly Malicious Threat Table, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Responses Over Time, Server Errors, Threat by Actors, Threat by Malicious Confidence, Threat Locations, Threat Table, Threats, Top 10 Search Terms from Popular Search Engines, Top 10 URLs causing Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Traffic Distribution by Server, Traffic Volume and GBytes Served, Traffic Volume and MB Served Over Time, Visitor Locations, Visitor Locations - 4xx Errors, Visitor Locations - One Day Time Comparison



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
| parse regex field=uri "^[^\?]+?\.(?<type>[a-zA-Z]{2,4})$" 
| parse regex field=uri "/\S+?(?<email_prefix>(?:%40|@)[^.]+?)\.\w+" nodrop 
 `n```
### Use Cases:
Bytes Served - Outlier, Client Errors, Highly Malicious Threat Table, Media Types Served, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Responses Over Time, Server Errors, Threat by Actors, Threat by Malicious Confidence, Threat Locations, Threat Table, Threats, Top 10 Search Terms from Popular Search Engines, Top 10 URLs causing Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 URLs, Traffic Distribution by Server, Traffic Volume and GBytes Served, Traffic Volume and MB Served Over Time, Visitor Locations, Visitor Locations - 4xx Errors, Visitor Locations - One Day Time Comparison



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"\?]+?)(?:\"|\?)s+\"(?<agent>[^\"]+?)\""
 `n```
### Use Cases:
Browsers and Operating Systems, Bytes Served, Bytes Served - Outlier, Client Errors, Highly Malicious Threat Table, HTTP Methods, Media Types Served, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Threat by Actors, Threat by Malicious Confidence, Threat Locations, Threat Table, Threats, Top 10 PC and Mac Versions, Top 10 Search Terms from Popular Search Engines, Top 10 URLs causing Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 URLs, Traffic Distribution by Server, Traffic Volume and GBytes Served, Traffic Volume and MB Served Over Time, Visitor Locations, Visitor Locations - 4xx Errors, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Vistor Platforms, Worldwide



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"\?]+?)(?:\"|\?)"
 `n```
### Use Cases:
Bytes Served - Outlier, Client Errors, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Responses Over Time, Server Errors, Traffic Distribution by Server, Traffic Volume and GBytes Served, Traffic Volume and MB Served Over Time, Visitor Locations - 4xx Errors, Visitor Locations - One Day Time Comparison



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
 `n```
### Use Cases:
Bytes Served - Outlier, Client Errors, Highly Malicious Threat Table, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Responses Over Time, Server Errors, Threat by Actors, Threat by Malicious Confidence, Threat Locations, Threat Table, Top 10 URLs causing Errors, Top 5 Highly Malicious URLs, Traffic Distribution by Server, Traffic Volume and GBytes Served, Traffic Volume and MB Served Over Time, Visitor Locations, Visitor Locations - 4xx Errors, Visitor Locations - One Day Time Comparison



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
| json field=raw "labels[*].name" as label_name 
 `n```
### Use Cases:
Bytes Served - Outlier, Client Errors, Highly Malicious Threat Table, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Responses Over Time, Server Errors, Threat by Actors, Threat by Malicious Confidence, Threat Locations, Threat Table, Threats, Top 10 URLs causing Errors, Top 5 Highly Malicious URLs, Traffic Distribution by Server, Traffic Volume and GBytes Served, Traffic Volume and MB Served Over Time, Visitor Locations, Visitor Locations - 4xx Errors, Visitor Locations - One Day Time Comparison



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "\((?<device>iPhone).+? CPU iPhone OS (?<version>.+?) like Mac"  nodrop 
| parse regex "\((?<device>iPad).+? CPU OS (?<version>.+?) like Mac"  nodrop 
| parse regex " (?<device>Android) (?<version>[\d\.]+)" nodrop 
| parse regex "(?<device>SAMSUNG).+?(?<version>(?:GT-\w+|SGH-\w+|SPH-\w+|SCH-\w+))" 
 `n```
### Use Cases:
Browsers and Operating Systems, Bytes Served, Bytes Served - Outlier, Client Errors, Highly Malicious Threat Table, HTTP Methods, Media Types Served, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Threat by Actors, Threat by Malicious Confidence, Threat Locations, Threat Table, Threats, Top 10 PC and Mac Versions, Top 10 Search Terms from Popular Search Engines, Top 10 URLs causing Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 URLs, Traffic Distribution by Server, Traffic Volume and GBytes Served, Traffic Volume and MB Served Over Time, Visitor Locations, Visitor Locations - 4xx Errors, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Vistor Platforms



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "\s\[(?<log_level>\S+)\]\s\d+#\d+:\s(?:\*\d+\s|)(?<message>[A-Za-z][^,]+)(?:,|$)" nodrop
 `n```
### Use Cases:
Browsers and Operating Systems, Bytes Served, Bytes Served - Outlier, Client Errors, Error Responses by Server, Highly Malicious Threat Table, HTTP Methods, Media Types Served, Number of Hits by Server - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Threat by Actors, Threat by Malicious Confidence, Threat Locations, Threat Table, Threats, Top 10 Bots Observed, Top 10 PC and Mac Versions, Top 10 Search Terms from Popular Search Engines, Top 10 URLs causing Errors, Top 5 Clients Causing 5xx Errors, Top 5 Highly Malicious URLs, Top 5 Messages in the Error Logs, Top 5 Referrers, Top 5 URIs Causing 5xx Responses, Top 5 URLs, Top Clients, Traffic Distribution by Server, Traffic Volume and GBytes Served, Traffic Volume and MB Served Over Time, Visitor Locations, Visitor Locations - 4xx Errors, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Vistor Platforms, Worldwide


