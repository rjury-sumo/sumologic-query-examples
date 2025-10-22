# Parsers For Redis - OpenTelemetry

**Redis - OpenTelemetry/Redis - Logs/AOF Events**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} (sumo.datasource="redis") AOF
| json "log" nodrop
```

**Redis - OpenTelemetry/Redis - Logs/AOF Rewrite Status**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} (sumo.datasource="redis")
| parse "Background AOF rewrite finished *\"" as status1 nodrop
| parse "Background AOF rewrite finished *" as status2 nodrop
```

**Redis - OpenTelemetry/Redis - Logs/Background Saving Status**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} (sumo.datasource="redis")
| parse "Background saving terminated with *\"" as status1 nodrop
| parse "Background saving terminated with *" as status2 nodrop 
```

**Redis - OpenTelemetry/Redis - Logs/Log Reduce by Errors**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} (sumo.datasource="redis") (error or critical)
| json "log" nodrop
```

**Redis - OpenTelemetry/Redis - Logs/Logs**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} (sumo.datasource="redis")
| json "log" nodrop
```

**Redis - OpenTelemetry/Redis - Logs/Master <--> Replica Sync Events**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} (sumo.datasource="redis")
| parse "MASTER <-> REPLICA sync: *\"" as sync_event1 nodrop
| parse "MASTER <-> REPLICA sync: *" as sync_event2 nodrop
```

**Redis - OpenTelemetry/Redis - Logs/Master Replica Sync Status**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}}  (sumo.datasource="redis")
| parse "MASTER <-> REPLICA sync: Finished with *\"" as status1 nodrop
| parse "MASTER <-> REPLICA sync: Finished with *" as status2 nodrop 
```

**Redis - OpenTelemetry/Redis - Logs/RDB Age**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} (sumo.datasource="redis") RDB
| parse "RDB age * seconds" as age
```

**Redis - OpenTelemetry/Redis - Logs/RDB Events**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} (sumo.datasource="redis") RDB
| json "log" nodrop
```

**Redis - OpenTelemetry/Redis - Logs/RDBMemory Usage on Creation**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} (sumo.datasource="redis")
| parse regex "RDB memory usage when created (?<size>.*? .*?)"
```


