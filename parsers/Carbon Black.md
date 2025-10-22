# Parsers For Carbon Black

**Carbon Black/EDR - Alerts/Alerts by Group**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:group)(?:\"\:\"|=')(?<group>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Alerts/Alerts by Host after a Critical Threat Identification**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
|join ( parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<score>-?\d+)"
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
| _messageTime as event_time
| where (isBlank(hostname) or hostname matches "{{Host_Name}}") and (isBlank(ioc_type) or ioc_type matches "{{IOC_Type}}") and (isBlank(feed_name) or feed_name matches "*") and (isBlank(watchlist_name) or watchlist_name matches "{{Watchlist_Name}}") and (isBlank(group) or group matches "*") and (isBlank(status) or status matches "*") 
) as alert
// Find the most recent critical message by hostname (gives the last time it reported) 
, (parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')"
     | parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<score>-?\d+)"
```

**Carbon Black/EDR - Alerts/Alerts By Mode**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "username(?:\"\:\"|%3A|=')(?<username>.*?)(?:\"|%20|\|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Alerts/Alerts by OS**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:os_type)(?:\"\:\"|=')(?<os_type>.*?)(?:\"|')" multi nodrop
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Alerts/Alerts by Report**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:report_id)(?:\"\:\"|=')(?<Report>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Alerts/Alerts Over Time**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}   
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Alerts/Recent Alerts**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}   
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "sensor_id(?:\"\:|=)(?<sensor_id>.*?)(?:,|\s)" nodrop
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "timestamp(?:\"\:\"|=')(?<timestamp>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "os_type(?:\"\:\"|=')(?<os_type>.*?)(?:\"|')" multi nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Alerts/Top Users by Alerts Fired**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:username)(?:\"\:\"|=')(?<username>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Feeds/Feeds**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:feed_name)(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Feeds/Feeds Comparison over Time**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}} 
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Feeds/Feeds over Time**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop 
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Feeds/Most Recent Feeds**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Feeds/Processes by Associated Feeds**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "process_name(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi nodrop
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Feeds/Top Feeds**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}   
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop 
```

