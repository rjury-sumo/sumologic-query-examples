# Parsers For PCI Compliance For Windows JSON

## Parser:
```
| json "EventID", "Computer", "Message" as event_id, host, msg_summary nodrop
| json "UserData.LogFileCleared.SubjectUserName", "UserData.LogFileCleared.SubjectDomainName" as src_user, src_domain nodrop
 `n```
### Use Cases:
System Time Change, Tampering Audit Logs, User Account Created, User Account Enabled



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.LogonType", "EventData.FailureReason", "EventData.IpAddress", "EventData.IpPort", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.WorkstationName", "Channel", "EventData.Status", "EventData.SubStatus", "EventData.Workstation", "Keywords" as event_id, dest_host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, work_station, Keywords nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
 `n```
### Use Cases:
Actions by Privileged Accounts, All Windows Updates, Default Login - Failure, Default Login - Success, Excessive Failed Access Attempts, Failed Logins, Policy Changes, Recent Windows Update Failures, Service Execution Trend, Service Stopped, Successful Logins, Sucessful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Disabled, Not Deleted Over 1 Day, User Account Enabled, User Account Locked, User Account Password Reset, Windows Update Summary, Windows Update Summary by Host, Windows Update Trend



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.LogonType", "EventData.FailureReason", "EventData.IpAddress", "EventData.IpPort", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.WorkstationName", "Channel", "EventData.Status", "EventData.SubStatus", "EventData.Workstation", "Keywords" as event_id, host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, work_station, Keywords nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
 `n```
### Use Cases:
Actions by Privileged Accounts, Default Login - Failure, Default Login - Success, Failed Logins, Policy Changes, Service Execution Trend, Service Stopped, Successful Logins, Sucessful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Enabled, User Account Locked



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain nodrop
 `n```
### Use Cases:
Actions by Privileged Accounts, All Windows Updates, Default Login - Failure, Default Login - Success, Excessive Failed Access Attempts, Failed Logins, Policy Changes, Recent Windows Update Failures, Service Execution Trend, Service Stopped, Successful Logins, Sucessful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Disabled, Not Deleted Over 1 Day, User Account Enabled, User Account Locked, User Account Password Changes, User Account Password Reset, User Account Unlocked, Windows Update Summary, Windows Update Summary by Host, Windows Update Trend



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain nodrop
| parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop
| parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as error_code, Update nodrop
| parse field=Update "(*)" as kbnum nodrop
 `n```
### Use Cases:
Actions by Privileged Accounts, Default Login - Failure, Default Login - Success, Failed Logins, Policy Changes, Recent Windows Update Failures, Service Execution Trend, Service Stopped, Successful Logins, Sucessful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Enabled, User Account Locked



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain nodrop
| parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop
| parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as error_code, Update nodrop
| parse field=Update "(*)" as kbnum nodrop 
 `n```
### Use Cases:
Actions by Privileged Accounts, All Windows Updates, Default Login - Failure, Default Login - Success, Failed Logins, Policy Changes, Recent Windows Update Failures, Service Execution Trend, Service Stopped, Successful Logins, Sucessful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Enabled, User Account Locked, Windows Update Summary by Host



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain nodrop
| parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop
| parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as errorCode, Update nodrop
| parse field=Update "(*)" as kbnum nodrop
 `n```
### Use Cases:
Actions by Privileged Accounts, All Windows Updates, Default Login - Failure, Default Login - Success, Failed Logins, Policy Changes, Recent Windows Update Failures, Service Execution Trend, Service Stopped, Successful Logins, Sucessful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Enabled, User Account Locked, Windows Update Summary, Windows Update Summary by Host, Windows Update Trend



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.UserWorkstations" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, src_host nodrop
 `n```
### Use Cases:
Actions by Privileged Accounts, System Time Change, Tampering Audit Logs, User Account Created, User Account Enabled



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "keywords" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, msg_type nodrop
 `n```
### Use Cases:
Actions by Privileged Accounts, Policy Changes, Service Execution Trend, System Time Change, Tampering Audit Logs, User Account Created, User Account Enabled



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName" as event_id, host, msg_summary, src_user, src_domain nodrop
 `n```
### Use Cases:
System Time Change, User Account Enabled



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName" as event_id, host, msg_summary, src_user, src_domain nodrop
| parse regex field=msg_summary "The (?<service>\w.+?) service entered the (?<state>\w+) state" nodrop
 `n```
### Use Cases:
Actions by Privileged Accounts, Policy Changes, Service Execution Trend, Service Stopped, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Enabled



## Parser:
```
| json "EventID", "Computer", "Message", "Keywords", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.IpAddress", "EventData.IpPort", "Channel", "Level", "EventData.LogonType", "EventData.WorkstationName" as event_id, host, msg_summary, Keywords, src_user, src_domain, dest_user, dest_domain, src_ip, src_port, channel, level, logon_type, src_host  nodrop
 `n```
### Use Cases:
Actions by Privileged Accounts, Default Login - Success, Failed Logins, Policy Changes, Service Execution Trend, Service Stopped, Successful Logins, Sucessful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Enabled, User Account Locked



## Parser:
```
| json "EventID", "Computer", "Message", "Keywords", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.IpAddress", "EventData.IpPort", "Channel", "Level", "EventData.LogonType", "EventData.WorkstationName" as event_id, host, msg_summary, Keywords, src_user, src_domain, dest_user, dest_domain, src_ip, src_port, channel, level, logon_type, src_host nodrop
 `n```
### Use Cases:
Actions by Privileged Accounts, Default Login - Success, Failed Logins, Policy Changes, Service Execution Trend, Service Stopped, Sucessful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Enabled, User Account Locked


