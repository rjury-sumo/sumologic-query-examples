# Parsers For Windows 7+ - 2008 (Legacy)

## Parser:
```
| parse "EventCode = *;" as event_id
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Failed Logins by Hour, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| parse "EventCode = *;" as event_id
| parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Failure Reason:\s\s(?<fail_reason>[^.]+?)[.][\s\S]+?Status:[\s\S]+?Sub Status:\s\s(?<result_code>0x[A-Fa-f\d]+)\b" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Failed Logins by Hour, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logons Over time, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, Top 10 Service Operations, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| parse "EventCode = *;" as event_id
| parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Session:[\s\S]+?Session Name:\s+(?<session_name>[^\r]+?)\r" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Client Name:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Client Address:[\s\r]+(?<src_ip>[^\r]+?)\r" nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Failed Logins by Hour, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, Top 10 Service Operations, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| parse "EventCode = *;" as event_id
| parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Failed Logins by Hour, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logins, Successful Logons Over time, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, Top 10 Service Operations, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| parse "EventCode = *;" as event_id
| parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Changes to Administrative Groups, Errors and Warnings Over Time, Event Distribution Over Time, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logons Over time, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, Top 10 Service Operations, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| parse "EventCode = *;" as event_id
| parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop
| parse regex "Message = \"(?<msg_summary>[^\r]+?)(?:\r|\.;)" nodrop
```
### Use Cases:
Account Policy Changes, Audit Log Cleared, Audit Policy Changes, Firewall Changes



## Parser:
```
| parse "EventCode = *;" as event_id
| parse "Type = \"*\"" as msg_type
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logons Over time, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, Top 10 Service Operations, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| parse "EventCode = *;" as event_id | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Changes to Administrative Groups, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logons Over time, Successful Updates by Host, Successful Updates by KB number, System Restarted, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Update Results by KB number



## Parser:
```
| parse "EventCode = *;" as event_id | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop | parse "User = \"*\"" as src_user nodrop 
```
### Use Cases:
Account Policy Changes, Audit Log Cleared



## Parser:
```
| parse "EventCode = *;" as event_id nodrop
| parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop
| parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)\r" nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Changes to Administrative Groups, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logons Over time, Successful Updates by Host, Successful Updates by KB number, System Restarted, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes



## Parser:
```
| parse "EventCode = *;" as event_id nodrop
| parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop
| parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)(?:\r|\";)" nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Changes to Administrative Groups, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logons Over time, Successful Updates by Host, Successful Updates by KB number, System Restarted, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| parse "EventCode = *;" as event_id nodrop
| parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop
| parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop   
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r" nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Changes to Administrative Groups, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logons Over time, Successful Updates by Host, Successful Updates by KB number, System Restarted, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out



## Parser:
```
| parse "EventCode = *;" as event_id nodrop
| parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop
| parse regex "Message = \"(?<msg_summary>[^\r]+)\r" nodrop
| parse regex "CategoryString = \"(?<category>[^\"]+?)\";[\s\S]+?Logfile = \"Security\"" nodrop
```
### Use Cases:
Account Policy Changes, Audit Log Cleared, Audit Policy Changes, Firewall Changes, Recent Policy Changes



## Parser:
```
| parse "EventCode = *;" as event_id nodrop
| parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop
| parse regex "Message = \"(?<msg_summary>[^\r]+)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r" nodrop
```
### Use Cases:
Account Policy Changes, Audit Log Cleared, Audit Policy Changes



## Parser:
```
| parse "EventCode = *;" as event_id nodrop
| parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop
| parse regex "Message = \"(?<msg_summary>[^\r]+)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Domain:[\s\S]+?Domain Name:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop
```
### Use Cases:
Account Policy Changes



## Parser:
```
| parse "EventCode = *;" as event_id nodrop
| parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop
| parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, Audit Log Cleared, Audit Policy Changes, Firewall Changes, Recent Policy Changes, Service Events by Type, Service Installed, Service Starts, Service Stops, System Restarted, Top Security Events



## Parser:
```
| parse "EventCode = *;" as event_id nodrop
| parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop
| parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop
| parse "Type = \"*\";" as msg_type nodrop
| parse regex "Authentication Package:\s+(?<Authentication_Package>[^\r]+)\r[\s\S]+?Logon Account:\s+(?<logon_account>[^\r]+)\r[\s\S]+?Source Workstation:\s+(?<workstation>[^\r]+)\r[\s\S]+?Error Code:\s+(?<error_code>[^\r\"]+?)(?:\r|\";)" nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, Audit Log Cleared, Audit Policy Changes, Firewall Changes, Recent Policy Changes, Top Security Events



## Parser:
```
| parse "EventCode = *;" as event_id nodrop
| parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop
| parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop
| parse regex "Service Name:\s+(?<service_name>[^\r]+?)\r[\s\S]+?Service File Name:\s+(?:\"|\s*)(?<service_filename>[^\"\r]+?)(?:\"|\r)[\s\S]+?Service Type:\s+(?<service_type>[^\r]+?)\r[\s\S]+?Service Start Type:\s+(?<service_start_type>[^\r]+)\r[\s\S]+?Service Account:\s+(?<service_account>[^\"]+)\";" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r" nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, Audit Log Cleared, Audit Policy Changes, Firewall Changes, Recent Policy Changes, Service Events by Type, Service Installed, Top Security Events



