# Parsers For MariaDB

## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
 `n```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Server Start and Shutdown Events Over Time, Stopped Servers, Top Errors, Top Warnings



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)"
 `n```
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Excessive Slow Queries by Host, Excessive Slow Queries Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Errors, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries by Users, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Servers, Top 10 Errors, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts by Failed Login Attempts, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Failed Login Attempts, Top 10 Warnings, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
 `n```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Start-Stop Events, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 Hosts by Failed Login Attempts, Top 10 Users by Failed Login Attempts, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "*: error * to master '*' - retry-time: * retries: *, Error_code: *" as subsystem, action, Master, Retry_time, Retries, Error_code nodrop
| parse field=ErrorMsg "*: Got fatal error *, Error_code: *" as subsystem, Error_Msg, Error_code nodrop
| parse field=ErrorMsg "*: * ( server_errno=*)" as subsystem, Error_Msg, Error_code nodrop
| parse field=ErrorMsg "*: The slave I/O thread stops because *. Error:*, Error_code: *" as subsystem, Error_Msg_details, Error_Msg, Error_code nodrop
| parse field=ErrorMsg "*: * Default database: '*'. Query: '*', Error_code: *" as subsystem, Error_Msg, Default_Database, Query, Error_code nodrop
| parse field=ErrorMsg "*: Cou*d not execute *" as subsystem, f1, Error_Msg nodrop
| parse field=ErrorMsg "*: Master command *, Error_code: *" as subsystem, Error_Msg, Error_code nodrop
| parse field=ErrorMsg "* thread couldn't register on master" as subsystem nodrop
 `n```
### Use Cases:
MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Access denied for user '*'@'*' (using password: YES)" as user, ip_address
 `n```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 Hosts by Failed Login Attempts, Top 10 Users by Failed Login Attempts, Top Errors, Top Warnings



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Slave SQL thread * because it reached its UNTIL position *" as State, StoppedUntilPosition
 `n```
### Use Cases:
MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Slave SQL thread initialized, * replication in log '*' at position *, relay log '*' position: *" as replication_state, ReplicationLog, ReplicationPosition, ReplayLog, RelayPosition nodrop
| parse field=ErrorMsg "Slave SQL thread * because it reached its UNTIL position *" as replication_state, StoppedUntilPosition nodrop
| parse field=ErrorMsg "Error reading relay log event: slave SQL thread was *" as replication_state nodrop
 `n```
### Use Cases:
MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Slave SQL thread initialized, * replication in log '*' at position *, relay log '*' position: *" as State,ReplicationLog,ReplicationPosition,ReplayLog,RelayPosition nodrop
| parse field=ErrorMsg "Slave SQL thread * because it reached its UNTIL position *" as State, StoppedUntilPosition nodrop
| parse field=ErrorMsg "Error reading relay log event: slave SQL thread was *" as state nodrop
 `n```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 Hosts by Failed Login Attempts, Top 10 Users by Failed Login Attempts, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
| parse field=ErrorMsg "Slave SQL thread initialized, * replication in log '*' at position *, relay log '*' position: *" as State,ReplicationLog,ReplicationPosition,ReplayLog,RelayPosition nodrop
| parse field=ErrorMsg "Slave SQL thread exiting, replication * in log '*' at position *" as state,ReplicationLog,RelayPosition nodrop
 `n```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Start-Stop Events, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 Hosts by Failed Login Attempts, Top 10 Users by Failed Login Attempts, Top Errors, Top Warnings



