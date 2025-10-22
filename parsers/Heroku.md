# Parsers For Heroku

**Heroku/Application Errors/App Error Details**
```
_sourceCategory={{Logsdatasource}}  error
| where _sourceName matches "{{log_drain}}"
| parse regex "host (?<host>.*?(?= )) (?<component>.*?(?= )) - (?<error_message>.*)" 
```

**Heroku/Application Errors/App Error Trend by Component**
```
_sourceCategory={{Logsdatasource}}  error
| where _sourceName matches "{{log_drain}}"
| parse regex "host (?<host>.*?(?= )) (?<component>.*?(?= ))" 
```

**Heroku/Application Errors/App Errors by Component**
```
_sourceCategory={{Logsdatasource}}  error
| where _sourceName matches "{{log_drain}}"
| parse regex "host (?<host>.*?(?= )) (?<component>.*?(?= ))" 
```

**Heroku/Application Errors/App Release Error Trend**
```
_sourceCategory={{Logsdatasource}}  error app release
| where _sourceName matches "{{log_drain}}"
| parse regex "host (?<host>.*?(?= ))" 
```

**Heroku/Application Errors/App Signal Termination Error Trend**
```
_sourceCategory={{Logsdatasource}}  error Worker was sent SIGTERM
| where _sourceName matches "{{log_drain}}"
| parse regex "host (?<host>.*?(?= ))" 
```

**Heroku/Application Errors/App Worker Initialization Error Trend**
```
_sourceCategory={{Logsdatasource}}  error Worker failed to boot
| where _sourceName matches "{{log_drain}}"
| parse regex "host (?<host>.*?(?= ))" 
```

**Heroku/Application Errors/Total App Error Trend**
```
_sourceCategory={{Logsdatasource}}  error
| where _sourceName matches "{{log_drain}}"
| parse regex "host (?<host>.*?(?= ))" 
```

**Heroku/Application Errors/Total App Errors**
```
_sourceCategory={{Logsdatasource}}  error
| where _sourceName matches "{{log_drain}}"
| parse regex "host (?<host>.*?(?= ))" 
```

**Heroku/Application/App Deployment Commits by User**
```
_sourceCategory={{Logsdatasource}}  Deploy
| where _sourceName matches "{{log_drain}}"
| parse regex "Deploy (?<commit_id>.*?(?= )) by user (?<user>.*)"
```

**Heroku/Application/App Deployment Trend by User**
```
_sourceCategory={{Logsdatasource}}  Deploy
| where _sourceName matches "{{log_drain}}"
| parse regex "Deploy (?<commit_id>.*?(?= )) by user (?<user>.*)"
```

**Heroku/Application/App Deployments by User**
```
_sourceCategory={{Logsdatasource}}  Deploy
| where _sourceName matches "{{log_drain}}"
| parse regex "Deploy (?<commit_id>.*?(?= )) by user (?<user>.*)"
```

**Heroku/Application/App Release by User**
```
_sourceCategory={{Logsdatasource}}  Release created
| where _sourceName matches "{{log_drain}}"
| parse regex "Release (?<app_version>.*?(?= )) created by user (?<user>.*)"
```

**Heroku/Application/App Release Trend by User**
```
_sourceCategory={{Logsdatasource}}  Release created
| where _sourceName matches "{{log_drain}}"
| parse regex "Release (?<app_version>.*?(?= )) created by user (?<user>.*)"
```

**Heroku/CPU Load Metrics/Load Average 15m by Dyno**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*load_avg_15m=(?<load_avg_15m>.*?(?=$))"
```

**Heroku/CPU Load Metrics/Load Average 1m by Dyno**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*load_avg_1m=(?<load_avg_1m>.*?(?= ))"
```

**Heroku/CPU Load Metrics/Load Average 5m by Dyno**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*load_avg_5m=(?<load_avg_5m>.*?(?= ))"
```

**Heroku/CPU Load Metrics/Load Average Percent (1m, 5m, 15m) for All Dynos**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*load_avg_1m=(?<load_avg_1m>.*?(?= )).*load_avg_5m=(?<load_avg_5m>.*?(?= )).*load_avg_15m=(?<load_avg_15m>.*?(?=$))"
```

**Heroku/CPU Load Metrics/Overall Load Average 15m**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*load_avg_15m=(?<load_avg_15m>.*?(?=$))"
```

**Heroku/CPU Load Metrics/Overall Load Average 1m**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*load_avg_1m=(?<load_avg_1m>.*?(?= ))"
```

