# Parsers For Oracle - OpenTelemetry

**Oracle - OpenTelemetry/Oracle - Alert Analysis/Archival Errors by Instance**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "Archival Error"
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message  "ORACLE Instance * - Archival Error" as instance 
```

**Oracle - OpenTelemetry/Oracle - Alert Analysis/Archival Log Creation Errors**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle Thread cannot allocate new log sequence Checkpoint "not" complete | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<oraerr>ORA-\d{5}): (?<oramsg>.*)" multi
```

**Oracle - OpenTelemetry/Oracle - Alert Analysis/Block Corruption Errors**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "ORA-01578" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<oraerr>ORA-\d{5}): (?<oramsg>.*)" multi
```

**Oracle - OpenTelemetry/Oracle - Alert Analysis/Database Crash Errors**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle ("ORA-00603" or "ORA-00449" or "ORA-00471" or "ORA-01092") | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<oraerr>ORA-\d{5}): (?<oramsg>.*)" multi
```

**Oracle - OpenTelemetry/Oracle - Alert Analysis/Deadlock Errors**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "ORA-00060" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<oraerr>ORA-\d{5}): (?<oramsg>.*)" multi
```

**Oracle - OpenTelemetry/Oracle - Alert Analysis/Failures, Warnings and Errors by Instance Source**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle (fail* or warn* or error*)| json "log" as _rawlog nodrop 
```

**Oracle - OpenTelemetry/Oracle - Alert Analysis/Fatal NI Connect Errors**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "Fatal NI connect error" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "Fatal NI connect error (?<oraerr>\d+?)(?:,|\.)"
```

**Oracle - OpenTelemetry/Oracle - Alert Analysis/Hosts Reporting ORA Messages**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle ORA-* | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<oraerr>ORA-\d{5}): (?<oramsg>.*)" multi
```

**Oracle - OpenTelemetry/Oracle - Alert Analysis/Instance Shutdown Complete**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "Instance shutdown complete" | json "log" as _rawlog nodrop 
```

**Oracle - OpenTelemetry/Oracle - Alert Analysis/Instance Shutdown Initiated**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "Shutting down instance" | json "log" as _rawlog nodrop 
```

**Oracle - OpenTelemetry/Oracle - Alert Analysis/Instance Started**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "Starting ORACLE instance" | json "log" as _rawlog nodrop 
```

**Oracle - OpenTelemetry/Oracle - Alert Analysis/Internal Errors**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle ("ORA-00600" or "ORA-07445") | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<oraerr>ORA-\d{5}): (?<oramsg>.*)" multi
```

**Oracle - OpenTelemetry/Oracle - Alert Analysis/Log Switch Activity By Hosts**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "LGWR switch"| json "log" as _rawlog nodrop 
```

**Oracle - OpenTelemetry/Oracle - Alert Analysis/ORA Messages Over Time**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle ORA-* | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<oraerr>ORA-\d{5}): (?<oramsg>.*)" multi
```

**Oracle - OpenTelemetry/Oracle - Alert Analysis/Top 10 TNS Errors**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle TNS-* | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<TNSerr>TNS-\d{5}): (?<tnsmsg>.*)" multi
```

**Oracle - OpenTelemetry/Oracle - Alert Analysis/Top ORA Messages**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle ORA-* | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<oraerr>ORA-\d{5}): (?<oramsg>.*)" multi
```

**Oracle - OpenTelemetry/Oracle - Alert Analysis/Unable To Extend Tablespace Errors**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle unable to extend by tablespace
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<oraerr>ORA-\d{4,5}): (?<oramsg>.*)" multi
| parse regex field=oramsg "unable to extend (?<object>[\S\s]+?)\s+by \d+ in tablespace\s+(?<tablespace>\S+)"
```

**Oracle - OpenTelemetry/Oracle - Listener Troubleshooting/Command Execution Status**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "COMMAND=" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "\* \(CONNECT_DATA[\s\S]+?COMMAND=(?<connect_data_command>[^)]*)\)[\s\S]+?\* (?<command>[^\s]+)\s+\*\s+(?<status>\d+)"
```

**Oracle - OpenTelemetry/Oracle - Listener Troubleshooting/Command Execution Trend**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "COMMAND=" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex  field=oracle_log_message "\* \(CONNECT_DATA[\s\S]+?COMMAND=(?<connect_data_command>[^)]*)\)[\s\S]+?\* (?<command>[^\s]+)\s+\*\s+(?<status>\d+)"
```

**Oracle - OpenTelemetry/Oracle - Listener Troubleshooting/DB Connections by Applications**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle establish "PROGRAM=" ("SID=" or "SERVICE_NAME=") | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?SERVICE_NAME=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?service_name=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?SID=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?sid=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?PROGRAM=(?<userProgramName>[^)]*)\)[\s\S]+?HOST=(?<userHost>[^)]*)\)[\s\S]+?USER=(?<databaseUser>[^)]*)\)" nodrop
```

**Oracle - OpenTelemetry/Oracle - Listener Troubleshooting/DB Connections By Host**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle establish "PROGRAM=" ("SID=" or "SERVICE_NAME=") | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message 
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?SERVICE_NAME=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?service_name=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?SID=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?sid=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?PROGRAM=(?<userProgramName>[^)]*)\)[\s\S]+?HOST=(?<userHost>[^)]*)\)[\s\S]+?USER=(?<databaseUser>[^)]*)\)" nodrop
| parse field=oracle_log_message "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort  nodrop
```

**Oracle - OpenTelemetry/Oracle - Listener Troubleshooting/Failed to Success Connection Ratio - Outlier**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle establish | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "\* \(CONNECT_DATA[\s\S]+?\* establish \* \S+ \* (?<status>\d+)" nodrop
```

**Oracle - OpenTelemetry/Oracle - Listener Troubleshooting/Last 10 Failed Connection Attempts**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle establish "PROGRAM=" ("SID=" or "SERVICE_NAME=") TNS-*
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "\* \(CONNECT_DATA[\s\S]+?\* establish \* \S+ \* (?<status>\d+)" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?SERVICE_NAME=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?service_name=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?SID=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?sid=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?PROGRAM=(?<userProgramName>[^)]*)\)[\s\S]+?HOST=(?<userHost>[^)]*)\)[\s\S]+?USER=(?<databaseUser>[^)]*)\)" nodrop
| parse field=oracle_log_message "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
| parse regex field=oracle_log_message "(?<TNSerr>TNS-\d{5}): (?<tnsmsg>.*)" nodrop
```

**Oracle - OpenTelemetry/Oracle - Listener Troubleshooting/Last 10 Listener Stopped Events**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle COMMAND stop "COMMAND=stop" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message "(CONNECT_DATA=(CID=(PROGRAM=)(HOST=*)(USER=*))(COMMAND=*)(ARGUMENTS=*)(SERVICE=*)(VERSION=*))" as userHost, databaseUser, connect_data_command, connect_data_arguments, connect_data_service, connect_data_version nodrop
| parse regex field=oracle_log_message "\* \(CONNECT_DATA[\s\S]+?COMMAND=(?<connect_data_command>[^)]*)\)[\s\S]+?\* (?<command>[^\s]+)\s+\*\s+(?<status>\d+)"
```

**Oracle - OpenTelemetry/Oracle - Listener Troubleshooting/SID or Service Name Connections**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle establish "PROGRAM=" ("SID=" or "SERVICE_NAME=") | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?SERVICE_NAME=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?service_name=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?SID=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?sid=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?PROGRAM=(?<userProgramName>[^)]*)\)[\s\S]+?HOST=(?<userHost>[^)]*)\)[\s\S]+?USER=(?<databaseUser>[^)]*)\)" nodrop
| parse field=oracle_log_message "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
```

**Oracle - OpenTelemetry/Oracle - Monitor Performance by DB Script/% Datafile Space Utilization Trend**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "datafile status" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message 
| parse field=oracle_log_message " queryoutput=*" as jsonOUT 
| json field=jsonOUT "MONITOR_TYPE","FILE_NAME","FREE_SPACE_MB","ALLOCATED_MB","USED_MB" as monitorType, filename, freespace, allocated, usedSpace
```

**Oracle - OpenTelemetry/Oracle - Monitor Performance by DB Script/% Tablespace Utilization Trend**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "tablespace status"  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message " queryoutput=*" as jsonOUT 
| json field=jsonOUT "Tablespace Name", "USED_SPACE", "MONITOR_TYPE","TOTAL_SPACE","FREE_SPACE" as tablespace_name, usedSpace, monitorType, totalSpace, freeSpace
```

**Oracle - OpenTelemetry/Oracle - Monitor Performance by DB Script/Avg Datafile Space Utilization**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "datafile status" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message " queryoutput=*" as jsonOUT 
| json field=jsonOUT "MONITOR_TYPE","FILE_NAME","FREE_SPACE_MB","ALLOCATED_MB","USED_MB" as monitorType, filename, freespace, allocated, usedSpace
```

**Oracle - OpenTelemetry/Oracle - Monitor Performance by DB Script/Avg Tablespace Utilization**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "tablespace status" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse  field=oracle_log_message " queryoutput=*" as jsonOUT 
| json field=jsonOUT "Tablespace Name", "USED_SPACE", "MONITOR_TYPE","TOTAL_SPACE","FREE_SPACE" as tablespace_name, usedSpace, monitorType, totalSpace, freeSpace
```

**Oracle - OpenTelemetry/Oracle - Monitor Performance by DB Script/Buffer Cache Hit Ratio**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "buffer cache hit ratio" 
| json "log" as _rawlog nodrop
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message " queryoutput=*" as jsonOUT 
| json field=jsonout "Cache Hit Ratio", "MONITOR_TYPE" as cachehitratio, monitorType
```

**Oracle - OpenTelemetry/Oracle - Monitor Performance by DB Script/Last 10 Recent Jobs in the Database**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "job status" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message " queryoutput=*" as jsonOUT 
| json field=jsonout "TOTAL_TIME", "WHAT", "NEXT_DATE", "LOG_USER", "NLS_ENV", "INTERVAL", "LAST_DATE", "SCHEMA_USER", "MISC_ENV", "BROKEN", "JOB", "PRIV_USER", "MONITOR_TYPE", "FAILURES" as TOTALTIME, WHAT, NEXT_DATE, LOG_USER, NLS_ENV, INTERVAL, LAST_DATE, SCHEMA_USER, MISC_ENV, BROKEN, JOB, PRIV_USER, MONITORTYPE, FAILURES
| parse field=jsonout "\"MISC_ENV\": \"*\"" as MISC_ENV nodrop
```

**Oracle - OpenTelemetry/Oracle - Monitor Performance by DB Script/Maximum Wait Time (sec) by User**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "session waits" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message " queryoutput=*" as jsonOUT 
| json field=jsonOUT "MONITOR_TYPE","SECONDS_IN_WAIT","USERNAME","STATE","EVENT" as monitorType, secondsinwait, username, state, event
```

