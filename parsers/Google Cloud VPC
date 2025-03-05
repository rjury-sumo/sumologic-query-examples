# Parsers For Google Cloud VPC

## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.jsonPayload.connection.src_ip", "message.data.jsonPayload.start_time", "message.data.jsonPayload.end_time" as src_ip, start_time, end_time
```
### Use Cases:
Google Cloud VPC Flow Durations, Google Cloud VPC Max Flow Time, Google Cloud VPC Top 10 Source IPs by Flow Time



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
```
### Use Cases:
Average Latency (ms) by Destination VPC, Average Latency (ms) by Source VPC, Average Latency (ms) by Subnetwork ID, Average Latency (ms) per Minute - Outlier, Average Latency (ms) per Minute - Trend, Flows by Destination Address, Flows by Destination Port, Flows by Source Address, Flows by Source Port, Google Cloud VPC Flow Durations, Google Cloud VPC Max Flow Time, Google Cloud VPC Top 10 Source IPs by Flow Time, Inbound Source Address Locations, Latency (ms) Box Plot, MBs Box Plot, MBs per Minute - Outlier, MBs per Minute - Trend, Messages per Minute - Outlier, Messages per Minute - Trend, Messages per Minute by Project, Outbound Destination Address Locations, Packets Box Plot, Packets by Destination VM Over Time, Packets by Source VM Over Time, Packets by Subnetwork ID, Packets per Minute - Outlier, Packets per Minute - Trend, Top 10 Destination VMs by Traffic (MiB), Top 10 Destination VMs per VPC by Traffic (MiB), Top 10 External IPs by Traffic (MiB), Top 10 External IPs by VPC Flows, Top 10 Internal Destination Ports by VPC Flows, Top 10 Source VMs by Traffic (MiB), Traffic (MiB)  by VPC, Traffic (MiB) by Destination VM Over Time, Traffic (MiB) by Source VM Over Time, Traffic (MiB) by Subnetwork, Traffic (MiB) by Subnetwork ID, VPC Flows per Protocol by Hour



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json "message.data.jsonPayload.bytes_sent" as bytes_sent | number(bytes_sent) / 1024 as mbs_sent
```
### Use Cases:
Average Latency (ms) by Destination VPC, Average Latency (ms) by Source VPC, Average Latency (ms) by Subnetwork ID, Average Latency (ms) per Minute - Outlier, Flows by Destination Address, Flows by Destination Port, Flows by Source Address, Flows by Source Port, Google Cloud VPC Flow Durations, Google Cloud VPC Max Flow Time, Google Cloud VPC Top 10 Source IPs by Flow Time, Inbound Source Address Locations, Latency (ms) Box Plot, MBs Box Plot, MBs per Minute - Outlier, MBs per Minute - Trend, Messages per Minute - Outlier, Messages per Minute - Trend, Messages per Minute by Project, Outbound Destination Address Locations, Packets by Destination VM Over Time, Packets by Source VM Over Time, Packets by Subnetwork ID, Packets per Minute - Outlier, Traffic (MiB) by Destination VM Over Time, Traffic (MiB) by Source VM Over Time, Traffic (MiB) by Subnetwork ID



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json "message.data.jsonPayload.connection.protocol" as protocol_num
```
### Use Cases:
Average Latency (ms) by Destination VPC, Average Latency (ms) by Source VPC, Average Latency (ms) by Subnetwork ID, Average Latency (ms) per Minute - Outlier, Average Latency (ms) per Minute - Trend, Flows by Destination Address, Flows by Destination Port, Flows by Source Address, Flows by Source Port, Google Cloud VPC Flow Durations, Google Cloud VPC Max Flow Time, Google Cloud VPC Top 10 Source IPs by Flow Time, Inbound Source Address Locations, Latency (ms) Box Plot, MBs Box Plot, MBs per Minute - Outlier, MBs per Minute - Trend, Messages per Minute - Outlier, Messages per Minute - Trend, Messages per Minute by Project, Outbound Destination Address Locations, Packets Box Plot, Packets by Destination VM Over Time, Packets by Source VM Over Time, Packets by Subnetwork ID, Packets per Minute - Outlier, Packets per Minute - Trend, Top 10 Destination VMs by Traffic (MiB), Top 10 Destination VMs per VPC by Traffic (MiB), Top 10 External IPs by Traffic (MiB), Top 10 Internal Destination Ports by VPC Flows, Top 10 Source VMs by Traffic (MiB), Traffic (MiB)  by VPC, Traffic (MiB) by Destination VM Over Time, Traffic (MiB) by Source VM Over Time, Traffic (MiB) by Subnetwork, Traffic (MiB) by Subnetwork ID, VPC Flows per Protocol by Hour



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent" as bytes 
```
### Use Cases:
Average Latency (ms) by Destination VPC, Average Latency (ms) by Source VPC, Average Latency (ms) by Subnetwork ID, Average Latency (ms) per Minute - Outlier, Average Latency (ms) per Minute - Trend, Flows by Destination Address, Flows by Destination Port, Flows by Source Address, Flows by Source Port, Google Cloud VPC Flow Durations, Google Cloud VPC Max Flow Time, Google Cloud VPC Top 10 Source IPs by Flow Time, Inbound Source Address Locations, Latency (ms) Box Plot, MBs Box Plot, MBs per Minute - Outlier, MBs per Minute - Trend, Messages per Minute - Outlier, Messages per Minute - Trend, Messages per Minute by Project, Outbound Destination Address Locations, Packets Box Plot, Packets by Destination VM Over Time, Packets by Source VM Over Time, Packets by Subnetwork ID, Packets per Minute - Outlier, Packets per Minute - Trend, Top 10 Destination VMs by Traffic (MiB), Top 10 Destination VMs per VPC by Traffic (MiB), Top 10 External IPs by Traffic (MiB), Top 10 Internal Destination Ports by VPC Flows, Top 10 Source VMs by Traffic (MiB), Traffic (MiB) by Destination VM Over Time, Traffic (MiB) by Source VM Over Time, Traffic (MiB) by Subnetwork, Traffic (MiB) by Subnetwork ID



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent" as bytes | (bytes/1Mi) as mbs_sent
```
### Use Cases:
Average Latency (ms) by Destination VPC, Average Latency (ms) by Source VPC, Average Latency (ms) by Subnetwork ID, Average Latency (ms) per Minute - Outlier, Average Latency (ms) per Minute - Trend, Flows by Destination Address, Flows by Destination Port, Flows by Source Address, Flows by Source Port, Google Cloud VPC Flow Durations, Google Cloud VPC Max Flow Time, Google Cloud VPC Top 10 Source IPs by Flow Time, Inbound Source Address Locations, Latency (ms) Box Plot, MBs Box Plot, MBs per Minute - Outlier, MBs per Minute - Trend, Messages per Minute - Outlier, Messages per Minute - Trend, Messages per Minute by Project, Outbound Destination Address Locations, Packets Box Plot, Packets by Destination VM Over Time, Packets by Source VM Over Time, Packets by Subnetwork ID, Packets per Minute - Outlier, Packets per Minute - Trend, Top 10 Destination VMs by Traffic (MiB), Top 10 Destination VMs per VPC by Traffic (MiB), Top 10 External Destination Ports by VPC Flows, Top 10 External IPs by Traffic (MiB), Top 10 External IPs by VPC Flows, Top 10 Internal Destination Ports by VPC Flows, Top 10 Source VMs by Traffic (MiB), Top 10 Source VMs per VPC by Traffic (MiB), Traffic (MiB)  by VPC, Traffic (MiB) by Destination VM Over Time, Traffic (MiB) by Project, Traffic (MiB) by Source VM Over Time, Traffic (MiB) by Subnetwork, Traffic (MiB) by Subnetwork ID, VPC Flows per Protocol by Hour



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets 
```
### Use Cases:
Average Latency (ms) by Destination VPC, Average Latency (ms) by Source VPC, Average Latency (ms) by Subnetwork ID, Average Latency (ms) per Minute - Outlier, Average Latency (ms) per Minute - Trend, Flows by Destination Address, Flows by Destination Port, Flows by Source Address, Flows by Source Port, Google Cloud VPC Flow Durations, Google Cloud VPC Max Flow Time, Google Cloud VPC Top 10 Source IPs by Flow Time, Inbound Source Address Locations, Latency (ms) Box Plot, MBs Box Plot, MBs per Minute - Outlier, MBs per Minute - Trend, Messages per Minute - Outlier, Messages per Minute - Trend, Messages per Minute by Project, Outbound Destination Address Locations, Packets Box Plot, Packets by Destination VM Over Time, Packets by Source VM Over Time, Packets by Subnetwork ID, Packets per Minute - Outlier, Packets per Minute - Trend, Top 10 Destination VMs by Traffic (MiB), Top 10 Destination VMs per VPC by Traffic (MiB), Top 10 External Destination Ports by VPC Flows, Top 10 External IPs by Traffic (MiB), Top 10 External IPs by VPC Flows, Top 10 Internal Destination Ports by VPC Flows, Top 10 Source VMs by Traffic (MiB), Top 10 Source VMs per VPC by Traffic (MiB), Traffic (MiB)  by VPC, Traffic (MiB) by Destination VM Over Time, Traffic (MiB) by Project, Traffic (MiB) by Source VM Over Time, Traffic (MiB) by Subnetwork, Traffic (MiB) by Subnetwork ID, VPC Flows per Protocol by Hour



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets 
| json "message.data.jsonPayload.packets_sent" as packets_sent
```
### Use Cases:
Average Latency (ms) by Destination VPC, Average Latency (ms) by Source VPC, Average Latency (ms) by Subnetwork ID, Average Latency (ms) per Minute - Outlier, Flows by Destination Address, Flows by Destination Port, Flows by Source Address, Flows by Source Port, Google Cloud VPC Flow Durations, Google Cloud VPC Max Flow Time, Google Cloud VPC Top 10 Source IPs by Flow Time, Inbound Source Address Locations, Latency (ms) Box Plot, MBs Box Plot, MBs per Minute - Outlier, MBs per Minute - Trend, Messages per Minute - Outlier, Messages per Minute - Trend, Messages per Minute by Project, Outbound Destination Address Locations, Packets Box Plot, Packets by Destination VM Over Time, Packets by Source VM Over Time, Packets by Subnetwork ID, Packets per Minute - Outlier, Traffic (MiB) by Destination VM Over Time, Traffic (MiB) by Source VM Over Time, Traffic (MiB) by Subnetwork ID



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent","rtt_msec","packets_sent"  as bytes, rtt,packets  
```
### Use Cases:
Average Latency (ms) by Destination VPC, Average Latency (ms) by Source VPC, Average Latency (ms) by Subnetwork ID, Average Latency (ms) per Minute - Outlier, Average Latency (ms) per Minute - Trend, Flows by Destination Address, Flows by Destination Port, Flows by Source Address, Flows by Source Port, Google Cloud VPC Flow Durations, Google Cloud VPC Max Flow Time, Google Cloud VPC Top 10 Source IPs by Flow Time, Inbound Source Address Locations, Latency (ms) Box Plot, MBs Box Plot, MBs per Minute - Outlier, MBs per Minute - Trend, Messages per Minute - Outlier, Messages per Minute - Trend, Messages per Minute by Project, Outbound Destination Address Locations, Packets Box Plot, Packets by Destination VM Over Time, Packets by Source VM Over Time, Packets by Subnetwork ID, Packets per Minute - Outlier, Packets per Minute - Trend, Traffic (MiB) by Destination VM Over Time, Traffic (MiB) by Source VM Over Time, Traffic (MiB) by Subnetwork, Traffic (MiB) by Subnetwork ID



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
```
### Use Cases:
Average Latency (ms) by Destination VPC, Average Latency (ms) by Source VPC, Average Latency (ms) by Subnetwork ID, Average Latency (ms) per Minute - Outlier, Average Latency (ms) per Minute - Trend, Flows by Destination Address, Flows by Destination Port, Flows by Source Address, Flows by Source Port, Google Cloud VPC Flow Durations, Google Cloud VPC Max Flow Time, Google Cloud VPC Top 10 Source IPs by Flow Time, Inbound Source Address Locations, Latency (ms) Box Plot, MBs Box Plot, MBs per Minute - Outlier, MBs per Minute - Trend, Messages per Minute - Outlier, Messages per Minute - Trend, Messages per Minute by Project, Outbound Destination Address Locations, Packets Box Plot, Packets by Destination VM Over Time, Packets by Source VM Over Time, Packets by Subnetwork ID, Packets per Minute - Outlier, Packets per Minute - Trend, Top 10 Destination VMs by Traffic (MiB), Top 10 Internal Destination Ports by VPC Flows, Traffic (MiB) by Destination VM Over Time, Traffic (MiB) by Source VM Over Time, Traffic (MiB) by Subnetwork, Traffic (MiB) by Subnetwork ID



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop
```
### Use Cases:
Average Latency (ms) by Destination VPC, Average Latency (ms) by Source VPC, Average Latency (ms) by Subnetwork ID, Average Latency (ms) per Minute - Outlier, Average Latency (ms) per Minute - Trend, Flows by Destination Address, Flows by Destination Port, Flows by Source Address, Flows by Source Port, Google Cloud VPC Flow Durations, Google Cloud VPC Max Flow Time, Google Cloud VPC Top 10 Source IPs by Flow Time, Inbound Source Address Locations, Latency (ms) Box Plot, MBs Box Plot, MBs per Minute - Outlier, MBs per Minute - Trend, Messages per Minute - Outlier, Messages per Minute - Trend, Messages per Minute by Project, Outbound Destination Address Locations, Packets Box Plot, Packets by Destination VM Over Time, Packets by Source VM Over Time, Packets by Subnetwork ID, Packets per Minute - Outlier, Packets per Minute - Trend, Top 10 Destination VMs by Traffic (MiB), Top 10 Destination VMs per VPC by Traffic (MiB), Top 10 External Destination Ports by VPC Flows, Top 10 External IPs by Traffic (MiB), Top 10 External IPs by VPC Flows, Top 10 Internal Destination Ports by VPC Flows, Top 10 Source VMs by Traffic (MiB), Traffic (MiB)  by VPC, Traffic (MiB) by Destination VM Over Time, Traffic (MiB) by Source VM Over Time, Traffic (MiB) by Subnetwork, Traffic (MiB) by Subnetwork ID, VPC Flows per Protocol by Hour



## Parser:
```
| json "message.data.resource.type" as type 
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource" as resource | json field=resource "labels.location","labels.project_id","labels.subnetwork_id","labels.subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=payload "src_vpc.vpc_name","dest_vpc.vpc_name" as src_vpc,dest_vpc nodrop
| json field=payload "src_instance","dest_instance" as src_instance,dest_instance nodrop 
| json field=payload "connection.src_ip","connection.dest_ip","connection.dest_port","connection.src_port" as src_ip,dest_ip,dest_port,src_port 
| json field=src_instance "project_id", "zone", "region", "vm_name" as src_project, src_zone, src_region, src_vm nodrop 
| json field=dest_instance "project_id", "zone", "region", "vm_name" as dest_project, dest_zone, dest_region, dest_vm nodrop
| json field=payload "bytes_sent" as bytes | (bytes/1Mi) as mbs_sent
```
### Use Cases:
Average Latency (ms) by Destination VPC, Average Latency (ms) by Source VPC, Average Latency (ms) by Subnetwork ID, Average Latency (ms) per Minute - Outlier, Average Latency (ms) per Minute - Trend, Flows by Destination Address, Flows by Destination Port, Flows by Source Address, Flows by Source Port, Google Cloud VPC Flow Durations, Google Cloud VPC Max Flow Time, Google Cloud VPC Top 10 Source IPs by Flow Time, Inbound Source Address Locations, Latency (ms) Box Plot, MBs Box Plot, MBs per Minute - Outlier, MBs per Minute - Trend, Messages per Minute - Outlier, Messages per Minute - Trend, Messages per Minute by Project, Outbound Destination Address Locations, Packets Box Plot, Packets by Destination VM Over Time, Packets by Source VM Over Time, Packets by Subnetwork ID, Packets per Minute - Outlier, Packets per Minute - Trend, Top 10 Destination VMs by Traffic (MiB), Top 10 Internal Destination Ports by VPC Flows, Top 10 Source VMs by Traffic (MiB), Traffic (MiB) by Destination VM Over Time, Traffic (MiB) by Source VM Over Time, Traffic (MiB) by Subnetwork, Traffic (MiB) by Subnetwork ID


