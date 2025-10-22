# Parsers For IIS 10 (Legacy)

**IIS 10 (Legacy)/Counters_HTTPServiceRequestQueues Log Parser/Counters_HTTPServiceRequestQueues Log Parser**
```
_sourceCategory = Labs/Webserver/IIS/PerfCounter Win32_PerfFormattedData_Counters_HTTPServiceRequestQueues 
| parse "Name = \"*\";" as Name nodrop
| parse "ArrivalRate = \"*\";" as ArrivalRate nodrop
| parse "CacheHitRate = \"*\";" as CacheHitRate nodrop
|	parse "CurrentQueueSize = *;" as CurrentQueueSize nodrop
|	parse "MaxQueueItemAge = \"*\";" as MaxQueueItemAge nodrop
|	parse "RejectionRate = \"*\";" as RejectionRate nodrop
```

**IIS 10 (Legacy)/IIS 10 - All HTTP Response Codes with their Count/IIS 10 - All HTTP Response Codes with their Count**
```
_sourceCategory = Labs/Webserver/IIS/Access 
// #Fields: date time s-ip cs-method cs-uri-stem cs-uri-query s-port cs-username c-ip cs(User-Agent) cs(Referer) sc-status sc-substatus sc-win32-status time-taken // Default Log format for IIS V8.5 and IIS V10.0
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 (Legacy)/IIS 10 - Client Errors (4xx response codes) per Day/IIS 10 - Client Errors (4xx response codes) per Day**
```
_sourceCategory = Labs/Webserver/IIS/Access 4*
// #Fields: date time s-ip cs-method cs-uri-stem cs-uri-query s-port cs-username c-ip cs(User-Agent) cs(Referer) sc-status sc-substatus sc-win32-status time-taken // Default Log format for IIS V8.5 and IIS V10.0
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 (Legacy)/IIS 10 - HTTP Status Code Summary over time/IIS 10 - HTTP Status Code Summary over time**
```
_sourceCategory = Labs/Webserver/IIS/Access 
// #Fields: date time s-ip cs-method cs-uri-stem cs-uri-query s-port cs-username c-ip cs(User-Agent) cs(Referer) sc-status sc-substatus sc-win32-status time-taken // Default Log format for IIS V8.5 and IIS V10.0
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 (Legacy)/IIS 10 - Malicious URL Requests/IIS 10 - Malicious URL Requests**
```
_sourceCategory = Labs/Webserver/IIS/Access ("jsessionid" or "old" or "bak") 
// #Fields: date time s-ip cs-method cs-uri-stem cs-uri-query s-port cs-username c-ip cs(User-Agent) cs(Referer) sc-status sc-substatus sc-win32-status time-taken // Default Log format for IIS V8.5 and IIS V10.0
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 (Legacy)/IIS 10 - Robots/IIS 10 - Robots**
```
_sourceCategory = Labs/Webserver/IIS/Access "/robots.txt" 
// #Fields: date time s-ip cs-method cs-uri-stem cs-uri-query s-port cs-username c-ip cs(User-Agent) cs(Referer) sc-status sc-substatus sc-win32-status time-taken // Default Log format for IIS V8.5 and IIS V10.0
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 (Legacy)/IIS 10 - Slowest URLs by Average Time/IIS 10 - Slowest URLs by Average Time**
```
_sourceCategory = Labs/Webserver/IIS/Access 
// #Fields: date time s-ip cs-method cs-uri-stem cs-uri-query s-port cs-username c-ip cs(User-Agent) cs(Referer) sc-status sc-substatus sc-win32-status time-taken // Default Log format for IIS V8.5 and IIS V10.0
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 (Legacy)/IIS 10 - Time Taken to Serve Requests/IIS 10 - Time Taken to Serve Requests**
```
_sourceCategory = Labs/Webserver/IIS/Access 
// #Fields: date time s-ip cs-method cs-uri-stem cs-uri-query s-port cs-username c-ip cs(User-Agent) cs(Referer) sc-status sc-substatus sc-win32-status time-taken // Default Log format for IIS V8.5 and IIS V10.0
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"  
```

