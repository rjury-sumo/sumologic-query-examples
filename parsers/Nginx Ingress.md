# Parsers For Nginx Ingress

**Nginx Ingress/All Error Messages/Nginx Ingress - All Error Messages**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm=* namespace=* deployment=* pod=*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "\s\[(?<Log_Level>\S+)\]\s\d+#\d+:\s(?:\*\d+\s|)(?<Message>[A-Za-z][^,]+)(?:,|$)"
| parse field=nginx_log_message "client: *, server: *, request: \"* * HTTP/1.1\", host: \"*\"" as Client_Ip, Server, Method, URL, Host nodrop
```

**Nginx Ingress/All HTTP Response codes with their count/Nginx Ingress - All HTTP Response codes with their count**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm=* namespace=* deployment=* pod=*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Client Errors (4xx response codes) per day/Nginx Ingress - Client Errors (4xx response codes) per day**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm=* namespace=* deployment=* pod=*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Error Logs/All Errors**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "\s\[(?<Log_Level>\S+)\]\s\d+#\d+:\s(?:\*\d+\s|)(?<Message>[A-Za-z][^,]+)(?:,|$)"
| parse field=nginx_log_message "client: *, server: *, request: \"* * HTTP/1.1\", host: \"*\"" as Client_Ip, Server, Method, URL, Host nodrop
```

**Nginx Ingress/Error Logs/Client Locations with Critical Errors**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "\s\[(?<Log_Level>\S+)\]\s\d+#\d+:\s(?:\*\d+\s|)(?<Message>[A-Za-z][^,]+)(?:,|$)"
| parse field=nginx_log_message "client: *, server: *, request: \"* * HTTP/1.1\", host: \"*\"" as Client_Ip, Server, Method, URL, Host nodrop
```

**Nginx Ingress/Error Logs/Critical Messages**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "\s\[(?<Log_Level>\S+)\]\s\d+#\d+:\s(?:\*\d+\s|)(?<Message>[A-Za-z][^,]+)(?:,|$)"
| parse field=nginx_log_message "client: *, server: *, request: \"* * HTTP/1.1\", host: \"*\"" as Client_Ip, Server, Method, URL, Host nodrop
```

**Nginx Ingress/Error Logs/Log Level - One Day Time Comparison**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "\s\[(?<Log_Level>\S+)\]\s\d+#\d+:\s(?:\*\d+\s|)(?<Message>[A-Za-z][^,]+)(?:,|$)"
| parse field=nginx_log_message "client: *, server: *, request: \"* * HTTP/1.1\", host: \"*\"" as Client_Ip, Server, Method, URL, Host nodrop
```

**Nginx Ingress/Error Logs/Messages by Log Level - Over Time**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "\s\[(?<Log_Level>\S+)\]\s\d+#\d+:\s(?:\*\d+\s|)(?<Message>[A-Za-z][^,]+)(?:,|$)"
| parse field=nginx_log_message "client: *, server: *, request: \"* * HTTP/1.1\", host: \"*\"" as Client_Ip, Server, Method, URL, Host nodrop
```

**Nginx Ingress/Error Logs/Number of Requests by Client - One Day Time Comparison**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "\s\[(?<Log_Level>\S+)\]\s\d+#\d+:\s(?:\*\d+\s|)(?<Message>[A-Za-z][^,]+)(?:,|$)"
| parse field=nginx_log_message "client: *, server: *, request: \"* * HTTP/1.1\", host: \"*\"" as Client_Ip, Server, Method, URL, Host nodrop
```

**Nginx Ingress/Error Logs/Top 5 Clients causing Errors**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "\s\[(?<Log_Level>\S+)\]\s\d+#\d+:\s(?:\*\d+\s|)(?<Message>[A-Za-z][^,]+)(?:,|$)"
| parse field=nginx_log_message "client: *, server: *, request: \"* * HTTP/1.1\", host: \"*\"" as Client_Ip, Server, Method, URL, Host nodrop
```

**Nginx Ingress/Error Logs/Top 5 Servers with Errors**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "\s\[(?<Log_Level>\S+)\]\s\d+#\d+:\s(?:\*\d+\s|)(?<Message>[A-Za-z][^,]+)(?:,|$)"
| parse field=nginx_log_message "client: *, server: *, request: \"* * HTTP/1.1\", host: \"*\"" as Client_Ip, Server, Method, URL, Host nodrop
```

**Nginx Ingress/Error Logs/Top 5 URLs with Errors**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "\s\[(?<Log_Level>\S+)\]\s\d+#\d+:\s(?:\*\d+\s|)(?<Message>[A-Za-z][^,]+)(?:,|$)"
| parse field=nginx_log_message "client: *, server: *, request: \"* * HTTP/1.1\", host: \"*\"" as Client_Ip, Server, Method, URL, Host nodrop
```

