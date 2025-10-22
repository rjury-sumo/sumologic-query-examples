# Parsers For MongoDB

**MongoDB/Errors and Warnings/Error Summary - Daily**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Errors and Warnings/Errors**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Errors and Warnings/Errors by Component**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Errors and Warnings/Fatal Errors - Daily**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Errors and Warnings/Fatal Errors by Component**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Errors and Warnings/Log Reduce**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Errors and Warnings/MongoDB Exit Events**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| parse regex field=msg "dbexit:\s+rc:\s+(?<code>[0-9]+)"
| lookup desc  as error_description from https://s3.amazonaws.com/sumologic-app-data/mongo_exit_codes.csv on code=code
```

**MongoDB/Errors and Warnings/Socket Excpetions**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| json field=_raw "attr" as attr
| where attr matches "*error*"
| json field=attr "error.codeName" as codeName
```

**MongoDB/Errors and Warnings/Timeout Events**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Errors and Warnings/Warning Summary - Daily**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Errors and Warnings/Warnings**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Errors and Warnings/Warnings by Component**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Logins and Connections/Client Connection Requests**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where component = "NETWORK"
| where msg = "Connection accepted"
| json field=_raw "attr.remote" as template_ip
| parse regex field=template_ip "(?<client_ip>\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}+):[\d]+"
```

**MongoDB/Logins and Connections/Failed Login Attempt Summary**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where msg = "Authentication failed"
| json field=_raw "attr.client" as template_ip
| json field=_raw "attr.principalName" as user
| json field=_raw "attr.authenticationDatabase" as database
| json field=_raw "attr.result" as reason
| parse regex field=template_ip "(?<client_ip>\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}+):[\d]+"
```

**MongoDB/Logins and Connections/Failed Logins by User**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where msg = "Authentication failed"
| json field=_raw "attr.client" as template_ip
| json field=_raw "attr.principalName" as user
| json field=_raw "attr.authenticationDatabase" as database
| json field=_raw "attr.result" as reason
| parse regex field=template_ip "(?<client_ip>\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}+):[\d]+"
```

**MongoDB/Logins and Connections/Location of Client Connection Requests**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}}  _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where component = "NETWORK"
| where msg = "Connection accepted"
| json field=_raw "attr.remote" as template_ip
| parse regex field=template_ip "(?<client_ip>\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}+):[\d]+"
```

**MongoDB/Logins and Connections/Location of Failed Logins**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}}  db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where msg = "Authentication failed"
| json field=_raw "attr.client" as template_ip
| json field=_raw "attr.principalName" as user
| json field=_raw "attr.authenticationDatabase" as database
| json field=_raw "attr.result" as reason
| parse regex field=template_ip "(?<client_ip>\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}+):[\d]+"
```

**MongoDB/Overview/CRUD Commands Over Time**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.command" as command
| replace (command,"{","") as command
| replace (command,"}","") as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
```

**MongoDB/Overview/Error Logs by Component**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Overview/Error Logs by Context**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Overview/Logs by  Components**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Overview/Logs by Severity**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Overview/Slow CRUD Commands**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.command" as command
| replace (command,"{","") as command
| replace (command,"}","") as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
| where db_cmd matches "*find*" or db_cmd matches "*insert*" or db_cmd matches "*remove*" or db_cmd matches "*delete*" or db_cmd matches "*update*" or db_cmd matches "*save*" or db_cmd matches "*bulkWrite*"
| json field=_raw "attr.durationMillis" as dur
```

**MongoDB/Overview/Slow CRUD Commands Over Time**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.command" as command
| replace (command,"{","") as command
| replace (command,"}","") as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
| where db_cmd matches "*find*" or db_cmd matches "*insert*" or db_cmd matches "*remove*" or db_cmd matches "*delete*" or db_cmd matches "*update*" or db_cmd matches "*save*" or db_cmd matches "*bulkWrite*"
| json field=_raw "attr.durationMillis" as dur
```

**MongoDB/Overview/Slow DB Commands**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.durationMillis" as dur
```

**MongoDB/Overview/Slow DB Commands Over Time**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.durationMillis" as dur
```

