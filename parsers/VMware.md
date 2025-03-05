# Parsers For VMware

## Parser:
```
| parse ",,,user=*,,," as user
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "computeResource=*,,," as cluster 
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "eventType=*,,," as event_type
| parse "host=*,,," as esx_host
| parse "user=*,,," as user
| parse "vm=*,,," as vm 
| parse "computeResource=*,,," as cluster
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "eventType=*,,," as event_type
| parse "host=*,,," as esx_host 
| parse "vm=*,,," as vm 
| parse "computeResource=*,,," as cluster
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "eventType=*,,," as event_type
| parse "host=*,,," as esx_host 
| parse "vm=*,,," as vm 
| parse "computeResource=*,,," as cluster nodrop
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "eventType=*,,," as event_type
| parse "host=*,,," as esx_host 
| parse "vm=*,,," as vm nodrop
| parse "computeResource=*,,," as cluster nodrop
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "eventType=*,,," as event_type 
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "eventType=*,,," as event_type 
| parse "host=*,,," as esx_host nodrop
| parse "vm=*,,," as vm nodrop
| parse "computeResource=*,,," as cluster nodrop
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "host=*,,," as esx_host
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "host=*,,," as esx_host
| parse " on * " as guest_vm
| parse "message=Alarm '*'" as alarm_mesg
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "host=*,,," as esx_host
| parse "computeResource=*,,," as cluster
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "host=*,,," as esx_host
| parse "vm=*,,," as vm
| parse "computeResource=*,,," as cluster
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "message=*,,," as err_msg
| parse "computeResource=*,,," as cluster
| parse "host=*,,," as esx_host
| parse "eventType=*,,," as event_type
| parse "vm=*,,," as vm nodrop
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "message=*,,," as err_msg
| parse "computeResource=*,,," as cluster
| parse "host=*,,," as esx_host nodrop
| parse "eventType=*,,," as event_type nodrop
| parse "vm=*,,," as vm nodrop
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "message=*,,," as err_msg
| parse "host=*,,," as esx_host
| parse "eventType=*,,," as event_type
| parse "vm=*,,," as vm nodrop
| parse "computeResource=*,,," as cluster 
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "message=*,,," as err_msg
| parse "host=*,,," as esx_host
| parse "eventType=*,,," as event_type 
| parse "vm=*,,," as vm nodrop
| parse "computeResource=*,,," as cluster
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "message=*,,," as err_msg
| parse "host=*,,," as esx_host
| parse "vm=*,,," as vm
| parse "eventType=*,,," as event_type nodrop
| parse "computeResource=*,,," as cluster nodrop
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "message=*,,," as err_msg
| parse "host=*,,," as esx_host nodrop
| parse "eventType=*,,," as event_type
| parse "vm=*,,," as vm nodrop
| parse "computeResource=*,,," as cluster nodrop
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "message=Alarm '*' on * changed from * to *,,," as alarm_mesg,hostname,old_status,new_status
| parse "host=*,,," as esx_host nodrop
| parse "eventType=*,,," as event_type nodrop
| parse "vm=*,,," as vm nodrop
| parse "computeResource=*,,," as cluster nodrop
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "message=Task:*,,," as task
| parse "host=*,,," as esx_host nodrop
| parse "eventType=*,,," as event_type nodrop
| parse "vm=*,,," as vm nodrop
| parse "computeResource=*,,," as cluster nodrop
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "vm=*,,," as vm
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse "vm=*,,," as vm
| parse "host=*,,," as esx_host
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events



## Parser:
```
| parse regex "(?:message=User)\s(?<user>.*?)\s(?<task>logged out|logged in|.*)(?:\s.*,,,)"
```
### Use Cases:
Clusters with Frequent Errors, ESXi Hosts per Cluster, General VM Errors, Infrastructure Summary, Most Active Users, Primary VM Failures by ESXi Hosts, Top 10 Host's facing Errors, Top 10 VM's facing Errors, Unique Clusters, Unique ESXi Hosts, Unique Virtual Machines, vCenter Alarms, vCenter Alarms by Hosts, vCenter Alarms by Hosts and VMs, vCenter Tasks Trend, vCenter User Activity, Virtual Machine Operations by User, Virtual Machine Operations Over Time, VM Failures by ESXi Hosts, VM Fault Tolerance Errors, VM Mac Address and UUID Conflicts, VM Power Off Failures, VM Power On Failures, VM Upgrade Failures by ESXi Hosts, VM with Failures per ESXi Host, VMware - Frequent Virtual Machine Power Offs, VMware - Multiple Virtual Machines stopped, VMware - Virtual Machine Creations, VMware - Virtual Machine Creations and Deletions over Time, VMware - Virtual Machine Deletions, vSphere Errors Across Clusters, vSphere Errors Across ESXi Hosts, vSphere Errors Trend, vSphere Most Recent Error Events, vSphere Top 10 Error Events


