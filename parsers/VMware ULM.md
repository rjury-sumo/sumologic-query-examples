# Parsers For VMware ULM

## Parser:
```
| parse "eventType=*,,," as event_type 
 
```
### Use Cases:
VMware ULM - Frequent Virtual Machine Power Offs, VMware ULM - Multiple Virtual Machines stopped, VMware ULM - Virtual Machine Creations and Deletions over Time



## Parser:
```
| parse "vm=*,,,host=*" as vm, esx_host 
 
```
### Use Cases:
VMware ULM - Frequent Virtual Machine Power Offs, VMware ULM - Multiple Virtual Machines stopped


