# Parsers For IIS 7

**IIS 7/All HTTP Response Codes with their Count/IIS 7 - All HTTP Response Codes with their Count**
```
_sourceCategory = Labs/IIS/* 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" nodrop 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
| parse regex "(?<s_sitename>\S+?) (?<cs_computername>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_version>\S+?) (?<cs_User_Agent>\S+?) (?<cs_cookie>\S+?) (?<cs_referer>\S+?) (?<cs_host>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop 
```

**IIS 7/Client Errors (4xx response codes) per Day/IIS 7 - Client Errors (4xx response codes) per Day**
```
_sourceCategory = Labs/IIS/* 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" nodrop 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
| parse regex "(?<s_sitename>\S+?) (?<cs_computername>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_version>\S+?) (?<cs_User_Agent>\S+?) (?<cs_cookie>\S+?) (?<cs_referer>\S+?) (?<cs_host>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
```

**IIS 7/HTTP Status Code Summary over time/IIS 7 - HTTP Status Code Summary over time**
```
_sourceCategory = Labs/IIS/* 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" nodrop 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
| parse regex "(?<s_sitename>\S+?) (?<cs_computername>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_version>\S+?) (?<cs_User_Agent>\S+?) (?<cs_cookie>\S+?) (?<cs_referer>\S+?) (?<cs_host>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop 
```

**IIS 7/Malicious URL Requests/IIS 7 - Malicious URL Requests**
```
_sourceCategory = Labs/IIS/* AND ("jsessionid" OR "old" OR "bak") 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" nodrop 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
| parse regex "(?<s_sitename>\S+?) (?<cs_computername>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_version>\S+?) (?<cs_User_Agent>\S+?) (?<cs_cookie>\S+?) (?<cs_referer>\S+?) (?<cs_host>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop 
```

**IIS 7/Overview - New/400 and 500 Server Errors**
```
_sourceCategory = Labs/IIS/*
| parse regex "\d+-\d+-\d+ \d+:\d+:\d+ (?<server_ip>\S+) (?<method>\S+) (?<cs_uri_stem>/\S+?) \S+ \d+ (?<user>\S+) (?<client_ip>[\.\d]+) "
| parse regex "(?<sc_status>\d+) (?<sc_substatus>\d+) (?<sc_win32_status>\d+) (?<time_taken>\d+)$"
```

**IIS 7/Overview - New/OS Platform Breakdown**
```
_sourceCategory = Labs/IIS/*
| parse regex "\d+-\d+-\d+ \d+:\d+:\d+ (?<server_ip>\S+) (?<method>\S+) (?<cs_uri_stem>/\S+?) \S+ \d+ (?<user>\S+) (?<client_ip>[\.\d]+) (?<agent>\S+) "
```

**IIS 7/Overview - New/Response Time Histogram**
```
_sourceCategory = Labs/IIS/*
| parse regex "\d+-\d+-\d+ \d+:\d+:\d+ (?<server_ip>\S+) (?<method>\S+) (?<cs_uri_stem>/\S+?) \S+ \d+ (?<user>\S+) (?<client_ip>[\.\d]+) "
| parse regex "\d+ \d+ \d+ (?<time_taken>\d+)$"
```

**IIS 7/Overview - New/Top Apps by Request**
```
_sourceCategory = Labs/IIS/*
| parse regex "\d+-\d+-\d+ \d+:\d+:\d+ (?<server_ip>\S+) (?<method>\S+) (?<cs_uri_stem>/\S+?) "
| parse regex field=cs_uri_stem "/(?<app>[^\./]+)/"
```

**IIS 7/Overview - New/Visits by Country**
```
_sourceCategory = Labs/IIS/*
| parse regex "(?:80|443) (?:\w+|-+|\\+)+ (?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) "
```

**IIS 7/Robots/IIS 7 - Robots**
```
_sourceCategory = Labs/IIS/* "/robots.txt" 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" nodrop 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
| parse regex "(?<s_sitename>\S+?) (?<cs_computername>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_version>\S+?) (?<cs_User_Agent>\S+?) (?<cs_cookie>\S+?) (?<cs_referer>\S+?) (?<cs_host>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop 
```

**IIS 7/Slowest URLs by Average Time/IIS 7 - Slowest URLs by Average Time**
```
_sourceCategory = Labs/IIS/* 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" nodrop 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
| parse regex "(?<s_sitename>\S+?) (?<cs_computername>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_version>\S+?) (?<cs_User_Agent>\S+?) (?<cs_cookie>\S+?) (?<cs_referer>\S+?) (?<cs_host>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
```

