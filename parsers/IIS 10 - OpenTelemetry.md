# Parsers For IIS 10 - OpenTelemetry

**IIS 10 - OpenTelemetry/IIS - HTTP Error/Error Events**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<c_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<c_port>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<s_port>\S+?) (?<protocol_version>\S+?) (?<verb>\S+?) (?<cookedurl_query>\S+?) (?<streamid>\S+?) (?<Protocol_Status>\S+?) (?<SiteId>\S+?) (?<Reason_Phrase>\S+?) (?<Queue_Name>\S+?)" 
```

**IIS 10 - OpenTelemetry/IIS - HTTP Error/Reason Phrase - Time Compare**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<c_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<c_port>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<s_port>\S+?) (?<protocol_version>\S+?) (?<verb>\S+?) (?<cookedurl_query>\S+?) (?<streamid>\S+?) (?<Protocol_Status>\S+?) (?<SiteId>\S+?) (?<Reason_Phrase>\S+?) (?<Queue_Name>\S+?)" 
```

**IIS 10 - OpenTelemetry/IIS - HTTP Error/Top Client IPs**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<c_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<c_port>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<s_port>\S+?) (?<protocol_version>\S+?) (?<verb>\S+?) (?<cookedurl_query>\S+?) (?<streamid>\S+?) (?<Protocol_Status>\S+?) (?<SiteId>\S+?) (?<Reason_Phrase>\S+?) (?<Queue_Name>\S+?)"
```

**IIS 10 - OpenTelemetry/IIS - HTTP Error/Top Cooked URL and Query**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<c_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<c_port>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<s_port>\S+?) (?<protocol_version>\S+?) (?<verb>\S+?) (?<cookedurl_query>\S+?) (?<streamid>\S+?) (?<Protocol_Status>\S+?) (?<SiteId>\S+?) (?<Reason_Phrase>\S+?) (?<Queue_Name>\S+?)" 
```

**IIS 10 - OpenTelemetry/IIS - HTTP Error/Top Protocol Status**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<c_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<c_port>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<s_port>\S+?) (?<protocol_version>\S+?) (?<verb>\S+?) (?<cookedurl_query>\S+?) (?<streamid>\S+?) (?<Protocol_Status>\S+?) (?<SiteId>\S+?) (?<Reason_Phrase>\S+?) (?<Queue_Name>\S+?)" 
```

**IIS 10 - OpenTelemetry/IIS - HTTP Error/Top Protocol Versions**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<c_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<c_port>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<s_port>\S+?) (?<protocol_version>\S+?) (?<verb>\S+?) (?<cookedurl_query>\S+?) (?<streamid>\S+?) (?<Protocol_Status>\S+?) (?<SiteId>\S+?) (?<Reason_Phrase>\S+?) (?<Queue_Name>\S+?)" 
```

**IIS 10 - OpenTelemetry/IIS - HTTP Error/Top Reason Phrase**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<c_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<c_port>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<s_port>\S+?) (?<protocol_version>\S+?) (?<verb>\S+?) (?<cookedurl_query>\S+?) (?<streamid>\S+?) (?<Protocol_Status>\S+?) (?<SiteId>\S+?) (?<Reason_Phrase>\S+?) (?<Queue_Name>\S+?)" 
```

**IIS 10 - OpenTelemetry/IIS - HTTP Error/Top Request Details by Reason**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<c_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<c_port>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<s_port>\S+?) (?<protocol_version>\S+?) (?<verb>\S+?) (?<cookedurl_query>\S+?) (?<streamid>\S+?) (?<Protocol_Status>\S+?) (?<SiteId>\S+?) (?<Reason_Phrase>\S+?) (?<Queue_Name>\S+?)" 
```

