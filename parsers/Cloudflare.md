# Parsers For Cloudflare

**Cloudflare/Performance (Hostname, Content Type, Request Methods, Connection Type) - New/Client Requests by Connection**
```
 _sourceCategory = Labs/Cloudflare ClientSSLProtocol*
| json "ClientSSLProtocol" as client_ssl_protocol nodrop 
```

**Cloudflare/Performance (Hostname, Content Type, Request Methods, Connection Type) - New/Client Requests by Connection Over Time**
```
_sourceCategory = Labs/Cloudflare ClientSSLProtocol*
| json "ClientSSLProtocol" as  client_ssl_protocol nodrop 
```

**Cloudflare/Performance (Hostname, Content Type, Request Methods, Connection Type) - New/Client Requests by Content Type**
```
_sourceCategory = Labs/Cloudflare EdgeResponseContentType*
| json "EdgeResponseContentType" as  edge_response_content_type nodrop 
```

**Cloudflare/Performance (Hostname, Content Type, Request Methods, Connection Type) - New/Client Requests by Hostname Over Time**
```
 _sourceCategory = Labs/Cloudflare 
| json "ClientRequestHost" as client_request_host nodrop 
```

**Cloudflare/Performance (Hostname, Content Type, Request Methods, Connection Type) - New/Client Requests Methods in rps**
```
 _sourceCategory = Labs/Cloudflare ClientRequestMethod*
| json "ClientCountry", "ClientIP", "ClientDeviceType", "ClientRequestHost", "ClientRequestUserAgent", "ClientRequestURI", "OriginResponseStatus", "EdgeResponseStatus", "OriginIP", "ClientIPClass", "EdgeResponseBytes", "CacheCacheStatus", "ClientRequestMethod", "RayID", "WorkerSubrequest" as client_country, client_ip, client_device_type, client_request_host, client_request_user_agent, client_request_uri, origin_response_status, edge_response_status, origin_ip, client_ip_class, edge_response_bytes, cache_cache_status, client_request_method, ray_id, worker_subrequest
```

**Cloudflare/Performance (Hostname, Content Type, Request Methods, Connection Type) - New/Client Requests Methods Over Time**
```
 _sourceCategory = Labs/Cloudflare ClientRequestMethod*
| json "ClientRequestMethod" as  client_request_method nodrop 
```

**Cloudflare/Performance (Hostname, Content Type, Request Methods, Connection Type) - New/Origin Requests by Content Type in rps**
```
_sourceCategory = Labs/Cloudflare CacheCacheStatus*
| json "EdgeResponseContentType" as edge_response_content_type nodrop 
```

**Cloudflare/Performance (Hostname, Content Type, Request Methods, Connection Type) - New/Origin Requests by Hostname in rps**
```
_sourceCategory = Labs/Cloudflare CacheCacheStatus*
| json "ClientRequestHost" as client_request_host nodrop 
```

**Cloudflare/Performance (Hostname, Content Type, Request Methods, Connection Type)/Client Requests by Connection**
```
 _sourceCategory={{_sourceCategory}} ClientSSLProtocol*
| json "ClientSSLProtocol" as client_ssl_protocol nodrop 
```

**Cloudflare/Performance (Hostname, Content Type, Request Methods, Connection Type)/Client Requests by Connection Over Time**
```
_sourceCategory={{_sourceCategory}} ClientSSLProtocol*
| json "ClientSSLProtocol" as  client_ssl_protocol nodrop 
```

**Cloudflare/Performance (Hostname, Content Type, Request Methods, Connection Type)/Client Requests by Content Type**
```
_sourceCategory={{_sourceCategory}} EdgeResponseContentType*
| json "EdgeResponseContentType" as  edge_response_content_type nodrop 
```

**Cloudflare/Performance (Hostname, Content Type, Request Methods, Connection Type)/Client Requests by Hostname Over Time**
```
 _sourceCategory={{_sourceCategory}} 
| json "ClientRequestHost" as client_request_host nodrop 
```

