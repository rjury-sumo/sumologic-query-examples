# Parsers For Acquia

**Acquia/Apache Overview/Number of Hits by Server - One Day Time Comparison**
```
_sourceCategory={{_sourceCategory}} apache-access
| parse " - - - * - - [*] \"* * HTTP/1.1\" * * \"*\" \"*\" vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as src_ip,timestamp,method,url,status_code,size,referrer,user_agent,vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location
```

**Acquia/Apache Overview/Responses Over Time**
```
_sourceCategory={{_sourceCategory}} apache-access 
| parse " - - - * - - [*] \"* * HTTP/1.1\" * * \"*\" \"*\" vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as src_ip,timestamp,method,url,status_code,size,referrer,user_agent,vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location
```

**Acquia/Apache Overview/Traffic Distribution by Server**
```
_sourceCategory={{_sourceCategory}} apache-access
| parse " - - - * - - [*] \"* * HTTP/1.1\" * * \"*\" \"*\" vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as src_ip,timestamp,method,url,status_code,size,referrer,user_agent,vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location
```

**Acquia/Apache Overview/Traffic Volume and Bytes Served**
```
_sourceCategory={{_sourceCategory}} apache-access 
| parse " - - - * - - [*] \"* * HTTP/1.1\" * * \"*\" \"*\" vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as src_ip,timestamp,method,url,status_code,size,referrer,user_agent,vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location
```

**Acquia/Apache Overview/Visitor Locations**
```
_sourceCategory={{_sourceCategory}} apache-access
| parse " - - - * - - [*] \"* * HTTP/1.1\" * * \"*\" \"*\" vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as src_ip,timestamp,method,url,status_code,size,referrer,user_agent,vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location
```

**Acquia/Apache Overview/Visitor Locations - One Day Time Comparison**
```
_sourceCategory={{_sourceCategory}} apache-access 
| parse " - - - * - - [*] \"* * HTTP/1.1\" * * \"*\" \"*\" vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as src_ip,timestamp,method,url,status_code,size,referrer,user_agent,vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location
```

**Acquia/Drupal Requests Overview/Average Response Time Outlier**
```
_sourceCategory={{_sourceCategory}} drupal-requests 
| parse "<133>1 * * *.* - - - [*] * * * http_code=* query=* uid=* php_pid=* php_time=* queue_wait=* request_id=\"*\"" as timestamp,lb,host,logtype,time,appurl,method,url,http_code,query,uid,php_id,php_time,queue_wait,request_id
```

**Acquia/Drupal Requests Overview/Queue Time Outlier**
```
_sourceCategory={{_sourceCategory}} drupal-requests	
| parse "<133>1 * * *.* - - - [*] * * * http_code=* query=* uid=* php_pid=* php_time=* queue_wait=* request_id=\"*\"" as timestamp,lb,host,logtype,time,appurl,method,url,http_code,query,uid,php_id,php_time,queue_wait,request_id
```

**Acquia/Drupal Requests Overview/Response Codes Overtime**
```
_sourceCategory={{_sourceCategory}} drupal-requests
| parse "<133>1 * * *.* - - - [*] * * * http_code=* query=* uid=* php_pid=* php_time=* queue_wait=* request_id=\"*\"" as timestamp,lb,host,logtype,time,appurl,method,url,http_code,query,uid,php_id,php_time,queue_wait,request_id
```

**Acquia/Drupal Requests Overview/Top 10 Slowest Queries**
```
_sourceCategory={{_sourceCategory}} drupal-requests 
| parse "<133>1 * * *.* - - - [*] * * * http_code=* query=* uid=* php_pid=* php_time=* queue_wait=* request_id=\"*\"" as timestamp,lb,host,logtype,time,appurl,method,url,status_code,query,uid,php_id,php_time,queue_wait,request_id
| split url delim='?' extract 1 as url, 2 as qstring
| parse "http_code=* query=* uid=* php_pid=* php_time=* queue_wait=* request_id=\"*\"" as http_code,query,uid,php_pid,php_time,queue_wait,request_id
```

