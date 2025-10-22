# Parsers For CrowdStrike - Falcon Platform

**CrowdStrike - Falcon Platform/Authentication Service - New/Authentication Forecast**
```
_sourceCategory = Labs/CrowdStrike !DetectionSummaryEvent 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "cs1=(?<service>.*?)(?: \w+=|$)" nodrop
| extract "sourceTranslatedAddress=(?<src_ip>.*?)(?: \w+=|$)" nodrop
| extract "outcome=(?<successful>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "cat=(?<operation>.*?)(?:\s|$)" nodrop
| extract "deviceCustomDate1=(?<login_time>.*?)(?: \w+=|$)" nodrop
```

**CrowdStrike - Falcon Platform/Authentication Service - New/Authentication Outlier**
```
_sourceCategory = Labs/CrowdStrike !DetectionSummaryEvent 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "cs1=(?<service>.*?)(?: \w+=|$)" nodrop
| extract "sourceTranslatedAddress=(?<src_ip>.*?)(?: \w+=|$)" nodrop
| extract "outcome=(?<successful>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "cat=(?<operation>.*?)(?:\s|$)" nodrop
| extract "deviceCustomDate1=(?<login_time>.*?)(?: \w+=|$)" nodrop
```

**CrowdStrike - Falcon Platform/Authentication Service - New/Authentication Over Time**
```
_sourceCategory = Labs/CrowdStrike !DetectionSummaryEvent 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "cs1=(?<service>.*?)(?: \w+=|$)" nodrop
| extract "sourceTranslatedAddress=(?<src_ip>.*?)(?: \w+=|$)" nodrop
| extract "outcome=(?<successful>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "cat=(?<operation>.*?)(?:\s|$)" nodrop
| extract "deviceCustomDate1=(?<login_time>.*?)(?: \w+=|$)" nodrop
```

**CrowdStrike - Falcon Platform/Authentication Service - New/Failed Authentications**
```
_sourceCategory = Labs/CrowdStrike !DetectionSummaryEvent Authentication false
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "cs1=(?<service>.*?)(?: \w+=|$)" nodrop
| extract "sourceTranslatedAddress=(?<src_ip>.*?)(?: \w+=|$)" nodrop
| extract "outcome=(?<successful>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "cat=(?<operation>.*?)(?:\s|$)" nodrop
| extract "deviceCustomDate1=(?<login_time>.*?)(?: \w+=|$)" nodrop 
```