**Oracle - OpenTelemetry/Oracle - Monitor Performance by DB Script/Recent Active Connections**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "active sessions" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message " queryoutput=*" as jsonOUT 
| json field=jsonOUT "MONITOR_TYPE","USERNAME","STATUS","MACHINE","PROGRAM","SERIAL#" as monitorType, USERNAME, STATUS, MACHINE, PROGRAM, serial 
```

**Oracle - OpenTelemetry/Oracle - Monitor Performance by DB Script/Top Session Wait Time Events**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "session waits" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message " queryoutput=*" as jsonOUT 
| json field=jsonOUT "MONITOR_TYPE","SECONDS_IN_WAIT","USERNAME","STATE","EVENT" as monitorType, secondsinwait, username, state, event
```

**Oracle - OpenTelemetry/Oracle - Overview/DB Connections**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle establish ("SID=" or "SERVICE_NAME=")  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message 
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?SERVICE_NAME=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?service_name=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?SID=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?sid=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
```

**Oracle - OpenTelemetry/Oracle - Overview/Service Name**
```
 sumo.datasource=oracle deployment.environment={{deployment.environment}}  db.cluster.name={{db.cluster.name}} establish "SERVICE_NAME=" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?SERVICE_NAME=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?service_name=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
```

**Oracle - OpenTelemetry/Oracle - Overview/Service Name Vs SID Adoption**
```
 sumo.datasource=oracle deployment.environment={{deployment.environment}}  db.cluster.name={{db.cluster.name}} establish ("SID=" or "SERVICE_NAME=") | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?SERVICE_NAME=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?service_name=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?SID=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?sid=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
```

**Oracle - OpenTelemetry/Oracle - Overview/SID**
```
 sumo.datasource=oracle deployment.environment={{deployment.environment}}  db.cluster.name={{db.cluster.name}} establish "SID=" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?SID=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?sid=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
```

**Oracle - OpenTelemetry/Oracle - Overview/TNS Command Execution Status**
```
 sumo.datasource=oracle deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} "COMMAND=" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message  "\* \(CONNECT_DATA[\s\S]+?COMMAND=(?<connect_data_command>[^)]*)\)[\s\S]+?\* (?<command>[^\s]+)\s+\*\s+(?<status>\d+)"
```

**Oracle - OpenTelemetry/Oracle - Overview/TNS Commands Executed**
```
 sumo.datasource=oracle deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} "COMMAND=" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message  "\* \(CONNECT_DATA[\s\S]+?COMMAND=(?<connect_data_command>[^)]*)\)[\s\S]+?\* (?<command>[^\s]+)\s+\*\s+(?<status>\d+)"
```

**Oracle - OpenTelemetry/Oracle - Overview/TNS Error Trend**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle TNS-* | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<TNSerr>TNS-\d{5}): (?<tnsmsg>.*)" multi
```

**Oracle - OpenTelemetry/Oracle - Overview/TNS Errors**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle TNS-* | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<TNSerr>TNS-\d{5}): (?<tnsmsg>.*)" multi
```

**Oracle - OpenTelemetry/Oracle - Overview/TNS Most Active User Hosts**
```
 sumo.datasource=oracle deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} "HOST=" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message  "CONNECT_DATA[\s\S]+?PROGRAM=(?<UserProgramName>[^)]*)\)[\s\S]+?HOST=(?<UserHost>[^)]*)\)[\s\S]+?USER=(?<DatabaseUser>[^)]*)\)" nodrop
| parse field=oracle_log_message "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as ClientProtocol, ClientHost, ClientPort nodrop
```

**Oracle - OpenTelemetry/Oracle - Overview/TNS Protocol Used**
```
 sumo.datasource=oracle deployment.environment={{deployment.environment}}  db.cluster.name={{db.cluster.name}} "ADDRESS=" "PROTOCOL=" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
| parse field=oracle_log_message "(ADDRESS=(PROTOCOL=*)(KEY=LISTENER)" as clientProtocol nodrop
```

**Oracle - OpenTelemetry/Oracle - Overview/TNS Top Client Hosts for __jdbc__**
```
 sumo.datasource=oracle deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} "ADDRESS=" "HOST=" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message  "CONNECT_DATA[\s\S]+?PROGRAM=(?<UserProgramName>[^)]*)\)[\s\S]+?HOST=(?<UserHost>[^)]*)\)[\s\S]+?USER=(?<DatabaseUser>[^)]*)\)" nodrop
| parse field=oracle_log_message "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as ClientProtocol, ClientHost, ClientPort nodrop
```

**Oracle - OpenTelemetry/Oracle - Overview/TNS Top Database Users**
```
 sumo.datasource=oracle deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} "USER=" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message  "CONNECT_DATA[\s\S]+?PROGRAM=(?<userProgramName>[^)]*)\)[\s\S]+?HOST=(?<userHost>[^)]*)\)[\s\S]+?USER=(?<DatabaseUser>[^)]*)\)" nodrop
```

**Oracle - OpenTelemetry/Oracle - Overview/TNS Top Ports Used by Client**
```
 sumo.datasource=oracle deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} "ADDRESS=" "PORT=" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message  "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as ClientProtocol, ClientHost, ClientPort nodrop
```

**Oracle - OpenTelemetry/Oracle - Overview/TNS Top User Program Name**
```
 sumo.datasource=oracle deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} "PROGRAM=" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message  "CONNECT_DATA[\s\S]+?PROGRAM=(?<UserProgramName>[^)]*)\)[\s\S]+?HOST=(?<UserHost>[^)]*)\)[\s\S]+?USER=(?<DatabaseUser>[^)]*)\)" nodrop
```

**Oracle - OpenTelemetry/Oracle - Overview/Top TNS Errors**
```
 sumo.datasource=oracle deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} TNS-* | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message  "(?<TNSerr>TNS-\d{5}): (?<tnsmsg>.*)" multi
```

**Oracle - OpenTelemetry/Oracle - Security Monitoring/Admin Restricted Command Executions**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle ("TNS:listener could not resolve the COMMAND given" or "TNS-12508") | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<TNSerr>TNS-\d{5}): (?<tnsmsg>.*)" nodrop
```

**Oracle - OpenTelemetry/Oracle - Security Monitoring/Connections By Privileged Users**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "USER=" (root or Administrator) | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?PROGRAM=(?<userProgramName>[^)]*)\)[\s\S]+?HOST=(?<userHost>[^)]*)\)[\s\S]+?USER=(?<databaseUser>[^)]*)\)" nodrop
```

**Oracle - OpenTelemetry/Oracle - Security Monitoring/Connections By Privileged Users - Trend**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "USER=" (root or Administrator) | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?PROGRAM=(?<userProgramName>[^)]*)\)[\s\S]+?HOST=(?<userHost>[^)]*)\)[\s\S]+?USER=(?<databaseUser>[^)]*)\)" nodrop
```

**Oracle - OpenTelemetry/Oracle - Security Monitoring/Count Connection Status by Privileged Users**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle establish "USER=" ("SID=" or "SERVICE_NAME=") (root or Administrator)  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "\* \(CONNECT_DATA[\s\S]+?\* establish \* \S+ \* (?<status>\d+)" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?SERVICE_NAME=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?service_name=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?SID=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?sid=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?PROGRAM=(?<userProgramname>[^)]*)\)[\s\S]+?HOST=(?<userHost>[^)]*)\)[\s\S]+?USER=(?<databaseUser>[^)]*)\)" nodrop
| parse field=oracle_log_message "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
| parse regex field=oracle_log_message "(?<TNSerr>TNS-\d{5}): (?<tnsmsg>.*)" nodrop
```

**Oracle - OpenTelemetry/Oracle - Security Monitoring/Last 10 Failed DB Connections by Privileged Users**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle establish "USER=" ("SID=" or "SERVICE_NAME=") (root or Administrator) TNS-* | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex  field=oracle_log_message "\* \(CONNECT_DATA[\s\S]+?\* establish \* \S+ \* (?<status>\d+)" nodrop
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?SERVICE_NAME=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?service_name=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?SID=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?sid=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?PROGRAM=(?<userProgramName>[^)]*)\)[\s\S]+?HOST=(?<userHost>[^)]*)\)[\s\S]+?USER=(?<databaseUser>[^)]*)\)" nodrop
| parse  field=oracle_log_message "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
| parse regex  field=oracle_log_message "(?<TNSerr>TNS-\d{5}): (?<tnsmsg>.*)" nodrop
```

**Oracle - OpenTelemetry/Oracle - Security Monitoring/Last 10 Recent Successful DB Connections by Privileged Users**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle establish "USER=" ("SID=" or "SERVICE_NAME=") (root or Administrator) !TNS-* | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "\* \(CONNECT_DATA[\s\S]+?\* establish \* \S+ \* (?<status>\d+)" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?SERVICE_NAME=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?service_name=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?SID=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?sid=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex field=oracle_log_message "CONNECT_DATA[\s\S]+?PROGRAM=(?<userProgramName>[^)]*)\)[\s\S]+?HOST=(?<userHost>[^)]*)\)[\s\S]+?USER=(?<databaseUser>[^)]*)\)" nodrop
| parse field=oracle_log_message "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
| parse regex field=oracle_log_message "(?<TNSerr>TNS-\d{5}): (?<tnsmsg>.*)" nodrop
```

**Oracle - OpenTelemetry/Oracle - Security Monitoring/Location of Failed Connection Attempts From Public IPs**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle establish "PROGRAM=" ("SID=" or "SERVICE_NAME=") | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex  field=oracle_log_message "\* \(CONNECT_DATA[\s\S]+?\* establish \* \S+ \* (?<status>\d+)" nodrop
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?SERVICE_NAME=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?service_name=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?SID=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?sid=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?PROGRAM=(?<userProgramName>[^)]*)\)[\s\S]+?HOST=(?<userHost>[^)]*)\)[\s\S]+?USER=(?<databaseUser>[^)]*)\)" nodrop
| parse  field=oracle_log_message "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
| parse regex  field=oracle_log_message "(?<TNSerr>TNS-\d{5}): (?<tnsmsg>.*)" nodrop
```