**Acquia/Drupal Requests Overview/Top 10 Slowest URLs**
```
_sourceCategory={{_sourceCategory}} drupal-requests
| parse "<133>1 * * *.* - - - [*] * * * http_code=* query=* uid=* php_pid=* php_time=* queue_wait=* request_id=\"*\"" as timestamp,lb,host,logtype,time,appurl,method,url,http_code,query,uid,php_id,php_time,queue_wait,request_id
| split url delim='?' extract 1 as url, 2 as qstring
```

**Acquia/Errors Overview/Activity Over Time**
```
_sourceCategory={{_sourceCategory}} drupal-watchdog
| parse ": *|*|*|*|*|*|*|*|* request_id=\"*\"" as domain,timestamp,module,src_ip,url,referrer,uid,link,message,request_id
```

**Acquia/Errors Overview/Apache Non 2XX Status Codes**
```
_sourceCategory={{_sourceCategory}} apache-access
| parse " - - - * - - [*] \"* * HTTP/1.1\" * * \"*\" \"*\" vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as src_ip,timestamp,method,url,status_code,size,referrer,user_agent,vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location
```

**Acquia/Errors Overview/Cache Miss Rate Outlier**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as msg
| json field=msg "hitmiss"
| json field=msg "request_id"
```

**Acquia/Errors Overview/Cache Performance**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as msg
| json field=msg "handling"
| json field=msg "request_id"
```

**Acquia/Errors Overview/Client Errors Over Time**
```
_sourceCategory={{_sourceCategory}} apache-access
| parse " - - - * - - [*] \"* * HTTP/1.1\" * * \"*\" \"*\" vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as src_ip,timestamp,method,url,status_code,size,referrer,user_agent,vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location
```

