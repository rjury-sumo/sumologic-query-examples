# Parsers For AWS EKS - Control Plane

**AWS EKS - Control Plane/EKS - API Server Audit/Failure Rate**
```
_sourceCategory = *eks* 
 and _sourceName = kube-apiserver-audit*
| json field=_raw "message.responseStatus.code", "message.verb", "message.requestURI", "message.objectRef.resource", "message.sourceIPs", "message.responseStatus.reason", "message.objectRef.namespace", "message.user.username"   as status_code, method, url, k8_resource, ip, reason, namespace, username
```

**AWS EKS - Control Plane/EKS - API Server Audit/Failures by Reason and Namespace**
```
_sourceCategory = *eks* 
 and _sourceName = kube-apiserver-audit*
| json field=_raw "message.responseStatus.code" as status_code
| json field=_raw "message.verb" as method
| json field=_raw "message.requestURI" as url
| json field=_raw "message.objectRef.resource" as k8_resource
| json field=_raw "message.sourceIPs" as ip
| json field=_raw "message.responseStatus.reason" as reason
| json field=_raw "message.objectRef.namespace" as namespace
| json field=_raw "message.user.username" as username
```

**AWS EKS - Control Plane/EKS - API Server Audit/Most Active Users**
```
_sourceCategory = *eks* 
 and _sourceName = kube-apiserver-audit* 
| json field=_raw "message.responseStatus.code", "message.verb", "message.requestURI", "message.objectRef.resource", "message.sourceIPs", "message.responseStatus.reason", "message.objectRef.namespace", "message.user.username"   as status_code, method, url, k8_resource, ip, reason, namespace, username
```

**AWS EKS - Control Plane/EKS - API Server Audit/Non-200 Total Count**
```
_sourceCategory = *eks* 
 and _sourceName = kube-apiserver-audit*
| json field=_raw "message.responseStatus.code", "message.verb", "message.requestURI", "message.objectRef.resource", "message.sourceIPs", "message.responseStatus.reason", "message.objectRef.namespace", "message.user.username"   as status_code, method, url, k8_resource, ip, reason, namespace, username
```

**AWS EKS - Control Plane/EKS - API Server Audit/Requests by Audit Policy**
```
_sourceCategory = *eks* 
 and _sourceName = kube-apiserver-audit*
| json field=_raw "message", "message.level" as log, level
```

**AWS EKS - Control Plane/EKS - API Server Audit/Requests by Stage**
```
_sourceCategory = *eks* 
 and _sourceName = kube-apiserver-audit*
| json field=_raw "message", "message.stage" as log, stage
```

**AWS EKS - Control Plane/EKS - API Server Audit/Status Code Trend**
```
_sourceCategory = *eks* 
 and _sourceName = kube-apiserver-audit*
| json field=_raw "message.responseStatus.code", "message.verb", "message.requestURI", "message.objectRef.resource", "message.sourceIPs", "message.responseStatus.reason", "message.objectRef.namespace", "message.user.username"   as status_code, method, url, k8_resource, ip, reason, namespace, username
```

**AWS EKS - Control Plane/EKS - API Server Audit/Top 10 URLS with Problem Status Codes**
```
_sourceCategory = *eks* 
 and _sourceName = kube-apiserver-audit*
| json field=_raw "message.responseStatus.code", "message.verb", "message.requestURI", "message.objectRef.resource", "message.sourceIPs", "message.responseStatus.reason", "message.objectRef.namespace", "message.user.username"   as status_code, method, url, k8_resource, ip, reason, namespace, username
```

**AWS EKS - Control Plane/EKS - API Server Audit/Top Failure Reasons**
```
_sourceCategory = *eks* 
 and _sourceName = kube-apiserver-audit*
| json field=_raw "message.responseStatus.code", "message.verb", "message.requestURI", "message.objectRef.resource", "message.sourceIPs", "message.responseStatus.reason", "message.objectRef.namespace", "message.user.username"   as status_code, method, url, k8_resource, ip, reason, namespace, username
```

**AWS EKS - Control Plane/EKS - API Server Audit/Top URLS with Non-200**
```
_sourceCategory = *eks* 
 and _sourceName = kube-apiserver-audit*
| json field=_raw "message.responseStatus.code", "message.verb", "message.requestURI", "message.objectRef.resource", "message.sourceIPs", "message.responseStatus.reason", "message.objectRef.namespace", "message.user.username"   as status_code, method, url, k8_resource, ip, reason, namespace, username
```

**AWS EKS - Control Plane/EKS - API Server Audit/Top Users by Failures**
```
_sourceCategory = *eks* 
 and _sourceName = kube-apiserver-audit* 
 | json field=_raw "message.responseStatus.code", "message.verb", "message.requestURI", "message.objectRef.resource", "message.sourceIPs", "message.responseStatus.reason", "message.objectRef.namespace", "message.user.username"   as status_code, method, url, k8_resource, ip, reason, namespace, username
```

