# Parsers For VMware

**VMware/Frequent Virtual Machine Power Offs/VMware - Frequent Virtual Machine Power Offs**
```
_sourceCategory={{Logsdatasource}}  AND ("is powered off" OR "is suspended") 
 | parse "vm=*,,," as vm
 | parse "host=*,,," as esx_host
```

**VMware/Multiple Virtual Machines stopped/VMware - Multiple Virtual Machines stopped**
```
_sourceCategory={{Logsdatasource}}  AND ("is powered off" OR "is suspended") 
 | parse "vm=*,,," as vm
 | parse "host=*,,," as esx_host
```

**VMware/Overview/ESXi Hosts per Cluster**
```
_sourceCategory={{Logsdatasource}} 
 | parse "host=*,,," as esx_host
 | parse "computeResource=*,,," as cluster
```

**VMware/Overview/Infrastructure Summary**
```
_sourceCategory={{Logsdatasource}} 
 | parse "host=*,,," as esx_host
 | parse "vm=*,,," as vm
 | parse "computeResource=*,,," as cluster
```

**VMware/Overview/Most Active Users**
```
 _sourceCategory={{Logsdatasource}}  and "user="
| parse ",,,user=*,,," as user
```

**VMware/Overview/Unique Clusters**
```
_sourceCategory={{Logsdatasource}}  and ("host=")
 | parse "computeResource=*,,," as cluster 
```

**VMware/Overview/Unique ESXi Hosts**
```
_sourceCategory={{Logsdatasource}}  and ("host=")
 | parse "host=*,,," as esx_host
```

**VMware/Overview/Unique Virtual Machines**
```
_sourceCategory={{Logsdatasource}}  and ("vm=")
 | parse "vm=*,,," as vm
```

**VMware/Overview/vCenter Alarms**
```
_sourceCategory={{Logsdatasource}}  and "AlarmStatusChangedEvent"
 | parse "message=Alarm '*' on * changed from * to *,,," as alarm_mesg,hostname,old_status,new_status
 | parse "host=*,,," as esx_host nodrop
 | parse "eventType=*,,," as event_type nodrop
 | parse "vm=*,,," as vm nodrop
 | parse "computeResource=*,,," as cluster nodrop
```

**VMware/Overview/vCenter Alarms by Hosts**
```
_sourceCategory={{Logsdatasource}}  "message=Alarm"
| parse "host=*,,," as esx_host
| parse " on * " as guest_vm
| parse "message=Alarm '*'" as alarm_mesg
```

**VMware/Overview/vCenter Alarms by Hosts and VMs**
```
_sourceCategory={{Logsdatasource}}  "message=Alarm"
| parse "host=*,,," as esx_host
| parse " on * " as guest_vm
| parse "message=Alarm '*'" as alarm_mesg
```

**VMware/Overview/vCenter Tasks Trend**
```
_sourceCategory={{Logsdatasource}}  and "TaskEvent"
 | parse "message=Task:*,,," as task
 | parse "host=*,,," as esx_host nodrop
 | parse "eventType=*,,," as event_type nodrop
 | parse "vm=*,,," as vm nodrop
 | parse "computeResource=*,,," as cluster nodrop
```

**VMware/Overview/vCenter User Activity**
```
 _sourceCategory={{Logsdatasource}} 
 | parse regex "(?:message=User)\s(?<user>.*?)\s(?<task>logged out|logged in|.*)(?:\s.*,,,)"
```

**VMware/Overview/Virtual Machine Operations by User**
```
 _sourceCategory={{Logsdatasource}}  and ("VmCreatedEvent" OR "VmClonedEvent" OR ("VmMigratedEvent")  OR ("VmRemovedEvent"))
 | parse "eventType=*,,," as event_type
 | if(event_type matches "*VmCreatedEvent*" OR event_type matches "*VmClonedEvent*","creations","") as type 
 | if(event_type matches "*VmMigratedEvent*","migrations",type) as type
 | if(event_type matches "*VmRemovedEvent*","deletions",type) as type
 | parse "host=*,,," as esx_host
 | parse "user=*,,," as user
 | parse "vm=*,,," as vm 
 | parse "computeResource=*,,," as cluster
```

