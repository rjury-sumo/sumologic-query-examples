# Parsers For AWS GuardDuty

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
Severity and AccountID, Severity Trend, Threats by IP, Threats by ThreatPurpose, ResourceType, ThreatName



## Parser:
```
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","severity","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
 `n```
### Use Cases:
High Severity Threats Table, Severity and AccountID, Severity and Region, Severity and ResourceType, Severity Trend, Threats by IP, Threats by ThreatPurpose, ResourceType, ThreatName



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
High Severity Threats Table, Severity and AccountID, Severity and ResourceType, Severity Trend, Threats by IP, Threats by ThreatPurpose, ResourceType, ThreatName



## Parser:
```
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","severity","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
| json field=%service.action "networkConnectionAction.remoteIpDetails.geoLocation.lon" as longitude nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
 `n```
### Use Cases:
Threats by ThreatPurpose, ResourceType, ThreatName



## Parser:
```
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","severity","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
| json field=%service.action "networkConnectionAction.remoteIpDetails.geoLocation.lon", "networkConnectionAction.remoteIpDetails.geoLocation.lat", "networkConnectionAction.remoteIpDetails.organization.asnOrg", "networkConnectionAction.remoteIpDetails.organization.org", "networkConnectionAction.remoteIpDetails.organization.isp", "networkConnectionAction.remoteIpDetails.ipAddressV4" as longitude, latitude, asnOrg, organization, isp, ip
 `n```
### Use Cases:
Guard Duty Threat Map, High Severity Threats Table, Severity and AccountID, Severity and Region, Severity and ResourceType, Severity Trend, Threats by IP, Threats by ThreatPurpose, ResourceType, ThreatName


