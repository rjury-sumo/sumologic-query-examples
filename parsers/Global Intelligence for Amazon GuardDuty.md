# Parsers For Global Intelligence for Amazon GuardDuty

| use_case | parser |
|--- | --- |
| Global Intelligence for Amazon GuardDuty/GI GuardDuty - 01. Global Baseline - New/Threat Percent: ALL Threats | benchmarkcat guardduty <br>\| where threatpurpose!="eps" <br>\| parse field=threatname "*.*" as name, variant nodrop  |
| Global Intelligence for Amazon GuardDuty/GI GuardDuty - 01. Global Baseline - New/Threat Share: Severity | benchmarkcat guardduty <br>\| where threatpurpose!="eps" <br>\| parse field=threatname "*.*" as name, variant nodrop  |
| Global Intelligence for Amazon GuardDuty/GI GuardDuty - 01. Global Baseline - New/Threat Share: Targeted Resource Type | benchmarkcat guardduty <br>\| where threatpurpose!="eps" <br>\| parse field=threatname "*.*" as name, variant nodrop  |
| Global Intelligence for Amazon GuardDuty/Rare Threats in Your Environment/Rare Threats in Your Environment | _sourceCategory = Labs/AWS/GuardDuty*<br>\| json field=_raw "id", "type","severity" ,"title","description", "region"<br>\| json field=_raw "service.action.networkConnectionAction.remoteIpDetails.country.countryName" as countryName<br>\| toint(severity) as severity<br>\| parse field=type "*:*/*" as threatpurpose, resource, threatname |

