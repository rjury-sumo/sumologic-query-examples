# Parsers For AWS GuardDuty Benchmark

## Parser:
```
| json field=_raw "id", "type","severity" ,"title","description"
| parse field=type "*:*/*" as threatpurpose, resource, threatname
 `n```
### Use Cases:
Rare Threats in Your Environment