**AWS EKS - Control Plane/EKS - API Server/Error Logs**
```
_sourceCategory = *eks* (error OR warning)
AND _sourceName = kube-api* AND !_sourceName = kube-apiserver-audit*
| json field=_raw "message" as log
| parse regex field=log "^^(?<severity>.)(?:[0-9])(?:.*\])\s(?<log_msg>.*)"
```

**AWS EKS - Control Plane/EKS - API Server/Severity Breakdown**
```
_sourceCategory = *eks* 
AND _sourceName = kube-api* AND !_sourceName = kube-apiserver-audit*
| json field=_raw "message" as log
| parse regex field=log "^^(?<severity>.)(?:[0-9])(?:.*\])\s(?<log_msg>.*)"
```

**AWS EKS - Control Plane/EKS - API Server/Severity Over Time**
```
_sourceCategory = *eks* 
AND _sourceName = kube-api* AND !_sourceName = kube-apiserver-audit*
| json field=_raw "message" as log
| parse regex field=log "^^(?<severity>.)(?:[0-9])(?:.*\])\s(?<log_msg>.*)"
```

**AWS EKS - Control Plane/EKS - Authenticator/Access Granted by Users**
```
_sourceCategory = *eks* "access granted"
 and _sourceName = *authenticator*
| json field=_raw "message" as log
| parse field=log "msg=\"*\"" as err_msg
| parse field=log "username=\"*\"" as username
```

**AWS EKS - Control Plane/EKS - Authenticator/Errors**
```
_sourceCategory = *eks* error
 and _sourceName = *authenticator*
| json field=_raw "message" as log
| parse field=log "msg=\"*\"" as err_msg
| parse field=log "time=\"*\"" as message_time
```

**AWS EKS - Control Plane/EKS - Authenticator/Logs**
```
_sourceCategory = *eks* 
 and _sourceName = *authenticator*
| json field=_raw "message" as log
| parse field=log "msg=\"*\"" as message
| parse field=log "username=\"*\"" as username
| parse field=log "time=\"*\"" as message_time
```

**AWS EKS - Control Plane/EKS - Controller Manager/Error Logs**
```
_sourceCategory = *eks* error
| json field=_raw "message"
| parse regex field=message "^(?<severity>.)(?:[0-9])"
```

**AWS EKS - Control Plane/EKS - Controller Manager/Job Creations**
```
	_sourceCategory = *eks* "Created job"
	| json field=_raw "message" as log
	| parse field=log "Created job *" as job
  | parse field=log "* *       " as code,time
```

**AWS EKS - Control Plane/EKS - Controller Manager/Job Deletions**
```
_sourceCategory = *eks* "Deleted job"
	| json field=_raw "message" as log
  | parse field=log "Deleted job *" as job_name
```

**AWS EKS - Control Plane/EKS - Controller Manager/Pods Created**
```
	_sourceCategory = *eks* "Created pod:"
  | json field=_raw "message" as log
  | parse field=log "Created pod: *" as pod
  | parse field=log "* *       " as code,time
```

**AWS EKS - Control Plane/EKS - Controller Manager/Pods Deleted**
```
	_sourceCategory = *eks* "Deleted pod:"
	| json field=_raw "message" as log
	| parse field=log "Deleted pod: *" as pod
  | parse field=log "* *       " as code,time
```

**AWS EKS - Control Plane/EKS - Controller Manager/Scale Operations**
```
	_sourceCategory = *eks* 
	| json field=_raw "message" as log
| parse regex field=log "^(?<severity>.)(?:[0-9])"
| where severity == "I"
| parse field=log "Scaled * replica set * to *" as direction,replica_set,scaled_to
```

**AWS EKS - Control Plane/EKS - Controller Manager/Severity Over Time**
```
	_sourceCategory = *eks* 
	| json field=_raw "message" as log
	| parse regex field=log "^(?<severity>.)(?:[0-9])"
```

**AWS EKS - Control Plane/EKS - Scheduler/Error Messages**
```
_sourceCategory = *eks* 
AND _sourceName = *scheduler*
| json field=_raw "message" as log
| parse regex field=log "^^(?<severity>.)(?:[0-9])(?:.*\])\s(?<log_msg>.*)"
```

**AWS EKS - Control Plane/EKS - Scheduler/Severity Breakdown**
```
_sourceCategory = *eks* 
AND _sourceName = *scheduler*
| json field=_raw "message" as log
| parse regex field=log "^^(?<severity>.)(?:[0-9])(?:.*\])\s(?<log_msg>.*)"
```

**AWS EKS - Control Plane/EKS - Scheduler/Severity Over Time**
```
_sourceCategory = *eks* 
AND _sourceName = *scheduler*
| json field=_raw "message" as log
| parse regex field=log "^^(?<severity>.)(?:[0-9])(?:.*\])\s(?<log_msg>.*)"
```