**Carbon Black/EDR - Feeds/Top Processes  by Feed**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}} 
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "process_name(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" nodrop
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Indicators of Compromise/Top IOC DNSs**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  "dns"
| parse regex "(?:dns_name|ioc_value)(?:\"\:\"|=')(?<dns_name>.*?)(?:\"|')" nodrop
| parse regex "(?:ioc_type)(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Indicators of Compromise/Top IOC MD5s**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  "md5"
| parse regex "(?:md5|ioc_value)(?:\"\:\"|=')(?<md5>.*?)(?:\"|')" nodrop
| parse regex "(?:ioc_type)(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Indicators of Compromise/Top IOC Process and Binary Queries**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}} 
| parse regex "(?:ioc_query_string|search_query)(?:\"\:\s\"cb\.urlver=1&q=|\"\:\")(?<search_query>.*?)(?:\")" nodrop
| parse regex "(?:ioc_type)(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Indicators of Compromise/Top IOC Query Based Feeds**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  "class"
| parse regex "(?:class|ioc_value)(?:\"\:\"|=')(?<class>.*?)(?:\"|')" 
| parse regex "(?:ioc_type)(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" 
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Indicators of Compromise/Top IOCs**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:ioc_type)(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Indicators of Compromise/Top Malicious IPv4 Addresses**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}   
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop
| parse regex "ioc_value(?:\"\:\"|=')(?<malicious_ip>.*?)(?:\"|')" nodrop 
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Network/CB Server List**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:cb_server)(?:\"\:\"|=')(?<cb_server>.*?)(?:\"|')" 
| parse regex "(?:cb_version)(?:\"\:\"|=')(?<cb_version>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Network/Comms IP Distribution**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:comms_ip)(?:\"\:\"|=')(?<comms_ip>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Network/Endpoint IP Distribution**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:interface_ip)(?:\"\:\"|=')(?<interface_ip>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Network/Remote IP Distribution**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:remote_ip)(?:\"\:\"|=')(?<remote_ip>.*?)(?:\"|')" 
| lookup latitude, longitude, country_code, country_name, region, city, postal_code from geo://location on ip = remote_ip
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Network/Top Local Ports**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:local_port|srcPort)(?:\"\:\"|=')(?<local_port>.*?)(?:\"|')"  
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Network/Top Protocols**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:proto|protocol)(?:\"\:\"|=')(?<protocol>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Network/Top Remote Ports**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:dstPort|remote_port)(?:\"\:\"|=')(?<remote_port>.*?)(?:\"|')"  
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Network/Unique Comms IP's**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:comms_ip)(?:\"\:\"|=')(?<comms_ip>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Network/Unique Interface IP's**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:interface_ip)(?:\"\:\"|=')(?<interface_ip>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Network/Unique Remote IP's**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:remote_ip)(?:\"\:\"|=')(?<remote_ip>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Overview/Alerts**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}   
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Overview/Alerts over Time**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}} 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Overview/CB Servers**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:ioc_type)(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" 
| parse regex "(?:cb_server)(?:\"\:\"|=')(?<cb_server>.*?)(?:\"|')" 
| parse regex "(?:cb_version)(?:\"\:\"|=')(?<cb_version>.*?)(?:\"|')"   
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Overview/Feeds**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:feed_name)(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Overview/Groups**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:group)(?:\"\:\"|=')(?<group>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Overview/Processes**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}   
| parse regex "(?:process_name)(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Overview/Sensors**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:sensor_id)(?:\"\:|=)(?<sensor_id>.*?)(?:,|\s)"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Overview/Threats Detected**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<alliance_score>-?\d+)"
| parse regex "alliance_link_\w+(?:\"\:\"|=')(?<alliance_link>.*?)(?:\"|')"  
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Overview/Top Groups**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:group)(?:\"\:\"|=')(?<group>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Overview/Top IOC's**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}} 
| parse regex "(?:ioc_type)(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')"
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Overview/Top OS**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:os_type)(?:\"\:\"|=')(?<os_type>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Overview/Top Processes**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}   
| parse regex "(?:process_name)(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Overview/Top Threat Feeds**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:feed_name)(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Overview/Top Watchlists**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}   
| parse regex "(?:watchlist_name)(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Overview/Unique Hosts**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Overview/Unique Users**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:username)(?:\"\:\"|=')(?<username>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Overview/Watchlists**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}   
| parse regex "(?:watchlist_name)(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Processes/Command Line by Process**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:cmdline)(?:\"\:\"|%3A)(?<cmdline>.*?)(?:\"|%20-)" multi
| parse regex "(?:process_name)(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi
| replace(cmdline,")", " ") as cmdline
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Processes/FileMod Processes**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:filemod_count)(?:\"\:|=')(?<filemod_count>.*?)(?:,|')" multi
| parse regex "(?:process_name)(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Processes/Processes**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}   
| parse regex "(?:process_name)(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Processes/RegMod Processes**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:regmod_count)(?:\"\:|=')(?<regmod_count>.*?)(?:,|')" multi
| parse regex "(?:process_name)(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Processes/Top FileMod Processes**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}} 
| parse regex "(?:filemod_count)(?:\"\:|=')(?<filemod_count>.*?)(?:,|')" multi
| parse regex "(?:process_name)(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Processes/Top Parent Processes**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}   parent_name
| parse regex "(?:parent_name)(?:\"\:\"|%3A)(?<parent_name>.*?)(?:\"|%20)" multi
| parse regex "(?:process_name)(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Processes/Top Paths**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<score>-?\d+)"
| parse regex "(?:path)(?:\"\:\"|=')(?<path>.*?)(?:\"|')" multi
| parse regex "(?:process_name)(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Processes/Top Processes**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}   
| parse regex "(?:process_name)(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Processes/Top Processes by Host**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:process_name)(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Processes/Top RegMod Processes**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:regmod_count)(?:\"\:|=')(?<regmod_count>.*?)(?:,|')" multi
| parse regex "(?:process_name)(?:\"\:\"|=')(?<process_name>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Sensors/Active Sensors**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:sensor_id)(?:\"\:|=)(?<sensor_id>.*?)(?:,|\s)"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Sensors/Activity**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:sensor_id)(?:\"\:|=)(?<sensor_id>.*?)(?:,|\s)"
| parse regex "(?:report_id)(?:\"\:\"|=')(?<report_id>.*?)(?:\"|')" nodrop
| parse regex "(?:comms_ip)(?:\"\:\"|=')(?<comms_ip>.*?)(?:\"|')" nodrop
| parse regex "(?:interface_ip)(?:\"\:\"|=')(?<interface_ip>.*?)(?:\"|')" nodrop
| parse regex "(?:username)(?:\"\:\"|=')(?<username>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Sensors/Sensor OS Breakdown**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:sensor_id)(?:\"\:|=)(?<sensor_id>.*?)(?:,|\s)"
| parse regex "(?:os_type)(?:\"\:\"|=')(?<os_type>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Sensors/Sensors 24h**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:sensor_id)(?:\"\:|=)(?<sensor_id>.*?)(?:,|\s)"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Sensors/Sensors 30d**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:sensor_id)(?:\"\:|=)(?<sensor_id>.*?)(?:,|\s)"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Sensors/Sensors 7d**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:sensor_id)(?:\"\:|=)(?<sensor_id>.*?)(?:,|\s)"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Sensors/Sensors not Reporting in last 7 days**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:sensor_id)(?:\"\:|=)(?<sensor_id>.*?)(?:,|\s)"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Threat Intelligence/Most Recent Threats**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}   
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')"   
| parse regex "sensor_id(?:\"\:|=)(?<sensor_id>.*?)(?:,|\s)" nodrop
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "timestamp(?:\"\:\"|=')(?<timestamp>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "os_type(?:\"\:\"|=')(?<os_type>.*?)(?:\"|')" multi nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<alliance_score>-?\d+)"
| parse regex "(?:feed_name)(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')"
```

**Carbon Black/EDR - Threat Intelligence/New Binaries Observed**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  binaryinfo.observed
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Threat Intelligence/Process Connections to Suspicious Countries**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}   
| parse regex "(?:remote_ip|dst)(?:\"\:\"|=')(?<remote_ip>.*?)(?:\"|')"  
| lookup latitude, longitude, country_code, country_name, region, city, postal_code from geo://location on ip = remote_ip
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Threat Intelligence/Processes Blocked**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  ingress.event.processblock
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Threat Intelligence/Tampering Processes Observed**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  ingress.event.tamper
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Threat Intelligence/Threat Score Box Plot by Feed**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<alliance_score>-?\d+)"
| parse regex "(?:feed_name)(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')"
| toInt(alliance_score)
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Threat Intelligence/Threat Scores by Feed**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<alliance_score>-?\d+)"
| parse regex "(?:feed_name)(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Threat Intelligence/Threats by Feed and Score**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<alliance_score>-?\d+)"
| parse regex "(?:feed_name)(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')"
| parse regex "alliance_link_\w+(?:\"\:\"|=')(?<alliance_link>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Threat Intelligence/Threats by Feeds**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<alliance_score>-?\d+)"
| parse regex "(?:feed_name)(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Threat Intelligence/Threats by Feeds over Time**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<alliance_score>-?\d+)"
| parse regex "(?:feed_name)(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')"
| parse regex "alliance_link_\w+(?:\"\:\"|=')(?<alliance_link>.*?)(?:\"|')" 
| int(alliance_score)
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Threat Intelligence/Threats by Score**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<alliance_score>-?\d+)"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Threat Intelligence/Threats by Severity**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<score>-?\d+)"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Threat Intelligence/Threats Detected**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<alliance_score>-?\d+)"
| parse regex "alliance_link_\w+(?:\"\:\"|=')(?<alliance_link>.*?)(?:\"|')"  
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Threat Intelligence/Threats Outlier**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}   
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<alliance_score>-?\d+)"  
| toInt(alliance_score)
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Threat Intelligence/Top Hosts - High Avg Score Threats**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<alliance_score>-?\d+)"
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Threat Intelligence/Top Hosts - Multiple Critical Threats**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<score>-?\d+)"
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Threat Intelligence/Top Hosts Affected**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}   
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" 
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')"
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Threat Intelligence/Top Scores**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:\",\"|\s)alliance_score_(?:.*?)(?:\"\:|=')(?<score>-?\d+)"
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - User and Host Alerts/Multiple Users using the same Machine (Top 10)**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}} 
| parse regex "(?:username)(?:\"\:\"|=')(?<username>.*?)(?:\"|')" multi
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - User and Host Alerts/Outbound and Inbound Alerts**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:direction)(?:\"\:\"|=')(?<direction>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - User and Host Alerts/Top Hosts by Alerts Fired**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - User and Host Alerts/Top Hosts by Inbound Alerts**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}} 
| parse regex "(?:direction)(?:\"\:\"|=')(?<direction>.*?)(?:\"|')" 
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" | parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - User and Host Alerts/Top Hosts with Outbound Alerts**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}} 
| parse regex "(?:direction)(?:\"\:\"|=')(?<direction>.*?)(?:\"|')" 
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" | parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - User and Host Alerts/Top Users by Alerts Fired**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:username)(?:\"\:\"|=')(?<username>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - User and Host Alerts/Unique Hosts**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - User and Host Alerts/Unique Users**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:username)(?:\"\:\"|=')(?<username>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - User and Host Alerts/User Alerts Over Time**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  
| parse regex "(?:username)(?:\"\:\"|=')(?<username>.*?)(?:\"|')" multi
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Watchlists/Host Watchlist Hits**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  "watchlist.hit.ingress.host"
| parse regex "(?:watchlist_name)(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" 
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "(?:status)(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
| parse regex "(?:os_type)(?:\"\:\"|=')(?<os_type>.*?)(?:\"|')" nodrop
| parse regex "(?:ioc_type)(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop
| parse regex "(?:group)(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:feed_name)(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "(?:alert_severity)(?:\"\:\"|=')(?<alert_severity>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Watchlists/Process Query Watchlist Hits**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  "watchlist.hit.query.process"
| parse regex "(?:watchlist_name)(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" 
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "(?:status)(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
| parse regex "(?:os_type)(?:\"\:\"|=')(?<os_type>.*?)(?:\"|')" nodrop
| parse regex "(?:ioc_type)(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop
| parse regex "(?:group)(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:feed_name)(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "(?:alert_severity)(?:\"\:\"|=')(?<alert_severity>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Watchlists/Process Watchlist Hits**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  "watchlist.hit.ingress.process"
| parse regex "(?:watchlist_name)(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" 
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "(?:status)(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
| parse regex "(?:os_type)(?:\"\:\"|=')(?<os_type>.*?)(?:\"|')" nodrop
| parse regex "(?:ioc_type)(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop
| parse regex "(?:group)(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:feed_name)(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "(?:alert_severity)(?:\"\:\"|=')(?<alert_severity>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Watchlists/Top Watchlists**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}} 
| parse regex "(?:watchlist_name)(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Watchlists/Watchlist Comparison over Time**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}} 
| parse regex "(?:watchlist_name)(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "watchlist_name(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Watchlists/Watchlist Hits by Name over Time**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}} 
| parse regex "(?:watchlist_name)(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Watchlists/Watchlist Hits by Type over Time**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}  ("watchlist.hit")
| parse regex "(?:watchlist_name)(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')" 
| parse regex "(?:alert_type)(?:\"\:\"|=)(?<alert_type>.*?)(?:\"|\s)" 
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/EDR - Watchlists/Watchlists**
```
_sourceCategory={{EndpointDetectionandResponseEventsSource}}   
| parse regex "(?:watchlist_name)(?:\"\:\"|=')(?<watchlist_name>.*?)(?:\"|')"
| parse regex "ioc_type(?:\"\:\"|=')(?<ioc_type>.*?)(?:\"|')" nodrop  
| parse regex "feed_name(?:\"\:\"|=')(?<feed_name>.*?)(?:\"|')" nodrop
| parse regex "group(?:\"\:\"|=')(?<group>.*?)(?:\"|')" nodrop
| parse regex "(?:hostname|host)(?:\"\:\"|=')(?<hostname>.*?)(?:\"|')" nodrop
| parse regex "status(?:\"\:\"|=')(?<status>.*?)(?:\"|')" nodrop
```

**Carbon Black/Endpoint Standard - Alerts/Alerts**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os","severity" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, ActualSeverity2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Alerts/Alerts by Device OS**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Alerts/Alerts by Severity**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Alerts/Alerts by Target Priority**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Alerts/Alerts Over Time**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Alerts/Most Recent Alerts**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
| if (isNull(Score), -1, Score) as Score
| if (isNull(ActualSeverity2), -1, ActualSeverity2) as ActualSeverity2
| where (Device1 matches "{{Device}}" or Device2 matches "{{Device}}") and (User1 matches "{{User}}" or User2 matches "{{User}}") and (Incident_ID1 matches "{{Incident_ID}}" or Incident_ID2 matches "{{Incident_ID}}")
| if (isNull(url1),"", url1) as url1
| parse field=url1 "*/investigate" as server nodrop
```

