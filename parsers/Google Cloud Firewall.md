# Parsers For Google Cloud Firewall

## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```
### Use Cases:
Allowed Destination Locations, Allowed Egress Traffic - Outlier, Allowed Egress Traffic by Network Over Time, Allowed Ingress Traffic - Outlier, Allowed Ingress Traffic by Network Over Time, Allowed Source Locations, Allowed Traffic by Network Over Time, Denied Destination Locations, Denied Egress Traffic - Outlier, Denied Egress Traffic by Network Over Time, Denied Ingress Traffic - Outlier, Denied Ingress Traffic by Network Over Time, Denied Request Remote Locations, Denied Source Locations, Denied Traffic by Network Over Time, Egress Destination Locations, Google Cloud Firewall - Denied Request Remote Locations, Google Cloud Firewall - Request Remote Locations, Google Cloud Firewall - Rules, Ingress Source Locations, Requests Denied (%), Top Allowed Egress Rules, Top Allowed Ingress Rules, Top Denied Destination IPs, Top Denied Egress Rules, Top Denied Ingress Rules, Top Denied Source IPs, Top Destination Locations, Top Networks by Egress Requests, Top Networks by Ingress Requests, Top Remote Request Locations, Top Requested Networks, Top Requested Subnetworks, Top Requested VMs, Top Rules Used, Top Source Locations, Top Subnetworks by Egress Requests, Top Subnetworks by Ingress Requests, Top VMs by Egress Requests, Top VMs by Ingress Requests, Traffic Disposition Over Time, Traffic Over Time



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details", "connection.dest_ip" as disposition, vm_instance, network, rule_details, dest_ip
| json field=rule_details "action", "priority", "direction"
```
### Use Cases:
Allowed Destination Locations, Allowed Egress Traffic - Outlier, Allowed Egress Traffic by Network Over Time, Allowed Ingress Traffic - Outlier, Allowed Ingress Traffic by Network Over Time, Allowed Source Locations, Allowed Traffic by Network Over Time, Denied Destination Locations, Denied Egress Traffic - Outlier, Denied Egress Traffic by Network Over Time, Denied Ingress Traffic - Outlier, Denied Ingress Traffic by Network Over Time, Denied Request Remote Locations, Denied Source Locations, Denied Traffic by Network Over Time, Egress Destination Locations, Google Cloud Firewall - Denied Request Remote Locations, Google Cloud Firewall - Request Remote Locations, Google Cloud Firewall - Rules, Ingress Source Locations, Requests Denied (%), Top Allowed Egress Rules, Top Allowed Ingress Rules, Top Denied Destination IPs, Top Denied Egress Rules, Top Denied Ingress Rules, Top Denied Source IPs, Top Destination Locations, Top Networks by Egress Requests, Top Networks by Ingress Requests, Top Remote Request Locations, Top Requested Subnetworks, Top Rules Used, Top Source Locations, Top Subnetworks by Egress Requests, Top Subnetworks by Ingress Requests, Top VMs by Egress Requests, Top VMs by Ingress Requests, Traffic Disposition Over Time, Traffic Over Time



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details", "connection.src_ip" as disposition, vm_instance, network, rule_details, src_ip
| json field=rule_details "action", "priority", "direction"
```
### Use Cases:
Allowed Destination Locations, Allowed Egress Traffic - Outlier, Allowed Egress Traffic by Network Over Time, Allowed Ingress Traffic - Outlier, Allowed Ingress Traffic by Network Over Time, Allowed Source Locations, Allowed Traffic by Network Over Time, Denied Destination Locations, Denied Egress Traffic - Outlier, Denied Egress Traffic by Network Over Time, Denied Ingress Traffic - Outlier, Denied Ingress Traffic by Network Over Time, Denied Request Remote Locations, Denied Source Locations, Denied Traffic by Network Over Time, Google Cloud Firewall - Denied Request Remote Locations, Google Cloud Firewall - Request Remote Locations, Google Cloud Firewall - Rules, Ingress Source Locations, Top Allowed Egress Rules, Top Allowed Ingress Rules, Top Denied Destination IPs, Top Denied Egress Rules, Top Denied Ingress Rules, Top Denied Source IPs, Top Destination Locations, Top Networks by Egress Requests, Top Networks by Ingress Requests, Top Remote Request Locations, Top Requested Subnetworks, Top Rules Used, Top Source Locations, Top Subnetworks by Egress Requests, Top Subnetworks by Ingress Requests, Top VMs by Egress Requests, Top VMs by Ingress Requests, Traffic Disposition Over Time, Traffic Over Time



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details", "connection.src_ip", "connection.dest_ip" as disposition, vm_instance, network, rule_details, src_ip, dest_ip
| json field=rule_details "action", "priority", "direction"
```
### Use Cases:
Allowed Destination Locations, Allowed Egress Traffic - Outlier, Allowed Egress Traffic by Network Over Time, Allowed Ingress Traffic - Outlier, Allowed Ingress Traffic by Network Over Time, Allowed Request Remote Locations, Allowed Source Locations, Allowed Traffic by Network Over Time, Denied Destination Locations, Denied Egress Traffic - Outlier, Denied Egress Traffic by Network Over Time, Denied Ingress Traffic - Outlier, Denied Ingress Traffic by Network Over Time, Denied Request Remote Locations, Denied Source Locations, Denied Traffic by Network Over Time, Egress Destination Locations, Google Cloud Firewall - Denied Request Remote Locations, Google Cloud Firewall - Request Remote Locations, Google Cloud Firewall - Rules, Ingress Source Locations, Requests Denied (%), Top Allowed Egress Rules, Top Allowed Ingress Rules, Top Denied Destination IPs, Top Denied Egress Rules, Top Denied Ingress Rules, Top Denied Source IPs, Top Destination Locations, Top Networks by Egress Requests, Top Networks by Ingress Requests, Top Remote Request Locations, Top Requested Networks, Top Requested Subnetworks, Top Requested VMs, Top Rules Used, Top Source Locations, Top Subnetworks by Egress Requests, Top Subnetworks by Ingress Requests, Top VMs by Egress Requests, Top VMs by Ingress Requests, Traffic Disposition Over Time, Traffic Over Time



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule>[^\"]+)\""
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```
### Use Cases:
Google Cloud Firewall - Denied Request Remote Locations, Google Cloud Firewall - Request Remote Locations, Google Cloud Firewall - Rules



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule>[^\"]+)\""
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details", "connection.src_ip", "connection.dest_ip" as disposition, vm_instance, network, rule_details, src_ip, dest_ip
| json field=rule_details "action", "priority", "direction"
```
### Use Cases:
Google Cloud Firewall - Denied Request Remote Locations, Google Cloud Firewall - Request Remote Locations, Google Cloud Firewall - Rules


