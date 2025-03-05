# Parsers For MongoDB - OpenTelemetry

## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
 `n```
### Use Cases:
Arbiter Node(s), Balancer Failures, Chunk Split Failures, Chunks Moving Between Shards, Chunks Moving by Collection, Client Connection Requests, CRUD Commands Over Time, Error Logs by Component, Error Logs by Context, Error Summary - Daily, Errors, Errors by Component, Failed Login Attempt Summary, Failed Logins by User, Fatal Errors - Daily, Fatal Errors by Component, Heartbeat Error Events, Location of Client Connection Requests, Location of Failed Logins, Log Reduce, Logs by  Components, Logs by Severity, MongoDB Exit Events, Primary Node, Queries by KeysExamined Value, Queries with KeysExamined greater than nreturned, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Secondary Node(s), Secondary Node(s) Too Stale, Slow CRUD Commands, Slow CRUD Commands Over Time, Slow DB Commands, Slow DB Commands Over Time, Slow Queries, Slow Queries by Connection ID, Slow Queries Over Time by Type, Slow Server Status, Slowest Execution Time (in MS) of  DB  Commands, Slowest Running Queries by Type, Socket Excpetions, Stopped Servers, Summary of Errors, Summary of Warnings, Timeout Events, Up Servers, Warning Summary - Daily, Warnings, Warnings by Component



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| json field=_raw "attr.client" as template_ip
| json field=_raw "attr.principalName" as user
| json field=_raw "attr.authenticationDatabase" as database
| json field=_raw "attr.result" as reason
| parse regex field=template_ip "(?<client_ip>\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}+):[\d]+"
 `n```
### Use Cases:
Error Summary - Daily, Errors, Errors by Component, Failed Login Attempt Summary, Failed Logins by User, Fatal Errors - Daily, Fatal Errors by Component, Location of Client Connection Requests, Location of Failed Logins, Log Reduce, MongoDB Exit Events, Socket Excpetions, Timeout Events, Warning Summary - Daily, Warnings, Warnings by Component



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| json field=_raw "attr.heartbeatMessage" as heartbeatMessage
 `n```
### Use Cases:
Client Connection Requests, CRUD Commands Over Time, Error Logs by Component, Error Logs by Context, Error Summary - Daily, Errors, Errors by Component, Failed Login Attempt Summary, Failed Logins by User, Fatal Errors - Daily, Fatal Errors by Component, Heartbeat Error Events, Location of Client Connection Requests, Location of Failed Logins, Log Reduce, Logs by  Components, Logs by Severity, MongoDB Exit Events, Queries by KeysExamined Value, Queries with KeysExamined greater than nreturned, Replication Errors, Secondary Node(s), Secondary Node(s) Too Stale, Slow CRUD Commands, Slow CRUD Commands Over Time, Slow DB Commands, Slow DB Commands Over Time, Slow Queries, Slow Queries by Connection ID, Slow Queries Over Time by Type, Slow Server Status, Slowest Execution Time (in MS) of  DB  Commands, Slowest Running Queries by Type, Socket Excpetions, Stopped Servers, Timeout Events, Up Servers, Warning Summary - Daily, Warnings, Warnings by Component



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| json field=_raw "attr.hostAndPort" as hostAndPort
| json field=_raw "attr.newState" as state
 `n```
### Use Cases:
Arbiter Node(s), Client Connection Requests, CRUD Commands Over Time, Error Logs by Component, Error Logs by Context, Error Summary - Daily, Errors, Errors by Component, Failed Login Attempt Summary, Failed Logins by User, Fatal Errors - Daily, Fatal Errors by Component, Heartbeat Error Events, Location of Client Connection Requests, Location of Failed Logins, Log Reduce, Logs by  Components, Logs by Severity, MongoDB Exit Events, Primary Node, Queries by KeysExamined Value, Queries with KeysExamined greater than nreturned, Replication Errors, Replication Events, Secondary Node(s), Secondary Node(s) Too Stale, Slow CRUD Commands, Slow CRUD Commands Over Time, Slow DB Commands, Slow DB Commands Over Time, Slow Queries, Slow Queries by Connection ID, Slow Queries Over Time by Type, Slow Server Status, Slowest Execution Time (in MS) of  DB  Commands, Slowest Running Queries by Type, Socket Excpetions, Stopped Servers, Timeout Events, Up Servers, Warning Summary - Daily, Warnings, Warnings by Component



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| json field=_raw "attr.remote" as template_ip
| parse regex field=template_ip "(?<client_ip>\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}+):[\d]+"
 `n```