**Carbon Black/Endpoint Standard - Device/Alerts by Device**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Device/Alerts by Severity and Device**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Device/Devices**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Device/Devices by Group**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Device/Devices by OS**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Device/Devices by Target-Priority**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Device/Incidents by Device**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Indicators of Compromise/Indicators**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json "threat_indicators[*].ttps" as threatInfo_indicators1 nodrop
| json "threatInfo.indicators[*].indicatorName" as threatInfo_indicators2 nodrop
| extract field=threatInfo_indicators1 "\"(?<Indicators1>.*?)\"(,|\])" multi nodrop
| extract field=threatInfo_indicators2 "\"(?<Indicators2>.*?)\"(,|\])" multi nodrop
| json "type" nodrop
```

**Carbon Black/Endpoint Standard - Indicators of Compromise/Indicators and Applications**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_indicators[*].process_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "threatInfo.indicators[*].applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| where (type = "CB_ANALYTICS" or type = "POLICY_ACTION" or type = "THREAT")
| json "threat_indicators[*].ttps" as threatInfo_indicators1 nodrop
| json field=_raw "threatInfo.indicators[*].indicatorName" as threatInfo_indicators2 nodrop
| extract field=threatInfo_indicators1 "\"(?<Indicators1>.*?)\"(,|\])" multi nodrop
| extract field=threatInfo_indicators2 "\"(?<Indicators2>.*?)\"(,|\])" multi nodrop
| concat(Indicators1, Indicators2) as Indicators
| extract field=Application1 "\"(?<Applications1>.*?)\"(,|\])" multi nodrop
| extract field=Application2 "\"(?<Applications2>.*?)\"(,|\])" multi nodrop
```

