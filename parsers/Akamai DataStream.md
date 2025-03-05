# Parsers For Akamai DataStream

## Parser:
```
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField
 
```
### Use Cases:
95th Percentile Response Time (sec), Average DNS Lookup Time (sec) by Country, Average Response Time (sec), Average Response Time (sec) by Geo Location, Average Transfer Time (sec) by Request Path, Browsers and Operating Systems, Cache Hit Ratio by Content Type, Cache Hit Ratio Over Time, Failed Video Streaming Requests, Map (Unique Visitors), Median Response Time (sec), Requests by Billing Region and Cache Status, Requests by City, Requests by Country, Requests by Country, State, and City, Requests by Response Content Length, Requests by User Agents, Requests for Video Streaming, Requests for Video Streaming Over Time, Requests from High Risk Countries, Requests that Returned Errors, Requests with Error, Response Time (sec) and Request Count Over Time, Response Time (sec) Over Time, Successful Video Streaming Requests, Successful Vs Failed Video Streaming Over Time, Top 10 PC and Mac Versions, Top 404-Causing URLs, Video File Extension Requested, Video File Extension Requested - One Day Time Comparison, Vistor Platforms



## Parser:
```
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField
| parse regex field=UA "(?<os>Mac OS) (?<version>[^;\)]+?)(?:;|\))" nodrop 
| parse regex field=UA "(?<os>Windows)(?: NT | )(?<version>[\d.]+)" nodrop 
| parse regex field=UA "(?<os>Linux) (?<version>\S+?)(?:\)|;)" nodrop 
 
```
### Use Cases:
95th Percentile Response Time (sec), Average DNS Lookup Time (sec) by Country, Average Response Time (sec), Average Response Time (sec) by Geo Location, Average Transfer Time (sec) by Request Path, Browsers and Operating Systems, Cache Hit Ratio by Content Type, Cache Hit Ratio Over Time, Map (Unique Visitors), Median Response Time (sec), Requests by Billing Region and Cache Status, Requests by City, Requests by Country, Requests by Country, State, and City, Requests by Response Content Length, Requests by User Agents, Requests from High Risk Countries, Requests that Returned Errors, Requests with Error, Response Time (sec) and Request Count Over Time, Response Time (sec) Over Time, Top 10 PC and Mac Versions, Top 404-Causing URLs, Vistor Platforms



## Parser:
```
| json "version", "streamId", "cp", "reqId", "reqTimeSec", "bytes", "cliIP", "statusCode", "proto", "reqHost", "reqMethod", "reqPath", "reqPort", "rspContentLen", "rspContentType", "UA", "tlsOverheadTimeMSec", "tlsVersion", "objSize", "uncompressedSize", "overheadBytes", "totalBytes", "queryStr", "breadcrumbs", "accLang", "cookie", "range", "referer", "xForwardedFor", "maxAgeSec", "reqEndTimeMSec", "errorCode", "turnAroundTimeMSec", "transferTimeMSec", "dnsLookupTimeMSec", "lastByte", "edgeIP", "country", "state", "city", "serverCountry", "billingRegion", "cacheStatus", "securityRules", "ewUsageInfo", "ewExecutionInfo", "customField" as  version, streamId, cp, reqId, reqTimeSec, bytes, cliIP, statusCode, proto, reqHost, reqMethod, reqPath, reqPort, rspContentLen, rspContentType, UA, tlsOverheadTimeMSec, tlsVersion, objSize, uncompressedSize, overheadBytes, totalBytes, queryStr, breadcrumbs, accLang, cookie, range, referer, xForwardedFor, maxAgeSec, reqEndTimeMSec, errorCode, turnAroundTimeMSec, transferTimeMSec, dnsLookupTimeMSec, lastByte, edgeIP, country, state, city, serverCountry, billingRegion, cacheStatus, securityRules, ewUsageInfo, ewExecutionInfo, customField 
 
```
### Use Cases:
95th Percentile Response Time (sec), Average DNS Lookup Time (sec) by Country, Average Response Time (sec), Average Response Time (sec) by Geo Location, Average Transfer Time (sec) by Request Path, Cache Hit Ratio Over Time, Map (Unique Visitors), Median Response Time (sec), Requests by Billing Region and Cache Status, Requests by City, Requests by Country, Requests by Country, State, and City, Requests by Response Content Length, Requests by User Agents, Requests from High Risk Countries, Requests that Returned Errors, Requests with Error, Response Time (sec) and Request Count Over Time, Response Time (sec) Over Time, Top 404-Causing URLs


