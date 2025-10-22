# Parsers For Fastly

**Fastly/CDN - Origin Performance/90%-ile Latency (millisecs) by Origin Host**
```
_sourceCategory={{Logsdatasource}}  
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status", "origin_host", "cache_status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status, origin_host, cache_status
```

**Fastly/CDN - Origin Performance/Error Rate 4xx by Code**
```
_sourceCategory={{Logsdatasource}}  4??
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","request","status","origin_host" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, method, status, origin_host   
```

**Fastly/CDN - Origin Performance/Error Rate 5xx**
```
_sourceCategory={{Logsdatasource}}  5??
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status", "request" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status, method 
```

**Fastly/CDN - Origin Performance/Median Latency (millisecs) by Origin Host**
```
_sourceCategory={{Logsdatasource}}  
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status", "origin_host", "cache_status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status, origin_host, cache_status
```

**Fastly/CDN - Origin Performance/Origin Content Download Time (millisecs) Histogram**
```
_sourceCategory={{Logsdatasource}}  
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","cache_status", "status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, cache_status, status
```

**Fastly/CDN - Origin Performance/Slowest URLs (millisecs)**
```
_sourceCategory={{Logsdatasource}}  
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status","cache_status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status, cache_status
```

**Fastly/CDN - Origin Performance/Top 404-Causing URLs**
```
_sourceCategory={{Logsdatasource}}  
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status
```

**Fastly/CDN - Origin Performance/Top 5XX Error-Causing URLs**
```
_sourceCategory={{Logsdatasource}}  50?
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status
```

**Fastly/CDN - Overview/Cache Hit Percentage Over Time**
```
_sourceCategory={{Logsdatasource}}     
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip", "cache_status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, cache_status 
```

**Fastly/CDN - Overview/Download Performance Hotspots - Avg Download Above 300ms by Country**
```
_sourceCategory={{Logsdatasource}}  
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status
```

**Fastly/CDN - Overview/Origin Download 90%-ile Latency (Microsecs)**
```
_sourceCategory={{Logsdatasource}}  
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status", "origin_host", "cache_status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status, origin_host, cache_status
```

**Fastly/CDN - Overview/Top 404-Causing URLs**
```
_sourceCategory={{Logsdatasource}}  
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status
```

**Fastly/CDN - Overview/Top Server Error-Causing URLs**
```
_sourceCategory={{Logsdatasource}}  
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status
```

**Fastly/CDN - Overview/Visitor Countries**
```
_sourceCategory={{Logsdatasource}} 
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status
```

**Fastly/CDN - Overview/Visitor Geolocations**
```
_sourceCategory={{Logsdatasource}}  
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status
```

**Fastly/CDN - Quality of Service/Cache Hit Percentage Over Time**
```
_sourceCategory={{Logsdatasource}}     
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip", "cache_status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, cache_status 
```

**Fastly/CDN - Quality of Service/Cache Performance**
```
_sourceCategory={{Logsdatasource}}   
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip", "cache_status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, cache_status
```

**Fastly/CDN - Quality of Service/Cacheable Content Download Time (millisecs) Histogram**
```
_sourceCategory={{Logsdatasource}}  
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","cache_status", "status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, cache_status, status
```

**Fastly/CDN - Quality of Service/Download Performance Hotspots - Avg Download Above 300ms**
```
_sourceCategory={{Logsdatasource}}    
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip 
```

**Fastly/CDN - Quality of Service/Overall Content Download Time (millisecs) Histogram**
```
_sourceCategory={{Logsdatasource}}  
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","cache_status", "status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, cache_status, status
```

**Fastly/CDN - Quality of Service/Performance (millisecs) Stats by Country**
```
_sourceCategory={{Logsdatasource}}    
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","cache_status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip , cache_status
```

**Fastly/CDN - Quality of Service/Performance (millisecs) Stats by Data Center**
```
_sourceCategory={{Logsdatasource}}    
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","cache_status","geo_datacenter" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip , cache_status, geo_datacenter
```

**Fastly/CDN - Visitors/Bot Traffic Over Time**
```
_sourceCategory={{Logsdatasource}}  (*bot* or *index*)
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status
```

**Fastly/CDN - Visitors/HTTP2 Usage**
```
_sourceCategory={{Logsdatasource}}  
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip
| json "is_h2"
```