**Carbon Black/Endpoint Standard - Indicators of Compromise/Indicators by Severity**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json "threat_indicators[*].ttps" as threatInfo_indicators1 nodrop
| json field=_raw "threatInfo.indicators[*].indicatorName" as threatInfo_indicators2 nodrop
| extract field=threatInfo_indicators1 "\"(?<Indicators1>.*?)\"(,|\])" multi nodrop
| extract field=threatInfo_indicators2 "\"(?<Indicators2>.*?)\"(,|\])" multi nodrop
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
| json "type" nodrop
```

**Carbon Black/Endpoint Standard - Indicators of Compromise/Unique Indicators**
```
_sourceCategory={{EndpointStandardEventsSource}}  
| json "threat_indicators[*].ttps" as threatInfo_indicators1 nodrop
| json "threatInfo.indicators[*].indicatorName" as threatInfo_indicators2 nodrop
| extract field=threatInfo_indicators1 "\"(?<Indicators1>.*?)\"(,|\])" multi nodrop
| extract field=threatInfo_indicators2 "\"(?<Indicators2>.*?)\"(,|\])" multi nodrop
| json "type" nodrop
```

**Carbon Black/Endpoint Standard - Overview/Alerts**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os","severity" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, ActualSeverity2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Overview/Alerts over Time**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Overview/Devices**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Overview/Groups**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os","severity" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, ActualSeverity2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Overview/Indicators of Compromise**
```
_sourceCategory={{EndpointStandardEventsSource}}  
| json "threat_indicators[*].ttps" as threatInfo_indicators1 nodrop
| json "threatInfo.indicators[*].indicatorName" as threatInfo_indicators2 nodrop
| extract field=threatInfo_indicators1 "\"(?<Indicators1>.*?)\"(,|\])" multi nodrop
| extract field=threatInfo_indicators2 "\"(?<Indicators2>.*?)\"(,|\])" multi nodrop
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os","severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score, reason1 nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
| where (Device1 matches "{{Device}}" or Device2 matches "{{Device}}") and (User1 matches "{{User}}" or User2 matches "{{User}}") and (Incident_ID1 matches "{{Incident_ID}}" or Incident_ID2 matches "{{Incident_ID}}") and (Target_Priority1 matches "{{Target_Priority}}" or Target_Priority2 matches "{{Target_Priority}}")
| if (isNull(Score), -1, Score) as Score
| if (isNull(ActualSeverity2), -1, ActualSeverity2) as ActualSeverity2
| if (int(score) >= 80 , "Critical", if (int(score) >= 60 , "High", if (int(score) >= 40 , "Medium", if (int(score) >= 20 , "Low", if (int(score) =-1, "", "Informational"))))) as ActualSeverity1 
| if (int(ActualSeverity2) >= 8, "Critical", if (int(ActualSeverity2) >= 6, "High", if (int(ActualSeverity2) >= 4, "Medium", if (int(ActualSeverity2) >= 2,"Low", if (int(ActualSeverity2) =-1, "", "Informational"))))) as ActualSeverity2
| concat(ActualSeverity1, ActualSeverity2) as Severity 
| where Severity matches "{{Severity}}"
| json "type" nodrop
```

**Carbon Black/Endpoint Standard - Overview/Threats**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "severity" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, ActualSeverity2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Overview/Top Applications**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_indicators[*].process_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "threatInfo.indicators[*].applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
| if (isNull(Score), -1, Score) as Score
| if (isNull(ActualSeverity2), -1, ActualSeverity2) as ActualSeverity2
| where (Device1 matches "{{Device}}" or Device2 matches "{{Device}}") and (User1 matches "{{User}}" or User2 matches "{{User}}") and  (toInt(Score) >=0 or int(ActualSeverity2) >= 0) and (Incident_ID1 matches "{{Incident_ID}}" or Incident_ID2 matches "{{Incident_ID}}" ) and (Target_Priority1 matches "{{Target_Priority}}" or Target_Priority2 matches "{{Target_Priority}}")
| if (int(score) >= 80 , "Critical", if (int(score) >= 60 , "High", if (int(score) >= 40 , "Medium", if (int(score) >= 20 , "Low", if (int(score) =-1, "", "Informational"))))) as ActualSeverity1 
| if (int(ActualSeverity2) >= 8, "Critical", if (int(ActualSeverity2) >= 6, "High", if (int(ActualSeverity2) >= 4, "Medium", if (int(ActualSeverity2) >= 2,"Low", if (int(ActualSeverity2) =-1, "", "Informational"))))) as ActualSeverity2
| concat(ActualSeverity1, ActualSeverity2) as Severity 
| where Severity matches "{{Severity}}"
| extract field=Application1 "\"(?<Applications1>.*?)\"(,|\])" multi nodrop
| extract field=Application2 "\"(?<Applications2>.*?)\"(,|\])" multi nodrop
```

