# Parsers For Kubernetes - Control Plane

## Parser:
```
| json field=_raw "$['log']['output_fields']['ka.user.name']" as user_name
| json field=_raw "log.priority" as priority
 `n```
### Use Cases:
Alerts by Priority, Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, Average Time Spent in Scheduled Compaction, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Message Breakdown by Container, Most Recent Warnings, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| json field=_raw "log.priority" as priority
| json field=_raw "log.rule" as rule
| json field=_raw "$['log']['output_fields']['ka.user.name']" as ka_user_name
 `n```
### Use Cases:
Average Time Spent in Scheduled Compaction, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, Message Breakdown by Container, Most Recent Warnings, Pods Created, Pods Deleted, Scale Operations, Severity Breakdown, Severity Over Time, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| json field=_raw "log.priority" as priority
| json field=_raw "log.rule" as rule
| json field=_raw "$['log']['output_fields']['ka.user.name']" as user_name
 `n```
### Use Cases:
Average Time Spent in Scheduled Compaction, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, Message Breakdown by Container, Most Recent Warnings, Pods Created, Pods Deleted, Scale Operations, Severity Breakdown, Severity Over Time, System Message Breakdown



## Parser:
```
| json field=_raw "log.priority" as priority
| json field=_raw "log.rule" as rule
| json field=_raw "log.time" as time
| json field=_raw "log.output" as output
| json field=_raw "$['log']['output_fields']['ka.user.name']" as user_name
| json field=_raw "$['log']['output_fields']['ka.target.name']" as target_name
| json field=_raw "$['log']['output_fields']['ka.target.namespace']" as target_namespace
 `n```
### Use Cases:
Average Time Spent in Scheduled Compaction, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, Kubernetes Rules Triggerred, Message Breakdown by Container, Most Recent Warnings, Pods Created, Pods Deleted, Scale Operations, Severity Breakdown, Severity Over Time, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
 `n```
### Use Cases:
Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, Average Time Spent in Scheduled Compaction, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Message Breakdown by Container, Most Recent Warnings, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| json field=_raw "log" as log
| parse "* I | mvcc: finished scheduled compaction at * (took *ms)" as timestamp,complated_at,time_spent
 `n```
### Use Cases:
Average Time Spent in Scheduled Compaction, Error Logs, Error Messages Count, Job Creations, Job Deletions, Pods Created, Pods Deleted, Scale Operations, Severity Breakdown, Severity Over Time



## Parser:
```
| json field=_raw "log" as log
| parse field=log "Created job *" as job
| parse field=log "* *       " as code,time
 `n```
### Use Cases:
Error Logs, Error Messages Count, Job Creations, Severity Over Time



## Parser:
```
| json field=_raw "log" as log
| parse field=log "Created pod: *" as pod
| parse field=log "* *       " as code,time
 `n```
### Use Cases:
Error Logs, Error Messages Count, Job Creations, Job Deletions, Pods Created, Scale Operations, Severity Breakdown, Severity Over Time



## Parser:
```
| json field=_raw "log" as log
| parse field=log "Deleted job *" as job_name
 `n```
### Use Cases:
Error Logs, Error Messages Count, Job Creations, Job Deletions, Severity Over Time



## Parser:
```
| json field=_raw "log" as log
| parse field=log "Deleted pod: *" as pod
| parse field=log "* *       " as code,time
 `n```
### Use Cases:
Error Logs, Error Messages Count, Job Creations, Job Deletions, Pods Created, Pods Deleted, Scale Operations, Severity Breakdown, Severity Over Time



## Parser:
```
| json field=_raw "log" as log
| parse regex field=log "^(?<severity>.)(?:[0-9])"
 `n```
### Use Cases:
Error Logs, Error Messages Count, Job Creations, Job Deletions, Severity Breakdown, Severity Over Time



## Parser:
```
| json field=_raw "log" as log
| parse regex field=log "^(?<severity>.)(?:[0-9])"
| parse field=log "Scaled * replica set * to *" as direction,replica_set,scaled_to
 `n```
### Use Cases:
Error Logs, Error Messages Count, Job Creations, Job Deletions, Scale Operations, Severity Breakdown, Severity Over Time



## Parser:
```
| json field=_raw "log" as log 
| parse field=log "* * * " as date,time, severity
 `n```
### Use Cases:
Average Time Spent in Scheduled Compaction, Error Logs, Error Messages Count, Job Creations, Job Deletions, Most Recent Warnings, Pods Created, Pods Deleted, Scale Operations, Severity Breakdown, Severity Over Time



## Parser:
```
| json field=_raw "timestamp"
| json field=_raw "log"
| parse regex field=log "^(?<severity>.)(?:[0-9])"
 `n```
### Use Cases:
Alerts by Priority, Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, Average Time Spent in Scheduled Compaction, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Message Breakdown by Container, Most Recent Warnings, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| parse "\"log\":\"*       *\"" as log_code,log_message
| parse field=log_message "* *.*:*]*" as step, resource, action, step_code, log_message_spec
 `n```
### Use Cases:
Average Time Spent in Scheduled Compaction, Error Logs, Error Messages, Error Messages Count, Error Stream, Job Creations, Job Deletions, Message Breakdown by Container, Most Recent Warnings, Pods Created, Pods Deleted, Scale Operations, Severity Breakdown, Severity Over Time, System Message Breakdown



## Parser:
```
| parse "\"log\":\"*       *\"" as log_code,log_message
| parse field=log_message "* *.*:*]*" as step, resource, action, step_code, msg
| parse field=log_code "* *" as severity, timestmp
 `n```
### Use Cases:
Average Time Spent in Scheduled Compaction, Error Logs, Error Messages, Error Messages Count, Job Creations, Job Deletions, Message Breakdown by Container, Most Recent Warnings, Pods Created, Pods Deleted, Scale Operations, Severity Breakdown, Severity Over Time



## Parser:
```
| parse "\"log\":\"*       *\"" as log_code,log_message
| parse field=log_message "* *.*:*]*" as step, resource, action, step_code, specific_message
 `n```
### Use Cases:
Average Time Spent in Scheduled Compaction, Error Logs, Error Messages Count, Job Creations, Job Deletions, Message Breakdown by Container, Most Recent Warnings, Pods Created, Pods Deleted, Scale Operations, Severity Breakdown, Severity Over Time