**Fastly/CDN - Visitors/Overall Request Volume**
```
_sourceCategory={{Logsdatasource}}  
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status
```

**Fastly/CDN - Visitors/Requests by Content Type**
```
_sourceCategory={{Logsdatasource}}     
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip", "content_type" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, content_type  
```

**Fastly/CDN - Visitors/Requests by Country**
```
_sourceCategory={{Logsdatasource}} 
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status
```

**Fastly/CDN - Visitors/Requests by DataCenter**
```
_sourceCategory={{Logsdatasource}} 
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code", "geo_datacenter","client_ip","status" as user_agent, time_elapsed, url, geo_region, geo_country_code, geo_datacenter, src_ip, status
```

**Fastly/CDN - Visitors/Requests by User Agent**
```
_sourceCategory={{Logsdatasource}}  
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status
```

**Fastly/CDN - Visitors/TLS Usage**
```
_sourceCategory={{Logsdatasource}}  
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip
| json "is_tls"
```

**Fastly/CDN - Visitors/Top 10 Referrers**
```
_sourceCategory={{Logsdatasource}}     
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip", "request_referer" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, request_referer
```

**Fastly/CDN - Visitors/Top Requests**
```
_sourceCategory={{Logsdatasource}}   
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status
```

**Fastly/CDN - Visitors/Total Request Size Over Time**
```
_sourceCategory={{Logsdatasource}}     
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","req_header_size","req_body_size" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip,req_header_size,req_body_size 
```

**Fastly/CDN - Visitors/Total Response Size Over Time**
```
_sourceCategory={{Logsdatasource}}     
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","req_header_size","resp_body_size" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip,req_header_size,resp_body_size 
```

**Fastly/CDN - Visitors/Visitor Geolocations**
```
_sourceCategory={{Logsdatasource}}  
| json "request_user_agent", "time_elapsed", "url","geo_region","geo_country_code","client_ip","status" as user_agent, time_elapsed, url, geo_region, geo_country_code, src_ip, status
```

**Fastly/Count of rules triggered per client/Count of rules triggered per client**
```
_sourceCategory={{Logsdatasource1}}  ("\"waf_executed\":\"1\"") 
| json "client_ip", "waf_executed", "waf_rule_id" as client_ip, waf_executed, waf_rule_id nodrop
```

**Fastly/WAF - Offenders/Client IP (Blocked)**
```
(_sourceCategory={{Logsdatasource1}}  OR _sourceCategory={{Logsdatasource}} ) ("\"waf_block\":\"1\"" and "\"cache_status\":\"ERROR\"")
| json "client_ip","cache_status","waf_block" as client_ip, cache_status, waf_block nodrop
```

**Fastly/WAF - Offenders/Client IP (Warn)**
```
(_sourceCategory={{Logsdatasource1}}  OR _sourceCategory={{Logsdatasource}} ) ("client_ip" "waf_logged") (MISS* OR NONE* OR PASS*)
| json "client_ip", "cache_status", "waf_logged", "waf_block", "waf_passed", "waf_anomaly_score" as client_ip, cache_status, waf_logged, waf_block, waf_passed, waf_anomaly_score nodrop
```

**Fastly/WAF - Offenders/Geo Location of All Users**
```
// shows user location based on client_ip when waf ruleset is executed
(_sourceCategory={{Logsdatasource1}}  OR _sourceCategory={{Logsdatasource}} ) ("\"waf_executed\":\"1\"") 
| json "waf_executed", "client_ip" as waf_executed, client_ip nodrop
```

**Fastly/WAF - Offenders/HTTP**
```
(_sourceCategory={{Logsdatasource1}}  OR _sourceCategory={{Logsdatasource}} ) ("\"waf_executed\":\"1\"") (920* or 921*)
| json "client_ip", "waf_executed", "waf_rule_id" as client_ip, waf_executed, waf_rule_id
```

**Fastly/WAF - Offenders/LFI-RCE-RFI**
```
(_sourceCategory={{Logsdatasource1}}  OR _sourceCategory={{Logsdatasource}} ) ("\"waf_executed\":\"1\"") (930* or 931* or 932*)
| json "client_ip", "waf_executed", "waf_rule_id" as client_ip, waf_executed, waf_rule_id nodrop
```

