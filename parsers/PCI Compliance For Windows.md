# Parsers For PCI Compliance For Windows

**PCI Compliance For Windows/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring - New/Actions by Privileged Accounts**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=Security
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse "User = \"*\"" as src_user nodrop | parse regex "Logon Type:\s+(?<logon_type>\d+)*" nodrop | parse regex "Failure Information:\s+Failure Reason:\s+(?<fail_reason>[^.\r]+?)[.\r]" nodrop | parse regex "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop | parse regex "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop | parse regex "Logon Account:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Source Workstation:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Error Code:\s+(?<error_code>[^\r\"]+?)(?:\r|\";)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)(?:\r|\";|\")" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject:[\s\S]+?Account Name:\s+(?<dest_user>[^\r\"]+?)\r[\s\S]+?(?:New|Deleted) Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject:[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Member:[\s\S]+?Account Name:\s+(?<dest_user>[^\r\"]+?)\r[\s\S]+?Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Domain Name:\s+(?<src_domain>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject:[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Group:[\s\S]+?Group Name:\s+(?<group_name>[^\r]+?)\r\s+?Group Domain:\s+(?<group_domain>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Workstation Name:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring - New/Policy Changes**
```
_sourceCategory = Labs/Windows/OS/Windows (_sourceName=Security or _sourceName=System) ("EventCode = 4902;" or "EventCode = 4904;" or "EventCode = 4905;" or "EventCode = 4906;" or "EventCode = 4907;" or "EventCode = 4912;" or "EventCode = 4715;" or "EventCode = 4717;" or "EventCode = 4719;" or "Audit Policy Change" or "System audit policy was changed" or *policy*change*)
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop | parse "User = \"*\"" as src_user nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:[\s&&[^\r]]+(?<src_user>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject:[\s\S]+?Account Name:[\s&&[^\r]]+(?<src_user>[^\r]+?)\r[\s\S]+?Account Name:[\s&&[^\r]]+(?<dest_user>[^\r\"]+?)(?:\r|\";)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Logon Account:\s(?<dest_user>[^\r\n]+?)(?:\n|\r)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject:[\s\S]+?Account Name:[\s&&[^\r]]+(?<src_user>[^\r]+?)\r[\s\S]+?Member:[\s\S]+?Account Name:[\s&&[^\r]]+(?<dest_user>[^\r\"]+?)\r[\s\S]+?Group:[\s\S]+?(?:Account|Group) Name:[\s&&[^\r]]+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:[\s&&[^\r]]+(?<group_domain>[^\r\"]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject\s*:[\s\S]+?Account Domain:[\s&&[^\r]]+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Domain:[\s&&[^\r]]+(?<dest_domain>[^\r]+?)(?:\r|\";)" nodrop | parse regex "\sType = \"(?<msg_type>[^\"]+?)\";" nodrop | parse "CategoryString = \"*\";" as CategoryString nodrop | parse regex "Audit Policy Change:[\s\S]+Category:[\s\S]+Subcategory:\s+(?<subcategory>[\s\S]+)Subcategory GUID:[\s\S]+Changes:\s+(?<changes>[^\"]*)\";" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject\s*:[\s\S]+?Account Domain:[\s&&[^\r]]+(?<src_domain>[^\r]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r" nodrop 
```

**PCI Compliance For Windows/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring - New/Service Execution Trend**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=System 7036 "EventCode = 7036;"
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop | parse regex field=msg_summary "The (?<service>\w.+?) service entered the (?<state>\w+) state"
```

**PCI Compliance For Windows/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring - New/Service Stopped**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=System 7036 "stopped state" "EventCode = 7036;"
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop | parse regex field=msg_summary "The (?<service>\w.+?) service entered the (?<state>\w+) state"
```

**PCI Compliance For Windows/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring - New/System Restarted**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=Security 4608 "EventCode = 4608;"
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring - New/System Time Change**
```
_sourceCategory = Labs/Windows/OS/Windows ((_sourceName=Security 4616 "EventCode = 4616;") or (_sourceName=System (35 or 37) ("EventCode = 35;" or "EventCode = 37;")))
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop
| parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop | parse "User = \"*\"" as src_user nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r" nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring - New/Tampering Audit Logs**
```
_sourceCategory = Labs/Windows/OS/Windows (_sourceName=Security or _sourceName=System) (1102 or 517 or 104) ("EventCode = 1102;" or "EventCode = 517;" or "EventCode = 104;")
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop | parse "User = \"*\"" as src_user nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Domain Name:\s+(?<src_domain>[^\r]+?)\r" nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring - New/User Account Created**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=Security 4720 "EventCode = 4720;"
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)\r" nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring - New/User Account Deleted**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=Security 4726 "EventCode = 4726;"
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)\r" nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring - New/User Account Disabled**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=Security 4725 "EventCode = 4725;"
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)(?:\r|\")" nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring - New/User Account Enabled**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=Security 4722 "EventCode = 4722;"
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)(?:\r|\")" nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring - New/User Account Locked**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=Security (4740 or 644) ("EventCode = 4740;" or "EventCode = 644;")
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r" nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 02, 10 - Login Activity - New/Default Login - Failure**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=Security (4625 or 4768 or 4771 or 4776) ("EventCode = 4625;" or "EventCode = 4768;" or "EventCode = 4771;" or "EventCode = 4776;")
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse regex "Logon Type:\s+(?<logon_type>\d+)*" nodrop | parse regex "Failure Information:\s+Failure Reason:\s+(?<fail_reason>[^.\r]+?)[.\r]" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop | parse regex "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop | parse "Type = \"*\";" as type | parse regex "Logon Account:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Source Workstation:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Error Code:\s+(?<error_code>[^\r\"]+?)(?:\r|\";)" nodrop | parse regex "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Workstation Name:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 02, 10 - Login Activity - New/Default Login - Success**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=Security 4624 "EventCode = 4624;"
| parse "EventCode = *;" as eventCode | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse regex "Logon Type:\s+(?<logon_type>\d+)*" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Client Name:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Client Address:[\s\r]+(?<src_ip>[^\r]+)" nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 02, 10 - Login Activity - New/Failed Logins**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=Security (4625 or 4768 or 4771 or 4776) ("EventCode = 4625;" or "EventCode = 4768;" or "EventCode = 4771;" or "EventCode = 4776;")
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse regex "Logon Type:\s+(?<logon_type>\d+)*" nodrop | parse regex "Failure Information:\s+Failure Reason:\s+(?<fail_reason>[^.\r]+?)[.\r]" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop | parse regex "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop | parse "Type = \"*\";" as type | parse regex "Logon Account:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Source Workstation:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Error Code:\s+(?<error_code>[^\r\"]+?)(?:\r|\";)" nodrop | parse regex "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Workstation Name:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 02, 10 - Login Activity - New/Successful Logins**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=Security 4624 "EventCode = 4624;"
| parse "EventCode = *;" as eventCode | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse regex "Logon Type:\s+(?<logon_type>\d+)*" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Client Name:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Client Address:[\s\r]+(?<src_ip>[^\r]+)" nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 06 - Windows Updates Activity - New/All Windows Updates**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=System (19 or 20) ("EventCode = 19;" or "EventCode = 20;")
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse "Message = \"*\";" as msg_summary nodrop | parse "User = \"*\";" as src_user nodrop | parse field=src_user "*\\*" as src_domain, src_user nodrop 
| parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop
| parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as errorCode, Update nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 06 - Windows Updates Activity - New/Recent Windows Update Failures**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=System (19 or 20) ("EventCode = 19;" or "EventCode = 20;")
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse "Message = \"*\";" as msg_summary nodrop | parse "User = \"*\";" as src_user nodrop | parse field=src_user "*\\*" as src_domain, src_user nodrop 
| parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop
| parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as errorCode, Update nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 06 - Windows Updates Activity - New/Windows Update Summary**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=System (19 or 20) ("EventCode = 19;" or "EventCode = 20;")
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse "Message = \"*\";" as msg_summary nodrop
| parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop
| parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as errorCode, Update nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 06 - Windows Updates Activity - New/Windows Update Summary by Host**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=System (19 or 20) ("EventCode = 19;" or "EventCode = 20;")
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse "Message = \"*\";" as msg_summary nodrop
| parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop
| parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as errorCode, Update nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 06 - Windows Updates Activity - New/Windows Update Trend**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=System (19 or 20) ("EventCode = 19;" or "EventCode = 20;")
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse "Message = \"*\";" as msg_summary nodrop
| parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop
| parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as errorCode, Update nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 08 - Other User Activity - New/Excessive Failed Access Attempts**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=Security (4625 or 4768 or 4771 or 4776) ("EventCode = 4625;" or "EventCode = 4768;" or "EventCode = 4771;" or "EventCode = 4776;")
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop | parse regex "Logon Type:\s+(?<logon_type>\d+)*" nodrop | parse regex "Failure Information:\s+Failure Reason:\s+(?<fail_reason>[^.\r]+?)[.\r]" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Client Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Client Port:\s+?(?<src_port>[\d-]+)" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Workstation Name:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Source Network Address:\s+(?<src_ip>[^\r]+?)\r[\s\S]+?Source Port:\s+?(?<src_port>[\d-]+)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)\r" nodrop | parse regex "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop | parse "Type = \"*\";" as type | parse regex "Logon Account:\s+(?<src_user>[^\r]*?)\r[\s\S]+?Source Workstation:\s+(?<src_host>[^\r]+?)\r[\s\S]+?Error Code:\s+(?<error_code>[^\r\"]+?)(?:\r|\";)" nodrop | parse regex "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop 
```

**PCI Compliance For Windows/Windows - PCI Req 08 - Other User Activity - New/User Account disabled but not deleted**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=Security ((4726 "EventCode = 4726;") or (4725 "EventCode = 4725;"))
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r\.]+?)(?:\r|\.|\";)" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Subject[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)(?:\r|\")" nodrop | parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)\r" nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 08 - Other User Activity - New/User Account Password Changes**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=Security 4723 "EventCode = 4723;"
| parse "EventCode = *;" as eventCode nodrop
| parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop
| parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r]+?)\r" nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 08 - Other User Activity - New/User Account Password Reset**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=Security 4724 "EventCode = 4724;"
| parse "EventCode = *;" as eventCode nodrop
| parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop
| parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\r\"]+?)(?:\r|\";)" nodrop
```

**PCI Compliance For Windows/Windows - PCI Req 08 - Other User Activity - New/User Account UnLocked**
```
_sourceCategory = Labs/Windows/OS/Windows _sourceName=Security 4767 "EventCode = 4767;"
| parse "EventCode = *;" as eventCode nodrop | parse "Computer = \"*\";" as comp_name nodrop | parse "ComputerName = \"*\";" as comp_name nodrop | parse regex "Message = \"(?<msg_summary>[^\r]+?)\r" nodrop 
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r" nodrop
| parse regex "Logfile = \"Security\";[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<src_domain>[^\r]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r]+?)\r[\s\S]+?Account Domain:\s+(?<dest_domain>[^\"]*)\";" nodrop
```


