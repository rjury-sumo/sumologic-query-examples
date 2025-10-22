# Parsers For MongoDB - OpenTelemetry

**MongoDB - OpenTelemetry/MongoDB - Errors and Warnings/Error Summary - Daily**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Errors and Warnings/Errors**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Errors and Warnings/Errors by Component**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Errors and Warnings/Fatal Errors - Daily**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Errors and Warnings/Fatal Errors by Component**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Errors and Warnings/Log Reduce**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Errors and Warnings/MongoDB Exit Events**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| parse regex field=msg "dbexit:\s+rc:\s+(?<code>[0-9]+)"
| lookup desc  as error_description from https://s3.amazonaws.com/sumologic-app-data/mongo_exit_codes.csv on code=code
```

**MongoDB - OpenTelemetry/MongoDB - Errors and Warnings/Socket Excpetions**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| json field=_raw "attr" as attr
| where attr matches "*error*"
| json field=attr "error.codeName" as codeName
```

**MongoDB - OpenTelemetry/MongoDB - Errors and Warnings/Timeout Events**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Errors and Warnings/Warning Summary - Daily**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Errors and Warnings/Warnings**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Errors and Warnings/Warnings by Component**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Logins and Connections/Client Connection Requests**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where mongodb_component = "NETWORK"
| where msg = "Connection accepted"
| json field=_raw "attr.remote" as template_ip
| parse regex field=template_ip "(?<client_ip>\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}+):[\d]+"
```

**MongoDB - OpenTelemetry/MongoDB - Logins and Connections/Failed Login Attempt Summary**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where msg = "Authentication failed"
| json field=_raw "attr.client" as template_ip
| json field=_raw "attr.principalName" as user
| json field=_raw "attr.authenticationDatabase" as database
| json field=_raw "attr.result" as reason
| parse regex field=template_ip "(?<client_ip>\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}+):[\d]+"
```

**MongoDB - OpenTelemetry/MongoDB - Logins and Connections/Failed Logins by User**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where msg = "Authentication failed"
| json field=_raw "attr.client" as template_ip
| json field=_raw "attr.principalName" as user
| json field=_raw "attr.authenticationDatabase" as database
| json field=_raw "attr.result" as reason
| parse regex field=template_ip "(?<client_ip>\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}+):[\d]+"
```

**MongoDB - OpenTelemetry/MongoDB - Logins and Connections/Location of Client Connection Requests**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}   sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where mongodb_component = "NETWORK"
| where msg = "Connection accepted"
| json field=_raw "attr.remote" as template_ip
| parse regex field=template_ip "(?<client_ip>\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}+):[\d]+"
```

**MongoDB - OpenTelemetry/MongoDB - Logins and Connections/Location of Failed Logins**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}   sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where msg = "Authentication failed"
| json field=_raw "attr.client" as template_ip
| json field=_raw "attr.principalName" as user
| json field=_raw "attr.authenticationDatabase" as database
| json field=_raw "attr.result" as reason
| parse regex field=template_ip "(?<client_ip>\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}+):[\d]+"
```

**MongoDB - OpenTelemetry/MongoDB - Overview/CRUD Commands Over Time**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where mongodb_component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.command" as command
| replace (command,"{","") as command
| replace (command,"}","") as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
```

**MongoDB - OpenTelemetry/MongoDB - Overview/Error Logs by Component**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Overview/Error Logs by Context**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Overview/Logs by  Components**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Overview/Logs by Severity**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Overview/Slow CRUD Commands**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where mongodb_component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.command" as command
| replace (command,"{","") as command
| replace (command,"}","") as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
| where db_cmd matches "*find*" or db_cmd matches "*insert*" or db_cmd matches "*remove*" or db_cmd matches "*delete*" or db_cmd matches "*update*" or db_cmd matches "*save*" or db_cmd matches "*bulkWrite*"
| json field=_raw "attr.durationMillis" as dur
```

**MongoDB - OpenTelemetry/MongoDB - Overview/Slow CRUD Commands Over Time**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where mongodb_component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.command" as command
| replace (command,"{","") as command
| replace (command,"}","") as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
| where db_cmd matches "*find*" or db_cmd matches "*insert*" or db_cmd matches "*remove*" or db_cmd matches "*delete*" or db_cmd matches "*update*" or db_cmd matches "*save*" or db_cmd matches "*bulkWrite*"
| json field=_raw "attr.durationMillis" as dur
```

**MongoDB - OpenTelemetry/MongoDB - Overview/Slow DB Commands**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where mongodb_component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.durationMillis" as dur
```

**MongoDB - OpenTelemetry/MongoDB - Overview/Slow DB Commands Over Time**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where mongodb_component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.durationMillis" as dur
```