### Use Cases:
Client Connection Requests, Error Summary - Daily, Errors, Errors by Component, Failed Login Attempt Summary, Failed Logins by User, Fatal Errors - Daily, Fatal Errors by Component, Location of Client Connection Requests, Location of Failed Logins, Log Reduce, MongoDB Exit Events, Socket Excpetions, Timeout Events, Warning Summary - Daily, Warnings, Warnings by Component



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| json field=_raw "attr.type" as type
| json field=_raw "attr.command" as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
 `n```
### Use Cases:
Client Connection Requests, CRUD Commands Over Time, Error Logs by Component, Error Logs by Context, Error Summary - Daily, Errors, Errors by Component, Failed Login Attempt Summary, Failed Logins by User, Fatal Errors - Daily, Fatal Errors by Component, Location of Client Connection Requests, Location of Failed Logins, Log Reduce, Logs by  Components, Logs by Severity, MongoDB Exit Events, Slow CRUD Commands, Slow CRUD Commands Over Time, Slow DB Commands, Slow DB Commands Over Time, Slow Queries by Connection ID, Slow Server Status, Slowest Execution Time (in MS) of  DB  Commands, Socket Excpetions, Stopped Servers, Timeout Events, Up Servers, Warning Summary - Daily, Warnings, Warnings by Component



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| json field=_raw "attr.type" as type
| json field=_raw "attr.command" as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
| json field=_raw "attr.durationMillis" as dur
 `n```
### Use Cases:
Client Connection Requests, CRUD Commands Over Time, Error Logs by Component, Error Logs by Context, Error Summary - Daily, Errors, Errors by Component, Failed Login Attempt Summary, Failed Logins by User, Fatal Errors - Daily, Fatal Errors by Component, Location of Client Connection Requests, Location of Failed Logins, Log Reduce, Logs by  Components, Logs by Severity, MongoDB Exit Events, Queries by KeysExamined Value, Queries with KeysExamined greater than nreturned, Slow CRUD Commands, Slow CRUD Commands Over Time, Slow DB Commands, Slow DB Commands Over Time, Slow Queries, Slow Queries by Connection ID, Slow Queries Over Time by Type, Slow Server Status, Slowest Execution Time (in MS) of  DB  Commands, Slowest Running Queries by Type, Socket Excpetions, Stopped Servers, Timeout Events, Up Servers, Warning Summary - Daily, Warnings, Warnings by Component



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| json field=_raw "attr.type" as type
| json field=_raw "attr.command" as command
| parse regex field=command "(?<db_cmd>[\w\-\.]+):*"
| json field=_raw "attr.keysExamined" as keysExamined
| json field=_raw "attr.docsExamined" as docsExamined
| json field=_raw "attr.nreturned" as nreturned
| json field=_raw "attr.durationMillis" as dur
 `n```
### Use Cases:
Client Connection Requests, CRUD Commands Over Time, Error Logs by Component, Error Logs by Context, Error Summary - Daily, Errors, Errors by Component, Failed Login Attempt Summary, Failed Logins by User, Fatal Errors - Daily, Fatal Errors by Component, Location of Client Connection Requests, Location of Failed Logins, Log Reduce, Logs by  Components, Logs by Severity, MongoDB Exit Events, Queries by KeysExamined Value, Queries with KeysExamined greater than nreturned, Slow CRUD Commands, Slow CRUD Commands Over Time, Slow DB Commands, Slow DB Commands Over Time, Slow Queries, Slow Queries by Connection ID, Slow Server Status, Slowest Execution Time (in MS) of  DB  Commands, Slowest Running Queries by Type, Socket Excpetions, Stopped Servers, Timeout Events, Up Servers, Warning Summary - Daily, Warnings, Warnings by Component



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| json field=_raw "attr.type" as type
| json field=_raw "attr.durationMillis" as dur
 `n```