**Heroku/CPU Load Metrics/Overall Load Average 5m**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*load_avg_5m=(?<load_avg_5m>.*?(?= ))"
```

**Heroku/CPU Load Metrics/Top 25 Load Average 15m by Dyno**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*load_avg_15m=(?<load_avg_15m>.*?(?=$))"
```

**Heroku/CPU Load Metrics/Top 25 Load Average 1m by Dyno**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*load_avg_1m=(?<load_avg_1m>.*?(?= ))"
```

**Heroku/CPU Load Metrics/Top 25 Load Average 5m by Dyno**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*load_avg_5m=(?<load_avg_5m>.*?(?= ))"
```

**Heroku/Dyno/Completed Dyno Launches**
```
_sourceCategory={{Logsdatasource}}  "State changed from"
| where _sourceName matches "{{log_drain}}"
| parse regex "State changed from (?<first_state>.*?(?= )) to (?<second_state>.*)"
```

**Heroku/Dyno/Completed Dyno Launches Trend**
```
_sourceCategory={{Logsdatasource}}  "State changed from"
| where _sourceName matches "{{log_drain}}"
| _sourceName as log_drain
| parse regex "State changed from (?<first_state>.*?(?= )) to (?<second_state>.*)"
```

**Heroku/Dyno/Crashed Dyno Launches**
```
_sourceCategory={{Logsdatasource}}  "State changed from"
| where _sourceName matches "{{log_drain}}"
| parse regex "State changed from (?<first_state>.*?(?= )) to (?<second_state>.*)"
```

**Heroku/Dyno/Crashed Dyno Launches Trend**
```
_sourceCategory={{Logsdatasource}}  "State changed from"
| where _sourceName matches "{{log_drain}}"
| _sourceName as log_drain
| parse regex "State changed from (?<first_state>.*?(?= )) to (?<second_state>.*)"
```

**Heroku/Dyno/Dyno Count Trend**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse " dyno=* " as dyno
```

**Heroku/Dyno/Dynos**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse " dyno=* " as dyno
```

**Heroku/Dyno/Process Exit Status by Code**
```
_sourceCategory={{Logsdatasource}}  "Process exited with status"
| where _sourceName matches "{{log_drain}}"
| parse regex "Process exited with status (?<status>.*)"
```

**Heroku/Dyno/Scaling Dyno Operation Trend by User**
```
_sourceCategory={{Logsdatasource}}  Scaled
| where _sourceName matches "{{log_drain}}"
| parse regex "Scaled to (?<dyno>.*(?= by)).*user (?<user>.*)"
```

**Heroku/Dyno/Scaling Dyno Operations**
```
_sourceCategory={{Logsdatasource}}  Scaled
| where _sourceName matches "{{log_drain}}"
| parse regex "Scaled to (?<dyno>.*(?= by)).*user (?<user>.*)"
```

**Heroku/Dyno/Scaling Dyno Operations by User**
```
_sourceCategory={{Logsdatasource}}  Scaled
| where _sourceName matches "{{log_drain}}"
| parse regex "Scaled to (?<dyno>.*(?= by)).*user (?<user>.*)"
```

**Heroku/Dyno/Stopped Dynos**
```
_sourceCategory={{Logsdatasource}}  "State changed from"
| where _sourceName matches "{{log_drain}}"
| parse regex "State changed from (?<first_state>.*?(?= )) to (?<second_state>.*)"
```

**Heroku/Dyno/Successful Dyno Launches Trend**
```
_sourceCategory={{Logsdatasource}}  "State changed from"
| where _sourceName matches "{{log_drain}}"
| _sourceName as log_drain
| parse regex "State changed from (?<first_state>.*?(?= )) to (?<second_state>.*)"
```

**Heroku/Dyno/Successfull Dyno Launches**
```
_sourceCategory={{Logsdatasource}}  "State changed from"
| where _sourceName matches "{{log_drain}}"
| parse regex "State changed from (?<first_state>.*?(?= )) to (?<second_state>.*)"
```

**Heroku/Infrastructure Errors/App Boot Timeout Errors**
```
_sourceCategory={{Logsdatasource}}  error H20
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com))" nodrop
```

**Heroku/Infrastructure Errors/App Crash Errors**
```
_sourceCategory={{Logsdatasource}}  error H10
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com))" nodrop
```

**Heroku/Infrastructure Errors/Blank App Errors**
```
_sourceCategory={{Logsdatasource}}  H81
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com))" nodrop
```

