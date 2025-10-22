# Parsers For Memcached - OpenTelemetry

**Memcached - OpenTelemetry/Memcached - Logs/Client Protocols**
```
deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} sumo.datasource=memcached memcached "Client using the" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message "(?<pid>\d+): Client using the (?<protocol>\w+) protocol"
```

**Memcached - OpenTelemetry/Memcached - Logs/Commands Executed**
```
deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} sumo.datasource=memcached memcached "<" ( TOUCH or GET or STATS or ADD or SET or REPLACE) | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message "<(?<pid>\d+) (?<cmd>\w+)*"
```

**Memcached - OpenTelemetry/Memcached - Logs/Commands Executed by Type**
```
deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} sumo.datasource=memcached memcached "<" ( TOUCH or GET or STATS or ADD or SET or REPLACE) | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message "<(?<pid>\d+) (?<cmd>\w+)*"
```

**Memcached - OpenTelemetry/Memcached - Logs/Errors**
```
deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} sumo.datasource=memcached memcached ">" ERROR | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<msg>\w+)"
```

**Memcached - OpenTelemetry/Memcached - Logs/Last 10 Errors**
```
deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} sumo.datasource=memcached memcached ">" ERROR | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<msg>.+)"
```

**Memcached - OpenTelemetry/Memcached - Logs/Log Reduce**
```
deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} sumo.datasource=memcached memcached | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<msg>\w+)" nodrop
| parse regex field=memcached_log_message "<(?<pid>\d+) (?<msg>\w+)"
```

**Memcached - OpenTelemetry/Memcached - Logs/Objects Stored**
```
deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} sumo.datasource=memcached memcached ">" STORED | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<cmd>\w+)"
```

**Memcached - OpenTelemetry/Memcached - Overview/Client Protocols**
```
sumo.datasource=memcached deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} memcached "Client using the" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message "(?<pid>\d+): Client using the (?<protocol>\w+) protocol"
```

**Memcached - OpenTelemetry/Memcached - Overview/Commands Executed**
```
sumo.datasource=memcached deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} memcached "<" ( TOUCH or GET or STATS or ADD or SET or REPLACE) | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message "<(?<pid>\d+) (?<cmd>\w+)*"
```

**Memcached - OpenTelemetry/Memcached - Overview/Commands Executed by Command Type**
```
sumo.datasource=memcached deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} memcached "<" ( TOUCH or GET or STATS or ADD or SET or REPLACE) | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message "<(?<pid>\d+) (?<cmd>\w+)*"
```

**Memcached - OpenTelemetry/Memcached - Overview/Errors**
```
sumo.datasource=memcached deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} memcached ">" ERROR | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<cmd>\w+)"
```

**Memcached - OpenTelemetry/Memcached - Overview/Last 10 Errors**
```
sumo.datasource=memcached deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} memcached ">" ERROR | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<msg>.+)"
```

**Memcached - OpenTelemetry/Memcached - Overview/Objects Stored**
```
sumo.datasource=memcached deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} memcached ">" STORED | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<cmd>\w+)"
```


