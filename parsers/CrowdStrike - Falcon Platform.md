# Parsers For CrowdStrike - Falcon Platform

## Parser:
```
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "cs1=(?<service>.*?)(?: \w+=|$)" nodrop
| extract "sourceTranslatedAddress=(?<src_ip>.*?)(?: \w+=|$)" nodrop
| extract "outcome=(?<successful>.*?)(?:\s|$)" nodrop
| extract "cat=(?<operation>.*?)(?:\s|$)" nodrop
```
### Use Cases:
Authentication Forecast, Authentication Outlier, Authentication Over Time, Authentication Services, CW-001 Detection Types, CW-002 AV Scan Results Events, CW-003 Network Access Events, CW-004 Executable Written Events, CW-005 Document Access Events, CW-006 DNS Request Events, CW-007 Detection Summary Events, CW-008 Login Audit Events, Dectection Summary by Type, Detection Summary by Severity, Detection Type by Severity, Engine by Severity, Events Forecast, Events Outlier, Failed Authentications, Host Domain by Severity, Host Domains by Severity, Severity Over Time, Top 50 Files by Severity, Top 50 Hosts by Severity, Top 50 Messages by Severity, Top 50 Usernames by Severity, Top 50 Written Files by Severity



## Parser:
```
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "cs1=(?<service>.*?)(?: \w+=|$)" nodrop
| extract "sourceTranslatedAddress=(?<src_ip>.*?)(?: \w+=|$)" nodrop
| extract "outcome=(?<successful>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "cat=(?<operation>.*?)(?:\s|$)" nodrop
| extract "deviceCustomDate1=(?<login_time>.*?)(?: \w+=|$```
### Use Cases:
CW-001 Detection Types, CW-002 AV Scan Results Events, CW-003 Network Access Events, CW-004 Executable Written Events, CW-005 Document Access Events, CW-006 DNS Request Events, CW-007 Detection Summary Events, CW-008 Login Audit Events



## Parser:
```
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "cs1=(?<service>.*?)(?: \w+=|$)" nodrop
| extract "sourceTranslatedAddress=(?<src_ip>.*?)(?: \w+=|$)" nodrop
| extract "outcome=(?<successful>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "cat=(?<operation>.*?)(?:\s|$)" nodrop
| extract "deviceCustomDate1=(?<login_time>.*?)(?: \w+=|$)" nodrop
```
### Use Cases:
Authentication Forecast, Authentication Outlier, Authentication Over Time, CW-001 Detection Types, CW-002 AV Scan Results Events, CW-003 Network Access Events, CW-004 Executable Written Events, CW-005 Document Access Events, CW-006 DNS Request Events, CW-007 Detection Summary Events, CW-008 Login Audit Events



## Parser:
```
| extract "suser=(?<user>.*?)(?:\s|$)" nodrop
| extract "cs1=(?<service>.*?)(?: \w+=|$)" nodrop
| extract "sourceTranslatedAddress=(?<src_ip>.*?)(?: \w+=|$)" nodrop
| extract "outcome=(?<successful>.*?)(?:\s|$)" nodrop
| extract "cn3=(?<offset>.*?)(?:\s|$)" nodrop
| extract "cat=(?<operation>.*?)(?:\s|$)" nodrop
| extract "deviceCustomDate1=(?<login_time>.*?)(?: \w+=|$)" nodrop 
```
### Use Cases:
Authentication Forecast, Authentication Outlier, Authentication Over Time, CW-001 Detection Types, CW-002 AV Scan Results Events, CW-003 Network Access Events, CW-004 Executable Written Events, CW-005 Document Access Events, CW-006 DNS Request Events, CW-007 Detection Summary Events, CW-008 Login Audit Events, Failed Authentications



## Parser:
```
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev
| parse "cs6=* " as FalconLink nodrop
```
### Use Cases:
CW-001 Detection Types



## Parser:
```
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
```
### Use Cases:
Authentication Forecast, Authentication Outlier, Authentication Over Time, CW-001 Detection Types, CW-002 AV Scan Results Events, CW-003 Network Access Events, CW-004 Executable Written Events, CW-005 Document Access Events, CW-006 DNS Request Events, CW-007 Detection Summary Events, CW-008 Login Audit Events, Dectection Summary by Type, Detection Summary by Severity, Detection Type by Severity, Engine by Severity, Events Forecast, Events Outlier, Failed Authentications, Host Domain by Severity, Host Domains by Severity, Severity Over Time, Top 50 Files by Severity, Top 50 Hosts by Severity, Top 50 Messages by Severity, Top 50 Usernames by Severity, Top 50 Written Files by Severity