**IIS 10 - OpenTelemetry/IIS - HTTP Error/Top Server IPs**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<c_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<c_port>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<s_port>\S+?) (?<protocol_version>\S+?) (?<verb>\S+?) (?<cookedurl_query>\S+?) (?<streamid>\S+?) (?<Protocol_Status>\S+?) (?<SiteId>\S+?) (?<Reason_Phrase>\S+?) (?<Queue_Name>\S+?)" 
```

**IIS 10 - OpenTelemetry/IIS - HTTP Error/Top Verbs**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<c_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<c_port>\S+?) (?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<s_port>\S+?) (?<protocol_version>\S+?) (?<verb>\S+?) (?<cookedurl_query>\S+?) (?<streamid>\S+?) (?<Protocol_Status>\S+?) (?<SiteId>\S+?) (?<Reason_Phrase>\S+?) (?<Queue_Name>\S+?)" 
```

**IIS 10 - OpenTelemetry/IIS - Latency/Average Redirection Time**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} 3*
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Latency/Average Response Time**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Latency/Cumulative Response Time Percentiles**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Latency/Response Time (Avg) by Server**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Latency/Response Time (Avg) Outlier**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Latency/Response Time Histogram**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Latency/Top 20 Slowest Pages**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Latency/Top Slowest Get Requests**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Latency/Top Slowest Post Requests**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Latency/Traffic Distribution by Server**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Overview/4xx Status Codes by Server**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Overview/5xx Status Codes by Server**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Overview/Avg. Response Time**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Overview/Client and Server Errors**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Overview/Client OS Platforms**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Overview/Requests**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Overview/Response Time Histogram**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Overview/Threat Count**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| count by c_ip
| where !isPrivateIP(c_ip)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=c_ip
| json field=raw "labels[*].name" as label_name
```

**IIS 10 - OpenTelemetry/IIS - Overview/Top 10 URLs with 4xx Errors**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Overview/Top 10 URLs with 5xx Errors**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Overview/Top Apps by Request**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| parse regex field=cs_uri_stem "/(?<app>[^\./]+?)(?:/|$)" nodrop
```

**IIS 10 - OpenTelemetry/IIS - Overview/Visitor Location**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Requests Stats/Delete Requests**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} DELETE
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Requests Stats/Get Requests**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Requests Stats/Method**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Requests Stats/Number of Requests - Time Compare**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Requests Stats/Post Requests**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} POST
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Requests Stats/Put Requests**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} PUT
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Requests Stats/Request Outlier**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Requests Stats/Requests**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Requests Stats/Requests Stats by Server**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Requests Stats/Unique Visitors Outlier**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Threat Analysis/Highly Malicious Threat Table**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| count c_ip, sc_status, cs_uri_stem, cs_referer, cs_User_Agent
| where !isPrivateIP(c_ip)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=c_ip 
| json field=raw "labels[*].name" as label_name
```

**IIS 10 - OpenTelemetry/IIS - Threat Analysis/Threat Breakdown by Sources**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
| count as ip_count by c_ip, _source
| where !isPrivateIP(c_ip)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=c_ip 
| json field=raw "labels[*].name" as label_name
```

**IIS 10 - OpenTelemetry/IIS - Threat Analysis/Threat by Actors**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
| count by c_ip
| where !isPrivateIP(c_ip)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=c_ip 
| json field=raw "labels[*].name" as label_name
```

**IIS 10 - OpenTelemetry/IIS - Threat Analysis/Threat by Malicious Confidence**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
| count by c_ip
| where !isPrivateIP(c_ip)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=c_ip 
| json field=raw "labels[*].name" as label_name
```

**IIS 10 - OpenTelemetry/IIS - Threat Analysis/Threat Count**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
| count by c_ip
| where !isPrivateIP(c_ip)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=c_ip 
| json field=raw "labels[*].name" as label_name
```

**IIS 10 - OpenTelemetry/IIS - Threat Analysis/Threat Location**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
| count by c_ip
| where !isPrivateIP(c_ip)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=c_ip 
| json field=raw "labels[*].name" as label_name
```