**Carbon Black/Endpoint Standard - Overview/Top Devices**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Overview/Top Indicators**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json "threat_indicators[*].ttps" as threatInfo_indicators1 nodrop
| json "threatInfo.indicators[*].indicatorName" as threatInfo_indicators2 nodrop
| extract field=threatInfo_indicators1 "\"(?<Indicators1>.*?)\"(,|\])" multi nodrop
| extract field=threatInfo_indicators2 "\"(?<Indicators2>.*?)\"(,|\])" multi nodrop
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
| json "type" nodrop
```

**Carbon Black/Endpoint Standard - Overview/Top Reasons**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os","severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score, reason1 nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Overview/Top Users**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os","severity" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, ActualSeverity2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Overview/Users**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os","severity" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, ActualSeverity2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Threat Intelligence/Most Recent Threats**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
| if (isNull(Score), -1, Score) as Score
| if (isNull(ActualSeverity2), -1, ActualSeverity2) as ActualSeverity2
| where (Device1 matches "{{Device}}" or Device2 matches "{{Device}}") and (User1 matches "{{User}}" or User2 matches "{{User}}") and  ((Severity1 = "Threat" and toInt(Score) >=0) or Severity2 ="WARNING" or Severity2 ="THREAT")
| if (isNull(url1),"", url1) as url1
| parse field=url1 "*/investigate" as server nodrop
```

