# Parsers For PostgreSQL - OpenTelemetry

**PostgreSQL - OpenTelemetry/PostgreSQL -  Query Execution/Average Query Execution Time**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} duration
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
| where db.name matches "{{db.name}}"
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
```

**PostgreSQL - OpenTelemetry/PostgreSQL -  Query Execution/Number of Queries Executed by Database**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} duration
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
| where db.name matches "{{db.name}}"
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
```

**PostgreSQL - OpenTelemetry/PostgreSQL -  Query Execution/Queries Executed - One Day Time Comparison**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} duration
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
| where db.name matches "{{db.name}}"
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
```

**PostgreSQL - OpenTelemetry/PostgreSQL -  Query Execution/Queries Executed Over Time**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} duration
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
| where db.name matches "{{db.name}}"
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
```

**PostgreSQL - OpenTelemetry/PostgreSQL -  Query Execution/Queries Executed Over Time - One Day Time Comparison**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} duration
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
| where db.name matches "{{db.name}}"
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
```

**PostgreSQL - OpenTelemetry/PostgreSQL -  Query Execution/Query Execution Time Stats**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} duration
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
| where db.name matches "{{db.name}}"
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Error Logs/Activity by Database**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name=* 
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Error Logs/Activity by Database Over Time**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} 
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Error Logs/Activity by User**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name=* 
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Error Logs/Activity by User Over Time**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} 
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Error Logs/Database System Shut Down Events**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} ("database system" AND "shut down")
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *:  *" as date,time,time_zone,thread_id,severity,msg
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Error Logs/Database System Up Events**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "database system is ready to accept connections"
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *:  *" as date,time,time_zone,thread_id,severity,msg
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Error Logs/Errors and Fatal Events**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} (ERROR or FATAL)
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Error Logs/Fatal Errors**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} 
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Error Logs/Least Common Errors**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}}
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Error Logs/Log Reduce**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}}
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Error Logs/Log Severity**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} 
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Error Logs/Most Common Errors**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}}
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Overview/Connections**
```
sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}}  connection authorized
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse regex field=_raw "user=(?<user>[\S]+) database=(?<database>[\S]+)"
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Overview/Errors**
```
sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} 
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db,severity,msg 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Overview/Failed Logins**
```
sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}}  "authentication failed"
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,database,severity,msg
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Overview/Fatal Errors**
```
sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} 
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db,severity,msg 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Overview/Queries executed Over Time**
```
sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}}  duration
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db,severity,msg 
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Overview/Slow Queries**
```
sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}}  duration
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db,severity,msg 
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Overview/Slow Queries Over Time**
```
sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}}  duration
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db,severity,msg 
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Security/Connections Authorized by  Database - Over Time**
```
   sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} connection authorized
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse regex field=_raw "user=(?<user>[\S]+) database=(?<database>[\S]+)"
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Security/Failed Authentication by  Database - Over Time**
```
   sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "authentication failed"
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,database,severity,msg
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Security/Failed Authentications**
```
   sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "authentication failed"
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,database,severity,msg
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Security/Failed Authentications by User and Database**
```
   sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "authentication failed"
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,database,severity,msg
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Security/Geo Location of Incoming Connections**
```
   sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} connection
| parse "connection received: host=* port=*" as ip,port 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Security/Number of queries  - Outlier Flag**
```
   sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} duration
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Security/Threat Intel Analysis of Incoming Connections**
```
   sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} connection
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "connection received: host=* port=*" as ip,port 
| count by ip, db.cluster.name
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=ip
| where type="ip_address" 
| json field=raw "labels[*].name" as label_name 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Security/Top Errors and Warnings**
```
   sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} (ERROR OR FATAL OR WARNING OR  PANIC)
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,database,severity,msg
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Slow Queries/Avg Execution Time by Slow SQL Commands**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} duration
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
| number (execution_time_ms)
| where execution_time_ms > {{slow_query_latency_ms}} and db.name matches "{{db.name}}"
| toUpperCase(query) as query
| parse regex field=query "(?:\s|\\n|\n)+(?<sql_cmd_type>CREATE|DROP|ALTER|TRUNCATE|COMMENT|RENAME|SELECT|INSERT|UPDATE|DELETE|GRANT|INVOKE|BEGIN|COMMIT|ROLLBACK)(?:\s|\\n|\n)+"
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Slow Queries/Slow Queries**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} duration
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Slow Queries/Slow Queries by Database Over Time**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} duration
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Slow Queries/Slow Query by Command Type**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} duration
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
| count by date,time,user,db.name,execution_time_ms,query,db.cluster.name
| number (execution_time_ms)
| where execution_time_ms > {{slow_query_latency_ms}} and db.name matches "{{db.name}}"
| parse regex field=query "(?:\s|\\n|\n)+(?<sql_cmd_type>(?i)CREATE|DROP|ALTER|TRUNCATE|COMMENT|RENAME|SELECT|INSERT|UPDATE|DELETE|GRANT|INVOKE|BEGIN|COMMIT|ROLLBACK)(?:\s|\\n|\n)+"
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Slow Queries/Slowest Query by Database - One Day Time Comparison**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} duration
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Slow Queries/Top 10 Slow Queries by Database**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} duration
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
```

**PostgreSQL - OpenTelemetry/PostgreSQL - Slow Queries/Top Users Firing Slow Queries**
```
    sumo.datasource=postgresql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} duration
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
```


