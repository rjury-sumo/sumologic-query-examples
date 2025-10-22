# Parsers For Akamai DataStream

**Akamai DataStream/Overview/Cache Hit Ratio Over Time**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField
```

**Akamai DataStream/Overview/Map (Unique Visitors)**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField 
```

**Akamai DataStream/Overview/Requests by City**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField 
```

**Akamai DataStream/Overview/Requests by Country**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField 
```

**Akamai DataStream/Overview/Requests by Country, State, and City**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField 
```

**Akamai DataStream/Overview/Requests by User Agents**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField 
```

**Akamai DataStream/Overview/Requests from High Risk Countries**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField 
|where cliIP matches "{{cliIP}}"
|where statusCode matches "{{statusCode}}"
|where reqHost matches "{{reqHost}}"
|where reqMethod matches "{{reqMethod}}"
|where reqPath matches "{{reqPath}}"
|where rspContentType matches "{{rspContentType}}"
|where UA matches "{{UA}}"
|where referer matches "{{referer}}"
|where errorCode matches "{{errorCode}}"
|where turnAroundTimeMSec matches "{{turnAroundTimeMSec}}"
|where transferTimeMSec matches "{{transferTimeMSec}}"
|where country matches "{{country}}"
|where state matches "{{state}}"
|where city matches "{{city}}"
|where billingRegion matches "{{billingRegion}}"
|where cacheStatus matches "{{cacheStatus}}"
| count_distinct(reqId) as frequency by cliIP 
| where !isEmpty(cliIP)
| where isValidIPv4(cliIP) or isValidIPv6(cliIP) 
| if(isValidIPv4(cliIP), if(!isPrivateIP(cliIP),true,false),true) as is_public 
| where is_public 
| lookup latitude, longitude, country_code from geo://location on ip = cliIP | lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code | where !isBlank(country_code)
```

**Akamai DataStream/Overview/Requests that Returned Errors**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField 
```

**Akamai DataStream/Overview/Top 404-Causing URLs**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField 
```

**Akamai DataStream/Performance and QoS Monitoring/95th Percentile Response Time (sec)**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField 
```

**Akamai DataStream/Performance and QoS Monitoring/Average DNS Lookup Time (sec) by Country**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField 
```

**Akamai DataStream/Performance and QoS Monitoring/Average Response Time (sec)**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField 
```

**Akamai DataStream/Performance and QoS Monitoring/Average Response Time (sec) by Geo Location**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField 
```

**Akamai DataStream/Performance and QoS Monitoring/Average Transfer Time (sec) by Request Path**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField 
```

**Akamai DataStream/Performance and QoS Monitoring/Median Response Time (sec)**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField 
```

**Akamai DataStream/Performance and QoS Monitoring/Requests by Billing Region and Cache Status**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField 
```

**Akamai DataStream/Performance and QoS Monitoring/Requests by Response Content Length**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField
```

**Akamai DataStream/Performance and QoS Monitoring/Response Time (sec) and Request Count Over Time**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField 
```

**Akamai DataStream/Performance and QoS Monitoring/Response Time (sec) Over Time**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField 
```

**Akamai DataStream/Request Types/Browsers and Operating Systems**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField
```

**Akamai DataStream/Request Types/Cache Hit Ratio by Content Type**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField
```

**Akamai DataStream/Request Types/Requests with Error**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField 
```

**Akamai DataStream/Request Types/Top 10 PC and Mac Versions**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField

