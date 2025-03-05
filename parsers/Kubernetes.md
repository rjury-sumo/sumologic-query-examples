# Parsers For Kubernetes

## Parser:
```
| json  "log.priority" 
 
```
### Use Cases:
Cluster Events (Latest 100), Cluster Logs (Latest 100 Logs), Container Error Logs (Latest 100 Errors), Container Logs (Latest 100 Logs), Container Pod Events (Latest 100), Container Pod Events Over Time, Error Logs (Latest 100 Errors), Errors  (Latest 100 Errors), Events (Latest 100), Events in Namespace ( Latest 100 Events), Events Over Time, Events over Time, Events Over Time, Kubelet Logs (Latest 100 Logs), Logs  (Latest 100 Logs), Logs (Latest 100 Logs), Pod Error Logs (Latest 100 Errors), Pod Events (Latest 100 Events), Pod Events (Latest 100), Pod Logs (Latest 100 Logs), Total Events



## Parser:
```
| json  "log.priority" as priority
 
```
### Use Cases:
Alerts, Cluster Events (Latest 100), Cluster Logs (Latest 100 Logs), Container Error Logs (Latest 100 Errors), Container Logs (Latest 100 Logs), Container Pod Events (Latest 100), Container Pod Events Over Time, Critical Alerts, Emergency Alerts, Emergency, Alert, Critical and Error Events Timeline, Error Logs (Latest 100 Errors), Errors, Errors  (Latest 100 Errors), Events (Latest 100), Events in Namespace ( Latest 100 Events), Events Over Time, Events over Time, Events Over Time, Events Timeline, Kubelet Logs (Latest 100 Logs), Logs  (Latest 100 Logs), Logs (Latest 100 Logs), Pod Error Logs (Latest 100 Errors), Pod Events (Latest 100 Events), Pod Events (Latest 100), Pod Logs (Latest 100 Logs), Rules Triggered  by Priority, Rules Triggered  by Process, Rules Triggered by Namespace, Rules Triggered by Parent Process, Rules Triggered by Pod, Rules Triggered by User, Top 10 Rules Triggered, Total Events



## Parser:
```
| json  "log.priority" as priority
| json  "$['log']['output_fields']['user.name']" as User nodrop
 
```
### Use Cases:
Alerts, Cluster Events (Latest 100), Cluster Logs (Latest 100 Logs), Container Error Logs (Latest 100 Errors), Container Logs (Latest 100 Logs), Container Pod Events (Latest 100), Container Pod Events Over Time, Critical Alerts, Emergency Alerts, Error Logs (Latest 100 Errors), Errors, Errors  (Latest 100 Errors), Events (Latest 100), Events in Namespace ( Latest 100 Events), Events Over Time, Events over Time, Events Over Time, Kubelet Logs (Latest 100 Logs), Logs  (Latest 100 Logs), Logs (Latest 100 Logs), Pod Error Logs (Latest 100 Errors), Pod Events (Latest 100 Events), Pod Events (Latest 100), Pod Logs (Latest 100 Logs), Rules Triggered  by Priority, Rules Triggered by Namespace, Rules Triggered by Pod, Rules Triggered by User, Top 10 Rules Triggered, Total Events



## Parser:
```
| json  "log.priority" as priority
| json  "log.rule" as rule
 
```
### Use Cases:
Alerts, Cluster Events (Latest 100), Cluster Logs (Latest 100 Logs), Container Error Logs (Latest 100 Errors), Container Logs (Latest 100 Logs), Container Pod Events (Latest 100), Container Pod Events Over Time, Critical Alerts, Emergency Alerts, Error Logs (Latest 100 Errors), Errors, Errors  (Latest 100 Errors), Events (Latest 100), Events in Namespace ( Latest 100 Events), Events Over Time, Events over Time, Kubelet Logs (Latest 100 Logs), Logs  (Latest 100 Logs), Logs (Latest 100 Logs), Pod Error Logs (Latest 100 Errors), Pod Events (Latest 100 Events), Pod Events (Latest 100), Pod Logs (Latest 100 Logs), Rules Triggered  by Priority, Top 10 Rules Triggered, Total Events



