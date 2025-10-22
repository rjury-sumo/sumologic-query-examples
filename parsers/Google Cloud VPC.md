# Parsers For Google Cloud VPC

**Google Cloud VPC/Activity/Average Latency (ms) by Destination VPC**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets  
```

**Google Cloud VPC/Activity/Average Latency (ms) by Source VPC**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets  
```

**Google Cloud VPC/Activity/Average Latency (ms) by Subnetwork ID**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets  
```

**Google Cloud VPC/Activity/Flows by Destination Address**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp dest_instance
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
```

**Google Cloud VPC/Activity/Flows by Destination Port**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp dest_instance
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
```

**Google Cloud VPC/Activity/Flows by Source Address**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp dest_instance
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
```

**Google Cloud VPC/Activity/Flows by Source Port**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp dest_instance
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
```

**Google Cloud VPC/Activity/Inbound Source Address Locations**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 

| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets 
```

**Google Cloud VPC/Activity/Outbound Destination Address Locations**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets 
```

**Google Cloud VPC/Activity/Packets by Destination VM Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp dest_instance
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets 
```

**Google Cloud VPC/Activity/Packets by Source VM Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp (dest_instance or src_instance)
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets 
```

**Google Cloud VPC/Activity/Packets by Subnetwork ID**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp dest_instance
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets  
```

**Google Cloud VPC/Activity/Traffic (MiB) by Destination VM Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp dest_instance
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets 
```

**Google Cloud VPC/Activity/Traffic (MiB) by Source VM Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp (dest_instance or src_instance)
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets 
```

**Google Cloud VPC/Activity/Traffic (MiB) by Subnetwork ID**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp dest_instance
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets  
```

**Google Cloud VPC/Advanced Metrics/Average Latency (ms) per Minute - Outlier**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets 
```

**Google Cloud VPC/Advanced Metrics/Average Latency (ms) per Minute - Trend**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets 
```

**Google Cloud VPC/Advanced Metrics/Latency (ms) Box Plot**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets 
```

**Google Cloud VPC/Advanced Metrics/MBs Box Plot**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| timeslice 1m

| json "message.data.jsonPayload.bytes_sent" as bytes_sent | number(bytes_sent) / 1024 as mbs_sent
```

**Google Cloud VPC/Advanced Metrics/MBs per Minute - Outlier**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| timeslice 1m

| json "message.data.jsonPayload.bytes_sent" as bytes_sent | number(bytes_sent) / 1024 as mbs_sent
```

**Google Cloud VPC/Advanced Metrics/MBs per Minute - Trend**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| timeslice 1m

| json "message.data.jsonPayload.bytes_sent" as bytes_sent | number(bytes_sent) / 1024 as mbs_sent
```

**Google Cloud VPC/Advanced Metrics/Messages per Minute - Outlier**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
```

**Google Cloud VPC/Advanced Metrics/Messages per Minute - Trend**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
```

**Google Cloud VPC/Advanced Metrics/Messages per Minute by Project**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
```

**Google Cloud VPC/Advanced Metrics/Packets Box Plot**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets 
| timeslice 1m

| json "message.data.jsonPayload.packets_sent" as packets_sent
```

**Google Cloud VPC/Advanced Metrics/Packets per Minute - Outlier**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets 
```

**Google Cloud VPC/Advanced Metrics/Packets per Minute - Trend**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets 
```

**Google Cloud VPC/Google Cloud VPC Flow Durations/Google Cloud VPC Flow Durations**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.jsonPayload.connection.src_ip", "message.data.jsonPayload.start_time", "message.data.jsonPayload.end_time" as src_ip, start_time, end_time
```

**Google Cloud VPC/Google Cloud VPC Max Flow Time/Google Cloud VPC Max Flow Time**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.jsonPayload.connection.src_ip", "message.data.jsonPayload.start_time", "message.data.jsonPayload.end_time" as src_ip, start_time, end_time
```

**Google Cloud VPC/Google Cloud VPC Top 10 Source IPs by Flow Time/Google Cloud VPC Top 10 Source IPs by Flow Time**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.jsonPayload.connection.src_ip", "message.data.jsonPayload.start_time", "message.data.jsonPayload.end_time" as src_ip, start_time, end_time
```

**Google Cloud VPC/Overview/Inbound Source Address Locations**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 

| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets 
```

**Google Cloud VPC/Overview/Outbound Destination Address Locations**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets 
```

**Google Cloud VPC/Overview/Top 10 Destination VMs by Traffic (MiB)**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| where (dest_instance!="") and (!isNull(dest_instance))
| json field=payload "bytes_sent" as bytes | (bytes/1Mi) as mbs_sent
```

**Google Cloud VPC/Overview/Top 10 Destination VMs per VPC by Traffic (MiB)**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| where (dest_instance!="") and (!isNull(dest_instance))
| json field=payload "bytes_sent" as bytes | (bytes/1Mi) as mbs_sent
```

**Google Cloud VPC/Overview/Top 10 External Destination Ports by VPC Flows**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| where isNull(dest_instance) or dest_instance="" // we only look at outbound flows, assuming all connections will have at least some outbound data
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop
```

**Google Cloud VPC/Overview/Top 10 External IPs by Traffic (MiB)**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"

| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| if (isNull(src_instance) || src_instance="",src_ip,if(isNull(dest_instance)|| dest_instance="",dest_ip,"")) as external_ip
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent" as bytes 
```

**Google Cloud VPC/Overview/Top 10 External IPs by VPC Flows**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| if (isNull(src_instance) || src_instance="",src_ip,if(isNull(dest_instance)|| dest_instance="",dest_ip,"")) as external_ip
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
```

**Google Cloud VPC/Overview/Top 10 Internal Destination Ports by VPC Flows**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| where isNull(src_instance) or src_instance="" // we only look at inbound flows, assuming all connections will have at least some inbound data
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
```

**Google Cloud VPC/Overview/Top 10 Source VMs by Traffic (MiB)**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| where (src_vm!="") and (!isNull(src_vm))
| json field=payload "bytes_sent" as bytes | (bytes/1Mi) as mbs_sent
```

**Google Cloud VPC/Overview/Top 10 Source VMs per VPC by Traffic (MiB)**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| where (src_instance!="") and (!isNull(src_instance))
| json field=payload "bytes_sent" as bytes | (bytes/1Mi) as mbs_sent
```

**Google Cloud VPC/Overview/Traffic (MiB)  by VPC**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp 
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets 
```

**Google Cloud VPC/Overview/Traffic (MiB) by Project**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp 
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets 
```

**Google Cloud VPC/Overview/Traffic (MiB) by Subnetwork**
```
_sourceCategory={{Logsdatasource}}  logName resource timestamp 
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets  
```

**Google Cloud VPC/Overview/VPC Flows per Protocol by Hour**
```
(_sourceCategory={{Logsdatasource}}  logName resource timestamp)
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type = "gce_subnetwork" | where log_name matches "projects/*/logs/compute.googleapis.com%2Fvpc_flows"
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop

| timeslice 1h
| json "message.data.jsonPayload.connection.protocol" as protocol_num
| lookup keyword from https://s3.amazonaws.com/sumologic-app-data/protocol-numbers.csv on protocol_num=decimal
```


