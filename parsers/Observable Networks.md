# Parsers For Observable Networks

| use_case | parser |
|--- | --- |
| Observable Networks/Observable Networks Overview/Effective Session Count | _sourceCategory={{Logsdatasource}}  effective_session_count "\"obsrvbl_type\": \"session_count\""<br>\| json "effective_session_count" as session_count |
| Observable Networks/Observable Networks Overview/Observation Origins | _sourceCategory={{Logsdatasource}}  "\"obsrvbl_type\": \"observation\""<br>\| json auto keys "external_ip", "connected_ip", "remote_ip" as ip, ip, ip |
| Observable Networks/Observable Networks Overview/Observations by Time | _sourceCategory={{Logsdatasource}}  "\"obsrvbl_type\": \"observation\""<br>\| json "observation_name" |
| Observable Networks/Observable Networks Overview/Recent Alert Updates | _sourceCategory={{Logsdatasource}}  "\"obsrvbl_type\": \"alert\""<br>\| json "type", "url", "time" |
| Observable Networks/Observable Networks Overview/Recent Observations | _sourceCategory={{Logsdatasource}}  "\"obsrvbl_type\": \"observation\""<br>\| json "observation_name" |
| Observable Networks/Observable Networks Overview/Roles | _sourceCategory={{Logsdatasource}}  "\"obsrvbl_type\": \"role\""<br>\| json "role" as role |
| Observable Networks/Recent Flow Counts/Recent Flow Counts | _sourceCategory={{Logsdatasource}} <br>\| json field=_raw "obsrvbl_type", "effective_session_count" as type, session_count |
| Observable Networks/Role History/Role History | _sourceCategory={{Logsdatasource}} <br>\| json field=_raw "obsrvbl_type", "role", "source_info.name" as type, role, name |
| Observable Networks/Top Observation Hosts/Top Observation Hosts | _sourceCategory={{Logsdatasource}}  <br>\| json field=_raw "obsrvbl_type", "source_info.name" as type, name |

