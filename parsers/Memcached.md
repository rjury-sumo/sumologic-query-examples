# Parsers For Memcached

## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=memcached_log_message "(?<pid>\d+): Client using the (?<protocol>\w+) protocol"
 
```
### Use Cases:
Client Protocols, Commands Executed, Commands Executed by Type, Errors, Last 10 Errors, Log Reduce, Objects Stored



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
Client Protocols, Commands Executed, Commands Executed by Command Type, Commands Executed by Type, Errors, Last 10 Errors, Log Reduce, Objects Stored



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<msg>\w+)"
 
```
### Use Cases:
Client Protocols, Commands Executed, Commands Executed by Type, Errors, Last 10 Errors



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<msg>\w+)" nodrop
| parse regex field=memcached_log_message "<(?<pid>\d+) (?<msg>\w+)"
 
```
### Use Cases:
Client Protocols, Commands Executed, Commands Executed by Type, Errors, Last 10 Errors, Log Reduce



## Parser:
```
| parse field=metric memcached_cas_* as name| sum by db_cluster,host,name | 
```
### Use Cases:
CAS Miss, Hit and Badval Rate, Client Protocols, Commands Executed, Commands Executed by Command Type, Commands Executed by Type, Delete Miss and Hit Rate, Errors, Last 10 Errors, Log Reduce, Objects Stored



## Parser:
```
| parse field=metric memcached_decr_* as name| sum by db_cluster,host,name | 
```
### Use Cases:
CAS Miss, Hit and Badval Rate, Client Protocols, Commands Executed, Commands Executed by Command Type, Commands Executed by Type, Decrement Miss and Hit Rate, Delete Miss and Hit Rate, Errors, Increment Miss and Hit Rate, Last 10 Errors, Log Reduce, Objects Stored



## Parser:
```
| parse field=metric memcached_delete_* as name| sum by db_cluster,host,name | 
```
### Use Cases:
Client Protocols, Commands Executed, Commands Executed by Command Type, Commands Executed by Type, Delete Miss and Hit Rate, Errors, Last 10 Errors, Log Reduce, Objects Stored



## Parser:
```
| parse field=metric memcached_incr_* as name| sum by db_cluster,host,name | 
```
### Use Cases:
CAS Miss, Hit and Badval Rate, Client Protocols, Commands Executed, Commands Executed by Command Type, Commands Executed by Type, Delete Miss and Hit Rate, Errors, Increment Miss and Hit Rate, Last 10 Errors, Log Reduce, Objects Stored