**Oracle - OpenTelemetry/Oracle - Security Monitoring/Location of Successful Connection Attempts From Public IPs**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle establish "PROGRAM=" ("SID=" or "SERVICE_NAME=") | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex  field=oracle_log_message "\* \(CONNECT_DATA[\s\S]+?\* establish \* \S+ \* (?<status>\d+)" nodrop
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?SERVICE_NAME=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?service_name=(?<serviceName>[^)]*)\)[\s\S]+establish" nodrop
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?SID=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?sid=(?<SID>[^)]*)\)[\s\S]+establish" nodrop
| parse regex  field=oracle_log_message "CONNECT_DATA[\s\S]+?PROGRAM=(?<userProgramName>[^)]*)\)[\s\S]+?HOST=(?<userHost>[^)]*)\)[\s\S]+?USER=(?<databaseUser>[^)]*)\)" nodrop
| parse  field=oracle_log_message "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
| parse regex  field=oracle_log_message "(?<TNSerr>TNS-\d{5}): (?<tnsmsg>.*)" nodrop
```

**Oracle - OpenTelemetry/Oracle - Security Monitoring/Possible Inappropriate Activity Events**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle ("TNS-01169" or "TNS-01189" or "TNS-01190" or "TNS-12508") or ("ORA-12525" or "ORA-28040" or "ORA-12170") | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<TNSerr>TNS-\d{5}): (?<tnsmsg>.*)" nodrop
| parse regex field=oracle_log_message "(?<oraerr>ORA-\d{5}): (?<oramsg>.*)" multi nodrop
```

**Oracle - OpenTelemetry/Oracle - Security Monitoring/Unauthorized Command Executions**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "TNS-01190" or "The user is not authorized to execute the requested listener command" | json "log" as _rawlog nodrop 
 | where environment matches "{{deployment.environment}}"
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<TNSerr>TNS-\d{5}): (?<tnsmsg>.*)" nodrop
```

**Oracle - OpenTelemetry/Oracle - Sys Audit Log - Logon Analysis/Brute Force Logon Success**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "ACTION :[7] 'CONNECT'"
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message "\nLENGTH : '*'\nACTION :[*] '*'\nDATABASE USER:[*] '*'\nPRIVILEGE :[*] '*'\nCLIENT USER:[*] '*'\nCLIENT TERMINAL:[*] '*'\nSTATUS:[*] '*'\nDBID:[*] '*'\nSESSIONID:[*] '*'\nUSERHOST:[*] '*'\nCLIENT ADDRESS:[*] '*'\nACTION NUMBER:[*] '*'" as totallength, actionlength, Action, databaseuserlength, databaseUser, privilegelength, privilege, clientuserlength, clientUser, clientterminallength, clientTerminal, statuslength, status, dbidlength, dbid, sessionlength, sessionid, userhostlength, userHost, clientaddresslength, clientAddress, actionnumberlength, actionNumber
```

**Oracle - OpenTelemetry/Oracle - Sys Audit Log - Logon Analysis/Excessive Failed Logons**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle !"STATUS:[1] '0'" "ACTION :[7] 'CONNECT'"
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message "\nLENGTH : '*'\nACTION :[*] '*'\nDATABASE USER:[*] '*'\nPRIVILEGE :[*] '*'\nCLIENT USER:[*] '*'\nCLIENT TERMINAL:[*] '*'\nSTATUS:[*] '*'\nDBID:[*] '*'" as totallength, actionlength, Action, databaseuserlength, databaseUser, privilegelength, privilege, clientuserlength, clientUser, clientterminallength, clientTerminal, statuslength, status, dbidlength, dbid
```

**Oracle - OpenTelemetry/Oracle - Sys Audit Log - Logon Analysis/Failed Logons**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "ACTION :[7] 'CONNECT'"
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message "\nLENGTH : '*'\nACTION :[*] '*'\nDATABASE USER:[*] '*'\nPRIVILEGE :[*] '*'\nCLIENT USER:[*] '*'\nCLIENT TERMINAL:[*] '*'\nSTATUS:[*] '*'\nDBID:[*] '*'" as totallength, actionlength, Action, databaseuserlength, databaseUser, privilegelength, privilege, clientuserlength, clientUser, clientterminallength, clientTerminal, statuslength, status, dbidlength, dbid nodrop
```

**Oracle - OpenTelemetry/Oracle - Sys Audit Log - Logon Analysis/Logon Status Trend**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "ACTION :[7] 'CONNECT'"
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message "\nLENGTH : '*'\nACTION :[*] '*'\nDATABASE USER:[*] '*'\nPRIVILEGE :[*] '*'\nCLIENT USER:[*] '*'\nCLIENT TERMINAL:[*] '*'\nSTATUS:[*] '*'\nDBID:[*] '*'" as totallength, actionlength, Action, databaseuserlength, databaseUser, privilegelength, privilege, clientuserlength, clientUser, clientterminallength, clientTerminal, statuslength, status, dbidlength, dbid
```

**Oracle - OpenTelemetry/Oracle - Sys Audit Log - Logon Analysis/Multiple Client User Logons From Same UserHost**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "STATUS:[1] '0'" "ACTION :[7] 'CONNECT'"
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message "\nLENGTH : '*'\nACTION :[*] '*'\nDATABASE USER:[*] '*'\nPRIVILEGE :[*] '*'\nCLIENT USER:[*] '*'\nCLIENT TERMINAL:[*] '*'\nSTATUS:[*] '*'\nDBID:[*] '*'\nSESSIONID:[*] '*'\nUSERHOST:[*] '*'\nCLIENT ADDRESS:[*] '*'\nACTION NUMBER:[*] '*'" as totallength, actionlength, Action, databaseuserlength, databaseUser, privilegelength, privilege, clientuserlength, clientUser, clientterminallength, clientTerminal, statuslength, status, dbidlength, dbid, sessionlength, sessionid, userhostlength, userHost, clientaddresslength, clientAddress, actionnumberlength, actionNumber
```

**Oracle - OpenTelemetry/Oracle - Sys Audit Log - Logon Analysis/Multiple Database User Logons From Same UserHost**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "STATUS:[1] '0'" "ACTION :[7] 'CONNECT'"
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message "\nLENGTH : '*'\nACTION :[*] '*'\nDATABASE USER:[*] '*'\nPRIVILEGE :[*] '*'\nCLIENT USER:[*] '*'\nCLIENT TERMINAL:[*] '*'\nSTATUS:[*] '*'\nDBID:[*] '*'\nSESSIONID:[*] '*'\nUSERHOST:[*] '*'\nCLIENT ADDRESS:[*] '*'\nACTION NUMBER:[*] '*'" as totallength, actionlength, Action, databaseuserlength, databaseUser, privilegelength, privilege, clientuserlength, clientUser, clientterminallength, clientTerminal, statuslength, status, dbidlength, dbid, sessionlength, sessionid, userhostlength, userHost, clientaddresslength, clientAddress, actionnumberlength, actionNumber
```

**Oracle - OpenTelemetry/Oracle - Sys Audit Log - Logon Analysis/Multiple UserHosts Logons with Same Database User**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "STATUS:[1] '0'" "ACTION :[7] 'CONNECT'"
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message "\nLENGTH : '*'\nACTION :[*] '*'\nDATABASE USER:[*] '*'\nPRIVILEGE :[*] '*'\nCLIENT USER:[*] '*'\nCLIENT TERMINAL:[*] '*'\nSTATUS:[*] '*'\nDBID:[*] '*'\nSESSIONID:[*] '*'\nUSERHOST:[*] '*'\nCLIENT ADDRESS:[*] '*'\nACTION NUMBER:[*] '*'" as totallength, actionlength, Action, databaseuserlength, databaseUser, privilegelength, privilege, clientuserlength, clientUser, clientterminallength, clientTerminal, statuslength, status, dbidlength, dbid, sessionlength, sessionid, userhostlength, userHost, clientaddresslength, clientAddress, actionnumberlength, actionNumber
```

**Oracle - OpenTelemetry/Oracle - Sys Audit Log - Logon Analysis/Successful Logons**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "STATUS:[1] '0'" "ACTION :[7] 'CONNECT'" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message "\nLENGTH : '*'\nACTION :[*] '*'\nDATABASE USER:[*] '*'\nPRIVILEGE :[*] '*'\nCLIENT USER:[*] '*'\nCLIENT TERMINAL:[*] '*'\nSTATUS:[*] '*'\nDBID:[*] '*'" as totallength, actionlength, Action, databaseuserlength, databaseUser, privilegelength, privilege, clientuserlength, clientUser, clientterminallength, clientTerminal, statuslength, status, dbidlength, dbid nodrop
```

**Oracle - OpenTelemetry/Oracle - Sys Audit Log/Failure Status Trend**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle !"STATUS:[1] '0'" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message "\nLENGTH : '*'\nACTION :[*] '*'\nDATABASE USER:[*] '*'\nPRIVILEGE :[*] '*'\nCLIENT USER:[*] '*'\nCLIENT TERMINAL:[*] '*'\nSTATUS:[*] '*'\nDBID:[*] '*'" as totallength, actionlength, Action, databaseuserlength, databaseUser, privilegelength, privilege, clientuserlength, clientUser, clientterminallength, clientTerminal, statuslength, status, dbidlength, dbid
```

**Oracle - OpenTelemetry/Oracle - Sys Audit Log/Last 20 Recent Failure Activities**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle !"STATUS:[1] '0'" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message "\nLENGTH : '*'\nACTION :[*] '*'\nDATABASE USER:[*] '*'\nPRIVILEGE :[*] '*'\nCLIENT USER:[*] '*'\nCLIENT TERMINAL:[*] '*'\nSTATUS:[*] '*'\nDBID:[*] '*'" as totallength, actionlength, Action, databaseuserlength, databaseUser, privilegelength, privilege, clientuserlength, clientUser, clientterminallength, clientTerminal, statuslength, status, dbidlength, dbid
```

**Oracle - OpenTelemetry/Oracle - Sys Audit Log/Last 20 Recent Successful Activities**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "STATUS:[1] '0'" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message "\nLENGTH : '*'\nACTION :[*] '*'\nDATABASE USER:[*] '*'\nPRIVILEGE :[*] '*'\nCLIENT USER:[*] '*'\nCLIENT TERMINAL:[*] '*'\nSTATUS:[*] '*'\nDBID:[*] '*'" as totallength, actionlength, Action, databaseuserlength, databaseUser, privilegelength, privilege, clientuserlength, clientUser, clientterminallength, clientTerminal, statuslength, status, dbidlength, dbid
```

