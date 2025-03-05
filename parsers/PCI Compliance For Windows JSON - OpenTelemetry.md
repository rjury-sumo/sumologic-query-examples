# Parsers For PCI Compliance For Windows JSON - OpenTelemetry

## Parser:
```
| json "event_id.id", "computer", "message" as event_id, host, msg_summary nodrop
 
```
### Use Cases:
Actions by Privileged Accounts, Policy Changes, Service Execution Trend, Service Stopped, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Enabled, User Account Logged Off



## Parser:
```
| json "event_id.id", "computer", "message" as event_id, host, msg_summary nodrop
| json "details.Subject.Logon ID", "details.Subject.Domain Name" as src_user, src_domain nodrop
 
```
### Use Cases:
System Time Change, Tampering Audit Logs, User Account Created, User Account Enabled, User Account Logged Off



## Parser:
```
| json "event_id.id", "computer", "message", "event_data" as event_id, host, msg_summary, event_data nodrop
| parse field=event_data "\"SubjectUserName\":\"*\"" as src_user nodrop
| parse field=event_data "\"SubjectDomainName\":\"*\"" as src_domain nodrop
 
```
### Use Cases:
System Time Change, User Account Enabled, User Account Logged Off



## Parser:
```
| json "event_id.id", "computer", "message", "event_data" as event_id, host, msg_summary, event_data nodrop
| parse field=event_data "\"SubjectUserName\":\"*\"" as src_user nodrop
| parse field=event_data "\"SubjectDomainName\":\"*\"" as src_domain nodrop
| parse field=event_data "\"TargetUserName\":\"*\"" as dest_user nodrop
| parse field=event_data "\"TargetDomainName\":\"*\"" as dest_domain nodrop
 
```
### Use Cases:
Actions by Privileged Accounts, All Windows Updates, Default Login - Failure, Default Login - Success, Failed Logins, Policy Changes, Recent Windows Update Failures, Service Execution Trend, Service Stopped, Successful Logins, Sucessful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Disabled, Not Deleted Over 1 Day, User Account Enabled, User Account Enabled, not Logged in over 1 Day, User Account Locked Out, User Account Logged Off, Windows Update Summary, Windows Update Summary by Host, Windows Update Trend



## Parser:
```
| json "event_id.id", "computer", "message", "event_data" as event_id, host, msg_summary, event_data nodrop
| parse field=event_data "\"SubjectUserName\":\"*\"" as src_user nodrop
| parse field=event_data "\"SubjectDomainName\":\"*\"" as src_domain nodrop
| parse field=event_data "\"TargetUserName\":\"*\"" as dest_user nodrop
| parse field=event_data "\"TargetDomainName\":\"*\"" as dest_domain nodrop
| parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop
| parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as error_code, Update nodrop
| parse field=Update "(*)" as kbnum nodrop
 
```
### Use Cases:
Actions by Privileged Accounts, All Windows Updates, Default Login - Failure, Default Login - Success, Failed Logins, Policy Changes, Recent Windows Update Failures, Service Execution Trend, Service Stopped, Successful Logins, Sucessful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Disabled, Not Deleted Over 1 Day, User Account Enabled, User Account Locked Out, User Account Logged Off, Windows Update Summary, Windows Update Summary by Host, Windows Update Trend



## Parser:
```
| json "event_id.id", "computer", "message", "event_data" as event_id, host, msg_summary, event_data nodrop
| parse field=event_data "\"SubjectUserName\":\"*\"" as src_user nodrop
| parse field=event_data "\"SubjectDomainName\":\"*\"" as src_domain nodrop
| parse field=event_data "\"TargetUserName\":\"*\"" as dest_user nodrop
| parse field=event_data "\"TargetDomainName\":\"*\"" as dest_domain nodrop
| parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop
| parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as error_code, Update nodrop
| parse field=Update "(*)" as kbnum nodrop 
 
```
### Use Cases:
Actions by Privileged Accounts, All Windows Updates, Default Login - Failure, Default Login - Success, Failed Logins, Policy Changes, Recent Windows Update Failures, Service Execution Trend, Service Stopped, Successful Logins, Sucessful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Disabled, Not Deleted Over 1 Day, User Account Enabled, User Account Locked Out, User Account Logged Off, Windows Update Summary by Host



## Parser:
```
| json "event_id.id", "computer", "message", "event_data" as event_id, host, msg_summary, event_data nodrop
| parse field=event_data "\"SubjectUserName\":\"*\"" as src_user nodrop
| parse field=event_data "\"SubjectDomainName\":\"*\"" as src_domain nodrop
| parse regex field=msg_summary "The (?<service>\w.+?) service entered the (?<state>\w+) state" nodrop
 
```
### Use Cases:
Actions by Privileged Accounts, Policy Changes, Service Execution Trend, Service Stopped, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Enabled, User Account Logged Off



