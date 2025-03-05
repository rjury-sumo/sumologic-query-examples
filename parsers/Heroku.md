# Parsers For Heroku

## Parser:
```
| parse " dyno=* " as dyno
```
### Use Cases:
App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dynos, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Process Exit Status by Code, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Total App Error Trend, Total App Errors



## Parser:
```
| parse regex "Deploy (?<commit_id>.*?(?= )) by user (?<user>.*)"
```
### Use Cases:
App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Release Trend by User



## Parser:
```
| parse regex "dyno=(?<dyno>.*?(?= )).*load_avg_15m=(?<load_avg_15m>.*?(?=$))"
```
### Use Cases:
App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Total App Error Trend, Total App Errors



## Parser:
```
| parse regex "dyno=(?<dyno>.*?(?= )).*load_avg_1m=(?<load_avg_1m>.*?(?= )).*load_avg_5m=(?<load_avg_5m>.*?(?= )).*load_avg_15m=(?<load_avg_15m>.*?(?=$))"
```
### Use Cases:
App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Overall Load Average 1m, Overall Load Average 5m, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Total App Error Trend, Total App Errors



## Parser:
```
| parse regex "dyno=(?<dyno>.*?(?= )).*load_avg_1m=(?<load_avg_1m>.*?(?= ))"
```
### Use Cases:
App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Load Average 1m by Dyno, Load Average 5m by Dyno, Overall Load Average 1m, Overall Load Average 5m, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Total App Error Trend, Total App Errors



## Parser:
```
| parse regex "dyno=(?<dyno>.*?(?= )).*load_avg_5m=(?<load_avg_5m>.*?(?= ))"
```
### Use Cases:
App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Load Average 1m by Dyno, Load Average 5m by Dyno, Overall Load Average 1m, Overall Load Average 5m, Top 25 Load Average 5m by Dyno, Total App Error Trend, Total App Errors