**Oracle - OpenTelemetry/Oracle - Sys Audit Log/Status Trend**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message "\nLENGTH : '*'\nACTION :[*] '*'\nDATABASE USER:[*] '*'\nPRIVILEGE :[*] '*'\nCLIENT USER:[*] '*'\nCLIENT TERMINAL:[*] '*'\nSTATUS:[*] '*'\nDBID:[*] '*'" as totallength, actionlength, Action, databaseuserlength, databaseUser, privilegelength, privilege, clientuserlength, clientUser, clientterminallength, clientTerminal, statuslength, status, dbidlength, dbid
```

**Oracle - OpenTelemetry/Oracle - Sys Audit Log/Top Client Users**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message "\nLENGTH : '*'\nACTION :[*] '*'\nDATABASE USER:[*] '*'\nPRIVILEGE :[*] '*'\nCLIENT USER:[*] '*'\nCLIENT TERMINAL:[*] '*'\nSTATUS:[*] '*'\nDBID:[*] '*'" as totallength, actionlength, Action, databaseuserlength, databaseUser, privilegelength, privilege, clientuserlength, clientUser, clientterminallength, clientTerminal, statuslength, status, dbidlength, dbid
```

**Oracle - OpenTelemetry/Oracle - Sys Audit Log/Top Database Users**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message "\nLENGTH : '*'\nACTION :[*] '*'\nDATABASE USER:[*] '*'\nPRIVILEGE :[*] '*'\nCLIENT USER:[*] '*'\nCLIENT TERMINAL:[*] '*'\nSTATUS:[*] '*'\nDBID:[*] '*'" as totallength, actionlength, Action, databaseuserlength, databaseUser, privilegelength, privilege, clientuserlength, clientUser, clientterminallength, clientTerminal, statuslength, status, dbidlength, dbid
```

**Oracle - OpenTelemetry/Oracle - Sys Audit Log/Top Privileges Used**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse field=oracle_log_message "\nLENGTH : '*'\nACTION :[*] '*'\nDATABASE USER:[*] '*'\nPRIVILEGE :[*] '*'\nCLIENT USER:[*] '*'\nCLIENT TERMINAL:[*] '*'\nSTATUS:[*] '*'\nDBID:[*] '*'" as totallength, actionlength, Action, databaseuserlength, databaseUser, privilegelength, privilege, clientuserlength, clientUser, clientterminallength, clientTerminal, statuslength, status, dbidlength, dbid
```

**Oracle - OpenTelemetry/Oracle - XML Audit Log - Logon Analysis/Brute Force Login Success**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "<AuditRecord>" "<Action>100</Action>"
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<auditrecord>\<AuditRecord\>[\s\S]+?</AuditRecord>)" nodrop
| parse XML field=auditrecord "/AuditRecord/Audit_Type" as Audit_Type nodrop | parse field=Audit_Type "<Audit_Type>*</Audit_Type>" as Audit_Type nodrop
| parse XML field=auditrecord "/AuditRecord/Session_Id" as Session_Id nodrop | parse field=Session_Id "<Session_Id>*</Session_Id>" as Session_Id nodrop
| parse XML field=auditrecord "/AuditRecord/DB_User" as databaseUser nodrop | parse field=databaseUser "<DB_User>*</DB_User>" as databaseUser nodrop
| parse XML field=auditrecord "/AuditRecord/OS_User" as clientUser nodrop | parse field=clientUser "<OS_User>*</OS_User>" as clientUser nodrop
| parse XML field=auditrecord "/AuditRecord/Userhost" as Userhost nodrop | parse field=Userhost "<Userhost>*</Userhost>" as Userhost nodrop
| parse XML field=auditrecord "/AuditRecord/Sql_Text" as Sql_Text nodrop | parse field=Sql_Text "<Sql_Text>*</Sql_Text>" as Sql_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Action" as Action nodrop | parse field=Action "<Action>*</Action>" as Action nodrop
| parse XML field=auditrecord "/AuditRecord/Returncode" as status nodrop | parse field=status "<Returncode>*</Returncode>" as status nodrop
| parse XML field=auditrecord "/AuditRecord/Comment_Text" as Comment_Text nodrop | parse field=Comment_Text "<Comment_Text>*</Comment_Text>" as Comment_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Priv_Used" as privilege nodrop | parse field=privilege "<Priv_Used>*</Priv_Used>" as privilege nodrop
| parse XML field=auditrecord "/AuditRecord/Terminal" as clientTerminal nodrop | parse field=clientTerminal "<Terminal>*</Terminal>" as clientTerminal nodrop
| parse field=Comment_Text "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
```

**Oracle - OpenTelemetry/Oracle - XML Audit Log - Logon Analysis/Excessive Failed Logons**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "<AuditRecord>" "<Action>100</Action>" !"<Returncode>0</Returncode>"
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<auditrecord>\<AuditRecord\>[\s\S]+?</AuditRecord>)" nodrop
| parse XML field=auditrecord "/AuditRecord/Audit_Type" as Audit_Type nodrop | parse field=Audit_Type "<Audit_Type>*</Audit_Type>" as Audit_Type nodrop
| parse XML field=auditrecord "/AuditRecord/Session_Id" as Session_Id nodrop | parse field=Session_Id "<Session_Id>*</Session_Id>" as Session_Id nodrop
| parse XML field=auditrecord "/AuditRecord/DB_User" as databaseUser nodrop | parse field=databaseUser "<DB_User>*</DB_User>" as databaseUser nodrop
| parse XML field=auditrecord "/AuditRecord/OS_User" as clientUser nodrop | parse field=clientUser "<OS_User>*</OS_User>" as clientUser nodrop
| parse XML field=auditrecord "/AuditRecord/Userhost" as Userhost nodrop | parse field=Userhost "<Userhost>*</Userhost>" as Userhost nodrop
| parse XML field=auditrecord "/AuditRecord/Sql_Text" as Sql_Text nodrop | parse field=Sql_Text "<Sql_Text>*</Sql_Text>" as Sql_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Action" as Action nodrop | parse field=Action "<Action>*</Action>" as Action nodrop
| parse XML field=auditrecord "/AuditRecord/Returncode" as status nodrop | parse field=status "<Returncode>*</Returncode>" as status nodrop
| parse XML field=auditrecord "/AuditRecord/Comment_Text" as Comment_Text nodrop | parse field=Comment_Text "<Comment_Text>*</Comment_Text>" as Comment_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Priv_Used" as privilege nodrop | parse field=privilege "<Priv_Used>*</Priv_Used>" as privilege nodrop
| parse XML field=auditrecord "/AuditRecord/Terminal" as clientTerminal nodrop | parse field=clientTerminal "<Terminal>*</Terminal>" as clientTerminal nodrop
| parse field=Comment_Text "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
```

**Oracle - OpenTelemetry/Oracle - XML Audit Log - Logon Analysis/Failed Logons**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "<AuditRecord>" "<Action>100</Action>" !"<Returncode>0</Returncode>"
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<auditrecord>\<AuditRecord\>[\s\S]+?</AuditRecord>)" nodrop
| parse XML field=auditrecord "/AuditRecord/Audit_Type" as Audit_Type nodrop | parse field=Audit_Type "<Audit_Type>*</Audit_Type>" as Audit_Type nodrop
| parse XML field=auditrecord "/AuditRecord/Session_Id" as Session_Id nodrop | parse field=Session_Id "<Session_Id>*</Session_Id>" as Session_Id nodrop
| parse XML field=auditrecord "/AuditRecord/DB_User" as databaseUser nodrop | parse field=databaseUser "<DB_User>*</DB_User>" as databaseUser nodrop
| parse XML field=auditrecord "/AuditRecord/OS_User" as clientUser nodrop | parse field=clientUser "<OS_User>*</OS_User>" as clientUser nodrop
| parse XML field=auditrecord "/AuditRecord/Userhost" as Userhost nodrop | parse field=Userhost "<Userhost>*</Userhost>" as Userhost nodrop
| parse XML field=auditrecord "/AuditRecord/Sql_Text" as Sql_Text nodrop | parse field=Sql_Text "<Sql_Text>*</Sql_Text>" as Sql_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Action" as Action nodrop | parse field=Action "<Action>*</Action>" as Action nodrop
| parse XML field=auditrecord "/AuditRecord/Returncode" as status nodrop | parse field=status "<Returncode>*</Returncode>" as status nodrop
| parse XML field=auditrecord "/AuditRecord/Comment_Text" as Comment_Text nodrop | parse field=Comment_Text "<Comment_Text>*</Comment_Text>" as Comment_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Priv_Used" as privilege nodrop | parse field=privilege "<Priv_Used>*</Priv_Used>" as privilege nodrop
| parse XML field=auditrecord "/AuditRecord/Terminal" as clientTerminal nodrop | parse field=clientTerminal "<Terminal>*</Terminal>" as clientTerminal nodrop
| parse field=Comment_Text "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
```

**Oracle - OpenTelemetry/Oracle - XML Audit Log - Logon Analysis/Logon Activities Trend**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "<AuditRecord>" ("<Action>100</Action>" or "<Action>101</Action>" or "<Action>102</Action>")
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<auditrecord>\<AuditRecord\>[\s\S]+?</AuditRecord>)" nodrop
| parse XML field=auditrecord "/AuditRecord/Audit_Type" as Audit_Type nodrop | parse field=Audit_Type "<Audit_Type>*</Audit_Type>" as Audit_Type nodrop
| parse XML field=auditrecord "/AuditRecord/Session_Id" as Session_Id nodrop | parse field=Session_Id "<Session_Id>*</Session_Id>" as Session_Id nodrop
| parse XML field=auditrecord "/AuditRecord/DB_User" as databaseUser nodrop | parse field=databaseUser "<DB_User>*</DB_User>" as databaseUser nodrop
| parse XML field=auditrecord "/AuditRecord/OS_User" as clientUser nodrop | parse field=clientUser "<OS_User>*</OS_User>" as clientUser nodrop
| parse XML field=auditrecord "/AuditRecord/Userhost" as Userhost nodrop | parse field=Userhost "<Userhost>*</Userhost>" as Userhost nodrop
| parse XML field=auditrecord "/AuditRecord/Sql_Text" as Sql_Text nodrop | parse field=Sql_Text "<Sql_Text>*</Sql_Text>" as Sql_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Action" as Action nodrop | parse field=Action "<Action>*</Action>" as Action nodrop
| parse XML field=auditrecord "/AuditRecord/Returncode" as status nodrop | parse field=status "<Returncode>*</Returncode>" as status nodrop
| parse XML field=auditrecord "/AuditRecord/Comment_Text" as Comment_Text nodrop | parse field=Comment_Text "<Comment_Text>*</Comment_Text>" as Comment_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Priv_Used" as privilege nodrop | parse field=privilege "<Priv_Used>*</Priv_Used>" as privilege nodrop
| parse XML field=auditrecord "/AuditRecord/Terminal" as clientTerminal nodrop | parse field=clientTerminal "<Terminal>*</Terminal>" as clientTerminal nodrop
| parse field=Comment_Text "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
| parse field=Comment_Text "DBLINK_INFO: (SOURCE_GLOBAL_NAME=*, DBLINK_NAME=*, SOURCE_AUDIT_SESSIONID=*" as SOURCE_GLOBAL_NAME, DBLINK_NAME, SOURCE_AUDIT_SESSIONID nodrop
```