**Heroku/Infrastructure Errors/Boot Timeout Errors**
```
_sourceCategory={{Logsdatasource}}  error R10
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com))" nodrop
```

**Heroku/Infrastructure Errors/Client Connection Idle Errors**
```
_sourceCategory={{Logsdatasource}}  H28
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com))" nodrop
```

**Heroku/Infrastructure Errors/Client Request Interrupted Errors**
```
_sourceCategory={{Logsdatasource}}  H27
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com))" nodrop
```

**Heroku/Infrastructure Errors/Closed Connections without Response Errors**
```
_sourceCategory={{Logsdatasource}}  error H13
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com))" nodrop
```

**Heroku/Infrastructure Errors/Error Locations**
```
_sourceCategory={{Logsdatasource}}  (error or H81 or H27 or H28 or H82 or H83 or L11)
| where _sourceName matches "{{log_drain}}"
| parse regex "host (?<host>.*?(?= )) (?<component>.*?(?= )) - (?<error_message>.*)" 
| where host="heroku"
| parse regex field=error_message "host=(?<app_name>.*(?=.herokuapp.com)).*fwd=\"(?<ip_address>.*(?=\"))" nodrop
| where app_name matches "{{application_name}}"
| parse regex field=ip_address "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" multi
```

**Heroku/Infrastructure Errors/Idle Connection Errors**
```
_sourceCategory={{Logsdatasource}}  error H15
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com))" nodrop
```

**Heroku/Infrastructure Errors/Infrastructure  Error Trend by Code**
```
_sourceCategory={{Logsdatasource}}  (error or H81 or H27 or H28 or H82 or H83 or L11)
| where _sourceName matches "{{log_drain}}"
| parse regex "host (?<host>.*?(?= )) (?<component>.*?(?= )) - (?<error_message>.*)" 
| where host="heroku"
| parse regex field=error_message "at=(?<log_level>.*(?=)).code=(?<error_code>.*?(?= )).desc=\"(?<error_description>.*?(?=\"))..method=(?<request_type>.*?(?= )).path=\"(?<request_path>.*?(?=\")).*host=(?<app_name>.*(?=.herokuapp.com)).*request_id=(?<request_id>.*?(?= )).fwd=\"(?<ip_address>.*(?=\")).*dyno=(?<dyno>.*?(?= )).*connect=(?<connect>.*?(?= )).*service=(?<service>.*?(?= )).*status=(?<status>.*?(?= )).*bytes=(?<bytes>.*?(?= )).*protocol=(?<protocol>.*?(?=$))" nodrop
```

**Heroku/Infrastructure Errors/Infrastructure Error Details**
```
_sourceCategory={{Logsdatasource}}  (error or H81 or H27 or H28 or H82 or H83 or L11)
| where _sourceName matches "{{log_drain}}"
| parse regex "host (?<host>.*?(?= )) (?<component>.*?(?= )) - (?<error_message>.*)" 
| where host="heroku"
| parse regex field=error_message "at=(?<log_level>.*(?=)).code=(?<error_code>.*?(?= )).desc=\"(?<error_description>.*?(?=\"))..method=(?<request_type>.*?(?= )).path=\"(?<request_path>.*?(?=\"))..host=(?<app_name>.*(?=.herokuapp.com)).*request_id=(?<request_id>.*?(?= )).fwd=\"(?<ip_address>.*(?=\")).*dyno=(?<dyno>.*?(?= )).*connect=(?<connect>.*?(?= )).*service=(?<service>.*?(?= )).*status=(?<status>.*?(?= )).*bytes=(?<bytes>.*?(?= )).*protocol=(?<protocol>.*?(?=$))" nodrop
```

**Heroku/Infrastructure Errors/Infrastructure Errors by Code**
```
_sourceCategory={{Logsdatasource}}  (error or H81 or H27 or H28 or H82 or H83 or L11)
| where _sourceName matches "{{log_drain}}"
| parse regex "host (?<host>.*?(?= )) (?<component>.*?(?= )) - (?<error_message>.*)" 
| where host="heroku"
| parse regex field=error_message "at=(?<log_level>.*(?=)).code=(?<error_code>.*?(?= )).desc=\"(?<error_description>.*?(?=\"))..method=(?<request_type>.*?(?= )).path=\"(?<request_path>.*?(?=\")).*host=(?<app_name>.*(?=.herokuapp.com)).*request_id=(?<request_id>.*?(?= )).fwd=\"(?<ip_address>.*(?=\")).*dyno=(?<dyno>.*?(?= )).*connect=(?<connect>.*?(?= )).*service=(?<service>.*?(?= )).*status=(?<status>.*?(?= )).*bytes=(?<bytes>.*?(?= )).*protocol=(?<protocol>.*?(?=$))" nodrop
```

