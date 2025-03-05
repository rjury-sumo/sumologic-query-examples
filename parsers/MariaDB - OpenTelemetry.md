# Parsers For MariaDB - OpenTelemetry

## Parser:
```
| json "log" nodrop
| parse field=mariadb_log_message "Access denied for user '*'@'*' (using password: YES)" as user, ip_address
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 Errors, Top 10 Hosts by Failed Login Attempts, Top 10 Users by Failed Login Attempts, Top Errors, Top Warnings



## Parser:
```
| json "log" nodrop
| parse regex field=mariadb_log_message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, Replication Errors, Server Start and Shutdown Events Over Time, Slow Queries Over Time, Stopped Servers, Top 10 Errors, Top 10 Hosts by Failed Login Attempts, Top 10 Users by Failed Login Attempts, Top 10 Warnings, Top Errors, Top Warnings



## Parser:
```
| json "log" nodrop
| parse regex field=mariadb_log_message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ \s\[(?<ip_addr>\S*?)\]" nodrop
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
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Excessive Slow Queries Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, Replication Errors, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Servers, Top 10 Errors, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts by Failed Login Attempts, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Failed Login Attempts, Top 10 Warnings, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json "log" nodrop
| parse regex field=mariadb_log_message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ \s\[(?<ip_addr>\S*?)\]" nodrop
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]" nodrop // Pttrn1-vrtn1
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @\s+\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" nodrop // Pttrn1-vrtn2
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" // Pttrn1-vrtn3
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" nodrop // Pttrn2-vrtn4
 
```
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Excessive Slow Queries Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, Replication Errors, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries by Users, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Servers, Top 10 Errors, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts by Failed Login Attempts, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Failed Login Attempts, Top 10 Warnings, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json "log" nodrop
| parse regex field=mariadb_log_message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" // Pttrn2-vrtn4
 
```
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Excessive Slow Queries by Host, Excessive Slow Queries Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, Replication Errors, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries by Users, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Servers, Top 10 Errors, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts by Failed Login Attempts, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Failed Login Attempts, Top 10 Warnings, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json "log" nodrop
| parse regex field=mariadb_log_message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" // Pttrn2-vrtn4
| parse regex field=query_block "SET timestamp=(?<set_timestamp>\d*);(?:\\n|\n)(?<sql_cmd>[\s\S]*);" nodrop
| parse regex field=sql_cmd "[^a-zA-Z]*(?<sql_cmd_type>[a-zA-Z]+)(?:\s|\\n|\n)" nodrop
| parse field=sql_cmd "# administrator command: *" as admn_sql_cmd
 
```
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Excessive Slow Queries Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, Replication Errors, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Servers, Top 10 Errors, Top 10 Hosts by Failed Login Attempts, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Failed Login Attempts, Top 10 Warnings, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json "log" nodrop
| parse regex field=mariadb_log_message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" nodrop // Pttrn2-vrtn4
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Excessive Slow Queries Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, Replication Errors, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Servers, Top 10 Errors, Top 10 Hosts by Failed Login Attempts, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Failed Login Attempts, Top 10 Warnings, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json "log" nodrop
| parse regex field=mariadb_log_message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "SET timestamp=(?<set_timestamp>\d*);(?:\\n|\n)(?<sql_cmd>[\s\S]*);" nodrop
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" nodrop // Pttrn2-vrtn4
| parse regex field=sql_cmd "[^a-zA-Z]*(?<sql_cmd_type>[a-zA-Z]+)(?:\s|\\n|\n)" nodrop
| parse field=sql_cmd "# administrator command: *" as admn_sql_cmd
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, Replication Errors, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Servers, Top 10 Errors, Top 10 Hosts by Failed Login Attempts, Top 10 Users by Failed Login Attempts, Top 10 Warnings, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json "log" nodrop
| parse regex field=mariadb_log_message "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)"
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, Replication Errors, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 Errors, Top 10 Hosts by Failed Login Attempts, Top 10 Users by Failed Login Attempts, Top Errors, Top Warnings



## Parser:
```
| json "log" nodrop
| parse regex field=mariadb_log_message "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, Replication Errors, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 Errors, Top 10 Hosts by Failed Login Attempts, Top 10 Users by Failed Login Attempts, Top Errors, Top Warnings



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
 
```
### Use Cases:
Log Reduce



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)"
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, Replication Errors, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 Errors, Top 10 Hosts by Failed Login Attempts, Top 10 Users by Failed Login Attempts, Top 10 Warnings, Top Errors, Top Warnings



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, Replication Errors, Server Start and Shutdown Events Over Time, Slow Queries Over Time, Stopped Servers, Top 10 Errors, Top 10 Hosts by Failed Login Attempts, Top 10 Users by Failed Login Attempts, Top 10 Warnings, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Access denied for user '*'@'*' (using password: YES)" as user, ip_address
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 Hosts by Failed Login Attempts, Top 10 Users by Failed Login Attempts, Top Errors, Top Warnings



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Slave SQL thread initialized, * replication in log '*' at position *, relay log '*' position: *" as State,ReplicationLog,ReplicationPosition,ReplayLog,RelayPosition nodrop
| parse field=ErrorMsg "Slave SQL thread * because it reached its UNTIL position *" as State, StoppedUntilPosition nodrop
| parse field=ErrorMsg "Error reading relay log event: slave SQL thread was *" as state nodrop
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, Replication Errors, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries Over Time, Stopped Servers, Top 10 Errors, Top 10 Hosts by Failed Login Attempts, Top 10 Users by Failed Login Attempts, Top 10 Warnings, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Slave SQL thread initialized, * replication in log '*' at position *, relay log '*' position: *" as State,ReplicationLog,ReplicationPosition,ReplayLog,RelayPosition nodrop
| parse field=ErrorMsg "Slave SQL thread exiting, replication * in log '*' at position *" as state,ReplicationLog,RelayPosition nodrop
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, Replication Errors, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries Over Time, Stopped Servers, Top 10 Errors, Top 10 Hosts by Failed Login Attempts, Top 10 Users by Failed Login Attempts, Top 10 Warnings, Top Errors, Top Reasons for Replication Failures, Top Warnings


