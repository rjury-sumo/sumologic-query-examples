# Parsers For Google Kubernetes Engine (GKE) - Control Plane

## Parser:
```
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "involvedObject.kind" as message, kind
| json field=_raw "message.data.jsonPayload.message" as log
| parse field=log "Created pod: *" as pod
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "involvedObject.kind", "involvedObject.name" as message, kind, pod
| json field=_raw "message.data.jsonPayload.involvedObject.name"
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data.resource.labels", "message.data.severity" as labels, severity
| json field=labels "project_id", "cluster_name" as project, cluster
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "reason", "involvedObject.kind", "involvedObject.name" as message, reason, kind, pod
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "reason", "involvedObject.name" as message, reason, pod
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "reason"
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "reason", "involvedObject.kind", "involvedObject.name" as reason, kind, pod
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"methodName\":\"(?<methodName>[^\"]+)\"" 
| parse regex "\"principalEmail\":\"(?<principalEmail>[^\"]+)\"" 
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"methodName\":\"(?<methodName>[^\"]+)\"" 
| parse regex "\"principalEmail\":\"(?<user>[^\"]+)\"" 
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"principalEmail\":\"(?<principalEmail>[^\"]+)\"" 
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"resourceName\":\"(?<resourceName>[^\"]+)\"" 
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data.resource.type", "message.data.severity" as type, severity
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "involvedObject.kind", "involvedObject.name", "message" as kind, pod, message
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data.resource.type", "message.data.severity" as type, severity
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "reason", "involvedObject.kind", "involvedObject.name" as reason, kind, pod
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data.resource.type", "message.data.severity", "message.data.timestamp" as type, severity, timestamp
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "involvedObject.kind", "involvedObject.name" as message, kind, pod
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data.resource.type", "message.data.severity", "message.data.timestamp" as type, severity, timestamp
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "involvedObject.kind", "involvedObject.name" as message, kind, pod
| parse regex field=message "assigned \S+ to (?<node>\S+)"
| json field=payload "reason" as reason
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data.resource.type", "message.data.severity", "message.data.timestamp" as type, severity, timestamp
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "involvedObject.kind", "involvedObject.name", "source.host" as message, kind, pod, node
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data.resource.type", "message.data.severity", "message.data.timestamp" as type, severity, timestamp
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json field=_raw "message.data.jsonPayload.metadata.namespace" as namespace
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "involvedObject.kind", "involvedObject.name" as message, kind, pod
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data.resource.type", "message.data.timestamp" as type, timestamp
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "involvedObject.kind", "involvedObject.name" as message, kind, name
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data.severity" as severity
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data" as data
| json field= data "resource.type" as type  
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json field=data "severity", "resource.labels.cluster_name", "resource.labels" as severity, cluster, labels
| json field=labels "project_id" as project
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json "message.data" as data
| json field=data "resource.type" as type  
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json field=data "resource.labels.project_id", "resource.labels.cluster_name", "resource.labels.", "severity", "jsonPayload.source.host" as project, cluster, labels, severity,node
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json field=_raw "message.data.jsonPayload.message" as log
| json field=_raw "message.data.severity" as severity
| parse field=log "Scaled * replica set * to *" as direction,replica_set,scaled_to
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json field=_raw "message.data.jsonPayload.message", "message.data.severity"  as log, severity
| parse field=log "Scaled * replica set * to *" as direction,replica_set,size
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json field=_raw "message.data.protoPayload.request.kind" as kind | count by kind | `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json field=_raw "message.data.resource.labels.cluster_name" as cluster
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json field=_raw "message.data.resource.type", "message.data.protoPayload.authenticationInfo.principalEmail","message.data.protoPayload.request.metadata.name", "message.data.protoPayload.request.metadata.namespace", "message.data.resource.labels.cluster_name", "message.data.logName","message.data.protoPayload.methodName", "message.data.protoPayload.request.kind" as type, created_by, name, namespace, cluster, log_name, methodName,  component
| json field=_raw "message.data.protoPayload.request.spec.replicas" as replicas nodrop
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| json field=_raw "message.data.resource.type", "message.data.protoPayload.response.metadata.name", "message.data.logName", "message.data.protoPayload.methodName" as type,name, log_name, methodName 
| json field=_raw "message.data.protoPayload.authenticationInfo.principalEmail", "message.data.protoPayload.response.metadata.namespace", "message.data.protoPayload.response.kind", "message.data.resource.labels.cluster_name"  as modified_by, namespace, component, cluster nodrop
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels" as labels
| json field=labels "project_id", "cluster_name" as project, cluster
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels" as labels
| json field=labels "project_id", "cluster_name" as project, cluster
| parse regex "\"message\":\"[^\"]* assigned (?<pod>[^\" ]+) to (?<node>[^\" ]+)"
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.jsonPayload.reason", "message.data.jsonPayload.source.host" as labels, reason,node
| json field=labels "project_id", "cluster_name" as project, cluster
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.jsonPayload.source.host" as labels, node
| json field=labels "project_id", "cluster_name" as project, cluster
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.jsonPayload.source.host", "message.data.severity" as labels, node, severity
| json field=labels "project_id", "cluster_name" as project, cluster
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "reason", "source.host" as reason, node
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.jsonPayload", "message.data.severity" as labels, payload, severity
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "reason", "source.host" as reason, node
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.severity" as labels, severity
| json field=labels "project_id", "cluster_name" as project, cluster
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.timestamp", "message.data.jsonPayload.message" as labels, timestamp, message
| json field=labels "project_id", "cluster_name" as project, cluster
| parse regex "\"message\":\"[^\"]* assigned (?<pod>[^\" ]+) to (?<node>[^\" ]+)"
| parse regex field=message "[^\"]* assigned (?<pod>[^\" ]+) to (?<node>[^\" ]+)"
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.severity", "message.data.jsonPayload.message", "message.data.timestamp" as labels, severity, message, timestamp
| json field=labels "project_id", "cluster_name", "node_name" as project, cluster, node
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.severity", "message.data.jsonPayload.message", "message.data.timestamp" as labels, severity, message, timestamp 
| json field=labels "project_id", "cluster_name", "node_name" as project, cluster, node
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json field=_raw "message.data.jsonPayload.message" as message
| json "message.data.resource.labels" as labels
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=_raw "message.data.timestamp" as timestamp
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json field=_raw "message.data.jsonPayload.message" as message
| parse field=message "Created pod: *" as pod_name
| json field=_raw "message.data.timestamp" as time
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json field=_raw "message.data.jsonPayload.message" as message
| parse field=message "Deleted pod: *" as pod_name
| json field=_raw "message.data.timestamp" as time
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json field=_raw "message.data.jsonPayload.MESSAGE", "message.data.jsonPayload.PRIORITY","message.data.resource.labels.cluster_name", "message.data.resource.labels.project_id"  , "message.data.timestamp","message.data.resource.labels.node_name" as message, priority, cluster, project, timestamp, node
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json field=_raw "message.data.jsonPayload.message", "message.data.resource.labels","message.data.timestamp"  as message, labels, timestamp
| json field=labels "project_id", "cluster_name" as project, cluster
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json field=_raw "message.data.resource.type", "message.data.jsonPayload.MESSAGE", "message.data.resource.labels.cluster_name", "message.data.resource.labels.node_name", "message.data.resource.labels.project_id", "message.data.timestamp" as type,message,cluster,node, project, timestamp 
 `n```
