# Parsers For AWS EKS - Control Plane

## Parser:
```
| json field=_raw "message.responseStatus.code" as status_code
| json field=_raw "message.verb" as method
| json field=_raw "message.requestURI" as url
| json field=_raw "message.objectRef.resource" as k8_resource
| json field=_raw "message.sourceIPs" as ip
| json field=_raw "message.responseStatus.reason" as reason
| json field=_raw "message.objectRef.namespace" as namespace
| json field=_raw "message.user.username" as username
 `n```
### Use Cases:
Failures by Reason and Namespace, Non-200 Total Count, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200



## Parser:
```
| json field=_raw "message.responseStatus.code", "message.verb", "message.requestURI", "message.objectRef.resource", "message.sourceIPs", "message.responseStatus.reason", "message.objectRef.namespace", "message.user.username"   as status_code, method, url, k8_resource, ip, reason, namespace, username
 `n```
### Use Cases:
Failure Rate, Failures by Reason and Namespace, Most Active Users, Non-200 Total Count, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json field=_raw "message"
| parse regex field=message "^(?<severity>.)(?:[0-9])"
 `n```
### Use Cases:
Access Granted by Users, Error Logs, Errors, Failure Rate, Failures by Reason and Namespace, Logs, Most Active Users, Non-200 Total Count, Requests by Audit Policy, Requests by Stage, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json field=_raw "message" as log
| parse field=log "Created job *" as job
| parse field=log "* *       " as code,time
 `n```
### Use Cases:
Access Granted by Users, Error Logs, Errors, Failure Rate, Failures by Reason and Namespace, Job Creations, Logs, Most Active Users, Non-200 Total Count, Requests by Audit Policy, Requests by Stage, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json field=_raw "message" as log
| parse field=log "Created pod: *" as pod
| parse field=log "* *       " as code,time
 `n```
### Use Cases:
Access Granted by Users, Error Logs, Errors, Failure Rate, Failures by Reason and Namespace, Job Creations, Job Deletions, Logs, Most Active Users, Non-200 Total Count, Pods Created, Requests by Audit Policy, Requests by Stage, Scale Operations, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json field=_raw "message" as log
| parse field=log "Deleted job *" as job_name
 `n```
### Use Cases:
Access Granted by Users, Error Logs, Errors, Failure Rate, Failures by Reason and Namespace, Job Creations, Job Deletions, Logs, Most Active Users, Non-200 Total Count, Requests by Audit Policy, Requests by Stage, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json field=_raw "message" as log
| parse field=log "Deleted pod: *" as pod
| parse field=log "* *       " as code,time
 `n```
### Use Cases:
Access Granted by Users, Error Logs, Errors, Failure Rate, Failures by Reason and Namespace, Job Creations, Job Deletions, Logs, Most Active Users, Non-200 Total Count, Pods Created, Pods Deleted, Requests by Audit Policy, Requests by Stage, Scale Operations, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json field=_raw "message" as log
| parse field=log "msg=\"*\"" as err_msg
| parse field=log "time=\"*\"" as message_time
 `n```
### Use Cases:
Error Logs, Errors, Failure Rate, Failures by Reason and Namespace, Most Active Users, Non-200 Total Count, Requests by Audit Policy, Requests by Stage, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json field=_raw "message" as log
| parse field=log "msg=\"*\"" as err_msg
| parse field=log "username=\"*\"" as username
 `n```
### Use Cases:
Access Granted by Users, Error Logs, Errors, Failure Rate, Failures by Reason and Namespace, Most Active Users, Non-200 Total Count, Requests by Audit Policy, Requests by Stage, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json field=_raw "message" as log
| parse field=log "msg=\"*\"" as message
| parse field=log "username=\"*\"" as username
| parse field=log "time=\"*\"" as message_time
 `n```
### Use Cases:
Access Granted by Users, Error Logs, Errors, Failure Rate, Failures by Reason and Namespace, Logs, Most Active Users, Non-200 Total Count, Requests by Audit Policy, Requests by Stage, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json field=_raw "message" as log
| parse regex field=log "^(?<severity>.)(?:[0-9])"
 `n```
### Use Cases:
Access Granted by Users, Error Logs, Errors, Failure Rate, Failures by Reason and Namespace, Logs, Most Active Users, Non-200 Total Count, Requests by Audit Policy, Requests by Stage, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json field=_raw "message" as log
| parse regex field=log "^(?<severity>.)(?:[0-9])"
| parse field=log "Scaled * replica set * to *" as direction,replica_set,scaled_to
 `n```
### Use Cases:
Access Granted by Users, Error Logs, Errors, Failure Rate, Failures by Reason and Namespace, Job Creations, Job Deletions, Logs, Most Active Users, Non-200 Total Count, Requests by Audit Policy, Requests by Stage, Scale Operations, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json field=_raw "message" as log
| parse regex field=log "^^(?<severity>.)(?:[0-9])(?:.*\])\s(?<log_msg>.*)"
 `n```
### Use Cases:
Access Granted by Users, Error Logs, Error Messages, Errors, Failure Rate, Failures by Reason and Namespace, Job Creations, Job Deletions, Logs, Most Active Users, Non-200 Total Count, Pods Created, Pods Deleted, Requests by Audit Policy, Requests by Stage, Scale Operations, Severity Breakdown, Severity Over Time, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json field=_raw "message", "message.level" as log, level
 `n```
### Use Cases:
Failure Rate, Failures by Reason and Namespace, Most Active Users, Non-200 Total Count, Requests by Audit Policy, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures



## Parser:
```
| json field=_raw "message", "message.stage" as log, stage
 `n```
### Use Cases:
Failure Rate, Failures by Reason and Namespace, Most Active Users, Non-200 Total Count, Requests by Audit Policy, Requests by Stage, Status Code Trend, Top 10 URLS with Problem Status Codes, Top Failure Reasons, Top URLS with Non-200, Top Users by Failures


