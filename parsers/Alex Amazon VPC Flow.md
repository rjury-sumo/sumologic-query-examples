# Parsers For Alex Amazon VPC Flow

## Parser:
```
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
 
```
### Use Cases:
Allowed Network Activity by Direction, Allowed Network Activity by Transport and Internet Layer Protocol, Allowed Traffic Over Time, Bytes Accepted by Destination Port, Bytes Accepted by Transport Protocol, Bytes Accepted Comparison for Last 3 Days, Denied Traffic Over Time, Destination Address Locations, Destination ASN by TCP Destination Port, Destination ASN Bytes by Destination Port, Destination IP Bytes by InterfaceID, Destination Port by InterfaceID, Flows Rejected by AccountID, Flows Rejected by Destination Port, Flows Rejected by InterfaceID, Flows Rejected Comparison for Last 3 Days, Geo Location of Threat Intel Destinations with Accepted Flow Logs, Geo Location of Threat Intel Sources with Accepted Flow Logs, Geo Location of Threats with Accepted Flow Logs, Geo Location of Threats with Inbound Accepted Flows, Geo Location of Threats with Outbound Accepted Flows, Geo Location of Threats with Rejected Flow Logs, Inbound Accepted Flows, Inbound Rejected Flows, Inbound Top 10 Desination Addresses by MB, Inbound Top 10 dstDevice_ip by MB, Inbound Top 10 Source Addresses by MB, Inbound Top 10 srcDevice_ip by MB, Network Traffic Accepted vs Rejected, Outbound Accepted Flows, Outbound Rejected Flows, Outbound Top 10 Desination Addresses by MB, Outbound Top 10 dstDevice_ip by MB, Outbound Top 10 Source Addresses by MB, Outbound Top 10 srcDevice_ip by MB, Rejects by InterfaceID, dst_ip, Rejects by InterfaceID, dstDevice_ip, Source Address Locations, Threat Intel Destinations Over Time by Action, Threat Intel Sources Over Time by Action, Threats Associated with Accepted Flow Logs, Threats Associated with Rejected Flow Logs, Top 10 Inbound Destination Ports by Flow Records, Top 10 Outbound Destination Ports by Flow Records, Top DestIP, Top SrcIP, Top TCP Destination Ports by ASN Organization, Top10 AccountIDs by Bytes, Top10 Rejected TCP Destination Ports, Top10 TCP Destination Ports, Top20 Accepted by dstDevice_ip, Top20 Accepted by DstIP, Top20 Accepted by srcDevice_ip, Top20 Accepted by SrcIP, Top20 InterfaceID by Bytes, Top20 Rejected by dstDevice_ip, Top20 Rejected by DstIP, Top20 Rejected by srcDevice_ip, Top20 Rejected by SrcIP, Total Accept Flow Records, Total Hits from Threat Intel Source, Total Hits to Threat Intel Destination, Total Reject Flow Records



## Parser:
```
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end,action,log_status
 
```
### Use Cases:
Allowed Network Activity by Direction, Allowed Network Activity by Transport and Internet Layer Protocol, Allowed Traffic Over Time, Bytes Accepted by Destination Port, Bytes Accepted by Transport Protocol, Bytes Accepted Comparison for Last 3 Days, Denied Traffic Over Time, Destination Address Locations, Destination ASN by TCP Destination Port, Destination ASN Bytes by Destination Port, Destination IP Bytes by InterfaceID, Destination Port by InterfaceID, Flows Rejected by AccountID, Flows Rejected by Destination Port, Flows Rejected by InterfaceID, Flows Rejected Comparison for Last 3 Days, Geo Location of Threat Intel Destinations with Accepted Flow Logs, Geo Location of Threat Intel Sources with Accepted Flow Logs, Geo Location of Threats with Accepted Flow Logs, Geo Location of Threats with Inbound Accepted Flows, Geo Location of Threats with Outbound Accepted Flows, Geo Location of Threats with Rejected Flow Logs, Inbound Accepted Flows, Inbound Rejected Flows, Inbound Top 10 Desination Addresses by MB, Inbound Top 10 dstDevice_ip by MB, Inbound Top 10 Source Addresses by MB, Inbound Top 10 srcDevice_ip by MB, Network Traffic Accepted vs Rejected, Outbound Accepted Flows, Outbound Rejected Flows, Outbound Top 10 Desination Addresses by MB, Outbound Top 10 dstDevice_ip by MB, Outbound Top 10 Source Addresses by MB, Outbound Top 10 srcDevice_ip by MB, Rejects by InterfaceID, dst_ip, Rejects by InterfaceID, dstDevice_ip, Source Address Locations, Threat Intel Destinations Over Time by Action, Threat Intel Sources Over Time by Action, Threats Associated with Accepted Flow Logs, Threats Associated with Rejected Flow Logs, Top 10 Inbound Destination Ports by Flow Records, Top 10 Outbound Destination Ports by Flow Records, Top DestIP, Top SrcIP, Top TCP Destination Ports by ASN Organization, Top10 AccountIDs by Bytes, Top10 Rejected TCP Destination Ports, Top10 TCP Destination Ports, Top20 Accepted by dstDevice_ip, Top20 Accepted by DstIP, Top20 Accepted by srcDevice_ip, Top20 Accepted by SrcIP, Top20 InterfaceID by Bytes, Top20 Rejected by dstDevice_ip, Top20 Rejected by DstIP, Top20 Rejected by srcDevice_ip, Top20 Rejected by SrcIP, Total Accept Flow Records, Total Hits from Threat Intel Source, Total Hits to Threat Intel Destination, Total Reject Flow Records