**Cloudflare/Performance (Hostname, Content Type, Request Methods, Connection Type)/Client Requests Methods in rps**
```
 _sourceCategory={{_sourceCategory}} ClientRequestMethod*
| json "ClientCountry", "ClientIP", "ClientDeviceType", "ClientRequestHost", "ClientRequestUserAgent", "ClientRequestURI", "OriginResponseStatus", "EdgeResponseStatus", "OriginIP", "ClientIPClass", "EdgeResponseBytes", "CacheCacheStatus", "ClientRequestMethod", "RayID", "WorkerSubrequest" as client_country, client_ip, client_device_type, client_request_host, client_request_user_agent, client_request_uri, origin_response_status, edge_response_status, origin_ip, client_ip_class, edge_response_bytes, cache_cache_status, client_request_method, ray_id, worker_subrequest
```

**Cloudflare/Performance (Hostname, Content Type, Request Methods, Connection Type)/Client Requests Methods Over Time**
```
 _sourceCategory={{_sourceCategory}} ClientRequestMethod*
| json "ClientRequestMethod" as  client_request_method nodrop 
```

**Cloudflare/Performance (Hostname, Content Type, Request Methods, Connection Type)/Origin Requests by Content Type in rps**
```
_sourceCategory={{_sourceCategory}} CacheCacheStatus*
| json "EdgeResponseContentType" as edge_response_content_type nodrop 
```

**Cloudflare/Performance (Hostname, Content Type, Request Methods, Connection Type)/Origin Requests by Hostname in rps**
```
_sourceCategory={{_sourceCategory}} CacheCacheStatus*
| json "ClientRequestHost" as client_request_host nodrop 
```

**Cloudflare/Performance (Requests, Bandwidth, Cache) - New/Cache Status Over Time (in Requests)**
```
_sourceCategory = Labs/Cloudflare EdgeResponseBytes*
| json "CacheCacheStatus" as  cache_cache_status nodrop  
```

**Cloudflare/Performance (Requests, Bandwidth, Cache) - New/Cache Status Ratio**
```
_sourceCategory = Labs/Cloudflare EdgeResponseBytes*
| json "CacheCacheStatus" as cache_cache_status nodrop 
```

**Cloudflare/Performance (Requests, Bandwidth, Cache) - New/Cached Bandwidth**
```
_sourceCategory = Labs/Cloudflare EdgeResponseBytes*
| json "EdgeResponseBytes", "CacheCacheStatus" as  edge_response_bytes, cache_cache_status nodrop 
```

**Cloudflare/Performance (Requests, Bandwidth, Cache) - New/Cached Requests**
```
 _sourceCategory = Labs/Cloudflare EdgeResponseBytes*
| json "CacheCacheStatus" as  cache_cache_status nodrop  
```

**Cloudflare/Performance (Requests, Bandwidth, Cache) - New/Cached vs Uncached Bandwidth Over Time**
```
 _sourceCategory = Labs/Cloudflare EdgeResponseBytes*
| json "EdgeResponseBytes", "CacheCacheStatus" as edge_response_bytes, cache_cache_status nodrop  
```

**Cloudflare/Performance (Requests, Bandwidth, Cache) - New/Saved Bandwidth %**
```
_sourceCategory = Labs/Cloudflare CacheCacheStatus*
| json  "EdgeResponseBytes", "CacheCacheStatus"  as edge_response_bytes, cache_cache_status nodrop 
```

**Cloudflare/Performance (Requests, Bandwidth, Cache) - New/Top URIs with Cache Status Miss**
```
 _sourceCategory = Labs/Cloudflare EdgeResponseBytes*
| json "ClientRequestURI","CacheCacheStatus" as client_request_uri, cache_cache_status nodrop
```

**Cloudflare/Performance (Requests, Bandwidth, Cache) - New/Total Bandwidth**
```
 _sourceCategory = Labs/Cloudflare EdgeResponseBytes*
| json "EdgeResponseBytes" as  edge_response_bytes nodrop 
```

**Cloudflare/Performance (Requests, Bandwidth, Cache) - New/Total Bandwidth vs Origin Bandwidth in bps Last 24 Hours**
```
_sourceCategory = Labs/Cloudflare EdgeResponseBytes*
| json  "OriginResponseStatus", "EdgeResponseBytes" as origin_response_status, edge_response_bytes nodrop 
```

**Cloudflare/Performance (Requests, Bandwidth, Cache) - New/Total Number of Requests vs Cached vs Uncached Over Time**
```
  _sourceCategory = Labs/Cloudflare EdgeResponseBytes*
| json "CacheCacheStatus" as cache_cache_status nodrop  
```

