# Parsers For AWS GuardDuty Benchmark

**AWS GuardDuty Benchmark/Rare Threats in Your Environment/Rare Threats in Your Environment**
```
benchscore contribution from guardduty | toint(severity) as severity | max(contribution) as contribution by threatname, threatpurpose, severity, resource
|where [subquery: _sourceCategory = *guardduty*
// PARSE
| json field=_raw "id", "type","severity" ,"title","description"
| toint(severity) as severity
//| where sev>2
| parse field=type "*:*/*" as threatpurpose, resource, threatname
```


