# Parsers For PCI Compliance For Windows

## Parser:
```
| parse "EventCode = *;" as eventCode | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse regex "Logon Type:\s+(?<logon_type>\d+)*" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Client Name:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Client Address:[\s\r]+(?<src_ip>[^\r]+)" nodrop
```
### Use Cases:
Actions by Privileged Accounts, Default Login - Failure, Default Login - Success, Failed Logins, Policy Changes, Service Execution Trend, Service Stopped, Successful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Enabled, User Account Locked



## Parser:
```
| parse "EventCode = *;" as eventCode nodrop
| parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop
| parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)\r" nodrop
```
### Use Cases:
Actions by Privileged Accounts, All Windows Updates, Default Login - Failure, Default Login - Success, Excessive Failed Access Attempts, Failed Logins, Policy Changes, Recent Windows Update Failures, Service Execution Trend, Service Stopped, Successful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Enabled, User Account Locked, User Account Password Changes, User Account UnLocked, Windows Update Summary, Windows Update Summary by Host, Windows Update Trend



## Parser:
```
| parse "EventCode = *;" as eventCode nodrop
| parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop
| parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)(?:\r|\";)" nodrop
```
### Use Cases:
Actions by Privileged Accounts, All Windows Updates, Default Login - Failure, Default Login - Success, Excessive Failed Access Attempts, Failed Logins, Policy Changes, Recent Windows Update Failures, Service Execution Trend, Service Stopped, Successful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account disabled but not deleted, User Account Enabled, User Account Locked, User Account Password Changes, User Account Password Reset, User Account UnLocked, Windows Update Summary, Windows Update Summary by Host, Windows Update Trend



## Parser:
```
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop
| parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop | parse "User = \"*\"" as src_user nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r" nodrop
```
### Use Cases:
Service Stopped, System Time Change, User Account Created, User Account Enabled



## Parser:
```
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse "Message = \"*\";" as msg_summary nodrop
| parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop
| parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as errorCode, Update nodrop
```
### Use Cases:
Actions by Privileged Accounts, Default Login - Failure, Default Login - Success, Failed Logins, Policy Changes, Recent Windows Update Failures, Service Execution Trend, Service Stopped, Successful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Enabled, User Account Locked, Windows Update Summary, Windows Update Summary by Host, Windows Update Trend



## Parser:
```
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse "Message = \"*\";" as msg_summary nodrop | parse "User = \"*\";" as src_user nodrop | parse field=src_user "*\\*" as src_domain, src_user nodrop 
| parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop
| parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as errorCode, Update nodrop
```
### Use Cases:
Actions by Privileged Accounts, All Windows Updates, Default Login - Failure, Default Login - Success, Failed Logins, Policy Changes, Recent Windows Update Failures, Service Execution Trend, Service Stopped, Successful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Enabled, User Account Locked, Windows Update Summary, Windows Update Summary by Host, Windows Update Trend



## Parser:
```
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)\r" nodrop
```
### Use Cases:
Actions by Privileged Accounts, Policy Changes, Service Execution Trend, Service Stopped, System Restarted, System Time Change, User Account Created, User Account Deleted, User Account Enabled, User Account Locked



## Parser:
```
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\"]*)\";" nodrop
```
### Use Cases:
Actions by Privileged Accounts, All Windows Updates, Default Login - Failure, Default Login - Success, Failed Logins, Policy Changes, Recent Windows Update Failures, Service Execution Trend, Service Stopped, Successful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Enabled, User Account Locked, User Account UnLocked, Windows Update Summary, Windows Update Summary by Host, Windows Update Trend



## Parser:
```
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse "User = \"*\"" as src_user nodrop | parse regex "Logon Type:\s+(?<logon_type>\d+)*" nodrop | parse regex "Failure Information:\s+Failure Reason:\s+(?<fail_reason>[^.\r]+?)[.\r]" nodrop | parse regex "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop | parse regex "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop | parse regex "Logon Account:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Source Workstation:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Error Code:\s+(?<error_code>[^\r\"]+?)(?:\r|\";)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)(?:\r|\";|\")" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject:[\s\S]+?Account Name:\s+(?<dest_user>[^\r\"]+?)\r[\s\S]+?(?:New|Deleted) Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject:[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Member:[\s\S]+?Account Name:\s+(?<dest_user>[^\r\"]+?)\r[\s\S]+?Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Domain Name:\s+(?<src_domain>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject:[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Group:[\s\S]+?Group Name:\s+(?<group_name>[^\r]+?)\r\s+?Group Domain:\s+(?<group_domain>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Workstation Name:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop
```
### Use Cases:
Actions by Privileged Accounts, Policy Changes, Service Execution Trend, Service Stopped, System Restarted, System Time Change, User Account Created, User Account Enabled, User Account Locked



## Parser:
```
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r" nodrop
```
### Use Cases:
Service Execution Trend, Service Stopped, System Restarted, System Time Change, User Account Created, User Account Enabled, User Account Locked



## Parser:
```
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)\r" nodrop
```
### Use Cases:
Service Stopped, User Account Created, User Account Enabled