## Parser:
```
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
 
```
### Use Cases:
Allowed Network Activity by Direction, Allowed Network Activity by Transport and Internet Layer Protocol, Allowed Traffic Over Time, Bytes Accepted by Destination Port, Bytes Accepted by Transport Protocol, Denied Traffic Over Time, Flows Rejected by Destination Port, Network Traffic Accepted vs Rejected, Top DestIP, Top SrcIP, Top20 Accepted by dstDevice_ip, Top20 Accepted by srcDevice_ip, Top20 Rejected by dstDevice_ip, Top20 Rejected by srcDevice_ip



## Parser:
```
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, srcDevice_ip, dstDevice_ip, src_port, dest_port, Protocol, packets, bytes, start, end,action,log_status
 
```
### Use Cases:
Allowed Network Activity by Direction, Allowed Network Activity by Transport and Internet Layer Protocol, Allowed Traffic Over Time, Bytes Accepted by Destination Port, Bytes Accepted by Transport Protocol, Bytes Accepted Comparison for Last 3 Days, Denied Traffic Over Time, Destination ASN by TCP Destination Port, Destination ASN Bytes by Destination Port, Destination Port by InterfaceID, Flows Rejected by AccountID, Flows Rejected by Destination Port, Flows Rejected by InterfaceID, Flows Rejected Comparison for Last 3 Days, Geo Location of Threat Intel Sources with Accepted Flow Logs, Geo Location of Threats with Accepted Flow Logs, Geo Location of Threats with Rejected Flow Logs, Network Traffic Accepted vs Rejected, Rejects by InterfaceID, dstDevice_ip, Source Address Locations, Threat Intel Sources Over Time by Action, Threats Associated with Accepted Flow Logs, Threats Associated with Rejected Flow Logs, Top DestIP, Top SrcIP, Top TCP Destination Ports by ASN Organization, Top10 AccountIDs by Bytes, Top10 Rejected TCP Destination Ports, Top10 TCP Destination Ports, Top20 Accepted by dstDevice_ip, Top20 Accepted by srcDevice_ip, Top20 Rejected by dstDevice_ip, Top20 Rejected by srcDevice_ip, Total Accept Flow Records, Total Hits from Threat Intel Source, Total Reject Flow Records