**Fastly/WAF - Offenders/Overall Threat Trends**
```
(_sourceCategory={{Logsdatasource1}}  OR _sourceCategory={{Logsdatasource}} ) ("\"waf_executed\":\"1\"") 
| json "client_ip", "waf_executed", "waf_rule_id" as client_ip, waf_executed, waf_rule_id nodrop
```

**Fastly/WAF - Offenders/PHP Injection**
```
(_sourceCategory={{Logsdatasource1}}  OR _sourceCategory={{Logsdatasource}} ) ("\"waf_executed\":\"1\"" and 933*)
| json "client_ip", "waf_executed", "waf_rule_id" as client_ip, waf_executed, waf_rule_id
```

**Fastly/WAF - Offenders/Session-Fixation**
```
(_sourceCategory={{Logsdatasource1}}  OR _sourceCategory={{Logsdatasource}} ) ("\"waf_executed\":\"1\"" and 943*)
| json "client_ip", "waf_executed", "waf_rule_id" as client_ip, waf_executed, waf_rule_id nodrop
```

**Fastly/WAF - Offenders/SQL Injection**
```
(_sourceCategory={{Logsdatasource1}}  OR _sourceCategory={{Logsdatasource}} ) ("\"waf_executed\":\"1\"" and 942*)
| json "client_ip", "waf_executed", "waf_rule_id" as client_ip, waf_executed, waf_rule_id nodrop
```

**Fastly/WAF - Offenders/Threshold Exceptions**
```
(_sourceCategory={{Logsdatasource1}}  OR _sourceCategory={{Logsdatasource}} ) ("\"waf_executed\":\"1\"" and 101*)
| json "client_ip", "waf_executed", "waf_rule_id" as client_ip, waf_executed, waf_rule_id nodrop
```

**Fastly/WAF - Offenders/Top Clients Affected by Threats**
```
(_sourceCategory={{Logsdatasource1}}  OR _sourceCategory={{Logsdatasource}} ) ("\"waf_executed\":\"1\"") 
| json "client_ip", "waf_executed", "waf_rule_id", "url" as client_ip, waf_executed, waf_rule_id, url nodrop
```

**Fastly/WAF - Offenders/XSS**
```
(_sourceCategory={{Logsdatasource1}}  OR _sourceCategory={{Logsdatasource}} ) ("\"waf_executed\":\"1\"" and 941*)
| json "client_ip", "waf_executed", "waf_rule_id" as client_ip, waf_executed, waf_rule_id nodrop
```

**Fastly/WAF - Overview/Daily Hits**
```
//log count within 24h timeslice through waf ruleset 
_sourceCategory={{Logsdatasource1}}  ("waf_executed")
| json "waf_executed" as waf_executed nodrop
```

**Fastly/WAF - Overview/Rule Count Block**
```
(_sourceCategory={{Logsdatasource1}}  OR _sourceCategory={{Logsdatasource}} ) ("\"waf_executed\":\"1\"" "\"waf_block\":\"1\"")
| json "waf_rule_id", "waf_block","waf_message", "client_ip","waf_executed" as waf_rule_id, waf_block, waf_message, client_ip, waf_executed nodrop
```

**Fastly/WAF - Overview/Rule Count Warn**
```
(_sourceCategory={{Logsdatasource1}}  OR _sourceCategory={{Logsdatasource}} ) ("\"waf_executed\":\"1\"")
| json "waf_rule_id", "waf_logged", "waf_block", "waf_passed", "waf_anomaly_score", "waf_message", "client_ip", "waf_executed" as waf_rule_id, waf_logged, waf_block, waf_passed, waf_anomaly_score, waf_message, client_ip, waf_executed nodrop
```

**Fastly/WAF - Overview/Top Messages (Blocked)**
```
(_sourceCategory={{Logsdatasource1}}  OR _sourceCategory={{Logsdatasource}} ) ("\"waf_executed\":\"1\"" "\"waf_block\":\"1\"")
| json "waf_rule_id", "waf_block", "waf_message", "waf_executed" as waf_rule_id, waf_block, waf_message, waf_executed nodrop
```

**Fastly/WAF - Overview/Top Messages (Warn)**
```
(_sourceCategory={{Logsdatasource1}}  OR _sourceCategory={{Logsdatasource}} ) ("\"waf_executed\":\"1\"")
| json "waf_rule_id", "waf_logged", "waf_block", "waf_passed", "waf_anomaly_score", "waf_message", "waf_executed" as waf_rule_id, waf_logged, waf_block, waf_passed, waf_anomaly_score, waf_message, waf_executed nodrop
```