## Parser:
```
| json "event_id.id", "computer", "message", "event_data" as event_id, host, msg_summary,event_data  nodrop
| parse field=event_data "\"SubjectUserName\":\"*\"" as src_user nodrop
| parse field=event_data "\"SubjectDomainName\":\"*\"" as src_domain nodrop
| parse field=event_data "\"TargetUserName\":\"*\"" as dest_user nodrop
| parse field=event_data "\"TargetDomainName\":\"*\"" as dest_domain nodrop
 
```
### Use Cases:
Actions by Privileged Accounts, All Windows Updates, Default Login - Failure, Default Login - Success, Failed Logins, Policy Changes, Recent Windows Update Failures, Service Execution Trend, Service Stopped, Successful Logins, Sucessful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Disabled, Not Deleted Over 1 Day, User Account Enabled, User Account Enabled, not Logged in over 1 Day, User Account Locked Out, User Account Logged Off, User Account Password Reset, Windows Update Summary, Windows Update Summary by Host, Windows Update Trend



## Parser:
```
| json "event_id.id", "computer", "message", "event_data" as event_id, host, msg_summary,event_data nodrop
| parse field=event_data "\"SubjectUserName\":\"*\"" as src_user nodrop
| parse field=event_data "\"SubjectDomainName\":\"*\"" as src_domain nodrop
| parse field=event_data "\"TargetUserName\":\"*\"" as dest_user nodrop
| parse field=event_data "\"TargetDomainName\":\"*\"" as dest_domain nodrop
 
```
### Use Cases:
Actions by Privileged Accounts, All Windows Updates, Default Login - Failure, Default Login - Success, Excessive Failed Access Attempts, Failed Logins, Policy Changes, Recent Windows Update Failures, Service Execution Trend, Service Stopped, Successful Logins, Sucessful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Changed, User Account Created, User Account Deleted, User Account Disabled, User Account Disabled, Not Deleted Over 1 Day, User Account Enabled, User Account Enabled, not Logged in over 1 Day, User Account Locked Out, User Account Logged Off, User Account Password Changes, User Account Password Reset, Windows Update Summary, Windows Update Summary by Host, Windows Update Trend



## Parser:
```
| json "event_id.id", "computer", "message", "event_data" as event_id, host, msg_summary,event_data nodrop
| parse field=event_data "\"SubjectUserName\":\"*\"" as src_user nodrop
| parse field=event_data "\"SubjectDomainName\":\"*\"" as src_domain nodrop
| parse regex field=msg_summary "The (?<service>\w.+?) service entered the (?<state>\w+) state" nodrop
 
```
### Use Cases:
Actions by Privileged Accounts, Service Execution Trend, System Time Change, Tampering Audit Logs, User Account Created, User Account Enabled, User Account Logged Off



## Parser:
```
| json "event_id.id", "computer", "message", "event_data", "channel", "keywords" as event_id, host, msg_summary,event_data, channel, Keywords nodrop
| parse field=event_data "\"SubjectUserName\":\"*\"" as src_user nodrop
| parse field=event_data "\"SubjectDomainName\":\"*\"" as src_domain nodrop
| parse field=event_data "\"TargetUserName\":\"*\"" as dest_user nodrop
| parse field=event_data "\"TargetDomainName\":\"*\"" as dest_domain nodrop
| parse field=event_data "\"IpAddress\":\"*\"" as src_ip
| parse field=event_data "\"IpPort\":\"*\"" as src_port
| parse field=event_data "\"LogonType\":\"*\"" as logon_type
| parse field=event_data "\"WorkstationName\":\"*\"" as src_host
| parse field=event_data "\"Status\":\"*\"" as status
| parse field=event_data "\"SubStatus\":\"*\"" as sub_status
| json "details.Failure Information.Failure Reason" as failure_reason
 
```
### Use Cases:
Actions by Privileged Accounts, Default Login - Failure, Default Login - Success, Failed Logins, Policy Changes, Service Execution Trend, Service Stopped, Successful Logins, Sucessful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Disabled, Not Deleted Over 1 Day, User Account Enabled, User Account Locked Out, User Account Logged Off



## Parser:
```
| json "event_id.id", "computer", "message", "event_data", "channel", "keywords" as event_id, host, msg_summary,event_data, channel, Keywords nodrop
| parse field=event_data "\"SubjectUserName\":\"*\"" as src_user nodrop
| parse field=event_data "\"SubjectDomainName\":\"*\"" as src_domain nodrop
| parse field=event_data "\"TargetUserName\":\"*\"" as dest_user nodrop
| parse field=event_data "\"TargetDomainName\":\"*\"" as dest_domain nodrop
| parse field=event_data "\"LogonType\":\"*\"" as logon_type nodrop
| parse field=event_data "\"IpAddress\":\"*\"" as src_ip
| parse field=event_data "\"IpPort\":\"*\"" as src_port
| parse field=event_data "\"WorkstationName\":\"*\"" as src_host
| parse field=event_data "\"Status\":\"*\"" as status
| parse field=event_data "\"SubStatus\":\"*\"" as sub_status
| json "details.Failure Information.Failure Reason" as failure_reason
 
```
### Use Cases:
Actions by Privileged Accounts, All Windows Updates, Default Login - Failure, Default Login - Success, Excessive Failed Access Attempts, Failed Logins, Policy Changes, Recent Windows Update Failures, Service Execution Trend, Service Stopped, Successful Logins, Sucessful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Disabled, Not Deleted Over 1 Day, User Account Enabled, User Account Enabled, not Logged in over 1 Day, User Account Locked Out, User Account Logged Off, User Account Password Reset, Windows Update Summary, Windows Update Summary by Host, Windows Update Trend