## Parser:
```
| json auto maxdepth 1 nodrop
| parse field=mariadb_log_message "Access denied for user '*'@'*' (using password: YES)" as user, ip_address
 `n```
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Excessive Slow Queries by Host, Excessive Slow Queries Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Errors, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries by Users, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Servers, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts by Failed Login Attempts, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Failed Login Attempts, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=mariadb_log_message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
 `n```
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries by Host, Excessive Slow Queries Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Errors, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries by Users, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Servers, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts by Failed Login Attempts, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Failed Login Attempts, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=mariadb_log_message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ \s\[(?<ip_addr>\S*?)\]" nodrop
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]" nodrop // Pttrn1-vrtn1
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @\s+\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" nodrop // Pttrn1-vrtn2
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" // Pttrn1-vrtn3
 `n```
### Use Cases:
MariaDB -  Slow Query Server Location



## Parser:
```
| json auto maxdepth 1 nodrop
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
 `n```
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Excessive Slow Queries by Host, Excessive Slow Queries Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries by Users, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Servers, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts by Failed Login Attempts, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Failed Login Attempts, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=mariadb_log_message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ \s\[(?<ip_addr>\S*?)\]" nodrop
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]" nodrop // Pttrn1-vrtn1
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @\s+\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" nodrop // Pttrn1-vrtn2
| parse regex field=query_block "# User@Host: \S+?\[(?<user>\S*?)\] @ (?<host_name>\S+)\s\[(?<ip_addr>\S*?)\]\s+Id:\s+(?<Id>\d{1,10})" // Pttrn1-vrtn3
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" nodrop // Pttrn2-vrtn4
 `n```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Users, Stopped Servers, Top 10 Hosts by Failed Login Attempts, Top 10 Users by Failed Login Attempts, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=mariadb_log_message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" // Pttrn2-vrtn4
 `n```
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Excessive Slow Queries by Host, Excessive Slow Queries Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Errors, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries by Users, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Servers, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts by Failed Login Attempts, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Failed Login Attempts, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=mariadb_log_message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" // Pttrn2-vrtn4
| parse regex field=query_block "SET timestamp=(?<set_timestamp>\d*);(?:\\n|\n)(?<sql_cmd>[\s\S]*);" nodrop
| parse regex field=sql_cmd "[^a-zA-Z]*(?<sql_cmd_type>[a-zA-Z]+)(?:\s|\\n|\n)" nodrop
| parse field=sql_cmd "# administrator command: *" as admn_sql_cmd
 `n```
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Excessive Slow Queries by Host, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries by Users, Slow Query by Cmd Type, Stopped Servers, Top 10 Hosts by Failed Login Attempts, Top 10 Users by Failed Login Attempts, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=mariadb_log_message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" nodrop // Pttrn2-vrtn4
 `n```
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Excessive Slow Queries by Host, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries by Users, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Servers, Top 10 Hosts by Failed Login Attempts, Top 10 Users by Failed Login Attempts, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=mariadb_log_message "(?<query_block># User@Host:[\S\s]+?SET timestamp=\d+;[\S\s]+?;)" multi
| parse regex field=query_block "SET timestamp=(?<set_timestamp>\d*);(?:\\n|\n)(?<sql_cmd>[\s\S]*);" nodrop
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d.]*)\s+Rows_examined:\s+(?<rows_examined>[\d.]*)\s+Rows_affected:\s+(?<rows_affected>[\d.]*)\s+Rows_read:\s+(?<rows_read>[\d.]*)\n" nodrop // Pttrn2-vrtn1
| parse regex field=query_block "Schema: (?<schema>(?:\S*|\s)?)\s*Last_errno[\s\S]+?\s+Killed:\s+\d+\n" nodrop // Pttrn2-vrtn2
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)\s+Rows_affected:\s+(?<rows_affected>[\d]*)\s+" nodrop // Pttrn2-vrtn3
| parse regex field=query_block "Query_time:\s+(?<query_time>[\d.]*)\s+Lock_time:\s+(?<lock_time>[\d.]*)\s+Rows_sent:\s+(?<rows_sent>[\d]*)\s+Rows_examined:\s+(?<rows_examined>[\d]*)" nodrop // Pttrn2-vrtn4
| parse regex field=sql_cmd "[^a-zA-Z]*(?<sql_cmd_type>[a-zA-Z]+)(?:\s|\\n|\n)" nodrop
| parse field=sql_cmd "# administrator command: *" as admn_sql_cmd
 `n```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Excessive Slow Queries by Host, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries by Users, Slow Query by Cmd Type, Stopped Servers, Top 10 Hosts by Failed Login Attempts, Top 10 Users by Failed Login Attempts, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=mariadb_log_message "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)"
 `n```
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries by Host, Excessive Slow Queries Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries by Users, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Servers, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts by Failed Login Attempts, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Failed Login Attempts, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| json auto maxdepth 1 nodrop
| parse regex field=mariadb_log_message "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
 `n```
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries by Host, Excessive Slow Queries Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Errors, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries by Users, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Servers, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts by Failed Login Attempts, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Failed Login Attempts, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| parse field=metric mysql_com_* as com | `n```
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Excessive Slow Queries by Host, Excessive Slow Queries Over Time, Executed SQL Statements, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Innodb Data (fsyncs, read, write), Innodb Rows (read, updated, inserted, deleted), Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Errors, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries by Users, Slow Queries Over Time, Slow Query by Cmd Type, Sorts (Rows, Range, Scan, Merge Passes), Stopped Servers, Table Open Cache Hits, Misses and Overflows, Threads (Created, Running, Cached, Connected), Top 10 Errors, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts by Failed Login Attempts, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Failed Login Attempts, Top 10 Warnings, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| parse field=metric mysql_innodb_data_* as data | `n```
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Excessive Slow Queries by Host, Excessive Slow Queries Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Innodb Data (fsyncs, read, write), Innodb Rows (read, updated, inserted, deleted), Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Errors, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries by Users, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Servers, Table Open Cache Hits, Misses and Overflows, Top 10 Errors, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts by Failed Login Attempts, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Failed Login Attempts, Top 10 Warnings, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| parse field=metric mysql_innodb_rows_* as row | `n```
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Excessive Slow Queries by Host, Excessive Slow Queries Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Innodb Rows (read, updated, inserted, deleted), Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Errors, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries by Users, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Servers, Top 10 Errors, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts by Failed Login Attempts, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Failed Login Attempts, Top 10 Warnings, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| parse field=metric mysql_select_* as type | `n```
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Excessive Slow Queries by Host, Excessive Slow Queries Over Time, Executed SQL Statements, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Innodb Data (fsyncs, read, write), Innodb Rows (read, updated, inserted, deleted), Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Errors, Replication Start-Stop Events, Replication Status Over Time, Select Types, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries by Users, Slow Queries Over Time, Slow Query by Cmd Type, Sorts (Rows, Range, Scan, Merge Passes), Stopped Servers, Table Open Cache Hits, Misses and Overflows, Threads (Created, Running, Cached, Connected), Top 10 Errors, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts by Failed Login Attempts, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Failed Login Attempts, Top 10 Warnings, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| parse field=metric mysql_sort_* as sorts | `n```
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Excessive Slow Queries by Host, Excessive Slow Queries Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Innodb Data (fsyncs, read, write), Innodb Rows (read, updated, inserted, deleted), Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Errors, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries by Users, Slow Queries Over Time, Slow Query by Cmd Type, Sorts (Rows, Range, Scan, Merge Passes), Stopped Servers, Table Open Cache Hits, Misses and Overflows, Threads (Created, Running, Cached, Connected), Top 10 Errors, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts by Failed Login Attempts, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Failed Login Attempts, Top 10 Warnings, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| parse field=metric mysql_table_open_cache_* as cache | `n```
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Excessive Slow Queries by Host, Excessive Slow Queries Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Innodb Rows (read, updated, inserted, deleted), Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Errors, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries by Users, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Servers, Table Open Cache Hits, Misses and Overflows, Top 10 Errors, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts by Failed Login Attempts, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Failed Login Attempts, Top 10 Warnings, Top Errors, Top Reasons for Replication Failures, Top Warnings