**MongoDB - OpenTelemetry/MongoDB - Overview/Slow Server Status**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Overview/Slowest Execution Time (in MS) of  DB  Commands**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where mongodb_component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.command" as command
| replace (command,"{","") as command
| replace (command,"}","") as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
| json field=_raw "attr.durationMillis" as dur
```

**MongoDB - OpenTelemetry/MongoDB - Overview/Stopped Servers**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Overview/Up Servers**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Query Logs/Queries by KeysExamined Value**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where mongodb_component matches "*COMMAND*"
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

**MongoDB - OpenTelemetry/MongoDB - Query Logs/Queries with KeysExamined greater than nreturned**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where mongodb_component matches "*COMMAND*"
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

**MongoDB - OpenTelemetry/MongoDB - Query Logs/Slow Queries**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where mongodb_component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.command" as command
| replace (command,"{","") as command
| replace (command,"}","") as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
| where db_cmd matches "*find*" or db_cmd matches "*insert*" or db_cmd matches "*remove*" or db_cmd matches "*delete*" or db_cmd matches "*update*"
| json field=_raw "attr.durationMillis" as dur
```

**MongoDB - OpenTelemetry/MongoDB - Query Logs/Slow Queries by Connection ID**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where mongodb_component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.command" as command
| replace (command,"{","") as command
| replace (command,"}","") as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
```

**MongoDB - OpenTelemetry/MongoDB - Query Logs/Slow Queries Over Time by Type**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where mongodb_component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.command" as command
| replace (command,"{","") as command
| replace (command,"}","") as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
| where db_cmd matches "*find*" or db_cmd matches "*insert*" or db_cmd matches "*remove*" or db_cmd matches "*delete*" or db_cmd matches "*update*"
| json field=_raw "attr.durationMillis" as dur
```

**MongoDB - OpenTelemetry/MongoDB - Query Logs/Slowest Running Queries by Type**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where mongodb_component matches "*COMMAND*"
| json field=_raw "attr.type" as type
| where type matches "*command*"
| json field=_raw "attr.command" as command
| replace (command,"{","") as command
| replace (command,"}","") as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
| where db_cmd matches "*find*" or db_cmd matches "*insert*" or db_cmd matches "*remove*" or db_cmd matches "*delete*" or db_cmd matches "*update*"
| json field=_raw "attr.durationMillis" as dur
```

**MongoDB - OpenTelemetry/MongoDB - Replication Logs/Arbiter Node(s)**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where mongodb_component matches "*REPL*"
| where msg matches "Member is in new state"
| json field=_raw "attr.hostAndPort" as hostAndPort
| json field=_raw "attr.newState" as state
```

**MongoDB - OpenTelemetry/MongoDB - Replication Logs/Heartbeat Error Events**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where mongodb_component matches "*REPL*"
| json field=_raw "attr.heartbeatMessage" as heartbeatMessage
```

**MongoDB - OpenTelemetry/MongoDB - Replication Logs/Primary Node**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where mongodb_component matches "*REPL*"
| where msg matches "Member is in new state"
| json field=_raw "attr.hostAndPort" as hostAndPort
| json field=_raw "attr.newState" as state
```

**MongoDB - OpenTelemetry/MongoDB - Replication Logs/Replication Error Summary**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Replication Logs/Replication Errors**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Replication Logs/Replication Events**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Replication Logs/Replication Warnings**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Replication Logs/Secondary Node(s)**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| where mongodb_component matches "*REPL*"
| where msg matches "Member is in new state"
| json field=_raw "attr.hostAndPort" as hostAndPort
| json field=_raw "attr.newState" as state
```

**MongoDB - OpenTelemetry/MongoDB - Replication Logs/Secondary Node(s) Too Stale**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Sharding/Balancer Failures**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Sharding/Chunk Split Failures**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Sharding/Chunks Moving Between Shards**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| json field=_raw "attr" as attr
| where attr matches "*moveChunk*"
| json field=_raw "attr.command.toShard" as shards
```

**MongoDB - OpenTelemetry/MongoDB - Sharding/Chunks Moving by Collection**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| json field=_raw "attr" as attr
| where attr matches "*moveChunk*"
| json field=_raw "attr.command.moveChunk" as collection
```

**MongoDB - OpenTelemetry/MongoDB - Sharding/Errors**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Sharding/Summary of Errors**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Sharding/Summary of Warnings**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```

**MongoDB - OpenTelemetry/MongoDB - Sharding/Warnings**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=mongodb | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
```