## Parser:
```
| json  "log.priority" as priority
| json  "log.rule" as rule
| json  "log.time" as time
| json  "$['log']['output_fields']['proc.cmdline']" as proc_cmdline nodrop
| json  "$['log']['output_fields']['proc.name']" as proc_name nodrop
| json  "$['log']['output_fields']['user.name']" as user_name nodrop
| json  "log.output" as output
| json "$['log']['output_fields']['k8s.ns.name']" as namespace
 
```
### Use Cases:
Alerts, Cluster Events (Latest 100), Cluster Logs (Latest 100 Logs), Container Error Logs (Latest 100 Errors), Container Logs (Latest 100 Logs), Container Pod Events (Latest 100), Container Pod Events Over Time, Critical Alerts, Emergency Alerts, Emergency, Alert, Critical and Error Events Timeline, Error Logs (Latest 100 Errors), Errors, Errors  (Latest 100 Errors), Events (Latest 100), Events in Namespace ( Latest 100 Events), Events over Time, Events Over Time, Events Timeline, Kubelet Logs (Latest 100 Logs), Logs  (Latest 100 Logs), Logs (Latest 100 Logs), Pod Error Logs (Latest 100 Errors), Pod Events (Latest 100 Events), Pod Events (Latest 100), Pod Logs (Latest 100 Logs), Rules Triggered, Rules Triggered  by Priority, Rules Triggered  by Process, Rules Triggered by Namespace, Rules Triggered by Parent Process, Rules Triggered by Pod, Rules Triggered by User, Shell Configuration Modifications, Top 10 Rules Triggered, Total Events



## Parser:
```
| json  "log.priority" as priority
| json "log.rule" as rule
| json  "$['log']['output_fields']['proc.cmdline']" as proc_cmdline nodrop
| json  "$['log']['output_fields']['proc.name']" as proc_name nodrop
| json  "$['log']['output_fields']['proc.pcmdline']" as proc_parent_cmdline nodrop
| json  "$['log']['output_fields']['proc.pname']" as proc_parent_name nodrop
 
```
### Use Cases:
Alerts, Cluster Events (Latest 100), Cluster Logs (Latest 100 Logs), Container Error Logs (Latest 100 Errors), Container Logs (Latest 100 Logs), Container Pod Events (Latest 100), Container Pod Events Over Time, Critical Alerts, Emergency Alerts, Error Logs (Latest 100 Errors), Errors, Errors  (Latest 100 Errors), Events (Latest 100), Events in Namespace ( Latest 100 Events), Events over Time, Events Over Time, Kubelet Logs (Latest 100 Logs), Logs  (Latest 100 Logs), Logs (Latest 100 Logs), Pod Error Logs (Latest 100 Errors), Pod Events (Latest 100 Events), Pod Events (Latest 100), Pod Logs (Latest 100 Logs), Rules Triggered  by Priority, Rules Triggered  by Process, Rules Triggered by Namespace, Rules Triggered by Parent Process, Rules Triggered by Pod, Rules Triggered by User, Top 10 Rules Triggered, Total Events



## Parser:
```
| json  "log.priority" as priority
| json field=_raw "$['log']['output_fields']['k8s.ns.name']" as namespace
 
```
### Use Cases:
Alerts, Cluster Events (Latest 100), Cluster Logs (Latest 100 Logs), Container Error Logs (Latest 100 Errors), Container Logs (Latest 100 Logs), Container Pod Events (Latest 100), Container Pod Events Over Time, Critical Alerts, Emergency Alerts, Error Logs (Latest 100 Errors), Errors, Errors  (Latest 100 Errors), Events (Latest 100), Events in Namespace ( Latest 100 Events), Events Over Time, Events over Time, Events Over Time, Kubelet Logs (Latest 100 Logs), Logs  (Latest 100 Logs), Logs (Latest 100 Logs), Pod Error Logs (Latest 100 Errors), Pod Events (Latest 100 Events), Pod Events (Latest 100), Pod Logs (Latest 100 Logs), Rules Triggered  by Priority, Rules Triggered by Namespace, Top 10 Rules Triggered, Total Events



## Parser:
```
| json  "log.priority" as priority 
| json  "log.rule" as rule
 
```
### Use Cases:
Alerts, Change thread namespace, Cluster Events (Latest 100), Cluster Logs (Latest 100 Logs), Container Error Logs (Latest 100 Errors), Container Logs (Latest 100 Logs), Container Pod Events (Latest 100), Container Pod Events Over Time, Create files below dev, Critical Alerts, DB program spawned process, Emergency Alerts, Emergency, Alert, Critical and Error Events Timeline, Error Logs (Latest 100 Errors), Errors, Errors  (Latest 100 Errors), Events (Latest 100), Events in Namespace ( Latest 100 Events), Events Over Time, Events over Time, Events Over Time, Events Timeline, Kubelet Logs (Latest 100 Logs), Logs  (Latest 100 Logs), Logs (Latest 100 Logs), Mkdir binary dirs, Modify binary dirs, Non sudo setuid, Pod Error Logs (Latest 100 Errors), Pod Events (Latest 100 Events), Pod Events (Latest 100), Pod Logs (Latest 100 Logs), Read sensitive file untrusted, Rules Triggered, Rules Triggered  by Priority, Rules Triggered  by Process, Rules Triggered by Namespace, Rules Triggered by Parent Process, Rules Triggered by Pod, Rules Triggered by User, Run shell untrusted, Shell Configuration Modifications, System Procs Network Activity Alerts, System user interactive, Top 10 Rules Triggered, Total Events, Write below binary dir, Write below etc, Write below rpm database



