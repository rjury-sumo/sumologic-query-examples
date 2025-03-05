# Parsers For Active Directory 2012+ (JSON)

## Parser:
```
| json "EventID", "Computer", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.LogonType", "EventData.LogonGuid", "EventData.SubjectLogonId", "EventData.TargetLogonId", "Channel", "Message"  as event_id, host, src_user, src_domain, dest_user, dest_domain, logon_type, LogonGuid, SubjectLogonId, TargetLogonId, channel, msg_summary nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Keywords" as event_id, host, keywords nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Keywords", "EventData.IpAddress" as event_id, host, Keywords, src_ip nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Level", "Message", "Keywords", "Channel" as event_id, host, event_type, msg_summary, Keywords, channel nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Level", "Message", "Keywords", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "Channel", "Task" as event_id, host, event_type, msg_summary, Keywords, src_user, src_domain, dest_user, dest_domain, channel, task nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Level", "Message", "Keywords", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "Channel", "Task" as event_id, host, event_type, msg_summary, Keywords, src_user, src_domain, dest_user, dest_domain, channel, task nodrop
| parse regex field=msg_summary "Changed Attributes:\s+(?<changedAttributes>[\s\S]*?)Additional Information:" nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Message" as event_id, host, msg_summary nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Message" as event_id, host, msg_summary nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.LogonType", "Channel" as event_id, host, msg_summary, logon_type, channel nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.LogonType", "EventData.FailureReason", "EventData.IpAddress", "EventData.IpPort", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.WorkstationName", "Channel", "EventData.Status", "EventData.SubStatus", "EventData.Workstation", "Keywords" as event_id, host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, work_station, Keywords nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Failure Information:\s+(?<test>.*)" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.LogonType", "EventData.FailureReason", "EventData.IpAddress", "EventData.IpPort", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.WorkstationName", "Channel", "EventData.Status", "EventData.SubStatus", "EventData.Workstation", "Keywords" as event_id, host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, work_station, Keywords nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.LogonType", "EventData.FailureReason", "EventData.IpAddress", "EventData.IpPort", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.WorkstationName", "Channel", "EventData.Status", "EventData.SubStatus", "EventData.Workstation", "Keywords" as event_id, host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, work_station, Keywords nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.LogonType", "EventData.FailureReason", "EventData.IpAddress", "EventData.IpPort", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.WorkstationName", "Channel", "EventData.Status", "EventData.SubStatus", "EventData.Workstation", "Keywords" as event_id, host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, work_station, Keywords nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop  
| parse regex field=msg_summary "Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop
| parse regex field=msg_summary "Client Name:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Client Address:[\s\r]+(?<src_ip>[^\r]+)" nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.SubjectLogonId", "EventData.DSName", "EventData.DSType", "EventData.ObjectDN", "EventData.ObjectClass", "EventData.AttributeValue", "Task", "Keywords", "Channel", "Level" as event_id, host, msg_summary, src_user, src_domain, src_LogonId, directory_service_name, directory_service_type, object_dn, object_class, AttributeValue, task, Keywords, channel, level nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.SubjectLogonId", "EventData.DSName", "EventData.DSType", "EventData.ObjectDN", "EventData.ObjectClass", "Task", "Keywords", "Channel", "Level" as event_id, host, msg_summary, src_user, src_domain, src_LogonId, directory_service_name, directory_service_type, object_dn, object_class, task, Keywords, channel, level nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "Channel" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, channel nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "Channel", "keywords" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, channel, keywords nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "Channel", "Task" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, channel, task nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.GroupName", "EventData.GroupDomain", "Channel", "EventData.MemberName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, group_name, group_domain, channel, MemberName nodrop
| parse regex field=msg_summary "Subject:[\s\S]+?Account Name:[\s\S]+?Member:[\s\S]+?Security ID:\s+(?<member_user_name>[^\r\"]+?)\r[\s\S]+?Account Name:[\s\S]+?Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop 
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.SamAccountName", "EventData.HomeDirectory", "Channel", "Task", "Keywords" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, SamAccountName, HomeDirectory, channel, task, Keywords nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Message", "Keywords", "Channel", "Level", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.SubjectLogonId", "EventData.PrivilegeList" as event_id, host, msg_summary, Keywords, channel, Level, src_user, src_domain, src_logonid, PrivilegeList nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Message", "Keywords", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.IpAddress", "EventData.IpPort", "Channel", "Level", "EventData.LogonType" as event_id, host, msg_summary, Keywords, src_user, src_domain, dest_user, dest_domain, src_ip, src_port, channel, level, logon_type nodrop
| parse regex field=msg_summary "Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop  
| parse regex field=msg_summary "Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop
| parse regex field=msg_summary "Client Name:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Client Address:[\s\r]+(?<src_ip>[^\r]+)" nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Message", "Keywords", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.IpAddress", "EventData.IpPort", "Channel", "Level", "EventData.LogonType" as event_id, host, msg_summary, Keywords, src_user, src_domain, dest_user, dest_domain, src_ip, src_port, channel, level, logon_type nodrop
| parse regex field=msg_summary "Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop  
| parse regex field=msg_summary "Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop
| parse regex field=msg_summary "Client Name:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Client Address:[\s\r]+(?<src_ip>[^\r]+)" nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| json "EventID", "Computer", "Message", "Task" as event_id, host, msg_summary, task nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```
### Use Cases:
Account Lock Out Events, Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, Login attempts to disabled accounts, Logon/off Activity, New Account Creation, New Computer Account Creation, New Group Creation, Object Creation, Object Deletion, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Rights Management, Successes vs Failures, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Top 10 Messages, Trend of new users and disabled users over time, User Account Changes, User added to group


