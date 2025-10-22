# Parsers For MySQL

**MySQL/ Slow Query Server Location/MySQL -  Slow Query Server Location**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster=* "User@Host" "Query_time"
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]" nodrop // Pttrn1-vrtn1
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @\s+\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" nodrop // Pttrn1-vrtn2
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" // Pttrn1-vrtn3
```

**MySQL/Crash Recovery Attempts by Host/MySQL - Crash Recovery Attempts by Host**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster=* "Starting crash recovery"
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
```

**MySQL/Error Logs/Crash Recovery Attempts Over Time**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "Starting crash recovery"
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
```

**MySQL/Error Logs/Error Log Type Over Time**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} (Error or Warning or Note or Info or Information or DEBUG or CRITICAL)
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
```

**MySQL/Error Logs/Log Reduce**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} ("ERROR" or "CRITICAL") 
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
```

**MySQL/Error Logs/Server Start and Shutdown Events Over Time**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} mysqld ("ready for connections." or "Shutdown complete" or "Terminated." or "Normal shutdown" or "Shutting down" or "starting as process")
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
```

**MySQL/Error Logs/Stopped Servers**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} mysqld ("ready for connections."  or "Terminated." or "Shutdown complete" or "Normal shutdown")
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
```

**MySQL/Error Logs/Top Errors**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "[ERROR]"
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)"
| where ErrorLogtype="ERROR"
| parse field=ErrorMsg "[*] [*] *" as err_code, subsystem, error_message nodrop
```

**MySQL/Error Logs/Top Warnings**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "[Warning]"
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)"
| where ErrorLogtype="Warning" 
| parse field=ErrorMsg "[*] [*] *" as err_code, subsystem, ErrorMessage nodrop
```

**MySQL/Failed Logins/Failed Login Attempts**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "[Warning]" Access denied for user
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Access denied for user '*'@'*' (using password: YES)" as user, ip_address
```

**MySQL/Failed Logins/Failed Login Attempts - Details**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "[Warning]" Access denied for user
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Access denied for user '*'@'*' (using password: YES)" as user, ip_address
```

**MySQL/Failed Logins/Failed Login Attempts - Location**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "[Warning]" Access denied for user
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Access denied for user '*'@'*' (using password: YES)" as user, ip_address
```

**MySQL/Failed Logins/Failed Login Attempts Trend**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "[Warning]" Access denied for user
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Access denied for user '*'@'*' (using password: YES)" as user, ip_address
```

**MySQL/Failed Logins/Top 10 Failed Login Attempts by Hosts**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "[Warning]" Access denied for user
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Access denied for user '*'@'*' (using password: YES)" as user, ip_address
```

**MySQL/Failed Logins/Top 10 Failed Login Attempts by Users**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "[Warning]" Access denied for user
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Access denied for user '*'@'*' (using password: YES)" as user, ip_address
```

**MySQL/Number of Replication Completion Events by Host/MySQL - Number of Replication Completion Events by Host**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster=* "Slave SQL thread" "because it reached its UNTIL position"
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Slave SQL thread * because it reached its UNTIL position *" as State, StoppedUntilPosition
```

**MySQL/Overview/Errors**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "[ERROR]"
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)"
```

**MySQL/Overview/Excessive Slow Queries (>=15 secs)**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "User@Host" "Query_time"  
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" // Pttrn2-vrtn4
```

**MySQL/Overview/Failed Login Attempts**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "[Warning]" Access denied for user
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Access denied for user '*'@'*' (using password: YES)" as user, ip_address
```

**MySQL/Overview/Replication Errors**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} (("[ERROR]" and ("Slave I/O" or "Error reading packet from server" or "Slave SQL")) or "[Note] Error reading relay log event: slave SQL thread was killed")
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
```

**MySQL/Overview/Replication Status Over Time**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} ("[Note]" or ("[ERROR]" ("Slave I/O" or "Error reading packet from server" or "Slave SQL")))
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Slave SQL thread initialized, * replication in log '*' at position *, relay log '*' position: *" as State,ReplicationLog,ReplicationPosition,ReplayLog,RelayPosition nodrop
| parse field=ErrorMsg "Slave SQL thread * because it reached its UNTIL position *" as State, StoppedUntilPosition nodrop
| parse field=ErrorMsg "Error reading relay log event: slave SQL thread was *" as state nodrop
```

**MySQL/Overview/Slow Queries Over Time**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "User@Host" "Query_time"
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
```