**Cloudflare/Performance (Requests, Bandwidth, Cache) - New/Total Requests vs. Origin Requests in rps Last 24 Hours**
```
_sourceCategory = Labs/Cloudflare EdgeResponseBytes*
| json "OriginResponseStatus" as  origin_response_status nodrop 
```

**Cloudflare/Performance (Requests, Bandwidth, Cache) - New/Uncached Bandwidth**
```
_sourceCategory = Labs/Cloudflare EdgeResponseBytes*
| json "EdgeResponseBytes", "CacheCacheStatus" as edge_response_bytes, cache_cache_status nodrop  
```

**Cloudflare/Performance (Requests, Bandwidth, Cache) - New/Uncached Requests**
```
 _sourceCategory = Labs/Cloudflare EdgeResponseBytes*
| json "CacheCacheStatus" as cache_cache_status nodrop 
```

**Cloudflare/Performance (Requests, Bandwidth, Cache)/Cache Status Over Time (in Requests)**
```
_sourceCategory={{_sourceCategory}} EdgeResponseBytes*
| json "CacheCacheStatus" as  cache_cache_status nodrop  
```

**Cloudflare/Performance (Requests, Bandwidth, Cache)/Cache Status Ratio**
```
_sourceCategory={{_sourceCategory}} EdgeResponseBytes*
| json "CacheCacheStatus" as cache_cache_status nodrop 
```

**Cloudflare/Performance (Requests, Bandwidth, Cache)/Cached Bandwidth**
```
_sourceCategory={{_sourceCategory}} EdgeResponseBytes*
| json "EdgeResponseBytes", "CacheCacheStatus" as  edge_response_bytes, cache_cache_status nodrop 
```

**Cloudflare/Performance (Requests, Bandwidth, Cache)/Cached Requests**
```
 _sourceCategory={{_sourceCategory}} EdgeResponseBytes*
| json "CacheCacheStatus" as  cache_cache_status nodrop  
```

**Cloudflare/Performance (Requests, Bandwidth, Cache)/Cached vs Uncached Bandwidth Over Time**
```
 _sourceCategory={{_sourceCategory}} EdgeResponseBytes*
| json "EdgeResponseBytes", "CacheCacheStatus" as edge_response_bytes, cache_cache_status nodrop  
```

**Cloudflare/Performance (Requests, Bandwidth, Cache)/Saved Bandwidth %**
```
_sourceCategory={{_sourceCategory}} CacheCacheStatus*
| json  "EdgeResponseBytes", "CacheCacheStatus"  as edge_response_bytes, cache_cache_status nodrop 
```

**Cloudflare/Performance (Requests, Bandwidth, Cache)/Top URIs with Cache Status Miss**
```
 _sourceCategory={{_sourceCategory}} EdgeResponseBytes*
| json "ClientRequestURI","CacheCacheStatus" as client_request_uri, cache_cache_status nodrop
```

**Cloudflare/Performance (Requests, Bandwidth, Cache)/Total Bandwidth**
```
 _sourceCategory={{_sourceCategory}} EdgeResponseBytes*
| json "EdgeResponseBytes" as  edge_response_bytes nodrop 
```

**Cloudflare/Performance (Requests, Bandwidth, Cache)/Total Bandwidth vs Origin Bandwidth in bps Last 24 Hours**
```
_sourceCategory={{_sourceCategory}} EdgeResponseBytes*
| json  "OriginResponseStatus", "EdgeResponseBytes" as origin_response_status, edge_response_bytes nodrop 
```

**Cloudflare/Performance (Requests, Bandwidth, Cache)/Total Number of Requests vs Cached vs Uncached Over Time**
```
  _sourceCategory={{_sourceCategory}} EdgeResponseBytes*
| json "CacheCacheStatus" as cache_cache_status nodrop  
```

**Cloudflare/Performance (Requests, Bandwidth, Cache)/Total Requests vs. Origin Requests in rps Last 24 Hours**
```
_sourceCategory={{_sourceCategory}} EdgeResponseBytes*
| json "OriginResponseStatus" as  origin_response_status nodrop 
```

