# Parsers For Google Kubernetes Engine (GKE) - Control Plane

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Cluster Logs/Clusters**
```
_sourceCategory={{Logsdatasource}}  
//| json "message.data.resource.type", "message.data.severity", "message.data.timestamp" as type, severity, timestamp
//| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
//| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
//| json field=payload "message", "involvedObject.kind", "involvedObject.name", "source.host" as message, kind, pod, node
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Cluster Logs/Error Stream**
```
_sourceCategory={{Logsdatasource}}  error
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json field=_raw "message.data.jsonPayload.message", "message.data.resource.labels","message.data.timestamp"  as message, labels, timestamp
| json field=labels "project_id", "cluster_name" as project, cluster
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Cluster Logs/Event Severity Trend**
```
_sourceCategory={{Logsdatasource}}  logName resource severity "\"kind\":\"Event\""
| json "message.data.severity" as severity
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Cluster Logs/Events and Errors Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource severity "\"kind\":\"Event\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.severity" as labels, severity
| json field=labels "project_id", "cluster_name" as project, cluster
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Cluster Logs/Events by Cluster Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels" as labels
| json field=labels "project_id", "cluster_name" as project, cluster
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Cluster Logs/Events by Node**
```
_sourceCategory={{Logsdatasource}}  logName source reason 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload.reason", "message.data.jsonPayload.source.host" as labels, reason,node
| json field=labels "project_id", "cluster_name" as project, cluster
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Cluster Logs/Events by Type Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource type
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "reason"
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Cluster Logs/Kube-Proxy Errors**
```
_sourceCategory={{Logsdatasource}}   error
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.severity", "message.data.jsonPayload.message", "message.data.timestamp" as labels, severity, message, timestamp
| json field=labels "project_id", "cluster_name", "node_name" as project, cluster, node
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Cluster Logs/Kube-Proxy Errors by Nodes**
```
_sourceCategory={{Logsdatasource}}   error
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.severity", "message.data.jsonPayload.message", "message.data.timestamp" as labels, severity, message, timestamp 
| json field=labels "project_id", "cluster_name", "node_name" as project, cluster, node
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Cluster Logs/Kubelet Errors**
```
_sourceCategory={{Logsdatasource}}  error
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json field=_raw "message.data.jsonPayload.MESSAGE", "message.data.jsonPayload.PRIORITY","message.data.resource.labels.cluster_name", "message.data.resource.labels.project_id"  , "message.data.timestamp","message.data.resource.labels.node_name" as message, priority, cluster, project, timestamp, node
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Cluster Logs/Kubelet Errors by Nodes**
```
_sourceCategory={{Logsdatasource}}  error
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json field=_raw "message.data.jsonPayload.MESSAGE", "message.data.jsonPayload.PRIORITY","message.data.resource.labels.cluster_name", "message.data.resource.labels.project_id"  , "message.data.timestamp","message.data.resource.labels.node_name" as message, priority, cluster, project, timestamp, node
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Cluster Logs/Most Recent Scale Ups**
```
_sourceCategory={{Logsdatasource}}  logName resource Scaled
| json field=_raw "message.data.jsonPayload.message", "message.data.severity"  as log, severity
| where severity = "INFO"
| parse field=log "Scaled * replica set * to *" as direction,replica_set,size
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Cluster Logs/Recent Cluster Activity**
```
_sourceCategory={{Logsdatasource}}  logName resource type severity timestamp
| json "message.data.resource.type", "message.data.timestamp" as type, timestamp
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "involvedObject.kind", "involvedObject.name" as message, kind, name
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Cluster Logs/Scale Down Operations**
```
_sourceCategory={{Logsdatasource}}  logName resource Scaled
| json field=_raw "message.data.jsonPayload.message", "message.data.severity"  as log, severity
| where severity = "INFO"
| parse field=log "Scaled * replica set * to *" as direction,replica_set,size
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Cluster Logs/Severe Message Count Last Hour**
```
_sourceCategory={{Logsdatasource}} 
| json "message.data" as data
// match resource type and logname
| json field= data "resource.type" as type  
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/events"
// extract info and compare severity
| json field=data "severity", "resource.labels.cluster_name", "resource.labels" as severity, cluster, labels
| where severity = "ERROR" or severity = "WARNING" or severity = "CRITICAL" or severity = "EMERGENCY" or severity = "ALERT"
// extract from labels the field project
| json field=labels "project_id" as project
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Cluster Logs/Severe Messages per Node**
```
_sourceCategory={{Logsdatasource}} 
| json "message.data" as data
//check the type and logname to match 
| json field=data "resource.type" as type  
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/events"
// extract data project name cluster name label and severity to be used 
| json field=data "resource.labels.project_id", "resource.labels.cluster_name", "resource.labels.", "severity", "jsonPayload.source.host" as project, cluster, labels, severity,node
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Cluster Logs/Severity Breakdown**
```
_sourceCategory={{Logsdatasource}}  logName resource severity "\"kind\":\"Event\""
| json "message.data.severity" as severity
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Cluster Logs/Top Nodes by Events**
```
_sourceCategory={{Logsdatasource}}  
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload.source.host", "message.data.severity" as labels, node, severity
| json field=labels "project_id", "cluster_name" as project, cluster
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Controller Manager/Pods Created**
```
_sourceCategory={{Logsdatasource}}  "Created pod"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/events"
| json field=_raw "message.data.jsonPayload.message" as message
| parse field=message "Created pod: *" as pod_name
| json field=_raw "message.data.timestamp" as time
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Controller Manager/Pods Deleted**
```
_sourceCategory={{Logsdatasource}}  "Deleted pod"
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/events"
| json field=_raw "message.data.jsonPayload.message" as message
| parse field=message "Deleted pod: *" as pod_name
| json field=_raw "message.data.timestamp" as time
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Controller Manager/Scale Operations**
```
_sourceCategory={{Logsdatasource}}  logName resource Scaled
| json field=_raw "message.data.jsonPayload.message" as log
| json field=_raw "message.data.severity" as severity
| where severity = "INFO"
| parse field=log "Scaled * replica set * to *" as direction,replica_set,scaled_to
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Controller Manager/Severe Messages**
```
_sourceCategory={{Logsdatasource}}  error
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json field=_raw "message.data.jsonPayload.message" as message
| json "message.data.resource.labels" as labels
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=_raw "message.data.timestamp" as timestamp
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Controller Manager/Severity Breakdown**
```
_sourceCategory={{Logsdatasource}}  "\"kind\":\"Event\""
| json "message.data.resource.labels", "message.data.severity" as labels, severity
| json field=labels "project_id", "cluster_name" as project, cluster
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Controller Manager/Severity Over Time**
```
_sourceCategory={{Logsdatasource}}  "\"kind\":\"Event\""
| json "message.data.resource.labels", "message.data.severity" as labels, severity
| json field=labels "project_id", "cluster_name" as project, cluster
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - K8s Audit Logs/Certificate Signing Requests**
```
_sourceCategory={{Logsdatasource}}  
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"resourceName\":\"(?<resourceName>[^\"]+)\"" 
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - K8s Audit Logs/Clusters**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "message.data.resource.labels.cluster_name" as cluster
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - K8s Audit Logs/Component Creations**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "message.data.resource.type", "message.data.protoPayload.authenticationInfo.principalEmail","message.data.protoPayload.request.metadata.name", "message.data.protoPayload.request.metadata.namespace", "message.data.resource.labels.cluster_name", "message.data.logName","message.data.protoPayload.methodName", "message.data.protoPayload.request.kind" as type, created_by, name, namespace, cluster, log_name, methodName,  component
| json field=_raw "message.data.protoPayload.request.spec.replicas" as replicas nodrop
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - K8s Audit Logs/Component Updates and Deletions**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "message.data.resource.type", "message.data.protoPayload.response.metadata.name", "message.data.logName", "message.data.protoPayload.methodName" as type,name, log_name, methodName 
| json field=_raw "message.data.protoPayload.authenticationInfo.principalEmail", "message.data.protoPayload.response.metadata.namespace", "message.data.protoPayload.response.kind", "message.data.resource.labels.cluster_name"  as modified_by, namespace, component, cluster nodrop
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - K8s Audit Logs/Kubelet bootstrap identity calls**
```
_sourceCategory={{Logsdatasource}}  
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"principalEmail\":\"(?<principalEmail>[^\"]+)\"" 
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - K8s Audit Logs/Node authenticated requests**
```
_sourceCategory={{Logsdatasource}}  
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"principalEmail\":\"(?<principalEmail>[^\"]+)\"" 
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - K8s Audit Logs/RBAC Modifications**
```
_sourceCategory={{Logsdatasource}}  
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"methodName\":\"(?<methodName>[^\"]+)\"" 
| parse regex "\"principalEmail\":\"(?<principalEmail>[^\"]+)\"" 
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - K8s Audit Logs/Top Requests by Kind**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "message.data.protoPayload.request.kind" as kind | count by kind | sort by _count asc
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - K8s Audit Logs/Top Users and System Components by Pod Requests**
```
_sourceCategory={{Logsdatasource}}  "io.k8s.core.v1.pods"
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"methodName\":\"(?<methodName>[^\"]+)\"" 
| parse regex "\"principalEmail\":\"(?<user>[^\"]+)\"" 
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - K8s Audit Logs/Unauthenticated web requests**
```
_sourceCategory={{Logsdatasource}}  
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"principalEmail\":\"(?<principalEmail>[^\"]+)\"" 
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Node Logs/Created Resources by Node Over Time**
```
_sourceCategory={{Logsdatasource}}  logName reason host "\"reason\":\"Created\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload.source.host" as labels, node
| where node matches "{{node}}"
| json field=labels "project_id", "cluster_name" as project, cluster
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Node Logs/Error Stream**
```
_sourceCategory={{Logsdatasource}}   error
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json field=_raw "message.data.resource.type", "message.data.jsonPayload.MESSAGE", "message.data.resource.labels.cluster_name", "message.data.resource.labels.node_name", "message.data.resource.labels.project_id", "message.data.timestamp" as type,message,cluster,node, project, timestamp 
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Node Logs/Errors by Node Over Time**
```
_sourceCategory={{Logsdatasource}}   error
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json field=_raw "message.data.resource.type", "message.data.jsonPayload.MESSAGE", "message.data.resource.labels.cluster_name", "message.data.resource.labels.node_name", "message.data.resource.labels.project_id", "message.data.timestamp" as type,message,cluster,node, project, timestamp 
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Node Logs/Errors by Nodes**
```
_sourceCategory={{Logsdatasource}}   error
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json field=_raw "message.data.resource.type", "message.data.jsonPayload.MESSAGE", "message.data.resource.labels.cluster_name", "message.data.resource.labels.node_name", "message.data.resource.labels.project_id", "message.data.timestamp" as type,message,cluster,node, project, timestamp 
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Node Logs/Events by Node**
```
_sourceCategory={{Logsdatasource}}  jsonPayload logName source host 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "reason", "source.host" as reason, node
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Node Logs/Events by Node Over Time**
```
_sourceCategory={{Logsdatasource}}  jsonPayload logName source host 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload.source.host" as labels, node
| where node matches "{{node}}"
| json field=labels "project_id", "cluster_name" as project, cluster
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Node Logs/Killing Resources by Node Over Time**
```
_sourceCategory={{Logsdatasource}}  logName reason host "\"reason\":\"Killing\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload.source.host" as labels, node
| where node matches "{{node}}"
| json field=labels "project_id", "cluster_name" as project, cluster
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Node Logs/Recent Scheduled Pods by Node**
```
_sourceCategory={{Logsdatasource}}  logName "\"reason\":\"Scheduled\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.timestamp", "message.data.jsonPayload.message" as labels, timestamp, message
| json field=labels "project_id", "cluster_name" as project, cluster
//| parse regex "\"message\":\"[^\"]* assigned (?<pod>[^\" ]+) to (?<node>[^\" ]+)"
| parse regex field=message "[^\"]* assigned (?<pod>[^\" ]+) to (?<node>[^\" ]+)"
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Node Logs/Scheduled Pods by Node Over Time**
```
_sourceCategory={{Logsdatasource}}  logName "\"reason\":\"Scheduled\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels" as labels
| json field=labels "project_id", "cluster_name" as project, cluster
| parse regex "\"message\":\"[^\"]* assigned (?<pod>[^\" ]+) to (?<node>[^\" ]+)"
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Node Logs/Top Nodes by Created**
```
_sourceCategory={{Logsdatasource}}  logName reason host "\"reason\":\"Created\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload.source.host", "message.data.severity" as labels, node, severity
| where node matches "{{node}}"
| json field=labels "project_id", "cluster_name" as project, cluster
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Node Logs/Top Nodes by Events**
```
_sourceCategory={{Logsdatasource}}  logName reason host 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload", "message.data.severity" as labels, payload, severity
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "reason", "source.host" as reason, node
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Node Logs/Top Nodes by Killing**
```
_sourceCategory={{Logsdatasource}}  logName reason host "\"reason\":\"Killing\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\""
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload.source.host", "message.data.severity" as labels, node, severity
| where node matches "{{node}}"
| json field=labels "project_id", "cluster_name" as project, cluster
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Pod Logs/Container Events by Pods**
```
_sourceCategory={{Logsdatasource}}  jsonPayload logName resource type
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "k8s_pod" and log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "reason", "involvedObject.kind", "involvedObject.name" as message, reason, kind, pod
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Pod Logs/Container Image Events**
```
_sourceCategory={{Logsdatasource}}  jsonPayload logName resource severity timestamp type
| json "message.data.resource.type", "message.data.severity", "message.data.timestamp" as type, severity, timestamp
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/events"
| json field=_raw "message.data.jsonPayload.metadata.namespace" as namespace
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "involvedObject.kind", "involvedObject.name" as message, kind, pod
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Pod Logs/Events**
```
_sourceCategory={{Logsdatasource}}   jsonPayload logName resource type
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "reason", "involvedObject.name" as message, reason, pod
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Pod Logs/Latest Status by Pods**
```
_sourceCategory={{Logsdatasource}}  jsonPayload logName resource severity timestamp type
| json "message.data.resource.type", "message.data.severity", "message.data.timestamp" as type, severity, timestamp
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "involvedObject.kind", "involvedObject.name" as message, kind, pod
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Pod Logs/Pod Activity**
```
_sourceCategory={{Logsdatasource}}  jsonPayload logName resource severity timestamp type
| json "message.data.resource.type", "message.data.severity", "message.data.timestamp" as type, severity, timestamp
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "involvedObject.kind", "involvedObject.name" as message, kind, pod
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Pod Logs/Pod Creations**
```
_sourceCategory={{Logsdatasource}}  logName resource severity "Created pod:"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "involvedObject.kind" as message, kind
| json field=_raw "message.data.jsonPayload.message" as log
| parse field=log "Created pod: *" as pod
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Pod Logs/Pod Deletions**
```
_sourceCategory={{Logsdatasource}}  logName resource severity  "Killing container" 
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "involvedObject.kind", "involvedObject.name" as message, kind, pod
| json field=_raw "message.data.jsonPayload.involvedObject.name"
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Pod Logs/Pod Events**
```
_sourceCategory={{Logsdatasource}}  jsonPayload logName resource type
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "reason", "involvedObject.kind", "involvedObject.name" as reason, kind, pod
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Pod Logs/Pod Events by Namespace**
```
_sourceCategory={{Logsdatasource}}   jsonPayload logName resource severity timestamp type
| json "message.data.resource.type", "message.data.severity", "message.data.timestamp" as type, severity, timestamp
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/events"
| json field=_raw "message.data.jsonPayload.metadata.namespace" as namespace
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "involvedObject.kind", "involvedObject.name" as message, kind, pod
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Pod Logs/Pod Events over Time**
```
_sourceCategory={{Logsdatasource}}   jsonPayload logName resource type
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "reason", "involvedObject.name" as message, reason, pod
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Pod Logs/Pod Failure Events**
```
_sourceCategory={{Logsdatasource}}  jsonPayload logName resource severity type
| json "message.data.resource.type", "message.data.severity" as type, severity
| where severity in ("WARNING", "ERROR", "CRITICAL", "ALERT", "EMERGENCY")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "reason", "involvedObject.kind", "involvedObject.name" as reason, kind, pod
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Pod Logs/Pod Failures over Time**
```
_sourceCategory={{Logsdatasource}}   jsonPayload logName resource severity type
| json "message.data.resource.type", "message.data.severity" as type, severity
| where severity in ("WARNING", "ERROR", "CRITICAL", "ALERT", "EMERGENCY")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "involvedObject.kind", "involvedObject.name", "message" as kind, pod, message
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Pod Logs/Pods**
```
_sourceCategory={{Logsdatasource}}  jsonPayload logName resource severity timestamp type
| json "message.data.resource.type", "message.data.severity", "message.data.timestamp" as type, severity, timestamp
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
//| where type = "gke_cluster" and log_name matches "projects/*/logs/events"
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "involvedObject.kind", "involvedObject.name" as message, kind, pod
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Pod Logs/Recent Scheduled Pods**
```
_sourceCategory={{Logsdatasource}}  jsonPayload logName resource severity timestamp type
| json "message.data.resource.type", "message.data.severity", "message.data.timestamp" as type, severity, timestamp
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "involvedObject.kind", "involvedObject.name" as message, kind, pod
| parse regex field=message "assigned \S+ to (?<node>\S+)"
| where kind="Pod" or message matches "*pod*"
| json field=payload "reason" as reason
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Pod Logs/Scheduled Pods Over Time**
```
_sourceCategory={{Logsdatasource}}   jsonPayload logName resource severity timestamp type
| json "message.data.resource.type", "message.data.severity", "message.data.timestamp" as type, severity, timestamp
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "message", "involvedObject.kind", "involvedObject.name" as message, kind, pod
//| parse regex field=message "assigned \S+ to (?<node>\S+)"
| where kind="Pod" or message matches "*pod*"
| json field=payload "reason" as reason
```

**Google Kubernetes Engine (GKE) - Control Plane/GKE - Pod Logs/Top Problematic Pods**
```
_sourceCategory={{Logsdatasource}}   jsonPayload logName resource severity type
| json "message.data.resource.type", "message.data.severity" as type, severity
| where severity in ("WARNING", "ERROR", "CRITICAL", "ALERT", "EMERGENCY")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/events"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "cluster_name" as project, cluster
| json field=payload "involvedObject.kind", "involvedObject.name", "message" as kind, pod, message
```