## Parser:
```
| parse "EventCode = *;" as event_id nodrop
| parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop
| parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop
| parse regex field=msg_summary "The (?<service_name>\w.+?) service entered the (?<service_state>\w+) state" nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, Audit Log Cleared, Audit Policy Changes, Firewall Changes, Recent Policy Changes, Service Events by Type, Service Installed, Service Starts, Service Stops, Top Security Events



## Parser:
```
| parse "EventCode = *;" as event_id nodrop
| parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop
| parse regex "Message = \"The (?<service>\w.+?) service entered the (?<state>\w+) state"
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Changes to Administrative Groups, Errors and Warnings Over Time, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logons Over time, Successful Updates by Host, Successful Updates by KB number, System Restarted, Top 10 Service Operations, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| parse "EventCode = *;" as event_id nodrop
| parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop
| parse regex "CategoryString = \"(?<category>[^\"]+?)\";[\s\S]+?Logfile = \"Security\"" nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Failed Logins by Hour, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, Top 10 Service Operations, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop
| parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop | parse "Category = *;" as category nodrop | parse "CategoryString = \"*\";" as CategoryString nodrop | parse "Type = \"*\";" as type nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Directory Service:[\s\S]+?Name:\s+(?<directory_service_name>[^\r]+?)\r[\s\S]+?Type:\s+(?<directory_service_type>[^\r\"]+?)\r" nodrop | parse regex "DN:\t(?<object_dn>.*)\r" nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, Audit Log Cleared, Audit Policy Changes, Firewall Changes, Recent Policy Changes, Top Security Events



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop
| parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop | parse "Type = \"*\";" as msg_type nodrop
| parse regex "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop | parse regex "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
| parse regex "Logon Account:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Source Workstation:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Error Code:\s+(?<error_code>[^\r\"]+?)(?:\r|\";)" nodrop | parse regex "Logon Account:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Source Workstation:\s*\r[\s\S]+?Error Code:\s+(?<error_code>[^\r\"]+?)(?:\r|\";)" nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, Account Policy Changes, Audit Log Cleared, Audit Policy Changes, Firewall Changes, Recent Policy Changes, Top Security Events



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)\r" nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Changes to Administrative Groups, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logons Over time, Successful Updates by Host, Successful Updates by KB number, System Restarted, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)\r" nodrop | parse regex "Changed Attributes:\s+(?<changedAttributes>[\s\S]*?)Additional Information:"
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Changes to Administrative Groups, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logons Over time, Successful Updates by Host, Successful Updates by KB number, System Restarted, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Unauthorized Account Creations, Update Results by KB number, User Account Changed



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Subject:[\s\S]+?Account Name:\s+(?<dest_user>[^\r\"]+?)\r[\s\S]+?(?:New|Deleted) Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Subject:[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Member:[\s\S]+?Account Name:\s+(?<dest_user>[^\r\"]+?)\r[\s\S]+?Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Changes to Administrative Groups, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logons Over time, Successful Updates by Host, Successful Updates by KB number, System Restarted, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Subject:[\s\S]+?Account Name:\s+(?<src_user>[^\r\"]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?(?:New|Deleted|\s*)\s*Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Changes to Administrative Groups, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Updates by Host, Successful Updates by KB number, System Restarted, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Update Results by KB number



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logon Type:\s+(?<logon_type>\d+)*" nodrop | parse regex "Failure Information:\s+Failure Reason:\s+(?<fail_reason>[^.\r]+?)[.\r]" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Changes to Administrative Groups, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Updates by Host, Successful Updates by KB number, System Restarted, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Update Results by KB number



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse "CategoryString = \"*\";" as category nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)(?:\r|\";)" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r" nodrop
| parse regex "Changed Attributes:\s+(?<changedAttributes>[\s\S]*?)Additional Information:" nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Updates by Host, Successful Updates by KB number, System Restarted, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Update Results by KB number



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse regex "Logon Type:\s+(?<logon_type>\d+)*" nodrop | parse regex "Failure Information:\s+Failure Reason:\s+(?<fail_reason>[^.\r]+?)[.\r]" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop | parse regex "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop | parse regex "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop | parse regex "Logon Account:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Source Workstation:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Error Code:\s+(?<error_code>[^\r\"]+?)(?:\r|\";)" nodrop | parse regex "Logon Account:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Source Workstation:\s*\r[\s\S]+?Error Code:\s+(?<error_code>[^\r\"]+?)(?:\r|\";)" nodrop | parse "Type = \"*\";" as type
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Changes to Administrative Groups, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Multiple Failed Logins by Same User, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Updates by Host, Successful Updates by KB number, System Restarted, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Update Results by KB number



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r\"]+?)(?:\r|\";)" nodrop | parse regex "Subcategory:\s+(?<Subcategory>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Subject:[\s\S]+?Account Name:\s+(?<dest_user>[^\r\"]+?)\r[\s\S]+?(?:New|Deleted) Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Subject:[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Member:[\s\S]+?Account Name:\s+(?<dest_user>[^\r\"]+?)\r[\s\S]+?Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop | parse "Category = *;" as category nodrop | parse "CategoryString = \"*\";" as categoryString nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Failed Logins by Hour, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| parse "EventCode = *;" as EventCode
| parse "Computer = \"*\";" as Computer
| parse "Message = \"*\";" as Message
| parse "Type = \"*\";" as EventType
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logons Over time, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, Top 10 Service Operations, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| parse "Logfile = \"*\";" as _sourceName
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Changes to Administrative Groups, Errors and Warnings Over Time, Event Distribution Over Time, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logons Over time, Successful Updates by Host, Successful Updates by KB number, System Restarted, Top 10 Service Operations, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| parse "Type = \"*\";" as evtType
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Changes to Administrative Groups, Errors and Warnings Over Time, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logons Over time, Successful Updates by Host, Successful Updates by KB number, System Restarted, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| parse "Type = \"*\";" as msg_type nodrop | parse "SourceName = \"*\";" as event_source nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, Audit Log Cleared, Audit Policy Changes, Firewall Changes, Recent Policy Changes, Service Events by Type, Top Security Events



## Parser:
```
| parse regex "\d{4}-\d{2}-\d{2}\s+\d{2}:\d{2}:\d{2}:\d+\s+(?<process_id>\S*)\s+(?<thread_id>\S*)\s+(?<component>\S*).*[^a-zA-Z0-9](?<kbnum>(?:kb|KB)\d+)\D" nodrop
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r\"]+?)(?:\r|\";)" nodrop | parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as errorCode, Update nodrop | parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop | parse field=update "(*)." as kbnum nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, Audit Log Cleared, Audit Policy Changes, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, System Restarted, Top Reasons for Failed Logins, Top Security Events



## Parser:
```
| parse regex "\d{4}-\d{2}-\d{2}\s+\d{2}:\d{2}:\d{2}:\d+\s+(?<process_id>\S*)\s+(?<thread_id>\S*)\s+(?<component>\S*).*[^a-zA-Z0-9](?<kbnum>(?:kb|KB)\d+)\D" nodrop
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r\"]+?)(?:\r|\";)" nodrop | parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as errorCode, Update nodrop | parse field=update "(*)." as kbnum nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, Audit Log Cleared, Audit Policy Changes, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Recent Policy Changes, Service Events by Type, Service Installed, Service Starts, Service Stops, System Restarted, Top Reasons for Failed Logins, Top Security Events



## Parser:
```
| parse regex "\d{4}-\d{2}-\d{2}\s+\d{2}:\d{2}:\d{2}:\d+\s+(?<process_id>\S*)\s+(?<thread_id>\S*)\s+(?<component>\S*).*[^a-zA-Z0-9](?<kbnum>(?:kb|KB)\d+)\D" nodrop
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r\"]+?)(?:\r|\";)" nodrop | parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop | parse field=update "(*)" as kbnum nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, Audit Log Cleared, Audit Policy Changes, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Updates by Host, Successful Updates by KB number, System Restarted, Top Reasons for Failed Logins, Top Security Events



## Parser:
```
| parse regex "\d{4}-\d{2}-\d{2}\s+\d{2}:\d{2}:\d{2}:\d+\s+(?<process_id>\S*)\s+(?<thread_id>\S*)\s+(?<component>\S*).*[^a-zA-Z0-9](?<kbnum>(?:kb|KB)\d+)\D" nodrop | parse regex "\d{4}-\d{2}-\d{2}\s+\d{2}:\d{2}:\d{2}:\d+\s+(?<process_id>\S*)\s+(?<thread_id>\S*)\s+(?<component>\S*).*(?:\s+0x|hr\s=\s)(?<errorcode>[0-9a-fA-F]+)" nodrop
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r\"]+?)(?:\r|\";)" nodrop | parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as errorCode, Update nodrop | parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop | parse field=update "(*)." as kbnum nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Failed Logins by Hour, Failed Logins Over time, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Top Windows Update Error Codes, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| parse regex "\d{4}-\d{2}-\d{2}\s+\d{2}:\d{2}:\d{2}:\d+\s+(?<process_id>\S*)\s+(?<thread_id>\S*)\s+(?<component>\S*).*[^a-zA-Z0-9](?<update_result>(?:Success|Failure)).*[^a-zA-Z0-9](?<kbnum>(?:kb|KB)\d+)\D" nodrop
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r\"]+?)(?:\r|\";)" nodrop | parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as errorCode, Update nodrop | parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop | parse field=update "(*)" as kbnum nodrop | parse field=msg_summary "Installation *: " as update_result nodrop
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, Audit Log Cleared, Audit Policy Changes, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Updates by Host, Successful Updates by KB number, System Restarted, Top Error Codes, Top Reasons for Failed Logins, Top Security Events, Update Results by KB number