**Cloudflare/Performance (Requests, Bandwidth, Cache)/Uncached Bandwidth**
```
_sourceCategory={{_sourceCategory}} EdgeResponseBytes*
| json "EdgeResponseBytes", "CacheCacheStatus" as edge_response_bytes, cache_cache_status nodrop  
```

**Cloudflare/Performance (Requests, Bandwidth, Cache)/Uncached Requests**
```
 _sourceCategory={{_sourceCategory}} EdgeResponseBytes*
| json "CacheCacheStatus" as cache_cache_status nodrop 
```

**Cloudflare/Performance (Static vs. Dynamic Content)/Origin time to first byte dynamic requests**
```
_sourceCategory={{_sourceCategory}} OriginResponseTime*
| json "CacheCacheStatus", "OriginResponseTime" as cache_cache_status, origin_response_time nodrop  
```

**Cloudflare/Performance (Static vs. Dynamic Content)/Origin time to first byte static requests**
```
_sourceCategory={{_sourceCategory}} OriginResponseTime*
| json "CacheCacheStatus", "OriginResponseTime" as cache_cache_status, origin_response_time nodrop  
```

**Cloudflare/Performance (Static vs. Dynamic Content)/Slowest URIs by cumulative time to first byte for dynamic requests**
```
_sourceCategory={{_sourceCategory}} OriginResponseTime*
| json "ClientRequestURI", "CacheCacheStatus", "OriginResponseTime" as client_request_uri,cache_cache_status, origin_response_time nodrop  
```

**Cloudflare/Performance (Static vs. Dynamic Content)/Slowest URIs by cumulative time to first byte for static requests**
```
 _sourceCategory={{_sourceCategory}} OriginResponseTime*
| json "ClientRequestURI", "CacheCacheStatus", "OriginResponseTime" as client_request_uri, cache_cache_status, origin_response_time nodrop  
```

**Cloudflare/Reliability/3xx Errors (Edge)**
```
 _sourceCategory={{_sourceCategory}} EdgeResponseStatus*
| json "EdgeResponseStatus" as  edge_response_status nodrop  
```

**Cloudflare/Reliability/4xx Errors (Edge)**
```
 _sourceCategory={{_sourceCategory}} EdgeResponseStatus*
| json "EdgeResponseStatus" as  edge_response_status nodrop  
```

**Cloudflare/Reliability/5xx Errors (Edge)**
```
 _sourceCategory={{_sourceCategory}} EdgeResponseStatus*
| json "EdgeResponseStatus" as  edge_response_status nodrop  
```

**Cloudflare/Reliability/Edge Response Error Ratio**
```
_sourceCategory={{_sourceCategory}} EdgeResponseStatus*
| json "EdgeResponseStatus"as edge_response_status nodrop  
```

**Cloudflare/Reliability/Edge Response Status in rps**
```
_sourceCategory={{_sourceCategory}} CacheCacheStatus*
| json  "EdgeResponseStatus" as edge_response_status nodrop  
```

**Cloudflare/Reliability/Edge Response Status Over Time**
```
 _sourceCategory={{_sourceCategory}} EdgeResponseStatus*
| json "EdgeResponseStatus" as edge_response_status nodrop  
```

**Cloudflare/Reliability/Origin Response Error Ratio**
```
 _sourceCategory={{_sourceCategory}} OriginResponseStatus*
| json "OriginResponseStatus" as  origin_response_status nodrop  
```

**Cloudflare/Reliability/Origin Response Status Over Time**
```
 _sourceCategory={{_sourceCategory}} OriginResponseStatus*
| json  "OriginResponseStatus" as origin_response_status nodrop  
```

**Cloudflare/Reliability/Top AS Numbers**
```
 _sourceCategory={{_sourceCategory}} ClientCountry*
| json  "EdgeResponseStatus", "ClientASN" as edge_response_status, client_asn nodrop
```

**Cloudflare/Reliability/Top Client IPs and AS Number**
```
_sourceCategory={{_sourceCategory}} ClientCountry*
| json "ClientIP", "EdgeResponseStatus", "ClientASN" as client_ip, edge_response_status, client_asn nodrop
```

**Cloudflare/Reliability/Top Countries**
```
 _sourceCategory={{_sourceCategory}} ClientCountry*
| json "ClientCountry", "EdgeResponseStatus" as client_country, edge_response_status nodrop
```

