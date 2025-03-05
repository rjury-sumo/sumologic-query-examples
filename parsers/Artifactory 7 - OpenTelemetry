# Parsers For Artifactory 7 - OpenTelemetry

## Parser:
```
| parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```
### Use Cases:
5xx Status Codes, Accepted Deploys by Geolocation, Accepted Deploys by IP, Accepted Deploys by Repo, Accepted Downloads by Geolocation, Accepted Downloads by IP, Accepted Downloads by Repo, Accepted Login Attempts, Cache Hit Ratio, Cached Accepted Deploys by Repo, Data Transfer (GBs) Over Time, Data Upload-Download (GBs), Denied Deploys, Denied Deploys by Geolocation, Denied Deploys by IP, Denied Deploys by Repo, Denied Deploys Detail, Denied Downloads by Geolocation, Denied Downloads by IP, Denied Downloads by Repo, Denied Login Attempts, Download Traffic by Geolocation, Non-Anonymous Access, Remote Download Size (GB), Remote Incomplete Downloads, Requests by Repo, Requests by Status Code (Every 10 Minutes), Unique Paths Accepted Deploys, Unique Paths Accepted Downloads, Unique Paths Denied Deploys, Unique Paths Denied Downloads, Upload Traffic by Geolocation



## Parser:
```
| parse "*|*|*|*|*|*|*|*|*|*|*" as datetime, trace_id, ip, user, method, path, status_code, response_size, request_size, response_time, user_agent
```
### Use Cases:
5xx Status Codes, Accepted Deploys by Geolocation, Accepted Deploys by IP, Accepted Deploys by Repo, Accepted Downloads by Geolocation, Accepted Downloads by IP, Accepted Downloads by Repo, Accepted Login Attempts, Cache Hit Ratio, Cached Accepted Deploys by Repo, Data Transfer (GBs) Over Time, Data Upload-Download (GBs), Denied Deploys, Denied Deploys by Geolocation, Denied Deploys by IP, Denied Deploys by Repo, Denied Deploys Detail, Denied Downloads by Geolocation, Denied Downloads by IP, Denied Downloads by Repo, Denied Login Attempts, Download Traffic by Geolocation, Non-Anonymous Access, Remote Download Size (GB), Remote Incomplete Downloads, Requests by Repo, Requests by Status Code (Every 10 Minutes), Unique Paths Accepted Deploys, Unique Paths Accepted Downloads, Unique Paths Denied Deploys, Unique Paths Denied Downloads, Upload Traffic by Geolocation



## Parser:
```
| parse "*|*|*|*|*|*|*|*|*|*|*" as datetime, trace_id, ip, user, method, path, status_code, response_size, request_size, response_time, user_agent
| parse regex field=path "/(?<repo>[^\/]+).*" nodrop
| parse regex field=path "(?<with_api>/api/(?:(?:npm|ruby|deb|docker|vcs|bower|pypi)/|))(?<repo>[^\/]+)"
```
### Use Cases:
5xx Status Codes, Accepted Deploys by Geolocation, Accepted Deploys by IP, Accepted Deploys by Repo, Accepted Downloads by Geolocation, Accepted Downloads by IP, Accepted Downloads by Repo, Accepted Login Attempts, Cache Hit Ratio, Cached Accepted Deploys by Repo, Data Transfer (GBs) Over Time, Data Upload-Download (GBs), Denied Deploys, Denied Deploys by Geolocation, Denied Deploys by IP, Denied Deploys by Repo, Denied Deploys Detail, Denied Downloads by Geolocation, Denied Downloads by IP, Denied Downloads by Repo, Denied Login Attempts, Download Traffic by Geolocation, Non-Anonymous Access, Remote Download Size (GB), Remote Incomplete Downloads, Requests by Repo, Requests by Status Code (Every 10 Minutes), Unique Paths Accepted Deploys, Unique Paths Accepted Downloads, Unique Paths Denied Deploys, Unique Paths Denied Downloads, Upload Traffic by Geolocation, Uploads by Repo



