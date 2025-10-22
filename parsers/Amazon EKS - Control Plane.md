# Parsers For Amazon EKS - Control Plane

**Amazon EKS - Control Plane/EKS - API Server Audit/Failure Rate**
```
_sourceCategory={{Logsdatasource}}  
 and _sourceName = kube-apiserver-audit*
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| json field=log "responseStatus.code", "verb", "requestURI", "objectRef.resource", "sourceIPs", "objectRef.namespace", "user.username" as status_code, method, url, k8_resource, ip , namespace, username
| json field=log  "responseStatus.reason" as reason nodrop
```

**Amazon EKS - Control Plane/EKS - API Server Audit/Failures by Reason and Namespace**
```
_sourceCategory={{Logsdatasource}}  
 and _sourceName = kube-apiserver-audit*
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

**Amazon EKS - Control Plane/EKS - API Server Audit/Most Active Users**
```
_sourceCategory={{Logsdatasource}}  
 and _sourceName = kube-apiserver-audit* 
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| json field=log "responseStatus.code", "verb", "requestURI", "objectRef.resource", "sourceIPs", "responseStatus.reason", "objectRef.namespace", "user.username" as status_code, method, url, k8_resource, ip, reason, namespace, username
```

**Amazon EKS - Control Plane/EKS - API Server Audit/Non-200 Total Count**
```
_sourceCategory={{Logsdatasource}}  
 and _sourceName = kube-apiserver-audit*
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| json field=log "responseStatus.code", "verb", "requestURI", "objectRef.resource", "sourceIPs", "responseStatus.reason", "objectRef.namespace", "user.username" as status_code, method, url, k8_resource, ip, reason, namespace, username
```

**Amazon EKS - Control Plane/EKS - API Server Audit/Requests by Audit Policy**
```
_sourceCategory={{Logsdatasource}}  
 and _sourceName = kube-apiserver-audit*
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| json field=log "level" as level
```

**Amazon EKS - Control Plane/EKS - API Server Audit/Requests by Stage**
```
_sourceCategory={{Logsdatasource}}  
 and _sourceName = kube-apiserver-audit*
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| json field=log "stage" as stage
```

**Amazon EKS - Control Plane/EKS - API Server Audit/Status Code Trend**
```
_sourceCategory={{Logsdatasource}}  
 and _sourceName = kube-apiserver-audit*
| json field=_raw "message.responseStatus.code", "message.verb", "message.requestURI", "message.objectRef.resource", "message.sourceIPs",  "message.objectRef.namespace", "message.user.username"   as status_code, method, url, k8_resource, ip, namespace, username
| json field=_raw  "message.responseStatus.reason" as reason nodrop
```

**Amazon EKS - Control Plane/EKS - API Server Audit/Top 10 URLS with Problem Status Codes**
```
_sourceCategory={{Logsdatasource}}  
 and _sourceName = kube-apiserver-audit*
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| json field=log "responseStatus.code", "verb", "requestURI", "objectRef.resource", "sourceIPs", "responseStatus.reason", "objectRef.namespace", "user.username" as status_code, method, url, k8_resource, ip, reason, namespace, username
```

**Amazon EKS - Control Plane/EKS - API Server Audit/Top Failure Reasons**
```
_sourceCategory={{Logsdatasource}}  
 and _sourceName = kube-apiserver-audit*
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| json field=log "responseStatus.code", "verb", "requestURI", "objectRef.resource", "sourceIPs", "responseStatus.reason", "objectRef.namespace", "user.username" as status_code, method, url, k8_resource, ip, reason, namespace, username
```

**Amazon EKS - Control Plane/EKS - API Server Audit/Top URLS with Non-200**
```
_sourceCategory={{Logsdatasource}}  
 and _sourceName = kube-apiserver-audit*
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| json field=log "responseStatus.code", "verb", "requestURI", "objectRef.resource", "sourceIPs", "responseStatus.reason", "objectRef.namespace", "user.username" as status_code, method, url, k8_resource, ip, reason, namespace, username
```

**Amazon EKS - Control Plane/EKS - API Server Audit/Top Users by Failures**
```
_sourceCategory={{Logsdatasource}}  
 and _sourceName = kube-apiserver-audit* 
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| json field=log "responseStatus.code", "verb", "requestURI", "objectRef.resource", "sourceIPs", "responseStatus.reason", "objectRef.namespace", "user.username"   as status_code, method, url, k8_resource, ip, reason, namespace, username
```

**Amazon EKS - Control Plane/EKS - API Server/Error Logs**
```
_sourceCategory={{Logsdatasource}}  (error OR warning)
AND _sourceName = kube-api* AND !_sourceName = kube-apiserver-audit*
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse regex field=log "^^(?<severity>.)(?:[0-9])(?:.*\])\s(?<log_msg>.*)"
```

**Amazon EKS - Control Plane/EKS - API Server/Severity Breakdown**
```
_sourceCategory={{Logsdatasource}}  
AND _sourceName = kube-api* AND !_sourceName = kube-apiserver-audit*
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse regex field=log "^^(?<severity>.)(?:[0-9])(?:.*\])\s(?<log_msg>.*)"
```

**Amazon EKS - Control Plane/EKS - API Server/Severity Over Time**
```
_sourceCategory={{Logsdatasource}}  
AND _sourceName = kube-api* AND !_sourceName = kube-apiserver-audit*
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse regex field=log "^^(?<severity>.)(?:[0-9])(?:.*\])\s(?<log_msg>.*)"
```

**Amazon EKS - Control Plane/EKS - Authenticator/Access Granted by Users**
```
_sourceCategory={{Logsdatasource}}  "access granted"
 and _sourceName = *authenticator*
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse field=log "msg=\"*\"" as err_msg
| parse field=log "username=\"*\"" as username
```

**Amazon EKS - Control Plane/EKS - Authenticator/Errors**
```
_sourceCategory={{Logsdatasource}}  error
 and _sourceName = *authenticator*
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse field=log "msg=\"*\"" as err_msg
| parse field=log "time=\"*\"" as message_time
```

**Amazon EKS - Control Plane/EKS - Authenticator/Logs**
```
_sourceCategory={{Logsdatasource}}  
 and _sourceName = *authenticator*
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse field=log "msg=\"*\"" as message
| parse field=log "username=\"*\"" as username
| parse field=log "time=\"*\"" as message_time
```

**Amazon EKS - Control Plane/EKS - Controller Manager/Error Logs**
```
_sourceCategory={{Logsdatasource}}  error
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse regex field=log "^(?<severity>.)(?:[0-9])"
```

**Amazon EKS - Control Plane/EKS - Controller Manager/Error Messages Count**
```
_sourceCategory={{Logsdatasource}} 
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse regex field=log "^(?<severity>.)(?:[0-9])"
```

**Amazon EKS - Control Plane/EKS - Controller Manager/Job Creations**
```
	_sourceCategory={{Logsdatasource}}  "Created job"
	| json "message" nodrop | if (!isblank(message), message, _raw) as log
	| parse field=log "Created job *" as job
  | parse field=log "* *       " as code,time
