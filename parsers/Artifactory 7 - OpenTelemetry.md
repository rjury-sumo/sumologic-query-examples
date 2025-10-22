# Parsers For Artifactory 7 - OpenTelemetry

**Artifactory 7 - OpenTelemetry/Artifactory - Cached Deployment Activity/Accepted Deploys by Geolocation**
```
sumo.datasource=artifactory "ACCEPTED DEPLOY" "-cache"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Cached Deployment Activity/Accepted Deploys by IP**
```
sumo.datasource=artifactory "ACCEPTED DEPLOY" "-cache"
| parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Cached Deployment Activity/Accepted Deploys by Repo**
```
sumo.datasource=artifactory "ACCEPTED DEPLOY" "-cache"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Cached Deployment Activity/Denied Deploys by Geolocation**
```
sumo.datasource=artifactory "DENIED DEPLOY" "-cache"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Cached Deployment Activity/Denied Deploys by IP**
```
sumo.datasource=artifactory "DENIED DEPLOY" "-cache"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Cached Deployment Activity/Denied Deploys by Repo**
```
sumo.datasource=artifactory "DENIED DEPLOY" "-cache"
| parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Cached Deployment Activity/Unique Paths Accepted Deploys**
```
sumo.datasource=artifactory "ACCEPTED DEPLOY" "-cache"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Cached Deployment Activity/Unique Paths Denied Deploys**
```
sumo.datasource=artifactory "DENIED DEPLOY" "-cache"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Download Activity/Accepted Downloads by Geolocation**
```
sumo.datasource=artifactory "ACCEPTED DOWNLOAD"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Download Activity/Accepted Downloads by IP**
```
sumo.datasource=artifactory "ACCEPTED DOWNLOAD"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Download Activity/Accepted Downloads by Repo**
```
sumo.datasource=artifactory "ACCEPTED DOWNLOAD"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Download Activity/Denied Downloads by Geolocation**
```
sumo.datasource=artifactory "DENIED DOWNLOAD"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Download Activity/Denied Downloads by IP**
```
sumo.datasource=artifactory "DENIED DOWNLOAD"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Download Activity/Denied Downloads by Repo**
```
sumo.datasource=artifactory "DENIED DOWNLOAD"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Download Activity/Unique Paths Accepted Downloads**
```
sumo.datasource=artifactory "ACCEPTED DOWNLOAD"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Download Activity/Unique Paths Denied Downloads**
```
sumo.datasource=artifactory "DENIED DOWNLOAD"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Non-Cached Deployment Activity/Accepted Deploys by Geolocation**
```
sumo.datasource=artifactory "ACCEPTED" "DEPLOY" !"-cache"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Non-Cached Deployment Activity/Accepted Deploys by IP**
```
sumo.datasource=artifactory "ACCEPTED DEPLOY" !"-cache"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Non-Cached Deployment Activity/Accepted Deploys by Repo**
```
sumo.datasource=artifactory "ACCEPTED DEPLOY" !"-cache"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Non-Cached Deployment Activity/Denied Deploys**
```
sumo.datasource=artifactory "DENIED DEPLOY" !"-cache"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Non-Cached Deployment Activity/Denied Deploys Detail**
```
sumo.datasource=artifactory "DENIED DEPLOY" !"-cache"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Non-Cached Deployment Activity/Unique Paths Accepted Deploys**
```
sumo.datasource=artifactory "ACCEPTED DEPLOY" !"-cache"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Overview/5xx Status Codes**
```
sumo.datasource=artifactory 5*
| parse "*|*|*|*|*|*|*|*|*|*|*" as datetime, trace_id, ip, user, method, path, status_code, response_size, request_size, response_time, user_agent
```

**Artifactory 7 - OpenTelemetry/Artifactory - Overview/Accepted Downloads by Repo**
```
sumo.datasource=artifactory "ACCEPTED DOWNLOAD"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Overview/Cache Hit Ratio**
```
sumo.datasource=artifactory (("ACCEPTED DEPLOY" and "-cache") or "ACCEPTED DOWNLOAD")
| parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Overview/Cached Accepted Deploys by Repo**
```
sumo.datasource=artifactory "ACCEPTED DEPLOY" "-cache"
|parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Overview/Data Transfer (GBs) Over Time**
```
sumo.datasource=artifactory
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|(?<trace_id>\w+)\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7 - OpenTelemetry/Artifactory - Overview/Data Upload-Download (GBs)**
```
sumo.datasource=artifactory
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|(?<trace_id>\w+)\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7 - OpenTelemetry/Artifactory - Overview/Download Traffic by Geolocation**
```
sumo.datasource=artifactory DOWNLOAD
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|(?<trace_id>\w+)\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7 - OpenTelemetry/Artifactory - Overview/Remote Download Size (GB)**
```
sumo.datasource=artifactory downloaded 
| parse regex "^.*\)(?: - | )(?<repo>[\w-]*)\s+(?<action>\w*)"
| parse "downloaded  * * * at * KB/sec" as artifact, size, unit, rate
```

**Artifactory 7 - OpenTelemetry/Artifactory - Overview/Remote Incomplete Downloads**
```
sumo.datasource=artifactory (downloaded or downloading)
| parse regex "^.*\)(?: - | )(?<repo>[\w-]*)\s+(?<action>\w*)"
| parse "downloaded  * * * at * *" as artifact, size, unit, rate, rateunit nodrop
| parse "downloading * * *" as artifact, size, unit
```

