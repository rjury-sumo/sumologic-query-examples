# Parsers For PostgreSQL - OpenTelemetry

## Parser:
```
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *:  *" as date,time,time_zone,thread_id,severity,msg
 `n```
### Use Cases:
Activity by Database, Activity by Database Over Time, Activity by User, Activity by User Over Time, Average Query Execution Time, Database System Shut Down Events, Database System Up Events, Errors and Fatal Events, Fatal Errors, Least Common Errors, Log Reduce, Log Severity, Number of Queries Executed by Database, Queries Executed - One Day Time Comparison, Queries Executed Over Time, Queries Executed Over Time - One Day Time Comparison, Query Execution Time Stats



## Parser:
```
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,database,severity,msg
 `n```
### Use Cases:
Activity by Database, Activity by Database Over Time, Activity by User, Activity by User Over Time, Average Query Execution Time, Avg Execution Time by Slow SQL Commands, Connections, Connections Authorized by  Database - Over Time, Database System Shut Down Events, Database System Up Events, Errors and Fatal Events, Failed Authentication by  Database - Over Time, Failed Authentications, Failed Authentications by User and Database, Failed Logins, Fatal Errors, Geo Location of Incoming Connections, Least Common Errors, Log Reduce, Log Severity, Most Common Errors, Number of queries  - Outlier Flag, Number of Queries Executed by Database, Queries Executed - One Day Time Comparison, Queries Executed Over Time, Queries Executed Over Time - One Day Time Comparison, Query Execution Time Stats, Slow Queries, Slow Queries by Database Over Time, Slow Query by Command Type, Slowest Query by Database - One Day Time Comparison, Threat Intel Analysis of Incoming Connections, Top 10 Slow Queries by Database, Top Errors and Warnings, Top Users Firing Slow Queries



## Parser:
```
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db,severity,msg 
 `n```
### Use Cases:
Activity by Database, Activity by Database Over Time, Activity by User, Activity by User Over Time, Average Query Execution Time, Avg Execution Time by Slow SQL Commands, Connections, Connections Authorized by  Database - Over Time, Database System Shut Down Events, Database System Up Events, Errors, Errors and Fatal Events, Failed Authentication by  Database - Over Time, Failed Authentications, Failed Authentications by User and Database, Failed Logins, Fatal Errors, Geo Location of Incoming Connections, Least Common Errors, Log Reduce, Log Severity, Most Common Errors, Number of queries  - Outlier Flag, Number of Queries Executed by Database, Queries Executed - One Day Time Comparison, Queries Executed Over Time, Queries Executed Over Time - One Day Time Comparison, Query Execution Time Stats, Slow Queries, Slow Queries by Database Over Time, Slow Queries Over Time, Slow Query by Command Type, Slowest Query by Database - One Day Time Comparison, Threat Intel Analysis of Incoming Connections, Top 10 Slow Queries by Database, Top Errors and Warnings, Top Users Firing Slow Queries



## Parser:
```
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db,severity,msg 
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
 `n```
### Use Cases:
Activity by Database, Activity by Database Over Time, Activity by User, Activity by User Over Time, Average Query Execution Time, Avg Execution Time by Slow SQL Commands, Connections, Connections Authorized by  Database - Over Time, Database System Shut Down Events, Database System Up Events, Errors, Errors and Fatal Events, Failed Authentication by  Database - Over Time, Failed Authentications, Failed Authentications by User and Database, Failed Logins, Fatal Errors, Geo Location of Incoming Connections, Least Common Errors, Log Reduce, Log Severity, Most Common Errors, Number of queries  - Outlier Flag, Number of Queries Executed by Database, Queries Executed - One Day Time Comparison, Queries executed Over Time, Queries Executed Over Time, Queries Executed Over Time - One Day Time Comparison, Query Execution Time Stats, Slow Queries, Slow Queries by Database Over Time, Slow Queries Over Time, Slow Query by Command Type, Slowest Query by Database - One Day Time Comparison, Threat Intel Analysis of Incoming Connections, Top 10 Slow Queries by Database, Top Errors and Warnings, Top Users Firing Slow Queries



## Parser:
```
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg
 `n```
### Use Cases:
Activity by Database Over Time, Activity by User, Activity by User Over Time, Average Query Execution Time, Errors and Fatal Events, Least Common Errors, Log Reduce, Number of Queries Executed by Database, Queries Executed - One Day Time Comparison, Queries Executed Over Time, Queries Executed Over Time - One Day Time Comparison, Query Execution Time Stats



## Parser:
```
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
 `n```
### Use Cases:
Activity by Database, Activity by Database Over Time, Activity by User, Activity by User Over Time, Average Query Execution Time, Database System Shut Down Events, Database System Up Events, Errors and Fatal Events, Fatal Errors, Least Common Errors, Log Reduce, Log Severity, Most Common Errors, Number of Queries Executed by Database, Queries Executed - One Day Time Comparison, Queries Executed Over Time, Queries Executed Over Time - One Day Time Comparison, Query Execution Time Stats



## Parser:
```
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
 `n```
### Use Cases:
Activity by Database, Activity by Database Over Time, Activity by User, Activity by User Over Time, Average Query Execution Time, Avg Execution Time by Slow SQL Commands, Connections Authorized by  Database - Over Time, Database System Shut Down Events, Database System Up Events, Errors and Fatal Events, Failed Authentication by  Database - Over Time, Failed Authentications, Failed Authentications by User and Database, Fatal Errors, Geo Location of Incoming Connections, Least Common Errors, Log Reduce, Log Severity, Most Common Errors, Number of queries  - Outlier Flag, Number of Queries Executed by Database, Queries Executed - One Day Time Comparison, Queries Executed Over Time, Queries Executed Over Time - One Day Time Comparison, Query Execution Time Stats, Slow Queries, Slow Queries by Database Over Time, Slow Query by Command Type, Slowest Query by Database - One Day Time Comparison, Threat Intel Analysis of Incoming Connections, Top 10 Slow Queries by Database, Top Errors and Warnings, Top Users Firing Slow Queries



## Parser:
```
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
| parse regex field=query "(?:\s|\\n|\n)+(?<sql_cmd_type>(?i)CREATE|DROP|ALTER|TRUNCATE|COMMENT|RENAME|SELECT|INSERT|UPDATE|DELETE|GRANT|INVOKE|BEGIN|COMMIT|ROLLBACK)(?:\s|\\n|\n)+"
 `n```