**IIS 10 - OpenTelemetry/IIS - Threat Analysis/Threat Table**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
| count c_ip, sc_status, cs_uri_stem, cs_referer, cs_User_Agent
| where !isPrivateIP(c_ip)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=c_ip 
| json field=raw "labels[*].name" as label_name
```

**IIS 10 - OpenTelemetry/IIS - Threat Analysis/Top 5 Highly Malicious URLs**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Visitor Access Types/Browsers and Operating Systems**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Visitor Access Types/Cumulative Client Request Percentiles**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Visitor Access Types/Cumulative User Request Percentiles**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Visitor Access Types/Desktop OS Version**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} ("macintosh" OR "mac os" OR "windows" OR "i686" or "PC" or ("Linux" AND !android))
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| if (cs_User_Agent matches "*Windows NT*" or cs_User_Agent matches "*Windows+NT*" or cs_User_Agent matches "*Windows *" or cs_User_Agent matches "*Win32*" or cs_User_Agent matches "*Win64*", "Windows", "Other") as OS 
| if (cs_User_Agent matches "*Macintosh*","MacOS",OS) as OS 
| if (cs_User_Agent matches "*Windows Phone*" or cs_User_Agent matches "*Windows+Phone*","Windows Phone",OS) as OS 
| if (cs_User_Agent matches "*Linux*","Linux",OS) as OS 
| if (cs_User_Agent matches "*iPad*","iPad",OS) as OS 
| if (cs_User_Agent matches "*iPhone*","iPhone",OS) as OS 
| if (cs_User_Agent matches "*Android*","Android",OS) as OS 
| if (cs_User_Agent matches "*Darwin*","Darwin",OS) as OS 
| if (cs_User_Agent matches "*CrOS*","Google Chrome",OS) as OS 
| where OS <> "Other"
| parse regex field=cs_User_Agent "(?<os>Windows)\+NT\+(?<version>[\d.]+?)(?:;|\))" nodrop 
| parse regex field=cs_User_Agent "(?<os>Mac OS)\+(?<version>[X\+\d.\_]+?)(?:;|\))" nodrop 
| parse regex field=cs_User_Agent "(?<os>Linux)\+(?<version>[x\d.\_]+?)(?:;|\))" nodrop 
```

**IIS 10 - OpenTelemetry/IIS - Visitor Access Types/Popular Mobile Device Versions**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}  (iphone or ipad or android or samsung) 
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| parse regex field=cs_User_Agent "(?<device>iPad);\+CPU\+OS\+(?<version>[\d_]+?)(?:\+|\))" nodrop 
| parse regex field=cs_User_Agent "(?<device>iPhone);\+CPU\+iPhone\+OS\+(?<version>[\d_]+?)(?:\+|\))" nodrop 
| parse regex field=cs_User_Agent "(?<device>Android)\+(?<version>[\d.]+?)(?:;|\))" nodrop 
| parse regex field=cs_User_Agent "(?<device>SAMSUNG).+?(?<version>(?:GT-\w+|SGH-\w+|SPH-\w+|SCH-\w+))" 
```

**IIS 10 - OpenTelemetry/IIS - Visitor Access Types/Requests by App Over Time**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| parse regex field=cs_uri_stem "/(?<app>[^\./]+?)(?:/|$)" nodrop
```

**IIS 10 - OpenTelemetry/IIS - Visitor Access Types/Requests Stats by Client IP**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Visitor Access Types/Top 10 Queries**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Visitor Access Types/Top Apps by Request**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| parse regex field=cs_uri_stem "/(?<app>[^\./]+?)(?:/|$)" nodrop
```

**IIS 10 - OpenTelemetry/IIS - Visitor Access Types/Top Requests by Users**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Visitor Access Types/Unique Visitors**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Visitor Access Types/Visitor Platforms**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Visitor Access Types/Visitors Platforms Over Time**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Visitor Locations/US Visitors**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Visitor Locations/Visitors by US Region Over Time**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Visitor Locations/Visits by Country Over Time**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Visitor Locations/Worldwide Visitors**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Visitor Traffic Insights/HTTP Methods**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Visitor Traffic Insights/Media Types Served**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| parse regex field=cs_uri_stem "\.(?<media_type>[A-Za-z]+)$" 
```

