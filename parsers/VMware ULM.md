# Parsers For VMware ULM

**VMware ULM/Frequent Virtual Machine Power Offs/VMware ULM - Frequent Virtual Machine Power Offs**
```
_sourceCategory = Labs/VMWare6.5 AND ("is powered off" OR "is suspended") 
 | parse "vm=*,,,host=*" as vm, esx_host 
```

**VMware ULM/Multiple Virtual Machines stopped/VMware ULM - Multiple Virtual Machines stopped**
```
_sourceCategory = Labs/VMWare6.5 AND ("is powered off" OR "is suspended") 
 | parse "vm=*,,,host=*" as vm, esx_host 
```

**VMware ULM/Virtual Machine Creations and Deletions over Time/VMware ULM - Virtual Machine Creations and Deletions over Time**
```
_sourceCategory = Labs/VMWare6.5 ( "VmCreatedEvent" or "VmClonedEvent" or "VmRemovedEvent") 
| parse "eventType=*,,," as event_type 
```

**VMware ULM/Virtual Machine Creations/VMware ULM - Virtual Machine Creations**
```
_sourceCategory = Labs/VMWare6.5 and "VmCreatedEvent" or "VmClonedEvent" 
| parse "user=*,,,eventType=*,,,vm=*,,,host=*,,,datacenter=*,,,computeResource=*,,,key=*,,,chainId=*" as user, event_type, vm, host, datacenter, cluster, key, chainid
```

**VMware ULM/Virtual Machine Deletions/VMware ULM - Virtual Machine Deletions**
```
_sourceCategory = Labs/VMWare6.5 "VmRemovedEvent" 
| parse "user=*,,,eventType=*,,,vm=*,,,host=*,,,datacenter=*,,,computeResource=*,,,key=*,,,chainId=*" as user, event_type, vm, host, datacenter, cluster, key, chainid
```