### Use Cases:
Activity by Database, Activity by Database Over Time, Activity by User, Activity by User Over Time, Average Query Execution Time, Avg Execution Time by Slow SQL Commands, Connections Authorized by  Database - Over Time, Database System Shut Down Events, Database System Up Events, Errors and Fatal Events, Failed Authentication by  Database - Over Time, Failed Authentications, Failed Authentications by User and Database, Fatal Errors, Geo Location of Incoming Connections, Least Common Errors, Log Reduce, Log Severity, Most Common Errors, Number of queries  - Outlier Flag, Number of Queries Executed by Database, Queries Executed - One Day Time Comparison, Queries Executed Over Time, Queries Executed Over Time - One Day Time Comparison, Query Execution Time Stats, Slow Queries by Database Over Time, Slow Query by Command Type, Threat Intel Analysis of Incoming Connections, Top Errors and Warnings



## Parser:
```
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "* * * [*] *@* *:  *" as date,time,time_zone,thread_id,user,db.name,severity,msg 
| parse regex field=msg "duration: (?<execution_time_ms>[\S]+) ms  (?<query>.+)" 
| parse regex field=query "(?:\s|\\n|\n)+(?<sql_cmd_type>CREATE|DROP|ALTER|TRUNCATE|COMMENT|RENAME|SELECT|INSERT|UPDATE|DELETE|GRANT|INVOKE|BEGIN|COMMIT|ROLLBACK)(?:\s|\\n|\n)+"
 `n```
### Use Cases:
Activity by Database, Activity by Database Over Time, Activity by User, Activity by User Over Time, Average Query Execution Time, Avg Execution Time by Slow SQL Commands, Connections Authorized by  Database - Over Time, Database System Shut Down Events, Database System Up Events, Errors and Fatal Events, Failed Authentication by  Database - Over Time, Failed Authentications, Failed Authentications by User and Database, Fatal Errors, Geo Location of Incoming Connections, Least Common Errors, Log Reduce, Log Severity, Most Common Errors, Number of queries  - Outlier Flag, Number of Queries Executed by Database, Queries Executed - One Day Time Comparison, Queries Executed Over Time, Queries Executed Over Time - One Day Time Comparison, Query Execution Time Stats, Threat Intel Analysis of Incoming Connections, Top Errors and Warnings



## Parser:
```
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse "connection received: host=* port=*" as ip,port 
| json field=raw "labels[*].name" as label_name 
 `n```
### Use Cases:
Activity by Database, Activity by Database Over Time, Activity by User, Activity by User Over Time, Average Query Execution Time, Connections Authorized by  Database - Over Time, Database System Shut Down Events, Database System Up Events, Errors and Fatal Events, Failed Authentication by  Database - Over Time, Failed Authentications, Failed Authentications by User and Database, Fatal Errors, Geo Location of Incoming Connections, Least Common Errors, Log Reduce, Log Severity, Most Common Errors, Number of queries  - Outlier Flag, Number of Queries Executed by Database, Queries Executed - One Day Time Comparison, Queries Executed Over Time, Queries Executed Over Time - One Day Time Comparison, Query Execution Time Stats, Threat Intel Analysis of Incoming Connections, Top Errors and Warnings



## Parser:
```
| json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw | parse regex field=_raw "user=(?<user>[\S]+) database=(?<database>[\S]+)"
 `n```
### Use Cases:
Activity by Database, Activity by Database Over Time, Activity by User, Activity by User Over Time, Average Query Execution Time, Avg Execution Time by Slow SQL Commands, Connections, Connections Authorized by  Database - Over Time, Database System Shut Down Events, Database System Up Events, Errors and Fatal Events, Failed Authentication by  Database - Over Time, Failed Authentications, Failed Authentications by User and Database, Fatal Errors, Geo Location of Incoming Connections, Least Common Errors, Log Reduce, Log Severity, Most Common Errors, Number of queries  - Outlier Flag, Number of Queries Executed by Database, Queries Executed - One Day Time Comparison, Queries Executed Over Time, Queries Executed Over Time - One Day Time Comparison, Query Execution Time Stats, Slow Queries, Slow Queries by Database Over Time, Slow Query by Command Type, Slowest Query by Database - One Day Time Comparison, Threat Intel Analysis of Incoming Connections, Top 10 Slow Queries by Database, Top Errors and Warnings, Top Users Firing Slow Queries



## Parser:
```
| parse "connection received: host=* port=*" as ip,port 
 `n```
### Use Cases:
Activity by Database, Activity by Database Over Time, Activity by User, Activity by User Over Time, Average Query Execution Time, Database System Shut Down Events, Database System Up Events, Errors and Fatal Events, Failed Authentication by  Database - Over Time, Failed Authentications, Failed Authentications by User and Database, Fatal Errors, Geo Location of Incoming Connections, Least Common Errors, Log Reduce, Log Severity, Most Common Errors, Number of Queries Executed by Database, Queries Executed - One Day Time Comparison, Queries Executed Over Time, Queries Executed Over Time - One Day Time Comparison, Query Execution Time Stats, Top Errors and Warnings