**Oracle - OpenTelemetry/Oracle - XML Audit Log - Logon Analysis/Multiple Client User Logons From Same UserHost**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "<AuditRecord>" "<Action>100</Action>" "<Returncode>0</Returncode>"
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<auditrecord>\<AuditRecord\>[\s\S]+?</AuditRecord>)" nodrop
| parse XML field=auditrecord "/AuditRecord/Audit_Type" as Audit_Type nodrop | parse field=Audit_Type "<Audit_Type>*</Audit_Type>" as Audit_Type nodrop
| parse XML field=auditrecord "/AuditRecord/Session_Id" as Session_Id nodrop | parse field=Session_Id "<Session_Id>*</Session_Id>" as Session_Id nodrop
| parse XML field=auditrecord "/AuditRecord/DB_User" as databaseUser nodrop | parse field=databaseUser "<DB_User>*</DB_User>" as databaseUser nodrop
| parse XML field=auditrecord "/AuditRecord/OS_User" as clientUser nodrop | parse field=clientUser "<OS_User>*</OS_User>" as clientUser nodrop
| parse XML field=auditrecord "/AuditRecord/Userhost" as userHost nodrop | parse field=userHost "<Userhost>*</Userhost>" as userHost nodrop
| parse XML field=auditrecord "/AuditRecord/Sql_Text" as Sql_Text nodrop | parse field=Sql_Text "<Sql_Text>*</Sql_Text>" as Sql_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Action" as Action nodrop | parse field=Action "<Action>*</Action>" as Action nodrop
| parse XML field=auditrecord "/AuditRecord/Returncode" as status nodrop | parse field=status "<Returncode>*</Returncode>" as status nodrop
| parse XML field=auditrecord "/AuditRecord/Comment_Text" as Comment_Text nodrop | parse field=Comment_Text "<Comment_Text>*</Comment_Text>" as Comment_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Priv_Used" as privilege nodrop | parse field=privilege "<Priv_Used>*</Priv_Used>" as privilege nodrop
| parse XML field=auditrecord "/AuditRecord/Terminal" as clientTerminal nodrop | parse field=clientTerminal "<Terminal>*</Terminal>" as clientTerminal nodrop
| parse field=Comment_Text "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
```

**Oracle - OpenTelemetry/Oracle - XML Audit Log - Logon Analysis/Multiple Database User Logons From Same UserHost**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "<AuditRecord>" "<Action>100</Action>" "<Returncode>0</Returncode>"
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<auditrecord>\<AuditRecord\>[\s\S]+?</AuditRecord>)" nodrop
| parse XML field=auditrecord "/AuditRecord/Audit_Type" as Audit_Type nodrop | parse field=Audit_Type "<Audit_Type>*</Audit_Type>" as Audit_Type nodrop
| parse XML field=auditrecord "/AuditRecord/Session_Id" as Session_Id nodrop | parse field=Session_Id "<Session_Id>*</Session_Id>" as Session_Id nodrop
| parse XML field=auditrecord "/AuditRecord/DB_User" as databaseUser nodrop | parse field=databaseUser "<DB_User>*</DB_User>" as databaseUser nodrop
| parse XML field=auditrecord "/AuditRecord/OS_User" as clientUser nodrop | parse field=clientUser "<OS_User>*</OS_User>" as clientUser nodrop
| parse XML field=auditrecord "/AuditRecord/Userhost" as userHost nodrop | parse field=userHost "<Userhost>*</Userhost>" as userHost nodrop
| parse XML field=auditrecord "/AuditRecord/Sql_Text" as Sql_Text nodrop | parse field=Sql_Text "<Sql_Text>*</Sql_Text>" as Sql_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Action" as Action nodrop | parse field=Action "<Action>*</Action>" as Action nodrop
| parse XML field=auditrecord "/AuditRecord/Returncode" as status nodrop | parse field=status "<Returncode>*</Returncode>" as status nodrop
| parse XML field=auditrecord "/AuditRecord/Comment_Text" as Comment_Text nodrop | parse field=Comment_Text "<Comment_Text>*</Comment_Text>" as Comment_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Priv_Used" as privilege nodrop | parse field=privilege "<Priv_Used>*</Priv_Used>" as privilege nodrop
| parse XML field=auditrecord "/AuditRecord/Terminal" as clientTerminal nodrop | parse field=clientTerminal "<Terminal>*</Terminal>" as clientTerminal nodrop
| parse field=Comment_Text "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
```

**Oracle - OpenTelemetry/Oracle - XML Audit Log - Logon Analysis/Multiple UserHosts Logons with Same Database User**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "<AuditRecord>" "<Action>100</Action>" "<Returncode>0</Returncode>"
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<auditrecord>\<AuditRecord\>[\s\S]+?</AuditRecord>)" nodrop
| parse XML field=auditrecord "/AuditRecord/Audit_Type" as Audit_Type nodrop | parse field=Audit_Type "<Audit_Type>*</Audit_Type>" as Audit_Type nodrop
| parse XML field=auditrecord "/AuditRecord/Session_Id" as Session_Id nodrop | parse field=Session_Id "<Session_Id>*</Session_Id>" as Session_Id nodrop
| parse XML field=auditrecord "/AuditRecord/DB_User" as databaseUser nodrop | parse field=databaseUser "<DB_User>*</DB_User>" as databaseUser nodrop
| parse XML field=auditrecord "/AuditRecord/OS_User" as clientUser nodrop | parse field=clientUser "<OS_User>*</OS_User>" as clientUser nodrop
| parse XML field=auditrecord "/AuditRecord/Userhost" as userHost nodrop | parse field=userHost "<Userhost>*</Userhost>" as userHost nodrop
| parse XML field=auditrecord "/AuditRecord/Sql_Text" as Sql_Text nodrop | parse field=Sql_Text "<Sql_Text>*</Sql_Text>" as Sql_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Action" as Action nodrop | parse field=Action "<Action>*</Action>" as Action nodrop
| parse XML field=auditrecord "/AuditRecord/Returncode" as status nodrop | parse field=status "<Returncode>*</Returncode>" as status nodrop
| parse XML field=auditrecord "/AuditRecord/Comment_Text" as Comment_Text nodrop | parse field=Comment_Text "<Comment_Text>*</Comment_Text>" as Comment_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Priv_Used" as privilege nodrop | parse field=privilege "<Priv_Used>*</Priv_Used>" as privilege nodrop
| parse XML field=auditrecord "/AuditRecord/Terminal" as clientTerminal nodrop | parse field=clientTerminal "<Terminal>*</Terminal>" as clientTerminal nodrop
| parse field=Comment_Text "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
```

**Oracle - OpenTelemetry/Oracle - XML Audit Log - Logon Analysis/Successful Logoffs**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "<AuditRecord>" ("<Action>101</Action>" or "<Action>102</Action>") "<Returncode>0</Returncode>" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<auditrecord>\<AuditRecord\>[\s\S]+?</AuditRecord>)" nodrop
| parse XML field=auditrecord "/AuditRecord/Audit_Type" as Audit_Type nodrop | parse field=Audit_Type "<Audit_Type>*</Audit_Type>" as Audit_Type nodrop
| parse XML field=auditrecord "/AuditRecord/Session_Id" as Session_Id nodrop | parse field=Session_Id "<Session_Id>*</Session_Id>" as Session_Id nodrop
| parse XML field=auditrecord "/AuditRecord/DB_User" as databaseUser nodrop | parse field=databaseUser "<DB_User>*</DB_User>" as databaseUser nodrop
| parse XML field=auditrecord "/AuditRecord/OS_User" as clientUser nodrop | parse field=clientUser "<OS_User>*</OS_User>" as clientUser nodrop
| parse XML field=auditrecord "/AuditRecord/Userhost" as Userhost nodrop | parse field=Userhost "<Userhost>*</Userhost>" as Userhost nodrop
| parse XML field=auditrecord "/AuditRecord/Sql_Text" as Sql_Text nodrop | parse field=Sql_Text "<Sql_Text>*</Sql_Text>" as Sql_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Action" as Action nodrop | parse field=Action "<Action>*</Action>" as Action nodrop
| parse XML field=auditrecord "/AuditRecord/Returncode" as status nodrop | parse field=status "<Returncode>*</Returncode>" as status nodrop
| parse XML field=auditrecord "/AuditRecord/Comment_Text" as Comment_Text nodrop | parse field=Comment_Text "<Comment_Text>*</Comment_Text>" as Comment_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Priv_Used" as privilege nodrop | parse field=privilege "<Priv_Used>*</Priv_Used>" as privilege nodrop
| parse XML field=auditrecord "/AuditRecord/Terminal" as clientTerminal nodrop | parse field=clientTerminal "<Terminal>*</Terminal>" as clientTerminal nodrop
| parse field=Comment_Text "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
| parse field=Comment_Text "DBLINK_INFO: (SOURCE_GLOBAL_NAME=*, DBLINK_NAME=*, SOURCE_AUDIT_SESSIONID=*" as SOURCE_GLOBAL_NAME, DBLINK_NAME, SOURCE_AUDIT_SESSIONID nodrop
```

