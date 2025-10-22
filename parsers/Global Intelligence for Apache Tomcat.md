# Parsers For Global Intelligence for Apache Tomcat

**Global Intelligence for Apache Tomcat/GI Tomcat 01 Load Signals and Contributing Factors/Connections Per Second: Daily Distance From Benchmark**
```
// id=@distance_unique_connections_per_sec
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 01 Load Signals and Contributing Factors/Connections Per Seconds Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_unique_connections_per_sec
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 01 Load Signals and Contributing Factors/HTTP DELETE Share of Requests Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_http_methods_per_req_del
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 01 Load Signals and Contributing Factors/HTTP DELETE Share of Requests: Daily Distance From Benchmark**
```
// id=@distance_http_methods_per_req_del
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 01 Load Signals and Contributing Factors/HTTP POST Share of Requests Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_http_methods_per_req_post
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 01 Load Signals and Contributing Factors/HTTP POST Share of Requests: Daily Distance From Benchmark**
```
// id=@distance_http_methods_per_req_post
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 01 Load Signals and Contributing Factors/Requests Per Connection Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_req_per_connection_per_hour
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 01 Load Signals and Contributing Factors/Requests Per Connection: Daily Distance From Benchmark**
```
// id=@distance_req_per_connection_per_hour
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 01 Load Signals and Contributing Factors/Requests Per Second Daily AVERAGE:  My Server v  Benchmark**
```
// id=@benchmark_requests_per_hr
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 01 Load Signals and Contributing Factors/Requests Per Second: Daily Distance From Benchmark**
```
// id=@distance_requests_per_hr
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 02 Throughput Signals and Contributing Factors/GB Per Second Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_gBytes_by_sec
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 02 Throughput Signals and Contributing Factors/GB Per Second: Daily Distance From Benchmark**
```
// id=@distance_gBytes_by_sec
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 02 Throughput Signals and Contributing Factors/GB Served Per Request Daily AVERAGE: My Server v  Benchmark**
```
// id=@benchmark_gBytes_by_requests_per_hr
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 02 Throughput Signals and Contributing Factors/GB Served Per Request: Daily Distance From Benchmark**
```
// id=@distance_gBytes_by_requests_per_hr
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 02 Throughput Signals and Contributing Factors/Requests Per Second Daily AVERAGE:  My Server v  Benchmark**
```
// id=@benchmark_requests_per_hr
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 02 Throughput Signals and Contributing Factors/Requests Per Second: Daily Distance From Benchmark**
```
// id=@distance_requests_per_hr
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 02 Throughput Signals and Contributing Factors/Server Errors Per Request Daily AVERAGE: My Server v  Benchmark**
```
// id=@benchmark_response_types_per_req_server
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 02 Throughput Signals and Contributing Factors/Server Errors Per Request: Daily Distance From Benchmark**
```
// id=@distance_response_types_per_req_server
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 03 Errors and Contributing Factors/Client Errors Per Request Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_response_types_per_req_client
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 03 Errors and Contributing Factors/Client Errors Per Request: Daily Distance From Benchmark**
```
// id=@distance_response_types_per_req_client
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 03 Errors and Contributing Factors/Connections Per Second Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_unique_connections_per_sec
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 03 Errors and Contributing Factors/Connections Per Second: Daily Distance From Benchmark**
```
// id=@distance_unique_connections_per_sec
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 03 Errors and Contributing Factors/GB Served Per Request Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_gBytes_by_requests_per_hr
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 03 Errors and Contributing Factors/GB Served per Request: Daily Distance From Benchmark**
```
// id=@distance_gBytes_by_requests_per_hr
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 03 Errors and Contributing Factors/Requests Per Second Daily AVERAGE:  My Server v  Benchmark**
```
// id=@benchmark_requests_per_hr
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 03 Errors and Contributing Factors/Requests Per Second: Daily Distance From Benchmark**
```
// id=@distance_requests_per_hr
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 03 Errors and Contributing Factors/Server Errors Per Request Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_response_types_per_req_server
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 03 Errors and Contributing Factors/Server Errors Per Request: Daily Distance From Benchmark**
```
// id=@distance_response_types_per_req_server
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 04 Latency Signals and Contributing Factors/HTTP DELETE Share of Requests Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_http_methods_per_req_del
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 04 Latency Signals and Contributing Factors/HTTP DELETE Share of Requests: Daily Distance From Benchmark**
```
// id=@distance_http_methods_per_req_del
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 04 Latency Signals and Contributing Factors/HTTP POST Share of Requests Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_http_methods_per_req_post
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 04 Latency Signals and Contributing Factors/HTTP POST Share of Requests: Daily Distance From Benchmark**
```
// id=@distance_http_methods_per_req_post
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 04 Latency Signals and Contributing Factors/Latency per Request Daily AVERAGE:   My Server v  Benchmark**
```
// id=@benchmark_latency
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 04 Latency Signals and Contributing Factors/Latency per Request: Daily Distance from Benchmark**
```
// id=@distance_latency
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 04 Latency Signals and Contributing Factors/Requests Per Second Daily AVERAGE:  My Server v  Benchmark**
```
// id=@benchmark_requests_per_hr
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Global Intelligence for Apache Tomcat/GI Tomcat 04 Latency Signals and Contributing Factors/Requests Per Second: Daily Distance From Benchmark**
```
// id=@distance_requests_per_hr
_sourceCategory = Labs/Tomcat*
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as tomcat_log_message
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```


