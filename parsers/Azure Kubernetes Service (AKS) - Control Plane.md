# Parsers For Azure Kubernetes Service (AKS) - Control Plane

## Parser:
```
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
 
```
### Use Cases:
API Server Request Latency by Method, API Server Request Rates by Clients, API Server Success Request Rates, API Server Successful vs Failure Request Rates, Autoscaler Status Code Trend this Period, Autoscaler URLs with Problem Status Codes, Error Log Events, Error Log Stream, Error Message Count, Error Messages, Pods Created, Pods Deleted, Scale Operations, Severity Breakdown, Severity Over Time, Status Code Over Time, Top 10 URLS with Problem Status Codes, Top URLS with Non-200



## Parser:
```
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
| parse regex field=log "(?<misc>.*)  (?<msg>.*)"
| parse regex field=msg "(?<misc_1>.*) Scaled (?<direction>.*) replica set (?<replica_set>.*) to (?<scaled_to>[\d]+)"
 
```
### Use Cases:
API Server Request Latency by Method, API Server Request Rates by Clients, API Server Success Request Rates, API Server Successful vs Failure Request Rates, Autoscaler Status Code Trend this Period, Autoscaler URLs with Problem Status Codes, Error Log Events, Scale Operations, Severity Breakdown, Severity Over Time, Status Code Over Time, Top 10 URLS with Problem Status Codes, Top URLS with Non-200



## Parser:
```
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
| parse regex field=log "(?<misc>.*)  (?<msg>.*)"
| parse regex field=msg "(?<misc_1>.*)Scaled (?<direction>.*) replica set (?<replica_set>.*) to (?<scaled_to>[\d]+)"
 
```
### Use Cases:
API Server Request Latency by Method, API Server Request Rates by Clients, API Server Success Request Rates, API Server Successful vs Failure Request Rates, Autoscaler Status Code Trend this Period, Autoscaler URLs with Problem Status Codes, Error Log Events, Error Log Stream, Error Message Count, Error Messages, Pods Created, Pods Deleted, Scale Operations, Severity Breakdown, Severity Over Time, Status Code Over Time, Top 10 URLS with Problem Status Codes, Top URLS with Non-200



## Parser:
```
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
| parse regex field=log "(?<misc>.*)  (?<msg>.*)"
| parse regex field=msg "Created pod: (?<pod_name>.*)"
 
```
### Use Cases:
API Server Request Latency by Method, API Server Request Rates by Clients, API Server Success Request Rates, API Server Successful vs Failure Request Rates, Autoscaler Status Code Trend this Period, Autoscaler URLs with Problem Status Codes, Error Log Events, Error Log Stream, Error Message Count, Error Messages, Pods Created, Pods Deleted, Scale Operations, Severity Breakdown, Severity Over Time, Status Code Over Time, Top 10 URLS with Problem Status Codes, Top URLS with Non-200



## Parser:
```
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
| parse regex field=log "(?<misc>.*)  (?<msg>.*)"
| parse regex field=msg "Deleted pod: (?<pod_name>.*)"
 
```
### Use Cases:
API Server Request Latency by Method, API Server Request Rates by Clients, API Server Success Request Rates, API Server Successful vs Failure Request Rates, Autoscaler Status Code Trend this Period, Autoscaler URLs with Problem Status Codes, Error Log Events, Error Log Stream, Error Message Count, Error Messages, Pods Created, Pods Deleted, Scale Operations, Severity Breakdown, Severity Over Time, Status Code Over Time, Top 10 URLS with Problem Status Codes, Top URLS with Non-200



## Parser:
```
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
| parse regex field=log_msg "(?<method>\S+)\s(?<url>\S+)\s\((?<latency>\S+)ms\)\s(?<status_code>\d+)\s\[(?<k8_resource>.*)\s(?<ip>.+):(?<port>\d+)\]"
 
```
### Use Cases:
API Server Request Latency by Method, API Server Request Rates by Clients, API Server Success Request Rates, API Server Successful vs Failure Request Rates, Autoscaler Status Code Trend this Period, Autoscaler URLs with Problem Status Codes, Error Log Events, Error Log Stream, Error Message Count, Error Messages, Pods Created, Pods Deleted, Scale Operations, Severity Breakdown, Severity Over Time, Status Code Over Time, Top 10 URLS with Problem Status Codes, Top URLS with Non-200



## Parser:
```
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
| parse regex field=log_msg "(?<method>\S+)\s(?<url>\S+)\s\((?<latency>\S+)ms\)\s(?<status_code>\d+)\s\[(?<user_agent>.*)\s(?<ip>.+):(?<port>\d+)\]"
 
```
### Use Cases:
API Server Request Latency by Method, API Server Request Rates by Clients, API Server Success Request Rates, API Server Successful vs Failure Request Rates, Autoscaler Status Code Trend this Period, Autoscaler URLs with Problem Status Codes, Error Log Events, Error Log Stream, Error Message Count, Error Messages, Pods Created, Pods Deleted, Scale Operations, Severity Breakdown, Severity Over Time, Status Code Over Time, Top 10 URLS with Problem Status Codes, Top URLS with Non-200



## Parser:
```
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
| parse regex field=log_msg "(?<method>\S+)\s(?<url>\S+)\s\((?<perf>\S+)\)\s(?<status_code>\d+)\s\[(?<k8_resource>.*)\s(?<ip>.+):(?<port>\d+)\]"
 
```
### Use Cases:
API Server Request Latency by Method, API Server Request Rates by Clients, API Server Success Request Rates, API Server Successful vs Failure Request Rates, Autoscaler Status Code Trend this Period, Autoscaler URLs with Problem Status Codes, Error Log Events, Error Log Stream, Error Message Count, Error Messages, Pods Created, Pods Deleted, Scale Operations, Severity Breakdown, Severity Over Time, Status Code Over Time, Top 10 URLS with Problem Status Codes, Top URLS with Non-200


