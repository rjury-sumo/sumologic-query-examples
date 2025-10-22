# Parsers For Akamai Cloud Monitor

**Akamai Cloud Monitor/Origin Performance - New/90%-ile Latency**
```
_sourceCategory = Labs/Akamai*| parse "\"netOriginLatency\":\"*\"" as originLatency, "\"fwdHost\":\"*\"" as fwdHost
```

**Akamai Cloud Monitor/Origin Performance - New/Error Rate 4xx by Code**
```
_sourceCategory = Labs/Akamai* 4??
| parse "\"reqMethod\":\"*\"" as method, "\"status\":\"*\"" as status, "\"fwdHost\":\"*\"" as origin
```

**Akamai Cloud Monitor/Origin Performance - New/Error Rate 5xx by Code**
```
_sourceCategory = Labs/Akamai* (500 or 501 or 502 or 503 or 504 or 505)
| parse "\"reqMethod\":\"*\"" as method, "\"status\":\"*\"" as status, "\"fwdHost\":\"*\"" as origin
```

**Akamai Cloud Monitor/Origin Performance - New/Median**
```
_sourceCategory = Labs/Akamai*| parse "\"netOriginLatency\":\"*\"" as originLatency, "\"originIP\":\"*\"" as originIP
```

**Akamai Cloud Monitor/Origin Performance - New/Median Latency**
```
_sourceCategory = Labs/Akamai*| parse "\"netOriginLatency\":\"*\"" as originLatency, "\"fwdHost\":\"*\"" as fwdHost
```

**Akamai Cloud Monitor/Origin Performance - New/Slowest URLs**
```
_sourceCategory = Labs/Akamai*| parse "\"reqPath\":\"*\"" as path, "\"netOriginLatency\":\"*\"" as latency
```

**Akamai Cloud Monitor/Origin Performance - New/Top 404-Causing URLs**
```
_sourceCategory = Labs/Akamai*| parse "\"reqPath\":\"*\"" as path, "\"status\":\"*\"" as status
```

**Akamai Cloud Monitor/Origin Performance - New/Top Error-Causing URLs**
```
_sourceCategory = Labs/Akamai* 50?
| parse "\"reqPath\":\"*\"" as path, "\"status\":\"*\"" as status
```

**Akamai Cloud Monitor/Origin Performance/90%-ile Latency**
```
_sourceCategory={{_sourceCategory}}| parse "\"netOriginLatency\":\"*\"" as originLatency, "\"fwdHost\":\"*\"" as fwdHost
```

**Akamai Cloud Monitor/Origin Performance/Error Rate 4xx by Code**
```
_sourceCategory={{_sourceCategory}} 4??
| parse "\"reqMethod\":\"*\"" as method, "\"status\":\"*\"" as status, "\"fwdHost\":\"*\"" as origin
```

**Akamai Cloud Monitor/Origin Performance/Error Rate 5xx by Code**
```
_sourceCategory={{_sourceCategory}} (500 or 501 or 502 or 503 or 504 or 505)
| parse "\"reqMethod\":\"*\"" as method, "\"status\":\"*\"" as status, "\"fwdHost\":\"*\"" as origin
```

**Akamai Cloud Monitor/Origin Performance/Median**
```
_sourceCategory={{_sourceCategory}}| parse "\"netOriginLatency\":\"*\"" as originLatency, "\"originIP\":\"*\"" as originIP
```

**Akamai Cloud Monitor/Origin Performance/Median Latency**
```
_sourceCategory={{_sourceCategory}}| parse "\"netOriginLatency\":\"*\"" as originLatency, "\"fwdHost\":\"*\"" as fwdHost
```

**Akamai Cloud Monitor/Origin Performance/Slowest URLs**
```
_sourceCategory={{_sourceCategory}}| parse "\"reqPath\":\"*\"" as path, "\"netOriginLatency\":\"*\"" as latency
```

**Akamai Cloud Monitor/Origin Performance/Top 404-Causing URLs**
```
_sourceCategory={{_sourceCategory}}| parse "\"reqPath\":\"*\"" as path, "\"status\":\"*\"" as status
```

**Akamai Cloud Monitor/Origin Performance/Top Error-Causing URLs**
```
_sourceCategory={{_sourceCategory}} 50?
| parse "\"reqPath\":\"*\"" as path, "\"status\":\"*\"" as status
```

**Akamai Cloud Monitor/Overview/Countries**
```
_sourceCategory={{_sourceCategory}} 
| parse "\"bytes\":\"*\"" as bytes, "\"edgeIP\":\"*\"" as edgeip, "\"country\":\"*\"" as country, "\"cookie\":\"*\"" as cookie
```

**Akamai Cloud Monitor/Overview/Download Performance Hotspots - Avg Download Above 300 by Country**
```
_sourceCategory={{_sourceCategory}} cliIP downloadTime country|  parse "\"cliIP\":\"*\"" as ip | parse "\"downloadTime\":\"*\"" as downloadtime| parse "\"country\":\"*\"" as country_code
```

**Akamai Cloud Monitor/Overview/Map (Unique Visitors)**
```
_sourceCategory={{_sourceCategory}} | parse "\"cliIP\":\"*\"" as cliip
```

