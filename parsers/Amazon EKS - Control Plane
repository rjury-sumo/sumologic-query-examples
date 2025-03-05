# Parsers For Amazon EKS - Control Plane

## Parser:
```
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| json field=log "level" as level
```
### Use Cases:
Error Logs, Failure Rate, Failures by Reason and Namespace, Most Active Users, Requests by Audit Policy, Requests by Stage, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| json field=log "responseStatus.code" as status_code
| json field=log "verb" as method
| json field=log "requestURI" as url
| json field=log "objectRef.resource" as k8_resource
| json field=log "sourceIPs" as ip
| json field=log "responseStatus.reason" as reason
| json field=log "objectRef.namespace" as namespace
| json field=log "user.username" as username
```
### Use Cases:
Error Logs, Failures by Reason and Namespace, Most Active Users, Severity Breakdown, Severity Over Time, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| json field=log "responseStatus.code", "verb", "requestURI", "objectRef.resource", "sourceIPs", "objectRef.namespace", "user.username" as status_code, method, url, k8_resource, ip , namespace, username
| json field=log  "responseStatus.reason" as reason nodrop
```
### Use Cases:
Error Logs, Failure Rate, Failures by Reason and Namespace, Most Active Users, Requests by Stage, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| json field=log "responseStatus.code", "verb", "requestURI", "objectRef.resource", "sourceIPs", "responseStatus.reason", "objectRef.namespace", "user.username"   as status_code, method, url, k8_resource, ip, reason, namespace, username
```
### Use Cases:
Error Logs, Most Active Users, Severity Breakdown, Severity Over Time, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| json field=log "responseStatus.code", "verb", "requestURI", "objectRef.resource", "sourceIPs", "responseStatus.reason", "objectRef.namespace", "user.username" as status_code, method, url, k8_resource, ip, reason, namespace, username
```
### Use Cases:
Error Logs, Failure Rate, Failures by Reason and Namespace, Most Active Users, Non-200 Total Count, Requests by Audit Policy, Requests by Stage, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| json field=log "stage" as stage
```
### Use Cases:
Error Logs, Failures by Reason and Namespace, Most Active Users, Requests by Stage, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse field=log "Created job *" as job
| parse field=log "* *       " as code,time
```
### Use Cases:
Access Granted by Users, Error Logs, Error Messages Count, Errors, Failure Rate, Failures by Reason and Namespace, Job Creations, Job Deletions, Logs, Most Active Users, Non-200 Total Count, Pods Created, Requests by Audit Policy, Requests by Stage, Scale Operations, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse field=log "Created pod: *" as pod
| parse field=log "* *       " as code,time
```
### Use Cases:
Access Granted by Users, Error Logs, Errors, Failure Rate, Failures by Reason and Namespace, Logs, Most Active Users, Non-200 Total Count, Pods Created, Requests by Audit Policy, Requests by Stage, Scale Operations, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse field=log "Deleted job *" as job_name
```
### Use Cases:
Access Granted by Users, Error Logs, Error Messages Count, Errors, Failure Rate, Failures by Reason and Namespace, Job Deletions, Logs, Most Active Users, Non-200 Total Count, Pods Created, Requests by Audit Policy, Requests by Stage, Scale Operations, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse field=log "Deleted pod: *" as pod
| parse field=log "* *       " as code,time
```
### Use Cases:
Access Granted by Users, Error Logs, Error Messages Count, Errors, Failure Rate, Failures by Reason and Namespace, Job Creations, Job Deletions, Logs, Most Active Users, Non-200 Total Count, Pods Created, Pods Deleted, Requests by Audit Policy, Requests by Stage, Scale Operations, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse field=log "msg=\"*\"" as err_msg
| parse field=log "time=\"*\"" as message_time
```
### Use Cases:
Error Logs, Errors, Failure Rate, Failures by Reason and Namespace, Logs, Most Active Users, Non-200 Total Count, Requests by Audit Policy, Requests by Stage, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse field=log "msg=\"*\"" as err_msg
| parse field=log "username=\"*\"" as username
```
### Use Cases:
Access Granted by Users, Error Logs, Errors, Failure Rate, Failures by Reason and Namespace, Logs, Most Active Users, Non-200 Total Count, Requests by Audit Policy, Requests by Stage, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse field=log "msg=\"*\"" as message
| parse field=log "username=\"*\"" as username
| parse field=log "time=\"*\"" as message_time
```
### Use Cases:
Error Logs, Failure Rate, Failures by Reason and Namespace, Logs, Most Active Users, Non-200 Total Count, Requests by Audit Policy, Requests by Stage, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse regex field=log "^(?<severity>.)(?:[0-9])"
```
### Use Cases:
Access Granted by Users, Error Logs, Error Messages Count, Errors, Failure Rate, Failures by Reason and Namespace, Logs, Most Active Users, Non-200 Total Count, Pods Created, Requests by Audit Policy, Requests by Stage, Scale Operations, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse regex field=log "^(?<severity>.)(?:[0-9])"
| parse field=log "Scaled * replica set * to *" as direction,replica_set,scaled_to
```
### Use Cases:
Access Granted by Users, Error Logs, Errors, Failure Rate, Failures by Reason and Namespace, Logs, Most Active Users, Non-200 Total Count, Requests by Audit Policy, Requests by Stage, Scale Operations, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse regex field=log "^^(?<severity>.)(?:[0-9])(?:.*\])\s(?<log_msg>.*)"
```
### Use Cases:
Access Granted by Users, Error Logs, Error Messages, Error Messages Count, Errors, Failure Rate, Failures by Reason and Namespace, Job Creations, Job Deletions, Logs, Most Active Users, Non-200 Total Count, Pods Created, Pods Deleted, Requests by Audit Policy, Requests by Stage, Scale Operations, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json field=_raw "message.responseStatus.code", "message.verb", "message.requestURI", "message.objectRef.resource", "message.sourceIPs",  "message.objectRef.namespace", "message.user.username"   as status_code, method, url, k8_resource, ip, namespace, username
| json field=_raw  "message.responseStatus.reason" as reason nodrop
```
### Use Cases:
Error Logs, Failures by Reason and Namespace, Most Active Users, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures


