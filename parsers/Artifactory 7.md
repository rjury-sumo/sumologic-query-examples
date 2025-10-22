# Parsers For Artifactory 7

**Artifactory 7/Artifactory - Cached Deployment Activity/Accepted Deploys by Geolocation**
```
_sourceCategory={{Logsdatasource}}  "ACCEPTED DEPLOY" "-cache"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "^(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7/Artifactory - Cached Deployment Activity/Accepted Deploys by IP**
```
_sourceCategory={{Logsdatasource}}  "ACCEPTED DEPLOY" "-cache"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "^(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7/Artifactory - Cached Deployment Activity/Accepted Deploys by Repo**
```
_sourceCategory={{Logsdatasource}}  "ACCEPTED DEPLOY" "-cache"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "(?<ip>.*)\."
```

**Artifactory 7/Artifactory - Cached Deployment Activity/Denied Deploys by Geolocation**
```
_sourceCategory={{Logsdatasource}}  "DENIED DEPLOY" "-cache"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "^(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7/Artifactory - Cached Deployment Activity/Denied Deploys by IP**
```
_sourceCategory={{Logsdatasource}}  "DENIED DEPLOY" "-cache"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "^(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7/Artifactory - Cached Deployment Activity/Denied Deploys by Repo**
```
_sourceCategory={{Logsdatasource}}  "DENIED DEPLOY" "-cache"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "(?<ip>.*)\." 
```

**Artifactory 7/Artifactory - Cached Deployment Activity/Unique Paths Accepted Deploys**
```
_sourceCategory={{Logsdatasource}}  "ACCEPTED DEPLOY" "-cache"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "(?<ip>.*)\."
```

**Artifactory 7/Artifactory - Cached Deployment Activity/Unique Paths Denied Deploys**
```
_sourceCategory={{Logsdatasource}}  "DENIED DEPLOY" "-cache"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "(?<ip>.*)\."
```

**Artifactory 7/Artifactory - Download Activity/Accepted Downloads by Geolocation**
```
_sourceCategory={{Logsdatasource}}  "ACCEPTED DOWNLOAD"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "^(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7/Artifactory - Download Activity/Accepted Downloads by IP**
```
_sourceCategory={{Logsdatasource}}  "ACCEPTED DOWNLOAD"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "^(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7/Artifactory - Download Activity/Accepted Downloads by Repo**
```
_sourceCategory={{Logsdatasource}}  "ACCEPTED DOWNLOAD"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "(?<ip>.*)\."
```

**Artifactory 7/Artifactory - Download Activity/Denied Downloads by Geolocation**
```
_sourceCategory={{Logsdatasource}}  "DENIED DOWNLOAD"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "^(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7/Artifactory - Download Activity/Denied Downloads by IP**
```
_sourceCategory={{Logsdatasource}}  "DENIED DOWNLOAD"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "^(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7/Artifactory - Download Activity/Denied Downloads by Repo**
```
_sourceCategory={{Logsdatasource}}  "DENIED DOWNLOAD"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "(?<ip>.*)\."
```

**Artifactory 7/Artifactory - Download Activity/Unique Paths Accepted Downloads**
```
_sourceCategory={{Logsdatasource}}  "ACCEPTED DOWNLOAD"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "(?<ip>.*)\."
```

**Artifactory 7/Artifactory - Download Activity/Unique Paths Denied Downloads**
```
_sourceCategory={{Logsdatasource}}  "DENIED DOWNLOAD"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "(?<ip>.*)\."
```

**Artifactory 7/Artifactory - Non-Cached Deployment Activity/Accepted Deploys by Geolocation**
```
_sourceCategory={{Logsdatasource}}  "ACCEPTED DEPLOY" !"-cache"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "^(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7/Artifactory - Non-Cached Deployment Activity/Accepted Deploys by IP**
```
_sourceCategory={{Logsdatasource}}  "ACCEPTED DEPLOY" !"-cache"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "^(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7/Artifactory - Non-Cached Deployment Activity/Accepted Deploys by Repo**
```
_sourceCategory={{Logsdatasource}}  "ACCEPTED DEPLOY" !"-cache"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "(?<ip>.*)\."
```

