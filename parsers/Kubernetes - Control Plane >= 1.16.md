# Parsers For Kubernetes - Control Plane >= 1.16

## Parser:
```
| json  "log"
```
### Use Cases:
Alerts by Priority, Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Logs, Message Breakdown by Container, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| json field=_raw "$['log']['output_fields']['ka.user.name']" as user_name
| json field=_raw "log.priority" as priority
```
### Use Cases:
Alerts by Priority, Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Logs, Message Breakdown by Container, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| json field=_raw "log.priority" as priority
| json field=_raw "log.rule" as rule
| json field=_raw "$['log']['output_fields']['ka.user.name']" as ka_user_name
```
### Use Cases:
Alerts by Priority, Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Logs, Message Breakdown by Container, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| json field=_raw "log.priority" as priority
| json field=_raw "log.rule" as rule
| json field=_raw "$['log']['output_fields']['ka.user.name']" as user_name
```
### Use Cases:
Alerts by Priority, Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Logs, Message Breakdown by Container, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| json field=_raw "log.priority" as priority
| json field=_raw "log.rule" as rule
| json field=_raw "log.time" as time
| json field=_raw "log.output" as output
| json field=_raw "$['log']['output_fields']['ka.user.name']" as user_name
| json field=_raw "$['log']['output_fields']['ka.target.name']" as target_name
| json field=_raw "$['log']['output_fields']['ka.target.namespace']" as target_namespace
```
### Use Cases:
Alerts by Priority, Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Logs, Message Breakdown by Container, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| json field=_raw "log.priority" as priority 
| json field=_raw "log.rule" as rule
```
### Use Cases:
Alerts by Priority, Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Logs, Message Breakdown by Container, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| json field=_raw "log"
| parse regex field=log "^(?<severity>.)(?:[0-9])"
```
### Use Cases:
Alerts by Priority, Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Logs, Message Breakdown by Container, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| json field=_raw "log" as log
| parse field=log "Created job *" as job
| parse field=log "* *       " as code,time
```
### Use Cases:
Alerts by Priority, Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Logs, Message Breakdown by Container, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| json field=_raw "log" as log
| parse field=log "Created pod: *" as pod
| parse field=log "* *       " as code,time
```
### Use Cases:
Alerts by Priority, Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Logs, Message Breakdown by Container, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| json field=_raw "log" as log
| parse field=log "Deleted job *" as job_name
```
### Use Cases:
Alerts by Priority, Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Logs, Message Breakdown by Container, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| json field=_raw "log" as log
| parse field=log "Deleted pod: *" as pod
| parse field=log "* *       " as code,time
```
### Use Cases:
Alerts by Priority, Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Logs, Message Breakdown by Container, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| json field=_raw "log" as log
| parse regex field=log "^(?<severity>.)(?:[0-9])"
```
### Use Cases:
Alerts by Priority, Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Logs, Message Breakdown by Container, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| json field=_raw "log" as log
| parse regex field=log "^(?<severity>.)(?:[0-9])"
| parse field=log "Scaled * replica set * to *" as direction,replica_set,scaled_to
```
### Use Cases:
Alerts by Priority, Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Logs, Message Breakdown by Container, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| json field=_raw "timestamp"
| json field=_raw "log"
| parse regex field=log "^(?<severity>.)(?:[0-9])"
```
### Use Cases:
Alerts by Priority, Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Logs, Message Breakdown by Container, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| parse "\"log\":\"*       *\"" as log_code,log_message
| parse field=log_message "* *.*:*]*" as step, resource, action, step_code, log_message_spec
```
### Use Cases:
Alerts by Priority, Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Logs, Message Breakdown by Container, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| parse "\"log\":\"*       *\"" as log_code,log_message
| parse field=log_message "* *.*:*]*" as step, resource, action, step_code, msg
| parse field=log_code "* *" as severity, timestmp
```
### Use Cases:
Alerts by Priority, Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Logs, Message Breakdown by Container, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered



## Parser:
```
| parse "\"log\":\"*       *\"" as log_code,log_message
| parse field=log_message "* *.*:*]*" as step, resource, action, step_code, specific_message
```
### Use Cases:
Alerts by Priority, Anonymous Request Allowed, Attach to cluster-admin Role, Attach/Exec Pod, ClusterRole With Pod Exec Created, ClusterRole With Wildcard Created, ClusterRole With Write Privileges Created, Create Disallowed Pod, Create HostNetwork Pod, Create NodePort Service, Create Privileged Pod, Create Sensitive Mount Pod, Create/Modify Configmap With Private Credentials, Error Logs, Error Messages, Error Messages Count, Error Stream, Events by User, Job Creations, Job Deletions, K8s ConfigMap Created, K8s Deployment Created, K8s Deployment Deleted, K8s Namespace Created, K8s Namespace Deleted, K8s Role/Clusterrole Created, K8s Role/Clusterrole Deleted, K8s Role/Clusterrolebinding Created, K8s Role/Clusterrolebinding Deleted, K8s Service Created, K8s Service Deleted, K8s Serviceaccount Created, K8s Serviceaccount Deleted, Kubernetes Rules Triggerred, Logs, Message Breakdown by Container, Operation by a disallowed K8s User, Pod Created in Kube Namespace, Pods Created, Pods Deleted, Scale Operations, Service Account Created in Kube Namespace, Severity Breakdown, Severity Over Time, System ClusterRole Modified/Deleted, System Message Breakdown, Top 10 Kubernetes Rules Triggered