**Cloudflare/Reliability/Top Hostnames**
```
 _sourceCategory={{_sourceCategory}} ClientCountry*
| json  "ClientRequestHost", "EdgeResponseStatus" as  client_request_host, edge_response_status nodrop
```

**Cloudflare/Reliability/Top Requested URIs**
```
 _sourceCategory={{_sourceCategory}} ClientCountry*
| json "ClientRequestURI","EdgeResponseStatus" as client_request_uri, edge_response_status nodrop
```

**Cloudflare/Reliability/Top User Agents**
```
 _sourceCategory={{_sourceCategory}} ClientCountry*
| json  "ClientRequestUserAgent","EdgeResponseStatus" as client_request_user_agent, edge_response_status nodrop
```

**Cloudflare/Security (Bot Management)/Bad Bots**
```
_sourceCategory={{_sourceCategory}} ClientDevice*
| json "EdgePathingSrc", "EdgePathingStatus" as edge_pathing_src, edge_pathing_status nodrop 
```

**Cloudflare/Security (Bot Management)/Bad Bots vs HumansAndGoodBots**
```
 _sourceCategory={{_sourceCategory}} ClientDevice*
| json "EdgePathingSrc","EdgePathingStatus" as edge_pathing_src, edge_pathing_status nodrop
```

**Cloudflare/Security (Bot Management)/False Detected Bots**
```
_sourceCategory={{_sourceCategory}} ClientDevice*
| json "EdgePathingSrc","EdgePathingStatus" as edge_pathing_src, edge_pathing_status nodrop 
```

**Cloudflare/Security (Bot Management)/Top Bad Bots IPs - AS Number - Country**
```
 _sourceCategory={{_sourceCategory}} ClientIP*
| json "EdgePathingSrc","EdgePathingStatus", "ClientIP", "ClientASN" as edge_pathing_src, edge_pathing_status, client_ip, client_asn nodrop 
```

**Cloudflare/Security (Bot Management)/Top Bad Bots Referer**
```
 _sourceCategory={{_sourceCategory}} ClientIP*
| json "EdgePathingSrc","EdgePathingStatus", "ClientRequestReferer" as edge_pathing_src, edge_pathing_status, client_request_referer nodrop 
```

**Cloudflare/Security (Bot Management)/Top Bad Bots Requested URIs**
```
_sourceCategory={{_sourceCategory}} ClientIP*
| json "EdgePathingSrc","EdgePathingStatus", "ClientRequestURI" as edge_pathing_src, edge_pathing_status, client_request_uri nodrop 
```

**Cloudflare/Security (Bot Management)/Top Bad Bots Requested User Agents**
```
 _sourceCategory={{_sourceCategory}} ClientIP*
| json "EdgePathingSrc","EdgePathingStatus", "ClientRequestUserAgent" as edge_pathing_src, edge_pathing_status, client_request_user_agent nodrop 
```

**Cloudflare/Security (Bot Management)/Top False Detected Bots IPs - AS Number - Country**
```
 _sourceCategory={{_sourceCategory}} ClientIP*
| json "EdgePathingSrc","EdgePathingStatus", "ClientIP", "ClientASN" as edge_pathing_src, edge_pathing_status, client_ip, client_asn nodrop 
```

**Cloudflare/Security (Bot Management)/Top False Detected Bots Referer**
```
 _sourceCategory={{_sourceCategory}} ClientIP*
| json "EdgePathingSrc","EdgePathingStatus", "ClientRequestReferer" as edge_pathing_src, edge_pathing_status, client_request_referer nodrop 
```

**Cloudflare/Security (Bot Management)/Top False Detected Bots Requested URIs**
```
 _sourceCategory={{_sourceCategory}} ClientIP*
| json "EdgePathingSrc","EdgePathingStatus", "ClientRequestURI" as edge_pathing_src, edge_pathing_status, client_request_uri nodrop 
```

**Cloudflare/Security (Bot Management)/Top False Detected Bots Requested User Agents**
```
_sourceCategory={{_sourceCategory}} ClientIP*
| json "EdgePathingSrc","EdgePathingStatus", "ClientRequestUserAgent" as edge_pathing_src, edge_pathing_status, client_request_user_agent nodrop 
```

**Cloudflare/Security (Bot Management)/Top IPs - AS Number - Country**
```
_sourceCategory={{_sourceCategory}} ClientIP*
| json  "ClientIP", "ClientASN" as client_ip, client_asn nodrop
```

