# Parsers For Threat Intel for AWS

## Parser:
```
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, action, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| json field=raw "labels[*].name" as label_name 
 
```
### Use Cases:
Geo Location of Threats with Accepted Flow Logs, Geo Location of Threats with Rejected Flow Logs, Threat Breakdown, Threats Associated with Accepted Flow Logs, Threats Associated with Accepted VPC Traffic Flow, Threats Associated with CloudTrail Events, Threats Associated with Rejected Flow Logs, Threats Associated with requesting Client - ELB, Threats By Actor, Threats by Events and I.P, Threats by Events and Result, Threats by Geo Location, Threats Over Time by Action, Top 10 Threat Sources by Action



## Parser:
```
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, event_name, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| json field=raw "labels[*].name" as label_name 
 
```
### Use Cases:
Geo Location of Threats with Accepted Flow Logs, Geo Location of Threats with Rejected Flow Logs, Threat Breakdown, Threats Associated with Accepted Flow Logs, Threats Associated with Accepted VPC Traffic Flow, Threats Associated with CloudTrail Events, Threats Associated with Rejected Flow Logs, Threats Associated with requesting Client - ELB, Threats by Events and I.P, Threats by Events and Result, Threats Over Time by Action, Top 10 Threat Sources by Action



## Parser:
```
| json "eventTime","eventName", "awsRegion", "sourceIPAddress", "errorCode","userAgent" as event_time, event_name, aws_region, src_ip, result,user_agent nodrop
| json "userIdentity.userName", "userIdentity.accountId" as src_user, accountId nodrop 
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| json field=raw "labels[*].name" as label_name 
 
```
### Use Cases:
Geo Location of Threats with Accepted Flow Logs, Geo Location of Threats with Rejected Flow Logs, Threat Breakdown, Threats Associated with Accepted Flow Logs, Threats Associated with Accepted VPC Traffic Flow, Threats Associated with CloudTrail Events, Threats Associated with Rejected Flow Logs, Threats Associated with requesting Client - ELB, Threats By Actor, Threats by Events and I.P, Threats by Events and Result, Threats by Geo Location, Threats Over Time by Action, Threats Over Time by Result, Top 10 Threat Sources by Action



## Parser:
```
| json "message"
| parse field=message "* * * * * * * * * * * * * *" as version,accountID,interfaceID,src_ip,dest_ip,src_port,dest_port,Protocol,Packets,bytes,StartSample,EndSample,Action,status
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| json field=raw "labels[*].name" as label_name 
 
```
### Use Cases:
Geo Location of Threats with Accepted Flow Logs, Geo Location of Threats with Rejected Flow Logs, Threat Breakdown, Threats Associated with Accepted Flow Logs, Threats Associated with Accepted VPC Traffic Flow, Threats Associated with CloudTrail Events, Threats Associated with Rejected Flow Logs, Threats Associated with requesting Client - ELB, Threats Over Time by Action, Top 10 Threat Sources by Action



## Parser:
```
| parse regex "\S+\s+(?<elb_server>\S+)\s+(?<src_ip>\S+):(?<src_port>\S+)\s+(?<backendhost>\S+):(?<dest_port>\S+)\s+(?<requestproc>\S+)\s+(?<ba_response>\S+)\s+(?<cli_response>\S+)\s+(?<elb_statuscode>\d+)\s+(?<be_statuscode>\d+)\s+(?<rcvd>\d+)\s+(?<send>\d+)\s+\"(?<method>\w+)\s+(?<fullrequest>\S+)\s+HTTP/[^\"]+\" \"(?<agent>[^\"]+)\" (?<Cipher>[A-Za-z0-9-]+) (?<ssl_protocol>[A-Za-z0-9-.]+)"  nodrop
| parse regex field=fullrequest "(?<protocol>\w+)://(?<hostname>[^/:]+)" 
| json field=raw "malware_families[*]" as threat_malware_families
| json field=raw "last_updated" as last_updated
| json field=raw "labels[*].name" as label_name 
 
```
### Use Cases:
Threats Associated with Accepted VPC Traffic Flow, Threats Associated with CloudTrail Events, Threats Associated with requesting Client - ELB


