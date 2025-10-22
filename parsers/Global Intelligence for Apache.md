# Parsers For Global Intelligence for Apache

**Global Intelligence for Apache/GI Apache 01 Load Signals and Contributing Factors/Bot Connections Percent Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_bots_conn_per_hr
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| where _sourceHost matches "{{Server}}"
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
| parse regex field=user_agent "(?<bot_name>Exabot?)\W" nodrop
```

**Global Intelligence for Apache/GI Apache 01 Load Signals and Contributing Factors/Bot Connections Percent: Daily Distance From Benchmark**
```
// id=@distance_bots_conn_per_hr
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| where _sourceHost matches "{{Server}}"
| _sourceHost as server
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
| parse regex field=user_agent "(?<bot_name>Exabot?)\W" nodrop
```

**Global Intelligence for Apache/GI Apache 01 Load Signals and Contributing Factors/Connections Per Second: Daily Distance From Benchmark**
```
// id=@distance_unique_connections_per_sec
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 01 Load Signals and Contributing Factors/Connections Per Seconds Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_unique_connections_per_sec
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 01 Load Signals and Contributing Factors/HTTP DELETE Share of Requests Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_http_methods_per_req_del
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 01 Load Signals and Contributing Factors/HTTP DELETE Share of Requests: Daily Distance From Benchmark**
```
// id=@distance_http_methods_per_req_del
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 01 Load Signals and Contributing Factors/HTTP POST Share of Requests Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_http_methods_per_req_post
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 01 Load Signals and Contributing Factors/HTTP POST Share of Requests: Daily Distance From Benchmark**
```
// id=@distance_http_methods_per_req_post
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 01 Load Signals and Contributing Factors/Requests Per Connection Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_req_per_connection_per_hour
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 01 Load Signals and Contributing Factors/Requests Per Connection: Daily Distance From Benchmark**
```
// id=@distance_req_per_connection_per_hour
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 01 Load Signals and Contributing Factors/Requests Per Second Daily AVERAGE:  My Server v  Benchmark**
```
// id=@benchmark_requests_per_hr
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 01 Load Signals and Contributing Factors/Requests Per Second: Daily Distance From Benchmark**
```
// id=@distance_requests_per_hr
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 02 Throughput Signals and Contributing Factors/GB Per Second Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_gBytes_by_sec
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 02 Throughput Signals and Contributing Factors/GB Per Second: Daily Distance From Benchmark**
```
// id=@distance_gBytes_by_sec
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 02 Throughput Signals and Contributing Factors/GB Served Per Request Daily AVERAGE: My Server v  Benchmark**
```
// id=@benchmark_gBytes_by_requests_per_hr
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 02 Throughput Signals and Contributing Factors/GB Served Per Request: Daily Distance From Benchmark**
```
// id=@distance_gBytes_by_requests_per_hr
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 02 Throughput Signals and Contributing Factors/Requests Per Second Daily AVERAGE:  My Server v  Benchmark**
```
// id=@benchmark_requests_per_hr
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 02 Throughput Signals and Contributing Factors/Requests Per Second: Daily Distance From Benchmark**
```
// id=@distance_requests_per_hr
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 02 Throughput Signals and Contributing Factors/Server Errors Per Request Daily AVERAGE: My Server v  Benchmark**
```
// id=@benchmark_response_types_per_req_server
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 02 Throughput Signals and Contributing Factors/Server Errors Per Request: Daily Distance From Benchmark**
```
// id=@distance_response_types_per_req_server
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 03 Errors and Contributing Factors/Client Errors Per Request Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_response_types_per_req_client
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 03 Errors and Contributing Factors/Client Errors Per Request: Daily Distance From Benchmark**
```
// id=@distance_response_types_per_req_client
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 03 Errors and Contributing Factors/Connections Per Second Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_unique_connections_per_sec
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 03 Errors and Contributing Factors/Connections Per Second: Daily Distance From Benchmark**
```
// id=@distance_unique_connections_per_sec
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 03 Errors and Contributing Factors/GB Served Per Request Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_gBytes_by_requests_per_hr
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 03 Errors and Contributing Factors/GB Served per Request: Daily Distance From Benchmark**
```
// id=@distance_gBytes_by_requests_per_hr
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 03 Errors and Contributing Factors/Requests Per Second Daily AVERAGE:  My Server v  Benchmark**
```
// id=@benchmark_requests_per_hr
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 03 Errors and Contributing Factors/Requests Per Second: Daily Distance From Benchmark**
```
// id=@distance_requests_per_hr
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 03 Errors and Contributing Factors/Server Errors Per Request Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_response_types_per_req_server
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 03 Errors and Contributing Factors/Server Errors Per Request: Daily Distance From Benchmark**
```
// id=@distance_response_types_per_req_server
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 04 Latency Signals and Contributing Factors/HTTP DELETE Share of Requests Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_http_methods_per_req_del
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 04 Latency Signals and Contributing Factors/HTTP DELETE Share of Requests: Daily Distance From Benchmark**
```
// id=@distance_http_methods_per_req_del
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 04 Latency Signals and Contributing Factors/HTTP POST Share of Requests Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_http_methods_per_req_post
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 04 Latency Signals and Contributing Factors/HTTP POST Share of Requests: Daily Distance From Benchmark**
```
// id=@distance_http_methods_per_req_post
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 04 Latency Signals and Contributing Factors/Latency per Request Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_latency
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| parse regex " (?<seconds>\d+)/(?<microseconds>\d+)$"
```

**Global Intelligence for Apache/GI Apache 04 Latency Signals and Contributing Factors/Latency per Request: Daily Distance from Benchmark**
```
// id=@distance_latency
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| parse regex " (?<seconds>\d+)/(?<microseconds>\d+)$"
```

**Global Intelligence for Apache/GI Apache 04 Latency Signals and Contributing Factors/Requests Per Second Daily AVERAGE:  My Server v  Benchmark**
```
// id=@benchmark_requests_per_hr
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 04 Latency Signals and Contributing Factors/Requests Per Second: Daily Distance From Benchmark**
```
// id=@distance_requests_per_hr
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 05 Visitor Benchmarks/Desktop OS Version: My Company v Benchmark**
```
// id=@user_desktop_os_version
_sourceCategory = Labs/Apache*
("macintosh" OR "mac os" OR "windows" OR "i686" or "PC" or ("Linux" AND !android))
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| where _sourceHost matches "{{Server}}"
| parse regex field=user_agent "(?<os>Mac OS) (?<version>[^;\)]+?)(?:;|\))" nodrop
| parse regex field=user_agent "(?<os>Windows)(?: NT | )(?<version>[\d.]+)" nodrop
| parse regex field=user_agent "(?<os>Linux) (?<version>\S+?)(?:\)|;)" nodrop
| where os != ""
| replace(version, "_", ".") as version
| parse regex field=version "(?<version>[A-Za-z /]*\d{1,3}\.\d{1,3})" nodrop
```

**Global Intelligence for Apache/GI Apache 05 Visitor Benchmarks/Media Types Served: My Company v Benchmark**
```
// id=@user_media_types_served
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| where _sourceHost matches "{{Server}}"
| parse regex field=url "^/[^\?]+?\.(?<type>[a-zA-Z]{2,4})$"
| parse regex field=url "/\S+?(?<email_prefix>(?:%40|@)[^.]+?)\.\w+" nodrop
```

**Global Intelligence for Apache/GI Apache 05 Visitor Benchmarks/My Company: Visitor Platforms Over Time**
```
// id=@user_visitors_platforms_over_time
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```

**Global Intelligence for Apache/GI Apache 05 Visitor Benchmarks/Popular Mobile Device Versions: My Company v Benchmark**
```
// id=@user_popular_mobile_device_versions
_sourceCategory = Labs/Apache*
(iphone or ipad or android or samsung)
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| where _sourceHost matches "{{Server}}"
| parse regex field=apache_log_message "\((?<device>iPhone).+? CPU iPhone OS (?<version>.+?) like Mac"  nodrop
| parse regex field=apache_log_message "\((?<device>iPad).+? CPU OS (?<version>.+?) like Mac"  nodrop
| parse regex field=apache_log_message " (?<device>Android) (?<version>[\d\.]+)" nodrop
| parse regex field=apache_log_message "(?<device>SAMSUNG).+?(?<version>(?:GT|SGH|SPH|SCH))" nodrop
| where device != ""
| replace(version, "_", ".") as version
| parse regex field=version "(?<version>\d{1,3}\.\d{1,3})"
```

**Global Intelligence for Apache/GI Apache 05 Visitor Benchmarks/Top 10 Bots Observed: My Company v Benchmark**
```
// id=@user_top10_bots_observed
_sourceCategory = Labs/Apache*
("Googlebot" OR "AskJeeves" OR "Digger" OR "Lycos"
OR "msnbot" OR "Inktomi Slurp" OR "Yahoo" OR "Nutch" OR "bingbot" OR
"BingPreview" OR "Mediapartners-Google" OR "proximic" OR "AhrefsBot" OR
"AdsBot-Google" OR "Ezooms" OR "AddThis.com" OR "facebookexternalhit" OR
"MetaURI" OR "Feedfetcher-Google" OR "PaperLiBot" OR "TweetmemeBot" OR
"Sogou web spider" OR "GoogleProducer" OR "RockmeltEmbedder" OR
"ShareThisFetcher" OR "YandexBot" OR "rogerbot-crawler" OR "ShowyouBot" OR "Baiduspider" OR "Sosospider" OR "Exabot")
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
| where _sourceHost matches "{{Server}}"
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
| parse regex field=user_agent "(?<bot_name>Rockmelt?)Embedder\s+" nodrop
| parse regex field=user_agent "(?<bot_name>Sosospider?)\W" nodrop
| parse regex field=user_agent "(?<bot_name>Baidu?)spider" nodrop
| parse regex field=user_agent "(?<bot_name>Exabot?)\W" nodrop
```

**Global Intelligence for Apache/GI Apache 05 Visitor Benchmarks/Visitor Platforms: My Company v Benchmark**
```
// id=@user_visitor_platforms
_sourceCategory = Labs/Apache*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as apache_log_message
| parse regex field=apache_log_message "^(?<Client_Ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
| parse regex field=apache_log_message "(?<Method>[A-Za-z]+)\s(?<URL>\S+)\sHTTP/[\d\.]+\"\s(?<Status_Code>\d+)\s(?<Size>[\d-]+)\s\"(?<Referrer>.*?)\"\s\"(?<User_Agent>.+?)\".*"
```