**Acquia/Errors Overview/Client Location - 4xx Errors**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "request_id"
| json field=message "status"
| json field=message "client_ip"
```

**Acquia/Errors Overview/Drupal Requests Non 2xx Status Codes**
```
_sourceCategory={{_sourceCategory}} drupal-requests //v-0a1773c0-9147-11e9-bfae-f3b30d819671
| parse "<133>1 * * *.* - - - [*] * * * http_code=* query=* uid=* php_pid=* php_time=* queue_wait=* request_id=\"*\"" as timestamp,lb,host,logtype,time,appurl,method,url,http_code,query,uid,php_id,php_time,queue_wait,request_id
| split url delim='?' extract 1 as url, 2 as qstring
```

**Acquia/Errors Overview/Errors by Domain**
```
_sourceCategory={{_sourceCategory}} drupal-watchdog
| parse ": *|*|*|*|*|*|*|*|* request_id=\"*\"" as domain,timestamp,module,src_ip,url,referrer,uid,link,message,request_id
```

**Acquia/Errors Overview/Errors by Module**
```
_sourceCategory={{_sourceCategory}} drupal-watchdog error
| parse ": *|*|*|*|*|*|*|*|* request_id=\"*\"" as domain,timestamp,module,src_ip,url,referrer,uid,link,message,request_id
```

**Acquia/Errors Overview/Errors by URL**
```
_sourceCategory={{_sourceCategory}} drupal-watchdog
| parse ": *|*|*|*|*|*|*|*|* request_id=\"*\"" as domain,timestamp,module,src_ip,url,referrer,uid,link,message,request_id
| where message matches "*error*"
| split url delim='?' extract 1 as url, 2 as qstring
```

**Acquia/Errors Overview/Errors Outlier Over Time**
```
_sourceCategory={{_sourceCategory}} drupal-watchdog
| parse ": *|*|*|*|*|*|*|*|* request_id=\"*\"" as domain,timestamp,module,src_ip,url,referrer,uid,link,message,request_id
```

**Acquia/Errors Overview/Non 2xx Status Codes by Location**
```
_sourceCategory={{_sourceCategory}} apache-access
| parse " - - - * - - [*] \"* * HTTP/1.1\" * * \"*\" \"*\" vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as src_ip,timestamp,method,url,status_code,size,referrer,user_agent,vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location
```

**Acquia/Errors Overview/Non 2xx Status Codes Over Time**
```
_sourceCategory={{_sourceCategory}} apache-access
| parse " - - - * - - [*] \"* * HTTP/1.1\" * * \"*\" \"*\" vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as src_ip,timestamp,method,url,status_code,size,referrer,user_agent,vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location
```

**Acquia/Errors Overview/PHP Error Details**
```
_sourceCategory={{_sourceCategory}} php-errors
| parse "* * * * - - - [*] *: * request_id=\"*\"" as head,systime,env,host,time,type,message,request_id
```

**Acquia/Errors Overview/PHP Errors Over Time**
```
_sourceCategory={{_sourceCategory}} php-errors
| parse "* * * * - - - [*] *: * request_id=\"*\"" as head,systime,env,host,time,type,message,request_id
```

**Acquia/Errors Overview/Server Errors Over Time**
```
_sourceCategory={{_sourceCategory}} apache-access
| parse " - - - * - - [*] \"* * HTTP/1.1\" * * \"*\" \"*\" vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as src_ip,timestamp,method,url,status_code,size,referrer,user_agent,vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location
```

**Acquia/Errors Overview/Top 10 Error Codes**
```
_sourceCategory={{_sourceCategory}} apache-error
| parse " vhost=* forwarded_for=\"*\" request_id=\"*\" hosting_site=* *: *" as vhost,forwarded_for,request_id,hosting_site,error_code,error
```

**Acquia/Errors Overview/Varnish Non 2xx Status Codes**
```
_sourceCategory={{_sourceCategory}} varnishncsa
| parse "- - - *" as message
| json field=message "status"
| json field=message "request_id"
```

**Acquia/Errors Overview/Watchdog Errors Over time**
```
_sourceCategory={{_sourceCategory}} drupal-watchdog
| parse ": *|*|*|*|*|*|*|*|* request_id=\"*\"" as domain,timestamp,module,src_ip,url,referrer,uid,link,message,request_id
```

**Acquia/FPM Overview/Average CPU Consumed by Timeslice**
```
_sourceCategory={{_sourceCategory}} fpm-access !AH_FPM_STATUS
| parse "\"* /*\" * memory_kb=* %cpu=* duration_ms=* request_id=\"*\"" as method,url,status_code,memory_kb,cpu,duration_ms,request_id
```

**Acquia/FPM Overview/Average Memory Consumed by Timeslice**
```
_sourceCategory={{_sourceCategory}} fpm-access !AH_FPM_STATUS
| parse "\"* /*\" * memory_kb=* %cpu=* duration_ms=* request_id=\"*\"" as method,url,status_code,memory_kb,cpu,duration_ms,request_id
```

**Acquia/FPM Overview/Non 2** Response Codes**
```
_sourceCategory={{_sourceCategory}} fpm-access
| parse "\"* /*\" * memory_kb=* %cpu=* duration_ms=* request_id=\"*\"" as method,url,status_code,memory_kb,cpu,duration_ms,request_id
```

**Acquia/FPM Overview/Response Time Outlier**
```
_sourceCategory={{_sourceCategory}} fpm-access !AH_FPM_STATUS
| parse "\"* /*\" * memory_kb=* %cpu=* duration_ms=* request_id=\"*\"" as method,url,status_code,memory_kb,cpu,duration_ms,request_id
```

**Acquia/FPM Overview/Status Codes Over Time**
```
_sourceCategory={{_sourceCategory}} fpm-access
| parse "\"* /*\" * memory_kb=* %cpu=* duration_ms=* request_id=\"*\"" as method,url,status_code,memory_kb,cpu,duration_ms,request_id
```

**Acquia/Overview/Apache Request Volume**
```
_sourceCategory={{_sourceCategory}} apache-access 
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP/[\d\.]+\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP/[\d\.]+\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Acquia/Overview/Apache Response Size Over Time**
```
_sourceCategory={{_sourceCategory}} apache-access 
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP/[\d\.]+\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP/[\d\.]+\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Acquia/Overview/Apache Response Time Outlier**
```
_sourceCategory={{_sourceCategory}} apache-access
| parse "vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location
```

**Acquia/Overview/Bot Traffic Over Time**
```
_sourceCategory={{_sourceCategory}} (apache-access or varnishncsa)
| parse " - - - * - - [*] \"* * HTTP/1.1\" * * \"*\" \"*\" vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as src_ip,timestamp,method,url,status_code,size,referrer,user_agent,vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location nodrop
| parse "\"user_agent\":\"*\"," as user_agent
```

**Acquia/Overview/PHP Errors Over Time**
```
_sourceCategory={{_sourceCategory}} php-errors
| parse "* * * * - - - [*] *: * request_id=\"*\"" as head,systime,env,host,time,type,message,request_id
```

**Acquia/Overview/Requests by Domain**
```
_sourceCategory={{_sourceCategory}} varnishncsa
| parse "\"host\":\"*\"," as host nodrop
```

**Acquia/Overview/Top 10 Referrers**
```
_sourceCategory={{_sourceCategory}} (apache-access OR varnishncsa)
| parse " - - - * - - [*] \"* * HTTP/1.1\" * * \"*\" \"*\" vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as src_ip,timestamp,method,url,status_code,size,referrer,user_agent,vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location nodrop
| parse "\"referrer\":\"*\"," as referrer
```

**Acquia/Overview/Top 5 User Agents**
```
_sourceCategory={{_sourceCategory}} varnishncsa
| parse "\"user_agent\":\"*\"," as user_agent
```

**Acquia/Overview/Top Requests**
```
_sourceCategory={{_sourceCategory}} (apache-access OR varnishncsa)
| parse " - - - * - - [*] \"* * HTTP/1.1\" * * \"*\" \"*\" vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as src_ip,timestamp,method,url,status_code,size,referrer,user_agent,vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location nodrop
| parse "\"url\":\"*\"," as url
```

**Acquia/Overview/Varnish Cache Performance**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "handling"
```