**Akamai Cloud Monitor/Overview/Top 404-Causing URLs**
```
_sourceCategory={{_sourceCategory}}| parse "\"reqPath\":\"*\"" as path, "\"status\":\"*\"" as status
```

**Akamai Cloud Monitor/Overview/Top Error-Causing URLs**
```
_sourceCategory={{_sourceCategory}} 50?
| parse "\"reqPath\":\"*\"" as path, "\"status\":\"*\"" as status
```

**Akamai Cloud Monitor/Quality of Service/Cache Offload Percentage Over Time**
```
_sourceCategory={{_sourceCategory}} cacheStatus
| parse "\"cacheStatus\":\"*\"" as status
```

**Akamai Cloud Monitor/Quality of Service/Cache Performance**
```
_sourceCategory={{_sourceCategory}} cacheStatus
| parse "\"cacheStatus\":\"*\"" as status
```

**Akamai Cloud Monitor/Quality of Service/Cacheable Content Download Times**
```
_sourceCategory={{_sourceCategory}} netPerf downloadTime cacheStatus
| parse "\"cacheStatus\":\"*\"" as cachestatus, "\"downloadTime\":\"*\"" as result
```

**Akamai Cloud Monitor/Quality of Service/Download Performance Hotspots - Avg Download Above 300 by Country**
```
_sourceCategory={{_sourceCategory}} cliIP downloadTime country|  parse "\"cliIP\":\"*\"" as ip | parse "\"downloadTime\":\"*\"" as downloadtime| parse "\"country\":\"*\"" as country_code
```

**Akamai Cloud Monitor/Quality of Service/Origin Download Times Histogram**
```
_sourceCategory={{_sourceCategory}} netPerf downloadTime cacheStatus
| parse "\"cacheStatus\":\"*\"" as cachestatus, "\"downloadTime\":\"*\"" as result
```

**Akamai Cloud Monitor/Quality of Service/Performance Stats by Country**
```
_sourceCategory={{_sourceCategory}} cliIP downloadTime country
| parse "\"cliIP\":\"*\"" as ip 
| parse "\"downloadTime\":\"*\"" as downloadtime| parse "\"country\":\"*\"" as country_code
```

**Akamai Cloud Monitor/Security/Denials by Host**
```
_sourceCategory={{_sourceCategory}} waf denyRules reqHost
| parse "\"denyRules\":\"*\"" as deny, "\"reqHost\":\"*\"" as host
```

**Akamai Cloud Monitor/Security/Top Deny Rules**
```
_sourceCategory={{_sourceCategory}} !"\"denyRules\":\"\""
| parse "\"denyRules\":\"*\"" as deny |urldecode(deny)
```

**Akamai Cloud Monitor/Security/Top Deny URLs**
```
_sourceCategory={{_sourceCategory}}| parse "\"denyRules\":\"*\"" as deny, "\"reqPath\":\"*\"" as path
```

**Akamai Cloud Monitor/Security/Top Warn Rules**
```
_sourceCategory={{_sourceCategory}} !"\"warnRules\":\"\""
| parse "\"warnRules\":\"*\"" as warn |urldecode(warn)
| parse regex field=warn "(?<warn_rule>[\w-]+)" multi
```

**Akamai Cloud Monitor/Security/Top Warn URLs**
```
_sourceCategory={{_sourceCategory}} waf warnRules reqPath
| parse "\"warnRules\":\"*\"" as warning_id, "\"reqPath\":\"*\"" as path | urldecode(path)
```

**Akamai Cloud Monitor/Security/WAF-Warn Requests per Host**
```
_sourceCategory={{_sourceCategory}} waf warnRules reqHost
| parse "\"warnRules\":\"*\"" as warn, "\"reqHost\":\"*\"" as host
```

**Akamai Cloud Monitor/Visitors/Countries**
```
_sourceCategory={{_sourceCategory}} 
| parse "\"bytes\":\"*\"" as bytes, "\"edgeIP\":\"*\"" as edgeip, "\"country\":\"*\"" as country, "\"cookie\":\"*\"" as cookie
```

**Akamai Cloud Monitor/Visitors/Map (Unique Visitors)**
```
_sourceCategory={{_sourceCategory}}| parse "\"cliIP\":\"*\"" as cliip
```

**Akamai Cloud Monitor/Visitors/Top Requests**
```
_sourceCategory={{_sourceCategory}} reqPath !"\"reqPath\":\"%2f\"" !".js" !".css" !".png" !".jpg" !".cgi" !".xml" !".ico"  !".gif"  !".csv" !".swf"  !".tiff" !".tif"| urldecode(_raw) 
|  parse "\"reqPath\":\"*\"" as reqpath | count_frequent(reqpath) | sort by _approxcount | limit 20
```

**Akamai Cloud Monitor/Visitors/UA Over Time**
```
_sourceCategory={{_sourceCategory}} 
| parse "\"UA\":\"*\"" as ua | timeslice 1m
```

**Akamai Cloud Monitor/Visitors/User Agents**
```
_sourceCategory={{_sourceCategory}} 
| parse "\"UA\":\"*\"" as ua
```

**Akamai Cloud Monitor/Web Application Firewall - Attacks/Deny Events)**
```
_sourceCategory={{_sourceCategory}}| parse "\"warnRules\":\"*\"" as warn, "\"denyRules\":\"*\"" as deny, "\"cliIP\":\"*\"" as cliip
```