**Heroku/Infrastructure Errors/Infrastructure Errors by Component**
```
_sourceCategory={{Logsdatasource}}  (error or H81 or H27 or H28 or H82 or H83 or L11)
| where _sourceName matches "{{log_drain}}"
| parse regex "host (?<host>.*?(?= )) (?<component>.*?(?= )) - (?<error_message>.*)" 
| where host="heroku"
| parse regex field=error_message "host=(?<app_name>.*(?=.herokuapp.com))" nodrop
```

**Heroku/Infrastructure Errors/Request Timeout Errors**
```
_sourceCategory={{Logsdatasource}}  error H12
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com))" nodrop
```

**Heroku/Infrastructure Errors/Server Request Interrupted Errors**
```
_sourceCategory={{Logsdatasource}}  error H18
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com))" nodrop
```

**Heroku/Infrastructure Errors/Total Infrastructure Errors**
```
_sourceCategory={{Logsdatasource}}  (error or H81 or H27 or H28 or H82 or H83 or L11)
| where _sourceName matches "{{log_drain}}"
| parse regex "host (?<host>.*?(?= )) (?<component>.*?(?= )) - (?<error_message>.*)" 
| where host="heroku"
| parse regex field=error_message "host=(?<app_name>.*(?=.herokuapp.com))" nodrop
```

**Heroku/Infrastructure Errors/Zero Dyno Errors**
```
_sourceCategory={{Logsdatasource}}  error H14
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com))" nodrop
```

**Heroku/Memory Metrics/Average Disk Cache Memory**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_cache=(?<memory_cache>.*?(?=MB ))"
```

**Heroku/Memory Metrics/Average Disk Cache Memory(MB) Over Time by Dyno**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_cache=(?<memory_cache>.*?(?=MB ))"
```

**Heroku/Memory Metrics/Average Memory Quota**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_quota=(?<memory_quota>.*?(?=MB))"
```

**Heroku/Memory Metrics/Average Memory Quota(MB) Over Time by Dyno**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_quota=(?<memory_quota>.*?(?=MB))"
```

**Heroku/Memory Metrics/Average Memory Total(MB) by Dyno**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_total=(?<memory_total>.*?(?=MB ))"
```

**Heroku/Memory Metrics/Average Resident Memory**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_rss=(?<memory_rss>.*?(?=MB ))"
| where dyno matches "{{dyno}}"
| parse "memory_rss=*MB" as memory_rss
```

**Heroku/Memory Metrics/Average Resident Memory(MB) Over Time by Dyno**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_rss=(?<memory_rss>.*?(?=MB ))"
```

**Heroku/Memory Metrics/Average Swap Memory**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_swap=(?<memory_swap>.*?(?=MB ))"
```

**Heroku/Memory Metrics/Average Swap Memory(MB) Over Time by Dyno**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_swap=(?<memory_swap>.*?(?=MB ))"
```

**Heroku/Memory Metrics/Average Total Memory**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_total=(?<memory_total>.*?(?=MB ))"
```

**Heroku/Memory Metrics/Memory Utilization (MB)**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_total=(?<memory_total>.*?(?=MB )).*memory_rss=(?<memory_rss>.*?(?=MB )).*memory_cache=(?<memory_cache>.*?(?=MB )).*memory_swap=(?<memory_swap>.*?(?=MB ))"
```

**Heroku/Memory Metrics/Pages Read from Disk by Dyno**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_pgpgin=(?<memory_pgpgin>.*?(?=pages ))"
```

**Heroku/Memory Metrics/Pages Written to Disk by Dyno**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_pgpgout=(?<memory_pgpgout>.*?(?=pages ))"
```

**Heroku/Memory Metrics/Top 25 Disk Cache Memory(MB) by Dyno**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_cache=(?<memory_cache>.*?(?=MB ))"
```

**Heroku/Memory Metrics/Top 25 Memory Quota(MB) by Dyno**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_quota=(?<memory_quota>.*?(?=MB))"
```

**Heroku/Memory Metrics/Top 25 Memory Utilization(MB) by Dyno**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_total=(?<memory_total>.*?(?=MB ))"
```