**Acquia/Overview/Varnish Requests by Country**
```
_sourceCategory={{_sourceCategory}} varnishncsa
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
```

**Acquia/Overview/Varnish Response Time Outlier**
```
_sourceCategory={{_sourceCategory}} varnishncsa
| parse "- - - *" as msg
| json field=msg "time_firstbyte"
```

**Acquia/Overview/Visitor Geolocations**
```
_sourceCategory={{_sourceCategory}} varnishncsa
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
```

**Acquia/Threat Analysis/Threat Breakdown by Sources**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "client_ip" as src_ip
|count as ip_count by src_ip, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=src_ip 
| json field=raw "labels[*].name" as label_name 
```

**Acquia/Threat Analysis/Threat by Actors**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "client_ip" as src_ip
|count as ip_count by src_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=src_ip 
| json field=raw "labels[*].name" as label_name 
```

**Acquia/Threat Analysis/Threat by Geo Location**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "client_ip" as src_ip
|count as ip_count by src_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=src_ip 
| json field=raw "labels[*].name" as label_name 
```

**Acquia/Threat Analysis/Threat Count**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "client_ip" as src_ip
|count as ip_count by src_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=src_ip 
| json field=raw "labels[*].name" as label_name 
```

**Acquia/Threat Analysis/Threat Table**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "client_ip" as src_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=src_ip 
| where  type="ip_address" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Acquia/Threat Analysis/Threats by Malicious Confidence**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "client_ip" as src_ip
|count as ip_count by src_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=src_ip 
| json field=raw "labels[*].name" as label_name 
```

**Acquia/Varnish Overview/Cache Performance Over Time**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "handling"
| json field=message "host"
```

