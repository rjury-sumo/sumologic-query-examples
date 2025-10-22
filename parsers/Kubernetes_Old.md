# Parsers For Kubernetes_Old

**Kubernetes_Old/Kubernetes - Cluster/Cluster Events (Latest 100)**
```
*events* cluster={{cluster}}
| json field=_raw "object.reason" as reason
| json field=_raw "object.type"
| limit 100
| json field=_raw "object.involvedObject.kind" as kind nodrop
```

**Kubernetes_Old/Kubernetes - Cluster/Cluster Logs (Latest 100 Logs)**
```
cluster={{cluster}}
| json  "log" as msg
```

**Kubernetes_Old/Kubernetes - Cluster/Error Logs (Latest 100 Errors)**
```
cluster={{cluster}} (error or critical)
| json  "log" as msg
```

**Kubernetes_Old/Kubernetes - Container/Container Error Logs (Latest 100 Errors)**
```
cluster={{cluster}} namespace={{namespace}} pod={{pod}} container={{container}} (error or critical)
| json field=_raw "stream" as stream
| json  "log" as msg
```

**Kubernetes_Old/Kubernetes - Container/Container Logs (Latest 100 Logs)**
```
cluster={{cluster}} namespace={{namespace}} pod={{pod}} container={{container}} 
| json  "log" as msg
```

**Kubernetes_Old/Kubernetes - Container/Container Pod Events (Latest 100)**
```
*events* cluster={{cluster}}
| json  "object.metadata.namespace" as namespace
| where namespace matches "{{namespace}}"
| json  "object.involvedObject.name" as name
| json field=_raw "object.involvedObject.kind" as kind
| where name matches "{{pod}}" and kind matches "Pod"
| json  "object.lastTimestamp" as lastTimestamp
| json  "object.message" as message
```

**Kubernetes_Old/Kubernetes - Container/Container Pod Events Over Time**
```
*events* cluster={{cluster}}
| json  "object.metadata.namespace" as namespace
| where namespace matches "{{namespace}}"
| json  "object.involvedObject.name" as name
| json field=_raw "object.involvedObject.kind" as kind
```

**Kubernetes_Old/Kubernetes - Daemonsets - Overview/Errors  (Latest 100 Errors)**
```
cluster={{cluster}} daemonset={{daemonset}} error
| json  "log" as msg
```

**Kubernetes_Old/Kubernetes - Daemonsets - Overview/Logs  (Latest 100 Logs)**
```
cluster={{cluster}} daemonset={{daemonset}}
| json  "log" as msg
```

**Kubernetes_Old/Kubernetes - Deployment/Errors  (Latest 100 Errors)**
```
cluster={{cluster}} namespace={{namespace}} deployment={{deployment}} pod=* error
| json  "log" as msg
```

**Kubernetes_Old/Kubernetes - Deployment/Logs (Latest 100 Logs)**
```
cluster={{cluster}} namespace={{namespace}} deployment={{deployment}} pod=*
| json  "log" as msg
```

**Kubernetes_Old/Kubernetes - HPA/Events (Latest 100)**
```
*events*
| json field=_raw "object.reason" as reason
| json field=_raw "object.type"
| where %"object.type" != "Normal"
| json field=_raw "object.involvedObject.kind" as kind
| where kind = "HorizontalPodAutoscaler"
| json field=_raw "object.message" as message
```

**Kubernetes_Old/Kubernetes - Namespace/Errors  (Latest 100 Errors)**
```
cluster={{cluster}} namespace={{namespace}} pod=* error
| json  "log" as msg
```

**Kubernetes_Old/Kubernetes - Namespace/Events in Namespace ( Latest 100 Events)**
```
*events* cluster={{cluster}}
| limit 100
| json  "object.involvedObject.namespace","object.involvedObject.name","type", "object.message", "object.count" as object_namespace,objectName, type, message, object_count
```

**Kubernetes_Old/Kubernetes - Namespace/Events Over Time**
```
*events* cluster={{cluster}}
| json  "object.metadata.namespace" as namespace
| where namespace matches "{{namespace}}"
| json  "object.involvedObject.name" as name
| json field=_raw "object.involvedObject.kind" as kind
```

**Kubernetes_Old/Kubernetes - Namespace/Logs (Latest 100 Logs)**
```
cluster={{cluster}} namespace={{namespace}} pod=*
| json  "log" as msg
```

**Kubernetes_Old/Kubernetes - Node/Events over Time**
```
*events* cluster={{cluster}}
| json  "object.involvedObject.name" as name
| json field=_raw "object.involvedObject.kind" as kind
```

**Kubernetes_Old/Kubernetes - Node/Kubelet Logs (Latest 100 Logs)**
```
*kubelet*  {{node}}
| json "MESSAGE", "_HOSTNAME" as log, node
```

**Kubernetes_Old/Kubernetes - Node/Pod Error Logs (Latest 100 Errors)**
```
cluster={{cluster}} node={{node}} (error or critical)
| json  "log" as msg
```

