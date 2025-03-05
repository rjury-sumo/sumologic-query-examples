# Parsers For Nginx

## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
 
```
### Use Cases:
4xx Codes by Server, 4xx Errors - Client Locations, 5xx Codes by Server, All Errors, Browsers and Operating Systems, Bytes Served, Client Errors, Client Locations with Critical Errors, Client OS Platforms, Critical Error Messages, Critical Messages, Desktop OS Version, Error Responses by Server, Highly Malicious Threat Table, HTTP Methods, Log Level - One Day Time Comparison, Media Types Served, Messages by Log Level - Over Time, Nginx  - Top 404 referrers, Nginx  - Top browsers, Nginx - All Error Messages, Nginx - All HTTP Response codes with their count, Nginx - Client Errors (4xx response codes) per day, Nginx - HTTP status code summary over time, Nginx - Top clients, Nginx - Top clients causing errors, Nginx - Top URLs by bytes served, Nginx - Traffic volume and bytes served per day, Non 200 Response Status Codes, Number of Hits by Server - One Day Time Comparison, Number of Requests by Client - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Server Errors Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Locations, Threat Table, Top 10 Bots Observed, Top 10 Search Terms from Popular Search Engines, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing 4xx Errors, Top 5 Clients causing Errors, Top 5 Critical Messages, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 Servers with Errors, Top 5 URIs causing 404 Responses, Top 5 URLs, Top 5 URLs with Errors, Traffic Distribution by Server, Traffic Volume and Bytes Served, Unique Visitors, United States, Visitor Locations, Visitor Locations (Top 5 Countries) - Today Vs. Yesterday, Visitor Platforms, Visitors Platforms Over Time, Visits by Country Over Time, Visits by US Regions Over Time, WorldWide



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| json field=raw "labels[*].name" as label_name 
 
```
### Use Cases:
Highly Malicious Threat Table, Nginx  - Top 404 referrers, Nginx  - Top browsers, Nginx - All Error Messages, Nginx - All HTTP Response codes with their count, Nginx - Client Errors (4xx response codes) per day, Nginx - HTTP status code summary over time, Nginx - Top clients, Nginx - Top clients causing errors, Nginx - Top URLs by bytes served, Nginx - Traffic volume and bytes served per day, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Locations, Threat Table, Top 5 Highly Malicious URLs



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| parse regex field=nginx_log_message "\((?<device>iPhone).+? CPU iPhone OS (?<version>.+?) like Mac"  nodrop 
| parse regex field=nginx_log_message "\((?<device>iPad).+? CPU OS (?<version>.+?) like Mac"  nodrop 
| parse regex field=nginx_log_message " (?<device>Android) (?<version>[\d\.]+)" nodrop 
| parse regex field=nginx_log_message "(?<device>SAMSUNG).+?(?<version>(?:GT-\w+|SGH-\w+|SPH-\w+|SCH-\w+))" 
 
