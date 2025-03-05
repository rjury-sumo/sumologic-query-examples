# Parsers For Redis - OpenTelemetry

## Parser:
```
| json "log" nodrop
 
```
### Use Cases:
AOF Events, AOF Rewrite Status, Background Saving Status, Log Reduce by Errors, Logs, Master <--> Replica Sync Events, Master Replica Sync Status, RDB Age, RDB Events, RDBMemory Usage on Creation



## Parser:
```
| parse "Background AOF rewrite finished *\"" as status1 nodrop
| parse "Background AOF rewrite finished *" as status2 nodrop
 
```
### Use Cases:
AOF Rewrite Status, Master <--> Replica Sync Events, RDB Events



## Parser:
```
| parse "Background saving terminated with *\"" as status1 nodrop
| parse "Background saving terminated with *" as status2 nodrop 
 
```
### Use Cases:
AOF Events, AOF Rewrite Status, Background Saving Status, Master <--> Replica Sync Events, RDB Events, RDBMemory Usage on Creation



## Parser:
```
| parse "MASTER <-> REPLICA sync: *\"" as sync_event1 nodrop
| parse "MASTER <-> REPLICA sync: *" as sync_event2 nodrop
 
```
### Use Cases:
Master <--> Replica Sync Events



## Parser:
```
| parse "MASTER <-> REPLICA sync: Finished with *\"" as status1 nodrop
| parse "MASTER <-> REPLICA sync: Finished with *" as status2 nodrop 
 
```
### Use Cases:
AOF Events, AOF Rewrite Status, Background Saving Status, Logs, Master <--> Replica Sync Events, Master Replica Sync Status, RDB Age, RDB Events, RDBMemory Usage on Creation



## Parser:
```
| parse "RDB age * seconds" as age
 
```
### Use Cases:
AOF Events, AOF Rewrite Status, Background Saving Status, Logs, Master <--> Replica Sync Events, RDB Age, RDB Events, RDBMemory Usage on Creation



## Parser:
```
| parse regex "RDB memory usage when created (?<size>.*? .*?)"
 
```
### Use Cases:
AOF Rewrite Status, Master <--> Replica Sync Events, RDB Events, RDBMemory Usage on Creation