**Kubernetes_Old/Kubernetes - Node/Pod Events (Latest 100)**
```
*events* cluster={{cluster}}
| json  "object.metadata.namespace" as namespace
| json  "object.involvedObject.name" as name
| json  "object.lastTimestamp" as lastTimestamp
| json  "object.message" as message
```

**Kubernetes_Old/Kubernetes - Node/Pod Logs (Latest 100 Logs)**
```
cluster={{cluster}} node={{node}} pod=*
| json  "log" as msg
```

**Kubernetes_Old/Kubernetes - Pod/Error Logs (Latest 100 Errors)**
```
cluster={{cluster}} namespace={{namespace}} pod={{pod}} (error or critical)
| json  "log" as msg
```

**Kubernetes_Old/Kubernetes - Pod/Events Over Time**
```
*events* cluster={{cluster}}
| json  "object.metadata.namespace" as namespace
| where namespace matches "{{namespace}}"
| json  "object.involvedObject.name" as name
| json field=_raw "object.involvedObject.kind" as kind
```

**Kubernetes_Old/Kubernetes - Pod/Logs (Latest 100 Logs)**
```
cluster={{cluster}} namespace={{namespace}} pod={{pod}}
| json  "log" as msg
```

**Kubernetes_Old/Kubernetes - Pod/Pod Events (Latest 100 Events)**
```
*events* cluster={{cluster}}
| json  "object.metadata.namespace" as namespace
| where namespace matches "{{namespace}}"
| json  "object.involvedObject.name" as name
| json field=_raw "object.involvedObject.kind" as kind
| where name matches "{{pod}}" and kind matches "Pod*"
| json  "object.lastTimestamp" as lastTimestamp
| json  "object.message" as message
```

**Kubernetes_Old/Kubernetes - Security Overview/Alerts**
```
*falco* output_fields rule priority output
| json  "log.priority" as priority
```

**Kubernetes_Old/Kubernetes - Security Overview/Critical Alerts**
```
*falco* output_fields rule priority output
| json  "log.priority" as priority
```

**Kubernetes_Old/Kubernetes - Security Overview/Emergency Alerts**
```
*falco* output_fields rule priority output 
| json  "log.priority" as priority
```

**Kubernetes_Old/Kubernetes - Security Overview/Emergency, Alert, Critical and Error Events Timeline**
```
*falco* output_fields rule priority output 
| json  "log.priority" as priority
```

**Kubernetes_Old/Kubernetes - Security Overview/Errors**
```
*falco* output_fields rule priority output 
| json  "log.priority" as priority
```

**Kubernetes_Old/Kubernetes - Security Overview/Events Timeline**
```
*falco* output_fields rule priority output 
| json  "log.priority" as priority
```

**Kubernetes_Old/Kubernetes - Security Overview/Rules Triggered  by Priority**
```
*falco* output_fields rule priority output 
| json  "log.priority" as priority
```

**Kubernetes_Old/Kubernetes - Security Overview/Rules Triggered  by Process**
```
*falco* output_fields rule priority output 
| json  "log.priority" as priority
| json "log.rule" as rule
| json  "$['log']['output_fields']['proc.cmdline']" as proc_cmdline nodrop
| json  "$['log']['output_fields']['proc.name']" as proc_name nodrop
| json  "$['log']['output_fields']['proc.pcmdline']" as proc_parent_cmdline nodrop
| json  "$['log']['output_fields']['proc.pname']" as proc_parent_name nodrop
```

**Kubernetes_Old/Kubernetes - Security Overview/Rules Triggered by Namespace**
```
*falco* output_fields rule priority output 
| json  "log.priority" as priority
| json field=_raw "$['log']['output_fields']['k8s.ns.name']" as namespace
```

**Kubernetes_Old/Kubernetes - Security Overview/Rules Triggered by Parent Process**
```
*falco* output_fields rule priority output 
| json  "log.priority" as priority
| json "log.rule" as rule
| json  "$['log']['output_fields']['proc.cmdline']" as proc_cmdline nodrop
| json  "$['log']['output_fields']['proc.name']" as proc_name nodrop
| json  "$['log']['output_fields']['proc.pcmdline']" as proc_parent_cmdline nodrop
| json  "$['log']['output_fields']['proc.pname']" as proc_parent_name nodrop
```

**Kubernetes_Old/Kubernetes - Security Overview/Rules Triggered by Pod**
```
*falco* output_fields rule priority output 
| json  "log.priority" as priority
```

**Kubernetes_Old/Kubernetes - Security Overview/Rules Triggered by User**
```
*falco* output_fields rule priority output 
| json  "log.priority" as priority
| json  "$['log']['output_fields']['user.name']" as User nodrop
```

**Kubernetes_Old/Kubernetes - Security Overview/Top 10 Rules Triggered**
```
*falco* output_fields rule priority output 
| json  "log.priority" as priority
| json  "log.rule" as rule
```

**Kubernetes_Old/Kubernetes - Security Overview/Total Events**
```
*falco* output_fields rule priority output
| json  "log.priority" 
```

