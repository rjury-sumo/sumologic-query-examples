# Parsers For Acquia

## Parser:
```
| parse " - - - * - - [*] \"* * HTTP/1.1\" * * \"*\" \"*\" vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as src_ip,timestamp,method,url,status_code,size,referrer,user_agent,vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse " - - - * - - [*] \"* * HTTP/1.1\" * * \"*\" \"*\" vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as src_ip,timestamp,method,url,status_code,size,referrer,user_agent,vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location nodrop
| parse "\"referrer\":\"*\"," as referrer
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse " - - - * - - [*] \"* * HTTP/1.1\" * * \"*\" \"*\" vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as src_ip,timestamp,method,url,status_code,size,referrer,user_agent,vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location nodrop
| parse "\"url\":\"*\"," as url
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse " - - - * - - [*] \"* * HTTP/1.1\" * * \"*\" \"*\" vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as src_ip,timestamp,method,url,status_code,size,referrer,user_agent,vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location nodrop
| parse "\"user_agent\":\"*\"," as user_agent
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse " vhost=* forwarded_for=\"*\" request_id=\"*\" hosting_site=* *: *" as vhost,forwarded_for,request_id,hosting_site,error_code,error
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "bytes" as size
| json field=message "host"
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "client_ip"
| json field=message "host"
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "client_ip" as client_ip
| json field=message "host" as host
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "client_ip" as client_ip
| json field=message "status" as status_code
| json field=message "host" as host
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "client_ip" as src_ip
| json field=raw "labels[*].name" as label_name 
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "handling"
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "handling"
| json field=message "host"
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "host"
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "host"
| json field=message "status" as status_code
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "host"
| json field=message "user_agent" as agent
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "host"
| json field=message "user_agent" as agent
| parse regex field=agent "(?<os>Mac OS) (?<version>[^;\)]+?)(?:;|\))" nodrop 
| parse regex field=agent "(?<os>Windows)(?: NT | )(?<version>[\d.]+)" nodrop 
| parse regex field=agent "(?<os>Linux) (?<version>\S+?)(?:\)|;)" nodrop 
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "host"
| parse regex "\((?<device>iPhone).+? CPU iPhone OS (?<version>.+?) like Mac"  nodrop 
| parse regex "\((?<device>iPad).+? CPU OS (?<version>.+?) like Mac"  nodrop 
| parse regex " (?<device>Android) (?<version>[\d\.]+)" nodrop 
| parse regex "(?<device>SAMSUNG).+?(?<version>(?:GT-\w+|SGH-\w+|SPH-\w+|SCH-\w+))"
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "host" as host
| json field=message "client_ip" as client_ip
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "referrer" as referrer
| json field=message "host" as host
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "referrer" as referrer
| json field=message "host" as host
| parse regex field=referrer "(?:\?|&)(?:p|q|wd|searchfor)=(?<search_term>[^=]+?)(?:&|$)" nodrop 
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "request_id"
| json field=message "status"
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "request_id"
| json field=message "status"
| json field=message "client_ip"
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "status"
| json field=message "request_id"
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "status" as status_code
| json field=message "ah_environment" as env
| json field=message "host" as host
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "status" as status_code
| json field=message "client_ip" as client_ip
| json field=message "host" as host
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "status" as status_code
| json field=message "host" as host
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "status" as status_code
| json field=message "request_id"
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "status" as status_code
| json field=message "url" as url
| json field=message "host" as host
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "url" as url
| json field=message "host" as host
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "url" as url
| json field=message "host" as host
| parse regex field=url "^[^\?]+?\.(?<type>[a-zA-Z]{2,4})$" nodrop
| parse regex field=url "/\S+?(?<email_prefix>(?:%40|@)[^.]+?)\.\w+" 
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as message
| json field=message "user_agent" as agent
| json field=message "host"
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
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
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as msg
| json field=msg "handling"
| json field=msg "request_id"
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as msg
| json field=msg "hitmiss"
| json field=msg "request_id"
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "- - - *" as msg
| json field=msg "time_firstbyte"
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse ": *|*|*|*|*|*|*|*|* request_id=\"*\"" as domain,timestamp,module,src_ip,url,referrer,uid,link,message,request_id
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse ": *|*|*|*|*|*|*|*|* request_id=\"*\"" as domain,timestamp,module,src_ip,url,referrer,uid,link,message,request_id
| split url delim='?' extract 1 as url, 2 as qstring
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "* * * * - - - [*] *: * request_id=\"*\"" as head,systime,env,host,time,type,message,request_id
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "\"* /*\" * memory_kb=* %cpu=* duration_ms=* request_id=\"*\"" as method,url,status_code,memory_kb,cpu,duration_ms,request_id
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "\"host\":\"*\"," as host nodrop
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "\"user_agent\":\"*\"," as user_agent
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "<133>1 * * *.* - - - [*] * * * http_code=* query=* uid=* php_pid=* php_time=* queue_wait=* request_id=\"*\"" as timestamp,lb,host,logtype,time,appurl,method,url,http_code,query,uid,php_id,php_time,queue_wait,request_id
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "<133>1 * * *.* - - - [*] * * * http_code=* query=* uid=* php_pid=* php_time=* queue_wait=* request_id=\"*\"" as timestamp,lb,host,logtype,time,appurl,method,url,http_code,query,uid,php_id,php_time,queue_wait,request_id
| split url delim='?' extract 1 as url, 2 as qstring
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "<133>1 * * *.* - - - [*] * * * http_code=* query=* uid=* php_pid=* php_time=* queue_wait=* request_id=\"*\"" as timestamp,lb,host,logtype,time,appurl,method,url,status_code,query,uid,php_id,php_time,queue_wait,request_id
| split url delim='?' extract 1 as url, 2 as qstring
| parse "http_code=* query=* uid=* php_pid=* php_time=* queue_wait=* request_id=\"*\"" as http_code,query,uid,php_pid,php_time,queue_wait,request_id
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse "vhost=* host=* hosting_site=* pid=* request_time=* forwarded_for=\"*\" request_id=\"*\" location=\"*\"" as vhost,host,hosting_site,pid,request_time,forwarded_for,request_id,location
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide



## Parser:
```
| parse regex "(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP/[\d\.]+\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP/[\d\.]+\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
 `n```
