# Parsers For Active Directory Legacy

## Parser:
```
| parse "EventCode = *;" as event_id | parse "Computer = \"*\";" as dest_host nodrop | parse "ComputerName = \"*\";" as dest_host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse regex "Logon Type:\s+(?<logon_type>\d+)*" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop  
| parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Client Name:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Client Address:[\s\r]+(?<src_ip>[^\r]+)" nodrop
 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, LDAP Replication Failures, Login attempts to disabled accounts, New Account Creation, New Computer Account Creation, New Group Creation, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Successful User Logins, Trend of new users and disabled users over time, User added to group



## Parser:
```
| parse "EventCode = *;" as event_id | parse "Computer = \"*\";" as dest_host nodrop | parse "ComputerName = \"*\";" as dest_host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse regex "Logon Type:\s+(?<logon_type>\d+)*" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop  
| parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Client Name:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Client Address:[\s\r]+(?<src_ip>[^\r]+)" nodrop 
 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, LDAP Replication Failures, Login attempts to disabled accounts, New Account Creation, New Computer Account Creation, New Group Creation, OU Creation, OU Deletion, Policy Changes, Trend of new users and disabled users over time, User added to group



## Parser:
```
| parse "EventCode = *;" as event_id nodrop
| parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop
| parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)(?:\r|\";)" nodrop
 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, LDAP Replication Failures, Login attempts to disabled accounts, New Account Creation, New Computer Account Creation, New Group Creation, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Trend of new users and disabled users over time, User added to group



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse "CategoryString = \"*\";" as CategoryString nodrop | parse regex "Subcategory:\s+(?<subcategory>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)(?:\r|\";)" nodrop
 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, LDAP Replication Failures, Login attempts to disabled accounts, New Account Creation, New Computer Account Creation, New Group Creation, OU Creation, OU Deletion, Policy Changes



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop
| parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)\r" nodrop
 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, LDAP Replication Failures, Login attempts to disabled accounts, New Account Creation, New Computer Account Creation, New Group Creation, OU Creation, OU Deletion, Password Change Attempts, Policy Changes, Trend of new users and disabled users over time, User added to group



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop
| parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop   
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r" nodrop
 
```
### Use Cases:
Account Lock Out Events



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r" nodrop
| parse regex "Directory Service:[\s\S]+?Name:\s+(?<directory_ServiceName>[^\r]+?)\r" nodrop
| parse "Object:\r\n\tDN:\t*\r\n\tGUID" as dest_ou nodrop
 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, LDAP Replication Failures, Login attempts to disabled accounts, New Account Creation, New Computer Account Creation, New Group Creation, OU Creation



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r" nodrop
| parse regex "Directory Service:[\s\S]+?Name:\s+(?<directory_ServiceName>[^\r]+?)\r" nodrop
| parse regex "Directory Service:[\s\S]+?Type:\s+(?<directory_ServiceType>[^\r]+?)\r" nodrop
| parse "Object:\r\n\tDN:\t*\r\n\tGUID" as dest_ou nodrop
 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, LDAP Replication Failures, Login attempts to disabled accounts, New Account Creation, New Computer Account Creation, New Group Creation, OU Creation, OU Deletion



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)(?:\r|\";)" nodrop
 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, LDAP Replication Failures, Login attempts to disabled accounts, New Account Creation, New Computer Account Creation, New Group Creation, OU Creation, OU Deletion, Policy Changes, Trend of new users and disabled users over time



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)\r" nodrop
 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, LDAP Replication Failures, Login attempts to disabled accounts, New Account Creation



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Subject:[\s\S]+?Account Name:\s+(?<dest_user>[^\r\"]+?)\r[\s\S]+?(?:New|Deleted) Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Subject:[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Member:[\s\S]+?Account Name:\s+(?<dest_user>[^\r\"]+?)\r[\s\S]+?Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop 
 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, LDAP Replication Failures, Login attempts to disabled accounts, New Account Creation, New Computer Account Creation, New Group Creation, OU Creation, OU Deletion, Policy Changes, Trend of new users and disabled users over time, User added to group



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Subject:[\s\S]+?Account Name:\s+(?<src_user>[^\r\"]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?(?:New|Deleted|\s*)\s*Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop
 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, LDAP Replication Failures, Login attempts to disabled accounts, New Account Creation, New Computer Account Creation, New Group Creation



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse "CategoryString = \"*\";" as CategoryString nodrop | parse regex "Subcategory:\s+(?<subcategory>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)(?:\r|\";)" nodrop
 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, LDAP Replication Failures, Login attempts to disabled accounts, New Account Creation, New Computer Account Creation



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse "CategoryString = \"*\";" as CategoryString nodrop | parse regex "Subcategory:\s+(?<subcategory>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)(?:\r|\";)" nodrop
| parse regex "Directory Service:[\s\S]+?Name:\s+(?<directory_ServiceName>[^\r]+?)\r" nodrop | parse regex "Directory Service:[\s\S]+?Type:\s+(?<directory_ServiceType>[^\r]+?)\r" nodrop | parse "Object:\r\n\tDN:\t*\r\n\tGUID" as dest_ou nodrop
 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse "CategoryString = \"*\";" as CategoryString nodrop | parse regex "Subcategory:\s+(?<subcategory>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)(?:\r|\";)" nodrop
 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, LDAP Replication Failures, Login attempts to disabled accounts, New Account Creation, New Computer Account Creation, New Group Creation, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse "CategoryString = \"*\";" as CategoryString nodrop | parse regex "Subcategory:\s+(?<subcategory>[^\r]+?)\r" nodrop | parse "Type = \"*\";" as msg_type | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)(?:\r|\";)" nodrop
 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, LDAP Replication Failures



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse regex "Logon Type:\s+(?<logon_type>\d+)*" nodrop | parse regex "Failure Information:\s+Failure Reason:\s+(?<fail_reason>[^.\r]+?)[.\r]" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)(?:\r|\";)" nodrop | parse regex "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop | parse "Type = \"*\";" as type | parse regex "Logon Account:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Source Workstation:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Error Code:\s+(?<error_code>[^\r\"]+?)(?:\r|\";)" nodrop | parse regex "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop  
 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, LDAP Replication Failures, Login attempts to disabled accounts



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse regex "Logon Type:\s+(?<logon_type>\d+)*" nodrop | parse regex "Failure Information:\s+Failure Reason:\s+(?<fail_reason>[^.\r]+?)[.\r]" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop | parse regex "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop | parse "Type = \"*\";" as type | parse regex "Logon Account:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Source Workstation:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Error Code:\s+(?<error_code>[^\r\"]+?)(?:\r|\";)" nodrop | parse regex "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, LDAP Replication Failures, Login attempts to disabled accounts, New Account Creation, New Computer Account Creation, New Group Creation, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Trend of new users and disabled users over time, User added to group



## Parser:
```
| parse "EventCode = *;" as event_id nodrop | parse "Computer = \"*\";" as host nodrop | parse "ComputerName = \"*\";" as host nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse regex "Logon Type:\s+(?<logon_type>\d+)*" nodrop | parse regex "Failure Information:\s+Failure Reason:\s+(?<fail_reason>[^.\r]+?)[.\r]" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop | parse regex "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop | parse "Type = \"*\";" as type | parse regex "Logon Account:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Source Workstation:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Error Code:\s+(?<error_code>[^\r\"]+?)(?:\r|\";)" nodrop | parse regex "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop 
 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, LDAP Replication Failures, Login attempts to disabled accounts, New Account Creation, New Computer Account Creation, New Group Creation, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Trend of new users and disabled users over time, User added to group



## Parser:
```
| parse regex "^Computer SearchBase==\"(?<searchBase>[^\"]+)\" DistinguishedName==\"(?<computerDN>[^\"]+)\" Name==\"(?<computerName>[^\"]+)\" ObjectGUID==\"(?<computerGUID>[^ ]+)\" DNSHostName==\"(?<computerDNSName>[^\" ]+)\" OperatingSystem==\"(?<computerOS>[^\"]+)\" IPv4Address==\"(?<computerIP>[^ ]+)\"" 
 
```
### Use Cases:
Account Lock Out Events, Computer OS per Domain, Directory Service Object Changes, Failed User Logins, Groups per Domain, Last Successful Login for a specific user, Last Successful Login Report, LDAP Replication Failures, Login attempts to disabled accounts, New Account Creation, New Computer Account Creation, New Group Creation, Organizational Units per Domain, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Topology, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| parse regex "^DomainController DName==\"(?<domainDN>[^ \"]+)\" DomainName==\"(?<domainName>[^\"]+)\" Forest==\"(?<forest>[^\"]+)\" NetBIOSName==\"(?<NetBiosName>[^\"]+)\" ControllerHostName==\"(?<dcHostName>[^\"]+)\" IP==\"(?<dcIP>[^ ]+)\" Site==\"(?<site>[^ ]+)\"" | count by forest,site,domainDN,NetBiosName | 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, LDAP Replication Failures, Login attempts to disabled accounts, New Account Creation, New Computer Account Creation, New Group Creation, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Topology, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| parse regex "^Group SearchBase==\"(?<searchBase>[^\"]+)\" DistinguishedName==\"(?<groupDN>[^\"]+)\" Name==\"(?<groupName>[^\"]+)\" ObjectGUID==\"(?<groupGUID>[^ ]+)\" GroupCategory==\"(?<groupCat>[^\"]*)\"" | searchBase as Domain 
 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, Failed User Logins, Groups per Domain, Last Successful Login for a specific user, Last Successful Login Report, LDAP Replication Failures, Login attempts to disabled accounts, New Account Creation, New Computer Account Creation, New Group Creation, Organizational Units per Domain, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Topology, Trend of new users and disabled users over time, User Account Changes, User added to group



## Parser:
```
| parse regex "^OU SearchBase==\"(?<searchBase>[^\"]+)\" DistinguishedName==\"(?<ouDN>[^\"]+)\" Name==\"(?<ouName>[^\"]+)\" ObjectGUID==\"(?<ouGUID>[^ ]+)\"" | searchBase as domain | 
```
### Use Cases:
Account Lock Out Events, Directory Service Object Changes, Failed User Logins, Last Successful Login for a specific user, Last Successful Login Report, LDAP Replication Failures, Login attempts to disabled accounts, New Account Creation, New Computer Account Creation, New Group Creation, Organizational Units per Domain, OU Creation, OU Deletion, Password Change Attempts, Password Reset Attempts, Policy Changes, Successful User Logins, Top 10 Domain Controllers with Most Login Failures, Top 10 Domain Controllers with the Most Login Failure Rate, Top 10 Domains with Most Login Failures, Topology, Trend of new users and disabled users over time, User Account Changes, User added to group


