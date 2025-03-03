# VMware ULM

## Searches

### Log Searches

- **VMware ULM - Frequent Virtual Machine Power Offs**: from Search: VMware ULM/Operations/VMware ULM - Frequent Virtual Machine Power Offs 
- **VMware ULM - Multiple Virtual Machines stopped**: from Search: VMware ULM/Operations/VMware ULM - Multiple Virtual Machines stopped 
- **VMware ULM - Summary of vCenter Alarms**: from Search: VMware ULM/Operations/VMware ULM - Summary of vCenter Alarms 
- **VMware ULM - Virtual Machine Creations**: from Search: VMware ULM/Operations/VMware ULM - Virtual Machine Creations 
- **VMware ULM - Virtual Machine Creations and Deletions over Time**: from Search: VMware ULM/Operations/VMware ULM - Virtual Machine Creations and Deletions over Time 
- **VMware ULM - Virtual Machine Deletions**: from Search: VMware ULM/Operations/VMware ULM - Virtual Machine Deletions

### Metric Searches


## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|VMware ULM/Operations|VMware ULM - Frequent Virtual Machine Power Offs|Logs|VMware ULM/Operations/VMware ULM - Frequent Virtual Machine Power Offs|\_sourceCategory = Labs/VMWare6.5 AND ("is powered off" OR "is suspended") <br /> \| parse "vm=\*,,,host=\*" as vm, esx\_host <br /> \| count by vm, esx\_host <br /> \| where \_count \>=3|
|VMware ULM/Operations|VMware ULM - Multiple Virtual Machines stopped|Logs|VMware ULM/Operations/VMware ULM - Multiple Virtual Machines stopped|\_sourceCategory = Labs/VMWare6.5 AND ("is powered off" OR "is suspended") <br /> \| parse "vm=\*,,,host=\*" as vm, esx\_host <br /> \| count by vm, esx\_host <br /> \| count by esx\_host <br /> \| where \_count \>=3|
|VMware ULM/Operations|VMware ULM - Summary of vCenter Alarms|Logs|VMware ULM/Operations/VMware ULM - Summary of vCenter Alarms|\_sourceCategory = Labs/VMWare6.5 and "message=Alarm"<br /> \| logreduce|
|VMware ULM/Operations|VMware ULM - Virtual Machine Creations|Logs|VMware ULM/Operations/VMware ULM - Virtual Machine Creations|\_sourceCategory = Labs/VMWare6.5 and "VmCreatedEvent" or "VmClonedEvent" <br />\| parse "user=\*,,,eventType=\*,,,vm=\*,,,host=\*,,,datacenter=\*,,,computeResource=\*,,,key=\*,,,chainId=\*" as user, event\_type, vm, host, datacenter, cluster, key, chainid|
|VMware ULM/Operations|VMware ULM - Virtual Machine Creations and Deletions over Time|Logs|VMware ULM/Operations/VMware ULM - Virtual Machine Creations and Deletions over Time|\_sourceCategory = Labs/VMWare6.5 ( "VmCreatedEvent" or "VmClonedEvent" or "VmRemovedEvent") <br />\| parse "eventType=\*,,," as event\_type <br />\| if (event\_type matches "\*VmCreatedEvent\*" or event\_type matches "\*VmClonedEvent\*", 1,0) as creations \| if (event\_type matches "\*VmRemovedEvent\*", 1,0) as deletions \|  timeslice by 1h \| sum(creations) as creations, sum(deletions) as deletions by \_timeslice|
|VMware ULM/Operations|VMware ULM - Virtual Machine Deletions|Logs|VMware ULM/Operations/VMware ULM - Virtual Machine Deletions|\_sourceCategory = Labs/VMWare6.5 "VmRemovedEvent" <br />\| parse "user=\*,,,eventType=\*,,,vm=\*,,,host=\*,,,datacenter=\*,,,computeResource=\*,,,key=\*,,,chainId=\*" as user, event\_type, vm, host, datacenter, cluster, key, chainid|