**Nginx Ingress/HTTP status code summary over time/Nginx Ingress - HTTP status code summary over time**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm=* namespace=* deployment=* pod=*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Outlier Analysis/Bytes Served**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Outlier Analysis/Client Errors**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Outlier Analysis/Number of Visitors**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Outlier Analysis/Server Errors**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Overview/4xx Codes by Server**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Overview/5xx Codes by Server**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Overview/Client OS Platforms**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Overview/Critical Error Messages**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "\s\[(?<Log_Level>\S+)\]\s\d+#\d+:\s(?:\*\d+\s|)(?<Message>[A-Za-z][^,]+)(?:,|$)"
| parse field=nginx_log_message "client: *, server: *, request: \"* * HTTP/1.1\", host: \"*\"" as Client_Ip, Server, Method, URL, Host nodrop
```

**Nginx Ingress/Overview/Responses Over Time**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Overview/Top 10 URLs with 4xx Errors**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Overview/Top 10 URLs with 5xx Errors**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Overview/Top 5 Critical Messages**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "\s\[(?<Log_Level>\S+)\]\s\d+#\d+:\s(?:\*\d+\s|)(?<Message>[A-Za-z][^,]+)(?:,|$)"
| parse field=nginx_log_message "client: *, server: *, request: \"* * HTTP/1.1\", host: \"*\"" as Client_Ip, Server, Method, URL, Host nodrop
```

**Nginx Ingress/Overview/Visitor Locations**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Threat Intel/Highly Malicious Threat Table**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| lookup type, actor, raw, threatlevel as Malicious_Confidence from sumo://threat/cs on threat=Client_Ip 
| where  type="ip_address" and !isNull(Malicious_Confidence)
| json field=raw "labels[*].name" as label_name 
```

**Nginx Ingress/Threat Intel/Threat Breakdown by Sources**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| count as ip_count by Client_Ip, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=Client_Ip 
| json field=raw "labels[*].name" as label_name 
```

**Nginx Ingress/Threat Intel/Threat by Actors**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| count as ip_count by Client_Ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=Client_Ip 
| json field=raw "labels[*].name" as label_name 
```

**Nginx Ingress/Threat Intel/Threat by Malicious Confidence**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| count as ip_count by Client_Ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=Client_Ip 
| json field=raw "labels[*].name" as label_name 
```

**Nginx Ingress/Threat Intel/Threat Count**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| count as ip_count by Client_Ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=Client_Ip 
| json field=raw "labels[*].name" as label_name 
```

**Nginx Ingress/Threat Intel/Threat Locations**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| count as ip_count by Client_Ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=Client_Ip 
| json field=raw "labels[*].name" as label_name 
```

**Nginx Ingress/Threat Intel/Threat Table**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=Client_Ip 
| where  type="ip_address" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Nginx Ingress/Threat Intel/Top 5 Highly Malicious URLs**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Top 404 referrers/Nginx Ingress - Top 404 referrers**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm=* namespace=* deployment=* pod=* 404
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Top browsers/Nginx Ingress - Top browsers**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm=* namespace=* deployment=* pod=*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Top clients causing errors/Nginx Ingress - Top clients causing errors**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm=* namespace=* deployment=* pod=*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Top clients/Nginx Ingress - Top clients**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm=* namespace=* deployment=* pod=*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Top URLs by bytes served/Nginx Ingress - Top URLs by bytes served**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm=* namespace=* deployment=* pod=*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Traffic volume and bytes served per day/Nginx Ingress - Traffic volume and bytes served per day**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm=* namespace=* deployment=* pod=*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*" 
```

**Nginx Ingress/Trends/Number of Hits by Server - One Day Time Comparison**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Trends/Responses Over Time**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Trends/Traffic Distribution by Server**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Trends/Traffic Volume and Bytes Served**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Trends/Visitor Locations (Top 5 Countries) - Today Vs. Yesterday**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Visitor Access Types/Browsers and Operating Systems**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Visitor Access Types/Desktop OS Version**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}} ("macintosh" OR "mac os" OR "windows" OR "i686" or "PC" or ("Linux" AND !android))
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| parse regex field=user_agent "(?<os>Mac OS) (?<version>[^;\)]+?)(?:;|\))" nodrop 
| parse regex field=user_agent "(?<os>Windows)(?: NT | )(?<version>[\d.]+)" nodrop 
| parse regex field=user_agent "(?<os>Linux) (?<version>\S+?)(?:\)|;)" nodrop 
```

**Nginx Ingress/Visitor Access Types/Popular Mobile Device Versions**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}} (iphone or ipad or android or samsung) 
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| parse regex field=nginx_log_message "\((?<device>iPhone).+? CPU iPhone OS (?<version>.+?) like Mac"  nodrop 
| parse regex field=nginx_log_message "\((?<device>iPad).+? CPU OS (?<version>.+?) like Mac"  nodrop 
| parse regex field=nginx_log_message " (?<device>Android) (?<version>[\d\.]+)" nodrop 
| parse regex field=nginx_log_message "(?<device>SAMSUNG).+?(?<version>(?:GT-\w+|SGH-\w+|SPH-\w+|SCH-\w+))" 
```

**Nginx Ingress/Visitor Access Types/Unique Visitors**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Visitor Access Types/Visitor Platforms**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Visitor Access Types/Visitors Platforms Over Time**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Visitor Locations/United States**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Visitor Locations/Visits by Country Over Time**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Visitor Locations/Visits by US Regions Over Time**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Visitor Locations/WorldWide**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Visitor Traffic Insight/Bytes Served**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Visitor Traffic Insight/HTTP Methods**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Visitor Traffic Insight/Media Types Served**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| parse regex field=url "^/[^\?]+?\.(?<type>[a-zA-Z]{2,4})$" 
| parse regex field=url "/\S+?(?<email_prefix>(?:%40|@)[^.]+?)\.\w+" nodrop 
```