**IIS 7/Time Taken to Serve Requests/IIS 7 - Time Taken to Serve Requests**
```
_sourceCategory = Labs/IIS/* 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" nodrop 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
| parse regex "(?<s_sitename>\S+?) (?<cs_computername>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_version>\S+?) (?<cs_User_Agent>\S+?) (?<cs_cookie>\S+?) (?<cs_referer>\S+?) (?<cs_host>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop 
```

**IIS 7/Top 404 URLs/IIS 7 - Top 404 URLs**
```
_sourceCategory = Labs/IIS/* "404" 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" nodrop 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
| parse regex "(?<s_sitename>\S+?) (?<cs_computername>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_version>\S+?) (?<cs_User_Agent>\S+?) (?<cs_cookie>\S+?) (?<cs_referer>\S+?) (?<cs_host>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop 
```

**IIS 7/Top Browsers/IIS 7 - Top Browsers**
```
_sourceCategory = Labs/IIS/* 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" nodrop 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
| parse regex "(?<s_sitename>\S+?) (?<cs_computername>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_version>\S+?) (?<cs_User_Agent>\S+?) (?<cs_cookie>\S+?) (?<cs_referer>\S+?) (?<cs_host>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
```

**IIS 7/Top Clients Causing Errors/IIS 7 - Top Clients Causing Errors**
```
_sourceCategory = Labs/IIS/* 4*
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" nodrop 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
| parse regex "(?<s_sitename>\S+?) (?<cs_computername>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_version>\S+?) (?<cs_User_Agent>\S+?) (?<cs_cookie>\S+?) (?<cs_referer>\S+?) (?<cs_host>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop 
```

**IIS 7/Top Clients/IIS 7 - Top Clients**
```
_sourceCategory = Labs/IIS/* 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" nodrop 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
| parse regex "(?<s_sitename>\S+?) (?<cs_computername>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_version>\S+?) (?<cs_User_Agent>\S+?) (?<cs_cookie>\S+?) (?<cs_referer>\S+?) (?<cs_host>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop 
```

**IIS 7/Top URLs by Count/IIS 7 - Top URLs by Count**
```
_sourceCategory = Labs/IIS/* 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" nodrop 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
| parse regex "(?<s_sitename>\S+?) (?<cs_computername>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_version>\S+?) (?<cs_User_Agent>\S+?) (?<cs_cookie>\S+?) (?<cs_referer>\S+?) (?<cs_host>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
```

**IIS 7/Traffic Insights - Content and Client Platform - New/Media Types Requested Over Time**
```
_sourceCategory = Labs/IIS/*
| parse regex "\d+-\d+-\d+ \d+:\d+:\d+ (?<server_ip>\S+) (?<method>\S+) (?<cs_uri_stem>/\S+?) \S+ \d+ (?<user>\S+) (?<client_ip>[\.\d]+) " 
| parse regex field=cs_uri_stem "\.(?<media_type>[A-Za-z]+)$" 
```

**IIS 7/Traffic Insights - Content and Client Platform - New/OS Platform**
```
_sourceCategory = Labs/IIS/* 
| parse regex "\d+-\d+-\d+ \d+:\d+:\d+ (?<server_ip>\S+) (?<method>\S+) (?<cs_uri_stem>/\S+?) \S+ \d+ (?<user>\S+) (?<client_ip>[\.\d]+) (?<agent>\S+) " 
```

**IIS 7/Traffic Insights - Content and Client Platform - New/OSes and Browsers**
```
_sourceCategory = Labs/IIS/* 
| parse regex "\d+-\d+-\d+ \d+:\d+:\d+ (?<server_ip>\S+) (?<method>\S+) (?<cs_uri_stem>/\S+?) \S+ \d+ (?<user>\S+) (?<client_ip>[\.\d]+) (?<agent>\S+) " 
```

**IIS 7/Traffic Insights - Content and Client Platform - New/Top Requested Documents**
```
_sourceCategory = Labs/IIS/* 
| parse regex "\d+-\d+-\d+ \d+:\d+:\d+ (?<server_ip>\S+) (?<method>\S+) (?<cs_uri_stem>/\S+?) \S+ \d+ (?<user>\S+) (?<client_ip>[\.\d]+) "
```

**IIS 7/Traffic Volume Served per Day/IIS 7 - Traffic Volume Served per Day**
```
_sourceCategory = Labs/IIS/* 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" nodrop 
| parse regex "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop
| parse regex "(?<s_sitename>\S+?) (?<cs_computername>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_version>\S+?) (?<cs_User_Agent>\S+?) (?<cs_cookie>\S+?) (?<cs_referer>\S+?) (?<cs_host>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<sc_bytes>\S+?) (?<cs_bytes>\S+?) (?<time_taken>\S+?)$" nodrop 
```