**Acquia/Varnish Overview/Number of Hits by Host - One Day Time Comparison**
```
_sourceCategory={{_sourceCategory}} varnishncsa
| parse "- - - *" as message
| json field=message "host"
```

**Acquia/Varnish Overview/Responses Over Time**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "host"
| json field=message "status" as status_code
```

**Acquia/Varnish Overview/Traffic Distribution by Host**
```
_sourceCategory={{_sourceCategory}} varnishncsa
| parse "- - - *" as message
| json field=message "host"
```

**Acquia/Varnish Overview/Traffic Volume and Bytes Served**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "bytes" as size
| json field=message "host"
```

**Acquia/Varnish Overview/Visitor Locations**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "client_ip"
| json field=message "host"
```

**Acquia/Varnish Overview/Visitor Locations - One Day Time Comparison**
```
_sourceCategory={{_sourceCategory}} varnishncsa
| parse "- - - *" as message
| json field=message "client_ip"
| json field=message "host"
```

**Acquia/Varnish Visitor Access Types/Browsers and Operating Systems**
```
_sourceCategory={{_sourceCategory}} varnishncsa
| parse "- - - *" as message
| json field=message "host"
| json field=message "user_agent" as agent
```

**Acquia/Varnish Visitor Access Types/Popular Mobile Device Versions**
```
_sourceCategory={{_sourceCategory}} varnishncsa ( iphone or ipad or android or samsung) 
| parse "- - - *" as message
| json field=message "host"
| parse regex "\((?<device>iPhone).+? CPU iPhone OS (?<version>.+?) like Mac"  nodrop 
| parse regex "\((?<device>iPad).+? CPU OS (?<version>.+?) like Mac"  nodrop 
| parse regex " (?<device>Android) (?<version>[\d\.]+)" nodrop 
| parse regex "(?<device>SAMSUNG).+?(?<version>(?:GT-\w+|SGH-\w+|SPH-\w+|SCH-\w+))"
```

**Acquia/Varnish Visitor Access Types/Top 10 PC and Mac Versions**
```
_sourceCategory={{_sourceCategory}} varnishncsa   ("macintosh" OR "mac os" OR "windows" OR "i686" or "PC" or ("Linux" AND !android))   
| parse "- - - *" as message
| json field=message "host"
| json field=message "user_agent" as agent
| parse regex field=agent "(?<os>Mac OS) (?<version>[^;\)]+?)(?:;|\))" nodrop 
| parse regex field=agent "(?<os>Windows)(?: NT | )(?<version>[\d.]+)" nodrop 
| parse regex field=agent "(?<os>Linux) (?<version>\S+?)(?:\)|;)" nodrop 
```

**Acquia/Varnish Visitor Access Types/Vistor Platforms**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "user_agent" as agent
| json field=message "host"
```

**Acquia/Varnish Visitor Locations/United States**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "client_ip" as client_ip
| json field=message "host" as host
```

**Acquia/Varnish Visitor Locations/Visits by Country Over Time**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "client_ip" as client_ip
| json field=message "host" as host
```

**Acquia/Varnish Visitor Locations/Visits by US State Over Time**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "client_ip" as client_ip
| json field=message "host" as host
```

**Acquia/Varnish Visitor Locations/Worldwide**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "client_ip" as client_ip
| json field=message "host" as host
```

**Acquia/Varnish Visitor Traffic Insight/Media Types Served**
```
_sourceCategory={{_sourceCategory}} varnishncsa
| parse "- - - *" as message
| json field=message "url" as url
| json field=message "host" as host
| parse regex field=url "^[^\?]+?\.(?<type>[a-zA-Z]{2,4})$" nodrop
| parse regex field=url "/\S+?(?<email_prefix>(?:%40|@)[^.]+?)\.\w+" 
```