**VMware/Overview/Virtual Machine Operations Over Time**
```
 _sourceCategory={{Logsdatasource}}  and ("VmCreatedEvent" OR "VmClonedEvent" OR ("VmMigratedEvent") OR ("VmRemovedEvent"))
 | parse "eventType=*,,," as event_type 
 | parse "host=*,,," as esx_host nodrop
 | parse "vm=*,,," as vm nodrop
 | parse "computeResource=*,,," as cluster nodrop
```

**VMware/Overview/VM Failures by ESXi Hosts**
```
_sourceCategory={{Logsdatasource}}  and ("VmPrimaryFailoverEvent")
 | parse "message=*,,," as err_msg
 | parse "host=*,,," as esx_host
 | parse "vm=*,,," as vm
 | parse "eventType=*,,," as event_type nodrop
 | parse "computeResource=*,,," as cluster nodrop
```

**VMware/Overview/VM with Failures per ESXi Host**
```
_sourceCategory={{Logsdatasource}}  and ("error" or "fail" or "critical")
 | parse "eventType=*,,," as event_type
 | parse "host=*,,," as esx_host 
 | parse "vm=*,,," as vm 
 | parse "computeResource=*,,," as cluster nodrop
```

**VMware/Overview/vSphere Errors Across Clusters**
```
_sourceCategory={{Logsdatasource}}  and ("error" or "fail" or "critical")
 | parse "message=*,,," as err_msg
 | parse "computeResource=*,,," as cluster
 | parse "host=*,,," as esx_host nodrop
 | parse "eventType=*,,," as event_type nodrop
 | parse "vm=*,,," as vm nodrop
```

**VMware/vCenter Errors - Analysis/Clusters with Frequent Errors**
```
_sourceCategory={{Logsdatasource}}  and ("error" or "fail" or "critical")
 | parse "eventType=*,,," as event_type
 | parse "host=*,,," as esx_host 
 | parse "vm=*,,," as vm 
 | parse "computeResource=*,,," as cluster
```

**VMware/vCenter Errors - Analysis/Top 10 Host's facing Errors**
```
_sourceCategory={{Logsdatasource}}  and ("error" or "fail" or "critical")
 | parse "eventType=*,,," as event_type
 | parse "host=*,,," as esx_host 
 | parse "vm=*,,," as vm 
 | parse "computeResource=*,,," as cluster nodrop
```

**VMware/vCenter Errors - Analysis/vSphere Errors Across Clusters**
```
_sourceCategory={{Logsdatasource}}  and ("error" or "fail" or "critical")
 | parse "message=*,,," as err_msg
 | parse "computeResource=*,,," as cluster
 | parse "host=*,,," as esx_host
 | parse "eventType=*,,," as event_type
 | parse "vm=*,,," as vm nodrop
```

**VMware/vCenter Errors - Analysis/vSphere Errors Across ESXi Hosts**
```
_sourceCategory={{Logsdatasource}}  and ("error" or "fail" or "critical")
 | parse "message=*,,," as err_msg
 | parse "host=*,,," as esx_host
 | parse "eventType=*,,," as event_type 
 | parse "vm=*,,," as vm nodrop
 | parse "computeResource=*,,," as cluster
```

**VMware/vCenter Errors - Analysis/vSphere Errors Trend**
```
_sourceCategory={{Logsdatasource}}  and ("error" or "fail" or "critical")
 | parse "message=*,,," as err_msg
 | parse "host=*,,," as esx_host
 | parse "eventType=*,,," as event_type
 | parse "vm=*,,," as vm nodrop
 | parse "computeResource=*,,," as cluster 
```

**VMware/vCenter Errors - Analysis/vSphere Most Recent Error Events**
```
_sourceCategory={{Logsdatasource}}  and *ErrorEvent
 | parse "message=*,,," as err_msg
 | parse "host=*,,," as esx_host nodrop
 | parse "eventType=*,,," as event_type
 | parse "vm=*,,," as vm nodrop
 | parse "computeResource=*,,," as cluster nodrop
```

**VMware/vCenter Errors - Analysis/vSphere Top 10 Error Events**
```
_sourceCategory={{Logsdatasource}}  and *ErrorEvent
 | parse "message=*,,," as err_msg
 | parse "host=*,,," as esx_host nodrop
 | parse "eventType=*,,," as event_type
 | parse "vm=*,,," as vm nodrop
 | parse "computeResource=*,,," as cluster nodrop
```

**VMware/Virtual Machine Creations and Deletions over Time/VMware - Virtual Machine Creations and Deletions over Time**
```
_sourceCategory={{Logsdatasource}}  ( "VmCreatedEvent" or "VmClonedEvent" or "VmRemovedEvent") 
| parse "eventType=*,,," as event_type 
```

