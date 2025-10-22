# Parsers For Azure Kubernetes Service (AKS) - Control Plane

**Azure Kubernetes Service (AKS) - Control Plane/AKS - API Server/API Server Request Latency by Method**
```
_sourceCategory={{Logsdatasource}}  "kube-apiserver"	
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-apiserver"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
| parse regex field=log_msg "(?<method>\S+)\s(?<url>\S+)\s\((?<latency>\S+)ms\)\s(?<status_code>\d+)\s\[(?<k8_resource>.*)\s(?<ip>.+):(?<port>\d+)\]"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - API Server/API Server Request Rates by Clients**
```
_sourceCategory={{Logsdatasource}}  "kube-apiserver" 
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-apiserver"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
| parse regex field=log_msg "(?<method>\S+)\s(?<url>\S+)\s\((?<latency>\S+)ms\)\s(?<status_code>\d+)\s\[(?<user_agent>.*)\s(?<ip>.+):(?<port>\d+)\]"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - API Server/API Server Success Request Rates**
```

_sourceCategory={{Logsdatasource}}  "kube-apiserver" 
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-apiserver"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
| parse regex field=log_msg "(?<method>\S+)\s(?<url>\S+)\s\((?<latency>\S+)ms\)\s(?<status_code>\d+)\s\[(?<k8_resource>.*)\s(?<ip>.+):(?<port>\d+)\]"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - API Server/API Server Successful vs Failure Request Rates**
```
_sourceCategory={{Logsdatasource}}  "kube-apiserver"	
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-apiserver"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
| parse regex field=log_msg "(?<method>\S+)\s(?<url>\S+)\s\((?<latency>\S+)ms\)\s(?<status_code>\d+)\s\[(?<k8_resource>.*)\s(?<ip>.+):(?<port>\d+)\]"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - API Server/Autoscaler Status Code Trend this Period**
```
_sourceCategory={{Logsdatasource}}  "kube-apiserver"	
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-apiserver"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
| parse regex field=log_msg "(?<method>\S+)\s(?<url>\S+)\s\((?<perf>\S+)\)\s(?<status_code>\d+)\s\[(?<k8_resource>.*)\s(?<ip>.+):(?<port>\d+)\]"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - API Server/Autoscaler URLs with Problem Status Codes**
```
_sourceCategory={{Logsdatasource}}  "kube-apiserver"	
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-apiserver"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
| parse regex field=log_msg "(?<method>\S+)\s(?<url>\S+)\s\((?<perf>\S+)\)\s(?<status_code>\d+)\s\[(?<k8_resource>.*)\s(?<ip>.+):(?<port>\d+)\]"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - API Server/Error Log Events**
```
_sourceCategory={{Logsdatasource}}  "kube-apiserver"	
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-apiserver"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - API Server/Severity Breakdown**
```
_sourceCategory={{Logsdatasource}}  "kube-apiserver"	
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-apiserver"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - API Server/Severity Over Time**
```
_sourceCategory={{Logsdatasource}}  "kube-apiserver"	
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-apiserver"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - API Server/Status Code Over Time**
```
_sourceCategory={{Logsdatasource}}  "kube-apiserver"	
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-apiserver"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
| parse regex field=log_msg "(?<method>\S+)\s(?<url>\S+)\s\((?<perf>\S+)\)\s(?<status_code>\d+)\s\[(?<k8_resource>.*)\s(?<ip>.+):(?<port>\d+)\]"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - API Server/Top 10 URLS with Problem Status Codes**
```
_sourceCategory={{Logsdatasource}}  "kube-apiserver"	
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-apiserver"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
| parse regex field=log_msg "(?<method>\S+)\s(?<url>\S+)\s\((?<perf>\S+)\)\s(?<status_code>\d+)\s\[(?<k8_resource>.*)\s(?<ip>.+):(?<port>\d+)\]"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - API Server/Top URLS with Non-200**
```
_sourceCategory={{Logsdatasource}}  "kube-apiserver"	
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-apiserver"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
| parse regex field=log_msg "(?<method>\S+)\s(?<url>\S+)\s\((?<perf>\S+)\)\s(?<status_code>\d+)\s\[(?<k8_resource>.*)\s(?<ip>.+):(?<port>\d+)\]"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - Controller Manager/Error Log Stream**
```
_sourceCategory={{Logsdatasource}}  ("kube-controller-manager") 
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-controller-manager"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - Controller Manager/Error Message Count**
```

_sourceCategory={{Logsdatasource}}  ("kube-controller-manager") 
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-controller-manager"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - Controller Manager/Pods Created**
```
_sourceCategory={{Logsdatasource}}  "kube-controller-manager"	Created pod
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-controller-manager"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
| parse regex field=log "(?<misc>.*)  (?<msg>.*)"
| parse regex field=msg "Created pod: (?<pod_name>.*)"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - Controller Manager/Pods Deleted**
```
_sourceCategory={{Logsdatasource}}  "kube-controller-manager"	Deleted pod
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-controller-manager"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
| parse regex field=log "(?<misc>.*)  (?<msg>.*)"
| parse regex field=msg "Deleted pod: (?<pod_name>.*)"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - Controller Manager/Scale Operations**
```
_sourceCategory={{Logsdatasource}}   ("kube-controller-manager"	and ScalingReplicaSet and Scaled) 
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-controller-manager"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
| timeslice 1h
| parse regex field=log "(?<misc>.*)  (?<msg>.*)"
| parse regex field=msg "(?<misc_1>.*)Scaled (?<direction>.*) replica set (?<replica_set>.*) to (?<scaled_to>[\d]+)"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - Controller Manager/Severity Breakdown**
```
_sourceCategory={{Logsdatasource}}  ("kube-controller-manager") 
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-controller-manager"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - Controller Manager/Severity Over Time**
```
_sourceCategory={{Logsdatasource}}  ("kube-controller-manager") 
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-controller-manager"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - Scheduler/Error Messages**
```
_sourceCategory={{Logsdatasource}}  "kube-scheduler"
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-scheduler"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - Scheduler/Severity Breakdown**
```
_sourceCategory={{Logsdatasource}}  "kube-scheduler"
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-scheduler"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
```

**Azure Kubernetes Service (AKS) - Control Plane/AKS - Scheduler/Severity Over Time**
```
_sourceCategory={{Logsdatasource}}  "kube-scheduler"
| json "properties.log", "category", "time", "properties.pod", "resourceId" as log, category, time, pod, resourceId
| where category ="kube-scheduler"
| parse regex field=log "(?<severity>W|I|F|E)(?<tt>[\S]+) (?<times>[\d:.]+)[\s]+(?<log_msg>.*)"
| parse regex field=resourceId "RESOURCEGROUPS\/(?<resource_grp>[\S]+)\/PROVIDERS\/MICROSOFT\.CONTAINERSERVICE\/MANAGEDCLUSTERS\/(?<cluster>[\S]+)"
```