```
### Use Cases:
All Errors, Browsers and Operating Systems, Bytes Served, Client Errors, Client Locations with Critical Errors, Critical Messages, Highly Malicious Threat Table, Log Level - One Day Time Comparison, Messages by Log Level - Over Time, Nginx  - Top 404 referrers, Nginx  - Top browsers, Nginx - All Error Messages, Nginx - All HTTP Response codes with their count, Nginx - Client Errors (4xx response codes) per day, Nginx - HTTP status code summary over time, Nginx - Top clients, Nginx - Top clients causing errors, Nginx - Top URLs by bytes served, Nginx - Traffic volume and bytes served per day, Number of Hits by Server - One Day Time Comparison, Number of Requests by Client - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Locations, Threat Table, Top 5 Clients causing Errors, Top 5 Highly Malicious URLs, Top 5 Servers with Errors, Top 5 URLs with Errors, Traffic Distribution by Server, Traffic Volume and Bytes Served, Visitor Locations (Top 5 Countries) - Today Vs. Yesterday, Visitor Platforms



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| parse regex field=referrer "(?:\?|&)(?:p|q|wd|searchfor)=(?<search_term>[^=]+?)(?:&|$)" nodrop 
 
```
### Use Cases:
All Errors, Browsers and Operating Systems, Bytes Served, Client Errors, Client Locations with Critical Errors, Critical Messages, Desktop OS Version, Highly Malicious Threat Table, Log Level - One Day Time Comparison, Media Types Served, Messages by Log Level - Over Time, Nginx  - Top 404 referrers, Nginx  - Top browsers, Nginx - All Error Messages, Nginx - All HTTP Response codes with their count, Nginx - Client Errors (4xx response codes) per day, Nginx - HTTP status code summary over time, Nginx - Top clients, Nginx - Top clients causing errors, Nginx - Top URLs by bytes served, Nginx - Traffic volume and bytes served per day, Number of Hits by Server - One Day Time Comparison, Number of Requests by Client - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Locations, Threat Table, Top 10 Search Terms from Popular Search Engines, Top 5 Clients causing Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 Servers with Errors, Top 5 URLs, Top 5 URLs with Errors, Traffic Distribution by Server, Traffic Volume and Bytes Served, Unique Visitors, United States, Visitor Locations (Top 5 Countries) - Today Vs. Yesterday, Visitor Platforms, Visitors Platforms Over Time, Visits by Country Over Time, Visits by US Regions Over Time, WorldWide



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| parse regex field=url "^/[^\?]+?\.(?<type>[a-zA-Z]{2,4})$" 
| parse regex field=url "/\S+?(?<email_prefix>(?:%40|@)[^.]+?)\.\w+" nodrop 
 
```
### Use Cases:
All Errors, Browsers and Operating Systems, Bytes Served, Client Errors, Client Locations with Critical Errors, Critical Messages, Desktop OS Version, Highly Malicious Threat Table, Log Level - One Day Time Comparison, Media Types Served, Messages by Log Level - Over Time, Nginx  - Top 404 referrers, Nginx  - Top browsers, Nginx - All Error Messages, Nginx - All HTTP Response codes with their count, Nginx - Client Errors (4xx response codes) per day, Nginx - HTTP status code summary over time, Nginx - Top clients, Nginx - Top clients causing errors, Nginx - Top URLs by bytes served, Nginx - Traffic volume and bytes served per day, Number of Hits by Server - One Day Time Comparison, Number of Requests by Client - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Locations, Threat Table, Top 5 Clients causing Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 Servers with Errors, Top 5 URLs, Top 5 URLs with Errors, Traffic Distribution by Server, Traffic Volume and Bytes Served, Unique Visitors, United States, Visitor Locations (Top 5 Countries) - Today Vs. Yesterday, Visitor Platforms, Visitors Platforms Over Time, Visits by Country Over Time, Visits by US Regions Over Time, WorldWide



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
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
 
```
### Use Cases:
All Errors, Browsers and Operating Systems, Bytes Served, Client Errors, Client Locations with Critical Errors, Critical Messages, Desktop OS Version, Highly Malicious Threat Table, HTTP Methods, Log Level - One Day Time Comparison, Media Types Served, Messages by Log Level - Over Time, Nginx  - Top 404 referrers, Nginx  - Top browsers, Nginx - All Error Messages, Nginx - All HTTP Response codes with their count, Nginx - Client Errors (4xx response codes) per day, Nginx - HTTP status code summary over time, Nginx - Top clients, Nginx - Top clients causing errors, Nginx - Top URLs by bytes served, Nginx - Traffic volume and bytes served per day, Number of Hits by Server - One Day Time Comparison, Number of Requests by Client - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Locations, Threat Table, Top 10 Bots Observed, Top 10 Search Terms from Popular Search Engines, Top 5 Clients causing Errors, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 Servers with Errors, Top 5 URLs, Top 5 URLs with Errors, Traffic Distribution by Server, Traffic Volume and Bytes Served, Unique Visitors, United States, Visitor Locations (Top 5 Countries) - Today Vs. Yesterday, Visitor Platforms, Visitors Platforms Over Time, Visits by Country Over Time, Visits by US Regions Over Time, WorldWide



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| parse regex field=user_agent "(?<os>Mac OS) (?<version>[^;\)]+?)(?:;|\))" nodrop 
| parse regex field=user_agent "(?<os>Windows)(?: NT | )(?<version>[\d.]+)" nodrop 
| parse regex field=user_agent "(?<os>Linux) (?<version>\S+?)(?:\)|;)" nodrop 
 
