# Parsers For Global Intelligence for Apache Tomcat

## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex field=tomcat_log_message "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex field=tomcat_log_message "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
 `n```
### Use Cases:
Client Errors Per Request Daily AVERAGE:   My Server v  Benchmark, Client Errors Per Request: Daily Distance From Benchmark, Connections Per Second Daily AVERAGE:   My Server v  Benchmark, Connections Per Second: Daily Distance From Benchmark, Connections Per Seconds Daily AVERAGE:   My Server v  Benchmark, GB Per Second Daily AVERAGE:   My Server v  Benchmark, GB Per Second: Daily Distance From Benchmark, GB Served Per Request Daily AVERAGE:   My Server v  Benchmark, GB Served Per Request Daily AVERAGE: My Server v  Benchmark, GB Served Per Request: Daily Distance From Benchmark, GB Served per Request: Daily Distance From Benchmark, HTTP DELETE Share of Requests Daily AVERAGE:   My Server v  Benchmark, HTTP DELETE Share of Requests: Daily Distance From Benchmark, HTTP POST Share of Requests Daily AVERAGE:   My Server v  Benchmark, HTTP POST Share of Requests: Daily Distance From Benchmark, Latency per Request Daily AVERAGE:   My Server v  Benchmark, Latency per Request: Daily Distance from Benchmark, Requests Per Connection Daily AVERAGE:   My Server v  Benchmark, Requests Per Connection: Daily Distance From Benchmark, Requests Per Second Daily AVERAGE:  My Server v  Benchmark, Requests Per Second: Daily Distance From Benchmark, Server Errors Per Request Daily AVERAGE:   My Server v  Benchmark, Server Errors Per Request Daily AVERAGE: My Server v  Benchmark, Server Errors Per Request: Daily Distance From Benchmark


