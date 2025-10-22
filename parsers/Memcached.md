# Parsers For Memcached

**Memcached/Logs/Client Protocols**
```
db_cluster=* db_cluster={{db_cluster}} db_system=memcached memcached "Client using the" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message "(?<pid>\d+): Client using the (?<protocol>\w+) protocol"
```

**Memcached/Logs/Commands Executed**
```
db_cluster=* db_cluster={{db_cluster}} db_system=memcached memcached "<" ( TOUCH or GET or STATS or ADD or SET or REPLACE) | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message "<(?<pid>\d+) (?<cmd>\w+)*"
```

**Memcached/Logs/Commands Executed by Type**
```
db_cluster=* db_cluster={{db_cluster}} db_system=memcached memcached "<" ( TOUCH or GET or STATS or ADD or SET or REPLACE) | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message "<(?<pid>\d+) (?<cmd>\w+)*"
```

**Memcached/Logs/Errors**
```
db_cluster=* db_cluster={{db_cluster}} db_system=memcached memcached ">" ERROR | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<msg>\w+)"
```

**Memcached/Logs/Last 10 Errors**
```
db_cluster=* db_cluster={{db_cluster}} db_system=memcached memcached ">" ERROR | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<msg>.+)"
```

**Memcached/Logs/Log Reduce**
```
db_cluster=* db_cluster={{db_cluster}} db_system=memcached memcached | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<msg>\w+)" nodrop
| parse regex field=memcached_log_message "<(?<pid>\d+) (?<msg>\w+)"
```

**Memcached/Logs/Objects Stored**
```
db_cluster=* db_cluster={{db_cluster}} db_system=memcached memcached ">" STORED | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<cmd>\w+)"
```

**Memcached/Overview/Client Protocols**
```
db_cluster=* db_cluster={{db_cluster}} db_system=memcached memcached "Client using the" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message "(?<pid>\d+): Client using the (?<protocol>\w+) protocol"
```

**Memcached/Overview/Commands Executed**
```
db_cluster=* db_cluster={{db_cluster}} db_system=memcached memcached "<" ( TOUCH or GET or STATS or ADD or SET or REPLACE) | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message "<(?<pid>\d+) (?<cmd>\w+)*"
```

**Memcached/Overview/Commands Executed by Command Type**
```
db_cluster=* db_cluster={{db_cluster}} db_system=memcached memcached "<" ( TOUCH or GET or STATS or ADD or SET or REPLACE) | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message "<(?<pid>\d+) (?<cmd>\w+)*"
```

**Memcached/Overview/Errors**
```
db_cluster=* db_cluster={{db_cluster}} db_system=memcached memcached ">" ERROR | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<cmd>\w+)"
```

**Memcached/Overview/Last 10 Errors**
```
db_cluster=* db_cluster={{db_cluster}} db_system=memcached memcached ">" ERROR | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<msg>.+)"
```

**Memcached/Overview/Objects Stored**
```
db_cluster=* db_cluster={{db_cluster}} db_system=memcached memcached ">" STORED | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as memcached_log_message
| parse regex field=memcached_log_message ">(?<pid>\d+) (?<cmd>\w+)"
```


