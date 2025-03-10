# Parsers For Windows 2012+ (JSON)

## Parser:
```
| json "Computer", "Level", "Keywords" as host, level, keywords nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer" as event_id, host nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Channel" as event_id, host, channel nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Channel", "Message", "Level" as event_id, host, channel, msg_summary, level nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
| parse field=msg_summary "Windows Installer * the product. Product Name: *. Product Version: *. Product Language: *. Manufacturer: *. * success or error status: *." as action, product_name, product_version, product_language, manufacturer, activity, status nodrop | parse field=msg_summary "Product: * -- * completed *." as product_name, activity, status nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "EventData.AccountName", "EventData.AccountDomain", "EventData.SessionName", "EventData.ClientName", "EventData.ClientAddress", "Channel", "EventData.LogonID" as event_id, host, dest_user, dest_domain, session_name, src_host, src_ip, channel, LogonID nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Level" as event_id, host, level nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Level", "Message" as event_id, host, level, msg_summary nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Level", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "Channel", "Keywords" as event_id, host, event_type, msg_summary, src_user, src_domain, channel, Keywords nodrop
| parse regex field=msg_summary "Audit Policy Change:\s+(?<audit_policy_change>[\s\S]*)" nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Level", "Message", "Keywords", "Channel" as event_id, host, event_type, msg_summary, Keywords, channel nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Level", "Message", "Keywords", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.IpAddress", "EventData.IpPort", "Channel" as event_id, host, event_type, msg_summary, Keywords, src_user, src_domain, dest_user, dest_domain, src_ip, src_port, channel nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Level", "Message", "Keywords", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "Channel", "Task" as event_id, host, event_type, msg_summary, Keywords, src_user, src_domain, dest_user, dest_domain, channel, task nodrop
| parse regex field=msg_summary "Changed Attributes:\s+(?<changedAttributes>[\s\S]*?)Additional Information:" nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Level", "Message", "Keywords", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.IpAddress", "EventData.IpPort", "EventData.SubStatus", "Channel" as event_id, host, event_type, msg_summary, Keywords, src_user, src_domain, dest_user, dest_domain, src_ip, src_port, result_code, channel nodrop
| parse regex field=msg_summary "Change Type:\s+(?<change_type>[\s\S]*?)Subject:" nodrop
| parse regex field=msg_summary "Changed Attributes:\s+(?<changed_attributes>[\s\S]*?)Additional Information:" nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message" as event_id, host, msg_summary nodrop
| parse regex field = msg_summary "(?<msg_summary>.*\.*)" 
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "Channel" as event_id, host, msg_summary, channel nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" 
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "Channel" as event_id, host, msg_summary, channel nodrop 
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "Channel" as event_id, host, msg_summary, channel nodrop 
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "Channel", "Keywords" as event_id, host, msg_summary, channel, Keywords nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.AccountName", "EventData.ServiceName", "EventData.ServiceType", "EventData.StartType", "EventData.ImagePath", "Provider.EventSourceName"  as event_id, host, msg_summary, account_name, service_name, service_type, service_start_type, service_image_path, event_source_name nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.LogonType", "EventData.FailureReason", "EventData.IpAddress", "EventData.IpPort", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.WorkstationName", "Channel", "EventData.Status", "EventData.SubStatus", "EventData.Workstation", "Keywords" as event_id, host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, work_station, Keywords nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.LogonType", "EventData.FailureReason", "EventData.IpAddress", "EventData.IpPort", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.WorkstationName", "Channel", "EventData.Status", "EventData.SubStatus", "EventData.Workstation", "Keywords" as event_id, host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, workstation, Keywords nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.LogonType", "EventData.FailureReason", "EventData.IpAddress", "EventData.IpPort", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.WorkstationName", "Channel", "EventData.Status", "EventData.SubStatus", "Keywords" as event_id, host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, Keywords nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.param1", "EventData.param2", "Channel", "Provider.EventSourceName" as event_id, host, msg_summary, service_name, service_state, channel, event_source_name nodrop 
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.DSName", "Task", "EventData.DSType", "EventData.ObjectDN", "EventData.ObjectClass", "Keywords", "Channel", "Level" as event_id, host, msg_summary, src_user, src_domain, directory_service_name, task, directory_service_type, object_dn, object_class, Keywords, channel, level nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.SubjectLogonId", "EventData.DSName", "EventData.DSType", "EventData.ObjectDN", "EventData.ObjectClass", "EventData.AttributeValue", "Task", "Keywords", "Channel", "Level" as event_id, host, msg_summary, src_user, src_domain, src_LogonId, directory_service_name, directory_service_type, object_dn, object_class, AttributeValue, task, Keywords, channel, level nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "Channel"  as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, channel nodrop
| parse regex field=msg_summary "Changed Attributes:\s+(?<changed_attributes>[\s\S]*?)Additional Information:"
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "Channel" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, channel nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "Channel", "keywords" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, channel, keywords nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.GroupName", "EventData.GroupDomain", "Channel" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, group_name, group_domain, channel nodrop
| parse regex field=msg_summary "Subject:[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Member:[\s\S]+?Security ID:\s+(?<member_user_name>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r\"]+?)\r[\s\S]+?Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop 
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.GroupName", "EventData.GroupDomain", "Channel", "EventData.MemberName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, group_name, group_domain, channel, MemberName nodrop
| parse regex field=msg_summary "Subject:[\s\S]+?Account Name:[\s\S]+?Member:[\s\S]+?Security ID:\s+(?<member_user_name>[^\r\"]+?)\r[\s\S]+?Account Name:[\s\S]+?Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop 
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.GroupName", "EventData.GroupDomain", "Channel", "EventData.MemberName", "Task" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, group_name, group_domain, channel, MemberName, task nodrop
| parse regex field=msg_summary "(?:New|Deleted) Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop 
| parse regex field=msg_summary "Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.TargetUserName", "EventData.Workstation", "EventData.Status", "EventData.PackageName", "Channel", "Keywords" as event_id, host, msg_summary, logon_account, workstation, status, Authentication_Package, channel, Keywords nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.TargetUserName", "EventData.Workstation", "EventData.Status", "EventData.SubStatus", "Keywords" as event_id, host, msg_summary, src_user, src_host, status, sub_status, Keywords nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "Execution.ThreadID", "Execution.ProcessID", "Channel", "EventData.updateTitle", "EventData.updateRevisionNumber" as event_id, host, msg_summary, thread_id, process_id, channel, update_title, update_revision_number nodrop
| parse regex field=update_title "(?<kbnum>(?:kb|KB)\d+)\D" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "Execution.ThreadID", "Execution.ProcessID", "Channel", "EventData.updateTitle", "EventData.updateRevisionNumber", "EventData.errorCode" as event_id, host, msg_summary, thread_id, process_id, channel, update_title, update_revision_number, error_code nodrop
| parse regex field=update_title "(?<kbnum>(?:kb|KB)\d+)\D" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "Keywords", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.IpAddress", "EventData.IpPort", "Channel", "Level" as event_id, host, msg_summary, Keywords, src_user, src_domain, dest_user, dest_domain, src_ip, src_port, channel, level nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "EventID", "Computer", "Message", "UserData.LogFileCleared.SubjectUserName", "UserData.LogFileCleared.SubjectDomainName", "Channel", "Keywords" as event_id, host, msg_summary, src_user, src_domain, channel, Keywords nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "Level", "Keywords" as level, keywords
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts



## Parser:
```
| json "Provider.EventSourceName", "Keywords" as event_source_name, Keywords nodrop
 
```
### Use Cases:
(Kerberos) Failed Logins on the Domain Controller or Member Servers, (NTLM) Failed Logins, Account Policy Changes, All Directory Service Changes, All Directory Service Object Creations, All Fatal or Warning Messages by Source Host, All User Account Changes, Audit Log Cleared, Audit Policy Changes, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Over time, Failed Logins Source Location, Failed Updates by Host, Failed Updates by KB Number, Firewall Changes, Installations and UnInstallations, Level Breakdown, Logins by Hour, Multiple Failed Logins by Same User, Multiple Failed Logins on Local Machine, New Accounts Created, Recent Policy Changes, Report Messages, Service Events by Type, Service Installed, Service Starts, Service Stops, Successful Group Creations, Successful Login Source Location, Successful Logins, Successful Logons Over time, Successful RDP Reconnects, Successful Updates by Host, Successful Updates by KB number, System Operations, System Restarted, System Restarts, Top 10 Service Operations, Top Error Codes, Top Messages, Top Reasons for Failed Logins, Top Security Events, Top Services Installed, Unauthorized Account Creations, Update Results by KB number, User Account Changed, User Account Deleted, User Added to Administrative Groups, User Added to Group, User Locked-out, User Password Changes, User Password Reset Attempts