**Acquia/Varnish Visitor Traffic Insight/Top 10 Search Terms from Popular Search Engines**
```
_sourceCategory={{_sourceCategory}} varnishncsa  (google OR bing OR aol OR ask OR yahoo) ("p=" OR "q=" OR "wd=" OR "searchfor=")
| parse "- - - *" as message
| json field=message "referrer" as referrer
| json field=message "host" as host
| parse regex field=referrer "(?:\?|&)(?:p|q|wd|searchfor)=(?<search_term>[^=]+?)(?:&|$)" nodrop 
```

**Acquia/Varnish Visitor Traffic Insight/Top Documents**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "url" as url
| json field=message "host" as host
```

**Acquia/Varnish Visitor Traffic Insight/Top Referrers**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "referrer" as referrer
| json field=message "host" as host
```

**Acquia/Varnish Web Server Operations/Client Locations - 4xx Errors**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "status" as status_code
| json field=message "client_ip" as client_ip
| json field=message "host" as host
```

**Acquia/Varnish Web Server Operations/Error Responses by Server**
```
_sourceCategory={{_sourceCategory}} varnishncsa
| parse "- - - *" as message
| json field=message "status" as status_code
| json field=message "host" as host
```

**Acquia/Varnish Web Server Operations/Errors by Environment**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "status" as status_code
| json field=message "ah_environment" as env
| json field=message "host" as host
```

**Acquia/Varnish Web Server Operations/Non 200 Response Status Codes**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "status" as status_code
| json field=message "host" as host
```

**Acquia/Varnish Web Server Operations/Server Errors Over Time**
```
_sourceCategory={{_sourceCategory}} varnishncsa 
| parse "- - - *" as message
| json field=message "status" as status_code
| json field=message "host" as host
```

**Acquia/Varnish Web Server Operations/Top 10 Bots Observed**
```
_sourceCategory={{_sourceCategory}} varnishncsa ("Googlebot" OR "AskJeeves" OR "Digger" OR "Lycos"
OR "msnbot" OR "Inktomi Slurp" OR "Yahoo" OR "Nutch" OR "bingbot" OR
"BingPreview" OR "Mediapartners-Google" OR "proximic" OR "AhrefsBot" OR
"AdsBot-Google" OR "Ezooms" OR "AddThis.com" OR "facebookexternalhit" OR
"MetaURI" OR "Feedfetcher-Google" OR "PaperLiBot" OR "TweetmemeBot" OR
"Sogou web spider" OR "GoogleProducer" OR "RockmeltEmbedder" OR
"ShareThisFetcher" OR "YandexBot" OR "rogerbot-crawler" OR "ShowyouBot" OR "Baiduspider" OR "Sosospider" OR "Exabot")
| parse "- - - *" as message
| json field=message "user_agent" as agent
| json field=message "host" as host
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
```

**Acquia/Varnish Web Server Operations/Top 5 Clients Causing 4xx Errors**
```
_sourceCategory={{_sourceCategory}} varnishncsa (400 OR 401 OR 402 OR 403 OR 404) 
| parse "- - - *" as message
| json field=message "client_ip" as client_ip
| json field=message "status" as status_code
| json field=message "host" as host
```

**Acquia/Varnish Web Server Operations/Top 5 URIs causing 404 Responses**
```
_sourceCategory={{_sourceCategory}} varnishncsa 404 
| parse "- - - *" as message
| json field=message "status" as status_code
| json field=message "url" as url
| json field=message "host" as host
```

**Acquia/Varnish Web Server Operations/Top Clients**
```
_sourceCategory={{_sourceCategory}} varnishncsa
| parse "- - - *" as message
| json field=message "host" as host
| json field=message "client_ip" as client_ip
```