**Artifactory 7/Artifactory - Non-Cached Deployment Activity/Denied Deploys**
```
_sourceCategory={{Logsdatasource}}  "DENIED DEPLOY" !"-cache"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "(?<ip>.*)\."
```

**Artifactory 7/Artifactory - Non-Cached Deployment Activity/Denied Deploys Detail**
```
_sourceCategory={{Logsdatasource}}  "DENIED DEPLOY" !"-cache"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "^(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7/Artifactory - Non-Cached Deployment Activity/Unique Paths Accepted Deploys**
```
_sourceCategory={{Logsdatasource}}  "ACCEPTED DEPLOY" !"-cache"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "(?<ip>.*)\."
```

**Artifactory 7/Artifactory - Overview/5xx Status Codes**
```
_sourceCategory={{Logsdatasource}}  5*
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, ip, user, method, path, protocol, status_code, size
```

**Artifactory 7/Artifactory - Overview/Accepted Downloads by Repo**
```
_sourceCategory={{Logsdatasource}}  "ACCEPTED DOWNLOAD"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "(?<ip>.*)\."
```

**Artifactory 7/Artifactory - Overview/Cache Hit Ratio**
```
_sourceCategory={{Logsdatasource}}  (("ACCEPTED DEPLOY" and "-cache") or "ACCEPTED DOWNLOAD")
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "(?<ip>.*)\."
```

**Artifactory 7/Artifactory - Overview/Cached Accepted Deploys by Repo**
```
_sourceCategory={{Logsdatasource}}  "ACCEPTED DEPLOY" "-cache"
| where _sourceCategory matches "*artifactory/access"
| parse "[*] *:* for */*" as what, repo, path, user, ip
| parse regex field=ip "(?<ip>.*)\."
```

**Artifactory 7/Artifactory - Overview/Data Transfer (GBs) Over Time**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceCategory matches "*artifactory/traffic"
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7/Artifactory - Overview/Data Upload-Download (GBs)**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceCategory matches "*artifactory/traffic"
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7/Artifactory - Overview/Download Traffic by Geolocation**
```
_sourceCategory={{Logsdatasource}}  DOWNLOAD
| where _sourceCategory matches "*artifactory/traffic"
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7/Artifactory - Overview/Remote Download Size (GB)**
```
_sourceCategory={{Logsdatasource}}  downloaded 
| where _sourceCategory matches "*artifactory*/console"
| parse regex "^.*\)(?: - | )(?<repo>[\w-]*)\s+(?<action>\w*)"
| parse "downloaded  * * * at * KB/sec" as artifact, size, unit, rate
```

**Artifactory 7/Artifactory - Overview/Remote Incomplete Downloads**
```
_sourceCategory={{Logsdatasource}}  (downloaded or downloading)
| where _sourceCategory matches "*artifactory*/console"
| parse regex "^.*\)(?: - | )(?<repo>[\w-]*)\s+(?<action>\w*)"
| parse "downloaded  * * * at * *" as artifact, size, unit, rate, rateunit nodrop
| parse "downloading * * *" as artifact, size, unit
```

**Artifactory 7/Artifactory - Overview/Requests by Repo**
```
_sourceCategory={{Logsdatasource}}  
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, ip, user, method, path, protocol, status_code, size
| where !(path matches "/ui*" ) and !(path matches "/webapp*")
| parse regex field=path "/(?<repo>[^\/]+).*" nodrop
| parse regex field=path "(?<with_api>/api/(?:(?:npm|ruby|deb|docker|vcs|bower|pypi)/|))(?<repo>[^\/]+)"
```

**Artifactory 7/Artifactory - Overview/Requests by Status Code (Every 10 Minutes)**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, ip, user, method, path, protocol, status_code, size
```

**Artifactory 7/Artifactory - Overview/Upload Traffic by Geolocation**
```
_sourceCategory={{Logsdatasource}}  UPLOAD
| where _sourceCategory matches "*artifactory/traffic"
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7/Artifactory - Request and Access/5xx Status Codes**
```
_sourceCategory={{Logsdatasource}}  5*
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, ip, user, method, path, protocol, status_code, size
```