**Oracle - OpenTelemetry/Oracle - XML Audit Log - Logon Analysis/Successful Logons**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "<AuditRecord>" "<Action>100</Action>" "<Returncode>0</Returncode>" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<auditrecord>\<AuditRecord\>[\s\S]+?</AuditRecord>)" nodrop
| parse XML field=auditrecord "/AuditRecord/Audit_Type" as Audit_Type nodrop | parse field=Audit_Type "<Audit_Type>*</Audit_Type>" as Audit_Type nodrop
| parse XML field=auditrecord "/AuditRecord/Session_Id" as Session_Id nodrop | parse field=Session_Id "<Session_Id>*</Session_Id>" as Session_Id nodrop
| parse XML field=auditrecord "/AuditRecord/DB_User" as databaseUser nodrop | parse field=databaseUser "<DB_User>*</DB_User>" as databaseUser nodrop
| parse XML field=auditrecord "/AuditRecord/OS_User" as clientUser nodrop | parse field=clientUser "<OS_User>*</OS_User>" as clientUser nodrop
| parse XML field=auditrecord "/AuditRecord/Userhost" as Userhost nodrop | parse field=Userhost "<Userhost>*</Userhost>" as Userhost nodrop
| parse XML field=auditrecord "/AuditRecord/Sql_Text" as Sql_Text nodrop | parse field=Sql_Text "<Sql_Text>*</Sql_Text>" as Sql_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Action" as Action nodrop | parse field=Action "<Action>*</Action>" as Action nodrop
| parse XML field=auditrecord "/AuditRecord/Returncode" as status nodrop | parse field=status "<Returncode>*</Returncode>" as status nodrop
| parse XML field=auditrecord "/AuditRecord/Comment_Text" as Comment_Text nodrop | parse field=Comment_Text "<Comment_Text>*</Comment_Text>" as Comment_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Priv_Used" as privilege nodrop | parse field=privilege "<Priv_Used>*</Priv_Used>" as privilege nodrop
| parse XML field=auditrecord "/AuditRecord/Terminal" as clientTerminal nodrop | parse field=clientTerminal "<Terminal>*</Terminal>" as clientTerminal nodrop
| parse field=Comment_Text "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
```

**Oracle - OpenTelemetry/Oracle - XML Audit Log - SQL Statement Analysis/DDL Activity Trend**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "<AuditRecord>" ("<Action>1</Action>" or "<Action>12</Action>" or "<Action>15</Action>" or "<Action>62</Action>" or "<Action>85</Action>" or "<Action>21</Action>" or "<Action>22</Action>" or "<Action>9</Action>" or "<Action>10</Action>" or "<Action>11</Action>" or "<Action>13</Action>" or "<Action>14</Action>" or "<Action>16</Action>" or "<Action>19</Action>" or "<Action>20</Action>" or "<Action>18</Action>" or "<Action>109</Action>" or "<Action>115</Action>" or "<Action>17</Action>" or "<Action>108</Action>" or "<Action>114</Action>" or "<Action>28</Action>" or "<Action>29</Action>" or "<Action>117</Action>" or "<Action>63</Action>" or "<Action>64</Action>" or "<Action>5</Action>" or "<Action>30</Action>" or "<Action>104</Action>" or "<Action>106</Action>" or "<Action>31</Action>" or "<Action>105</Action>" or "<Action>107</Action>")
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<auditrecord>\<AuditRecord\>[\s\S]+?</AuditRecord>)"
| parse XML field=auditrecord "/AuditRecord/Audit_Type" as Audit_Type nodrop | parse field=Audit_Type "<Audit_Type>*</Audit_Type>" as Audit_Type nodrop
| parse XML field=auditrecord "/AuditRecord/Session_Id" as Session_Id nodrop | parse field=Session_Id "<Session_Id>*</Session_Id>" as Session_Id nodrop
| parse XML field=auditrecord "/AuditRecord/DB_User" as databaseUser nodrop | parse field=databaseUser "<DB_User>*</DB_User>" as databaseUser nodrop
| parse XML field=auditrecord "/AuditRecord/OS_User" as clientUser nodrop | parse field=clientUser "<OS_User>*</OS_User>" as clientUser nodrop
| parse XML field=auditrecord "/AuditRecord/Userhost" as Userhost nodrop | parse field=Userhost "<Userhost>*</Userhost>" as Userhost nodrop
| parse XML field=auditrecord "/AuditRecord/Sql_Text" as Sql_Text nodrop | parse field=Sql_Text "<Sql_Text>*</Sql_Text>" as Sql_Text nodrop | parse regex field=Sql_Text "\s+(?<Sql_Text>.*)" nodrop
| parse XML field=auditrecord "/AuditRecord/Action" as Action nodrop | parse field=Action "<Action>*</Action>" as Action nodrop
| parse XML field=auditrecord "/AuditRecord/Returncode" as status nodrop | parse field=status "<Returncode>*</Returncode>" as status nodrop
| parse XML field=auditrecord "/AuditRecord/Comment_Text" as Comment_Text nodrop | parse field=Comment_Text "<Comment_Text>*</Comment_Text>" as Comment_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Priv_Used" as privilege nodrop | parse field=privilege "<Priv_Used>*</Priv_Used>" as privilege nodrop
| parse XML field=auditrecord "/AuditRecord/Terminal" as clientTerminal nodrop | parse field=clientTerminal "<Terminal>*</Terminal>" as clientTerminal nodrop
| parse field=Comment_Text "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Name" as Object_Name nodrop | parse field=Object_Name "<Object_Name>*</Object_Name>" as Object_Name nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Schema" as Object_Schema nodrop | parse field=Object_Schema "<Object_Schema>*</Object_Schema>" as Object_Schema nodrop
```

**Oracle - OpenTelemetry/Oracle - XML Audit Log - SQL Statement Analysis/DML Activity Trend**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "<AuditRecord>" ("<Action>2</Action>" or "<Action>3</Action>" or "<Action>6</Action>" or "<Action>7</Action>" or "<Action>50</Action>" or "<Action>170</Action>" or "<Action>26</Action>")
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<auditrecord>\<AuditRecord\>[\s\S]+?</AuditRecord>)"
| parse XML field=auditrecord "/AuditRecord/Audit_Type" as Audit_Type nodrop | parse field=Audit_Type "<Audit_Type>*</Audit_Type>" as Audit_Type nodrop
| parse XML field=auditrecord "/AuditRecord/Session_Id" as Session_Id nodrop | parse field=Session_Id "<Session_Id>*</Session_Id>" as Session_Id nodrop
| parse XML field=auditrecord "/AuditRecord/DB_User" as databaseUser nodrop | parse field=databaseUser "<DB_User>*</DB_User>" as databaseUser nodrop
| parse XML field=auditrecord "/AuditRecord/OS_User" as clientUser nodrop | parse field=clientUser "<OS_User>*</OS_User>" as clientUser nodrop
| parse XML field=auditrecord "/AuditRecord/Userhost" as Userhost nodrop | parse field=Userhost "<Userhost>*</Userhost>" as Userhost nodrop
| parse XML field=auditrecord "/AuditRecord/Sql_Text" as Sql_Text nodrop | parse field=Sql_Text "<Sql_Text>*</Sql_Text>" as Sql_Text nodrop | parse regex field=Sql_Text "\s+(?<Sql_Text>.*)" nodrop
| parse XML field=auditrecord "/AuditRecord/Action" as Action nodrop | parse field=Action "<Action>*</Action>" as Action nodrop
| parse XML field=auditrecord "/AuditRecord/Returncode" as status nodrop | parse field=status "<Returncode>*</Returncode>" as status nodrop
| parse XML field=auditrecord "/AuditRecord/Comment_Text" as Comment_Text nodrop | parse field=Comment_Text "<Comment_Text>*</Comment_Text>" as Comment_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Priv_Used" as privilege nodrop | parse field=privilege "<Priv_Used>*</Priv_Used>" as privilege nodrop
| parse XML field=auditrecord "/AuditRecord/Terminal" as clientTerminal nodrop | parse field=clientTerminal "<Terminal>*</Terminal>" as clientTerminal nodrop
| parse field=Comment_Text "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Name" as Object_Name nodrop | parse field=Object_Name "<Object_Name>*</Object_Name>" as Object_Name nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Schema" as Object_Schema nodrop | parse field=Object_Schema "<Object_Schema>*</Object_Schema>" as Object_Schema nodrop
```

**Oracle - OpenTelemetry/Oracle - XML Audit Log - SQL Statement Analysis/Last 10 Recent DDL Activities**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "<AuditRecord>" ("<Action>1</Action>" or "<Action>12</Action>" or "<Action>15</Action>" or "<Action>62</Action>" or "<Action>85</Action>" or "<Action>21</Action>" or "<Action>22</Action>" or "<Action>9</Action>" or "<Action>10</Action>" or "<Action>11</Action>" or "<Action>13</Action>" or "<Action>14</Action>" or "<Action>16</Action>" or "<Action>19</Action>" or "<Action>20</Action>" or "<Action>18</Action>" or "<Action>109</Action>" or "<Action>115</Action>" or "<Action>17</Action>" or "<Action>108</Action>" or "<Action>114</Action>" or "<Action>28</Action>" or "<Action>29</Action>" or "<Action>117</Action>" or "<Action>63</Action>" or "<Action>64</Action>" or "<Action>5</Action>" or "<Action>30</Action>" or "<Action>104</Action>" or "<Action>106</Action>" or "<Action>31</Action>" or "<Action>105</Action>" or "<Action>107</Action>")
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<auditrecord>\<AuditRecord\>[\s\S]+?</AuditRecord>)"
| parse XML field=auditrecord "/AuditRecord/Audit_Type" as Audit_Type nodrop | parse field=Audit_Type "<Audit_Type>*</Audit_Type>" as Audit_Type nodrop
| parse XML field=auditrecord "/AuditRecord/Session_Id" as Session_Id nodrop | parse field=Session_Id "<Session_Id>*</Session_Id>" as Session_Id nodrop
| parse XML field=auditrecord "/AuditRecord/DB_User" as databaseUser nodrop | parse field=databaseUser "<DB_User>*</DB_User>" as databaseUser nodrop
| parse XML field=auditrecord "/AuditRecord/OS_User" as clientUser nodrop | parse field=clientUser "<OS_User>*</OS_User>" as clientUser nodrop
| parse XML field=auditrecord "/AuditRecord/Userhost" as Userhost nodrop | parse field=Userhost "<Userhost>*</Userhost>" as Userhost nodrop
| parse XML field=auditrecord "/AuditRecord/Sql_Text" as Sql_Text nodrop | parse field=Sql_Text "<Sql_Text>*</Sql_Text>" as Sql_Text nodrop | parse regex field=Sql_Text "\s+(?<Sql_Text>.*)" nodrop
| parse XML field=auditrecord "/AuditRecord/Action" as Action nodrop | parse field=Action "<Action>*</Action>" as Action nodrop
| parse XML field=auditrecord "/AuditRecord/Returncode" as status nodrop | parse field=status "<Returncode>*</Returncode>" as status nodrop
| parse XML field=auditrecord "/AuditRecord/Comment_Text" as Comment_Text nodrop | parse field=Comment_Text "<Comment_Text>*</Comment_Text>" as Comment_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Priv_Used" as privilege nodrop | parse field=privilege "<Priv_Used>*</Priv_Used>" as privilege nodrop
| parse XML field=auditrecord "/AuditRecord/Terminal" as clientTerminal nodrop | parse field=clientTerminal "<Terminal>*</Terminal>" as clientTerminal nodrop
| parse field=Comment_Text "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Name" as Object_Name nodrop | parse field=Object_Name "<Object_Name>*</Object_Name>" as Object_Name nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Schema" as Object_Schema nodrop | parse field=Object_Schema "<Object_Schema>*</Object_Schema>" as Object_Schema nodrop
```