## Parser:
```
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| json field=raw "labels[*].name" as label_name nodrop
 
```
### Use Cases:
Allowed Network Activity by Direction, Allowed Network Activity by Transport and Internet Layer Protocol, Allowed Traffic Over Time, Bytes Accepted by Destination Port, Bytes Accepted by Transport Protocol, Bytes Accepted Comparison for Last 3 Days, Denied Traffic Over Time, Destination Address Locations, Destination ASN by TCP Destination Port, Destination ASN Bytes by Destination Port, Destination IP Bytes by InterfaceID, Destination Port by InterfaceID, Flows Rejected by AccountID, Flows Rejected by Destination Port, Flows Rejected by InterfaceID, Flows Rejected Comparison for Last 3 Days, Geo Location of Threat Intel Destinations with Accepted Flow Logs, Geo Location of Threat Intel Sources with Accepted Flow Logs, Geo Location of Threats with Accepted Flow Logs, Geo Location of Threats with Inbound Accepted Flows, Geo Location of Threats with Outbound Accepted Flows, Geo Location of Threats with Rejected Flow Logs, Inbound Accepted Flows, Inbound Rejected Flows, Inbound Top 10 Desination Addresses by MB, Inbound Top 10 dstDevice_ip by MB, Inbound Top 10 Source Addresses by MB, Inbound Top 10 srcDevice_ip by MB, Network Traffic Accepted vs Rejected, Outbound Accepted Flows, Outbound Rejected Flows, Outbound Top 10 Desination Addresses by MB, Outbound Top 10 dstDevice_ip by MB, Outbound Top 10 Source Addresses by MB, Outbound Top 10 srcDevice_ip by MB, Rejects by InterfaceID, dst_ip, Rejects by InterfaceID, dstDevice_ip, Source Address Locations, Threat Intel Destinations Over Time by Action, Threat Intel Sources Over Time by Action, Threats Associated with Accepted Flow Logs, Threats Associated with Rejected Flow Logs, Top 10 Inbound Destination Ports by Flow Records, Top 10 Outbound Destination Ports by Flow Records, Top DestIP, Top SrcIP, Top TCP Destination Ports by ASN Organization, Top10 AccountIDs by Bytes, Top10 Rejected TCP Destination Ports, Top10 TCP Destination Ports, Top20 Accepted by dstDevice_ip, Top20 Accepted by DstIP, Top20 Accepted by srcDevice_ip, Top20 Accepted by SrcIP, Top20 InterfaceID by Bytes, Top20 Rejected by dstDevice_ip, Top20 Rejected by DstIP, Top20 Rejected by srcDevice_ip, Top20 Rejected by SrcIP, Total Accept Flow Records, Total Hits from Threat Intel Source, Total Hits to Threat Intel Destination, Total Reject Flow Records



## Parser:
```
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop 
 
```
### Use Cases:
Allowed Network Activity by Direction, Allowed Network Activity by Transport and Internet Layer Protocol, Allowed Traffic Over Time, Bytes Accepted by Destination Port, Bytes Accepted by Transport Protocol, Bytes Accepted Comparison for Last 3 Days, Denied Traffic Over Time, Destination Address Locations, Destination ASN by TCP Destination Port, Destination ASN Bytes by Destination Port, Destination IP Bytes by InterfaceID, Destination Port by InterfaceID, Flows Rejected by AccountID, Flows Rejected by Destination Port, Flows Rejected by InterfaceID, Flows Rejected Comparison for Last 3 Days, Geo Location of Threat Intel Destinations with Accepted Flow Logs, Geo Location of Threat Intel Sources with Accepted Flow Logs, Geo Location of Threats with Accepted Flow Logs, Geo Location of Threats with Inbound Accepted Flows, Geo Location of Threats with Outbound Accepted Flows, Geo Location of Threats with Rejected Flow Logs, Inbound Accepted Flows, Inbound Rejected Flows, Inbound Top 10 dstDevice_ip by MB, Inbound Top 10 srcDevice_ip by MB, Network Traffic Accepted vs Rejected, Outbound Accepted Flows, Outbound Rejected Flows, Outbound Top 10 dstDevice_ip by MB, Outbound Top 10 srcDevice_ip by MB, Rejects by InterfaceID, dst_ip, Rejects by InterfaceID, dstDevice_ip, Source Address Locations, Threat Intel Destinations Over Time by Action, Threat Intel Sources Over Time by Action, Threats Associated with Accepted Flow Logs, Threats Associated with Rejected Flow Logs, Top 10 Inbound Destination Ports by Flow Records, Top 10 Outbound Destination Ports by Flow Records, Top DestIP, Top SrcIP, Top TCP Destination Ports by ASN Organization, Top10 AccountIDs by Bytes, Top10 Rejected TCP Destination Ports, Top10 TCP Destination Ports, Top20 Accepted by dstDevice_ip, Top20 Accepted by srcDevice_ip, Top20 InterfaceID by Bytes, Top20 Rejected by dstDevice_ip, Top20 Rejected by srcDevice_ip, Total Accept Flow Records, Total Hits from Threat Intel Source, Total Hits to Threat Intel Destination, Total Reject Flow Records



