# Parsers For Apache - OpenTelemetry

## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
 
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Bytes Served - Outlier, Client Errors, Client Locations with Critical Errors, Critical Error Messages, Critical Errors, Error Log Levels, Log Level - One Day Time Comparison, Log Reduce, Messages by Log Level - Over Time, Number of Requests by Client - One Day Time Comparison, Number of Visitors, Responses Over Time, Server Errors, Top 10 Messages, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing Errors, Top 5 Critical Messages, Visitor Locations



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg " \[(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop 
 
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Critical Error Messages, Log Level - One Day Time Comparison, Log Reduce, Messages by Log Level - Over Time, Number of Requests by Client - One Day Time Comparison, Responses Over Time, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Critical Messages, Visitor Locations



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg " \[(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] (?<reason>[a-zA-Z].*)" nodrop 
 
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Critical Error Messages, Log Reduce, Responses Over Time, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Critical Messages, Visitor Locations



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg " \[(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg "\[client (?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
 
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Client Locations with Critical Errors, Critical Error Messages, Critical Errors, Error Log Levels, Log Level - One Day Time Comparison, Log Reduce, Messages by Log Level - Over Time, Number of Requests by Client - One Day Time Comparison, Responses Over Time, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing Errors, Top 5 Critical Messages, Visitor Locations



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg " \[(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg "\[client (?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "\[client (?<src_ip>[a-f0-1:]*)\] " nodrop 
 
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Critical Error Messages, Log Level - One Day Time Comparison, Log Reduce, Messages by Log Level - Over Time, Number of Requests by Client - One Day Time Comparison, Responses Over Time, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing Errors, Top 5 Critical Messages, Visitor Locations



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<reason>[a-zA-Z].+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?:.+?) (?<file>/[a-zA-Z0-9\._].+?)(?:$|, |: | on line| (?i)http/1.(?:0|1))"  nodrop 
| parse regex field=mesg " (?<file>[a-zA-Z]:\\.+?)(?:$|, |: | on line)" nodrop 
| parse regex field=mesg "\[client (?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop 
| parse regex field=mesg "\[client .+?:(?<src_port>[0-9][0-9]+)\] " nodrop 
| parse regex field=mesg "referer: (?<referrer>.+)$"  nodrop 
| parse regex field=mesg " \[(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg "(?<reason>Forbidden): (?<file>.+?) doesn't point to a file or directory" nodrop 
| parse regex field=mesg "(?<reason>Handler for .+? returned invalid result code [0-9]+)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$| - .+$|, referer.+$)" nodrop 
| parse regex field=mesg "Invalid [a-zA-Z]+ in request .+? (?<url>/.+?)(?:$|, |: | (?i)http/1.(?:0|1))" nodrop 
| parse regex field=mesg "(?<reason>Script timed out before returning headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Symbolic link not allowed.*?): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>configuration error):  couldn't .+?: (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>dir_walk error), .+? filename (?:path|)(?<file>.+?) for uri (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>handler .+? not found) for: (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>need Auth.+?): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Cannot map (?<request>.+?) to file" nodrop 
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<file>(?:/[a-zA-Z0-9\._].+?|[a-zA-Z]:\\.+?)) pcfg_openfile: (?<reason>unable to check htaccess file), ensure it is readable" nodrop 
| parse regex field=mesg "access to (?<url>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<file>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<url>.+?) failed; stat of '(?<file>.+?)' failed." nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+)\] (?<reason>[a-zA-Z].*)" nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+):tid (?<thread_id>[0-9]+)\]" nodrop 
| parse regex field=mesg "(?<reason>Buggy authn provider failed to set user) for (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Evaluation of .*?expression from (?<file>.+?):[0-9]+ " nodrop 
| parse regex field=mesg "(?<reason>Invalid status line from script) '(?<file>.+?)':" nodrop 
| parse regex field=mesg "(?<reason>client submitted cookie '.*?' more than once): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>malformed header from script) '(?<file>.+?)':" nodrop 
| parse regex field=mesg "\[client (?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<reason>[a-zA-Z].+?)" nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] (?<reason>[a-zA-Z].*)" nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+):tid (?<thread_id>[0-9]+)\] (?<reason>[a-zA-Z].*)" nodrop 
| parse regex field=mesg "(?<reason>client used wrong authentication scheme): (?<url>.+?)(?:$|, referer.+$)" nodrop
| parse regex field=mesg "(?<reason>File does not exist): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Premature end of script headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>client sent HTTP/1.1 request without hostname) \(.+?\): (?<url>.+?)(?:$|, referer.+$)" nodrop 
 
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Client Locations with Critical Errors, Critical Error Messages, Critical Errors, Error Log Levels, Log Level - One Day Time Comparison, Log Reduce, Messages by Log Level - Over Time, Number of Requests by Client - One Day Time Comparison, Responses Over Time, Top 10 Messages, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing Errors, Top 5 Critical Messages, Visitor Locations



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
 
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Browsers and Operating Systems, Bytes Served, Bytes Served - Outlier, Client Errors, Client Locations - 4xx Errors, Client Locations with Critical Errors, Critical Error Messages, Critical Errors, Desktop OS Versions, Error Log Levels, Error Responses by Server, Highly Malicious Threats, HTTP Methods, Log Level - One Day Time Comparison, Log Reduce, Media Types Served, Messages by Log Level - Over Time, Non 200 Response Status Codes, Number of Hits by Server - One Day Time Comparison, Number of Requests by Client - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Server Errors Over Time, Threat Count, Threat Locations, Threats by Actors, Threats by Malicious Confidence, Threats by Source, Top 10 Bots Observed, Top 10 Errors from Error Log Files, Top 10 Messages, Top 10 Search Terms from Popular Search Engines, Top 10 Threats, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing 4xx Errors, Top 5 Clients Causing 5xx Errors, Top 5 Clients Causing Errors, Top 5 Critical Messages, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 Urls, Top 5 URLs Causing 4xx Responses, Top 5 URLs Causing 5xx Responses, Traffic Distribution by Server, Traffic Volume and Bytes Served, Unique Visitors, United States, Visitor Locations, Visitor Locations - One Day Time Comparison, Visitor Platforms, Visitor Platforms Over Time, Visits by Country Over Time, Visits by US Regions Over Time, Worldwide



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
| json field=raw "labels[*].name" as label_name 
 
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Bytes Served - Outlier, Client Errors, Client Locations with Critical Errors, Critical Error Messages, Critical Errors, Error Log Levels, Highly Malicious Threats, Log Level - One Day Time Comparison, Log Reduce, Messages by Log Level - Over Time, Number of Requests by Client - One Day Time Comparison, Number of Visitors, Responses Over Time, Server Errors, Threat Count, Threat Locations, Threats by Actors, Threats by Malicious Confidence, Threats by Source, Top 10 Messages, Top 10 Threats, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing Errors, Top 5 Critical Messages, Top 5 Highly Malicious URLs, Visitor Locations



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
| parse regex field=mesg "\((?<device>iPhone).+? CPU iPhone OS (?<version>.+?) like Mac"  nodrop 
| parse regex field=mesg "\((?<device>iPad).+? CPU OS (?<version>.+?) like Mac"  nodrop 
| parse regex field=mesg " (?<device>Android) (?<version>[\d\.]+)" nodrop 
| parse regex field=mesg "(?<device>SAMSUNG).+?(?<version>(?:GT-\w+|SGH-\w+|SPH-\w+|SCH-\w+))" nodrop
 
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Bytes Served - Outlier, Client Errors, Client Locations with Critical Errors, Critical Error Messages, Critical Errors, Error Log Levels, Highly Malicious Threats, Log Level - One Day Time Comparison, Log Reduce, Messages by Log Level - Over Time, Number of Hits by Server - One Day Time Comparison, Number of Requests by Client - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Threat Count, Threat Locations, Threats by Actors, Threats by Malicious Confidence, Threats by Source, Top 10 Messages, Top 10 Threats, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing Errors, Top 5 Critical Messages, Top 5 Highly Malicious URLs, Traffic Distribution by Server, Traffic Volume and Bytes Served, Unique Visitors, Visitor Locations, Visitor Locations - One Day Time Comparison, Visitor Platforms Over Time



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
| parse regex field=referrer "(?:\?|&)(?:p|q|wd|searchfor)=(?<search_term>[^=]+?)(?:&|$)" nodrop 
 
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Browsers and Operating Systems, Bytes Served, Bytes Served - Outlier, Client Errors, Client Locations with Critical Errors, Critical Error Messages, Critical Errors, Desktop OS Versions, Error Log Levels, Highly Malicious Threats, HTTP Methods, Log Level - One Day Time Comparison, Log Reduce, Media Types Served, Messages by Log Level - Over Time, Number of Hits by Server - One Day Time Comparison, Number of Requests by Client - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Threat Count, Threat Locations, Threats by Actors, Threats by Malicious Confidence, Threats by Source, Top 10 Messages, Top 10 Search Terms from Popular Search Engines, Top 10 Threats, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing Errors, Top 5 Critical Messages, Top 5 Highly Malicious URLs, Traffic Distribution by Server, Traffic Volume and Bytes Served, Unique Visitors, United States, Visitor Locations, Visitor Locations - One Day Time Comparison, Visitor Platforms, Visitor Platforms Over Time, Visits by Country Over Time, Visits by US Regions Over Time, Worldwide



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
| parse regex field=url "^/[^\?]+?\.(?<type>[a-zA-Z]{2,4})$" nodrop
| parse regex field=url "/\S+?(?<email_prefix>(?:%40|@)[^.]+?)\.\w+" nodrop 
 
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Browsers and Operating Systems, Bytes Served, Bytes Served - Outlier, Client Errors, Client Locations with Critical Errors, Critical Error Messages, Critical Errors, Desktop OS Versions, Error Log Levels, Highly Malicious Threats, HTTP Methods, Log Level - One Day Time Comparison, Log Reduce, Media Types Served, Messages by Log Level - Over Time, Number of Hits by Server - One Day Time Comparison, Number of Requests by Client - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Threat Count, Threat Locations, Threats by Actors, Threats by Malicious Confidence, Threats by Source, Top 10 Messages, Top 10 Threats, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing Errors, Top 5 Critical Messages, Top 5 Highly Malicious URLs, Traffic Distribution by Server, Traffic Volume and Bytes Served, Unique Visitors, United States, Visitor Locations, Visitor Locations - One Day Time Comparison, Visitor Platforms, Visitor Platforms Over Time, Visits by Country Over Time, Visits by US Regions Over Time, Worldwide



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
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
| parse regex field=user_agent "(?<bot_name>Exabot?)\W" nodrop
 
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Browsers and Operating Systems, Bytes Served, Bytes Served - Outlier, Client Errors, Client Locations with Critical Errors, Critical Error Messages, Critical Errors, Desktop OS Versions, Error Log Levels, Highly Malicious Threats, HTTP Methods, Log Level - One Day Time Comparison, Log Reduce, Media Types Served, Messages by Log Level - Over Time, Non 200 Response Status Codes, Number of Hits by Server - One Day Time Comparison, Number of Requests by Client - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Server Errors Over Time, Threat Count, Threat Locations, Threats by Actors, Threats by Malicious Confidence, Threats by Source, Top 10 Bots Observed, Top 10 Messages, Top 10 Search Terms from Popular Search Engines, Top 10 Threats, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing 4xx Errors, Top 5 Clients Causing 5xx Errors, Top 5 Clients Causing Errors, Top 5 Critical Messages, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 Urls, Top 5 URLs Causing 5xx Responses, Traffic Distribution by Server, Traffic Volume and Bytes Served, Unique Visitors, United States, Visitor Locations, Visitor Locations - One Day Time Comparison, Visitor Platforms, Visitor Platforms Over Time, Visits by Country Over Time, Visits by US Regions Over Time, Worldwide



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
| parse regex field=user_agent "(?<os>Mac OS) (?<version>[^;\)]+?)(?:;|\))" nodrop 
| parse regex field=user_agent "(?<os>Windows)(?: NT | )(?<version>[\d.]+)" nodrop 
| parse regex field=user_agent "(?<os>Linux) (?<version>\S+?)(?:\)|;)" nodrop 
 
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Bytes Served - Outlier, Client Errors, Client Locations with Critical Errors, Critical Error Messages, Critical Errors, Desktop OS Versions, Error Log Levels, Highly Malicious Threats, Log Level - One Day Time Comparison, Log Reduce, Messages by Log Level - Over Time, Number of Hits by Server - One Day Time Comparison, Number of Requests by Client - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Threat Count, Threat Locations, Threats by Actors, Threats by Malicious Confidence, Threats by Source, Top 10 Messages, Top 10 Threats, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing Errors, Top 5 Critical Messages, Top 5 Highly Malicious URLs, Traffic Distribution by Server, Traffic Volume and Bytes Served, Unique Visitors, Visitor Locations, Visitor Locations - One Day Time Comparison, Visitor Platforms Over Time



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^\[[^]]*]\s\[(?<log_level>[a-z:]+)\]" nodrop
| parse regex field=mesg "\[[^]]*]\s\[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop
| parse field=mesg "[error] *" as error_mesg nodrop
| parse field=mesg "[client *] *" as src_ip, error_mesg
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] (?<error_mesg>.*)" nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+)\] (?<error_mesg>[a-zA-Z].*)" nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+):tid (?<thread_id>[0-9]+)\] (?<error_mesg>[a-zA-Z].*)" nodrop 
 