## Parser:
```
| parse field=metric mysql_threads_* as thread | `n```
### Use Cases:
Avg Execution Time by Slow SQL Cmds, Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors, Excessive Slow Queries (>=15 secs), Excessive Slow Queries by Host, Excessive Slow Queries Over Time, Failed Login Attempts, Failed Login Attempts - Details, Failed Login Attempts - Location, Failed Login Over Time, Innodb Data (fsyncs, read, write), Innodb Rows (read, updated, inserted, deleted), Log Reduce, MariaDB -  Slow Query Server Location, MariaDB - Crash Recovery Attempts by Host, MariaDB - Number of Replication Completion Events by Host, MariaDB - Replication Failures by Host, MariaDB - Server Latest Replication State, MariaDB - Server Latest Running State, MariaDB - Server Up-Down Events by Host, Replication Errors, Replication Start-Stop Events, Replication Status Over Time, Server Start and Shutdown Events Over Time, Slow Queries by Client IPs, Slow Queries by Hosts, Slow Queries by Users, Slow Queries Over Time, Slow Query by Cmd Type, Stopped Servers, Table Open Cache Hits, Misses and Overflows, Threads (Created, Running, Cached, Connected), Top 10 Errors, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts by Failed Login Attempts, Top 10 Slow Queries by Average Execution Time, Top 10 Users by Failed Login Attempts, Top 10 Warnings, Top Errors, Top Reasons for Replication Failures, Top Warnings