## Parser:
```
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|(?<trace_id>\w+)\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```
### Use Cases:
5xx Status Codes, Accepted Deploys by Geolocation, Accepted Deploys by IP, Accepted Deploys by Repo, Accepted Downloads by Geolocation, Accepted Downloads by IP, Accepted Downloads by Repo, Accepted Login Attempts, Active Downloading IPs, Active Uploading IPs, Cache Hit Ratio, Cached Accepted Deploys by Repo, Data Transfer (GBs) Over Time, Data Transfer Over Time, Data Upload-Download, Data Upload-Download (GBs), Denied Deploys, Denied Deploys by Geolocation, Denied Deploys by IP, Denied Deploys by Repo, Denied Deploys Detail, Denied Downloads by Geolocation, Denied Downloads by IP, Denied Downloads by Repo, Denied Login Attempts, Download Traffic by Geolocation, Most Active IPs by Action, Most Active Locations, Most Active Repos by Action, Most Active Repos by Data Transfer, Non-Anonymous Access, Overall Traffic by Geolocation, Remote Download Size (GB), Remote Incomplete Downloads, Requests by Repo, Requests by Status Code (Every 10 Minutes), Top Referred Files, Unique Paths Accepted Deploys, Unique Paths Accepted Downloads, Unique Paths Denied Deploys, Unique Paths Denied Downloads, Upload Traffic by Geolocation, Uploads by Repo



## Parser:
```
| parse regex "^.*\)(?: - | )(?<repo>[\w-]*)\s+(?<action>\w*)"
| parse "downloaded  * * * at * *" as artifact, size, unit, rate, rateunit nodrop
| parse "downloading * * *" as artifact, size, unit
```
### Use Cases:
Accepted Deploys by Geolocation, Accepted Deploys by IP, Accepted Deploys by Repo, Accepted Downloads by Geolocation, Accepted Downloads by IP, Accepted Downloads by Repo, Cache Hit Ratio, Cached Accepted Deploys by Repo, Data Transfer (GBs) Over Time, Data Upload-Download (GBs), Denied Deploys, Denied Deploys by Geolocation, Denied Deploys by IP, Denied Deploys by Repo, Denied Deploys Detail, Denied Downloads by Geolocation, Denied Downloads by IP, Denied Downloads by Repo, Download Traffic by Geolocation, Remote Download Size (GB), Remote Incomplete Downloads, Requests by Status Code (Every 10 Minutes), Unique Paths Accepted Deploys, Unique Paths Accepted Downloads, Unique Paths Denied Deploys, Unique Paths Denied Downloads, Upload Traffic by Geolocation



## Parser:
```
| parse regex "^.*\)(?: - | )(?<repo>[\w-]*)\s+(?<action>\w*)"
| parse "downloaded  * * * at * KB/sec" as artifact, size, unit, rate
```
### Use Cases:
Accepted Deploys by Geolocation, Accepted Deploys by IP, Accepted Deploys by Repo, Accepted Downloads by Geolocation, Accepted Downloads by IP, Accepted Downloads by Repo, Data Transfer (GBs) Over Time, Denied Deploys, Denied Deploys by Geolocation, Denied Deploys by IP, Denied Deploys by Repo, Denied Deploys Detail, Denied Downloads by Geolocation, Denied Downloads by IP, Denied Downloads by Repo, Remote Download Size (GB), Requests by Status Code (Every 10 Minutes), Unique Paths Accepted Deploys, Unique Paths Accepted Downloads, Unique Paths Denied Deploys, Unique Paths Denied Downloads



## Parser:
```
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```
### Use Cases:
Accepted Deploys by Geolocation, Accepted Deploys by IP, Accepted Deploys by Repo, Accepted Downloads by Geolocation, Accepted Downloads by IP, Accepted Downloads by Repo, Cached Accepted Deploys by Repo, Data Transfer (GBs) Over Time, Denied Deploys, Denied Deploys by Geolocation, Denied Deploys by IP, Denied Deploys by Repo, Denied Deploys Detail, Denied Downloads by Geolocation, Denied Downloads by IP, Denied Downloads by Repo, Download Traffic by Geolocation, Remote Download Size (GB), Requests by Status Code (Every 10 Minutes), Unique Paths Accepted Deploys, Unique Paths Accepted Downloads, Unique Paths Denied Deploys, Unique Paths Denied Downloads