```
### Use Cases:
4xx Status Codes by Server, Top 10 URLs with 4xx Errors, Top 5 Critical Messages



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^\[[^]]*]\s\[(?<log_level>[a-z:]+)\]" nodrop
| parse regex field=mesg "\[[^]]*]\s\[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop
| parse field=mesg "[error] *" as error_mesg nodrop
| parse field=mesg "[client *] *" as src_ip, error_mesg nodrop
 
```
### Use Cases:
4xx Status Codes by Server, Critical Error Messages, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Critical Messages



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^\[[^]]*]\s\[(?<log_level>[a-z]+)\]" nodrop
| parse regex field=mesg "\[[^]]*]\s\[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop
 
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Browsers and Operating Systems, Bytes Served, Bytes Served - Outlier, Client Errors, Client Locations with Critical Errors, Critical Error Messages, Critical Errors, Desktop OS Versions, Error Log Levels, Highly Malicious Threats, HTTP Methods, Log Level - One Day Time Comparison, Log Reduce, Media Types Served, Messages by Log Level - Over Time, Number of Hits by Server - One Day Time Comparison, Number of Requests by Client - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Threat Count, Threat Locations, Threats by Actors, Threats by Malicious Confidence, Threats by Source, Top 10 Messages, Top 10 Search Terms from Popular Search Engines, Top 10 Threats, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing 5xx Errors, Top 5 Clients Causing Errors, Top 5 Critical Messages, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 Urls, Top 5 URLs Causing 5xx Responses, Traffic Distribution by Server, Traffic Volume and Bytes Served, Unique Visitors, United States, Visitor Locations, Visitor Locations - One Day Time Comparison, Visitor Platforms, Visitor Platforms Over Time, Visits by Country Over Time, Visits by US Regions Over Time, Worldwide



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^\[[^]]*]\s\[(?<log_level>[a-z]+)\]" nodrop
| parse regex field=mesg "\[[^]]*]\s\[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop
| parse field=mesg "[error] *" as error_mesg nodrop
| parse field=mesg "[client *] *" as src_ip, error_mesg nodrop
 
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Browsers and Operating Systems, Bytes Served, Bytes Served - Outlier, Client Errors, Client Locations - 4xx Errors, Client Locations with Critical Errors, Critical Error Messages, Critical Errors, Desktop OS Versions, Error Log Levels, Highly Malicious Threats, HTTP Methods, Log Level - One Day Time Comparison, Log Reduce, Media Types Served, Messages by Log Level - Over Time, Non 200 Response Status Codes, Number of Hits by Server - One Day Time Comparison, Number of Requests by Client - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Server Errors Over Time, Threat Count, Threat Locations, Threats by Actors, Threats by Malicious Confidence, Threats by Source, Top 10 Bots Observed, Top 10 Errors from Error Log Files, Top 10 Messages, Top 10 Search Terms from Popular Search Engines, Top 10 Threats, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing 4xx Errors, Top 5 Clients Causing 5xx Errors, Top 5 Clients Causing Errors, Top 5 Critical Messages, Top 5 Highly Malicious URLs, Top 5 Referrers, Top 5 Urls, Top 5 URLs Causing 4xx Responses, Top 5 URLs Causing 5xx Responses, Traffic Distribution by Server, Traffic Volume and Bytes Served, Unique Visitors, United States, Visitor Locations, Visitor Locations - One Day Time Comparison, Visitor Platforms, Visitor Platforms Over Time, Visits by Country Over Time, Visits by US Regions Over Time, Worldwide



## Parser:
```
| parse regex "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
 
```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Browsers and Operating Systems, Bytes Served - Outlier, Client Errors, Client Locations with Critical Errors, Critical Error Messages, Critical Errors, Desktop OS Versions, Error Log Levels, Highly Malicious Threats, Log Level - One Day Time Comparison, Log Reduce, Messages by Log Level - Over Time, Number of Hits by Server - One Day Time Comparison, Number of Requests by Client - One Day Time Comparison, Number of Visitors, Popular Mobile Device Versions, Responses Over Time, Server Errors, Threat Count, Threat Locations, Threats by Actors, Threats by Malicious Confidence, Threats by Source, Top 10 Messages, Top 10 Threats, Top 10 URLs with 4xx Errors, Top 10 URLs with 5xx Errors, Top 5 Clients Causing Errors, Top 5 Critical Messages, Top 5 Highly Malicious URLs, Traffic Distribution by Server, Traffic Volume and Bytes Served, Unique Visitors, United States, Visitor Locations, Visitor Locations - One Day Time Comparison, Visitor Platforms, Visitor Platforms Over Time, Visits by Country Over Time, Visits by US Regions Over Time, Worldwide