## Parser:
```
| json "event_id.id", "computer", "message", "event_data", "keywords" as event_id, host, msg_summary, event_data, msg_type nodrop
| parse field=event_data "\"SubjectUserName\":\"*\"" as src_user nodrop
| parse field=event_data "\"SubjectDomainName\":\"*\"" as src_domain nodrop
| parse field=event_data "\"TargetUserName\":\"*\"" as dest_user nodrop
| parse field=event_data "\"TargetDomainName\":\"*\"" as dest_domain nodrop
 
```
### Use Cases:
Actions by Privileged Accounts, Policy Changes, Service Execution Trend, System Time Change, Tampering Audit Logs, User Account Created, User Account Enabled, User Account Logged Off



## Parser:
```
| json "event_id.id", "computer", "message", "keywords", "event_data", "channel", "level" as event_id, host, msg_summary, Keywords, event_data, channel, level nodrop
| json "event_id.id", "computer", "message", "event_data", "channel", "keywords" as event_id, host, msg_summary,event_data, channel, Keywords nodrop
| parse field=event_data "\"SubjectUserName\":\"*\"" as src_user nodrop
| parse field=event_data "\"SubjectDomainName\":\"*\"" as src_domain nodrop
| parse field=event_data "\"TargetUserName\":\"*\"" as dest_user nodrop
| parse field=event_data "\"TargetDomainName\":\"*\"" as dest_domain nodrop
| parse field=event_data "\"IpAddress\":\"*\"" as src_ip
| parse field=event_data "\"IpPort\":\"*\"" as src_port
| parse field=event_data "\"LogonType\":\"*\"" as logon_type
| parse field=event_data "\"WorkstationName\":\"*\"" as src_host
 
```
### Use Cases:
Actions by Privileged Accounts, Default Login - Success, Failed Logins, Policy Changes, Service Execution Trend, Service Stopped, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Disabled, Not Deleted Over 1 Day, User Account Enabled, User Account Locked Out, User Account Logged Off



## Parser:
```
| json "event_id.id", "computer", "message", "keywords", "event_data", "channel", "level" as event_id, host, msg_summary, Keywords, event_data, channel, level nodrop
| parse field=event_data "\"SubjectUserName\":\"*\"" as src_user nodrop
| parse field=event_data "\"SubjectDomainName\":\"*\"" as src_domain nodrop
| parse field=event_data "\"TargetUserName\":\"*\"" as dest_user nodrop
| parse field=event_data "\"TargetDomainName\":\"*\"" as dest_domain nodrop
| parse field=event_data "\"IpAddress\":\"*\"" as src_ip
| parse field=event_data "\"IpPort\":\"*\"" as src_port
 
```
### Use Cases:
Actions by Privileged Accounts, Default Login - Success, Failed Logins, Policy Changes, Service Execution Trend, Service Stopped, Sucessful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Disabled, Not Deleted Over 1 Day, User Account Enabled, User Account Locked Out, User Account Logged Off



## Parser:
```
| json "event_id.id", "computer", "message", "keywords", "event_data", "channel", "level" as event_id, host, msg_summary, Keywords, event_data, channel, level nodrop
| parse field=event_data "\"SubjectUserName\":\"*\"" as src_user nodrop
| parse field=event_data "\"SubjectDomainName\":\"*\"" as src_domain nodrop
| parse field=event_data "\"TargetUserName\":\"*\"" as dest_user nodrop
| parse field=event_data "\"TargetDomainName\":\"*\"" as dest_domain nodrop
| parse field=event_data "\"IpAddress\":\"*\"" as src_ip
| parse field=event_data "\"IpPort\":\"*\"" as src_port
| parse field=event_data "\"WorkstationName\":\"*\"" as src_host
| parse field=event_data "\"LogonType\":\"*\"" as logon_type
 
```
### Use Cases:
Actions by Privileged Accounts, Default Login - Success, Failed Logins, Policy Changes, Service Execution Trend, Service Stopped, Successful Logins, Sucessful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Disabled, Not Deleted Over 1 Day, User Account Enabled, User Account Locked Out, User Account Logged Off


