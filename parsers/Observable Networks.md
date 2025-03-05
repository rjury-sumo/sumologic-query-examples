# Parsers For Observable Networks

## Parser:
```
| json "effective_session_count" as session_count
 `n```
### Use Cases:
Effective Session Count, Observations by Time, Recent Flow Counts, Role History, Top Observation Hosts



## Parser:
```
| json "observation_name"
 `n```
### Use Cases:
Effective Session Count, Observation Origins, Observations by Time, Recent Alert Updates, Recent Flow Counts, Recent Observations, Role History, Roles, Top Observation Hosts



## Parser:
```
| json "role" as role
 `n```
### Use Cases:
Effective Session Count, Observation Origins, Observations by Time, Recent Flow Counts, Role History, Roles, Top Observation Hosts



## Parser:
```
| json "type", "url", "time"
 `n```
### Use Cases:
Effective Session Count, Observation Origins, Observations by Time, Recent Alert Updates, Recent Flow Counts, Role History, Roles, Top Observation Hosts



## Parser:
```
| json auto keys "external_ip", "connected_ip", "remote_ip" as ip, ip, ip
 `n```
### Use Cases:
Effective Session Count, Observation Origins, Observations by Time, Recent Flow Counts, Role History, Top Observation Hosts



## Parser:
```
| json field=_raw "obsrvbl_type", "effective_session_count" as type, session_count
 `n```
### Use Cases:
Recent Flow Counts



## Parser:
```
| json field=_raw "obsrvbl_type", "role", "source_info.name" as type, role, name
 `n```
### Use Cases:
Recent Flow Counts, Role History



## Parser:
```
| json field=_raw "obsrvbl_type", "source_info.name" as type, name
 `n```
### Use Cases:
Recent Flow Counts, Role History, Top Observation Hosts