**CrowdStrike - Falcon Platform/AV Scan Result - New/Engine by Severity**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Scan Results Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs2=(?<engine>.*?)(?:\s|$)" nodrop
| extract "cs3=(?<result>.*?)(?:\s|$)" nodrop
| extract "cs4=(?<version>.*?)(?:\s|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "fileHash=(?<filehash>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/AV Scan Result - New/Events Forecast**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Scan Results Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs2=(?<engine>.*?)(?:\s|$)" nodrop
| extract "cs3=(?<result>.*?)(?:\s|$)" nodrop
| extract "cs4=(?<version>.*?)(?:\s|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "fileHash=(?<filehash>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/AV Scan Result - New/Events Outlier**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Scan Results Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs2=(?<engine>.*?)(?:\s|$)" nodrop
| extract "cs3=(?<result>.*?)(?:\s|$)" nodrop
| extract "cs4=(?<version>.*?)(?:\s|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "fileHash=(?<filehash>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/AV Scan Result - New/Host Domain by Severity**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Scan Results Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs2=(?<engine>.*?)(?:\s|$)" nodrop
| extract "cs3=(?<result>.*?)(?:\s|$)" nodrop
| extract "cs4=(?<version>.*?)(?:\s|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "fileHash=(?<filehash>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/AV Scan Result - New/Severity Over Time**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Scan Results Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs2=(?<engine>.*?)(?:\s|$)" nodrop
| extract "cs3=(?<result>.*?)(?:\s|$)" nodrop
| extract "cs4=(?<version>.*?)(?:\s|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "fileHash=(?<filehash>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/AV Scan Result - New/Top 50 Files by Severity**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Scan Results Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs2=(?<engine>.*?)(?:\s|$)" nodrop
| extract "cs3=(?<result>.*?)(?:\s|$)" nodrop
| extract "cs4=(?<version>.*?)(?:\s|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "fileHash=(?<filehash>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/AV Scan Result - New/Top 50 Hosts by Severity**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Scan Results Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs2=(?<engine>.*?)(?:\s|$)" nodrop
| extract "cs3=(?<result>.*?)(?:\s|$)" nodrop
| extract "cs4=(?<version>.*?)(?:\s|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "fileHash=(?<filehash>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/AV Scan Result - New/Top 50 Usernames by Severity**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Scan Results Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs2=(?<engine>.*?)(?:\s|$)" nodrop
| extract "cs3=(?<result>.*?)(?:\s|$)" nodrop
| extract "cs4=(?<version>.*?)(?:\s|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "fileHash=(?<filehash>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/CW-001 Detection Types/CW-001 Detection Types**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent 
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev
| parse "cs6=* " as FalconLink nodrop
| parse "externalID=* " as sensor_id nodrop
```

**CrowdStrike - Falcon Platform/CW-002 AV Scan Results Events/CW-002 AV Scan Results Events**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Scan Results Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs2=(?<engine>.*?)(?:\s|$)" nodrop
| extract "cs3=(?<result>.*?)(?:\s|$)" nodrop
| extract "cs4=(?<version>.*?)(?:\s|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "fileHash=(?<filehash>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/CW-003 Network Access Events/CW-003 Network Access Events**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Network Access Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "src=(?<src_ip>.*?)(?:\s|$)" nodrop
| extract "dst=(?<dst_ip>.*?)(?:\s|$)" nodrop
| extract "spt=(?<src_port>.*?)(?:\s|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "dpt=(?<dst_port>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/CW-004 Executable Written Events/CW-004 Executable Written Events**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Executable Written Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs2=(?<written_filename>.*?)(?: \w+=|$)" nodrop
| extract "cs3=(?<written_filepath>.*?)(?:\s|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "deviceCustomDate1=(?<exe_written_time>.*?)(?: \w+=|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/CW-005 Document Access Events/CW-005 Document Access Events**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Document Access Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs2=(?<doc_filename>.*?)(?: \w+=|$)" nodrop
| extract "cs3=(?<doc_filepath>.*?)(?: \w+=|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "deviceCustomDate1=(?<doc_written_time>.*?)(?: \w+=|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/CW-006 DNS Request Events/CW-006 DNS Request Events**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent DNS Request Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/CW-007 Detection Summary Events/CW-007 Detection Summary Events**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent msg Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "msg=(?<msg>.*?)(?: \w+=|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "fileHash=(?<filehash>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/CW-008 Login Audit Events/CW-008 Login Audit Events**
```
_sourceCategory = Labs/CrowdStrike !DetectionSummaryEvent 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "cs1=(?<service>.*?)(?: \w+=|$)" nodrop
| extract "sourceTranslatedAddress=(?<src_ip>.*?)(?: \w+=|$)" nodrop
| extract "outcome=(?<successful>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "cat=(?<operation>.*?)(?:\s|$)" nodrop
| extract "deviceCustomDate1=(?<login_time>.*?)(?: \w+=|$)" nodrop
```

**CrowdStrike - Falcon Platform/Detection Summary - New/Events Forecast**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent msg Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "msg=(?<msg>.*?)(?: \w+=|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "fileHash=(?<filehash>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/Detection Summary - New/Events Outlier**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent msg Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "msg=(?<msg>.*?)(?: \w+=|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "fileHash=(?<filehash>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/Detection Summary - New/Host Domain by Severity**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent msg Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "msg=(?<msg>.*?)(?: \w+=|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "fileHash=(?<filehash>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/Detection Summary - New/Severity Over Time**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent msg Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "msg=(?<msg>.*?)(?: \w+=|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "fileHash=(?<filehash>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/Detection Summary - New/Top 50 Files by Severity**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent msg Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "msg=(?<msg>.*?)(?: \w+=|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "fileHash=(?<filehash>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/Detection Summary - New/Top 50 Hosts by Severity**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent msg Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "msg=(?<msg>.*?)(?: \w+=|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "fileHash=(?<filehash>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/Detection Summary - New/Top 50 Messages by Severity**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent msg Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "msg=(?<msg>.*?)(?: \w+=|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "fileHash=(?<filehash>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/Detection Summary - New/Top 50 Usernames by Severity**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent msg Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "msg=(?<msg>.*?)(?: \w+=|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "fileHash=(?<filehash>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/Detection Summary (CrowdStrike) - New/Authentication Services**
```
_sourceCategory = Labs/CrowdStrike !DetectionSummaryEvent 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "cs1=(?<service>.*?)(?: \w+=|$)" nodrop
| extract "sourceTranslatedAddress=(?<src_ip>.*?)(?: \w+=|$)" nodrop
| extract "outcome=(?<successful>.*?)(?:\s|$)" nodrop
| extract "cat=(?<operation>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/Detection Summary (CrowdStrike) - New/Dectection Summary by Type**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent 
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract field=detect_type "(?<detect_type>.*?) In A" nodrop
```

**CrowdStrike - Falcon Platform/Detection Summary (CrowdStrike) - New/Detection Summary by Severity**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent 
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
```

**CrowdStrike - Falcon Platform/Detection Summary (CrowdStrike) - New/Detection Type by Severity**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent 
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract field=detect_type "(?<detect_type>.*?) In A" nodrop
```

**CrowdStrike - Falcon Platform/Detection Summary (CrowdStrike) - New/Events Forecast**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent 
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
```

**CrowdStrike - Falcon Platform/Detection Summary (CrowdStrike) - New/Events Outlier**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent 
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
```

**CrowdStrike - Falcon Platform/Detection Summary (CrowdStrike) - New/Severity by Detection Type**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent 
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract field=detect_type "(?<detect_type>.*?) In A" nodrop
```

**CrowdStrike - Falcon Platform/Detection Summary (CrowdStrike) - New/Top 50 Severity with Falcon links**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/Executable Written - New/Events Forecast**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Executable Written Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs2=(?<written_filename>.*?)(?: \w+=|$)" nodrop
| extract "cs3=(?<written_filepath>.*?)(?:\s|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "deviceCustomDate1=(?<exe_written_time>.*?)(?: \w+=|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/Executable Written - New/Events Outlier**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Executable Written Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs2=(?<written_filename>.*?)(?: \w+=|$)" nodrop
| extract "cs3=(?<written_filepath>.*?)(?:\s|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "deviceCustomDate1=(?<exe_written_time>.*?)(?: \w+=|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/Executable Written - New/Host Domains by Severity**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Executable Written Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs2=(?<written_filename>.*?)(?: \w+=|$)" nodrop
| extract "cs3=(?<written_filepath>.*?)(?:\s|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "deviceCustomDate1=(?<exe_written_time>.*?)(?: \w+=|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/Executable Written - New/Severity Over Time**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Executable Written Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs2=(?<written_filename>.*?)(?: \w+=|$)" nodrop
| extract "cs3=(?<written_filepath>.*?)(?:\s|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "deviceCustomDate1=(?<exe_written_time>.*?)(?: \w+=|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/Executable Written - New/Top 50 Files by Severity**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Executable Written Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs2=(?<written_filename>.*?)(?: \w+=|$)" nodrop
| extract "cs3=(?<written_filepath>.*?)(?:\s|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "deviceCustomDate1=(?<exe_written_time>.*?)(?: \w+=|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/Executable Written - New/Top 50 Hosts by Severity**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Executable Written Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs2=(?<written_filename>.*?)(?: \w+=|$)" nodrop
| extract "cs3=(?<written_filepath>.*?)(?:\s|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "deviceCustomDate1=(?<exe_written_time>.*?)(?: \w+=|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/Executable Written - New/Top 50 Usernames by Severity**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Executable Written Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs2=(?<written_filename>.*?)(?: \w+=|$)" nodrop
| extract "cs3=(?<written_filepath>.*?)(?:\s|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "deviceCustomDate1=(?<exe_written_time>.*?)(?: \w+=|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```

**CrowdStrike - Falcon Platform/Executable Written - New/Top 50 Written Files by Severity**
```
_sourceCategory = Labs/CrowdStrike DetectionSummaryEvent Executable Written Detection Summary
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "shost=(?<host>.*?)(?:\s|$)" nodrop
| extract "fname=(?<file>.*?)(?:\s|$)" nodrop
| extract "filePath=(?<path>.*?)(?: \w+=|$)" nodrop
| extract "cs1=(?<commandline>.*?)(?: \w+=|$)" nodrop
| extract "cs2=(?<written_filename>.*?)(?: \w+=|$)" nodrop
| extract "cs3=(?<written_filepath>.*?)(?:\s|$)" nodrop
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "spid=(?<spid>.*?)(?:\s|$)" nodrop
| extract "sntdom=(?<host_domain>.*?)(?:\s|$)" nodrop
| extract "deviceCustomDate1=(?<exe_written_time>.*?)(?: \w+=|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```