## Parser:
```
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse regex "Logon Type:\s+(?<logon_type>\d+)*" nodrop | parse regex "Failure Information:\s+Failure Reason:\s+(?<fail_reason>[^.\r]+?)[.\r]" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Workstation Name:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop | parse regex "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop | parse "Type = \"*\";" as type | parse regex "Logon Account:\s+(?<src_user>[^\r]*?)\r[\s\S]+?Source Workstation:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Error Code:\s+(?<error_code>[^\r\"]+?)(?:\r|\";)" nodrop | parse regex "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop 
```
### Use Cases:
Actions by Privileged Accounts, All Windows Updates, Default Login - Failure, Default Login - Success, Excessive Failed Access Attempts, Failed Logins, Policy Changes, Recent Windows Update Failures, Service Execution Trend, Service Stopped, Successful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Enabled, User Account Locked, User Account UnLocked, Windows Update Summary, Windows Update Summary by Host, Windows Update Trend



## Parser:
```
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse regex "Logon Type:\s+(?<logon_type>\d+)*" nodrop | parse regex "Failure Information:\s+Failure Reason:\s+(?<fail_reason>[^.\r]+?)[.\r]" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop | parse regex "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop | parse "Type = \"*\";" as type | parse regex "Logon Account:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Source Workstation:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Error Code:\s+(?<error_code>[^\r\"]+?)(?:\r|\";)" nodrop | parse regex "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Workstation Name:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop
```
### Use Cases:
Actions by Privileged Accounts, Default Login - Failure, Default Login - Success, Failed Logins, Policy Changes, Service Execution Trend, Service Stopped, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Enabled, User Account Locked



## Parser:
```
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop
```
### Use Cases:
Service Stopped, System Restarted, System Time Change, User Account Created, User Account Enabled



## Parser:
```
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)(?:\r|\")" nodrop
```
### Use Cases:
User Account Enabled



## Parser:
```
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop | parse "User = \"*\"" as src_user nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Domain Name:\s+(?<src_domain>[^\r]+?)\r" nodrop
```
### Use Cases:
Actions by Privileged Accounts, Policy Changes, Service Execution Trend, Service Stopped, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Enabled, User Account Locked



## Parser:
```
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop | parse "User = \"*\"" as src_user nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:[\s&&[^\r]]+(?<src_user>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject:[\s\S]+?Account Name:[\s&&[^\r]]+(?<src_user>[^\r]+?)\r[\s\S]+?Account Name:[\s&&[^\r]]+(?<dest_user>[^\r\"]+?)(?:\r|\";)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Logon Account:\s(?<dest_user>[^\r\n]+?)(?:\n|\r)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject:[\s\S]+?Account Name:[\s&&[^\r]]+(?<src_user>[^\r]+?)\r[\s\S]+?Member:[\s\S]+?Account Name:[\s&&[^\r]]+(?<dest_user>[^\r\"]+?)\r[\s\S]+?Group:[\s\S]+?(?:Account|Group) Name:[\s&&[^\r]]+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:[\s&&[^\r]]+(?<group_domain>[^\r\"]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject\s*:[\s\S]+?Account Domain:[\s&&[^\r]]+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Domain:[\s&&[^\r]]+(?<dest_domain>[^\r]+?)(?:\r|\";)" nodrop | parse regex "\sType = \"(?<msg_type>[^\"]+?)\";" nodrop | parse "CategoryString = \"*\";" as CategoryString nodrop | parse regex "Audit Policy Change:[\s\S]+Category:[\s\S]+Subcategory:\s+(?<subcategory>[\s\S]+)Subcategory GUID:[\s\S]+Changes:\s+(?<changes>[^\"]*)\";" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject\s*:[\s\S]+?Account Domain:[\s&&[^\r]]+(?<src_domain>[^\r]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r" nodrop 
```
### Use Cases:
Policy Changes, Service Execution Trend, Service Stopped, System Restarted, System Time Change, User Account Created, User Account Enabled, User Account Locked



## Parser:
```
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)(?:\r|\")" nodrop
```
### Use Cases:
Actions by Privileged Accounts, Policy Changes, Service Execution Trend, Service Stopped, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account Enabled, User Account Locked



## Parser:
```
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)(?:\r|\")" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)\r" nodrop
```
### Use Cases:
Actions by Privileged Accounts, All Windows Updates, Default Login - Failure, Default Login - Success, Excessive Failed Access Attempts, Failed Logins, Policy Changes, Recent Windows Update Failures, Service Execution Trend, Service Stopped, Successful Logins, System Restarted, System Time Change, Tampering Audit Logs, User Account Created, User Account Deleted, User Account Disabled, User Account disabled but not deleted, User Account Enabled, User Account Locked, User Account Password Changes, User Account UnLocked, Windows Update Summary, Windows Update Summary by Host, Windows Update Trend



## Parser:
```
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop | parse regex field=msg_summary "The (?<service>\w.+?) service entered the (?<state>\w+) state"
```
### Use Cases:
Service Execution Trend, Service Stopped, System Restarted, System Time Change, User Account Created, User Account Enabled


