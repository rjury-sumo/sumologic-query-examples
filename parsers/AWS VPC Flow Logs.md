# Parsers For AWS VPC Flow Logs

## Parser:
```
| json "message"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
 `n```
### Use Cases:
Actions, Actions by Destination Address Over Time, Actions by InterfaceID, Actions by Minute - Outlier, Actions by Minute - Trend, Actions by Source Address Over Time, Bytes by Minute - Outlier, Bytes by Minute - Trend, Flow Durations, Flow Record Count by Destination Address, Flow Record Count by Source Address, Flow Records by InterfaceID, Flow Records per Protocol by Hour, Log Status, Max Flow Time, Packets Box Plot, Packets by Minute - Outlier, Packets by Minute - Trend, Rejections per Minute, REJECTs by InterfaceID, Destination Address, REJECTs by Minute - Outlier, REJECTs by Minute - Trend, REJECTs by Source Address, Source Address Locations, Source Address Locations - REJECTs, Top 10 Actions by Protocol, Top 10 Destination Addresses by MB, Top 10 Destination Ports by Flow Record, Top 10 Ports by Action, Top 10 REJECT Destination Addresses, Top 10 REJECT Destination Addresses, Ports, Top 10 REJECT Source Addresses, Top 10 REJECT Source Addresses, Ports, Top 10 REJECTs by interfaceID, Top 10 REJECTs by Protocol, Top 10 Source Addresses by MB, Top 10 Source IPs by Flow Time



## Parser:
```
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
 `n```
### Use Cases:
Actions, Actions by Destination Address Over Time, Actions by InterfaceID, Actions by Minute - Outlier, Actions by Minute - Trend, Actions by Source Address Over Time, Bytes by Minute - Outlier, Bytes by Minute - Trend, Flow Durations, Flow Record Count by Destination Address, Flow Record Count by Source Address, Flow Records by InterfaceID, Flow Records per Protocol by Hour, Log Status, Max Flow Time, Packets Box Plot, Packets by Minute - Outlier, Packets by Minute - Trend, Rejections per Minute, REJECTs by InterfaceID, Destination Address, REJECTs by Minute - Outlier, REJECTs by Minute - Trend, REJECTs by Source Address, Source Address Locations, Source Address Locations - REJECTs, Top 10 Actions by Protocol, Top 10 Destination Addresses by MB, Top 10 Destination Ports by Flow Record, Top 10 Ports by Action, Top 10 REJECT Destination Addresses, Top 10 REJECT Destination Addresses, Ports, Top 10 REJECT Source Addresses, Top 10 REJECT Source Addresses, Ports, Top 10 REJECTs by interfaceID, Top 10 REJECTs by Protocol, Top 10 Source Addresses by MB, Top 10 Source IPs by Flow Time



## Parser:
```
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,protocol,Packets,bytes,StartSample,EndSample,Action,status 
 `n```
### Use Cases:
Actions by Destination Address Over Time, Actions by InterfaceID, Actions by Minute - Outlier, Actions by Minute - Trend, Actions by Source Address Over Time, Bytes by Minute - Outlier, Bytes by Minute - Trend, Flow Durations, Flow Record Count by Destination Address, Flow Record Count by Source Address, Flow Records per Protocol by Hour, Max Flow Time, Packets by Minute - Outlier, Packets by Minute - Trend, Rejections per Minute, Source Address Locations, Top 10 Source Addresses by MB, Top 10 Source IPs by Flow Time



## Parser:
```
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status 
 `n```
### Use Cases:
Actions by Destination Address Over Time, Actions by InterfaceID, Flow Durations, Flow Record Count by Destination Address, Flow Record Count by Source Address, Max Flow Time, Source Address Locations, Top 10 Source IPs by Flow Time


