# Parsers For Squid Proxy

## Parser:
```
| json "log" as message  nodrop 
| parse regex field = message "(?<time>[\d.]+)\s+(?<elapsed>[\d]+)\s+(?<remotehost>[^\s]+)\s+(?<action>[^/]+)/(?<status_code>[\d]+)\s+(?<bytes>[\d]+)\s+(?<method>[^\s]+)\s+(?<url>[^\s]+)\s(?<rfc931>[^\s]+)\s+(?<peerstatus>[^/]+)/(?<peerhost>[^\s]+)\s+(?<type>[^\s|$]+?)(?:\s+|$)" nodrop | parse field = message "Connection: *\\r\\n" as connection_status nodrop | parse field = message "Host: *\\r\\n" as host nodrop | parse field = message "User-Agent: *\\r\\n" as user_agent nodrop | parse field = message "TE: *\\r\\n" as te nodrop
 `n```
### Use Cases:
Bytes Served, Recent Denied Requests, Remote Hosts Traffic by Requests



## Parser:
```
| json "log" as message nodrop 
| parse regex field = message "(?<time>[\d.]+)\s+(?<elapsed>[\d]+)\s+(?<remotehost>[^\s]+)\s+(?<action>[^/]+)/(?<status_code>[\d]+)\s+(?<bytes>[\d]+)\s+(?<method>[\w]+)\s+(?<url>[^\s]+)\s(?<rfc931>[^\s]+)\s+(?<peerstatus>[^/]+)/(?<peerhost>[^\s]+)\s+(?<type>[^\s|$]+?)(?:\s+|$)" nodrop | parse field = message "Connection: *\\r\\n" as connection_status nodrop | parse field = message "Host: *\\r\\n" as host nodrop | parse field = message "User-Agent: *\\r\\n" as user_agent nodrop | parse field = message "TE: *\\r\\n" as te nodrop
 `n```
### Use Cases:
Bytes Served, Cacheable Content Response Time (ms), Client Errors, Client Errors (HTTP Response) - Outlier, Denied Request Trend, Destination Experiencing avg response time more than 5 Seconds, Destination Locations, HTTP Response, HTTP Response Trend, Non 2xx Response actions, Overall Content Response Time (ms), Recent Denied Requests, Redirections, Redirections (HTTP Response) - Outlier, Remote Hosts Traffic by Requests, Request Trend by Squid Action, Response Time For TCP_DENIED Action (ms), Response Time For TCP_MISS Action (ms), Response Time For TCP_TUNNEL Action (ms), Server Errors, Server Errors (HTTP Response) - Outlier, Success (2xx) Response Actions, Time Spent to Serve Request, URLs Experiencing Client Errors, URLs Experiencing Redirections, URLs Experiencing Server Errors



## Parser:
```
| json "log" as message nodrop 
| parse regex field = message "(?<time>[\d.]+)\s+(?<elapsed>[\d]+)\s+(?<remotehost>[^\s]+)\s+(?<action>[^/]+)/(?<status_code>[\d]+)\s+(?<bytes>[\d]+)\s+(?<method>[^\s]+)\s+(?<url>[^\s]+)\s(?<rfc931>[^\s]+)\s+(?<peerstatus>[^/]+)/(?<peerhost>[^\s]+)\s+(?<type>[^\s|$]+?)(?:\s+|$)" nodrop | parse field = message "Connection: *\\r\\n" as connection_status nodrop | parse field = message "Host: *\\r\\n" as host nodrop | parse field = message "User-Agent: *\\r\\n" as user_agent nodrop | parse field = message "TE: *\\r\\n" as te nodrop
 `n```
### Use Cases:
4xx Status Codes by Server, 5xx Status Codes by Server, Bytes Served, Cacheable Content Response Time (ms), Client Errors, Client Errors (HTTP Response) - Outlier, Denied Request Trend, Denied Requests, Destination Experiencing avg response time more than 5 Seconds, Destination Locations, HTTP Method, HTTP Response, HTTP Response Trend, Non 2xx Response actions, Overall Content Response Time (ms), Recent Denied Requests, Redirections, Redirections (HTTP Response) - Outlier, Remote Hosts Traffic by Requests, Request Trend by Squid Action, Response Time For TCP_DENIED Action (ms), Response Time For TCP_MISS Action (ms), Response Time For TCP_TUNNEL Action (ms), Server Errors, Server Errors (HTTP Response) - Outlier, Success (2xx) Response Actions, Time Spent to Serve Request, Top 10 URLs with 4XX Errors, Top 10 URLs with 5xx Errors, Top Access Denied URLs, Top Destination, Top Remote Hosts, Top URLs Accessed, URLs Experiencing Client Errors, URLs Experiencing Redirections, URLs Experiencing Server Errors



## Parser:
```
| json "message" nodrop 
| parse regex field = message "(?<time>[\d.]+)\s+(?<elapsed>[\d]+)\s+(?<remotehost>[^\s]+)\s+(?<action>[^/]+)/(?<status_code>[\d]+)\s+(?<bytes>[\d]+)\s+(?<method>[\w]+)\s+(?<url>[^\s]+)\s(?<rfc931>[^\s]+)\s+(?<peerstatus>[^/]+)/(?<peerhost>[^\s]+)\s+(?<type>[^\s|$]+?)(?:\s+|$)" nodrop | parse field = message "Connection: *\\r\\n" as connection_status nodrop | parse field = message "Host: *\\r\\n" as host nodrop | parse field = message "User-Agent: *\\r\\n" as user_agent nodrop | parse field = message "TE: *\\r\\n" as te nodrop
 `n```
### Use Cases:
Bytes Served, Cacheable Content Response Time (ms), Client Errors, Client Errors (HTTP Response) - Outlier, Denied Request Trend, Denied Requests, Destination Experiencing avg response time more than 5 Seconds, Destination Locations, HTTP Method, HTTP Response, HTTP Response Trend, Non 2xx Response actions, Overall Content Response Time (ms), Recent Denied Requests, Redirections, Redirections (HTTP Response) - Outlier, Remote Hosts Traffic by Requests, Request Trend by Squid Action, Response Time For TCP_DENIED Action (ms), Response Time For TCP_MISS Action (ms), Response Time For TCP_TUNNEL Action (ms), Server Errors, Server Errors (HTTP Response) - Outlier, Success (2xx) Response Actions, Time Spent to Serve Request, Top Access Denied URLs, Top Destination, Top Remote Hosts, Top URLs Accessed, URLs Experiencing Client Errors, URLs Experiencing Redirections, URLs Experiencing Server Errors