**VMware/Virtual Machine Creations/VMware - Virtual Machine Creations**
```
_sourceCategory={{Logsdatasource}}  and "VmCreatedEvent" or "VmClonedEvent" 
| parse "user=*,,,eventType=*,,,vm=*,,,host=*,,,datacenter=*,,,computeResource=*,,,key=*,,,chainId=*" as user, event_type, vm, host, datacenter, cluster, key, chainid
```

**VMware/Virtual Machine Deletions/VMware - Virtual Machine Deletions**
```
_sourceCategory={{Logsdatasource}}  "VmRemovedEvent" 
| parse "user=*,,,eventType=*,,,vm=*,,,host=*,,,datacenter=*,,,computeResource=*,,,key=*,,,chainId=*" as user, event_type, vm, host, datacenter, cluster, key, chainid
```

**VMware/Virtual Machine Errors - Analysis/General VM Errors**
```
_sourceCategory={{Logsdatasource}}  and ("GeneralVmErrorEvent")
 | parse "message=*,,," as err_msg
 | parse "host=*,,," as esx_host
 | parse "vm=*,,," as vm
 | parse "eventType=*,,," as event_type nodrop
 | parse "computeResource=*,,," as cluster nodrop
```

**VMware/Virtual Machine Errors - Analysis/Primary VM Failures by ESXi Hosts**
```
_sourceCategory={{Logsdatasource}}  and ("VmPrimaryFailoverEvent")
 | parse "message=*,,," as err_msg
 | parse "host=*,,," as esx_host
 | parse "vm=*,,," as vm
 | parse "eventType=*,,," as event_type nodrop
 | parse "computeResource=*,,," as cluster nodrop
```

**VMware/Virtual Machine Errors - Analysis/Top 10 VM's facing Errors**
```
_sourceCategory={{Logsdatasource}}  and ("error" or "fail" or "critical")
 | parse "eventType=*,,," as event_type
 | parse "host=*,,," as esx_host 
 | parse "vm=*,,," as vm 
 | parse "computeResource=*,,," as cluster nodrop
```

**VMware/Virtual Machine Errors - Analysis/VM Fault Tolerance Errors**
```
_sourceCategory={{Logsdatasource}}  and ("VmDasUpdateErrorEvent" or "VmSecondaryDisabledBySystemEvent")
 | parse "eventType=*,,," as event_type
 | parse "host=*,,," as esx_host 
 | parse "vm=*,,," as vm nodrop
 | parse "computeResource=*,,," as cluster nodrop
```

**VMware/Virtual Machine Errors - Analysis/VM Mac Address and UUID Conflicts**
```
_sourceCategory={{Logsdatasource}}  and ("VmInstanceUuidConflictEvent" or "VmMacConflictEvent")
 | parse "eventType=*,,," as event_type
 | parse "host=*,,," as esx_host 
 | parse "vm=*,,," as vm 
 | parse "computeResource=*,,," as cluster nodrop
```

**VMware/Virtual Machine Errors - Analysis/VM Power Off Failures**
```
_sourceCategory={{Logsdatasource}}  and ("VmFailedToPowerOffEvent")
 | parse "message=*,,," as err_msg
 | parse "host=*,,," as esx_host
 | parse "vm=*,,," as vm
 | parse "eventType=*,,," as event_type nodrop
 | parse "computeResource=*,,," as cluster nodrop
```

**VMware/Virtual Machine Errors - Analysis/VM Power On Failures**
```
_sourceCategory={{Logsdatasource}}  and ("VmFailedToPowerOnEvent")
 | parse "message=*,,," as err_msg
 | parse "host=*,,," as esx_host
 | parse "vm=*,,," as vm
 | parse "eventType=*,,," as event_type nodrop
 | parse "computeResource=*,,," as cluster nodrop
```

**VMware/Virtual Machine Errors - Analysis/VM Upgrade Failures by ESXi Hosts**
```
_sourceCategory={{Logsdatasource}}  and ("VmUpgradeFailedEvent")
 | parse "message=*,,," as err_msg
 | parse "host=*,,," as esx_host
 | parse "vm=*,,," as vm
 | parse "eventType=*,,," as event_type nodrop
 | parse "computeResource=*,,," as cluster nodrop
```


