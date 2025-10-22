# Parsers For MySQL - OpenTelemetry

**MySQL - OpenTelemetry/MySQL - Error Logs/Crash Recovery Attempts Over Time**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "Starting crash recovery"
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
```

**MySQL - OpenTelemetry/MySQL - Error Logs/Error Log Type Over Time**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} (Error or Warning or Note or Info or Information or DEBUG or CRITICAL)
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
```

**MySQL - OpenTelemetry/MySQL - Error Logs/Log Reduce**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} ("ERROR" or "CRITICAL") 
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
```

**MySQL - OpenTelemetry/MySQL - Error Logs/Server Start and Shutdown Events Over Time**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} mysqld ("ready for connections." or "Shutdown complete" or "Terminated." or "Normal shutdown" or "Shutting down" or "starting as process")
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
```

**MySQL - OpenTelemetry/MySQL - Error Logs/Stopped Servers**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} mysqld ("ready for connections."  or "Terminated." or "Shutdown complete" or "Normal shutdown")
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
```

**MySQL - OpenTelemetry/MySQL - Error Logs/Top Errors**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "[ERROR]"
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)"
| where ErrorLogtype="ERROR"
| parse field=ErrorMsg "[*] [*] *" as err_code, subsystem, error_message nodrop
```

**MySQL - OpenTelemetry/MySQL - Error Logs/Top Warnings**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "[Warning]"
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)"
| where ErrorLogtype="Warning" 
| parse field=ErrorMsg "[*] [*] *" as err_code, subsystem, ErrorMessage nodrop
```

**MySQL - OpenTelemetry/MySQL - Failed Logins/Failed Login Attempts**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} Access denied for user
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Access denied for user '*'@'*' (using password: YES)" as user, ip_address
```

**MySQL - OpenTelemetry/MySQL - Failed Logins/Failed Login Attempts - Details**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} Access denied for user
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Access denied for user '*'@'*' (using password:" as user, ip_address
```

**MySQL - OpenTelemetry/MySQL - Failed Logins/Failed Login Attempts - Location**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} Access denied for user
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Access denied for user '*'@'*' (using password: YES)" as user, ip_address
```

**MySQL - OpenTelemetry/MySQL - Failed Logins/Failed Login Attempts Trend**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} Access denied for user
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Access denied for user '*'@'*' (using password: YES)" as user, ip_address
```

**MySQL - OpenTelemetry/MySQL - Failed Logins/Top 10 Failed Login Attempts by Hosts**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} Access denied for user
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Access denied for user '*'@'*' (using password: YES)" as user, ip_address
```

**MySQL - OpenTelemetry/MySQL - Failed Logins/Top 10 Failed Login Attempts by Users**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} Access denied for user
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Access denied for user '*'@'*' (using password: YES)" as user, ip_address
```

**MySQL - OpenTelemetry/MySQL - Overview/Errors**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "[ERROR]"
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)"
```

**MySQL - OpenTelemetry/MySQL - Overview/Excessive Slow Queries (>=15 secs)**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "User@Host" "Query_time"  
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" // Pttrn2-vrtn4
```

**MySQL - OpenTelemetry/MySQL - Overview/Failed Login Attempts**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "[Warning]" Access denied for user
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Access denied for user '*'@'*' (using password: YES)" as user, ip_address
```

**MySQL - OpenTelemetry/MySQL - Overview/Replication Errors**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} (("[ERROR]" and ("Slave I/O" or "Error reading packet from server" or "Slave SQL")) or "[Note] Error reading relay log event: slave SQL thread was killed")
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
```

**MySQL - OpenTelemetry/MySQL - Overview/Replication Status Over Time**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} ("[Note]" or ("[ERROR]" ("Slave I/O" or "Error reading packet from server" or "Slave SQL")))
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Slave SQL thread initialized, * replication in log '*' at position *, relay log '*' position: *" as State,ReplicationLog,ReplicationPosition,ReplayLog,RelayPosition nodrop
| parse field=ErrorMsg "Slave SQL thread * because it reached its UNTIL position *" as State, StoppedUntilPosition nodrop
| parse field=ErrorMsg "Error reading relay log event: slave SQL thread was *" as state nodrop
```

**MySQL - OpenTelemetry/MySQL - Overview/Slow Queries Over Time**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "User@Host" "Query_time"
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
```

**MySQL - OpenTelemetry/MySQL - Replication/Replication Start-Stop Events**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "[Note]" "SQL thread"
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Slave SQL thread for channel '' *, starting replication in log * at position *, relay log * position: *" as State,ReplicationLog,ReplicationPosition,RelayLog,RelayPosition nodrop
| parse field=ErrorMsg "Slave SQL thread for channel '' exiting, replication * in log * at position *" as State,ReplicationLog,StoppedUntilPosition nodrop
```

**MySQL - OpenTelemetry/MySQL - Replication/Replication Status Over Time**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} ("[Note]" or ("[ERROR]" ("Slave I/O" or "Error reading packet from server" or "Slave SQL")))
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Slave SQL thread initialized, * replication in log '*' at position *, relay log '*' position: *" as State,ReplicationLog,ReplicationPosition,ReplayLog,RelayPosition nodrop
| parse field=ErrorMsg "Slave SQL thread * because it reached its UNTIL position *" as State, StoppedUntilPosition nodrop
| parse field=ErrorMsg "Error reading relay log event: slave SQL thread was *" as state nodrop
```

**MySQL - OpenTelemetry/MySQL - Replication/Top Reasons for Replication Failures**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} (("[ERROR]" and ("Slave I/O" or "Error reading packet from server" or "Slave SQL")) or ("[Note] Error reading relay log event: slave SQL thread was killed"))
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
```