**MySQL/Replication Failures by Host/MySQL - Replication Failures by Host**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster=* "[ERROR]" ("Slave I/O" or "Error reading packet from server" or "Slave SQL")
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| where ErrorLogtype="ERROR"
| parse field=ErrorMsg "*: error * to master '*' - retry-time: * retries: *, Error_code: *" as subsystem, action, Master, Retry_time, Retries, Error_code nodrop
| parse field=ErrorMsg "*: Got fatal error *, Error_code: *" as subsystem, Error_Msg, Error_code nodrop
| parse field=ErrorMsg "*: * ( server_errno=*)" as subsystem, Error_Msg, Error_code nodrop
| parse field=ErrorMsg "*: The slave I/O thread stops because *. Error:*, Error_code: *" as subsystem, Error_Msg_details, Error_Msg, Error_code nodrop
| parse field=ErrorMsg "*: * Default database: '*'. Query: '*', Error_code: *" as subsystem, Error_Msg, Default_Database, Query, Error_code nodrop
| parse field=ErrorMsg "*: Cou*d not execute *" as subsystem, f1, Error_Msg nodrop
| parse field=ErrorMsg "*: Master command *, Error_code: *" as subsystem, Error_Msg, Error_code nodrop
| parse field=ErrorMsg "* thread couldn't register on master" as subsystem nodrop
```

**MySQL/Replication/Replication Start-Stop Events**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "[Note]" "SQL thread"
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Slave SQL thread initialized, * replication in log '*' at position *, relay log '*' position: *" as State,ReplicationLog,ReplicationPosition,ReplayLog,RelayPosition nodrop
| parse field=ErrorMsg "Slave SQL thread * because it reached its UNTIL position *" as State, StoppedUntilPosition nodrop
```

**MySQL/Replication/Replication Status Over Time**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} ("[Note]" or ("[ERROR]" ("Slave I/O" or "Error reading packet from server" or "Slave SQL")))
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Slave SQL thread initialized, * replication in log '*' at position *, relay log '*' position: *" as State,ReplicationLog,ReplicationPosition,ReplayLog,RelayPosition nodrop
| parse field=ErrorMsg "Slave SQL thread * because it reached its UNTIL position *" as State, StoppedUntilPosition nodrop
| parse field=ErrorMsg "Error reading relay log event: slave SQL thread was *" as state nodrop
```

**MySQL/Replication/Top Reasons for Replication Failures**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} (("[ERROR]" and ("Slave I/O" or "Error reading packet from server" or "Slave SQL")) or ("[Note] Error reading relay log event: slave SQL thread was killed"))
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
```

**MySQL/Server Latest Replication State/MySQL - Server Latest Replication State**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster=* ("[Note]" or ("[ERROR]" ("Slave I/O" or "Error reading packet from server" or "Slave SQL")))
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Slave SQL thread initialized, * replication in log '*' at position *, relay log '*' position: *" as replication_state, ReplicationLog, ReplicationPosition, ReplayLog, RelayPosition nodrop
| parse field=ErrorMsg "Slave SQL thread * because it reached its UNTIL position *" as replication_state, StoppedUntilPosition nodrop
| parse field=ErrorMsg "Error reading relay log event: slave SQL thread was *" as replication_state nodrop
```

**MySQL/Server Latest Running State/MySQL - Server Latest Running State**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster=* mysqld ("ready for connections." or "Shutdown complete" or "Terminated." or "Normal shutdown" or "Shutting down" or "starting as process")
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
```

**MySQL/Server Up-Down Events by Host/MySQL - Server Up-Down Events by Host**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster=* mysqld ("ready for connections." or "Shutdown complete" or "Terminated." or "Normal shutdown" or "Shutting down" or "starting as process")
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
```

**MySQL/Slow Queries/Avg Execution Time by Slow SQL Cmds**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "User@Host" "Query_time"
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" // Pttrn2-vrtn4
| parse regex field=query_block "SET timestamp=(?<set_timestamp>\d*);(?:\\n|\n)(?<sql_cmd>[\s\S]*);" nodrop
| parse regex field=sql_cmd "[^a-zA-Z]*(?<sql_cmd_type>[a-zA-Z]+)(?:\s|\\n|\n)" nodrop
| parse field=sql_cmd "# administrator command: *" as admn_sql_cmd
```

**MySQL/Slow Queries/Excessive Slow Queries by Host**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "User@Host" "Query_time"
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" // Pttrn2-vrtn4
```

**MySQL/Slow Queries/Excessive Slow Queries Over Time**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "User@Host" "Query_time"
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" // Pttrn2-vrtn4
```

**MySQL/Slow Queries/Slow Queries by Hosts**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "User@Host" "Query_time"
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" nodrop // Pttrn2-vrtn4
```

**MySQL/Slow Queries/Slow Queries Over Time**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "User@Host" "Query_time"
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" nodrop // Pttrn2-vrtn4
```

**MySQL/Slow Queries/Slow Query by Cmd Type**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "User@Host" "Query_time"
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

**MySQL/Slow Queries/Top 10 Excessive Slow Queries by Frequency**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "User@Host" "Query_time"
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

**MySQL/Slow Queries/Top 10 Slow Queries by Average Execution Time**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "User@Host" "Query_time"  
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

**MySQL/Slow Queries/Top IP Firing Slow Queries**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "User@Host" "Query_time"  
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]" nodrop // Pttrn1-vrtn1
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @\s+\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" nodrop // Pttrn1-vrtn2
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" // Pttrn1-vrtn3
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" nodrop // Pttrn2-vrtn4
```

**MySQL/Slow Queries/Top Users Firing Slow Queries**
```
_sourceCategory = Labs/MySQL* db_system=mysql db_cluster={{db_cluster}} "User@Host" "Query_time"
| parse regex "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]" nodrop // Pttrn1-vrtn1
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @\s+\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" nodrop // Pttrn1-vrtn2
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" // Pttrn1-vrtn3
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" nodrop // Pttrn2-vrtn4
```