|where cliIP matches "{{cliIP}}"
|where statusCode matches "{{statusCode}}"
|where reqHost matches "{{reqHost}}"
|where reqMethod matches "{{reqMethod}}"
|where reqPath matches "{{reqPath}}"
|where rspContentType matches "{{rspContentType}}"
|where UA matches "{{UA}}"
|where referer matches "{{referer}}"
|where errorCode matches "{{errorCode}}"
|where turnAroundTimeMSec matches "{{turnAroundTimeMSec}}"
|where transferTimeMSec matches "{{transferTimeMSec}}"
|where country matches "{{country}}"
|where state matches "{{state}}"
|where city matches "{{city}}"
|where billingRegion matches "{{billingRegion}}"
|where cacheStatus matches "{{cacheStatus}}"
| parse regex field=UA "(?<os>Mac OS) (?<version>[^;\)]+?)(?:;|\))" nodrop 
| parse regex field=UA "(?<os>Windows)(?: NT | )(?<version>[\d.]+)" nodrop 
| parse regex field=UA "(?<os>Linux) (?<version>\S+?)(?:\)|;)" nodrop 
```

**Akamai DataStream/Request Types/Vistor Platforms**
```
_sourceCategory={{_sourceCategory}} 
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField
```

**Akamai DataStream/Video Streaming/Failed Video Streaming Requests**
```
_sourceCategory={{_sourceCategory}}  (aif OR aiff OR avi OR dv OR flv OR mkv OR mpeg OR mpg OR m4p OR m4v OR mp4 OR ogg OR ogv OR rm OR rmvb OR mov OR qt OR webm OR wmv OR 3gp OR 3g2 OR vtt OR srt OR sub OR ssa)
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField
```

**Akamai DataStream/Video Streaming/Requests for Video Streaming**
```
_sourceCategory={{_sourceCategory}} (aif OR aiff OR avi OR dv OR flv OR mkv OR mpeg OR mpg OR m4p OR m4v OR mp4 OR ogg OR ogv OR rm OR rmvb OR mov OR qt OR webm OR wmv OR 3gp OR 3g2 OR vtt OR srt OR sub OR ssa)
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField
```

**Akamai DataStream/Video Streaming/Requests for Video Streaming Over Time**
```
_sourceCategory={{_sourceCategory}} (aif OR aiff OR avi OR dv OR flv OR mkv OR mpeg OR mpg OR m4p OR m4v OR mp4 OR ogg OR ogv OR rm OR rmvb OR mov OR qt OR webm OR wmv OR 3gp OR 3g2 OR vtt OR srt OR sub OR ssa)
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField
```

**Akamai DataStream/Video Streaming/Successful Video Streaming Requests**
```
_sourceCategory={{_sourceCategory}} (aif OR aiff OR avi OR dv OR flv OR mkv OR mpeg OR mpg OR m4p OR m4v OR mp4 OR ogg OR ogv OR rm OR rmvb OR mov OR qt OR webm OR wmv OR 3gp OR 3g2 OR vtt OR srt OR sub OR ssa)
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField
```

**Akamai DataStream/Video Streaming/Successful Vs Failed Video Streaming Over Time**
```
_sourceCategory={{_sourceCategory}} (aif OR aiff OR avi OR dv OR flv OR mkv OR mpeg OR mpg OR m4p OR m4v OR mp4 OR ogg OR ogv OR rm OR rmvb OR mov OR qt OR webm OR wmv OR 3gp OR 3g2 OR vtt OR srt OR sub OR ssa)
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField
```

**Akamai DataStream/Video Streaming/Video File Extension Requested**
```
_sourceCategory={{_sourceCategory}} (aif OR aiff OR avi OR dv OR flv OR mkv OR mpeg OR mpg OR m4p OR m4v OR mp4 OR ogg OR ogv OR rm OR rmvb OR mov OR qt OR webm OR wmv OR 3gp OR 3g2 OR vtt OR srt OR sub OR ssa)
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField
```

**Akamai DataStream/Video Streaming/Video File Extension Requested - One Day Time Comparison**
```
_sourceCategory={{_sourceCategory}} (aif OR aiff OR avi OR dv OR flv OR mkv OR mpeg OR mpg OR m4p OR m4v OR mp4 OR ogg OR ogv OR rm OR rmvb OR mov OR qt OR webm OR wmv OR 3gp OR 3g2 OR vtt OR srt OR sub OR ssa)
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField
```


