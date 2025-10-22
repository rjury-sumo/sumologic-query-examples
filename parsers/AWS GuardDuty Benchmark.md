# Parsers For AWS GuardDuty Benchmark

| use_case | parser |
|--- | --- |
| AWS GuardDuty Benchmark/Rare Threats in Your Environment/Rare Threats in Your Environment | benchscore contribution from guardduty \| toint(severity) as severity \| max(contribution) as contribution by threatname, threatpurpose, severity, resource<br>\|where [subquery: _sourceCategory = *guardduty*<br>// PARSE<br>\| json field=_raw "id", "type","severity" ,"title","description"<br>\| toint(severity) as severity<br>//\| where sev>2<br>\| parse field=type "*:*/*" as threatpurpose, resource, threatname |