## Parser:
```
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_cache=(?<memory_cache>.*?(?=MB ))"
```
### Use Cases:
App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Disk Cache Memory, Average Disk Cache Memory(MB) Over Time by Dyno, Average Memory Quota, Average Memory Quota(MB) Over Time by Dyno, Average Memory Total(MB) by Dyno, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Swap Memory, Average Swap Memory(MB) Over Time by Dyno, Average Total Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dynos, Error Locations, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Disk Cache Memory(MB) by Dyno, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_pgpgin=(?<memory_pgpgin>.*?(?=pages ))"
```
### Use Cases:
App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Memory Quota, Average Resident Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dynos, Error Locations, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Total App Error Trend, Total App Errors, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_pgpgout=(?<memory_pgpgout>.*?(?=pages ))"
```
### Use Cases:
App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Disk Cache Memory, Average Memory Quota, Average Memory Total(MB) by Dyno, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Swap Memory(MB) Over Time by Dyno, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dynos, Error Locations, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_quota=(?<memory_quota>.*?(?=MB))"
```
### Use Cases:
App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Disk Cache Memory, Average Memory Quota, Average Memory Quota(MB) Over Time by Dyno, Average Memory Total(MB) by Dyno, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Swap Memory, Average Swap Memory(MB) Over Time by Dyno, Average Total Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dynos, Error Locations, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_rss=(?<memory_rss>.*?(?=MB ))"
```
### Use Cases:
App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Disk Cache Memory, Average Memory Quota, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dynos, Error Locations, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_rss=(?<memory_rss>.*?(?=MB ))"
| parse "memory_rss=*MB" as memory_rss
```
### Use Cases:
App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Resident Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dynos, Error Locations, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Process Exit Status by Code, Request Timeout Errors, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Total App Error Trend, Total App Errors, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_swap=(?<memory_swap>.*?(?=MB ))"
```
### Use Cases:
App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Disk Cache Memory, Average Memory Quota, Average Memory Total(MB) by Dyno, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Swap Memory, Average Swap Memory(MB) Over Time by Dyno, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dynos, Error Locations, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_total=(?<memory_total>.*?(?=MB )).*memory_rss=(?<memory_rss>.*?(?=MB )).*memory_cache=(?<memory_cache>.*?(?=MB )).*memory_swap=(?<memory_swap>.*?(?=MB ))"
```
### Use Cases:
App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Memory Quota, Average Resident Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dynos, Error Locations, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Process Exit Status by Code, Request Timeout Errors, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Total App Error Trend, Total App Errors, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "dyno=(?<dyno>.*?(?= )).*memory_total=(?<memory_total>.*?(?=MB ))"
```
### Use Cases:
50th Percentile Latency Trend, 50th Percentile Path Latency, App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Connection Time, Average Disk Cache Memory, Average Disk Cache Memory(MB) Over Time by Dyno, Average Latency Trend, Average Memory Quota, Average Memory Quota(MB) Over Time by Dyno, Average Memory Total(MB) by Dyno, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Response Size, Average Swap Memory, Average Swap Memory(MB) Over Time by Dyno, Average Total Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dyno Memory(MB), Dynos, Error Locations, Failed Request Count, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Max Connection Time Trend, Max Latency Trend, Max Method Latency, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Disk Cache Memory(MB) by Dyno, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "host (?<host>.*?(?= )) (?<component>.*?(?= )) - (?<error_message>.*)" 
```
### Use Cases:
App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Total App Error Trend, Total App Errors



## Parser:
```
| parse regex "host (?<host>.*?(?= )) (?<component>.*?(?= )) - (?<error_message>.*)" 
| parse regex field=error_message "at=(?<log_level>.*(?=)).code=(?<error_code>.*?(?= )).desc=\"(?<error_description>.*?(?=\"))..method=(?<request_type>.*?(?= )).path=\"(?<request_path>.*?(?=\"))..host=(?<app_name>.*(?=.herokuapp.com)).*request_id=(?<request_id>.*?(?= )).fwd=\"(?<ip_address>.*(?=\")).*dyno=(?<dyno>.*?(?= )).*connect=(?<connect>.*?(?= )).*service=(?<service>.*?(?= )).*status=(?<status>.*?(?= )).*bytes=(?<bytes>.*?(?= )).*protocol=(?<protocol>.*?(?=$))" nodrop
```
### Use Cases:
App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dynos, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Process Exit Status by Code, Request Timeout Errors, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Total App Error Trend, Total App Errors, Zero Dyno Errors



## Parser:
```
| parse regex "host (?<host>.*?(?= )) (?<component>.*?(?= )) - (?<error_message>.*)" 
| parse regex field=error_message "at=(?<log_level>.*(?=)).code=(?<error_code>.*?(?= )).desc=\"(?<error_description>.*?(?=\"))..method=(?<request_type>.*?(?= )).path=\"(?<request_path>.*?(?=\")).*host=(?<app_name>.*(?=.herokuapp.com)).*request_id=(?<request_id>.*?(?= )).fwd=\"(?<ip_address>.*(?=\")).*dyno=(?<dyno>.*?(?= )).*connect=(?<connect>.*?(?= )).*service=(?<service>.*?(?= )).*status=(?<status>.*?(?= )).*bytes=(?<bytes>.*?(?= )).*protocol=(?<protocol>.*?(?=$))" nodrop
```
### Use Cases:
App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dynos, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Process Exit Status by Code, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Total App Error Trend, Total App Errors, Zero Dyno Errors



## Parser:
```
| parse regex "host (?<host>.*?(?= )) (?<component>.*?(?= )) - (?<error_message>.*)" 
| parse regex field=error_message "host=(?<app_name>.*(?=.herokuapp.com)).*fwd=\"(?<ip_address>.*(?=\"))" nodrop
| parse regex field=ip_address "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" multi
```
### Use Cases:
App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dynos, Error Locations, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Process Exit Status by Code, Request Timeout Errors, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Total App Error Trend, Total App Errors, Zero Dyno Errors



## Parser:
```
| parse regex "host (?<host>.*?(?= )) (?<component>.*?(?= )) - (?<error_message>.*)" 
| parse regex field=error_message "host=(?<app_name>.*(?=.herokuapp.com))" nodrop
```
### Use Cases:
App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dynos, Error Locations, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Process Exit Status by Code, Request Timeout Errors, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Total App Error Trend, Total App Errors, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "host (?<host>.*?(?= )) (?<component>.*?(?= ))" 
```
### Use Cases:
50th Percentile Connection Time Trend, 50th Percentile Latency Trend, 50th Percentile Method Latency, 50th Percentile Path Latency, App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Connection Time, Average Connection Time Trend, Average Disk Cache Memory, Average Disk Cache Memory(MB) Over Time by Dyno, Average Latency Trend, Average Memory Quota, Average Memory Quota(MB) Over Time by Dyno, Average Memory Total(MB) by Dyno, Average Path Latency, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Response Size, Average Swap Memory, Average Swap Memory(MB) Over Time by Dyno, Average Total Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dyno Load Average(15 min), Dyno Memory(MB), Dynos, Error Locations, Failed Request Count, Heroku Error Rate, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Max Connection Time Trend, Max Latency Trend, Max Method Latency, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Response Throughput by Status Code, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 10 Slowest Requests, Top 25 Disk Cache Memory(MB) by Dyno, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Errors by Component, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "host (?<host>.*?(?= ))" 
```
### Use Cases:
50th Percentile Connection Time Trend, 50th Percentile Latency Trend, 50th Percentile Method Latency, 50th Percentile Path Latency, App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Rate, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Connection Time, Average Connection Time Trend, Average Disk Cache Memory, Average Disk Cache Memory(MB) Over Time by Dyno, Average Latency, Average Latency Trend, Average Memory Quota, Average Memory Quota(MB) Over Time by Dyno, Average Memory Total(MB) by Dyno, Average Method Latency, Average Path Latency, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Response Size, Average Swap Memory, Average Swap Memory(MB) Over Time by Dyno, Average Total Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dyno Load Average(15 min), Dyno Memory(MB), Dynos, Error Locations, Failed Request Count, Heroku Error Rate, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Max Connection Time Trend, Max Latency Trend, Max Method Latency, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Response Throughput by Status Code, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 10 Failed Requests, Top 10 Slowest Requests, Top 25 Disk Cache Memory(MB) by Dyno, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Errors by Component, Total Errors by Host, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*(?<dyno>(?<=dyno\=).*?(?= )).*(?<bytes>(?<=bytes\=).*?(?= ))"
```
### Use Cases:
50th Percentile Latency Trend, 50th Percentile Path Latency, App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Connection Time, Average Disk Cache Memory, Average Disk Cache Memory(MB) Over Time by Dyno, Average Latency Trend, Average Memory Quota, Average Memory Quota(MB) Over Time by Dyno, Average Memory Total(MB) by Dyno, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Response Size, Average Swap Memory, Average Swap Memory(MB) Over Time by Dyno, Average Total Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dynos, Error Locations, Failed Request Count, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Max Latency Trend, Max Method Latency, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Disk Cache Memory(MB) by Dyno, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*(?<dyno>(?<=dyno\=).*?(?= )).*(?<status_code>(?<=status\=).*?(?= ))"
```
### Use Cases:
50th Percentile Connection Time Trend, 50th Percentile Latency Trend, 50th Percentile Method Latency, 50th Percentile Path Latency, App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Rate, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Connection Time, Average Connection Time Trend, Average Disk Cache Memory, Average Disk Cache Memory(MB) Over Time by Dyno, Average Latency, Average Latency Trend, Average Memory Quota, Average Memory Quota(MB) Over Time by Dyno, Average Memory Total(MB) by Dyno, Average Method Latency, Average Path Latency, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Response Size, Average Swap Memory, Average Swap Memory(MB) Over Time by Dyno, Average Total Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dyno Load Average(15 min), Dyno Memory(MB), Dynos, Error Locations, Failed Request Count, Heroku Error Rate, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Max Connection Time Trend, Max Latency Trend, Max Method Latency, Max Path Latency, MBs Transferred by Dyno Over Time, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Request-Response Trend, Response Throughput by Status Code, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Status code count by dyno, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 10 Failed Requests, Top 10 Slowest Requests, Top 25 Disk Cache Memory(MB) by Dyno, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Errors by Component, Total Errors by Host, Total Infrastructure Errors, Total Request Count, Zero Dyno Errors



## Parser:
```
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*connect=(?<connect>.*?(?= )).*service=(?<service>.*?(?= ))"
| parse regex field=service "(?<service_time_ms>\d{0,10})"
| parse regex field=connect "(?<connect_time_ms>\d{0,10})"
```
### Use Cases:
50th Percentile Connection Time Trend, 50th Percentile Latency Trend, 50th Percentile Method Latency, 50th Percentile Path Latency, App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Rate, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Connection Time, Average Connection Time Trend, Average Disk Cache Memory, Average Disk Cache Memory(MB) Over Time by Dyno, Average Latency, Average Latency Trend, Average Memory Quota, Average Memory Quota(MB) Over Time by Dyno, Average Memory Total(MB) by Dyno, Average Method Latency, Average Path Latency, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Response Size, Average Swap Memory, Average Swap Memory(MB) Over Time by Dyno, Average Total Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dyno Load Average(15 min), Dyno Memory(MB), Dynos, Error Locations, Failed Request Count, Heroku Error Rate, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Max Connection Time Trend, Max Latency Trend, Max Method Latency, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Request-Response Trend, Response Throughput by Status Code, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 10 Failed Requests, Top 10 Slowest Requests, Top 25 Disk Cache Memory(MB) by Dyno, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Errors by Component, Total Errors by Host, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*connect=(?<connect>.*?(?= ))"
| parse regex field=connect "(?<connect_time>\d{0,10})"
```
### Use Cases:
50th Percentile Connection Time Trend, 50th Percentile Latency Trend, 50th Percentile Path Latency, App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Connection Time, Average Connection Time Trend, Average Disk Cache Memory, Average Disk Cache Memory(MB) Over Time by Dyno, Average Latency Trend, Average Memory Quota, Average Memory Quota(MB) Over Time by Dyno, Average Memory Total(MB) by Dyno, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Response Size, Average Swap Memory, Average Swap Memory(MB) Over Time by Dyno, Average Total Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dyno Load Average(15 min), Dyno Memory(MB), Dynos, Error Locations, Failed Request Count, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Max Connection Time Trend, Max Latency Trend, Max Method Latency, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Disk Cache Memory(MB) by Dyno, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*dyno=(?<dyno>.*?(?= )).*bytes=(?<bytes>.*?(?= ))"
```
### Use Cases:
50th Percentile Connection Time Trend, 50th Percentile Latency Trend, 50th Percentile Method Latency, 50th Percentile Path Latency, App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Rate, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Connection Time, Average Connection Time Trend, Average Disk Cache Memory, Average Disk Cache Memory(MB) Over Time by Dyno, Average Latency, Average Latency Trend, Average Memory Quota, Average Memory Quota(MB) Over Time by Dyno, Average Memory Total(MB) by Dyno, Average Method Latency, Average Path Latency, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Response Size, Average Swap Memory, Average Swap Memory(MB) Over Time by Dyno, Average Total Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dyno Load Average(15 min), Dyno Memory(MB), Dynos, Error Locations, Failed Request Count, Heroku Error Rate, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Max Connection Time Trend, Max Latency Trend, Max Method Latency, MBs Transferred by Dyno Over Time, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Request-Response Trend, Response Throughput by Status Code, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 10 Failed Requests, Top 10 Slowest Requests, Top 25 Disk Cache Memory(MB) by Dyno, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Errors by Component, Total Errors by Host, Total Infrastructure Errors, Total Request Count, Zero Dyno Errors



## Parser:
```
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*request_id=(?<request_id>.*?(?= ))"
```
### Use Cases:
50th Percentile Connection Time Trend, 50th Percentile Latency Trend, 50th Percentile Method Latency, 50th Percentile Path Latency, App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Rate, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Connection Time, Average Connection Time Trend, Average Disk Cache Memory, Average Disk Cache Memory(MB) Over Time by Dyno, Average Latency, Average Latency Trend, Average Memory Quota, Average Memory Quota(MB) Over Time by Dyno, Average Memory Total(MB) by Dyno, Average Method Latency, Average Path Latency, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Response Size, Average Swap Memory, Average Swap Memory(MB) Over Time by Dyno, Average Total Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dyno Load Average(15 min), Dyno Memory(MB), Dynos, Error Locations, Failed Request Count, Heroku Error Rate, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Max Connection Time Trend, Max Latency Trend, Max Method Latency, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Request-Response Trend, Response Throughput by Status Code, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 10 Failed Requests, Top 10 Slowest Requests, Top 25 Disk Cache Memory(MB) by Dyno, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Errors by Component, Total Errors by Host, Total Infrastructure Errors, Total Request Count, Zero Dyno Errors



## Parser:
```
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*service=(?<service>.*?(?= ))"
| parse regex field=service "(?<service_time>\d{0,10})"
```
### Use Cases:
50th Percentile Connection Time Trend, 50th Percentile Latency Trend, 50th Percentile Method Latency, 50th Percentile Path Latency, App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Rate, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Connection Time, Average Connection Time Trend, Average Disk Cache Memory, Average Disk Cache Memory(MB) Over Time by Dyno, Average Latency, Average Latency Trend, Average Memory Quota, Average Memory Quota(MB) Over Time by Dyno, Average Memory Total(MB) by Dyno, Average Method Latency, Average Path Latency, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Response Size, Average Swap Memory, Average Swap Memory(MB) Over Time by Dyno, Average Total Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dyno Load Average(15 min), Dyno Memory(MB), Dynos, Error Locations, Failed Request Count, Heroku Error Rate, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Max Connection Time Trend, Max Latency Trend, Max Method Latency, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Response Throughput by Status Code, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 10 Slowest Requests, Top 25 Disk Cache Memory(MB) by Dyno, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Errors by Component, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "host=(?<app_name>.*(?=.herokuapp.com)).*status=(?<status>.*?(?= ))"
```
### Use Cases:
App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Disk Cache Memory, Average Disk Cache Memory(MB) Over Time by Dyno, Average Latency Trend, Average Memory Quota, Average Memory Quota(MB) Over Time by Dyno, Average Memory Total(MB) by Dyno, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Swap Memory, Average Swap Memory(MB) Over Time by Dyno, Average Total Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dynos, Error Locations, Failed Request Count, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Disk Cache Memory(MB) by Dyno, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "host=(?<app_name>.*(?=.herokuapp.com))" nodrop
```
### Use Cases:
App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dynos, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Process Exit Status by Code, Request Timeout Errors, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Total App Error Trend, Total App Errors, Zero Dyno Errors



## Parser:
```
| parse regex "load_avg_15m=(?<load_avg_15m>.*?(?=$))"
```
### Use Cases:
50th Percentile Latency Trend, 50th Percentile Path Latency, App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Connection Time, Average Disk Cache Memory, Average Disk Cache Memory(MB) Over Time by Dyno, Average Latency Trend, Average Memory Quota, Average Memory Quota(MB) Over Time by Dyno, Average Memory Total(MB) by Dyno, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Response Size, Average Swap Memory, Average Swap Memory(MB) Over Time by Dyno, Average Total Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dyno Load Average(15 min), Dyno Memory(MB), Dynos, Error Locations, Failed Request Count, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Max Connection Time Trend, Max Latency Trend, Max Method Latency, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Disk Cache Memory(MB) by Dyno, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "method=(?<request_type>.*?(?= )).*host=(?<app_name>.*(?=.herokuapp.com)).*service=(?<service>.*?(?= ))"
| parse regex field=service "(?<service_time>\d{0,10})"
```
### Use Cases:
50th Percentile Connection Time Trend, 50th Percentile Latency Trend, 50th Percentile Method Latency, 50th Percentile Path Latency, App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Rate, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Connection Time, Average Connection Time Trend, Average Disk Cache Memory, Average Disk Cache Memory(MB) Over Time by Dyno, Average Latency Trend, Average Memory Quota, Average Memory Quota(MB) Over Time by Dyno, Average Memory Total(MB) by Dyno, Average Method Latency, Average Path Latency, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Response Size, Average Swap Memory, Average Swap Memory(MB) Over Time by Dyno, Average Total Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dyno Load Average(15 min), Dyno Memory(MB), Dynos, Error Locations, Failed Request Count, Heroku Error Rate, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Max Connection Time Trend, Max Latency Trend, Max Method Latency, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Response Throughput by Status Code, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 10 Slowest Requests, Top 25 Disk Cache Memory(MB) by Dyno, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Errors by Component, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "path=\"(?<request_path>.*?(?=\")).*host=(?<app_name>.*(?=.herokuapp.com)).*connect=(?<connect>.*?(?= ))"
| parse regex field=connect "(?<connect_time>(?<=^).*(?=ms))"
```
### Use Cases:
50th Percentile Connection Time Trend, 50th Percentile Latency Trend, 50th Percentile Path Latency, App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Connection Time, Average Connection Time Trend, Average Disk Cache Memory, Average Disk Cache Memory(MB) Over Time by Dyno, Average Latency Trend, Average Memory Quota, Average Memory Quota(MB) Over Time by Dyno, Average Memory Total(MB) by Dyno, Average Path Latency, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Response Size, Average Swap Memory, Average Swap Memory(MB) Over Time by Dyno, Average Total Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dyno Load Average(15 min), Dyno Memory(MB), Dynos, Error Locations, Failed Request Count, Heroku Error Rate, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Max Connection Time Trend, Max Latency Trend, Max Method Latency, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Response Throughput by Status Code, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 10 Slowest Requests, Top 25 Disk Cache Memory(MB) by Dyno, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "path=\"(?<request_path>.*?(?=\")).*host=(?<app_name>.*(?=.herokuapp.com)).*service=(?<service>.*?(?= ))"
| parse regex field=service "(?<service_time>\d{0,10})"
```
### Use Cases:
50th Percentile Connection Time Trend, 50th Percentile Latency Trend, 50th Percentile Method Latency, 50th Percentile Path Latency, App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Rate, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Connection Time, Average Connection Time Trend, Average Disk Cache Memory, Average Disk Cache Memory(MB) Over Time by Dyno, Average Latency, Average Latency Trend, Average Memory Quota, Average Memory Quota(MB) Over Time by Dyno, Average Memory Total(MB) by Dyno, Average Method Latency, Average Path Latency, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Response Size, Average Swap Memory, Average Swap Memory(MB) Over Time by Dyno, Average Total Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dyno Load Average(15 min), Dyno Memory(MB), Dynos, Error Locations, Failed Request Count, Heroku Error Rate, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Max Connection Time Trend, Max Latency Trend, Max Method Latency, Max Path Latency, MBs Transferred by Dyno Over Time, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Request-Response Trend, Response Throughput by Status Code, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 10 Failed Requests, Top 10 Slowest Requests, Top 25 Disk Cache Memory(MB) by Dyno, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Errors by Component, Total Errors by Host, Total Infrastructure Errors, Total Request Count, Zero Dyno Errors