**Heroku/Memory Metrics/Top 25 Resident Memory(MB) by Dyno**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_rss=(?<memory_rss>.*?(?=MB ))"
```

**Heroku/Memory Metrics/Top 25 Swap Memory(MB) by Dyno**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_swap=(?<memory_swap>.*?(?=MB ))"
```

**Heroku/Overview/50th Percentile Connection Time Trend**
```
_sourceCategory={{Logsdatasource}}  "connect="
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*connect=(?<connect>.*?(?= ))"
| where app_name matches "{{application_name}}"
| parse regex field=connect "(?<connect_time>\d{0,10})"
```

**Heroku/Overview/50th Percentile Latency Trend**
```
_sourceCategory={{Logsdatasource}}  "service="
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*service=(?<service>.*?(?= ))"
| where app_name matches "{{application_name}}"
| parse regex field=service "(?<service_time>\d{0,10})"
```

**Heroku/Overview/50th Percentile Method Latency**
```
_sourceCategory={{Logsdatasource}}  "service="
| where _sourceName matches "{{log_drain}}"
| parse regex "method=(?<request_type>.*?(?= )).*host=(?<app_name>.*(?=.herokuapp.com)).*service=(?<service>.*?(?= ))"
| where app_name matches "{{application_name}}"
| parse regex field=service "(?<service_time>\d{0,10})"
```

**Heroku/Overview/50th Percentile Path Latency**
```
_sourceCategory={{Logsdatasource}}  "service="
| where _sourceName matches "{{log_drain}}"
| parse regex "path=\"(?<request_path>.*?(?=\")).*host=(?<app_name>.*(?=.herokuapp.com)).*service=(?<service>.*?(?= ))"
| where app_name matches "{{application_name}}"
| parse regex field=service "(?<service_time>\d{0,10})"
```

**Heroku/Overview/App Error Rate**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "host (?<host>.*?(?= ))" 
```

**Heroku/Overview/Average Connection Time**
```
_sourceCategory={{Logsdatasource}}  "connect="
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*connect=(?<connect>.*?(?= ))"
| where app_name matches "{{application_name}}"
| parse regex field=connect "(?<connect_time>\d{0,10})"
```

**Heroku/Overview/Average Connection Time Trend**
```
_sourceCategory={{Logsdatasource}}  "connect="
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*connect=(?<connect>.*?(?= ))"
| where app_name matches "{{application_name}}"
| parse regex field=connect "(?<connect_time>\d{0,10})"
```

**Heroku/Overview/Average Latency**
```
_sourceCategory={{Logsdatasource}}  "service="
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*service=(?<service>.*?(?= ))"
| where app_name matches "{{application_name}}"
| parse regex field=service "(?<service_time>\d{0,10})"
```

**Heroku/Overview/Average Latency Trend**
```
_sourceCategory={{Logsdatasource}}  "service="
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*service=(?<service>.*?(?= ))"
| where app_name matches "{{application_name}}"
| parse regex field=service "(?<service_time>\d{0,10})"
```

**Heroku/Overview/Average Method Latency**
```
_sourceCategory={{Logsdatasource}}  "service="
| where _sourceName matches "{{log_drain}}"
| parse regex "method=(?<request_type>.*?(?= )).*host=(?<app_name>.*(?=.herokuapp.com)).*service=(?<service>.*?(?= ))"
| where app_name matches "{{application_name}}"
| parse regex field=service "(?<service_time>\d{0,10})"
```

**Heroku/Overview/Average Path Latency**
```
_sourceCategory={{Logsdatasource}}  "service="
| where _sourceName matches "{{log_drain}}"
| parse regex "path=\"(?<request_path>.*?(?=\")).*host=(?<app_name>.*(?=.herokuapp.com)).*service=(?<service>.*?(?= ))"
| where app_name matches "{{application_name}}"
| parse regex field=service "(?<service_time>\d{0,10})"
```

**Heroku/Overview/Average Response Size**
```
_sourceCategory={{Logsdatasource}}  router
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*(?<dyno>(?<=dyno\=).*?(?= )).*(?<bytes>(?<=bytes\=).*?(?= ))"
```

**Heroku/Overview/Dyno Load Average(15 min)**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "load_avg_15m=(?<load_avg_15m>.*?(?=$))"
```