**IIS 10 - OpenTelemetry/IIS - Visitor Traffic Insights/Top 10 Search Terms from Popular Search Engines**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} (google OR bing OR aol OR ask OR yahoo) ("p=" OR "q=" OR "wd=" OR "searchfor=")
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| parse regex field=cs_referer "(?:\?|&)(?:p|q|wd|searchfor)=(?<search_term>[^=]+?)(?:&|$)" nodrop 
```

**IIS 10 - OpenTelemetry/IIS - Visitor Traffic Insights/Top 5 Referrers**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Visitor Traffic Insights/Top 5 URLs**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Web Server Operations/4xx Errors - Client Locations**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} 4*
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Web Server Operations/Client Error Outliers**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} 4*
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Web Server Operations/Client Errors (4xx) by Server**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} 4*
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Web Server Operations/Non 200 Response Status Codes**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message  "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Web Server Operations/Redirections (3xx) by Server**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} 3*
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message  "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Web Server Operations/Response Codes Over Time**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Web Server Operations/Server Error Outliers**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} 5*
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Web Server Operations/Server Errors (5xx) by Server**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} 5*
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Web Server Operations/Server Errors Over Time**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} 5*
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$" 
```

**IIS 10 - OpenTelemetry/IIS - Web Server Operations/Top 10 Bots Observed**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} ("Googlebot" OR "AskJeeves" OR "Digger" OR "Lycos"
OR "msnbot" OR "Inktomi Slurp" OR "Yahoo" OR "Nutch" OR "bingbot" OR
"BingPreview" OR "Mediapartners-Google" OR "proximic" OR "AhrefsBot" OR
"AdsBot-Google" OR "Ezooms" OR "AddThis.com" OR "facebookexternalhit" OR
"MetaURI" OR "Feedfetcher-Google" OR "PaperLiBot" OR "TweetmemeBot" OR
"Sogou web spider" OR "GoogleProducer" OR "RockmeltEmbedder" OR
"ShareThisFetcher" OR "YandexBot" OR "rogerbot-crawler" OR "ShowyouBot" OR "Baiduspider" OR "Sosospider" OR "Exabot")
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message  "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
| parse regex field=cs_User_Agent "(?<bot_name>facebook)externalhit?\W+" nodrop
| parse regex field=cs_User_Agent "Feedfetcher-(?<bot_name>Google?)\S+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>PaperLiBot?)/.+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>TweetmemeBot?)/.+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>msn?)bot\W" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Nutch?)-.+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Google?)bot\W" nodrop
| parse regex field=cs_User_Agent "Feedfetcher-(?<bot_name>Google?)\W" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Yahoo?)!\s+Slurp[;/].+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>bing?)bot\W" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Bing?)Preview\W" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Sogou?)\s+web\s" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Yandex?)Bot\W" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>rogerbot?)\W" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>AddThis\.com?)\s+robot\s+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>ShareThis?)Fetcher/.+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Ahrefs?)Bot/.+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>MetaURI?)\s+API/.+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Showyou?)Bot\s+" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Google?)Producer;" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Ezooms?)\W" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Rockmelt?)Embedder\s+" nodrop 
| parse regex field=cs_User_Agent "(?<bot_name>Sosospider?)\W" nodrop 
| parse regex field=cs_User_Agent "(?<bot_name>Baidu?)spider" nodrop
| parse regex field=cs_User_Agent "(?<bot_name>Exabot?)\W"
```

**IIS 10 - OpenTelemetry/IIS - Web Server Operations/Top 10 URLs Facing 404 Errors**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} 404
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message  "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Web Server Operations/Top 5 Clients Causing 4xx Errors**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message  "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```

**IIS 10 - OpenTelemetry/IIS - Web Server Operations/Top Server Errors by Server**
```
 sumo.datasource=iis webengine.cluster.name={{webengine.cluster.name}} 5*
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as iis_log_message
| parse regex field=iis_log_message "(?<server_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<method>\S+?) (?<cs_uri_stem>\S+?) (?<cs_uri_query>\S+?) (?<s_port>\S+?) (?<cs_username>\S+?) (?<c_ip>\S+?) (?<cs_User_Agent>\S+?) (?<cs_referer>\S+?) (?<sc_status>\S+?) (?<sc_substatus>\S+?) (?<sc_win32_status>\S+?) (?<time_taken>\S+?)$"
```


