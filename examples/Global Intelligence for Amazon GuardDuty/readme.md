# Global Intelligence for Amazon GuardDuty
## Sumo Logic App For: Global Intelligence for Amazon GuardDuty
Amazon GuardDuty is a threat detection service that continuously monitors for malicious activity and unauthorized behavior to protect your AWS accounts and workloads. Global Intelligence for Amazon GuardDuty analyzes GuardDuty threats from the Sumo Logic population to create baselines of threats.  These baselines enable you to optimize security posture and remediation based on how unusual your GuardDuty findings are compared to Sumo Logic customers. The App includes preconfigured dashboards and searches with visual displays for global threat baselines and real-time threat detection across your AWS environment.
Docs Link: [Global Intelligence for Amazon GuardDuty](https://help.sumologic.com/?cid=1988)

## Searches

### Log Searches

- **Rare Threats in Your Environment**: from Search: Global Intelligence for Amazon GuardDuty/Rare Threats in Your Environment 
- **Threat Percent: ALL Threats**: from Dashboard: Global Intelligence for Amazon GuardDuty/GI GuardDuty - 01. Global Baseline - New 
- **Threat Share: Severity**: from Dashboard: Global Intelligence for Amazon GuardDuty/GI GuardDuty - 01. Global Baseline - New 
- **Threat Share: Targeted Resource Type**: from Dashboard: Global Intelligence for Amazon GuardDuty/GI GuardDuty - 01. Global Baseline - New 
- **Threat Sources and Targets by  Geography**: from Dashboard: Global Intelligence for Amazon GuardDuty/GI GuardDuty - 01. Global Baseline - New

### Metric Searches


## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|Global Intelligence for Amazon GuardDuty|Rare Threats in Your Environment|Logs|Global Intelligence for Amazon GuardDuty/Rare Threats in Your Environment|\_sourceCategory = Labs/AWS/GuardDuty\*<br />\| json field=\_raw "id", "type","severity" ,"title","description", "region"<br />\| json field=\_raw "service.action.networkConnectionAction.remoteIpDetails.country.countryName" as countryName<br />\| toint(severity) as severity<br />\| parse field=type "\*:\*/\*" as threatpurpose, resource, threatname<br />\| count by threatpurpose, threatname, resource, severity<br />\| benchmark percentage as global\_percent from guardduty on threatpurpose=threatpurpose, threatname=threatname, severity=severity, resource=resource<br />// A rare event is defined as something where the global percentage is less than 0.002<br />\| where global\_percent\<.002<br />\| count|
|Global Intelligence for Amazon GuardDuty|Threat Percent: ALL Threats|Logs|Global Intelligence for Amazon GuardDuty/GI GuardDuty - 01. Global Baseline - New|benchmarkcat guardduty <br />\| where threatpurpose!="eps" <br />\| parse field=threatname "\*.\*" as name, variant nodrop <br />\| fields -\_some\_matched<br />\| percentage \* 100 as percentage<br />\|where if ("{{resource}}" = "\*", true, resource matches "{{resource}}") AND if ("{{threatpurpose}}" = "\*", true, threatpurpose matches "{{threatpurpose}}") AND if ("{{threatname}}" = "\*", true, threatname matches "{{threatname}}") AND if ("{{severity}}" = "\> -2147483648", true, severity {{severity}})<br />\|sum(percentage) by threatpurpose, threatname <br />\| transpose row threatpurpose column threatname|
|Global Intelligence for Amazon GuardDuty|Threat Share: Severity|Logs|Global Intelligence for Amazon GuardDuty/GI GuardDuty - 01. Global Baseline - New|benchmarkcat guardduty <br />\| where threatpurpose!="eps" <br />\| parse field=threatname "\*.\*" as name, variant nodrop <br />\| fields -\_some\_matched<br />\| percentage \* 100 as percentage<br />\| if (severity="2", "2 - Low", if(severity="5", "5 - Medium", "8 - High")) as severity<br />\|where if ("{{resource}}" = "\*", true, resource matches "{{resource}}") AND if ("{{threatpurpose}}" = "\*", true, threatpurpose matches "{{threatpurpose}}") AND if ("{{threatname}}" = "\*", true, threatname matches "{{threatname}}") AND if ("{{severity}}" = "\> -2147483648", true, severity {{severity}})<br />\|sum(percentage) by severity <br />\| sort -severity<br />\| round(\_sum)|
|Global Intelligence for Amazon GuardDuty|Threat Share: Targeted Resource Type|Logs|Global Intelligence for Amazon GuardDuty/GI GuardDuty - 01. Global Baseline - New|benchmarkcat guardduty <br />\| where threatpurpose!="eps" <br />\| parse field=threatname "\*.\*" as name, variant nodrop <br />\| fields -\_some\_matched<br />\| percentage \* 100 as percentage<br />\|where if ("{{resource}}" = "\*", true, resource matches "{{resource}}") AND if ("{{threatpurpose}}" = "\*", true, threatpurpose matches "{{threatpurpose}}") AND if ("{{threatname}}" = "\*", true, threatname matches "{{threatname}}") AND if ("{{severity}}" = "\> -2147483648", true, severity {{severity}})<br />\|sum(percentage) by resource<br />\| round(\_sum)|
|Global Intelligence for Amazon GuardDuty|Threat Sources and Targets by  Geography|Logs|Global Intelligence for Amazon GuardDuty/GI GuardDuty - 01. Global Baseline - New|benchmarkcat guardduty\_geo<br />\|where if ("{{resource}}" = "\*", true, resource matches "{{resource}}") AND if ("{{threatpurpose}}" = "\*", true, threatpurpose matches "{{threatpurpose}}") AND if ("{{threatname}}" = "\*", true, threatname matches "{{threatname}}") AND if ("{{severity}}" = "\> -2147483648", true, severity {{severity}})<br />\|sum(percentage) as percentage by threatpurpose, threatname, sourcelat, sourcelon, destinationlat, destinationlon<br />\| topk(3, percentage) group by threatpurpose|

