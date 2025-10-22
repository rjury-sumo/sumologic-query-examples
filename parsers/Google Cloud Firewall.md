# Parsers For Google Cloud Firewall

**Google Cloud Firewall/Denied Request Remote Locations/Google Cloud Firewall - Denied Request Remote Locations**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"disposition\":\"DENIED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details", "connection.src_ip", "connection.dest_ip" as disposition, vm_instance, network, rule_details, src_ip, dest_ip
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Egress/Allowed Destination Locations**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"EGRESS\"" "\"disposition\":\"ALLOWED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details", "connection.dest_ip" as disposition, vm_instance, network, rule_details, dest_ip
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Egress/Allowed Egress Traffic - Outlier**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"EGRESS\"" "\"disposition\":\"ALLOWED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Egress/Allowed Egress Traffic by Network Over Time**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"EGRESS\"" "\"disposition\":\"ALLOWED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Egress/Denied Destination Locations**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"EGRESS\"" "\"disposition\":\"DENIED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details", "connection.dest_ip" as disposition, vm_instance, network, rule_details, dest_ip
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Egress/Denied Egress Traffic - Outlier**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"EGRESS\"" "\"disposition\":\"DENIED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Egress/Denied Egress Traffic by Network Over Time**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"EGRESS\"" "\"disposition\":\"DENIED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Egress/Top Allowed Egress Rules**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"EGRESS\"" "\"disposition\":\"ALLOWED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Egress/Top Denied Destination IPs**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"EGRESS\"" "\"disposition\":\"DENIED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details", "connection.dest_ip" as disposition, vm_instance, network, rule_details, dest_ip
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Egress/Top Denied Egress Rules**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"EGRESS\"" "\"disposition\":\"DENIED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Egress/Top Destination Locations**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"EGRESS\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details", "connection.dest_ip" as disposition, vm_instance, network, rule_details, dest_ip
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Egress/Top Networks by Egress Requests**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"EGRESS\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Egress/Top Subnetworks by Egress Requests**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"EGRESS\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Egress/Top VMs by Egress Requests**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"EGRESS\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Ingress/Allowed Ingress Traffic - Outlier**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"INGRESS\"" "\"disposition\":\"ALLOWED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Ingress/Allowed Ingress Traffic by Network Over Time**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"INGRESS\"" "\"disposition\":\"ALLOWED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Ingress/Allowed Source Locations**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"INGRESS\"" "\"disposition\":\"ALLOWED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details", "connection.src_ip" as disposition, vm_instance, network, rule_details, src_ip
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Ingress/Denied Ingress Traffic - Outlier**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"INGRESS\"" "\"disposition\":\"DENIED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Ingress/Denied Ingress Traffic by Network Over Time**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"INGRESS\"" "\"disposition\":\"DENIED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Ingress/Denied Source Locations**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"INGRESS\"" "\"disposition\":\"DENIED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details", "connection.src_ip" as disposition, vm_instance, network, rule_details, src_ip
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Ingress/Top Allowed Ingress Rules**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"INGRESS\"" "\"disposition\":\"ALLOWED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Ingress/Top Denied Ingress Rules**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"INGRESS\"" "\"disposition\":\"DENIED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Ingress/Top Denied Source IPs**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"INGRESS\"" "\"disposition\":\"DENIED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details", "connection.src_ip" as disposition, vm_instance, network, rule_details, src_ip
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Ingress/Top Networks by Ingress Requests**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"INGRESS\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Ingress/Top Source Locations**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"INGRESS\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details", "connection.src_ip" as disposition, vm_instance, network, rule_details, src_ip
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Ingress/Top Subnetworks by Ingress Requests**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"INGRESS\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Ingress/Top VMs by Ingress Requests**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"INGRESS\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Overview/Allowed Request Remote Locations**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"disposition\":\"ALLOWED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details", "connection.src_ip", "connection.dest_ip" as disposition, vm_instance, network, rule_details, src_ip, dest_ip
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Overview/Allowed Traffic by Network Over Time**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"disposition\":\"ALLOWED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Overview/Denied Request Remote Locations**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"disposition\":\"DENIED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details", "connection.src_ip", "connection.dest_ip" as disposition, vm_instance, network, rule_details, src_ip, dest_ip
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Overview/Denied Traffic by Network Over Time**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"disposition\":\"DENIED\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Overview/Egress Destination Locations**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"EGRESS\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details", "connection.dest_ip" as disposition, vm_instance, network, rule_details, dest_ip
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Overview/Ingress Source Locations**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\"" "\"direction\":\"INGRESS\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details", "connection.src_ip" as disposition, vm_instance, network, rule_details, src_ip
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Overview/Requests Denied (%)**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Overview/Top Remote Request Locations**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details", "connection.src_ip", "connection.dest_ip" as disposition, vm_instance, network, rule_details, src_ip, dest_ip
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Overview/Top Requested Networks**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Overview/Top Requested Subnetworks**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Overview/Top Requested VMs**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Overview/Top Rules Used**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Overview/Traffic Disposition Over Time**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Overview/Traffic Over Time**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule_name>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Request Remote Locations/Google Cloud Firewall - Request Remote Locations**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details", "connection.src_ip", "connection.dest_ip" as disposition, vm_instance, network, rule_details, src_ip, dest_ip
| json field=rule_details "action", "priority", "direction"
```

**Google Cloud Firewall/Rules/Google Cloud Firewall - Rules**
```
_sourceCategory={{Logsdatasource}}   logName reference resource "\"type\":\"gce_subnetwork\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| parse regex "\"reference\":\"network:[^\"/]+/firewall:(?<rule>[^\"]+)\""
| where log_name matches "projects/*/logs/compute.googleapis.com%2Ffirewall"
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload 
| json field=labels "location","project_id","subnetwork_id","subnetwork_name" as zone,project,subnetwork_id,subnetwork_name nodrop
| json field=payload "disposition", "instance.vm_name", "vpc.vpc_name", "rule_details" as disposition, vm_instance, network, rule_details
| json field=rule_details "action", "priority", "direction"
```


