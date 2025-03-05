# Parsers For Amazon GuardDuty - Cloud Security Monitoring and Analytics

## Parser:
```
| json "severity"
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
 `n```
### Use Cases:
Findings by Threat Name, Findings by Threat Purpose, High Severity Findings Last Hour, High Severity Outliers, Last 20 Findings, Last 20 Low Severity Findings, Last 20 Medium Severity Findings, Last 20 Severity Findings, Latest Findings, Low Severity Findings Last Hour, Low Severity Outliers, Medium Severity Findings Last Hour, Medium Severity Outliers, Total Findings Last Hour, Trending All Findings



## Parser:
```
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","severity","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
| json field=%service.action "networkConnectionAction.remoteIpDetails.geoLocation.lon" as longitude nodrop
 `n```
### Use Cases:
Findings by Threat Name, Findings by Threat Purpose, High Severity Outliers, Last 20 Findings, Last 20 Low Severity Findings, Last 20 Medium Severity Findings, Last 20 Severity Findings, Latest Findings, Low Severity Outliers, Medium Severity Outliers, Total Findings Last Hour, Trending All Findings


