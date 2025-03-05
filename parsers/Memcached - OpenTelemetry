# Parsers For Memcached - OpenTelemetry

## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=memcached_log_message "(?<pid>\d+): Client using the (?<protocol>\w+) protocol"
```
### Use Cases:
Client Protocols, Commands Executed, Commands Executed by Command Type, Commands Executed by Type, Errors, Last 10 Errors, Log Reduce, Objects Stored



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=memcached_log_message "<(?<pid>\d+) (?<cmd>\w+)*"
```
### Use Cases:
Client Protocols, Commands Executed, Commands Executed by Command Type, Commands Executed by Type, Errors, Last 10 Errors, Log Reduce, Objects Stored



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<cmd>\w+)"
```
### Use Cases:
Client Protocols, Commands Executed, Commands Executed by Type, Errors, Last 10 Errors, Log Reduce, Objects Stored



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<msg>.+)"
```
### Use Cases:
Client Protocols, Commands Executed, Commands Executed by Type, Errors, Last 10 Errors, Log Reduce, Objects Stored



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<msg>\w+)"
```
### Use Cases:
Errors



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<msg>\w+)" nodrop
| parse regex field=memcached_log_message "<(?<pid>\d+) (?<msg>\w+)"
```
### Use Cases:
Errors, Log Reduce