**MySQL - OpenTelemetry/MySQL - Slow Queries/Avg Execution Time by Slow SQL Cmds**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "User@Host" "Query_time"
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" // Pttrn2-vrtn4
| parse regex field=query_block "SET timestamp=(?<set_timestamp>\d*);(?:\\n|\n)(?<sql_cmd>[\s\S]*);" nodrop
| parse regex field=sql_cmd "[^a-zA-Z]*(?<sql_cmd_type>[a-zA-Z]+)(?:\s|\\n|\n)" nodrop
| parse field=sql_cmd "# administrator command: *" as admn_sql_cmd
```

**MySQL - OpenTelemetry/MySQL - Slow Queries/Excessive Slow Queries by Host**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "User@Host" "Query_time"
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" // Pttrn2-vrtn4
```

**MySQL - OpenTelemetry/MySQL - Slow Queries/Excessive Slow Queries Over Time**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "User@Host" "Query_time"
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" // Pttrn2-vrtn4
```

**MySQL - OpenTelemetry/MySQL - Slow Queries/Slow Queries by Hosts**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "User@Host" "Query_time"
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" nodrop // Pttrn2-vrtn4
```

**MySQL - OpenTelemetry/MySQL - Slow Queries/Slow Queries Over Time**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "User@Host" "Query_time"
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" nodrop // Pttrn2-vrtn4
```

**MySQL - OpenTelemetry/MySQL - Slow Queries/Slow Query by Cmd Type**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "User@Host" "Query_time"
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "SET timestamp=(?<set_timestamp>\d*);(?:\\n|\n)(?<sql_cmd>[\s\S]*);" nodrop
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" nodrop // Pttrn2-vrtn4
| num(query_time) as query_time
| where query_time >= {{slow_query_latency}}
| parse regex field=sql_cmd "[^a-zA-Z]*(?<sql_cmd_type>[a-zA-Z]+)(?:\s|\\n|\n)" nodrop
| parse field=sql_cmd "# administrator command: *" as admn_sql_cmd
```

**MySQL - OpenTelemetry/MySQL - Slow Queries/Top 10 Excessive Slow Queries by Frequency**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "User@Host" "Query_time"
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]" nodrop // Pttrn1-vrtn1
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @\s+\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" nodrop // Pttrn1-vrtn2
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" // Pttrn1-vrtn3
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" // Pttrn2-vrtn4
| parse regex field=query_block "# Bytes_sent:\s+(?<bytes_sent>\d*)\s+Tmp_tables:\s+(?<tmp_tables>\d*)\s+Tmp_disk_tables:\s+(?<temp_disk_tables>\d*)\s+Tmp_table_sizes:\s+(?<tmp_table_sizes>\d*)\n" nodrop // Pttrn3-vrtn1
| parse regex field=query_block "# Bytes_sent:\s+(?<bytes_sent>\d*)\n" nodrop // Pttrn3-vrtn2
| parse regex field=query_block "SET timestamp=(?<set_timestamp>\d*);(?:\\n|\n)(?<sql_cmd>[\s\S]*);" nodrop
```

**MySQL - OpenTelemetry/MySQL - Slow Queries/Top 10 Slow Queries by Average Execution Time**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "User@Host" "Query_time"  
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]" nodrop // Pttrn1-vrtn1
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @\s+\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" nodrop // Pttrn1-vrtn2
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" // Pttrn1-vrtn3
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" // Pttrn2-vrtn4
| parse regex field=query_block "# Bytes_sent:\s+(?<bytes_sent>\d*)\s+Tmp_tables:\s+(?<tmp_tables>\d*)\s+Tmp_disk_tables:\s+(?<temp_disk_tables>\d*)\s+Tmp_table_sizes:\s+(?<tmp_table_sizes>\d*)\n" nodrop // Pttrn3-vrtn1
| parse regex field=query_block "# Bytes_sent:\s+(?<bytes_sent>\d*)\n" nodrop // Pttrn3-vrtn2
| parse regex field=query_block "SET timestamp=(?<set_timestamp>\d*);(?:\\n|\n)(?<sql_cmd>[\s\S]*);" nodrop
```

**MySQL - OpenTelemetry/MySQL - Slow Queries/Top IP Firing Slow Queries**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "User@Host" "Query_time"  
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]" nodrop // Pttrn1-vrtn1
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @\s+\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" nodrop // Pttrn1-vrtn2
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" // Pttrn1-vrtn3
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" nodrop // Pttrn2-vrtn4
```

**MySQL - OpenTelemetry/MySQL - Slow Queries/Top Users Firing Slow Queries**
```
sumo.datasource=mysql deployment.environment={{deployment.environment}} db.cluster.name={{db.cluster.name}} db.node.name={{db.node.name}} "User@Host" "Query_time"
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]" nodrop // Pttrn1-vrtn1
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @\s+\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" nodrop // Pttrn1-vrtn2
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" // Pttrn1-vrtn3
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" nodrop // Pttrn2-vrtn4
```