**Cloudflare/Security (Bot Management)/Top Referer**
```
_sourceCategory={{_sourceCategory}} ClientIP*
| json "ClientRequestReferer" as client_request_referer nodrop 
```

**Cloudflare/Security (Bot Management)/Top Requested URIs**
```
_sourceCategory={{_sourceCategory}} ClientIP*
| json "ClientRequestURI" as client_request_uri nodrop
```

**Cloudflare/Security (Bot Management)/Top Requested User Agents**
```
_sourceCategory={{_sourceCategory}} ClientIP*
| json "ClientRequestUserAgent" as client_request_user_agent nodrop
```

**Cloudflare/Security (Bot Management)/Total Requests vs Bad Bots Over Time**
```
 _sourceCategory={{_sourceCategory}} ClientIP*
| json "EdgePathingSrc","EdgePathingStatus" as edge_pathing_src, edge_pathing_status nodrop 
```

**Cloudflare/Security (Overview) - New/Threats Over Time**
```
_sourceCategory = Labs/Cloudflare ClientCountry*
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus" as edge_pathing_src, edge_pathing_op, edge_pathing_status nodrop 
```

**Cloudflare/Security (Overview) - New/Threats Stopped**
```
_sourceCategory = Labs/Cloudflare EdgePathingSrc 
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus" as edge_pathing_src, edge_pathing_op, edge_pathing_status nodrop 
```

**Cloudflare/Security (Overview) - New/Threats vs Requests**
```
_sourceCategory = Labs/Cloudflare ClientDevice*
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus" as edge_pathing_src, edge_pathing_op, edge_pathing_status nodrop 
```

**Cloudflare/Security (Overview) - New/Top Pathing Statuses**
```
 _sourceCategory = Labs/Cloudflare EdgePathingStatus*
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus" as edge_pathing_src, edge_pathing_op, edge_pathing_status nodrop 
```

**Cloudflare/Security (Overview) - New/Top Threat Client IPs**
```
 _sourceCategory = Labs/Cloudflare EdgePathingSrc 
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus","ClientIP" as edge_pathing_src, edge_pathing_op, edge_pathing_status, client_ip nodrop 
```

**Cloudflare/Security (Overview) - New/Top Threat Countries**
```
 _sourceCategory = Labs/Cloudflare ClientIP*
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus", "ClientIP" as edge_pathing_src, edge_pathing_op, edge_pathing_status, client_ip nodrop 
```

**Cloudflare/Security (Overview) - New/Top Threat Countries Map**
```
_sourceCategory = Labs/Cloudflare ClientIP*
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus", "ClientIP" as edge_pathing_src, edge_pathing_op, edge_pathing_status, client_ip nodrop 
```

**Cloudflare/Security (Overview) - New/Top Threat Target URIs**
```
 _sourceCategory = Labs/Cloudflare EdgePathingSrc 
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus", "ClientRequestURI" as edge_pathing_src, edge_pathing_op, edge_pathing_status,  client_request_uri nodrop 
```

**Cloudflare/Security (Overview) - New/Top Threat User Agents**
```
_sourceCategory = Labs/Cloudflare EdgePathingSrc 
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus", "ClientRequestUserAgent" as edge_pathing_src, edge_pathing_op, edge_pathing_status, client_request_user_agent nodrop 
```

**Cloudflare/Security (Overview) - New/Top Threats Stopped**
```
_sourceCategory = Labs/Cloudflare EdgePathingSrc 
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus" as edge_pathing_src, edge_pathing_op, edge_pathing_status nodrop 
```

**Cloudflare/Security (Overview)/Threats Over Time**
```
_sourceCategory={{_sourceCategory}} ClientCountry*
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus" as edge_pathing_src, edge_pathing_op, edge_pathing_status nodrop 
```

**Cloudflare/Security (Overview)/Threats Stopped**
```
_sourceCategory={{_sourceCategory}} EdgePathingSrc 
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus" as edge_pathing_src, edge_pathing_op, edge_pathing_status nodrop 
```

**Cloudflare/Security (Overview)/Threats vs Requests**
```
_sourceCategory={{_sourceCategory}} ClientDevice*
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus" as edge_pathing_src, edge_pathing_op, edge_pathing_status nodrop 
```