**Fastly/WAF - Overview/Top URLS (Blocked)**
```
(_sourceCategory={{Logsdatasource1}}  OR _sourceCategory={{Logsdatasource}} ) ("\"waf_executed\":\"1\"" "\"waf_block\":\"1\"")
| json "url", "status", "waf_executed", "waf_block" as url, status, waf_executed, waf_block nodrop
```

**Fastly/WAF - Overview/Top URLS (Warn)**
```
(_sourceCategory={{Logsdatasource1}}  OR _sourceCategory={{Logsdatasource}} ) ("\"waf_executed\":\"1\"")
| json "url", "waf_logged", "waf_passed", "waf_block", "waf_anomaly_score","waf_executed" as url, waf_logged, waf_passed, waf_block, waf_anomaly_score, waf_executed nodrop
```

**Fastly/WAF - Overview/WAF States**
```
_sourceCategory={{Logsdatasource1}}  ("\"waf_executed\":\"1\"")
| json "waf_failures", "waf_logged", "waf_passed", "waf_anomaly_score", "waf_block", "waf_executed" as waf_failures, waf_logged, waf_passed, waf_anomaly_score, waf_block, waf_executed nodrop
```

**Fastly/WAF - OWASP/Command Injections (932xxx_rules)**
```
_sourceCategory={{Logsdatasource1}}  ("\"waf_executed\":\"1\"" "waf_rce_score")
| json "waf_executed", "waf_rce_score" as waf_executed, waf_rce_score nodrop
```

**Fastly/WAF - OWASP/HTTP Violations (921xxx_rules)**
```
_sourceCategory={{Logsdatasource1}}  ("\"waf_executed\": \"1\"" "waf_http_score")
| json "waf_executed", "waf_http_score" as waf_executed, waf_http_score nodrop
```

**Fastly/WAF - OWASP/Inbound HTTP (920xxx_rules)**
```
_sourceCategory={{Logsdatasource1}}  ("\"waf_executed\":\"1\"" "waf_anomaly_score" "waf_rule_id")
| json "waf_executed", "waf_anomaly_score", "waf_rule_id" as waf_executed, waf_anomaly_score, waf_rule_id nodrop
```

**Fastly/WAF - OWASP/LFI (930xxx_rules)**
```
_sourceCategory={{Logsdatasource1}}  ("\"waf_executed\":\"1\"" "waf_lfi_score")
| json "waf_executed", "waf_lfi_score" as waf_executed, waf_lfi_score nodrop
```

**Fastly/WAF - OWASP/OWASP (overall)**
```
_sourceCategory={{Logsdatasource1}}  ("\"waf_executed\":\"1\"" "waf_anomaly_score")
| json "waf_executed", "waf_anomaly_score" as waf_executed, waf_anomaly_score nodrop 
```

**Fastly/WAF - OWASP/PHP Injections (933xxx_rules)**
```
_sourceCategory={{Logsdatasource1}}  ("\"waf_executed\":\"1\"" "waf_php_score")
| json "waf_executed", "waf_php_score" as waf_executed, waf_php_score nodrop
```

**Fastly/WAF - OWASP/RFI (931xxx_rules)**
```
_sourceCategory={{Logsdatasource1}}  ("\"waf_executed\":\"1\"" "waf_rfi_score")
| json "waf_executed", "waf_rfi_score" as waf_executed, waf_rfi_score nodrop
```

**Fastly/WAF - OWASP/Session Fixations (943xxx_rules)**
```
_sourceCategory={{Logsdatasource1}}  ("\"waf_executed\":\"1\"" "waf_session_fixation_score")
| json "waf_executed", "waf_session_fixation_score" as waf_executed, waf_session_fixation_score nodrop
```

**Fastly/WAF - OWASP/SQL Injections (942xxx_rules)**
```
_sourceCategory={{Logsdatasource1}}  ("\"waf_executed\":\"1\"" "waf_sql_score")
| json "waf_executed", "waf_sql_score" as waf_executed, waf_sql_score nodrop
```

**Fastly/WAF - OWASP/XSS (941xxx_rules)**
```
_sourceCategory={{Logsdatasource1}}  ("\"waf_executed\":\"1\"" "waf_xss_score")
| json "waf_executed", "waf_xss_score" as waf_executed, waf_xss_score nodrop
```