```

**Amazon EKS - Control Plane/EKS - Controller Manager/Job Deletions**
```
_sourceCategory={{Logsdatasource}}  "Deleted job"
	| json "message" nodrop | if (!isblank(message), message, _raw) as log
  | parse field=log "Deleted job *" as job_name
```

**Amazon EKS - Control Plane/EKS - Controller Manager/Pods Created**
```
	_sourceCategory={{Logsdatasource}}  "Created pod:"
  | json "message" nodrop | if (!isblank(message), message, _raw) as log
  | parse field=log "Created pod: *" as pod
  | parse field=log "* *       " as code,time
```

**Amazon EKS - Control Plane/EKS - Controller Manager/Pods Deleted**
```
	_sourceCategory={{Logsdatasource}}  "Deleted pod:"
	| json "message" nodrop | if (!isblank(message), message, _raw) as log
	| parse field=log "Deleted pod: *" as pod
  | parse field=log "* *       " as code,time
```

**Amazon EKS - Control Plane/EKS - Controller Manager/Scale Operations**
```
	_sourceCategory={{Logsdatasource}}  
	| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse regex field=log "^(?<severity>.)(?:[0-9])"
| where severity == "I"
| parse field=log "Scaled * replica set * to *" as direction,replica_set,scaled_to
```

**Amazon EKS - Control Plane/EKS - Controller Manager/Severity Breakdown**
```
	_sourceCategory={{Logsdatasource}}  
	| json "message" nodrop | if (!isblank(message), message, _raw) as log
	| parse regex field=log "^(?<severity>.)(?:[0-9])"
```

**Amazon EKS - Control Plane/EKS - Controller Manager/Severity Over Time**
```
	_sourceCategory={{Logsdatasource}}  
	| json "message" nodrop | if (!isblank(message), message, _raw) as log
	| parse regex field=log "^(?<severity>.)(?:[0-9])"
```

**Amazon EKS - Control Plane/EKS - Scheduler/Error Messages**
```
_sourceCategory={{Logsdatasource}}  
AND _sourceName = *scheduler*
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse regex field=log "^^(?<severity>.)(?:[0-9])(?:.*\])\s(?<log_msg>.*)"
```

**Amazon EKS - Control Plane/EKS - Scheduler/Severity Breakdown**
```
_sourceCategory={{Logsdatasource}}  
AND _sourceName = *scheduler*
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse regex field=log "^^(?<severity>.)(?:[0-9])(?:.*\])\s(?<log_msg>.*)"
```

**Amazon EKS - Control Plane/EKS - Scheduler/Severity Over Time**
```
_sourceCategory={{Logsdatasource}}  
AND _sourceName = *scheduler*
| json "message" nodrop | if (!isblank(message), message, _raw) as log
| parse regex field=log "^^(?<severity>.)(?:[0-9])(?:.*\])\s(?<log_msg>.*)"
```