**Cloudflare/Security (Overview)/Top Pathing Statuses**
```
 _sourceCategory={{_sourceCategory}} EdgePathingStatus*
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus" as edge_pathing_src, edge_pathing_op, edge_pathing_status nodrop 
```

**Cloudflare/Security (Overview)/Top Threat Client IPs**
```
 _sourceCategory={{_sourceCategory}} EdgePathingSrc 
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus","ClientIP" as edge_pathing_src, edge_pathing_op, edge_pathing_status, client_ip nodrop 
```

**Cloudflare/Security (Overview)/Top Threat Countries**
```
 _sourceCategory={{_sourceCategory}} ClientIP*
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus", "ClientIP" as edge_pathing_src, edge_pathing_op, edge_pathing_status, client_ip nodrop 
```

**Cloudflare/Security (Overview)/Top Threat Countries Map**
```
_sourceCategory={{_sourceCategory}} ClientIP*
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus", "ClientIP" as edge_pathing_src, edge_pathing_op, edge_pathing_status, client_ip nodrop 
```

**Cloudflare/Security (Overview)/Top Threat Target URIs**
```
 _sourceCategory={{_sourceCategory}} EdgePathingSrc 
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus", "ClientRequestURI" as edge_pathing_src, edge_pathing_op, edge_pathing_status,  client_request_uri nodrop 
```

**Cloudflare/Security (Overview)/Top Threat User Agents**
```
_sourceCategory={{_sourceCategory}} EdgePathingSrc 
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus", "ClientRequestUserAgent" as edge_pathing_src, edge_pathing_op, edge_pathing_status, client_request_user_agent nodrop 
```

**Cloudflare/Security (Overview)/Top Threats Stopped**
```
_sourceCategory={{_sourceCategory}} EdgePathingSrc 
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus" as edge_pathing_src, edge_pathing_op, edge_pathing_status nodrop 
```

**Cloudflare/Security (Rate Limiting)/Rate Limit Over Time**
```
 _sourceCategory={{_sourceCategory}} EdgeRateLimitAction* 
| json  "EdgeRateLimitAction" as  edge_rate_limit_action nodrop 
```

**Cloudflare/Security (Rate Limiting)/Top Banned Client IPs**
```
_sourceCategory={{_sourceCategory}} EdgeRateLimitAction* 
| json "ClientIP","ClientRequestHost", "EdgeRateLimitAction" as  client_ip, client_request_host, edge_rate_limit_action nodrop
```

**Cloudflare/Security (Rate Limiting)/Top Banned URIs**
```
 _sourceCategory={{_sourceCategory}} EdgeRateLimitAction* 
| json "ClientRequestHost", "ClientRequestURI", "EdgeRateLimitAction" as  client_request_host, client_request_uri, edge_rate_limit_action nodrop 
```

**Cloudflare/Security (Rate Limiting)/Top Rate Limit Actions**
```
_sourceCategory={{_sourceCategory}} EdgeRateLimitAction* 
| json "EdgeRateLimitAction", "EdgeRateLimitID" as  edge_rate_limit_action, edge_rate_limit_id nodrop 
```

**Cloudflare/Security (Rate Limiting)/Top Rate Limit Countries**
```
_sourceCategory={{_sourceCategory}} EdgeRateLimitAction* 
| json "ClientCountry", "EdgeRateLimitAction", "EdgeRateLimitID" as client_country, edge_rate_limit_action, edge_rate_limit_id nodrop
```

**Cloudflare/Security (WAF)/Top WAF Rules Triggered**
```
 _sourceCategory={{_sourceCategory}} SecurityRuleID*
| json  "SecurityRuleID", "SecurityRuleDescription" as  waf_rule_id, waf_rule_message nodrop 
```

**Cloudflare/Security (WAF)/WAF Events Over Time**
```
 _sourceCategory={{_sourceCategory}} SecurityRuleID*
| json "SecurityRuleID" as  waf_rule_id nodrop 
```

**Cloudflare/Security (WAF)/WAF: Top Client IPs**
```
_sourceCategory={{_sourceCategory}} SecurityRuleID*
| json "ClientIP", "SecurityRuleID" as client_ip, waf_rule_id nodrop 
```