### Use Cases:
Client Connection Requests, CRUD Commands Over Time, Error Logs by Component, Error Logs by Context, Error Summary - Daily, Errors, Errors by Component, Failed Login Attempt Summary, Failed Logins by User, Fatal Errors - Daily, Fatal Errors by Component, Location of Client Connection Requests, Location of Failed Logins, Log Reduce, Logs by  Components, Logs by Severity, MongoDB Exit Events, Slow CRUD Commands, Slow CRUD Commands Over Time, Slow DB Commands, Slow DB Commands Over Time, Slowest Execution Time (in MS) of  DB  Commands, Socket Excpetions, Timeout Events, Warning Summary - Daily, Warnings, Warnings by Component



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| json field=_raw "attr" as attr
| json field=_raw "attr.command.moveChunk" as collection
 `n```
### Use Cases:
Arbiter Node(s), Chunk Split Failures, Chunks Moving Between Shards, Chunks Moving by Collection, Client Connection Requests, CRUD Commands Over Time, Error Logs by Component, Error Logs by Context, Error Summary - Daily, Errors, Errors by Component, Failed Login Attempt Summary, Failed Logins by User, Fatal Errors - Daily, Fatal Errors by Component, Heartbeat Error Events, Location of Client Connection Requests, Location of Failed Logins, Log Reduce, Logs by  Components, Logs by Severity, MongoDB Exit Events, Primary Node, Queries by KeysExamined Value, Queries with KeysExamined greater than nreturned, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Secondary Node(s), Secondary Node(s) Too Stale, Slow CRUD Commands, Slow CRUD Commands Over Time, Slow DB Commands, Slow DB Commands Over Time, Slow Queries, Slow Queries by Connection ID, Slow Queries Over Time by Type, Slow Server Status, Slowest Execution Time (in MS) of  DB  Commands, Slowest Running Queries by Type, Socket Excpetions, Stopped Servers, Summary of Warnings, Timeout Events, Up Servers, Warning Summary - Daily, Warnings, Warnings by Component



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| json field=_raw "attr" as attr
| json field=_raw "attr.command.toShard" as shards
 `n```
### Use Cases:
Arbiter Node(s), Chunk Split Failures, Chunks Moving Between Shards, Chunks Moving by Collection, Client Connection Requests, CRUD Commands Over Time, Error Logs by Component, Error Logs by Context, Error Summary - Daily, Errors, Errors by Component, Failed Login Attempt Summary, Failed Logins by User, Fatal Errors - Daily, Fatal Errors by Component, Heartbeat Error Events, Location of Client Connection Requests, Location of Failed Logins, Log Reduce, Logs by  Components, Logs by Severity, MongoDB Exit Events, Primary Node, Queries by KeysExamined Value, Queries with KeysExamined greater than nreturned, Replication Error Summary, Replication Errors, Replication Events, Replication Warnings, Secondary Node(s), Secondary Node(s) Too Stale, Slow CRUD Commands, Slow CRUD Commands Over Time, Slow DB Commands, Slow DB Commands Over Time, Slow Queries, Slow Queries by Connection ID, Slow Queries Over Time by Type, Slow Server Status, Slowest Execution Time (in MS) of  DB  Commands, Slowest Running Queries by Type, Socket Excpetions, Stopped Servers, Summary of Warnings, Timeout Events, Up Servers, Warning Summary - Daily, Warnings, Warnings by Component



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| json field=_raw "attr" as attr
| json field=attr "error.codeName" as codeName
 `n```
### Use Cases:
Error Summary - Daily, Errors, Errors by Component, Fatal Errors - Daily, Fatal Errors by Component, MongoDB Exit Events, Socket Excpetions, Timeout Events, Warnings, Warnings by Component



## Parser:
```
| json "log" as _rawlog nodrop 
| json field=_raw "t.$date" as timestamp
| json field=_raw "s" as severity
| json field=_raw "c" as mongodb_component
| json field=_raw "ctx" as context
| json field=_raw "msg" as msg
| parse regex field=msg "dbexit:\s+rc:\s+(?<code>[0-9]+)"
 `n```
### Use Cases:
Error Summary - Daily, Errors, Errors by Component, Fatal Errors - Daily, Fatal Errors by Component, MongoDB Exit Events, Timeout Events, Warnings by Component