**MongoDB/Overview/Slow Server Status**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Overview/Slowest Execution Time (in MS) of  DB  Commands**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.command" as command
| replace (command,"{","") as command
| replace (command,"}","") as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
| json field=_raw "attr.durationMillis" as dur
```

**MongoDB/Overview/Stopped Servers**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Overview/Up Servers**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Query Logs/Queries by KeysExamined Value**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.command" as command
| replace (command,"{","") as command
| replace (command,"}","") as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
|  where db_cmd matches "*find*" or db_cmd matches "*insert*" or db_cmd matches "*remove*" or db_cmd matches "*delete*" or db_cmd matches "*update*"
| json field=_raw "attr.keysExamined" as keysExamined
| json field=_raw "attr.docsExamined" as docsExamined
| json field=_raw "attr.nreturned" as nreturned
| json field=_raw "attr.durationMillis" as dur
```

**MongoDB/Query Logs/Queries with KeysExamined greater than nreturned**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.command" as command
| replace (command,"{","") as command
| replace (command,"}","") as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
|  where db_cmd matches "*find*" or db_cmd matches "*insert*" or db_cmd matches "*remove*" or db_cmd matches "*delete*" or db_cmd matches "*update*"
| json field=_raw "attr.keysExamined" as keysExamined
| json field=_raw "attr.docsExamined" as docsExamined
| json field=_raw "attr.nreturned" as nreturned
| json field=_raw "attr.durationMillis" as dur
```

**MongoDB/Query Logs/Slow Queries**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.command" as command
| replace (command,"{","") as command
| replace (command,"}","") as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
| where db_cmd matches "*find*" or db_cmd matches "*insert*" or db_cmd matches "*remove*" or db_cmd matches "*delete*" or db_cmd matches "*update*"
| json field=_raw "attr.durationMillis" as dur
```

**MongoDB/Query Logs/Slow Queries by Connection ID**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.command" as command
| replace (command,"{","") as command
| replace (command,"}","") as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
```

**MongoDB/Query Logs/Slow Queries Over Time by Type**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.command" as command
| replace (command,"{","") as command
| replace (command,"}","") as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
| where db_cmd matches "*find*" or db_cmd matches "*insert*" or db_cmd matches "*remove*" or db_cmd matches "*delete*" or db_cmd matches "*update*"
| json field=_raw "attr.durationMillis" as dur
```

**MongoDB/Query Logs/Slowest Running Queries by Type**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.command" as command
| replace (command,"{","") as command
| replace (command,"}","") as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
| where db_cmd matches "*find*" or db_cmd matches "*insert*" or db_cmd matches "*remove*" or db_cmd matches "*delete*" or db_cmd matches "*update*"
| json field=_raw "attr.durationMillis" as dur
```

**MongoDB/Replication Logs/Arbiter Node(s)**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where component matches "*REPL*"
| where msg matches "Member is in new state"
| json field=_raw "attr.hostAndPort" as hostAndPort
| json field=_raw "attr.newState" as state
```

**MongoDB/Replication Logs/Heartbeat Error Events**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where component matches "*REPL*"
| json field=_raw "attr.heartbeatMessage" as heartbeatMessage
```

**MongoDB/Replication Logs/Primary Node**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where component matches "*REPL*"
| where msg matches "Member is in new state"
| json field=_raw "attr.hostAndPort" as hostAndPort
| json field=_raw "attr.newState" as state
```

**MongoDB/Replication Logs/Replication Error Summary**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Replication Logs/Replication Errors**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Replication Logs/Replication Events**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Replication Logs/Replication Warnings**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Replication Logs/Secondary Node(s)**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where component matches "*REPL*"
| where msg matches "Member is in new state"
| json field=_raw "attr.hostAndPort" as hostAndPort
| json field=_raw "attr.newState" as state
```

**MongoDB/Replication Logs/Secondary Node(s) Too Stale**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Sharding/Balancer Failures**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Sharding/Chunk Split Failures**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Sharding/Chunks Moving Between Shards**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| json field=_raw "attr" as attr
| where attr matches "*moveChunk*"
| json field=_raw "attr.command.toShard" as shards
```

**MongoDB/Sharding/Chunks Moving by Collection**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| json field=_raw "attr" as attr
| where attr matches "*moveChunk*"
| json field=_raw "attr.command.moveChunk" as collection
```

**MongoDB/Sharding/Errors**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Sharding/Summary of Errors**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Sharding/Summary of Warnings**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB/Sharding/Warnings**
```
_sourceCategory = Labs/MongoDB db_cluster={{db_cluster}} _sourceHost={{host}} db_system=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```