**Cloudflare/Security (WAF)/WAF: Top Countries**
```
 _sourceCategory={{_sourceCategory}} SecurityRuleID*
| json "ClientCountry", "SecurityRuleID"as  client_country, waf_rule_id nodrop 
```

**Cloudflare/Security (WAF)/WAF: Top Hosts**
```
_sourceCategory={{_sourceCategory}} SecurityRuleID*
| json "ClientRequestHost","SecurityRuleID" as  client_request_host, waf_rule_id nodrop 
```

**Cloudflare/Security (WAF)/WAF: Top User Agents**
```
 _sourceCategory={{_sourceCategory}}  SecurityRuleID*
| json "ClientRequestUserAgent", "SecurityRuleID" as  client_request_user_agent, waf_rule_id nodrop 
```

**Cloudflare/Snapshot/Cached Bandwidth**
```
 _sourceCategory={{_sourceCategory}} EdgeResponseBytes*
| json "EdgeResponseBytes", "CacheCacheStatus" as  edge_response_bytes, cache_cache_status nodrop 
```

**Cloudflare/Snapshot/Content Type**
```
 _sourceCategory={{_sourceCategory}} ClientCountry*
| json  "EdgeResponseContentType" as  edge_response_content_type nodrop 
```

**Cloudflare/Snapshot/HTTP Protocols**
```
_sourceCategory={{_sourceCategory}} ClientCountry*
| json "ClientRequestProtocol" as  client_request_protocol nodrop 
```

**Cloudflare/Snapshot/Request Methods**
```
_sourceCategory={{_sourceCategory}} ClientCountry*
| json  "ClientRequestMethod" as  client_request_method nodrop
```

**Cloudflare/Snapshot/Saved Bandwidth in %**
```
 _sourceCategory={{_sourceCategory}} CacheCacheStatus*
| json  "EdgeResponseBytes", "CacheCacheStatus" as  edge_response_bytes, cache_cache_status nodrop 
```

**Cloudflare/Snapshot/Threats Stopped**
```
_sourceCategory={{_sourceCategory}} EdgePathingSrc 
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus" as edge_pathing_src, edge_pathing_op, edge_pathing_status nodrop 
```

**Cloudflare/Snapshot/Top Referer**
```
 _sourceCategory={{_sourceCategory}} ClientRequestReferer*
| json "ClientRequestReferer" as  client_request_referer nodrop 
```

**Cloudflare/Snapshot/Top Requested URIs**
```
_sourceCategory={{_sourceCategory}} ClientCountry*
| json "ClientRequestURI" as  client_request_uri nodrop
```

**Cloudflare/Snapshot/Top Threat Countries**
```
 _sourceCategory={{_sourceCategory}} ClientIP*
| json "EdgePathingSrc", "EdgePathingOp","EdgePathingStatus", "ClientIP" as edge_pathing_src, edge_pathing_op, edge_pathing_status, client_ip nodrop 
```

**Cloudflare/Snapshot/Top Traffic Countries**
```
 _sourceCategory={{_sourceCategory}} ClientIP*
| json "ClientIP" as client_ip nodrop 
```

**Cloudflare/Snapshot/Top Traffic Countries Map**
```
 _sourceCategory={{_sourceCategory}} ClientIP*
| json  "ClientIP" as  client_ip nodrop 
```

**Cloudflare/Snapshot/Top Traffic IPs**
```
_sourceCategory={{_sourceCategory}} ClientCountry*
| json "ClientIP" as  client_ip nodrop
```

**Cloudflare/Snapshot/Top Traffic Type**
```
_sourceCategory={{_sourceCategory}} ClientCountry*
| json "ClientIPClass" as  client_ip_class nodrop 
```

**Cloudflare/Snapshot/Top User Agents**
```
_sourceCategory={{_sourceCategory}} ClientCountry*
| json  "ClientRequestUserAgent" as  client_request_user_agent nodrop
```

**Cloudflare/Snapshot/Total Bandwidth**
```
 _sourceCategory={{_sourceCategory}} EdgeResponseBytes*
| json  "EdgeResponseBytes" as  edge_response_bytes nodrop 
```

**Cloudflare/Snapshot/Traffic Type**
```
 _sourceCategory={{_sourceCategory}} ClientDevice*
| json  "ClientDeviceType" as  client_device_type nodrop
```


