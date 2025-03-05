# Parsers For Global Intelligence for Amazon GuardDuty

## Parser:
```
| json field=_raw "id", "type","severity" ,"title","description", "region"
| json field=_raw "service.action.networkConnectionAction.remoteIpDetails.country.countryName" as countryName
| parse field=type "*:*/*" as threatpurpose, resource, threatname
 `n```
### Use Cases:
Rare Threats in Your Environment



## Parser:
```
| parse field=threatname "*.*" as name, variant nodrop 
 `n```
### Use Cases:
Rare Threats in Your Environment, Threat Percent: ALL Threats, Threat Share: Severity, Threat Share: Targeted Resource Type


