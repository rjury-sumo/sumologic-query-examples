# Parsers For Alex Amazon VPC Flow

**Alex Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 01 - Accepted And Rejected Traffic - New/Allowed Network Activity by Direction**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**Alex Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 01 - Accepted And Rejected Traffic - New/Allowed Network Activity by Transport and Internet Layer Protocol**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
| where action="ACCEPT"
| where ((compareCIDRPrefix("172.16.0.0", src_ip, toInt(12)) or compareCIDRPrefix("192.168.0.0", src_ip, toInt(16)) or compareCIDRPrefix("10.0.0.0", src_ip, toInt(8)) and (!compareCIDRPrefix("172.16.0.0", dest_ip, toInt(12)) and !compareCIDRPrefix("192.168.0.0", dest_ip, toInt(16)) and !compareCIDRPrefix("10.0.0.0", dest_ip, toInt(8)))) or 
(compareCIDRPrefix("172.16.0.0", dest_ip, toInt(12)) or compareCIDRPrefix("192.168.0.0", dest_ip, toInt(16)) or compareCIDRPrefix("10.0.0.0", dest_ip, toInt(8)) and (!compareCIDRPrefix("172.16.0.0", src_ip, toInt(12)) and !compareCIDRPrefix("192.168.0.0", src_ip, toInt(16)) and !compareCIDRPrefix("10.0.0.0", src_ip, toInt(8)))))
| timeslice 1m
|where if ("{{protocol}}" = "*", true, protocol matches "{{protocol}}") AND if ("{{action}}" = "*", true, action matches "{{action}}") AND if ("{{src_ip}}" = "*", true, src_ip matches "{{src_ip}}") AND if ("{{dest_port}}" = "*", true, dest_port matches "{{dest_port}}") AND if ("{{src_port}}" = "*", true, src_port matches "{{src_port}}") AND if ("{{dest_ip}}" = "*", true, dest_ip matches "{{dest_ip}}") AND if ("{{direction}}" = "*", true, direction matches "{{direction}}") AND if ("{{account_id}}" = "*", true, account_id matches "{{account_id}}")
|count by _timeslice, protocol | protocol as Protocol_Val
| lookup Keyword from https://s3.amazonaws.com/sumologic-app-data/protocol-numbers.csv on Decimal=Protocol_val 
```

**Alex Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 01 - Accepted And Rejected Traffic - New/Allowed Traffic Over Time**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**Alex Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 01 - Accepted And Rejected Traffic - New/Denied Traffic Over Time**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**Alex Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 01 - Accepted And Rejected Traffic - New/Network Traffic Accepted vs Rejected**
```
_sourceCategory = Labs/AWS/VPC (ACCEPT or REJECT)
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**Alex Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 01 - Accepted And Rejected Traffic - New/Top DestIP**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**Alex Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 01 - Accepted And Rejected Traffic - New/Top SrcIP**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Bytes Accepted by Destination Port**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Bytes Accepted by Transport Protocol**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
| where action="ACCEPT"
| where ((compareCIDRPrefix("172.16.0.0", srcDevice_ip, toInt(12)) or compareCIDRPrefix("192.168.0.0", srcDevice_ip, toInt(16)) or compareCIDRPrefix("10.0.0.0", srcDevice_ip, toInt(8)) and (!compareCIDRPrefix("172.16.0.0", dstDevice_ip, toInt(12)) and !compareCIDRPrefix("192.168.0.0", dstDevice_ip, toInt(16)) and !compareCIDRPrefix("10.0.0.0", dstDevice_ip, toInt(8)))) or 
(compareCIDRPrefix("172.16.0.0", dstDevice_ip, toInt(12)) or compareCIDRPrefix("192.168.0.0", dstDevice_ip, toInt(16)) or compareCIDRPrefix("10.0.0.0", dstDevice_ip, toInt(8)) and (!compareCIDRPrefix("172.16.0.0", srcDevice_ip, toInt(12)) and !compareCIDRPrefix("192.168.0.0", srcDevice_ip, toInt(16)) and !compareCIDRPrefix("10.0.0.0", srcDevice_ip, toInt(8)))))
| sum(bytes) by protocol | protocol as Protocol_Val
| lookup Keyword from https://s3.amazonaws.com/sumologic-app-data/protocol-numbers.csv on Decimal=Protocol_val 
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Destination ASN by TCP Destination Port**
```
_sourceCategory = Labs/AWS/VPC ACCEPT 6 
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end,action,log_status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Flows Rejected by AccountID**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Flows Rejected by Destination Port**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Flows Rejected by InterfaceID**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Geo Location of Threats with Accepted Flow Logs**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where action="ACCEPT" and isPublicIP(srcDevice_ip)
| count by srcDevice_ip
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=srcDevice_ip
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Geo Location of Threats with Rejected Flow Logs**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where action="REJECT" and isPublicIP(srcDevice_ip)
| count by srcDevice_ip
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=srcDevice_ip
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Threats Associated with Accepted Flow Logs**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where action="ACCEPT"
| count by srcDevice_ip, src_port, dstDevice_ip, dest_port, interfaceID, accountID, Protocol
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=srcDevice_ip
| where type="ip_address" 
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Threats Associated with Rejected Flow Logs**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where action="REJECT"
| count by srcDevice_ip, src_port, dstDevice_ip, dest_port, interfaceID, accountID, Protocol
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=srcDevice_ip
| where type="ip_address" 
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Top20 Accepted by dstDevice_ip**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Top20 Accepted by srcDevice_ip**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Top20 Rejected by dstDevice_ip**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Top20 Rejected by srcDevice_ip**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Bytes Accepted Comparison for Last 3 Days**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Destination Address Locations**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status 
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Destination ASN Bytes by Destination Port**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end,action,log_status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Destination IP Bytes by InterfaceID**
```
_sourceCategory = Labs/AWS/VPC   ACCEPT
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Destination Port by InterfaceID**
```
_sourceCategory = Labs/AWS/VPC   ACCEPT
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Flows Rejected Comparison for Last 3 Days**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Geo Location of Threat Intel Destinations with Accepted Flow Logs**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where action="ACCEPT" and isPublicIP(dest_ip)
| count by dest_ip
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=dest_ip
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Geo Location of Threat Intel Sources with Accepted Flow Logs**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where action="ACCEPT" and isPublicIP(src_ip)
| count by src_ip
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=src_ip
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Rejects by InterfaceID, dst_ip**
```
_sourceCategory = Labs/AWS/VPC  REJECT
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Rejects by InterfaceID, dstDevice_ip**
```
_sourceCategory = Labs/AWS/VPC  REJECT
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Source Address Locations**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status 
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Threat Intel Destinations Over Time by Action**
```
_sourceCategory = Labs/AWS/VPC 
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| timeslice 5m
| count by _timeslice, dest_ip, action
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=dest_ip
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Threat Intel Sources Over Time by Action**
```
_sourceCategory = Labs/AWS/VPC 
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| timeslice 5m
| count by _timeslice, src_ip, action
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=src_ip
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Top TCP Destination Ports by ASN Organization**
```
_sourceCategory = Labs/AWS/VPC ACCEPT 6 
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end,action,log_status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Top10 AccountIDs by Bytes**
```
_sourceCategory = Labs/AWS/VPC ACCEPT 6 
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end,action,log_status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Top10 Rejected TCP Destination Ports**
```
_sourceCategory = Labs/AWS/VPC REJECT 6 
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end,action,log_status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Top10 TCP Destination Ports**
```
_sourceCategory = Labs/AWS/VPC ACCEPT 6 
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end,action,log_status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Top20 InterfaceID by Bytes**
```
_sourceCategory = Labs/AWS/VPC   ACCEPT
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Total Accept Flow Records**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Total Hits from Threat Intel Source**
```
_sourceCategory = Labs/AWS/VPC 
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop 
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Total Hits to Threat Intel Destination**
```
_sourceCategory = Labs/AWS/VPC 
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop 
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Overview/Total Reject Flow Records**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Traffic Direction Monitoring/Geo Location of Threats with Inbound Accepted Flows**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where action="ACCEPT" and isPublicIP(src_ip)
| count by src_ip
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=src_ip
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Traffic Direction Monitoring/Geo Location of Threats with Outbound Accepted Flows**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where action="ACCEPT" and isPublicIP(dest_ip)
| count by src_ip
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=src_ip
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Traffic Direction Monitoring/Inbound Accepted Flows**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Traffic Direction Monitoring/Inbound Rejected Flows**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Traffic Direction Monitoring/Inbound Top 10 Desination Addresses by MB**
```
_sourceCategory = Labs/AWS/VPC 
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Traffic Direction Monitoring/Inbound Top 10 dstDevice_ip by MB**
```
_sourceCategory = Labs/AWS/VPC 
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Traffic Direction Monitoring/Inbound Top 10 Source Addresses by MB**
```
_sourceCategory = Labs/AWS/VPC 
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Traffic Direction Monitoring/Inbound Top 10 srcDevice_ip by MB**
```
_sourceCategory = Labs/AWS/VPC 
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Traffic Direction Monitoring/Outbound Accepted Flows**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Traffic Direction Monitoring/Outbound Rejected Flows**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Traffic Direction Monitoring/Outbound Top 10 Desination Addresses by MB**
```
_sourceCategory = Labs/AWS/VPC 
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Traffic Direction Monitoring/Outbound Top 10 dstDevice_ip by MB**
```
_sourceCategory = Labs/AWS/VPC 
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Traffic Direction Monitoring/Outbound Top 10 Source Addresses by MB**
```
_sourceCategory = Labs/AWS/VPC 
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Traffic Direction Monitoring/Outbound Top 10 srcDevice_ip by MB**
```
_sourceCategory = Labs/AWS/VPC 
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Traffic Direction Monitoring/Top 10 Inbound Destination Ports by Flow Records**
```
_sourceCategory = Labs/AWS/VPC 
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/NEW VPC Flow Logs - Security Monitoring & Analytics - Traffic Direction Monitoring/Top 10 Outbound Destination Ports by Flow Records**
```
_sourceCategory = Labs/AWS/VPC 
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Bytes Accepted by Destination Port**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**Alex Amazon VPC Flow/VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Bytes Accepted by Transport Protocol**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
| where action="ACCEPT"
| where ((compareCIDRPrefix("172.16.0.0", src_ip, toInt(12)) or compareCIDRPrefix("192.168.0.0", src_ip, toInt(16)) or compareCIDRPrefix("10.0.0.0", src_ip, toInt(8)) and (!compareCIDRPrefix("172.16.0.0", dest_ip, toInt(12)) and !compareCIDRPrefix("192.168.0.0", dest_ip, toInt(16)) and !compareCIDRPrefix("10.0.0.0", dest_ip, toInt(8)))) or 
(compareCIDRPrefix("172.16.0.0", dest_ip, toInt(12)) or compareCIDRPrefix("192.168.0.0", dest_ip, toInt(16)) or compareCIDRPrefix("10.0.0.0", dest_ip, toInt(8)) and (!compareCIDRPrefix("172.16.0.0", src_ip, toInt(12)) and !compareCIDRPrefix("192.168.0.0", src_ip, toInt(16)) and !compareCIDRPrefix("10.0.0.0", src_ip, toInt(8)))))
| sum(bytes) by protocol | protocol as Protocol_Val
| lookup Keyword from https://s3.amazonaws.com/sumologic-app-data/protocol-numbers.csv on Decimal=Protocol_val 
```

**Alex Amazon VPC Flow/VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Destination ASN by TCP Destination Port**
```
_sourceCategory = Labs/AWS/VPC ACCEPT 6 
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end,action,log_status
```

**Alex Amazon VPC Flow/VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Flows Rejected by AccountID**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Flows Rejected by Destination Port**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**Alex Amazon VPC Flow/VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Flows Rejected by InterfaceID**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**Alex Amazon VPC Flow/VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Geo Location of Threats with Accepted Flow Logs**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where action="ACCEPT" and isPublicIP(src_ip)
| count by src_ip
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=src_ip
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Alex Amazon VPC Flow/VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Geo Location of Threats with Rejected Flow Logs**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where action="REJECT" and isPublicIP(src_ip)
| count by src_ip
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=src_ip
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Alex Amazon VPC Flow/VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Threats Associated with Accepted Flow Logs**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where action="ACCEPT"
| count by src_ip, src_port, dest_ip, dest_port, interfaceID, accountID, Protocol
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=src_ip
| where type="ip_address" 
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Alex Amazon VPC Flow/VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Threats Associated with Rejected Flow Logs**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| if (_raw matches "{*", message, _raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| where action="REJECT"
| count by src_ip, src_port, dest_ip, dest_port, interfaceID, accountID, Protocol
| lookup type, actor, raw, threatlevel as malicious_confidence, threat from sumo://threat/cs on threat=src_ip
| where type="ip_address" 
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name nodrop
```

**Alex Amazon VPC Flow/VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Top20 Accepted by DstIP**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**Alex Amazon VPC Flow/VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Top20 Accepted by SrcIP**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**Alex Amazon VPC Flow/VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Top20 Rejected by DstIP**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**Alex Amazon VPC Flow/VPC Flow Logs - Security Monitoring & Analytics - Accepts & Rejects/Top20 Rejected by SrcIP**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```


