# Parsers For Symantec Web Security Service

## Parser:
```
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
 `n```
### Use Cases:
Category Statistics, Geo Location of Top Malicious Request, Geo Locations of Blocked Requests, Malicious File Types (URI Extension), Malware Action on Identification, Security Concerns, Top 10 Blocked Hosts, Top 10 Blocked Traffic Verdicts, Top 10 Blocked Users, Total Requests



## Parser:
```
| parse "\"cs(User-Agent)\": \"*\"" as user_agent
| json "x-bluecoat-request-tenant-id", "date", "time", "time-taken", "x-virus-id", "cs-userdn", "s-action", "cs-host", "cs-uri-port", "cs-uri-path", "s-ip", "c-ip", "cs-bytes", "sc-bytes", "cs-categories", "sc-filter-result", "cs-uri-extension", "x-exception-id", "x-bluecoat-placeholder" as id, date, time, total_time, virus_id, user, s_action, host, cs_uri_port, cs_uri_path, s_ip, client_ip, bytes_sent, bytes_received, category, filter_result, uri_extension, exception_id, x_bluecoat_placeholder nodrop
| extract field=category "^\\?\"?(?<category>.*?)\\?\"?$"
 `n```
### Use Cases:
Bandwidth Usages by User, Blocked Sites, Blocked User Agents, Blocked Websites by Category, Bytes Sent/Received Over Time, Category Statistics, Geo Location of Top Malicious Request, Geo Locations of Blocked Requests, Layer 4 Result Actions, Malicious File Types (URI Extension), Malware Action on Identification, Number of Blocked Sites Over Time, Requests by User, Requests Over Time, Security Concerns, Top 10 Blocked Hosts, Top 10 Blocked Traffic Verdicts, Top 10 Blocked Users, Top 10 URI Extensions, Total Requests, Unique Malwares Detected, User Request Processing Time in Milliseconds, Virus Count Over Time, Web Activities by User, Web Activity by Total Hits