### Use Cases:
Activity Over Time, Apache Non 2XX Status Codes, Apache Request Volume, Apache Response Size Over Time, Apache Response Time Outlier, Average CPU Consumed by Timeslice, Average Memory Consumed by Timeslice, Average Response Time Outlier, Bot Traffic Over Time, Browsers and Operating Systems, Cache Miss Rate Outlier, Cache Performance, Cache Performance Over Time, Client Errors Over Time, Client Location - 4xx Errors, Client Locations - 4xx Errors, Drupal Requests Non 2xx Status Codes, Error Responses by Server, Errors by Domain, Errors by Environment, Errors by Module, Errors by URL, Errors Outlier Over Time, Media Types Served, Non 2** Response Codes, Non 200 Response Status Codes, Non 2xx Status Codes by Location, Non 2xx Status Codes Over Time, Number of Hits by Host - One Day Time Comparison, Number of Hits by Server - One Day Time Comparison, PHP Error Details, PHP Errors Over Time, Popular Mobile Device Versions, Queue Time Outlier, Requests by Domain, Response Codes Overtime, Response Time Outlier, Responses Over Time, Server Errors Over Time, Status Codes Over Time, Threat Breakdown by Sources, Threat by Actors, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 10 Bots Observed, Top 10 Error Codes, Top 10 PC and Mac Versions, Top 10 Referrers, Top 10 Search Terms from Popular Search Engines, Top 10 Slowest Queries, Top 10 Slowest URLs, Top 5 Clients Causing 4xx Errors, Top 5 URIs causing 404 Responses, Top 5 User Agents, Top Clients, Top Documents, Top Referrers, Top Requests, Traffic Distribution by Host, Traffic Distribution by Server, Traffic Volume and Bytes Served, United States, Varnish Cache Performance, Varnish Non 2xx Status Codes, Varnish Requests by Country, Varnish Response Time Outlier, Visitor Geolocations, Visitor Locations, Visitor Locations - One Day Time Comparison, Visits by Country Over Time, Visits by US State Over Time, Vistor Platforms, Watchdog Errors Over time, Worldwide


