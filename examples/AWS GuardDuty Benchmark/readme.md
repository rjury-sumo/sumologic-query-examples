# AWS GuardDuty Benchmark

## Searches

### Log Searches

- **Rare Threats in Your Environment**: from Search: AWS GuardDuty Benchmark/Rare Threats in Your Environment

### Metric Searches


## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|AWS GuardDuty Benchmark|Rare Threats in Your Environment|Logs|AWS GuardDuty Benchmark/Rare Threats in Your Environment|benchscore contribution from guardduty \| toint(severity) as severity \| max(contribution) as contribution by threatname, threatpurpose, severity, resource<br />\|where [subquery: \_sourceCategory = \*guardduty\*<br />// PARSE<br />\| json field=\_raw "id", "type","severity" ,"title","description"<br />\| toint(severity) as severity<br />//\| where sev\>2<br />\| parse field=type "\*:\*/\*" as threatpurpose, resource, threatname<br />\| count by threatpurpose, threatname, resource, severity<br />\| benchmark percentage as global\_percent from guardduty on threatpurpose=threatpurpose, threatname=threatname, severity=severity, resource=resource<br />\| if(global\_percent=0, 0.000001, global\_percent) as global\_percent<br />\| total \_count as totalevents \| \_count/totalevents as percentage<br />\| total global\_percent as total\_global\_percent<br />\| where global\_percent\<.002<br />\| count by threatpurpose, threatname, severity, resource<br />\| compose threatpurpose, threatname]<br />\| count|