**Oracle - OpenTelemetry/Oracle - XML Audit Log - SQL Statement Analysis/Last 10 Recent DML Activities**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "<AuditRecord>" ("<Action>2</Action>" or "<Action>3</Action>" or "<Action>6</Action>" or "<Action>7</Action>" or "<Action>50</Action>" or "<Action>170</Action>" or "<Action>26</Action>")
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<auditrecord>\<AuditRecord\>[\s\S]+?</AuditRecord>)"
| parse XML field=auditrecord "/AuditRecord/Audit_Type" as Audit_Type nodrop | parse field=Audit_Type "<Audit_Type>*</Audit_Type>" as Audit_Type nodrop
| parse XML field=auditrecord "/AuditRecord/Session_Id" as Session_Id nodrop | parse field=Session_Id "<Session_Id>*</Session_Id>" as Session_Id nodrop
| parse XML field=auditrecord "/AuditRecord/DB_User" as databaseUser nodrop | parse field=databaseUser "<DB_User>*</DB_User>" as databaseUser nodrop
| parse XML field=auditrecord "/AuditRecord/OS_User" as clientUser nodrop | parse field=clientUser "<OS_User>*</OS_User>" as clientUser nodrop
| parse XML field=auditrecord "/AuditRecord/Userhost" as Userhost nodrop | parse field=Userhost "<Userhost>*</Userhost>" as Userhost nodrop
| parse XML field=auditrecord "/AuditRecord/Sql_Text" as Sql_Text nodrop | parse field=Sql_Text "<Sql_Text>*</Sql_Text>" as Sql_Text nodrop | parse regex field=Sql_Text "\s+(?<Sql_Text>.*)" nodrop
| parse XML field=auditrecord "/AuditRecord/Action" as Action nodrop | parse field=Action "<Action>*</Action>" as Action nodrop
| parse XML field=auditrecord "/AuditRecord/Returncode" as status nodrop | parse field=status "<Returncode>*</Returncode>" as status nodrop
| parse XML field=auditrecord "/AuditRecord/Comment_Text" as Comment_Text nodrop | parse field=Comment_Text "<Comment_Text>*</Comment_Text>" as Comment_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Priv_Used" as privilege nodrop | parse field=privilege "<Priv_Used>*</Priv_Used>" as privilege nodrop
| parse XML field=auditrecord "/AuditRecord/Terminal" as clientTerminal nodrop | parse field=clientTerminal "<Terminal>*</Terminal>" as clientTerminal nodrop
| parse field=Comment_Text "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Name" as Object_Name nodrop | parse field=Object_Name "<Object_Name>*</Object_Name>" as Object_Name nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Schema" as Object_Schema nodrop | parse field=Object_Schema "<Object_Schema>*</Object_Schema>" as Object_Schema nodrop
```

**Oracle - OpenTelemetry/Oracle - XML Audit Log - SQL Statement Analysis/Last 10 Recent Role Management Activities**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "<AuditRecord>" ("<Action>52</Action>" or "<Action>54</Action>" or "<Action>55</Action>" or "<Action>79</Action>")
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<auditrecord>\<AuditRecord\>[\s\S]+?</AuditRecord>)"
| parse XML field=auditrecord "/AuditRecord/Audit_Type" as Audit_Type nodrop | parse field=Audit_Type "<Audit_Type>*</Audit_Type>" as Audit_Type nodrop
| parse XML field=auditrecord "/AuditRecord/Session_Id" as Session_Id nodrop | parse field=Session_Id "<Session_Id>*</Session_Id>" as Session_Id nodrop
| parse XML field=auditrecord "/AuditRecord/DB_User" as databaseUser nodrop | parse field=databaseUser "<DB_User>*</DB_User>" as databaseUser nodrop
| parse XML field=auditrecord "/AuditRecord/OS_User" as clientUser nodrop | parse field=clientUser "<OS_User>*</OS_User>" as clientUser nodrop
| parse XML field=auditrecord "/AuditRecord/Userhost" as Userhost nodrop | parse field=Userhost "<Userhost>*</Userhost>" as Userhost nodrop
| parse XML field=auditrecord "/AuditRecord/Sql_Text" as Sql_Text nodrop | parse field=Sql_Text "<Sql_Text>*</Sql_Text>" as Sql_Text nodrop | parse regex field=Sql_Text "\s+(?<Sql_Text>.*)" nodrop
| parse XML field=auditrecord "/AuditRecord/Action" as Action nodrop | parse field=Action "<Action>*</Action>" as Action nodrop
| parse XML field=auditrecord "/AuditRecord/Returncode" as status nodrop | parse field=status "<Returncode>*</Returncode>" as status nodrop
| parse XML field=auditrecord "/AuditRecord/Comment_Text" as Comment_Text nodrop | parse field=Comment_Text "<Comment_Text>*</Comment_Text>" as Comment_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Priv_Used" as privilege nodrop | parse field=privilege "<Priv_Used>*</Priv_Used>" as privilege nodrop
| parse XML field=auditrecord "/AuditRecord/Terminal" as clientTerminal nodrop | parse field=clientTerminal "<Terminal>*</Terminal>" as clientTerminal nodrop
| parse field=Comment_Text "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Name" as Object_Name nodrop | parse field=Object_Name "<Object_Name>*</Object_Name>" as Object_Name nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Schema" as Object_Schema nodrop | parse field=Object_Schema "<Object_Schema>*</Object_Schema>" as Object_Schema nodrop
```

**Oracle - OpenTelemetry/Oracle - XML Audit Log - SQL Statement Analysis/Last 10 Recent TCL Activities**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "<AuditRecord>" ("<Action>44</Action>" or "<Action>45</Action>" or "<Action>46</Action>" or "<Action>48</Action>")
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<auditrecord>\<AuditRecord\>[\s\S]+?</AuditRecord>)"
| parse XML field=auditrecord "/AuditRecord/Audit_Type" as Audit_Type nodrop | parse field=Audit_Type "<Audit_Type>*</Audit_Type>" as Audit_Type nodrop
| parse XML field=auditrecord "/AuditRecord/Session_Id" as Session_Id nodrop | parse field=Session_Id "<Session_Id>*</Session_Id>" as Session_Id nodrop
| parse XML field=auditrecord "/AuditRecord/DB_User" as databaseUser nodrop | parse field=databaseUser "<DB_User>*</DB_User>" as databaseUser nodrop
| parse XML field=auditrecord "/AuditRecord/OS_User" as clientUser nodrop | parse field=clientUser "<OS_User>*</OS_User>" as clientUser nodrop
| parse XML field=auditrecord "/AuditRecord/Userhost" as Userhost nodrop | parse field=Userhost "<Userhost>*</Userhost>" as Userhost nodrop
| parse XML field=auditrecord "/AuditRecord/Sql_Text" as Sql_Text nodrop | parse field=Sql_Text "<Sql_Text>*</Sql_Text>" as Sql_Text nodrop | parse regex field=Sql_Text "\s+(?<Sql_Text>.*)" nodrop
| parse XML field=auditrecord "/AuditRecord/Action" as Action nodrop | parse field=Action "<Action>*</Action>" as Action nodrop
| parse XML field=auditrecord "/AuditRecord/Returncode" as status nodrop | parse field=status "<Returncode>*</Returncode>" as status nodrop
| parse XML field=auditrecord "/AuditRecord/Comment_Text" as Comment_Text nodrop | parse field=Comment_Text "<Comment_Text>*</Comment_Text>" as Comment_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Priv_Used" as privilege nodrop | parse field=privilege "<Priv_Used>*</Priv_Used>" as privilege nodrop
| parse XML field=auditrecord "/AuditRecord/Terminal" as clientTerminal nodrop | parse field=clientTerminal "<Terminal>*</Terminal>" as clientTerminal nodrop
| parse field=Comment_Text "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Name" as Object_Name nodrop | parse field=Object_Name "<Object_Name>*</Object_Name>" as Object_Name nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Schema" as Object_Schema nodrop | parse field=Object_Schema "<Object_Schema>*</Object_Schema>" as Object_Schema nodrop
```

**Oracle - OpenTelemetry/Oracle - XML Audit Log - SQL Statement Analysis/Last 10 Recent User Management Activities**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "<AuditRecord>" ("<Action>43</Action>" or "<Action>51</Action>" or "<Action>53</Action>")
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<auditrecord>\<AuditRecord\>[\s\S]+?</AuditRecord>)"
| parse XML field=auditrecord "/AuditRecord/Audit_Type" as Audit_Type nodrop | parse field=Audit_Type "<Audit_Type>*</Audit_Type>" as Audit_Type nodrop
| parse XML field=auditrecord "/AuditRecord/Session_Id" as Session_Id nodrop | parse field=Session_Id "<Session_Id>*</Session_Id>" as Session_Id nodrop
| parse XML field=auditrecord "/AuditRecord/DB_User" as databaseUser nodrop | parse field=databaseUser "<DB_User>*</DB_User>" as databaseUser nodrop
| parse XML field=auditrecord "/AuditRecord/OS_User" as clientUser nodrop | parse field=clientUser "<OS_User>*</OS_User>" as clientUser nodrop
| parse XML field=auditrecord "/AuditRecord/Userhost" as Userhost nodrop | parse field=Userhost "<Userhost>*</Userhost>" as Userhost nodrop
| parse XML field=auditrecord "/AuditRecord/Sql_Text" as Sql_Text nodrop | parse field=Sql_Text "<Sql_Text>*</Sql_Text>" as Sql_Text nodrop | parse regex field=Sql_Text "\s+(?<Sql_Text>.*)" nodrop
| parse XML field=auditrecord "/AuditRecord/Action" as Action nodrop | parse field=Action "<Action>*</Action>" as Action nodrop
| parse XML field=auditrecord "/AuditRecord/Returncode" as status nodrop | parse field=status "<Returncode>*</Returncode>" as status nodrop
| parse XML field=auditrecord "/AuditRecord/Comment_Text" as Comment_Text nodrop | parse field=Comment_Text "<Comment_Text>*</Comment_Text>" as Comment_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Priv_Used" as privilege nodrop | parse field=privilege "<Priv_Used>*</Priv_Used>" as privilege nodrop
| parse XML field=auditrecord "/AuditRecord/Terminal" as clientTerminal nodrop | parse field=clientTerminal "<Terminal>*</Terminal>" as clientTerminal nodrop
| parse field=Comment_Text "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Name" as Object_Name nodrop | parse field=Object_Name "<Object_Name>*</Object_Name>" as Object_Name nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Schema" as Object_Schema nodrop | parse field=Object_Schema "<Object_Schema>*</Object_Schema>" as Object_Schema nodrop
```