**Heroku/Overview/Dyno Memory(MB)**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_total=(?<memory_total>.*?(?=MB ))"
```

**Heroku/Overview/Failed Request Count**
```
_sourceCategory={{Logsdatasource}}  "service="
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*status=(?<status>.*?(?= ))"
```

**Heroku/Overview/Heroku Error Rate**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "host (?<host>.*?(?= ))" 
```

**Heroku/Overview/Max Connection Time Trend**
```
_sourceCategory={{Logsdatasource}}  "connect="
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*connect=(?<connect>.*?(?= ))"
| where app_name matches "{{application_name}}"
| parse regex field=connect "(?<connect_time>\d{0,10})"
```

**Heroku/Overview/Max Latency Trend**
```
_sourceCategory={{Logsdatasource}}  "service="
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*service=(?<service>.*?(?= ))"
| where app_name matches "{{application_name}}"
| parse regex field=service "(?<service_time>\d{0,10})"
```

**Heroku/Overview/Max Method Latency**
```
_sourceCategory={{Logsdatasource}}  "service="
| where _sourceName matches "{{log_drain}}"
| parse regex "method=(?<request_type>.*?(?= )).*host=(?<app_name>.*(?=.herokuapp.com)).*service=(?<service>.*?(?= ))"
| where app_name matches "{{application_name}}"
| parse regex field=service "(?<service_time>\d{0,10})"
```

**Heroku/Overview/Max Path Latency**
```
_sourceCategory={{Logsdatasource}}  "service="
| where _sourceName matches "{{log_drain}}"
| parse regex "path=\"(?<request_path>.*?(?=\")).*host=(?<app_name>.*(?=.herokuapp.com)).*service=(?<service>.*?(?= ))"
| where app_name matches "{{application_name}}"
| parse regex field=service "(?<service_time>\d{0,10})"
```

**Heroku/Overview/MBs Transferred by Dyno Over Time**
```
_sourceCategory={{Logsdatasource}}  router
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*dyno=(?<dyno>.*?(?= )).*bytes=(?<bytes>.*?(?= ))"
```

**Heroku/Overview/Request-Response Trend**
```
_sourceCategory={{Logsdatasource}} 
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*connect=(?<connect>.*?(?= )).*service=(?<service>.*?(?= ))"
| where app_name matches "{{application_name}}"
| parse regex field=service "(?<service_time_ms>\d{0,10})"
| parse regex field=connect "(?<connect_time_ms>\d{0,10})"
```

**Heroku/Overview/Response Throughput by Status Code**
```
_sourceCategory={{Logsdatasource}}  router
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*(?<dyno>(?<=dyno\=).*?(?= )).*(?<status_code>(?<=status\=).*?(?= ))"
```

**Heroku/Overview/Status code count by dyno**
```
_sourceCategory={{Logsdatasource}}  router
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*(?<dyno>(?<=dyno\=).*?(?= )).*(?<status_code>(?<=status\=).*?(?= ))"
```

**Heroku/Overview/Top 10 Failed Requests**
```
_sourceCategory={{Logsdatasource}}  "service="
| where _sourceName matches "{{log_drain}}"
| parse regex "path=\"(?<request_path>.*?(?=\")).*host=(?<app_name>.*(?=.herokuapp.com)).*status=(?<status>.*?(?= ))"
```

**Heroku/Overview/Top 10 Slowest Requests**
```
_sourceCategory={{Logsdatasource}}  "connect="
| where _sourceName matches "{{log_drain}}"
| parse regex "path=\"(?<request_path>.*?(?=\")).*host=(?<app_name>.*(?=.herokuapp.com)).*connect=(?<connect>.*?(?= ))"
| where app_name matches "{{application_name}}"
| parse regex field=connect "(?<connect_time>(?<=^).*(?=ms))"
```

**Heroku/Overview/Total Errors by Component**
```
_sourceCategory={{Logsdatasource}}  (error or H81 or H27 or H28 or H82 or H83 or L11)
| where _sourceName matches "{{log_drain}}"
| parse regex "host (?<host>.*?(?= )) (?<component>.*?(?= ))" 
```

**Heroku/Overview/Total Errors by Host**
```
_sourceCategory={{Logsdatasource}}  (error or H81 or H27 or H28 or H82 or H83 or L11)
| where _sourceName matches "{{log_drain}}"
| parse regex "host (?<host>.*?(?= ))" 
```

**Heroku/Overview/Total Request Count**
```
_sourceCategory={{Logsdatasource}}  "connect="
| where _sourceName matches "{{log_drain}}"
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*request_id=(?<request_id>.*?(?= ))"
```