**Nginx Ingress/Visitor Traffic Insight/Top 10 Search Terms from Popular Search Engines**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}} (google OR bing OR aol OR ask OR yahoo) ("p=" OR "q=" OR "wd=" OR "searchfor=")
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| parse regex field=referrer "(?:\?|&)(?:p|q|wd|searchfor)=(?<search_term>[^=]+?)(?:&|$)" nodrop 
```

**Nginx Ingress/Visitor Traffic Insight/Top 5 Referrers**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Visitor Traffic Insight/Top 5 URLs**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Web Server Operations/Client Locations 4xx Errors**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Web Server Operations/Error Responses by Server**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Web Server Operations/Non 200 Response Status Codes**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Web Server Operations/Server Errors Over Time**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Web Server Operations/Top 10 Bots Observed**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}} ("Googlebot" OR "AskJeeves" OR "Digger" OR "Lycos"
OR "msnbot" OR "Inktomi Slurp" OR "Yahoo" OR "Nutch" OR "bingbot" OR
"BingPreview" OR "Mediapartners-Google" OR "proximic" OR "AhrefsBot" OR
"AdsBot-Google" OR "Ezooms" OR "AddThis.com" OR "facebookexternalhit" OR
"MetaURI" OR "Feedfetcher-Google" OR "PaperLiBot" OR "TweetmemeBot" OR
"Sogou web spider" OR "GoogleProducer" OR "RockmeltEmbedder" OR
"ShareThisFetcher" OR "YandexBot" OR "rogerbot-crawler" OR "ShowyouBot" OR "Baiduspider" OR "Sosospider" OR "Exabot")
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| parse regex field=user_agent "(?<bot_name>facebook)externalhit?\W+" nodrop
| parse regex field=user_agent "Feedfetcher-(?<bot_name>Google?)\S+" nodrop
| parse regex field=user_agent "(?<bot_name>PaperLiBot?)/.+" nodrop
| parse regex field=user_agent "(?<bot_name>TweetmemeBot?)/.+" nodrop
| parse regex field=user_agent "(?<bot_name>msn?)bot\W" nodrop
| parse regex field=user_agent "(?<bot_name>Nutch?)-.+" nodrop
| parse regex field=user_agent "(?<bot_name>Google?)bot\W" nodrop
| parse regex field=user_agent "Feedfetcher-(?<bot_name>Google?)\W" nodrop
| parse regex field=user_agent "(?<bot_name>Yahoo?)!\s+Slurp[;/].+" nodrop
| parse regex field=user_agent "(?<bot_name>bing?)bot\W" nodrop
| parse regex field=user_agent "(?<bot_name>Bing?)Preview\W" nodrop
| parse regex field=user_agent "(?<bot_name>Sogou?)\s+web\s" nodrop
| parse regex field=user_agent "(?<bot_name>Yandex?)Bot\W" nodrop
| parse regex field=user_agent "(?<bot_name>rogerbot?)\W" nodrop
| parse regex field=user_agent "(?<bot_name>AddThis\.com?)\s+robot\s+" nodrop
| parse regex field=user_agent "(?<bot_name>ShareThis?)Fetcher/.+" nodrop
| parse regex field=user_agent "(?<bot_name>Ahrefs?)Bot/.+" nodrop
| parse regex field=user_agent "(?<bot_name>MetaURI?)\s+API/.+" nodrop
| parse regex field=user_agent "(?<bot_name>Showyou?)Bot\s+" nodrop
| parse regex field=user_agent "(?<bot_name>Google?)Producer;" nodrop
| parse regex field=user_agent "(?<bot_name>Ezooms?)\W" nodrop
| parse regex field=user_agent "(?<bot_name>Rockmelt?)Embedder\s+" nodrop 
| parse regex field=user_agent "(?<bot_name>Sosospider?)\W" nodrop 
| parse regex field=user_agent "(?<bot_name>Baidu?)spider" nodrop
| parse regex field=user_agent "(?<bot_name>Exabot?)\W"
```

**Nginx Ingress/Web Server Operations/Top 5 Clients Causing 4xx Errors**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Nginx Ingress/Web Server Operations/Top 5 URIs causing 404 Responses**
```
_sourceCategory = Labs/nginx* webserver_system=nginx_ingress webserver_farm={{webserver_farm}} namespace={{namespace}} deployment={{deployment}} pod={{pod}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as nginx_log_message
| parse regex field=nginx_log_message "(?<Client_Ip>(?:[0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=nginx_log_message "(?<Method>[A-Z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```


