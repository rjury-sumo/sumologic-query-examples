# Parsers For AWS GuardDuty

**AWS GuardDuty/Amazon GuardDuty - Overview - New/Guard Duty Threat Map**
```
_sourceCategory = Labs/AWS/GuardDuty* (geoLocation and lat and lon)
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","severity","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
| if(severity=0, "Info",if(severity=2, "Low", if(severity=5, "Medium", if(severity=8, "High",if(severity=9.5, "Critical",severity))))) as severity
| json field=%service.action "networkConnectionAction.remoteIpDetails.geoLocation.lon", "networkConnectionAction.remoteIpDetails.geoLocation.lat", "networkConnectionAction.remoteIpDetails.organization.asnOrg", "networkConnectionAction.remoteIpDetails.organization.org", "networkConnectionAction.remoteIpDetails.organization.isp", "networkConnectionAction.remoteIpDetails.ipAddressV4" as longitude, latitude, asnOrg, organization, isp, ip
```

**AWS GuardDuty/Amazon GuardDuty - Overview - New/High Severity Threats Table**
```
_sourceCategory = Labs/AWS/GuardDuty* 
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","severity","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
| if(severity=0, "Info",if(severity=2, "Low", if(severity=5, "Medium", if(severity=8, "High",if(severity=9.5, "Critical",severity))))) as severity
| if(!isNull(instanceid),concat ("https://",region,".console.aws.amazon.com/ec2/v2/home?region=",region,"#Instances:search=",instanceid),"") as link
| json field=%service.action "networkConnectionAction.remoteIpDetails.geoLocation.lon" as longitude nodrop
```

**AWS GuardDuty/Amazon GuardDuty - Overview - New/Severity and AccountID**
```
_sourceCategory = Labs/AWS/GuardDuty* 
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","severity","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
```

**AWS GuardDuty/Amazon GuardDuty - Overview - New/Severity and Region**
```
_sourceCategory = Labs/AWS/GuardDuty* 
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","severity","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
```

**AWS GuardDuty/Amazon GuardDuty - Overview - New/Severity and ResourceType**
```
_sourceCategory = Labs/AWS/GuardDuty* 
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","severity","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
```

**AWS GuardDuty/Amazon GuardDuty - Overview - New/Severity Trend**
```
_sourceCategory = Labs/AWS/GuardDuty* severity
| json "severity"
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
```

**AWS GuardDuty/Amazon GuardDuty - Overview - New/Threats by IP**
```
_sourceCategory = Labs/AWS/GuardDuty* 
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","severity","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
```

**AWS GuardDuty/Amazon GuardDuty - Overview - New/Threats by ThreatPurpose, ResourceType, ThreatName**
```
_sourceCategory = Labs/AWS/GuardDuty* 
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","severity","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
| if(severity=0, "Info",if(severity=2, "Low", if(severity=5, "Medium", if(severity=8, "High",if(severity=9.5, "Critical",severity))))) as severity
| if(!isNull(instanceid),concat ("https://",region,".console.aws.amazon.com/ec2/v2/home?region=",region,"#Instances:search=",instanceid),"") as link
| json field=%service.action "networkConnectionAction.remoteIpDetails.geoLocation.lon" as longitude nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
```