**Carbon Black/Endpoint Standard - Threat Intelligence/Recent Policy Actions**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1  nodrop //Defense Source and syslog-forwarder
```

**Carbon Black/Endpoint Standard - Threat Intelligence/Threats**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Threat Intelligence/Threats by Severity**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Threat Intelligence/Threats Outlier**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Threat Intelligence/Top Devices - Multiple Critical Threats**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os", "device_external_ip", "policy_applied","sensor_action", "threat_cause_actor_name", "threat_cause_reputation", "alert_url", "create_time", "severity", "reason_code" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2, threatIP2, policy_applied, sensor_action, Application2, Reputation2, url2, eventTime2, ActualSeverity2, reason2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score", "deviceInfo.externalIpAddress", "type", "policyAction.applicationName", "policyAction.reputation", "url", "eventTime", "threatInfo.summary" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score,threatIP1,type,Application1,Reputation1, url1, eventTime1, reason1  nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Threat Intelligence/Top Devices Affected**
```
_sourceCategory={{EndpointStandardEventsSource}} 
| json field=_raw "category","device_name","device_username", "target_value", "device_group", "threat_id", "device_os" as Severity2, Device2, User2,Target_Priority2, DeviceGroup2, Incident_ID2, Device_OS2 nodrop //s3
| json field=_raw "eventDescription", "deviceInfo.deviceName", "deviceInfo.email", "deviceInfo.targetPriorityType", "deviceInfo.groupName", "deviceInfo.deviceType", "threatInfo.incidentId", "ruleName", "threatInfo.score" as description, Device1, User1, Target_Priority1, DeviceGroup1, Device_OS1, Incident_ID1, Rule, Score nodrop //Defense Source and syslog-forwarder
| parse field=description "[Severity: *]" as Severity1 nodrop
```

**Carbon Black/Endpoint Standard - Threat Intelligence/Top Hosts with Malware Attacks**
```
_sourceCategory={{EndpointStandardEventsSource}}  DETECTED_MALWARE_APP
| json field=_raw "deviceInfo.deviceName", "device_name" as Device1, Device2 nodrop
```