## Parser:
```
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop
| json field=raw "malware_families[*]" as threat_malware_families nodrop
| json field=raw "last_updated" as last_updated nodrop
| json field=raw "labels[*].name" as label_name nodrop
 
```
### Use Cases:
Allowed Network Activity by Direction, Allowed Network Activity by Transport and Internet Layer Protocol, Allowed Traffic Over Time, Bytes Accepted by Destination Port, Bytes Accepted by Transport Protocol, Bytes Accepted Comparison for Last 3 Days, Denied Traffic Over Time, Destination Address Locations, Destination ASN by TCP Destination Port, Destination ASN Bytes by Destination Port, Destination IP Bytes by InterfaceID, Destination Port by InterfaceID, Flows Rejected by AccountID, Flows Rejected by Destination Port, Flows Rejected by InterfaceID, Flows Rejected Comparison for Last 3 Days, Geo Location of Threat Intel Destinations with Accepted Flow Logs, Geo Location of Threat Intel Sources with Accepted Flow Logs, Geo Location of Threats with Accepted Flow Logs, Geo Location of Threats with Inbound Accepted Flows, Geo Location of Threats with Outbound Accepted Flows, Geo Location of Threats with Rejected Flow Logs, Inbound Accepted Flows, Inbound Rejected Flows, Inbound Top 10 dstDevice_ip by MB, Inbound Top 10 srcDevice_ip by MB, Network Traffic Accepted vs Rejected, Outbound Accepted Flows, Outbound Rejected Flows, Outbound Top 10 dstDevice_ip by MB, Outbound Top 10 srcDevice_ip by MB, Rejects by InterfaceID, dstDevice_ip, Source Address Locations, Threat Intel Destinations Over Time by Action, Threat Intel Sources Over Time by Action, Threats Associated with Accepted Flow Logs, Threats Associated with Rejected Flow Logs, Top DestIP, Top SrcIP, Top TCP Destination Ports by ASN Organization, Top10 AccountIDs by Bytes, Top10 Rejected TCP Destination Ports, Top10 TCP Destination Ports, Top20 Accepted by dstDevice_ip, Top20 Accepted by srcDevice_ip, Top20 InterfaceID by Bytes, Top20 Rejected by dstDevice_ip, Top20 Rejected by srcDevice_ip, Total Accept Flow Records, Total Hits from Threat Intel Source, Total Hits to Threat Intel Destination, Total Reject Flow Records



## Parser:
```
| json "logStream", "logGroup", "message", "direction" as logStream, logGroup, message, direction nodrop 
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status nodrop 
 
```
### Use Cases:
Allowed Network Activity by Direction, Allowed Network Activity by Transport and Internet Layer Protocol, Allowed Traffic Over Time, Bytes Accepted by Destination Port, Bytes Accepted by Transport Protocol, Bytes Accepted Comparison for Last 3 Days, Denied Traffic Over Time, Destination ASN by TCP Destination Port, Destination ASN Bytes by Destination Port, Destination IP Bytes by InterfaceID, Destination Port by InterfaceID, Flows Rejected by AccountID, Flows Rejected by Destination Port, Flows Rejected by InterfaceID, Flows Rejected Comparison for Last 3 Days, Geo Location of Threat Intel Sources with Accepted Flow Logs, Geo Location of Threats with Accepted Flow Logs, Geo Location of Threats with Rejected Flow Logs, Network Traffic Accepted vs Rejected, Rejects by InterfaceID, dstDevice_ip, Source Address Locations, Threat Intel Sources Over Time by Action, Threats Associated with Accepted Flow Logs, Threats Associated with Rejected Flow Logs, Top DestIP, Top SrcIP, Top TCP Destination Ports by ASN Organization, Top10 AccountIDs by Bytes, Top10 Rejected TCP Destination Ports, Top10 TCP Destination Ports, Top20 Accepted by dstDevice_ip, Top20 Accepted by srcDevice_ip, Top20 InterfaceID by Bytes, Top20 Rejected by dstDevice_ip, Top20 Rejected by srcDevice_ip, Total Accept Flow Records, Total Hits from Threat Intel Source, Total Hits to Threat Intel Destination, Total Reject Flow Records