```
### Use Cases:
All Errors, Browsers and Operating Systems, Bytes Served, Client Errors, Client Locations with Critical Errors, Critical Messages, Desktop OS Version, Highly Malicious Threat Table, Log Level - One Day Time Comparison, Messages by Log Level - Over Time, Nginx  - Top 404 referrers, Nginx  - Top browsers, Nginx - All Error Messages, Nginx - All HTTP Response codes with their count, Nginx - Client Errors (4xx response codes) per day, Nginx - HTTP status code summary over time, Nginx - Top clients, Nginx - Top clients causing errors, Nginx - Top URLs by bytes served, Nginx - Traffic volume and bytes served per day, Number of Hits by Server - One Day Time Comparison, Number of Requests by Client - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Locations, Threat Table, Top 5 Clients causing Errors, Top 5 Highly Malicious URLs, Top 5 Servers with Errors, Top 5 URLs with Errors, Traffic Distribution by Server, Traffic Volume and Bytes Served, Visitor Locations (Top 5 Countries) - Today Vs. Yesterday, Visitor Platforms



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*" 
 
```
### Use Cases:
Nginx  - Top 404 referrers, Nginx  - Top browsers, Nginx - All Error Messages, Nginx - All HTTP Response codes with their count, Nginx - Client Errors (4xx response codes) per day, Nginx - HTTP status code summary over time, Nginx - Top clients, Nginx - Top clients causing errors, Nginx - Top URLs by bytes served, Nginx - Traffic volume and bytes served per day



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=nginx_log_message "\s\[(?<Log_Level>\S+)\]\s\d+#\d+:\s(?:\*\d+\s|)(?<Message>[A-Za-z][^,]+)(?:,|$)"
| parse field=nginx_log_message "client: *, server: *, request: \"* * HTTP/1.1\", host: \"*\"" as Client_Ip, Server, Method, URL, Host nodrop
 
```
### Use Cases:
4xx Errors - Client Locations, All Errors, Browsers and Operating Systems, Bytes Served, Client Errors, Client Locations with Critical Errors, Critical Error Messages, Critical Messages, Desktop OS Version, Error Responses by Server, Highly Malicious Threat Table, HTTP Methods, Log Level - One Day Time Comparison, Media Types Served, Messages by Log Level - Over Time, Nginx  - Top 404 referrers, Nginx  - Top browsers, Nginx - All Error Messages, Nginx - All HTTP Response codes with their count, Nginx - Client Errors (4xx response codes) per day, Nginx - HTTP status code summary over time, Nginx - Top clients, Nginx - Top clients causing errors, Nginx - Top URLs by bytes served, Nginx - Traffic volume and bytes served per day, Non 200 Response Status Codes, Number of Hits by Server - One Day Time Comparison, Number of Requests by Client - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Server Errors Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Locations, Threat Table, Top 10 Bots Observed, Top 10 Search Terms from Popular Search Engines, Top 5 Clients Causing 4xx Errors, Top 5 Clients causing Errors, Top 5 Critical Messages, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 Servers with Errors, Top 5 URIs causing 404 Responses, Top 5 URLs, Top 5 URLs with Errors, Traffic Distribution by Server, Traffic Volume and Bytes Served, Unique Visitors, United States, Visitor Locations (Top 5 Countries) - Today Vs. Yesterday, Visitor Platforms, Visitors Platforms Over Time, Visits by Country Over Time, Visits by US Regions Over Time, WorldWide


