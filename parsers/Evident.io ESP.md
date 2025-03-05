# Parsers For Evident.io ESP

## Parser:
```
| json "data.id", "data.attributes" as id, data_attrib
| json "included.[0].attributes.name" as account_name
| json "included.[1].attributes.code" as region
| json "included.[2].attributes.risk_level" as risk_level
| json "included.[2].attributes." as included_attrib
| json field=data_attrib "resource", "status", "started_at", "created_at", "updated_at", "ended_at"
| json field=included_attrib "risk_level", "description", "name", "resolution", "identifier" as risk_level, sig_description, sig_name, resolution, sig_id
 `n```
### Use Cases:
New Risks, Resolved, Risks by Account, Risks by Region, Risks by Signature, Total Risks, Unresolved Risks



## Parser:
```
| json "data.id", "data.attributes" as id, data_attrib
| json "included.[0].attributes.name" as account_name
| json "included.[1].attributes.code" as region
| json "included.[2].attributes.risk_level" as risk_level
| json field=data_attrib "resource", "status", "created_at", "started_at", "updated_at", "ended_at"
 `n```
### Use Cases:
Alerts by Status, New Risks, New Risks by Severity, Resolved, Risks by Account, Risks by Region, Risks by Signature, Total Risks, Total Risks Over Time, Unresolved Risks



## Parser:
```
| json "data.id", "data.attributes" as id, data_attrib
| json "included.[0].attributes.name" as account_name
| json "included.[1].attributes.code" as region
| json "included.[2].attributes.risk_level" as risk_level
| json field=data_attrib "resource", "status", "started_at", "created_at", "ended_at", "updated_at"
 `n```
### Use Cases:
Alerts by Status, New High Risk Alerts, New Risks, New Risks by Severity, Resolved, Risks by Account, Risks by Region, Risks by Signature, Total Risks, Total Risks Over Time, Unresolved Risks



## Parser:
```
| json "data.id", "data.attributes" as id, data_attrib
| json "included.[0].attributes.name" as account_name
| json "included.[1].attributes.code" as region
| json "included.[2].attributes.risk_level" as risk_level
| json field=data_attrib "resource", "status", "started_at", "ended_at", "created_at", "updated_at"
 `n```
### Use Cases:
New Risks, Risks by Region, Risks by Signature, Total Risks



## Parser:
```
| json "data.id", "data.attributes" as id, data_attrib
| json "included.[0].attributes.name" as account_name
| json "included.[1].attributes.code" as region
| json "included.[2].attributes" as sig_attrib
| json field=data_attrib "resource", "status", "started_at", "created_at", "ended_at", "updated_at"
| json field=sig_attrib "description", "identifier", "name", "resolution", "risk_level"
 `n```
### Use Cases:
Alerts by Status, New Risks, Resolved, Risks by Account, Risks by Region, Risks by Signature, Total Risks, Unresolved Risks



## Parser:
```
| json "data.id", "data.attributes" as id, data_attrib
| json "included.[0].attributes.name" as account_name
| json "included.[1].attributes.code" as region
| json "included.[2].attributes" as sig_attrib
| json field=data_attrib "resource", "status", "started_at", "created_at", "ended_at", "updated_at"
| json field=sig_attrib "description", "identifier", "name", "resolution", "risk_level" 
 `n```
### Use Cases:
Alerts by Status, New High Risk Alerts, New Risks, New Risks by Severity, Resolved, Risks by Account, Risks by Region, Risks by Signature, Total Risks, Total Risks Over Time, Unresolved Risks



## Parser:
```
| json "data.id", "data.attributes" as id, data_attrib
| json "included.[0].attributes.name" as account_name
| json "included.[1].attributes.code" as region
| json "included.[2].attributes" as signature_attrib
| json field=data_attrib "resource", "status", "ended_at", "created_at", "started_at", "updated_at"
| json field=signature_attrib "risk_level", "description", "name", "resolution", "identifier" as risk_level, sig_description, sig_name, resolution, identifier
 `n```
### Use Cases:
Risks by Signature