## Parser:
```
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
 
```
### Use Cases:
Allowed Network Activity by Direction, Allowed Network Activity by Transport and Internet Layer Protocol, Allowed Traffic Over Time, Bytes Accepted by Destination Port, Bytes Accepted by Transport Protocol, Bytes Accepted Comparison for Last 3 Days, Denied Traffic Over Time, Destination Address Locations, Destination ASN by TCP Destination Port, Destination ASN Bytes by Destination Port, Destination IP Bytes by InterfaceID, Destination Port by InterfaceID, Flows Rejected by AccountID, Flows Rejected by Destination Port, Flows Rejected by InterfaceID, Flows Rejected Comparison for Last 3 Days, Geo Location of Threat Intel Destinations with Accepted Flow Logs, Geo Location of Threat Intel Sources with Accepted Flow Logs, Geo Location of Threats with Accepted Flow Logs, Geo Location of Threats with Inbound Accepted Flows, Geo Location of Threats with Outbound Accepted Flows, Geo Location of Threats with Rejected Flow Logs, Inbound Accepted Flows, Inbound Rejected Flows, Inbound Top 10 Desination Addresses by MB, Inbound Top 10 dstDevice_ip by MB, Inbound Top 10 Source Addresses by MB, Inbound Top 10 srcDevice_ip by MB, Network Traffic Accepted vs Rejected, Outbound Accepted Flows, Outbound Rejected Flows, Outbound Top 10 Desination Addresses by MB, Outbound Top 10 dstDevice_ip by MB, Outbound Top 10 Source Addresses by MB, Outbound Top 10 srcDevice_ip by MB, Rejects by InterfaceID, dst_ip, Rejects by InterfaceID, dstDevice_ip, Source Address Locations, Threat Intel Destinations Over Time by Action, Threat Intel Sources Over Time by Action, Threats Associated with Accepted Flow Logs, Threats Associated with Rejected Flow Logs, Top 10 Inbound Destination Ports by Flow Records, Top 10 Outbound Destination Ports by Flow Records, Top DestIP, Top SrcIP, Top TCP Destination Ports by ASN Organization, Top10 AccountIDs by Bytes, Top10 Rejected TCP Destination Ports, Top10 TCP Destination Ports, Top20 Accepted by dstDevice_ip, Top20 Accepted by DstIP, Top20 Accepted by srcDevice_ip, Top20 Accepted by SrcIP, Top20 InterfaceID by Bytes, Top20 Rejected by dstDevice_ip, Top20 Rejected by DstIP, Top20 Rejected by srcDevice_ip, Top20 Rejected by SrcIP, Total Accept Flow Records, Total Hits from Threat Intel Source, Total Hits to Threat Intel Destination, Total Reject Flow Records



## Parser:
```
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status 
 
```
### Use Cases:
Allowed Network Activity by Direction, Allowed Network Activity by Transport and Internet Layer Protocol, Allowed Traffic Over Time, Bytes Accepted by Destination Port, Bytes Accepted by Transport Protocol, Bytes Accepted Comparison for Last 3 Days, Denied Traffic Over Time, Destination Address Locations, Destination ASN by TCP Destination Port, Destination ASN Bytes by Destination Port, Destination IP Bytes by InterfaceID, Destination Port by InterfaceID, Flows Rejected by AccountID, Flows Rejected by Destination Port, Flows Rejected by InterfaceID, Flows Rejected Comparison for Last 3 Days, Geo Location of Threat Intel Destinations with Accepted Flow Logs, Geo Location of Threat Intel Sources with Accepted Flow Logs, Geo Location of Threats with Accepted Flow Logs, Geo Location of Threats with Inbound Accepted Flows, Geo Location of Threats with Outbound Accepted Flows, Geo Location of Threats with Rejected Flow Logs, Inbound Accepted Flows, Inbound Rejected Flows, Inbound Top 10 dstDevice_ip by MB, Inbound Top 10 srcDevice_ip by MB, Network Traffic Accepted vs Rejected, Outbound Accepted Flows, Outbound Rejected Flows, Outbound Top 10 dstDevice_ip by MB, Outbound Top 10 srcDevice_ip by MB, Rejects by InterfaceID, dst_ip, Rejects by InterfaceID, dstDevice_ip, Source Address Locations, Threat Intel Destinations Over Time by Action, Threat Intel Sources Over Time by Action, Threats Associated with Accepted Flow Logs, Threats Associated with Rejected Flow Logs, Top 10 Inbound Destination Ports by Flow Records, Top 10 Outbound Destination Ports by Flow Records, Top DestIP, Top SrcIP, Top TCP Destination Ports by ASN Organization, Top10 AccountIDs by Bytes, Top10 Rejected TCP Destination Ports, Top10 TCP Destination Ports, Top20 Accepted by dstDevice_ip, Top20 Accepted by srcDevice_ip, Top20 InterfaceID by Bytes, Top20 Rejected by dstDevice_ip, Top20 Rejected by srcDevice_ip, Total Accept Flow Records, Total Hits from Threat Intel Source, Total Hits to Threat Intel Destination, Total Reject Flow Records