**IIS 10 (Legacy)/IIS 10 - Top 404 URLs/IIS 10 - Top 404 URLs**
```
_sourceCategory = Labs/Webserver/IIS/Access 404 
// #Fields: date time s-ip cs-method cs-uri-stem cs-uri-query s-port cs-username c-ip cs(User-Agent) cs(Referer) sc-status sc-substatus sc-win32-status time-taken // Default Log format for IIS V8.5 and IIS V10.0
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 (Legacy)/IIS 10 - Top Browsers/IIS 10 - Top Browsers**
```
_sourceCategory = Labs/Webserver/IIS/Access 
// #Fields: date time s-ip cs-method cs-uri-stem cs-uri-query s-port cs-username c-ip cs(User-Agent) cs(Referer) sc-status sc-substatus sc-win32-status time-taken // Default Log format for IIS V8.5 and IIS V10.0
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 (Legacy)/IIS 10 - Top Clients Causing Errors/IIS 10 - Top Clients Causing Errors**
```
_sourceCategory = Labs/Webserver/IIS/Access 4*
// #Fields: date time s-ip cs-method cs-uri-stem cs-uri-query s-port cs-username c-ip cs(User-Agent) cs(Referer) sc-status sc-substatus sc-win32-status time-taken // Default Log format for IIS V8.5 and IIS V10.0
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 (Legacy)/IIS 10 - Top Clients/IIS 10 - Top Clients**
```
_sourceCategory = Labs/Webserver/IIS/Access 
// #Fields: date time s-ip cs-method cs-uri-stem cs-uri-query s-port cs-username c-ip cs(User-Agent) cs(Referer) sc-status sc-substatus sc-win32-status time-taken // Default Log format for IIS V8.5 and IIS V10.0
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 (Legacy)/IIS 10 - Top URLs by Count/IIS 10 - Top URLs by Count**
```
_sourceCategory = Labs/Webserver/IIS/Access 
// #Fields: date time s-ip cs-method cs-uri-stem cs-uri-query s-port cs-username c-ip cs(User-Agent) cs(Referer) sc-status sc-substatus sc-win32-status time-taken // Default Log format for IIS V8.5 and IIS V10.0
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 (Legacy)/IIS 10 - Traffic Volume Served per Day/IIS 10 - Traffic Volume Served per Day**
```
_sourceCategory = Labs/Webserver/IIS/Access 
// #Fields: date time s-ip cs-method cs-uri-stem cs-uri-query s-port cs-username c-ip cs(User-Agent) cs(Referer) sc-status sc-substatus sc-win32-status time-taken // Default Log format for IIS V8.5 and IIS V10.0
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 (Legacy)/W3SVC_WebService Log Parser/W3SVC_WebService Log Parser**
```
_sourceCategory = Labs/Webserver/IIS/PerfCounter Win32_PerfFormattedData_W3SVC_WebService
| parse "Name = \"*\";" as Name nodrop
| parse "BytesReceivedPersec = \"*\";" as BytesReceivedPersec nodrop
| parse	"BytesSentPersec = \"*\";" as BytesSentPersec nodrop
| parse	"BytesTotalPersec = \"*\";" as BytesTotalPersec nodrop
| parse	"CGIRequestsPersec = *;" as CGIRequestsPersec nodrop
| parse	"CurrentAnonymousUsers = *;" as CurrentAnonymousUsers nodrop
| parse	"CurrentConnections = *;" as CurrentConnections nodrop
| parse	"CurrentNonAnonymousUsers = *;" as CurrentNonAnonymousUsers nodrop
| parse	"FilesReceivedPersec = *;" as FilesReceivedPersec nodrop
| parse	"FilesSentPersec = *;" as FilesSentPersec nodrop
| parse	"GetRequestsPersec = *;" as GetRequestsPersec nodrop
| parse	"ISAPIExtensionRequestsPersec = *;" as GetRequestsPersec nodrop
| parse	"PostRequestsPersec = *;" as PostRequestsPersec nodrop
| parse	"ServiceUptime = *;" as ServiceUptime nodrop
| parse "TotalMethodRequestsPersec = *;" as TotalMethodRequestsPersec nodrop
```


