# Parsers For Evident.io ESP

**Evident.io ESP/Detailed Risks/New Risks**
```
_sourceCategory={{Logsdatasource}}  ("fail" or "warn")
| json "data.id", "data.attributes" as id, data_attrib
| json "included.[0].attributes.name" as account_name
| json "included.[1].attributes.code" as region
| json "included.[2].attributes.risk_level" as risk_level
| json field=data_attrib "resource", "status", "started_at", "ended_at", "created_at", "updated_at"
```

**Evident.io ESP/Detailed Risks/Risks by Account**
```
_sourceCategory={{Logsdatasource}}  ("fail" or "warn")
| json "data.id", "data.attributes" as id, data_attrib
| json "included.[0].attributes.name" as account_name
| json "included.[1].attributes.code" as region
| json "included.[2].attributes.risk_level" as risk_level
| json field=data_attrib "resource", "status", "started_at", "created_at", "ended_at", "updated_at"
```

**Evident.io ESP/Detailed Risks/Risks by Region**
```
_sourceCategory={{Logsdatasource}}  ("fail" or "warn")
| json "data.id", "data.attributes" as id, data_attrib
| json "included.[0].attributes.name" as account_name
| json "included.[1].attributes.code" as region
| json "included.[2].attributes.risk_level" as risk_level
| json field=data_attrib "resource", "status", "started_at", "created_at", "ended_at", "updated_at"
```

**Evident.io ESP/Detailed Risks/Risks by Signature**
```
_sourceCategory={{Logsdatasource}}  ("fail" or "warn")
| json "data.id", "data.attributes" as id, data_attrib
| json "included.[0].attributes.name" as account_name
| json "included.[1].attributes.code" as region
| json "included.[2].attributes" as signature_attrib
| json field=data_attrib "resource", "status", "ended_at", "created_at", "started_at", "updated_at"
| json field=signature_attrib "risk_level", "description", "name", "resolution", "identifier" as risk_level, sig_description, sig_name, resolution, identifier
```

**Evident.io ESP/Detailed Risks/Total Risks**
```
_sourceCategory={{Logsdatasource}}  ("fail" or "warn")
| json "data.id", "data.attributes" as id, data_attrib
| json "included.[0].attributes.name" as account_name
| json "included.[1].attributes.code" as region
| json "included.[2].attributes.risk_level" as risk_level
| json field=data_attrib "resource", "status", "created_at", "started_at", "updated_at", "ended_at"
```

**Evident.io ESP/Detailed Risks/Unresolved Risks**
```
_sourceCategory={{Logsdatasource}}  ("fail" or "warn")
| json "data.id", "data.attributes" as id, data_attrib
| json "included.[0].attributes.name" as account_name
| json "included.[1].attributes.code" as region
| json "included.[2].attributes.risk_level" as risk_level
| json field=data_attrib "resource", "status", "created_at", "started_at", "updated_at", "ended_at"
```

**Evident.io ESP/Overview/Alerts by Status**
```
_sourceCategory={{Logsdatasource}} 
| json "data.id", "data.attributes" as id, data_attrib
| json "included.[0].attributes.name" as account_name
| json "included.[1].attributes.code" as region
| json "included.[2].attributes" as sig_attrib
| json field=data_attrib "resource", "status", "started_at", "created_at", "ended_at", "updated_at"
| json field=sig_attrib "description", "identifier", "name", "resolution", "risk_level"
```

**Evident.io ESP/Overview/New High Risk Alerts**
```
_sourceCategory={{Logsdatasource}}  "High"
| json "data.id", "data.attributes" as id, data_attrib
| json "included.[0].attributes.name" as account_name
| json "included.[1].attributes.code" as region
| json "included.[2].attributes" as sig_attrib
| json field=data_attrib "resource", "status", "started_at", "created_at", "ended_at", "updated_at"
| json field=sig_attrib "description", "identifier", "name", "resolution", "risk_level" 
```

**Evident.io ESP/Overview/New Risks**
```
_sourceCategory={{Logsdatasource}}  ("fail" or "warn")
| json "data.id", "data.attributes" as id, data_attrib
| json "included.[0].attributes.name" as account_name
| json "included.[1].attributes.code" as region
| json "included.[2].attributes.risk_level" as risk_level
| json field=data_attrib "resource", "status", "started_at", "created_at", "ended_at", "updated_at"
```

**Evident.io ESP/Overview/New Risks by Severity**
```
_sourceCategory={{Logsdatasource}}  ("fail" or "warn")
| json "data.id", "data.attributes" as id, data_attrib
| json "included.[0].attributes.name" as account_name
| json "included.[1].attributes.code" as region
| json "included.[2].attributes.risk_level" as risk_level
| json field=data_attrib "resource", "status", "started_at", "created_at", "ended_at", "updated_at"
```

**Evident.io ESP/Overview/Resolved**
```
_sourceCategory={{Logsdatasource}}  ("fail" or "warn")
| json "data.id", "data.attributes" as id, data_attrib
| json "included.[0].attributes.name" as account_name
| json "included.[1].attributes.code" as region
//| json "included.[2].attributes.risk_level" as risk_level
| json "included.[2].attributes." as included_attrib
| json field=data_attrib "resource", "status", "started_at", "created_at", "updated_at", "ended_at"
| json field=included_attrib "risk_level", "description", "name", "resolution", "identifier" as risk_level, sig_description, sig_name, resolution, sig_id
```

**Evident.io ESP/Overview/Total Risks Over Time**
```
_sourceCategory={{Logsdatasource}}  ("fail" or "warn")
| json "data.id", "data.attributes" as id, data_attrib
| json "included.[0].attributes.name" as account_name
| json "included.[1].attributes.code" as region
| json "included.[2].attributes.risk_level" as risk_level
| json field=data_attrib "resource", "status", "created_at", "started_at", "updated_at", "ended_at"
```