**Oracle - OpenTelemetry/Oracle - XML Audit Log - SQL Statement Analysis/Role Management Activity Trend**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "<AuditRecord>" ("<Action>52</Action>" or "<Action>54</Action>" or "<Action>55</Action>" or "<Action>79</Action>")
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<auditrecord>\<AuditRecord\>[\s\S]+?</AuditRecord>)"
| parse XML field=auditrecord "/AuditRecord/Audit_Type" as Audit_Type nodrop | parse field=Audit_Type "<Audit_Type>*</Audit_Type>" as Audit_Type nodrop
| parse XML field=auditrecord "/AuditRecord/Session_Id" as Session_Id nodrop | parse field=Session_Id "<Session_Id>*</Session_Id>" as Session_Id nodrop
| parse XML field=auditrecord "/AuditRecord/DB_User" as databaseUser nodrop | parse field=databaseUser "<DB_User>*</DB_User>" as databaseUser nodrop
| parse XML field=auditrecord "/AuditRecord/OS_User" as clientUser nodrop | parse field=clientUser "<OS_User>*</OS_User>" as clientUser nodrop
| parse XML field=auditrecord "/AuditRecord/Userhost" as Userhost nodrop | parse field=Userhost "<Userhost>*</Userhost>" as Userhost nodrop
| parse XML field=auditrecord "/AuditRecord/Sql_Text" as Sql_Text nodrop | parse field=Sql_Text "<Sql_Text>*</Sql_Text>" as Sql_Text nodrop | parse regex field=Sql_Text "\s+(?<Sql_Text>.*)" nodrop
| parse XML field=auditrecord "/AuditRecord/Action" as Action nodrop | parse field=Action "<Action>*</Action>" as Action nodrop
| parse XML field=auditrecord "/AuditRecord/Returncode" as status nodrop | parse field=status "<Returncode>*</Returncode>" as status nodrop
| parse XML field=auditrecord "/AuditRecord/Comment_Text" as Comment_Text nodrop | parse field=Comment_Text "<Comment_Text>*</Comment_Text>" as Comment_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Priv_Used" as privilege nodrop | parse field=privilege "<Priv_Used>*</Priv_Used>" as privilege nodrop
| parse XML field=auditrecord "/AuditRecord/Terminal" as clientTerminal nodrop | parse field=clientTerminal "<Terminal>*</Terminal>" as clientTerminal nodrop
| parse field=Comment_Text "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Name" as Object_Name nodrop | parse field=Object_Name "<Object_Name>*</Object_Name>" as Object_Name nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Schema" as Object_Schema nodrop | parse field=Object_Schema "<Object_Schema>*</Object_Schema>" as Object_Schema nodrop
```

**Oracle - OpenTelemetry/Oracle - XML Audit Log - SQL Statement Analysis/TCL Activity Trend**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "<AuditRecord>" ("<Action>44</Action>" or "<Action>45</Action>" or "<Action>46</Action>" or "<Action>48</Action>")
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<auditrecord>\<AuditRecord\>[\s\S]+?</AuditRecord>)"
| parse XML field=auditrecord "/AuditRecord/Audit_Type" as Audit_Type nodrop | parse field=Audit_Type "<Audit_Type>*</Audit_Type>" as Audit_Type nodrop
| parse XML field=auditrecord "/AuditRecord/Session_Id" as Session_Id nodrop | parse field=Session_Id "<Session_Id>*</Session_Id>" as Session_Id nodrop
| parse XML field=auditrecord "/AuditRecord/DB_User" as databaseUser nodrop | parse field=databaseUser "<DB_User>*</DB_User>" as databaseUser nodrop
| parse XML field=auditrecord "/AuditRecord/OS_User" as clientUser nodrop | parse field=clientUser "<OS_User>*</OS_User>" as clientUser nodrop
| parse XML field=auditrecord "/AuditRecord/Userhost" as Userhost nodrop | parse field=Userhost "<Userhost>*</Userhost>" as Userhost nodrop
| parse XML field=auditrecord "/AuditRecord/Sql_Text" as Sql_Text nodrop | parse field=Sql_Text "<Sql_Text>*</Sql_Text>" as Sql_Text nodrop | parse regex field=Sql_Text "\s+(?<Sql_Text>.*)" nodrop
| parse XML field=auditrecord "/AuditRecord/Action" as Action nodrop | parse field=Action "<Action>*</Action>" as Action nodrop
| parse XML field=auditrecord "/AuditRecord/Returncode" as status nodrop | parse field=status "<Returncode>*</Returncode>" as status nodrop
| parse XML field=auditrecord "/AuditRecord/Comment_Text" as Comment_Text nodrop | parse field=Comment_Text "<Comment_Text>*</Comment_Text>" as Comment_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Priv_Used" as privilege nodrop | parse field=privilege "<Priv_Used>*</Priv_Used>" as privilege nodrop
| parse XML field=auditrecord "/AuditRecord/Terminal" as clientTerminal nodrop | parse field=clientTerminal "<Terminal>*</Terminal>" as clientTerminal nodrop
| parse field=Comment_Text "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Name" as Object_Name nodrop | parse field=Object_Name "<Object_Name>*</Object_Name>" as Object_Name nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Schema" as Object_Schema nodrop | parse field=Object_Schema "<Object_Schema>*</Object_Schema>" as Object_Schema nodrop
```

**Oracle - OpenTelemetry/Oracle - XML Audit Log - SQL Statement Analysis/User Management Activity Trend**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=oracle "<AuditRecord>" ("<Action>43</Action>" or "<Action>51</Action>" or "<Action>53</Action>")
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as oracle_log_message
| parse regex field=oracle_log_message "(?<auditrecord>\<AuditRecord\>[\s\S]+?</AuditRecord>)"
| parse XML field=auditrecord "/AuditRecord/Audit_Type" as Audit_Type nodrop | parse field=Audit_Type "<Audit_Type>*</Audit_Type>" as Audit_Type nodrop
| parse XML field=auditrecord "/AuditRecord/Session_Id" as Session_Id nodrop | parse field=Session_Id "<Session_Id>*</Session_Id>" as Session_Id nodrop
| parse XML field=auditrecord "/AuditRecord/DB_User" as databaseUser nodrop | parse field=databaseUser "<DB_User>*</DB_User>" as databaseUser nodrop
| parse XML field=auditrecord "/AuditRecord/OS_User" as clientUser nodrop | parse field=clientUser "<OS_User>*</OS_User>" as clientUser nodrop
| parse XML field=auditrecord "/AuditRecord/Userhost" as Userhost nodrop | parse field=Userhost "<Userhost>*</Userhost>" as Userhost nodrop
| parse XML field=auditrecord "/AuditRecord/Sql_Text" as Sql_Text nodrop | parse field=Sql_Text "<Sql_Text>*</Sql_Text>" as Sql_Text nodrop | parse regex field=Sql_Text "\s+(?<Sql_Text>.*)" nodrop
| parse XML field=auditrecord "/AuditRecord/Action" as Action nodrop | parse field=Action "<Action>*</Action>" as Action nodrop
| parse XML field=auditrecord "/AuditRecord/Returncode" as status nodrop | parse field=status "<Returncode>*</Returncode>" as status nodrop
| parse XML field=auditrecord "/AuditRecord/Comment_Text" as Comment_Text nodrop | parse field=Comment_Text "<Comment_Text>*</Comment_Text>" as Comment_Text nodrop
| parse XML field=auditrecord "/AuditRecord/Priv_Used" as privilege nodrop | parse field=privilege "<Priv_Used>*</Priv_Used>" as privilege nodrop
| parse XML field=auditrecord "/AuditRecord/Terminal" as clientTerminal nodrop | parse field=clientTerminal "<Terminal>*</Terminal>" as clientTerminal nodrop
| parse field=Comment_Text "(ADDRESS=(PROTOCOL=*)(HOST=*)(PORT=*))" as clientProtocol, clientHost, clientPort nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Name" as Object_Name nodrop | parse field=Object_Name "<Object_Name>*</Object_Name>" as Object_Name nodrop
| parse XML field=auditrecord "/AuditRecord/Object_Schema" as Object_Schema nodrop | parse field=Object_Schema "<Object_Schema>*</Object_Schema>" as Object_Schema nodrop
```


