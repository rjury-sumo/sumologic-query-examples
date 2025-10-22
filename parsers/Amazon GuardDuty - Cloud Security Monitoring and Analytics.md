# Parsers For Amazon GuardDuty - Cloud Security Monitoring and Analytics

**Amazon GuardDuty - Cloud Security Monitoring and Analytics/Amazon GuardDuty Analysis - Security Analytics/Findings by Threat Name**
```

_sourceCategory = Labs/AWS/GuardDuty* severity
| json "severity"
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
```

**Amazon GuardDuty - Cloud Security Monitoring and Analytics/Amazon GuardDuty Analysis - Security Analytics/Findings by Threat Purpose**
```

_sourceCategory = Labs/AWS/GuardDuty* severity
| json "severity"
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
```

**Amazon GuardDuty - Cloud Security Monitoring and Analytics/Amazon GuardDuty Analysis - Security Analytics/Latest Findings**
```

_sourceCategory = Labs/AWS/GuardDuty* severity
| json "severity"
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
```

**Amazon GuardDuty - Cloud Security Monitoring and Analytics/Amazon GuardDuty Overview - Security Monitoring/High Severity Findings Last Hour**
```
_sourceCategory = Labs/AWS/GuardDuty* severity
| json "severity"
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
```

**Amazon GuardDuty - Cloud Security Monitoring and Analytics/Amazon GuardDuty Overview - Security Monitoring/High Severity Outliers**
```
_sourceCategory = Labs/AWS/GuardDuty* severity
| json "severity"
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
```

**Amazon GuardDuty - Cloud Security Monitoring and Analytics/Amazon GuardDuty Overview - Security Monitoring/Last 20 Findings**
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

**Amazon GuardDuty - Cloud Security Monitoring and Analytics/Amazon GuardDuty Overview - Security Monitoring/Last 20 Low Severity Findings**
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

**Amazon GuardDuty - Cloud Security Monitoring and Analytics/Amazon GuardDuty Overview - Security Monitoring/Last 20 Medium Severity Findings**
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

**Amazon GuardDuty - Cloud Security Monitoring and Analytics/Amazon GuardDuty Overview - Security Monitoring/Last 20 Severity Findings**
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

**Amazon GuardDuty - Cloud Security Monitoring and Analytics/Amazon GuardDuty Overview - Security Monitoring/Low Severity Findings Last Hour**
```
_sourceCategory = Labs/AWS/GuardDuty* severity
| json "severity"
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
```

**Amazon GuardDuty - Cloud Security Monitoring and Analytics/Amazon GuardDuty Overview - Security Monitoring/Low Severity Outliers**
```
_sourceCategory = Labs/AWS/GuardDuty* severity
| json "severity"
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
```

**Amazon GuardDuty - Cloud Security Monitoring and Analytics/Amazon GuardDuty Overview - Security Monitoring/Medium Severity Findings Last Hour**
```
_sourceCategory = Labs/AWS/GuardDuty* severity
| json "severity"
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
```

**Amazon GuardDuty - Cloud Security Monitoring and Analytics/Amazon GuardDuty Overview - Security Monitoring/Medium Severity Outliers**
```
_sourceCategory = Labs/AWS/GuardDuty* severity
| json "severity"
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
```

**Amazon GuardDuty - Cloud Security Monitoring and Analytics/Amazon GuardDuty Overview - Security Monitoring/Total Findings Last Hour**
```
_sourceCategory = Labs/AWS/GuardDuty* severity
| json "severity"
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
```

**Amazon GuardDuty - Cloud Security Monitoring and Analytics/Amazon GuardDuty Overview - Security Monitoring/Trending All Findings**
```
_sourceCategory = Labs/AWS/GuardDuty* severity
| json "severity"
| json field=_raw "accountId", "region", "partition", "id", "arn", "type","service.serviceName","service.detectorId","service.action","title","description" nodrop
| parse field=type "*:*/*" as ThreatPurpose,ResourceType,ThreatName
| json field=%service.action "networkConnectionAction.remoteIpDetails.ipAddressV4","networkConnectionAction.localPortDetails.port" as ip, localPort nodrop
| parse "\"vpcId\":\"*\"" as vpcId, "\"subnetId\":\"*\"" as subnetId,"\"groupId\":\"*\"" as securityGroupId,"\"tags\":[*]" as tags,"\"groupName\":\"*\"" as securityGroupName nodrop
| json field=_raw "resource.instanceDetails.instanceId" as instanceid nodrop
```


