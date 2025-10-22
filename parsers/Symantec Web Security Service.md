# Parsers For Symantec Web Security Service

**Symantec Web Security Service/Security Overview/Category Statistics**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Security Overview/Geo Location of Top Malicious Request**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
```

**Symantec Web Security Service/Security Overview/Geo Locations of Blocked Requests**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Security Overview/Malicious File Types (URI Extension)**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Security Overview/Malware Action on Identification**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Security Overview/Requests Over Time**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Security Overview/Security Concerns**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Security Overview/Top 10 Blocked Hosts**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Security Overview/Top 10 Blocked Traffic Verdicts**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Security Overview/Top 10 Blocked Users**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Security Overview/Total Requests**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Security Overview/Unique Malwares Detected**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Security Overview/Virus Count Over Time**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Web Activity Overview/Bandwidth Usages by User**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Web Activity Overview/Blocked Sites**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Web Activity Overview/Blocked User Agents**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Web Activity Overview/Blocked Websites by Category**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Web Activity Overview/Layer 4 Result Actions**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Web Activity Overview/Number of Blocked Sites Over Time**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Web Activity Overview/Received Over Time**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Web Activity Overview/Requests by User**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Web Activity Overview/Top 10 URI Extensions**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Web Activity Overview/User Request Processing Time in Milliseconds**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Web Activity Overview/Web Activities by User**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```

**Symantec Web Security Service/Web Activity Overview/Web Activity by Total Hits**
```
_sourceCategory={{Logsdatasource}}   
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
```


