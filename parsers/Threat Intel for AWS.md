# Parsers For Threat Intel for AWS

**Threat Intel for AWS/Amazon VPC Flow Logs - New/Geo Location of Threats with Accepted Flow Logs**
```
_sourceCategory = Labs/AWS/VPC 
| json "message"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
| where action="ACCEPT"
| lookup type, actor, raw , threatlevel as malicious_confidence,threat   from sumo://threat/cs on src_ip=threat
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel for AWS/Amazon VPC Flow Logs - New/Geo Location of Threats with Rejected Flow Logs**
```
_sourceCategory = Labs/AWS/VPC 
| json "message"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
| where action="REJECT"
| lookup type, actor, raw , threatlevel as malicious_confidence,threat   from sumo://threat/cs on src_ip=threat
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel for AWS/Amazon VPC Flow Logs - New/Threat Breakdown**
```
_sourceCategory = Labs/AWS/VPC 
| json "message"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
| lookup type, actor, raw , threatlevel as malicious_confidence,threat   from sumo://threat/cs on src_ip=threat
| where type="ip_address" 
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel for AWS/Amazon VPC Flow Logs - New/Threats Associated with Accepted Flow Logs**
```
_sourceCategory = Labs/AWS/VPC 
| json "message"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
| where action="ACCEPT"
| lookup type, actor, raw , threatlevel as malicious_confidence,threat   from sumo://threat/cs on src_ip=threat
| where type="ip_address" 
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel for AWS/Amazon VPC Flow Logs - New/Threats Associated with Rejected Flow Logs**
```
_sourceCategory = Labs/AWS/VPC 
| json "message"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
| where action="REJECT"
| lookup type, actor, raw , threatlevel as malicious_confidence,threat   from sumo://threat/cs on src_ip=threat
| where type="ip_address" 
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel for AWS/Amazon VPC Flow Logs - New/Threats Over Time by Action**
```
_sourceCategory = Labs/AWS/VPC 
| json "message"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
| lookup type, actor, raw , threatlevel as malicious_confidence,threat   from sumo://threat/cs on src_ip=threat
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel for AWS/Amazon VPC Flow Logs - New/Top 10 Threat Sources by Action**
```
_sourceCategory = Labs/AWS/VPC 
| json "message"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
| lookup type, actor, raw , threatlevel as malicious_confidence,threat   from sumo://threat/cs on src_ip=threat
| where type="ip_address" 
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel for AWS/AWS CloudTrail - New/Threats Associated with CloudTrail Events**
```
_sourceCategory = Labs/AWS/CloudTrail* 
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, event_name, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| if (result=="" or isNull(result), "Success",result) as result 
| lookup type, actor, raw, threatlevel  as malicious_confidence ,threat from sumo://threat/cs on src_ip=threat
| where type="ip_address" 
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
|  formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel for AWS/AWS CloudTrail - New/Threats By Actor**
```
_sourceCategory = Labs/AWS/CloudTrail* sourceIPAddress 
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, event_name, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| if (result=="" or isNull(result), "Unknown",result) as result
| lookup type, actor, raw, threatlevel as malicious_confidence ,threat from sumo://threat/cs on src_ip=threat
| where type="ip_address" 
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel for AWS/AWS CloudTrail - New/Threats by Events and I.P**
```
_sourceCategory = Labs/AWS/CloudTrail* 
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, event_name, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| if (result=="" or isNull(result), "Success",result) as result 
| where result!="AccessDenied"
| lookup type, actor, raw, threatlevel  as malicious_confidence ,threat from sumo://threat/cs on src_ip=threat
| where type="ip_address" 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel for AWS/AWS CloudTrail - New/Threats by Events and Result**
```
_sourceCategory = Labs/AWS/CloudTrail* 
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, event_name, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| if (result=="" or isNull(result), "Success",result) as result 
| lookup type, actor, raw, threatlevel as malicious_confidence ,threat from sumo://threat/cs on src_ip=threat
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel for AWS/AWS CloudTrail - New/Threats by Geo Location**
```
_sourceCategory = Labs/AWS/CloudTrail*  sourceIPAddress
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, action, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| if (result=="" or isNull(result), "Success",result) as result 
| lookup type, actor, raw, threatlevel as malicious_confidence,threat from sumo://threat/cs on src_ip=threat
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel for AWS/AWS CloudTrail - New/Threats Over Time by Result**
```
_sourceCategory = Labs/AWS/CloudTrail* 
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, event_name, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| if (result=="" or isNull(result), "Success",result) as result 
| lookup type, actor, raw, threatlevel  as malicious_confidence ,threat from sumo://threat/cs on src_ip=threat
| where type="ip_address"
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel for AWS/Threats Associated with Accepted VPC Traffic Flow/Threats Associated with Accepted VPC Traffic Flow**
```
_sourceCategory = Labs/AWS/VPC 
| json "message"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
| where action="ACCEPT"
| lookup type, actor, raw , threatlevel as malicious_confidence,threat   from sumo://threat/cs on src_ip=threat
| where type="ip_address" and   malicious_confidence ="high"
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel for AWS/Threats Associated with CloudTrail Events/Threats Associated with CloudTrail Events**
```
_sourceCategory = Labs/AWS/CloudTrail* 
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, event_name, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| if (result=="" or isNull(result), "Success",result) as result 
| lookup type, actor, raw, threatlevel  as malicious_confidence ,threat from sumo://threat/cs on src_ip=threat
| where type="ip_address" and  malicious_confidence="high"
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
|  formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel for AWS/Threats Associated with requesting Client - ELB/Threats Associated with requesting Client - ELB**
```
_sourceCategory = Labs/AWS/ELB 
| parse regex "\S+\s+(?<elb_server>\S+)\s+(?<src_ip>\S+):(?<src_port>\S+)\s+(?<backendhost>\S+):(?<dest_port>\S+)\s+(?<requestproc>\S+)\s+(?<ba_response>\S+)\s+(?<cli_response>\S+)\s+(?<elb_statuscode>\d+)\s+(?<be_statuscode>\d+)\s+(?<rcvd>\d+)\s+(?<send>\d+)\s+\"(?<method>\w+)\s+(?<fullrequest>\S+)\s+HTTP/[^\"]+\" \"(?<agent>[^\"]+)\" (?<Cipher>[A-Za-z0-9-]+) (?<ssl_protocol>[A-Za-z0-9-.]+)"  nodrop
| parse regex field=fullrequest "(?<protocol>\w+)://(?<hostname>[^/:]+)" 
| lookup type, actor, raw, threatlevel as malicious_confidence,threat from sumo://threat/cs on src_ip=threat
| where type="ip_address" and  malicious_confidence ="high"
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| formatDate(fromseconds(last_updated), "MM-dd-yyyy") as threat_last_updated 
| json field=raw "labels[*].name" as label_name 
```