## Parser:
```
| json  "log" as msg
 
```
### Use Cases:
Alerts, Change thread namespace, Cluster Events (Latest 100), Cluster Logs (Latest 100 Logs), Container Error Logs (Latest 100 Errors), Container Logs (Latest 100 Logs), Container Pod Events (Latest 100), Container Pod Events Over Time, Create files below dev, Critical Alerts, DB program spawned process, Emergency Alerts, Emergency, Alert, Critical and Error Events Timeline, Error Logs (Latest 100 Errors), Errors, Errors  (Latest 100 Errors), Events (Latest 100), Events in Namespace ( Latest 100 Events), Events Over Time, Events over Time, Events Timeline, Kubelet Logs (Latest 100 Logs), Logs  (Latest 100 Logs), Logs (Latest 100 Logs), Mkdir binary dirs, Modify binary dirs, Non sudo setuid, Pod Error Logs (Latest 100 Errors), Pod Events (Latest 100 Events), Pod Events (Latest 100), Pod Logs (Latest 100 Logs), Read sensitive file untrusted, Rules Triggered, Rules Triggered  by Priority, Rules Triggered  by Process, Rules Triggered by Namespace, Rules Triggered by Parent Process, Rules Triggered by Pod, Rules Triggered by User, Run shell untrusted, Shell Configuration Modifications, System Procs Network Activity Alerts, System user interactive, Top 10 Rules Triggered, Total Events, Write below binary dir, Write below etc, Write below rpm database



## Parser:
```
| json  "object.involvedObject.name" as name
 
```
### Use Cases:
Alerts, Change thread namespace, Cluster Events (Latest 100), Cluster Logs (Latest 100 Logs), Container Error Logs (Latest 100 Errors), Container Logs (Latest 100 Logs), Container Pod Events (Latest 100), Container Pod Events Over Time, Create files below dev, Critical Alerts, DB program spawned process, Emergency Alerts, Emergency, Alert, Critical and Error Events Timeline, Error Logs (Latest 100 Errors), Errors, Errors  (Latest 100 Errors), Events (Latest 100), Events in Namespace ( Latest 100 Events), Events over Time, Events Over Time, Events Timeline, Kubelet Logs (Latest 100 Logs), Logs  (Latest 100 Logs), Logs (Latest 100 Logs), Mkdir binary dirs, Modify binary dirs, Non sudo setuid, Pod Error Logs (Latest 100 Errors), Pod Events (Latest 100 Events), Pod Events (Latest 100), Pod Logs (Latest 100 Logs), Read sensitive file untrusted, Rules Triggered, Rules Triggered  by Priority, Rules Triggered  by Process, Rules Triggered by Namespace, Rules Triggered by Parent Process, Rules Triggered by Pod, Rules Triggered by User, Run shell untrusted, Shell Configuration Modifications, System Procs Network Activity Alerts, System user interactive, Top 10 Rules Triggered, Total Events, Write below binary dir, Write below etc, Write below rpm database



## Parser:
```
| json  "object.involvedObject.name" as name
| json field=_raw "object.involvedObject.kind" as kind
 
```
### Use Cases:
Cluster Events (Latest 100), Cluster Logs (Latest 100 Logs), Container Error Logs (Latest 100 Errors), Container Logs (Latest 100 Logs), Container Pod Events (Latest 100), Container Pod Events Over Time, Error Logs (Latest 100 Errors), Errors  (Latest 100 Errors), Events (Latest 100), Events in Namespace ( Latest 100 Events), Events Over Time, Events over Time, Logs  (Latest 100 Logs), Logs (Latest 100 Logs)



## Parser:
```
| json  "object.involvedObject.namespace","object.involvedObject.name","type", "object.message", "object.count" as object_namespace,objectName, type, message, object_count
 
```
### Use Cases:
Cluster Events (Latest 100), Cluster Logs (Latest 100 Logs), Container Error Logs (Latest 100 Errors), Container Logs (Latest 100 Logs), Container Pod Events (Latest 100), Container Pod Events Over Time, Error Logs (Latest 100 Errors), Errors  (Latest 100 Errors), Events (Latest 100), Events in Namespace ( Latest 100 Events), Logs  (Latest 100 Logs), Logs (Latest 100 Logs)