**Artifactory 7 - OpenTelemetry/Artifactory - Overview/Requests by Repo**
```
sumo.datasource=artifactory 
| parse "*|*|*|*|*|*|*|*|*|*|*" as datetime, trace_id, ip, user, method, path, status_code, response_size, request_size, response_time, user_agent
| where !(path matches "/ui*" ) and !(path matches "/webapp*")
| parse regex field=path "/(?<repo>[^\/]+).*" nodrop
| parse regex field=path "(?<with_api>/api/(?:(?:npm|ruby|deb|docker|vcs|bower|pypi)/|))(?<repo>[^\/]+)"
```

**Artifactory 7 - OpenTelemetry/Artifactory - Overview/Requests by Status Code (Every 10 Minutes)**
```
sumo.datasource=artifactory
| parse "*|*|*|*|*|*|*|*|*|*|*" as datetime, trace_id, ip, user, method, path, status_code, response_size, request_size, response_time, user_agent
```

**Artifactory 7 - OpenTelemetry/Artifactory - Overview/Upload Traffic by Geolocation**
```
sumo.datasource=artifactory UPLOAD
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|(?<trace_id>\w+)\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7 - OpenTelemetry/Artifactory - Request and Access/5xx Status Codes**
```
sumo.datasource=artifactory 5*
| parse "*|*|*|*|*|*|*|*|*|*|*" as datetime, trace_id, ip, user, method, path, status_code, response_size, request_size, response_time, user_agent
```

**Artifactory 7 - OpenTelemetry/Artifactory - Request and Access/Accepted Login Attempts**
```
sumo.datasource=artifactory "login" ACCEPTED
| parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Request and Access/Denied Login Attempts**
```
sumo.datasource=artifactory "login" DENIED
| parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Request and Access/Non-Anonymous Access**
```
sumo.datasource=artifactory
| parse "[*] [*] *" as trace_id, event_type, user_info 
| parse regex field=user_info "(?:(?<repo>[^:]*):(?<path>[^\s]*))?\s+(?<opt_msg>[\w\s:]+)?\s+(?<user>[^\/]+)\/(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7 - OpenTelemetry/Artifactory - Request and Access/Requests by Repo**
```
sumo.datasource=artifactory 
| parse "*|*|*|*|*|*|*|*|*|*|*" as datetime, trace_id, ip, user, method, path, status_code, response_size, request_size, response_time, user_agent
| where !(path matches "/ui*" ) and !(path matches "/webapp*")
| parse regex field=path "/(?<repo>[^\/]+).*" nodrop
| parse regex field=path "(?<with_api>/api/(?:(?:npm|ruby|deb|docker|vcs|bower|pypi)/|))(?<repo>[^\/]+)"
```

**Artifactory 7 - OpenTelemetry/Artifactory - Request and Access/Requests by Status Code (Every 10 Minutes)**
```
sumo.datasource=artifactory
| parse "*|*|*|*|*|*|*|*|*|*|*" as datetime, trace_id, ip, user, method, path, status_code, response_size, request_size, response_time, user_agent
```

**Artifactory 7 - OpenTelemetry/Artifactory - Request and Access/Uploads by Repo**
```
sumo.datasource=artifactory PUT
| parse "*|*|*|*|*|*|*|*|*|*|*" as datetime, trace_id, ip, user, method, path, status_code, response_size, request_size, response_time, user_agent
| where  (method="PUT") and !(path matches "/ui*" ) and !(path matches "/webapp*")
| parse regex field=path "/(?<repo>[^\/]+).*" nodrop
| parse regex field=path "(?<with_api>/api/(?:(?:npm|ruby|deb|docker|vcs|bower|pypi)/|))(?<repo>[^\/]+)"
```

**Artifactory 7 - OpenTelemetry/Artifactory - Traffic/Active Downloading IPs**
```
sumo.datasource=artifactory DOWNLOAD
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|(?<trace_id>\w+)\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7 - OpenTelemetry/Artifactory - Traffic/Active Uploading IPs**
```
sumo.datasource=artifactory UPLOAD
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|(?<trace_id>\w+)\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7 - OpenTelemetry/Artifactory - Traffic/Data Transfer Over Time**
```
sumo.datasource=artifactory
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|(?<trace_id>\w+)\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7 - OpenTelemetry/Artifactory - Traffic/Data Upload-Download**
```
sumo.datasource=artifactory
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|(?<trace_id>\w+)\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7 - OpenTelemetry/Artifactory - Traffic/Download Traffic by Geolocation**
```
sumo.datasource=artifactory DOWNLOAD
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|(?<trace_id>\w+)\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7 - OpenTelemetry/Artifactory - Traffic/Most Active IPs by Action**
```
sumo.datasource=artifactory
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|(?<trace_id>\w+)\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7 - OpenTelemetry/Artifactory - Traffic/Most Active Locations**
```
sumo.datasource=artifactory
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|(?<trace_id>\w+)\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7 - OpenTelemetry/Artifactory - Traffic/Most Active Repos by Action**
```
sumo.datasource=artifactory
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|(?<trace_id>\w+)\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7 - OpenTelemetry/Artifactory - Traffic/Most Active Repos by Data Transfer**
```
sumo.datasource=artifactory
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|(?<trace_id>\w+)\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7 - OpenTelemetry/Artifactory - Traffic/Overall Traffic by Geolocation**
```
(sumo.datasource=artifactory)
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|(?<trace_id>\w+)\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7 - OpenTelemetry/Artifactory - Traffic/Top Referred Files**
```
sumo.datasource=artifactory
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|(?<trace_id>\w+)\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7 - OpenTelemetry/Artifactory - Traffic/Upload Traffic by Geolocation**
```
sumo.datasource=artifactory UPLOAD
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|(?<trace_id>\w+)\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```