## Parser:
```
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
 
```
### Use Cases:
Allowed Network Activity by Direction, Allowed Network Activity by Transport and Internet Layer Protocol, Allowed Traffic Over Time, Bytes Accepted by Destination Port, Bytes Accepted by Transport Protocol, Bytes Accepted Comparison for Last 3 Days, Denied Traffic Over Time, Destination Address Locations, Destination ASN by TCP Destination Port, Destination ASN Bytes by Destination Port, Destination IP Bytes by InterfaceID, Destination Port by InterfaceID, Flows Rejected by AccountID, Flows Rejected by Destination Port, Flows Rejected by InterfaceID, Flows Rejected Comparison for Last 3 Days, Geo Location of Threat Intel Destinations with Accepted Flow Logs, Geo Location of Threat Intel Sources with Accepted Flow Logs, Geo Location of Threats with Accepted Flow Logs, Geo Location of Threats with Inbound Accepted Flows, Geo Location of Threats with Outbound Accepted Flows, Geo Location of Threats with Rejected Flow Logs, Inbound Accepted Flows, Inbound Rejected Flows, Inbound Top 10 dstDevice_ip by MB, Inbound Top 10 srcDevice_ip by MB, Network Traffic Accepted vs Rejected, Outbound Accepted Flows, Outbound Rejected Flows, Outbound Top 10 dstDevice_ip by MB, Outbound Top 10 srcDevice_ip by MB, Rejects by InterfaceID, dstDevice_ip, Source Address Locations, Threat Intel Destinations Over Time by Action, Threat Intel Sources Over Time by Action, Threats Associated with Accepted Flow Logs, Threats Associated with Rejected Flow Logs, Top 10 Inbound Destination Ports by Flow Records, Top 10 Outbound Destination Ports by Flow Records, Top DestIP, Top SrcIP, Top TCP Destination Ports by ASN Organization, Top10 AccountIDs by Bytes, Top10 Rejected TCP Destination Ports, Top10 TCP Destination Ports, Top20 Accepted by dstDevice_ip, Top20 Accepted by srcDevice_ip, Top20 InterfaceID by Bytes, Top20 Rejected by dstDevice_ip, Top20 Rejected by srcDevice_ip, Total Accept Flow Records, Total Hits from Threat Intel Source, Total Hits to Threat Intel Destination, Total Reject Flow Records



## Parser:
```
| json "message" as _rawvpc nodrop | if (_raw matches "{*", _rawvpc,_raw) as message
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,srcDevice_ip,dstDevice_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status 
 
```
### Use Cases:
Allowed Network Activity by Direction, Allowed Network Activity by Transport and Internet Layer Protocol, Allowed Traffic Over Time, Bytes Accepted by Destination Port, Bytes Accepted by Transport Protocol, Bytes Accepted Comparison for Last 3 Days, Denied Traffic Over Time, Destination Address Locations, Destination ASN by TCP Destination Port, Destination ASN Bytes by Destination Port, Destination IP Bytes by InterfaceID, Destination Port by InterfaceID, Flows Rejected by AccountID, Flows Rejected by Destination Port, Flows Rejected by InterfaceID, Flows Rejected Comparison for Last 3 Days, Geo Location of Threat Intel Destinations with Accepted Flow Logs, Geo Location of Threat Intel Sources with Accepted Flow Logs, Geo Location of Threats with Accepted Flow Logs, Geo Location of Threats with Rejected Flow Logs, Network Traffic Accepted vs Rejected, Rejects by InterfaceID, dstDevice_ip, Source Address Locations, Threat Intel Destinations Over Time by Action, Threat Intel Sources Over Time by Action, Threats Associated with Accepted Flow Logs, Threats Associated with Rejected Flow Logs, Top DestIP, Top SrcIP, Top TCP Destination Ports by ASN Organization, Top10 AccountIDs by Bytes, Top10 Rejected TCP Destination Ports, Top10 TCP Destination Ports, Top20 Accepted by dstDevice_ip, Top20 Accepted by srcDevice_ip, Top20 InterfaceID by Bytes, Top20 Rejected by dstDevice_ip, Top20 Rejected by srcDevice_ip, Total Accept Flow Records, Total Hits from Threat Intel Source, Total Hits to Threat Intel Destination, Total Reject Flow Records