## Parser:
```
| parse regex "path=\"(?<request_path>.*?(?=\")).*host=(?<app_name>.*(?=.herokuapp.com)).*status=(?<status>.*?(?= ))"
```
### Use Cases:
50th Percentile Connection Time Trend, 50th Percentile Latency Trend, 50th Percentile Method Latency, 50th Percentile Path Latency, App Boot Timeout Errors, App Crash Errors, App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Rate, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Average Connection Time, Average Connection Time Trend, Average Disk Cache Memory, Average Disk Cache Memory(MB) Over Time by Dyno, Average Latency, Average Latency Trend, Average Memory Quota, Average Memory Quota(MB) Over Time by Dyno, Average Memory Total(MB) by Dyno, Average Method Latency, Average Path Latency, Average Resident Memory, Average Resident Memory(MB) Over Time by Dyno, Average Response Size, Average Swap Memory, Average Swap Memory(MB) Over Time by Dyno, Average Total Memory, Blank App Errors, Boot Timeout Errors, Client Connection Idle Errors, Client Request Interrupted Errors, Closed Connections without Response Errors, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Dyno Count Trend, Dyno Load Average(15 min), Dyno Memory(MB), Dynos, Error Locations, Failed Request Count, Heroku Error Rate, Idle Connection Errors, Infrastructure  Error Trend by Code, Infrastructure Error Details, Infrastructure Errors by Code, Infrastructure Errors by Component, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Max Connection Time Trend, Max Latency Trend, Max Method Latency, Memory Utilization (MB), Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Pages Read from Disk by Dyno, Pages Written to Disk by Dyno, Process Exit Status by Code, Request Timeout Errors, Response Throughput by Status Code, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Server Request Interrupted Errors, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 10 Failed Requests, Top 10 Slowest Requests, Top 25 Disk Cache Memory(MB) by Dyno, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Top 25 Memory Quota(MB) by Dyno, Top 25 Memory Utilization(MB) by Dyno, Top 25 Resident Memory(MB) by Dyno, Top 25 Swap Memory(MB) by Dyno, Total App Error Trend, Total App Errors, Total Errors by Component, Total Infrastructure Errors, Zero Dyno Errors



