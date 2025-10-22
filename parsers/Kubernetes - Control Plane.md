# Parsers For Kubernetes - Control Plane

**Kubernetes - Control Plane/15 Kubernetes - Controller Manager/Error Logs**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" error
| json field=_raw "timestamp"
| json field=_raw "log"
| parse regex field=log "^(?<severity>.)(?:[0-9])"
```

**Kubernetes - Control Plane/15 Kubernetes - Controller Manager/Error Messages Count**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info"
| json field=_raw "log" as log
| parse regex field=log "^(?<severity>.)(?:[0-9])"
```

**Kubernetes - Control Plane/15 Kubernetes - Controller Manager/Job Creations**
```
	_collector="Labs - Falco" OR _collector="prod01.travellogic.info" "Created job"
	| json field=_raw "log" as log
	| parse field=log "Created job *" as job
  | parse field=log "* *       " as code,time
```

**Kubernetes - Control Plane/15 Kubernetes - Controller Manager/Job Deletions**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" "Deleted job"
| json field=_raw "log" as log
| parse field=log "Deleted job *" as job_name
```

**Kubernetes - Control Plane/15 Kubernetes - Controller Manager/Pods Created**
```
	_collector="Labs - Falco" OR _collector="prod01.travellogic.info" "Created pod:"
	| json field=_raw "log" as log
	| parse field=log "Created pod: *" as pod
  | parse field=log "* *       " as code,time
```

**Kubernetes - Control Plane/15 Kubernetes - Controller Manager/Pods Deleted**
```
	_collector="Labs - Falco" OR _collector="prod01.travellogic.info" "Deleted pod:"
	| json field=_raw "log" as log
	| parse field=log "Deleted pod: *" as pod
  | parse field=log "* *       " as code,time
```

**Kubernetes - Control Plane/15 Kubernetes - Controller Manager/Scale Operations**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" Scaled
| json field=_raw "log" as log
| parse regex field=log "^(?<severity>.)(?:[0-9])"
| where severity == "I"
| parse field=log "Scaled * replica set * to *" as direction,replica_set,scaled_to
```

**Kubernetes - Control Plane/15 Kubernetes - Controller Manager/Severity Breakdown**
```
	_collector="Labs - Falco" OR _collector="prod01.travellogic.info" 
	| json field=_raw "log" as log
	| parse regex field=log "^(?<severity>.)(?:[0-9])"
```

**Kubernetes - Control Plane/15 Kubernetes - Controller Manager/Severity Over Time**
```
	_collector="Labs - Falco" OR _collector="prod01.travellogic.info" 
	| json field=_raw "log" as log
	| parse regex field=log "^(?<severity>.)(?:[0-9])"
```

**Kubernetes - Control Plane/16 Kubernetes - etcd/Average Time Spent in Scheduled Compaction**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info"
| json field=_raw "log" as log
| parse "* I | mvcc: finished scheduled compaction at * (took *ms)" as timestamp,complated_at,time_spent
```

**Kubernetes - Control Plane/16 Kubernetes - etcd/Most Recent Warnings**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" !("scheduled compaction")
| json field=_raw "log" as log 
| parse field=log "* * * " as date,time, severity
```

**Kubernetes - Control Plane/18 Kubernetes - Kube System/Error Messages**
```
 _collector="Labs - Falco" OR _collector="prod01.travellogic.info" 
| parse "\"log\":\"*       *\"" as log_code,log_message
| parse field=log_message "* *.*:*]*" as step, resource, action, step_code, msg
| parse field=log_code "* *" as severity, timestmp
```

**Kubernetes - Control Plane/18 Kubernetes - Kube System/Error Stream**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" error
| json field=_raw "timestamp"
| json field=_raw "log"
| parse regex field=log "^(?<severity>.)(?:[0-9])"
```

**Kubernetes - Control Plane/18 Kubernetes - Kube System/Message Breakdown by Container**
```
 _collector="Labs - Falco" OR _collector="prod01.travellogic.info" 
| parse "\"log\":\"*       *\"" as log_code,log_message
| parse field=log_message "* *.*:*]*" as step, resource, action, step_code, specific_message
```

**Kubernetes - Control Plane/18 Kubernetes - Kube System/System Message Breakdown**
```
 _collector="Labs - Falco" OR _collector="prod01.travellogic.info"
| parse "\"log\":\"*       *\"" as log_code,log_message
| parse field=log_message "* *.*:*]*" as step, resource, action, step_code, log_message_spec
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Alerts by Priority**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output
| json field=_raw "$['log']['output_fields']['ka.user.name']" as user_name
| json field=_raw "log.priority" as priority
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Anonymous Request Allowed**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Attach to cluster-admin Role**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Clusterrole Created**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Clusterrole Deleted**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/ClusterRole With Pod Exec Created**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/ClusterRole With Wildcard Created**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/ClusterRole With Write Privileges Created**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Clusterrolebinding Created**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Clusterrolebinding Deleted**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Create Disallowed Pod**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Create HostNetwork Pod**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Create NodePort Service**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Create Privileged Pod**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Create Sensitive Mount Pod**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Deleted**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Events by User**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output
| json field=_raw "log.priority" as priority
| json field=_raw "log.rule" as rule
//| where rule="All K8s Audit Events"
| json field=_raw "$['log']['output_fields']['ka.user.name']" as user_name
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Exec Pod**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/K8s ConfigMap Created**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/K8s Deployment Created**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/K8s Deployment Deleted**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/K8s Namespace Created**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/K8s Namespace Deleted**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/K8s Service Created**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/K8s Service Deleted**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/K8s Serviceaccount Created**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/K8s Serviceaccount Deleted**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Kubernetes Rules Triggerred**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output
| json field=_raw "log.priority" as priority
| json field=_raw "log.rule" as rule
| json field=_raw "log.time" as time
| json field=_raw "log.output" as output
| json field=_raw "$['log']['output_fields']['ka.user.name']" as user_name
| json field=_raw "$['log']['output_fields']['ka.target.name']" as target_name
| json field=_raw "$['log']['output_fields']['ka.target.namespace']" as target_namespace
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Modify Configmap With Private Credentials**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Operation by a disallowed K8s User**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Pod Created in Kube Namespace**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Service Account Created in Kube Namespace**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output 
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```

**Kubernetes - Control Plane/20 Kubernetes - Security Audit Events/Top 10 Kubernetes Rules Triggered**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" ka output_fields priority output
| json field=_raw "log.priority" as priority
| json field=_raw "log.rule" as rule
| json field=_raw "$['log']['output_fields']['ka.user.name']" as ka_user_name
```

**Kubernetes - Control Plane/21 Kubernetes CP - API Server/Error Logs**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" (error OR warning)
| json field=_raw "timestamp"
| json field=_raw "log"
| parse regex field=log "^(?<severity>.)(?:[0-9])"
```

**Kubernetes - Control Plane/21 Kubernetes CP - API Server/Severity Breakdown**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info"
| json field=_raw "timestamp"
| json field=_raw "log"
| parse regex field=log "^(?<severity>.)(?:[0-9])"
```

**Kubernetes - Control Plane/21 Kubernetes CP - API Server/Severity Over Time**
```
_collector="Labs - Falco" OR _collector="prod01.travellogic.info" 
| json field=_raw "timestamp"
| json field=_raw "log"
| parse regex field=log "^(?<severity>.)(?:[0-9])"
```