**Artifactory 7/Artifactory - Request and Access/Accepted Login Attempts**
```
_sourceCategory={{Logsdatasource}}  "login" ACCEPTED
| where _sourceCategory matches "*artifactory/access"
| parse "[*]  for */*" as event_type, user, ip
| where event_type = "ACCEPTED LOGIN"
| parse regex field=ip "^(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7/Artifactory - Request and Access/Denied Login Attempts**
```
_sourceCategory={{Logsdatasource}}  "login" DENIED
| where _sourceCategory matches "*artifactory/access"
| parse "[*]  for */*" as event_type, user, ip
| where event_type = "DENIED LOGIN"
| parse regex field=ip "^(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7/Artifactory - Request and Access/Non-Anonymous Access**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceCategory matches "*artifactory/access"
| parse " [*] " as event_type 
| parse " for */*" as user, ip
| parse regex field=ip "^(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\."
```

**Artifactory 7/Artifactory - Request and Access/Requests by Repo**
```
_sourceCategory={{Logsdatasource}}  
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, ip, user, method, path, protocol, status_code, size
| where !(path matches "/ui*" ) and !(path matches "/webapp*")
| parse regex field=path "/(?<repo>[^\/]+).*" nodrop
| parse regex field=path "(?<with_api>/api/(?:(?:npm|ruby|deb|docker|vcs|bower|pypi)/|))(?<repo>[^\/]+)"
```

**Artifactory 7/Artifactory - Request and Access/Requests by Status Code (Every 10 Minutes)**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, ip, user, method, path, protocol, status_code, size
```

**Artifactory 7/Artifactory - Request and Access/Uploads by Repo**
```
_sourceCategory={{Logsdatasource}}  PUT
| where _sourceCategory matches "*artifactory/request"
| parse "*|*|*|*|*|*|*|*|*|*" as datetime, response_time, type, ip, user, method, path, protocol, status_code, size
| where  (method="PUT") and !(path matches "/ui*" ) and !(path matches "/webapp*")
| parse regex field=path "/(?<repo>[^\/]+).*" nodrop
| parse regex field=path "(?<with_api>/api/(?:(?:npm|ruby|deb|docker|vcs|bower|pypi)/|))(?<repo>[^\/]+)"
```

**Artifactory 7/Artifactory - Traffic/Active Downloading IPs**
```
_sourceCategory={{Logsdatasource}}  DOWNLOAD
| where _sourceCategory matches "*artifactory/traffic"
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7/Artifactory - Traffic/Active Uploading IPs**
```
_sourceCategory={{Logsdatasource}}  UPLOAD
| where _sourceCategory matches "*artifactory/traffic"
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7/Artifactory - Traffic/Data Transfer Over Time**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceCategory matches "*artifactory/traffic"
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7/Artifactory - Traffic/Data Upload-Download**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceCategory matches "*artifactory/traffic"
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7/Artifactory - Traffic/Download Traffic by Geolocation**
```
_sourceCategory={{Logsdatasource}}  DOWNLOAD
| where _sourceCategory matches "*artifactory/traffic"
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7/Artifactory - Traffic/Most Active IPs by Action**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceCategory matches "*artifactory/traffic"
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7/Artifactory - Traffic/Most Active Locations**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceCategory matches "*artifactory/traffic"
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7/Artifactory - Traffic/Most Active Repos by Action**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceCategory matches "*artifactory/traffic"
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7/Artifactory - Traffic/Most Active Repos by Data Transfer**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceCategory matches "*artifactory/traffic"
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7/Artifactory - Traffic/Overall Traffic by Geolocation**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceCategory matches "*artifactory/traffic"
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7/Artifactory - Traffic/Top Referred Files**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceCategory matches "*artifactory/traffic"
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```

**Artifactory 7/Artifactory - Traffic/Upload Traffic by Geolocation**
```
_sourceCategory={{Logsdatasource}}  UPLOAD
| where _sourceCategory matches "*artifactory/traffic"
| parse regex "(?<year>\d{4})(?<month>\d{2})(?<day>\d{2})(?<hour>\d{2})(?<minute>\d{2})(?<second>\d{2})\|\d*\|(?<direction>[^|]*)\|\s*(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|[^|]*)\|(?<repo>[^:]*):(?<fullfilepath>[^|]*)\|(?<size>\d*)" nodrop
```