## Parser:
```
| json  "object.metadata.namespace" as namespace
| json  "object.involvedObject.name" as name
| json  "object.lastTimestamp" as lastTimestamp
| json  "object.message" as message
 
```
### Use Cases:
Cluster Events (Latest 100), Cluster Logs (Latest 100 Logs), Container Error Logs (Latest 100 Errors), Container Logs (Latest 100 Logs), Container Pod Events (Latest 100), Container Pod Events Over Time, Error Logs (Latest 100 Errors), Errors  (Latest 100 Errors), Events (Latest 100), Events in Namespace ( Latest 100 Events), Events Over Time, Events over Time, Kubelet Logs (Latest 100 Logs), Logs  (Latest 100 Logs), Logs (Latest 100 Logs), Pod Error Logs (Latest 100 Errors), Pod Events (Latest 100), Pod Logs (Latest 100 Logs)



## Parser:
```
| json  "object.metadata.namespace" as namespace
| json  "object.involvedObject.name" as name
| json field=_raw "object.involvedObject.kind" as kind
 
```
### Use Cases:
Cluster Events (Latest 100), Cluster Logs (Latest 100 Logs), Container Error Logs (Latest 100 Errors), Container Logs (Latest 100 Logs), Container Pod Events (Latest 100), Container Pod Events Over Time, Error Logs (Latest 100 Errors), Errors  (Latest 100 Errors), Events (Latest 100), Events in Namespace ( Latest 100 Events), Events Over Time, Events over Time, Events Over Time, Kubelet Logs (Latest 100 Logs), Logs  (Latest 100 Logs), Logs (Latest 100 Logs), Pod Error Logs (Latest 100 Errors), Pod Events (Latest 100 Events), Pod Events (Latest 100), Pod Logs (Latest 100 Logs)



## Parser:
```
| json  "object.metadata.namespace" as namespace
| json  "object.involvedObject.name" as name
| json field=_raw "object.involvedObject.kind" as kind
| json  "object.lastTimestamp" as lastTimestamp
| json  "object.message" as message
 
```
### Use Cases:
Cluster Events (Latest 100), Cluster Logs (Latest 100 Logs), Container Error Logs (Latest 100 Errors), Container Logs (Latest 100 Logs), Container Pod Events (Latest 100), Container Pod Events Over Time, Error Logs (Latest 100 Errors), Errors  (Latest 100 Errors), Events (Latest 100), Events in Namespace ( Latest 100 Events), Events Over Time, Events over Time, Kubelet Logs (Latest 100 Logs), Logs  (Latest 100 Logs), Logs (Latest 100 Logs), Pod Error Logs (Latest 100 Errors), Pod Events (Latest 100 Events), Pod Events (Latest 100), Pod Logs (Latest 100 Logs)



## Parser:
```
| json "MESSAGE", "_HOSTNAME" as log, node
 
```
### Use Cases:
Cluster Events (Latest 100), Cluster Logs (Latest 100 Logs), Container Error Logs (Latest 100 Errors), Container Logs (Latest 100 Logs), Container Pod Events (Latest 100), Container Pod Events Over Time, Error Logs (Latest 100 Errors), Errors  (Latest 100 Errors), Events (Latest 100), Events in Namespace ( Latest 100 Events), Events Over Time, Events over Time, Kubelet Logs (Latest 100 Logs), Logs  (Latest 100 Logs), Logs (Latest 100 Logs), Pod Error Logs (Latest 100 Errors), Pod Logs (Latest 100 Logs)



## Parser:
```
| json field=_raw "object.reason" as reason
| json field=_raw "object.type"
| json field=_raw "object.involvedObject.kind" as kind
| json field=_raw "object.message" as message
 
```
### Use Cases:
Cluster Events (Latest 100), Cluster Logs (Latest 100 Logs), Container Error Logs (Latest 100 Errors), Container Logs (Latest 100 Logs), Container Pod Events (Latest 100), Container Pod Events Over Time, Error Logs (Latest 100 Errors), Errors  (Latest 100 Errors), Events (Latest 100), Logs  (Latest 100 Logs), Logs (Latest 100 Logs)



## Parser:
```
| json field=_raw "object.reason" as reason
| json field=_raw "object.type"
| json field=_raw "object.involvedObject.kind" as kind nodrop
 
```
### Use Cases:
Cluster Events (Latest 100)



## Parser:
```
| json field=_raw "stream" as stream
| json  "log" as msg
 
```
### Use Cases:
Cluster Events (Latest 100), Cluster Logs (Latest 100 Logs), Container Error Logs (Latest 100 Errors), Error Logs (Latest 100 Errors)