**Kubernetes_Old/Kubernetes - Security Rules Triggered/Change thread namespace**
```
*falco* cluster={{cluster}} output_fields rule priority output 
 | json  "log.priority" as priority 
| json  "log.rule" as rule
```

**Kubernetes_Old/Kubernetes - Security Rules Triggered/Create files below dev**
```
*falco* cluster={{cluster}} output_fields rule priority output 
 | json  "log.priority" as priority 
| json  "log.rule" as rule
```

**Kubernetes_Old/Kubernetes - Security Rules Triggered/DB program spawned process**
```
*falco* cluster={{cluster}} output_fields rule priority output 
 | json  "log.priority" as priority 
| json  "log.rule" as rule
```

**Kubernetes_Old/Kubernetes - Security Rules Triggered/Mkdir binary dirs**
```
*falco* cluster={{cluster}} output_fields rule priority output 
 | json  "log.priority" as priority 
| json  "log.rule" as rule
```

**Kubernetes_Old/Kubernetes - Security Rules Triggered/Modify binary dirs**
```
*falco* cluster={{cluster}} output_fields rule priority output 
 | json  "log.priority" as priority 
| json  "log.rule" as rule
```

**Kubernetes_Old/Kubernetes - Security Rules Triggered/Non sudo setuid**
```
*falco* cluster={{cluster}} output_fields rule priority output 
 | json  "log.priority" as priority 
| json  "log.rule" as rule
```

**Kubernetes_Old/Kubernetes - Security Rules Triggered/Read sensitive file untrusted**
```
*falco* cluster={{cluster}} output_fields rule priority output 
 | json  "log.priority" as priority 
| json  "log.rule" as rule
```

**Kubernetes_Old/Kubernetes - Security Rules Triggered/Rules Triggered**
```
*falco* cluster={{cluster}} output_fields rule priority output 
| json  "log.priority" as priority
| json  "log.rule" as rule
| json  "log.time" as time
| json  "$['log']['output_fields']['proc.cmdline']" as proc_cmdline nodrop
| json  "$['log']['output_fields']['proc.name']" as proc_name nodrop
| json  "$['log']['output_fields']['user.name']" as user_name nodrop
| json  "log.output" as output
| json "$['log']['output_fields']['k8s.ns.name']" as namespace
```

**Kubernetes_Old/Kubernetes - Security Rules Triggered/Run shell untrusted**
```
*falco* cluster={{cluster}} output_fields rule priority output 
 | json  "log.priority" as priority 
| json  "log.rule" as rule
```

**Kubernetes_Old/Kubernetes - Security Rules Triggered/Shell Configuration Modifications**
```
*falco* cluster={{cluster}} output_fields rule priority output 
 | json  "log.priority" as priority 
| json  "log.rule" as rule
```

**Kubernetes_Old/Kubernetes - Security Rules Triggered/System Procs Network Activity Alerts**
```
*falco* cluster={{cluster}} output_fields rule priority output 
 | json  "log.priority" as priority 
| json  "log.rule" as rule
```

**Kubernetes_Old/Kubernetes - Security Rules Triggered/System user interactive**
```
*falco* cluster={{cluster}} output_fields rule priority output 
 | json  "log.priority" as priority 
| json  "log.rule" as rule
```

**Kubernetes_Old/Kubernetes - Security Rules Triggered/Write below binary dir**
```
*falco* cluster={{cluster}} output_fields rule priority output 
 | json  "log.priority" as priority 
| json  "log.rule" as rule
```

**Kubernetes_Old/Kubernetes - Security Rules Triggered/Write below etc**
```
*falco* cluster={{cluster}} output_fields rule priority output 
 | json  "log.priority" as priority 
| json  "log.rule" as rule
```

**Kubernetes_Old/Kubernetes - Security Rules Triggered/Write below rpm database**
```
*falco* cluster={{cluster}} output_fields rule priority output 
 | json  "log.priority" as priority 
| json  "log.rule" as rule
```

**Kubernetes_Old/Kubernetes - Service/Errors  (Latest 100 Errors)**
```
cluster={{cluster}} namespace={{namespace}} service={{service}} pod=* error
| json  "log" as msg
```

**Kubernetes_Old/Kubernetes - Service/Logs (Latest 100 Logs)**
```
cluster={{cluster}} namespace={{namespace}} service={{service}} pod=*
| json  "log" as msg
```

**Kubernetes_Old/Kubernetes - StatefulSets - Overview/Errors  (Latest 100 Errors)**
```
cluster={{cluster}} statefulset={{statefulset}} (error or critical)
| json  "log" as msg
```

**Kubernetes_Old/Kubernetes - StatefulSets - Overview/Events Over Time**
```
*events* cluster={{cluster}}
| json  "object.involvedObject.name" as name
```

**Kubernetes_Old/Kubernetes - StatefulSets - Overview/Logs  (Latest 100 Logs)**
```
cluster={{cluster}} statefulset={{statefulset}}
| json  "log" as msg
```


