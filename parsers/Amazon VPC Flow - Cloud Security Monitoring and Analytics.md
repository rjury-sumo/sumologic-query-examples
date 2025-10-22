# Parsers For Amazon VPC Flow - Cloud Security Monitoring and Analytics

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Accepts & Rejects/Bytes Accepted by Destination Port**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version, accountID, interfaceID, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Accepts & Rejects/Bytes Accepted by Transport Protocol**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version, accountID, interfaceID, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status nodrop
| where accountID matches "{{accountID}}"
| where interfaceID matches "{{interfaceID}}"
| where srcDevice_ip matches "{{srcDevice_ip}}"
| where dstDevice_ip matches "{{dstDevice_ip}}"
| where dest_port matches "{{dest_port}}"
| where src_port matches "{{src_port}}"
| where action="ACCEPT"
| sum(bytes) by protocol | protocol as Protocol_Val
| lookup Keyword from https://s3.amazonaws.com/sumologic-app-data/protocol-numbers.csv on Decimal=Protocol_val 
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Accepts & Rejects/Destination ASN by TCP Destination Port**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT 6 
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version, accountID, interfaceID, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end,action,log_status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Accepts & Rejects/Flows Rejected by AccountID**
```
_sourceCategory = Labs/AWS/VPC* REJECT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Accepts & Rejects/Flows Rejected by Destination Port**
```
_sourceCategory = Labs/AWS/VPC* REJECT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version, accountID, interfaceID, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Accepts & Rejects/Flows Rejected by InterfaceID**
```
_sourceCategory = Labs/AWS/VPC* REJECT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Accepts & Rejects/Geo Location of Threats with Accepted Flow Logs**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where accountID matches "{{accountID}}"
| where interfaceID matches "{{interfaceID}}"
| where srcDevice_ip matches "{{srcDevice_ip}}"
| where dstDevice_ip matches "{{dstDevice_ip}}"
| where dest_port matches "{{dest_port}}"
| where src_port matches "{{src_port}}"
| where srcDevice_ip != "-"
| where action="ACCEPT" and isPublicIP(srcDevice_ip)
| count by srcDevice_ip
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=srcDevice_ip
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Accepts & Rejects/Geo Location of Threats with Rejected Flow Logs**
```
_sourceCategory = Labs/AWS/VPC* REJECT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where accountID matches "{{accountID}}"
| where interfaceID matches "{{interfaceID}}"
| where srcDevice_ip matches "{{srcDevice_ip}}"
| where dstDevice_ip matches "{{dstDevice_ip}}"
| where dest_port matches "{{dest_port}}"
| where src_port matches "{{src_port}}"
| where srcDevice_ip != "-"
| where action="REJECT" and isPublicIP(srcDevice_ip)
| count by srcDevice_ip
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=srcDevice_ip
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Accepts & Rejects/Threats Associated with Accepted Flow Logs**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where accountID matches "{{accountID}}"
| where interfaceID matches "{{interfaceID}}"
| where srcDevice_ip matches "{{srcDevice_ip}}"
| where dstDevice_ip matches "{{dstDevice_ip}}"
| where dest_port matches "{{dest_port}}"
| where src_port matches "{{src_port}}"
| where action="ACCEPT"
| count by srcDevice_ip, src_port, dstDevice_ip, dest_port, interfaceID, accountID, Protocol
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=srcDevice_ip
| where type="ip_address" 
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Accepts & Rejects/Threats Associated with Rejected Flow Logs**
```
_sourceCategory = Labs/AWS/VPC* REJECT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where accountID matches "{{accountID}}"
| where interfaceID matches "{{interfaceID}}"
| where srcDevice_ip matches "{{srcDevice_ip}}"
| where dstDevice_ip matches "{{dstDevice_ip}}"
| where dest_port matches "{{dest_port}}"
| where src_port matches "{{src_port}}"
| where action="REJECT"
| count by srcDevice_ip, src_port, dstDevice_ip, dest_port, interfaceID, accountID, Protocol
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=srcDevice_ip
| where type="ip_address" 
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Accepts & Rejects/Top20 Accepted by dstDevice_ip**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version, accountID, interfaceID, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Accepts & Rejects/Top20 Accepted by srcDevice_ip**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version, accountID, interfaceID, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Accepts & Rejects/Top20 Rejected by dstDevice_ip**
```
_sourceCategory = Labs/AWS/VPC* REJECT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version, accountID, interfaceID, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Accepts & Rejects/Top20 Rejected by srcDevice_ip**
```
_sourceCategory = Labs/AWS/VPC* REJECT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version, accountID, interfaceID, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Traffic Direction Monitoring/Geo Location of Threats with Inbound Accepted Flows**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where accountID matches "{{accountID}}"
| where interfaceID matches "{{interfaceID}}"
| where srcDevice_ip matches "{{srcDevice_ip}}"
| where dstDevice_ip matches "{{dstDevice_ip}}"
| where dest_port matches "{{dest_port}}"
| where src_port matches "{{src_port}}"
| where action="ACCEPT" and srcDevice_ip != "-" and isPublicIP(srcDevice_ip)
| count by srcDevice_ip
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=srcDevice_ip
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Traffic Direction Monitoring/Geo Location of Threats with Outbound Accepted Flows**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where accountID matches "{{accountID}}"
| where interfaceID matches "{{interfaceID}}"
| where srcDevice_ip matches "{{srcDevice_ip}}"
| where dstDevice_ip matches "{{dstDevice_ip}}"
| where dest_port matches "{{dest_port}}"
| where src_port matches "{{src_port}}"
| where dstDevice_ip != "-"
| where action="ACCEPT" and isPublicIP(dstDevice_ip)
| count by srcDevice_ip
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=srcDevice_ip
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Traffic Direction Monitoring/Inbound Accepted Flows**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Traffic Direction Monitoring/Inbound Rejected Flows**
```
_sourceCategory = Labs/AWS/VPC* REJECT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Traffic Direction Monitoring/Inbound Top 10 dstDevice_ip by MB**
```
_sourceCategory = Labs/AWS/VPC* 
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Traffic Direction Monitoring/Inbound Top 10 srcDevice_ip by MB**
```
_sourceCategory = Labs/AWS/VPC* 
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Traffic Direction Monitoring/Outbound Accepted Flows**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Traffic Direction Monitoring/Outbound Rejected Flows**
```
_sourceCategory = Labs/AWS/VPC* REJECT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Traffic Direction Monitoring/Outbound Top 10 dstDevice_ip by MB**
```
_sourceCategory = Labs/AWS/VPC* 
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Traffic Direction Monitoring/Outbound Top 10 srcDevice_ip by MB**
```
_sourceCategory = Labs/AWS/VPC* 
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Traffic Direction Monitoring/Top 10 Inbound Destination Ports by Flow Records**
```
_sourceCategory = Labs/AWS/VPC* 
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Analytics - Traffic Direction Monitoring/Top 10 Outbound Destination Ports by Flow Records**
```
_sourceCategory = Labs/AWS/VPC* 
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Bytes Accepted Comparison for Last 3 Days**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Destination Address Locations**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Destination ASN Bytes by Destination Port**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version, accountID, interfaceID, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end,action,log_status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Destination IP Bytes by InterfaceID**
```
_sourceCategory = Labs/AWS/VPC*   ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Destination Port by InterfaceID**
```
_sourceCategory = Labs/AWS/VPC*   ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Flows Rejected Comparison for Last 3 Days**
```
_sourceCategory = Labs/AWS/VPC* REJECT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Geo Location of Threat Intel Destinations with Accepted Flow Logs**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where accountID matches "{{accountID}}"
| where interfaceID matches "{{interfaceID}}"
| where srcDevice_ip matches "{{srcDevice_ip}}"
| where dstDevice_ip matches "{{dstDevice_ip}}"
| where dest_port matches "{{dest_port}}"
| where src_port matches "{{src_port}}"
| where dstDevice_ip != "-"
| where action="ACCEPT" and isPublicIP(dstDevice_ip)
| count by dstDevice_ip
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=dstDevice_ip
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Geo Location of Threat Intel Sources with Accepted Flow Logs**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where srcDevice_ip != "-"
| where action="ACCEPT" and isPublicIP(srcDevice_ip)
| where accountID matches "{{accountID}}"
| where interfaceID matches "{{interfaceID}}"
| where srcDevice_ip matches "{{srcDevice_ip}}"
| where dstDevice_ip matches "{{dstDevice_ip}}"
| where dest_port matches "{{dest_port}}"
| where src_port matches "{{src_port}}"
| count by srcDevice_ip
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=srcDevice_ip
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Rejects by InterfaceID, dstDevice_ip**
```
_sourceCategory = Labs/AWS/VPC*  REJECT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Source Address Locations**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Threat Intel Destinations Over Time by Action**
```
_sourceCategory = Labs/AWS/VPC* 
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where accountID matches "{{accountID}}"
| where interfaceID matches "{{interfaceID}}"
| where srcDevice_ip matches "{{srcDevice_ip}}"
| where dstDevice_ip matches "{{dstDevice_ip}}"
| where dest_port matches "{{dest_port}}"
| where src_port matches "{{src_port}}"
| timeslice 5m
| count by _timeslice, dstDevice_ip, action
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=dstDevice_ip
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Threat Intel Sources Over Time by Action**
```
_sourceCategory = Labs/AWS/VPC* 
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where accountID matches "{{accountID}}"
| where interfaceID matches "{{interfaceID}}"
| where srcDevice_ip matches "{{srcDevice_ip}}"
| where dstDevice_ip matches "{{dstDevice_ip}}"
| where dest_port matches "{{dest_port}}"
| where src_port matches "{{src_port}}"
| timeslice 5m
| count by _timeslice, srcDevice_ip, action
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=srcDevice_ip
| where type="ip_address" 
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Top TCP Destination Ports by ASN Organization**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT 6 
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version, accountID, interfaceID, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end,action,log_status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Top10 AccountIDs by Bytes**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT 6 
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version, accountID, interfaceID, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end,action,log_status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Top10 Rejected TCP Destination Ports**
```
_sourceCategory = Labs/AWS/VPC* REJECT 6 
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version, accountID, interfaceID, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end,action,log_status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Top10 TCP Destination Ports**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT 6 
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version, accountID, interfaceID, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end,action,log_status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Top20 InterfaceID by Bytes**
```
_sourceCategory = Labs/AWS/VPC*   ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Total Accepted Flow Records**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Total Hits from Threat Intel Source**
```
_sourceCategory = Labs/AWS/VPC* 
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop 
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Total Hits to Threat Intel Destination**
```
_sourceCategory = Labs/AWS/VPC* 
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop 
```

**Amazon VPC Flow - Cloud Security Monitoring and Analytics/Amazon VPC Flow - Security Monitoring - Overview/Total Rejected Flow Records**
```
_sourceCategory = Labs/AWS/VPC* REJECT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
```


