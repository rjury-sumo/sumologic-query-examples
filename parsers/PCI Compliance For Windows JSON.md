# Parsers For PCI Compliance For Windows JSON

**PCI Compliance For Windows JSON/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring/Actions by Privileged Accounts**
```
_sourceCategory={{Logsdatasource}}   _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.UserWorkstations" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, src_host nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring/Policy Changes**
```
_sourceCategory={{Logsdatasource}}   (_sourceName=Security or _sourceName=System) ("Audit Policy Change" or "System audit policy was changed" or *policy*change*)
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "keywords" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, msg_type nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring/Service Execution Trend**
```
_sourceCategory={{Logsdatasource}}   _sourceName=System "\"EventID\":\"7036\""
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName" as event_id, host, msg_summary, src_user, src_domain nodrop
| parse regex field=msg_summary "The (?<service>\w.+?) service entered the (?<state>\w+) state" nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring/Service Stopped**
```
_sourceCategory={{Logsdatasource}}   _sourceName=System "\"EventID\":\"7036\"" "stopped state"
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName" as event_id, host, msg_summary, src_user, src_domain nodrop
| parse regex field=msg_summary "The (?<service>\w.+?) service entered the (?<state>\w+) state" nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring/System Restarted**
```
_sourceCategory={{Logsdatasource}}   _sourceName=Security "\"EventID\":\"4608\""
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring/System Time Change**
```
_sourceCategory={{Logsdatasource}}   ((_sourceName=Security "\"EventID\":\"4616\"") or (_sourceName=System ("\"EventID\":\"35\"" or "\"EventID\":\"37\"") ))
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName" as event_id, host, msg_summary, src_user, src_domain nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring/Tampering Audit Logs**
```
_sourceCategory={{Logsdatasource}}    (_sourceName=Security or _sourceName=System) (1102 or 517 or 104)
| json "EventID", "Computer", "Message" as event_id, host, msg_summary nodrop
| json "UserData.LogFileCleared.SubjectUserName", "UserData.LogFileCleared.SubjectDomainName" as src_user, src_domain nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring/User Account Created**
```
_sourceCategory={{Logsdatasource}}   _sourceName=Security "\"EventID\":\"4720\""
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring/User Account Deleted**
```
_sourceCategory={{Logsdatasource}}   _sourceName=Security "\"EventID\":\"4726\""
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring/User Account Disabled**
```
_sourceCategory={{Logsdatasource}}  _sourceName=Security "\"EventID\":\"4725\""
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring/User Account Enabled**
```
_sourceCategory={{Logsdatasource}}  _sourceName=Security "\"EventID\":\"4722\""
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 02, 08, 10 - Account, User, System Monitoring/User Account Locked**
```
_sourceCategory={{Logsdatasource}}   _sourceName=Security ("\"EventID\":\"4740\"" or "\"EventID\":\"644\"")
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 02, 10 - Login Activity/Default Login - Failure**
```
_sourceCategory={{Logsdatasource}}  _sourceName=Security (4771 or 4776 or 4768 or 4769 or 4625) "Audit Failure"
| json "EventID", "Computer", "Message", "EventData.LogonType", "EventData.FailureReason", "EventData.IpAddress", "EventData.IpPort", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.WorkstationName", "Channel", "EventData.Status", "EventData.SubStatus", "EventData.Workstation", "Keywords" as event_id, host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, work_station, Keywords nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 02, 10 - Login Activity/Default Login - Success**
```
_sourceCategory={{Logsdatasource}}   _sourceName=Security "\"EventID\":\"4624\""
| json "EventID", "Computer", "Message", "Keywords", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.IpAddress", "EventData.IpPort", "Channel", "Level", "EventData.LogonType", "EventData.WorkstationName" as event_id, host, msg_summary, Keywords, src_user, src_domain, dest_user, dest_domain, src_ip, src_port, channel, level, logon_type, src_host  nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 02, 10 - Login Activity/Failed Logins**
```
_sourceCategory={{Logsdatasource}}  _sourceName=Security (4771 or 4776 or 4768 or 4769 or 4625) "Audit Failure"
| json "EventID", "Computer", "Message", "EventData.LogonType", "EventData.FailureReason", "EventData.IpAddress", "EventData.IpPort", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.WorkstationName", "Channel", "EventData.Status", "EventData.SubStatus", "EventData.Workstation", "Keywords" as event_id, host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, work_station, Keywords nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 02, 10 - Login Activity/Successful Logins**
```
_sourceCategory={{Logsdatasource}}   _sourceName=Security "\"EventID\":\"4624\""
| json "EventID", "Computer", "Message", "Keywords", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.IpAddress", "EventData.IpPort", "Channel", "Level", "EventData.LogonType", "EventData.WorkstationName" as event_id, host, msg_summary, Keywords, src_user, src_domain, dest_user, dest_domain, src_ip, src_port, channel, level, logon_type, src_host  nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 02, 10 - Login Activity/Sucessful Logins**
```
_sourceCategory={{Logsdatasource}}   _sourceName=Security "\"EventID\":\"4624\""
| json "EventID", "Computer", "Message", "Keywords", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.IpAddress", "EventData.IpPort", "Channel", "Level", "EventData.LogonType", "EventData.WorkstationName" as event_id, host, msg_summary, Keywords, src_user, src_domain, dest_user, dest_domain, src_ip, src_port, channel, level, logon_type, src_host nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 06 - Windows Updates Activity/All Windows Updates**
```
_sourceCategory={{Logsdatasource}}   _sourceName=System ("\"EventID\":\"19\"" or "\"EventID\":\"20\"")
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain nodrop
| parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop
| parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as error_code, Update nodrop
| if(isNull(src_user), "Unknown", src_user) as src_user
| if(isNull(src_domain), "Unknown", src_domain) as src_domain
| if(isNull(dest_user), "Unknown", dest_user) as dest_user
| if(isNull(dest_domain), "Unknown", dest_domain) as dest_domain
| where event_id in ("19", "20") and host matches "{{host}}" and _collector matches "{{collector}}" and _sourceHost matches "{{sourcehost}}" and src_user matches "{{src_user}}" and src_domain matches "{{src_domain}}" and dest_user matches "{{dest_user}}" and dest_domain matches "{{dest_domain}}"
| if(msg_summary matches "Installation Failure*", "Update/Failure", if (msg_summary matches "Installation Successful*", "Update/Success", "Update/Attempt")) as %"Installation Status"
| fields -_raw 
| host as %"Destination Host"
| parse field=Update "(*)" as kbnum nodrop 
```

**PCI Compliance For Windows JSON/Windows - PCI Req 06 - Windows Updates Activity/Recent Windows Update Failures**
```
_sourceCategory={{Logsdatasource}}   _sourceName=System ("\"EventID\":\"19\"" or "\"EventID\":\"20\"")
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain nodrop
| parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop
| parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as error_code, Update nodrop
| if(isNull(src_user), "Unknown", src_user) as src_user
| if(isNull(src_domain), "Unknown", src_domain) as src_domain
| if(isNull(dest_user), "Unknown", dest_user) as dest_user
| if(isNull(dest_domain), "Unknown", dest_domain) as dest_domain
| where event_id in ("19", "20") and host matches "{{host}}" and _collector matches "{{collector}}" and _sourceHost matches "{{sourcehost}}" and src_user matches "{{src_user}}" and src_domain matches "{{src_domain}}" and dest_user matches "{{dest_user}}" and dest_domain matches "{{dest_domain}}"
| if(msg_summary matches "Installation Failure*", "Update/Failure", if (msg_summary matches "Installation Successful*", "Update/Success", "Update/Attempt")) as %"Installation Status"
| fields -_raw
| host as %"Destination Host"
| timeslice 1s
| withtime %"Installation Status" 
| most_recent(%"Installation Status_withtime") as %"LastStatus" by %"Destination Host", update, _timeslice
| parse field=Update "(*)" as kbnum nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 06 - Windows Updates Activity/Windows Update Summary**
```
_sourceCategory={{Logsdatasource}}   _sourceName=System ("\"EventID\":\"19\"" or "\"EventID\":\"20\"")
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain nodrop
| parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop
| parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as errorCode, Update nodrop
| if(isNull(src_user), "Unknown", src_user) as src_user
| if(isNull(src_domain), "Unknown", src_domain) as src_domain
| if(isNull(dest_user), "Unknown", dest_user) as dest_user
| if(isNull(dest_domain), "Unknown", dest_domain) as dest_domain
| where event_id in ("19", "20") and host matches "{{host}}" and _collector matches "{{collector}}" and _sourceHost matches "{{sourcehost}}" and src_user matches "{{src_user}}" and src_domain matches "{{src_domain}}" and dest_user matches "{{dest_user}}" and dest_domain matches "{{dest_domain}}"
| if(msg_summary matches "Installation Failure*", "Update/Failure", if (msg_summary matches "Installation Successful*", "Update/Success", "Update/Attempt")) as %"Installation Status"
| fields -_raw
| host as %"Destination Host"
| timeslice 1s
| withtime %"Installation Status" 
| most_recent(%"Installation Status_withtime") as %"LastStatus" by %"Destination Host", update, _timeslice
| parse field=Update "(*)" as kbnum nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 06 - Windows Updates Activity/Windows Update Summary by Host**
```
_sourceCategory={{Logsdatasource}}   _sourceName=System ("\"EventID\":\"19\"" or "\"EventID\":\"20\"")
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain nodrop
| parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop
| parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as errorCode, Update nodrop
| if(isNull(src_user), "Unknown", src_user) as src_user
| if(isNull(src_domain), "Unknown", src_domain) as src_domain
| if(isNull(dest_user), "Unknown", dest_user) as dest_user
| if(isNull(dest_domain), "Unknown", dest_domain) as dest_domain
| where event_id in ("19", "20") and host matches "{{host}}" and _collector matches "{{collector}}" and _sourceHost matches "{{sourcehost}}" and src_user matches "{{src_user}}" and src_domain matches "{{src_domain}}" and dest_user matches "{{dest_user}}" and dest_domain matches "{{dest_domain}}"
| if(msg_summary matches "Installation Failure*", "Update/Failure", if (msg_summary matches "Installation Successful*", "Update/Success", "Update/Attempt")) as %"Installation Status"
| fields -_raw
| host as %"Destination Host"
| timeslice 1s
| withtime %"Installation Status" 
| most_recent(%"Installation Status_withtime") as %"LastStatus" by %"Destination Host", update, _timeslice
| parse field=Update "(*)" as kbnum nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 06 - Windows Updates Activity/Windows Update Trend**
```
_sourceCategory={{Logsdatasource}}   _sourceName=System ("\"EventID\":\"19\"" or "\"EventID\":\"20\"")
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain nodrop
| parse field=msg_summary "Installation Successful: Windows successfully installed the following update: *" as Update nodrop
| parse field=msg_summary "Installation Failure: Windows failed to install the following update with error *: *" as errorCode, Update nodrop
| if(isNull(src_user), "Unknown", src_user) as src_user
| if(isNull(src_domain), "Unknown", src_domain) as src_domain
| if(isNull(dest_user), "Unknown", dest_user) as dest_user
| if(isNull(dest_domain), "Unknown", dest_domain) as dest_domain
| where event_id in ("19", "20") and host matches "{{host}}" and _collector matches "{{collector}}" and _sourceHost matches "{{sourcehost}}" and src_user matches "{{src_user}}" and src_domain matches "{{src_domain}}" and dest_user matches "{{dest_user}}" and dest_domain matches "{{dest_domain}}"
| if(msg_summary matches "Installation Failure*", "Update/Failure", if (msg_summary matches "Installation Successful*", "Update/Success", "Update/Attempt")) as %"Installation Status"
| fields -_raw
| host as %"Destination Host"
| timeslice 1s
| withtime %"Installation Status" 
| most_recent(%"Installation Status_withtime") as %"LastStatus" by %"Destination Host", update, _timeslice
| parse field=Update "(*)" as kbnum nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 08 - Other User Activity/Excessive Failed Access Attempts**
```
_sourceCategory={{Logsdatasource}}  _sourceName=Security (4771 or 4776 or 4768 or 4769 or 4625) "Audit Failure"
| json "EventID", "Computer", "Message", "EventData.LogonType", "EventData.FailureReason", "EventData.IpAddress", "EventData.IpPort", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.WorkstationName", "Channel", "EventData.Status", "EventData.SubStatus", "EventData.Workstation", "Keywords" as event_id, dest_host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, work_station, Keywords nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 08 - Other User Activity/User Account Disabled, Not Deleted Over 1 Day**
```
_sourceCategory={{Logsdatasource}}  _sourceName=Security ("\"EventID\":\"4726\"" or  "\"EventID\":\"4725\"")
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 08 - Other User Activity/User Account Password Changes**
```
_sourceCategory={{Logsdatasource}}   _sourceName=Security "\"EventID\":\"4723\""
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 08 - Other User Activity/User Account Password Reset**
```
_sourceCategory={{Logsdatasource}}   _sourceName=Security "\"EventID\":\"4724\""
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain nodrop
```

**PCI Compliance For Windows JSON/Windows - PCI Req 08 - Other User Activity/User Account Unlocked**
```
_sourceCategory={{Logsdatasource}}  _sourceName=Security "\"EventID\":\"4767\"" 
| json "EventID", "Computer", "Message", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain nodrop
```