### Use Cases:
Certificate Signing Requests, Clusters, Component Creations, Component Updates and Deletions, Container Events by Pods, Container Image Events, Created Resources by Node Over Time, Error Stream, Errors by Node Over Time, Errors by Nodes, Event Severity Trend, Events, Events and Errors Over Time, Events by Cluster Over Time, Events by Node, Events by Node Over Time, Events by Type Over Time, Killing Resources by Node Over Time, Kube-Proxy Errors, Kube-Proxy Errors by Nodes, Kubelet bootstrap identity calls, Kubelet Errors, Kubelet Errors by Nodes, Latest Status by Pods, Most Recent Scale Ups, Node authenticated requests, Pod Activity, Pod Creations, Pod Deletions, Pod Events, Pod Events by Namespace, Pod Events over Time, Pod Failure Events, Pod Failures over Time, Pods, Pods Created, Pods Deleted, RBAC Modifications, Recent Cluster Activity, Recent Scheduled Pods, Recent Scheduled Pods by Node, Scale Down Operations, Scale Operations, Scheduled Pods by Node Over Time, Scheduled Pods Over Time, Severe Message Count Last Hour, Severe Messages, Severe Messages per Node, Severity Breakdown, Severity Over Time, Top Nodes by Created, Top Nodes by Events, Top Nodes by Killing, Top Problematic Pods, Top Requests by Kind, Top Users and System Components by Pod Requests, Unauthenticated web requests


