# Parsers For AWS VPC Flow Logs

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Interactive - Activity - New/Actions by Destination Address Over Time**
```
_sourceCategory = Labs/AWS/VPC
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Interactive - Activity - New/Actions by InterfaceID**
```
_sourceCategory = Labs/AWS/VPC
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Interactive - Activity - New/Actions by Source Address Over Time**
```
_sourceCategory = Labs/AWS/VPC
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Interactive - Activity - New/Flow Record Count by Destination Address**
```
_sourceCategory = Labs/AWS/VPC
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Interactive - Activity - New/Flow Record Count by Source Address**
```
_sourceCategory = Labs/AWS/VPC
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status 
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Interactive - Activity - New/Source Address Locations**
```
_sourceCategory = Labs/AWS/VPC
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Interactive - Traffic - New/Actions by Minute - Outlier**
```
_sourceCategory = Labs/AWS/VPC
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Interactive - Traffic - New/Actions by Minute - Trend**
```
_sourceCategory = Labs/AWS/VPC
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Interactive - Traffic - New/Bytes by Minute - Outlier**
```
_sourceCategory = Labs/AWS/VPC
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Interactive - Traffic - New/Bytes by Minute - Trend**
```
_sourceCategory = Labs/AWS/VPC
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Interactive - Traffic - New/Packets by Minute - Outlier**
```
_sourceCategory = Labs/AWS/VPC message
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Interactive - Traffic - New/Packets by Minute - Trend**
```
_sourceCategory = Labs/AWS/VPC
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Overview - New/Actions**
```
_sourceCategory = Labs/AWS/VPC 
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Overview - New/Flow Records by InterfaceID**
```
_sourceCategory = Labs/AWS/VPC 
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Overview - New/Flow Records per Protocol by Hour**
```
_sourceCategory = Labs/AWS/VPC 
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,protocol,Packets,bytes,StartSample,EndSample,Action,status 
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Overview - New/Log Status**
```
_sourceCategory = Labs/AWS/VPC 
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Overview - New/Rejections per Minute**
```
_sourceCategory = Labs/AWS/VPC  REJECT
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Overview - New/Source Address Locations**
```
_sourceCategory = Labs/AWS/VPC 
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Overview - New/Top 10 Destination Addresses by MB**
```
_sourceCategory = Labs/AWS/VPC 
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Overview - New/Top 10 Destination Ports by Flow Record**
```
_sourceCategory = Labs/AWS/VPC 
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Overview - New/Top 10 Source Addresses by MB**
```
_sourceCategory = Labs/AWS/VPC 
| json "message"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Rejections - New/REJECTs by InterfaceID, Destination Address**
```
_sourceCategory = Labs/AWS/VPC   REJECT
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Rejections - New/REJECTs by Minute - Outlier**
```
_sourceCategory = Labs/AWS/VPC   REJECT
| json "message"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Rejections - New/REJECTs by Minute - Trend**
```
_sourceCategory = Labs/AWS/VPC   REJECT
| json "message"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Rejections - New/REJECTs by Source Address**
```
_sourceCategory = Labs/AWS/VPC   REJECT
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Rejections - New/Source Address Locations - REJECTs**
```
_sourceCategory = Labs/AWS/VPC   REJECT
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Rejections - New/Top 10 REJECT Destination Addresses**
```
_sourceCategory = Labs/AWS/VPC   REJECT
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Rejections - New/Top 10 REJECT Destination Addresses, Ports**
```
_sourceCategory = Labs/AWS/VPC   REJECT
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Rejections - New/Top 10 REJECT Source Addresses**
```
_sourceCategory = Labs/AWS/VPC   REJECT
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Rejections - New/Top 10 REJECT Source Addresses, Ports**
```
_sourceCategory = Labs/AWS/VPC   REJECT
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Rejections - New/Top 10 REJECTs by interfaceID**
```
_sourceCategory = Labs/AWS/VPC   REJECT
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Rejections - New/Top 10 REJECTs by Protocol**
```
_sourceCategory = Labs/AWS/VPC   REJECT
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Traffic - New/Actions by Minute - Outlier**
```
_sourceCategory = Labs/AWS/VPC  
| json "message"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Traffic - New/Actions by Minute - Trend**
```
_sourceCategory = Labs/AWS/VPC  
| json "message"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Traffic - New/Bytes by Minute - Outlier**
```
_sourceCategory = Labs/AWS/VPC  
| json "message"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Traffic - New/Bytes by Minute - Trend**
```
_sourceCategory = Labs/AWS/VPC  
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Traffic - New/Packets Box Plot**
```
_sourceCategory = Labs/AWS/VPC  
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Traffic - New/Packets by Minute - Outlier**
```
_sourceCategory = Labs/AWS/VPC  
| json "message"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Traffic - New/Packets by Minute - Trend**
```
_sourceCategory = Labs/AWS/VPC  
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Traffic - New/Top 10 Actions by Protocol**
```
_sourceCategory = Labs/AWS/VPC  
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Amazon VPC Flow Logs - Live - Traffic - New/Top 10 Ports by Action**
```
_sourceCategory = Labs/AWS/VPC  
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Flow Durations/Flow Durations**
```
_sourceCategory = Labs/AWS/VPC 
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Max Flow Time/Max Flow Time**
```
_sourceCategory = Labs/AWS/VPC 
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```

**AWS VPC Flow Logs/Top 10 Source IPs by Flow Time/Top 10 Source IPs by Flow Time**
```
_sourceCategory = Labs/AWS/VPC 
| json "message","logStream","logGroup"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
```


