# Parsers For Global Intelligence for Amazon GuardDuty

**Global Intelligence for Amazon GuardDuty/GI GuardDuty - 01. Global Baseline - New/Threat Percent: ALL Threats**
```
benchmarkcat guardduty 
| where threatpurpose!="eps" 
| parse field=threatname "*.*" as name, variant nodrop 
```

**Global Intelligence for Amazon GuardDuty/GI GuardDuty - 01. Global Baseline - New/Threat Share: Severity**
```
benchmarkcat guardduty 
| where threatpurpose!="eps" 
| parse field=threatname "*.*" as name, variant nodrop 
```

**Global Intelligence for Amazon GuardDuty/GI GuardDuty - 01. Global Baseline - New/Threat Share: Targeted Resource Type**
```
benchmarkcat guardduty 
| where threatpurpose!="eps" 
| parse field=threatname "*.*" as name, variant nodrop 
```

**Global Intelligence for Amazon GuardDuty/Rare Threats in Your Environment/Rare Threats in Your Environment**
```
_sourceCategory = Labs/AWS/GuardDuty*
| json field=_raw "id", "type","severity" ,"title","description", "region"
| json field=_raw "service.action.networkConnectionAction.remoteIpDetails.country.countryName" as countryName
| toint(severity) as severity
| parse field=type "*:*/*" as threatpurpose, resource, threatname
```