## Parser:
```
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract "cs6=(?<FalconHostLink>.*?)(?:\s|$)" nodrop
| extract "externalID=(?<sensorid>.*?)(?:\s|$)" nodrop
```
### Use Cases:
Authentication Forecast, Authentication Outlier, Authentication Over Time, Authentication Services, CW-001 Detection Types, CW-002 AV Scan Results Events, CW-003 Network Access Events, CW-004 Executable Written Events, CW-005 Document Access Events, CW-006 DNS Request Events, CW-007 Detection Summary Events, CW-008 Login Audit Events, Dectection Summary by Type, Detection Summary by Severity, Detection Type by Severity, Engine by Severity, Events Forecast, Events Outlier, Failed Authentications, Host Domain by Severity, Host Domains by Severity, Severity Over Time, Top 50 Files by Severity, Top 50 Hosts by Severity, Top 50 Messages by Severity, Top 50 Severity with Falcon links, Top 50 Usernames by Severity, Top 50 Written Files by Severity



## Parser:
```
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
| extract "externalID=(?<sensorid>.*?)(?:\s|$```
### Use Cases:
CW-001 Detection Types, CW-002 AV Scan Results Events, CW-003 Network Access Events, CW-004 Executable Written Events, CW-005 Document Access Events



## Parser:
```
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
| extract "externalID=(?<sensorid>.*?)(?:\s|$```
### Use Cases:
CW-001 Detection Types, CW-002 AV Scan Results Events



## Parser:
```
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
### Use Cases:
Authentication Forecast, Authentication Outlier, Authentication Over Time, CW-001 Detection Types, CW-002 AV Scan Results Events, CW-003 Network Access Events, CW-004 Executable Written Events, CW-005 Document Access Events, CW-006 DNS Request Events, CW-007 Detection Summary Events, CW-008 Login Audit Events, Engine by Severity, Events Forecast, Events Outlier, Failed Authentications, Host Domain by Severity, Severity Over Time, Top 50 Files by Severity, Top 50 Hosts by Severity, Top 50 Usernames by Severity



## Parser:
```
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
| extract "externalID=(?<sensorid>.*?)(?:\s|$```
### Use Cases:
CW-001 Detection Types, CW-002 AV Scan Results Events, CW-003 Network Access Events, CW-004 Executable Written Events



## Parser:
```
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
### Use Cases:
Authentication Forecast, Authentication Outlier, Authentication Over Time, CW-001 Detection Types, CW-002 AV Scan Results Events, CW-003 Network Access Events, CW-004 Executable Written Events, CW-005 Document Access Events, CW-006 DNS Request Events, CW-007 Detection Summary Events, CW-008 Login Audit Events, Engine by Severity, Events Forecast, Events Outlier, Failed Authentications, Host Domain by Severity, Host Domains by Severity, Severity Over Time, Top 50 Files by Severity, Top 50 Hosts by Severity, Top 50 Messages by Severity, Top 50 Usernames by Severity, Top 50 Written Files by Severity



## Parser:
```
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
| extract "externalID=(?<sensorid>.*?)(?:\s|$```
### Use Cases:
CW-001 Detection Types, CW-002 AV Scan Results Events, CW-003 Network Access Events, CW-004 Executable Written Events, CW-005 Document Access Events, CW-006 DNS Request Events



## Parser:
```
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
| extract "externalID=(?<sensorid>.*?)(?:\s|$```
### Use Cases:
CW-001 Detection Types, CW-002 AV Scan Results Events, CW-003 Network Access Events, CW-004 Executable Written Events, CW-005 Document Access Events, CW-006 DNS Request Events, CW-007 Detection Summary Events



## Parser:
```
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
### Use Cases:
Authentication Forecast, Authentication Outlier, Authentication Over Time, CW-001 Detection Types, CW-002 AV Scan Results Events, CW-003 Network Access Events, CW-004 Executable Written Events, CW-005 Document Access Events, CW-006 DNS Request Events, CW-007 Detection Summary Events, CW-008 Login Audit Events, Engine by Severity, Events Forecast, Events Outlier, Failed Authentications, Host Domain by Severity, Severity Over Time, Top 50 Files by Severity, Top 50 Hosts by Severity, Top 50 Messages by Severity, Top 50 Usernames by Severity



## Parser:
```
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
| extract "externalID=(?<sensorid>.*?)(?:\s|$```
### Use Cases:
CW-001 Detection Types, CW-002 AV Scan Results Events, CW-003 Network Access Events



## Parser:
```
| parse "CEF:0|CrowdStrike|FalconHost|1.0|DetectionSummaryEvent|*|*|" as detect_type,sev 
| extract field=detect_type "(?<detect_type>.*?) In A" nodrop
```
### Use Cases:
Authentication Forecast, Authentication Outlier, Authentication Over Time, Authentication Services, CW-001 Detection Types, CW-002 AV Scan Results Events, CW-003 Network Access Events, CW-004 Executable Written Events, CW-005 Document Access Events, CW-006 DNS Request Events, CW-007 Detection Summary Events, CW-008 Login Audit Events, Dectection Summary by Type, Detection Summary by Severity, Detection Type by Severity, Engine by Severity, Events Forecast, Events Outlier, Failed Authentications, Host Domain by Severity, Host Domains by Severity, Severity by Detection Type, Severity Over Time, Top 50 Files by Severity, Top 50 Hosts by Severity, Top 50 Messages by Severity, Top 50 Severity with Falcon links, Top 50 Usernames by Severity, Top 50 Written Files by Severity