## Parser:
```
| parse regex "Process exited with status (?<status>.*)"
```
### Use Cases:
App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Process Exit Status by Code, Stopped Dynos, Successful Dyno Launches Trend, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Total App Error Trend, Total App Errors



## Parser:
```
| parse regex "Release (?<app_version>.*?(?= )) created by user (?<user>.*)"
```
### Use Cases:
App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Release by User, App Release Trend by User



## Parser:
```
| parse regex "Scaled to (?<dyno>.*(?= by)).*user (?<user>.*)"
```
### Use Cases:
App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Completed Dyno Launches Trend, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Process Exit Status by Code, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Stopped Dynos, Successful Dyno Launches Trend, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Total App Error Trend, Total App Errors



## Parser:
```
| parse regex "State changed from (?<first_state>.*?(?= )) to (?<second_state>.*)"
```
### Use Cases:
App Deployment Commits by User, App Deployment Trend by User, App Deployments by User, App Error Details, App Error Trend by Component, App Errors by Component, App Release by User, App Release Error Trend, App Release Trend by User, App Signal Termination Error Trend, App Worker Initialization Error Trend, Completed Dyno Launches, Completed Dyno Launches Trend, Crashed Dyno Launches, Crashed Dyno Launches Trend, Load Average 15m by Dyno, Load Average 1m by Dyno, Load Average 5m by Dyno, Load Average Percent (1m, 5m, 15m) for All Dynos, Overall Load Average 15m, Overall Load Average 1m, Overall Load Average 5m, Process Exit Status by Code, Scaling Dyno Operation Trend by User, Scaling Dyno Operations, Scaling Dyno Operations by User, Stopped Dynos, Successful Dyno Launches Trend, Successfull Dyno Launches, Top 25 Load Average 15m by Dyno, Top 25 Load Average 1m by Dyno, Top 25 Load Average 5m by Dyno, Total App Error Trend, Total App Errors


