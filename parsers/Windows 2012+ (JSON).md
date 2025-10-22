# Parsers For Windows 2012+ (JSON)

**Windows 2012+ (JSON)/(Kerberos) Failed Logins on the Domain Controller or Member Servers/(Kerberos) Failed Logins on the Domain Controller or Member Servers**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" (4771 or 4776 or 4768 or 4769) "Audit Failure" _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.TargetUserName", "EventData.Workstation", "EventData.Status", "EventData.SubStatus", "Keywords" as event_id, host, msg_summary, src_user, src_host, status, sub_status, Keywords nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/(NTLM) Failed Logins/(NTLM) Failed Logins**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventID\":\"4776\"" "Audit Failure" _sourceName=Security 
| json "EventID", "Computer", "Message", "EventData.TargetUserName", "EventData.Workstation", "EventData.Status", "EventData.PackageName", "Channel", "Keywords" as event_id, host, msg_summary, logon_account, workstation, status, Authentication_Package, channel, Keywords nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/Account Policy Changes/Account Policy Changes**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventID\":\"4739\"" _sourceName=Security
| json "EventID", "Computer", "Level", "Message", "Keywords", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.IpAddress", "EventData.IpPort", "EventData.SubStatus", "Channel" as event_id, host, event_type, msg_summary, Keywords, src_user, src_domain, dest_user, dest_domain, src_ip, src_port, result_code, channel nodrop
| parse regex field=msg_summary "Change Type:\s+(?<change_type>[\s\S]*?)Subject:" nodrop
| parse regex field=msg_summary "Changed Attributes:\s+(?<changed_attributes>[\s\S]*?)Additional Information:" nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/All Directory Service Changes/All Directory Service Changes**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" (5136 or 5137 or 5138 or 5139 or 5141) _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.SubjectLogonId", "EventData.DSName", "EventData.DSType", "EventData.ObjectDN", "EventData.ObjectClass", "EventData.AttributeValue", "Task", "Keywords", "Channel", "Level" as event_id, host, msg_summary, src_user, src_domain, src_LogonId, directory_service_name, directory_service_type, object_dn, object_class, AttributeValue, task, Keywords, channel, level nodrop
| where event_id in ("5136", "5137", "5138", "5139", "5141") and channel = "Security"
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/All Directory Service Object Creations/All Directory Service Object Creations**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventID\":\"5137\"" _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.DSName", "Task", "EventData.DSType", "EventData.ObjectDN", "EventData.ObjectClass", "Keywords", "Channel", "Level" as event_id, host, msg_summary, src_user, src_domain, directory_service_name, task, directory_service_type, object_dn, object_class, Keywords, channel, level nodrop
| where event_id = "5137"
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/All Fatal or Warning Messages by Source Host/All Fatal or Warning Messages by Source Host**
```
_sourceCategory={{Logsdatasource}}   (WARNING or Error or FATAL)
| json "Level", "Keywords" as level, keywords
```

**Windows 2012+ (JSON)/All User Account Changes/All User Account Changes**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" ("13824" or "4720" or "4722" or "4723" or "4724" or "4725" or "4726" or "4738" or "4740" or "4767" or "4780" or "4781" or "4794" or "5376" or "5377") _sourceName=Security
| json "EventID", "Computer", "Level", "Message", "Keywords", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "Channel", "Task" as event_id, host, event_type, msg_summary, Keywords, src_user, src_domain, dest_user, dest_domain, channel, task nodrop
| parse regex field=msg_summary "Changed Attributes:\s+(?<changedAttributes>[\s\S]*?)Additional Information:" nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/Audit Log Cleared/Audit Log Cleared**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventID\":\"1102\"" _sourceName=Security 
| json "EventID", "Computer", "Message", "UserData.LogFileCleared.SubjectUserName", "UserData.LogFileCleared.SubjectDomainName", "Channel", "Keywords" as event_id, host, msg_summary, src_user, src_domain, channel, Keywords nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/Audit Policy Changes/Audit Policy Changes**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventID\":\"4719\"" _sourceName=Security
| json "EventID", "Computer", "Level", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "Channel", "Keywords" as event_id, host, event_type, msg_summary, src_user, src_domain, channel, Keywords nodrop
| parse regex field=msg_summary "Audit Policy Change:\s+(?<audit_policy_change>[\s\S]*)" nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/Changes to Administrative Groups/Changes to Administrative Groups**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" ("13826" or "4727" or "4728" or "4729" or "4730" or "4731" or "4732" or "4733" or "4734" or "4735" or "4737" or "4754" or "4755" or "4756" or "4757" or "4758" or "4764" or "4799") _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.GroupName", "EventData.GroupDomain", "Channel", "EventData.MemberName", "Task" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, group_name, group_domain, channel, MemberName, task nodrop
| parse regex field=msg_summary "(?:New|Deleted) Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop 
| parse regex field=msg_summary "Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/Failed Logins Over time/Failed Logins Over time**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" (4771 or 4776 or 4768 or 4769 or 4625) "Audit Failure" _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.LogonType", "EventData.FailureReason", "EventData.IpAddress", "EventData.IpPort", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.WorkstationName", "Channel", "EventData.Status", "EventData.SubStatus", "EventData.Workstation", "Keywords" as event_id, host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, work_station, Keywords nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
```

**Windows 2012+ (JSON)/Failed Updates by Host/Failed Updates by Host**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"System\"" "\"EventID\":\"20\""  _sourceName=System
| json "EventID", "Computer", "Message", "Execution.ThreadID", "Execution.ProcessID", "Channel", "EventData.updateTitle", "EventData.updateRevisionNumber", "EventData.errorCode" as event_id, host, msg_summary, thread_id, process_id, channel, update_title, update_revision_number, error_code nodrop
| parse regex field=update_title "(?<kbnum>(?:kb|KB)\d+)\D" nodrop
```

**Windows 2012+ (JSON)/Failed Updates by KB Number/Failed Updates by KB Number**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"System\"" "\"EventID\":\"20\""  _sourceName=System 
| json "EventID", "Computer", "Message", "Execution.ThreadID", "Execution.ProcessID", "Channel", "EventData.updateTitle", "EventData.updateRevisionNumber", "EventData.errorCode" as event_id, host, msg_summary, thread_id, process_id, channel, update_title, update_revision_number, error_code nodrop
| parse regex field=update_title "(?<kbnum>(?:kb|KB)\d+)\D" nodrop
```

**Windows 2012+ (JSON)/Firewall Changes/Firewall Changes**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" ("4946" or "4947" or "4948" or "4949" or "4950" or "4954" or "5025") _sourceName=Security
| json "EventID", "Computer", "Message", "Channel", "Keywords" as event_id, host, msg_summary, channel, Keywords nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/Multiple Failed Logins by Same User/Multiple Failed Logins by Same User**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" (4771 or 4776 or 4768 or 4769 or 4625) "Audit Failure" _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.LogonType", "EventData.FailureReason", "EventData.IpAddress", "EventData.IpPort", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.WorkstationName", "Channel", "EventData.Status", "EventData.SubStatus", "EventData.Workstation", "Keywords" as event_id, host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, workstation, Keywords nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
```

**Windows 2012+ (JSON)/Multiple Failed Logins on Local Machine/Multiple Failed Logins on Local Machine**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventID\":\"4625\"" "Audit Failure" _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.LogonType", "EventData.FailureReason", "EventData.IpAddress", "EventData.IpPort", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.WorkstationName", "Channel", "EventData.Status", "EventData.SubStatus", "Keywords" as event_id, host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, Keywords nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
```

**Windows 2012+ (JSON)/New Accounts Created/New Accounts Created**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventID\":\"4720\"" _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "Channel" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, channel nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/Recent Policy Changes/Recent Policy Changes**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" (4902 or 4904 or 4905 or 4906 or 4907 or 4912 or 4715 or 4719 or 4739 or "Audit Policy Change" or "System audit policy was changed" or *policy*change* or "Policy Change") _sourceName=Security
| json "EventID", "Computer", "Message", "Channel" as event_id, host, msg_summary, channel nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" 
```

**Windows 2012+ (JSON)/Report Messages/Report Messages**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"System\"" ("\"EventID\":\"19\"" or "\"EventID\":\"20\"" or "\"EventID\":\"43\"")  _sourceName=System
| json "EventID", "Computer", "Message", "Execution.ThreadID", "Execution.ProcessID", "Channel", "EventData.updateTitle", "EventData.updateRevisionNumber", "EventData.errorCode" as event_id, host, msg_summary, thread_id, process_id, channel, update_title, update_revision_number, error_code nodrop
| parse regex field=update_title "(?<kbnum>(?:kb|KB)\d+)\D" nodrop
```

**Windows 2012+ (JSON)/Service Events by Type/Service Events by Type**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"System\"" "Service Control Manager"  _sourceName=System
| json "Provider.EventSourceName", "Keywords" as event_source_name, Keywords nodrop
```

**Windows 2012+ (JSON)/Service Installed/Service Installed**
```
_sourceCategory={{Logsdatasource}}  (("\"Channel\":\"System\"" "\"EventID\":\"7045\"") or ("\"Channel\":\"Security\"" "\"EventID\":\"4697\""))
| json "EventID", "Computer", "Message", "EventData.AccountName", "EventData.ServiceName", "EventData.ServiceType", "EventData.StartType", "EventData.ImagePath", "Provider.EventSourceName"  as event_id, host, msg_summary, account_name, service_name, service_type, service_start_type, service_image_path, event_source_name nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/Service Starts/Service Starts**
```
//https://social.technet.microsoft.com/Forums/ie/en-US/017cf738-d29b-4b77-aa3d-756fcdbb3a5f/event-id-7036?forum=w7itproperf
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"System\"" "\"EventID\":\"7036\"" "running"  _sourceName=System 
| json "EventID", "Computer", "Message", "EventData.param1", "EventData.param2", "Channel", "Provider.EventSourceName" as event_id, host, msg_summary, service_name, service_state, channel, event_source_name nodrop 
```

**Windows 2012+ (JSON)/Service Stops/Service Stops**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"System\"" "\"EventID\":\"7036\"" stopped  _sourceName=System
| json "EventID", "Computer", "Message", "EventData.param1", "EventData.param2", "Channel", "Provider.EventSourceName" as event_id, host, msg_summary, service_name, service_state, channel, event_source_name nodrop 
```

**Windows 2012+ (JSON)/Successful Group Creations/Successful Group Creations**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" ("\"EventID\":\"4727\"" or "\"EventID\":\"4731\"" or "\"EventID\":\"4754\"") _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "Channel" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, channel nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/Successful Logons Over time/Successful Logons Over time**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventID\":\"4624\"" _sourceName=Security 
| json "EventID", "Computer", "Message", "Keywords", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.IpAddress", "EventData.IpPort", "Channel", "Level" as event_id, host, msg_summary, Keywords, src_user, src_domain, dest_user, dest_domain, src_ip, src_port, channel, level nodrop
```

**Windows 2012+ (JSON)/Successful Updates by Host/Successful Updates by Host**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"System\"" "\"EventID\":\"19\"" "Installation Successful"  _sourceName=System
| json "EventID", "Computer", "Message", "Execution.ThreadID", "Execution.ProcessID", "Channel", "EventData.updateTitle", "EventData.updateRevisionNumber" as event_id, host, msg_summary, thread_id, process_id, channel, update_title, update_revision_number nodrop
| parse regex field=update_title "(?<kbnum>(?:kb|KB)\d+)\D" nodrop
```

**Windows 2012+ (JSON)/Successful Updates by KB number/Successful Updates by KB number**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"System\"" "\"EventID\":\"19\"" "Installation Successful"  _sourceName=System
| json "EventID", "Computer", "Message", "Execution.ThreadID", "Execution.ProcessID", "Channel", "EventData.updateTitle", "EventData.updateRevisionNumber" as event_id, host, msg_summary, thread_id, process_id, channel, update_title, update_revision_number nodrop
| parse regex field=update_title "(?<kbnum>(?:kb|KB)\d+)\D" nodrop
```

**Windows 2012+ (JSON)/System Restarted/System Restarted**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventID\":\"4608\"" _sourceName=Security
| json "EventID", "Computer", "Message", "Channel" as event_id, host, msg_summary, channel nodrop 
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/Top Error Codes/Top Error Codes**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"System\"" "\"EventID\":\"20\""  _sourceName=System
| json "EventID", "Computer", "Message", "Execution.ThreadID", "Execution.ProcessID", "Channel", "EventData.updateTitle", "EventData.updateRevisionNumber", "EventData.errorCode" as event_id, host, msg_summary, thread_id, process_id, channel, update_title, update_revision_number, error_code nodrop
| parse regex field=update_title "(?<kbnum>(?:kb|KB)\d+)\D" nodrop
```

**Windows 2012+ (JSON)/Top Reasons for Failed Logins/Top Reasons for Failed Logins**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" (4771 or 4776 or 4768 or 4769 or 4625) "Audit Failure" _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.LogonType", "EventData.FailureReason", "EventData.IpAddress", "EventData.IpPort", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.WorkstationName", "Channel", "EventData.Status", "EventData.SubStatus", "EventData.Workstation", "Keywords" as event_id, host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, work_station, Keywords nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
```

**Windows 2012+ (JSON)/Top Security Events/Top Security Events**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" _sourceName=Security
| json "EventID", "Computer", "Message", "Channel" as event_id, host, msg_summary, channel nodrop 
```

**Windows 2012+ (JSON)/Unauthorized Account Creations/Unauthorized Account Creations**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventID\":\"4720\"" _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "Channel" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, channel nodrop
| where event_id = "4720" and channel = "Security"
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/Update Results by KB number/Update Results by KB number**
```
_sourceCategory={{Logsdatasource}}   ("\"EventID\":\"19\"" or "\"EventID\":\"20\"")  _sourceName=System
| json "EventID", "Computer", "Message", "Execution.ThreadID", "Execution.ProcessID", "Channel", "EventData.updateTitle", "EventData.updateRevisionNumber", "EventData.errorCode" as event_id, host, msg_summary, thread_id, process_id, channel, update_title, update_revision_number, error_code nodrop
| parse regex field=update_title "(?<kbnum>(?:kb|KB)\d+)\D" nodrop
```

**Windows 2012+ (JSON)/User Account Changed/User Account Changed**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventId\":\"4738\"" _sourceName=Security 
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "Channel"  as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, channel nodrop
| parse regex field=msg_summary "Changed Attributes:\s+(?<changed_attributes>[\s\S]*?)Additional Information:"
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/User Account Deleted/User Account Deleted**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventID\":\"4726\"" _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "Channel" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, channel nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/User Added to Administrative Groups/User Added to Administrative Groups**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" (4728 or 4732 or 4746 or 4751 or 4756 or 4761) _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.GroupName", "EventData.GroupDomain", "Channel" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, group_name, group_domain, channel nodrop
| parse regex field=msg_summary "Subject:[\s\S]+?Account Name:\s+(?<src_user>[^\r]+?)\r[\s\S]+?Member:[\s\S]+?Security ID:\s+(?<member_user_name>[^\r\"]+?)\r[\s\S]+?Account Name:\s+(?<dest_user>[^\r\"]+?)\r[\s\S]+?Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop 
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/User Added to Group/User Added to Group**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" (4728 or 4732 or 4746 or 4751 or 4756 or 4761) _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.GroupName", "EventData.GroupDomain", "Channel", "EventData.MemberName" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, group_name, group_domain, channel, MemberName nodrop
| parse regex field=msg_summary "Subject:[\s\S]+?Account Name:[\s\S]+?Member:[\s\S]+?Security ID:\s+(?<member_user_name>[^\r\"]+?)\r[\s\S]+?Account Name:[\s\S]+?Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop 
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/User Locked-out/User Locked-out**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventID\":\"4740\"" _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "Channel", "keywords" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, channel, keywords nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/User Password Changes/User Password Changes**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventID\":\"4723\"" _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "Channel" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, channel nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/User Password Reset Attempts/User Password Reset Attempts**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventID\":\"4724\"" _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "Channel" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, channel nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/Windows - Application/Events by Level**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Application\""  _sourceName=Application
| json "EventID", "Computer", "Channel", "Message", "Level" as event_id, host, channel, msg_summary, level nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
| parse field=msg_summary "Windows Installer * the product. Product Name: *. Product Version: *. Product Language: *. Manufacturer: *. * success or error status: *." as action, product_name, product_version, product_language, manufacturer, activity, status nodrop | parse field=msg_summary "Product: * -- * completed *." as product_name, activity, status nodrop
```

**Windows 2012+ (JSON)/Windows - Application/Events Trend**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Application\""  _sourceName=Application 
| json "EventID", "Computer", "Channel", "Message", "Level" as event_id, host, channel, msg_summary, level nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
| parse field=msg_summary "Windows Installer * the product. Product Name: *. Product Version: *. Product Language: *. Manufacturer: *. * success or error status: *." as action, product_name, product_version, product_language, manufacturer, activity, status nodrop | parse field=msg_summary "Product: * -- * completed *." as product_name, activity, status nodrop
```

**Windows 2012+ (JSON)/Windows - Application/Installations and UnInstallations**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Application\"" (1033 or 1034 or 11707 or 11724)  _sourceName=Application
| json "EventID", "Computer", "Channel", "Message", "Level" as event_id, host, channel, msg_summary, level nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
| parse field=msg_summary "Windows Installer * the product. Product Name: *. Product Version: *. Product Language: *. Manufacturer: *. * success or error status: *." as action, product_name, product_version, product_language, manufacturer, activity, status nodrop | parse field=msg_summary "Product: * -- * completed *." as product_name, activity, status nodrop
```

**Windows 2012+ (JSON)/Windows - Application/Level Breakdown**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Application\""  _sourceName=Application
| json "EventID", "Computer", "Channel", "Message", "Level" as event_id, host, channel, msg_summary, level nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
| parse field=msg_summary "Windows Installer * the product. Product Name: *. Product Version: *. Product Language: *. Manufacturer: *. * success or error status: *." as action, product_name, product_version, product_language, manufacturer, activity, status nodrop | parse field=msg_summary "Product: * -- * completed *." as product_name, activity, status nodrop
```

**Windows 2012+ (JSON)/Windows - Application/Top Messages**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Application\""  _sourceName=Application 
| json "EventID", "Computer", "Channel", "Message", "Level" as event_id, host, channel, msg_summary, level nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
| parse field=msg_summary "Windows Installer * the product. Product Name: *. Product Version: *. Product Language: *. Manufacturer: *. * success or error status: *." as action, product_name, product_version, product_language, manufacturer, activity, status nodrop | parse field=msg_summary "Product: * -- * completed *." as product_name, activity, status nodrop
```

**Windows 2012+ (JSON)/Windows - Default/Errors and Warnings Over Time**
```
_sourceCategory={{Logsdatasource}}   ("\"Level\":\"Warning\"" or "\"Level\":\"Error\"")
| json "EventID", "Computer", "Level" as event_id, host, level nodrop
```

**Windows 2012+ (JSON)/Windows - Default/Event Distribution Over Time**
```
_sourceCategory={{Logsdatasource}}  
| json "EventID", "Computer", "Channel" as event_id, host, channel nodrop
```

**Windows 2012+ (JSON)/Windows - Default/System Operations**
```
_sourceCategory={{Logsdatasource}}   (4608 or 4946 or 4947 or 4948 or 4949 or 4950 or 4954 or 5025 or 4727 or 4731 or 4754 or 4720)
| json "EventID", "Computer" as event_id, host nodrop
```

**Windows 2012+ (JSON)/Windows - Default/Top 10 Service Operations**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"System\"" "\"EventID\":\"7036\"" (running or stopped)  _sourceName=System
| json "EventID", "Computer", "Message", "EventData.param1", "EventData.param2", "Channel", "Provider.EventSourceName" as event_id, host, msg_summary, service_name, service_state, channel, event_source_name nodrop 
```

**Windows 2012+ (JSON)/Windows - Event Errors/Breakdown by Keyword Tag**
```
_sourceCategory={{Logsdatasource}}   "\"Level\":\"Error\""
| json "EventID", "Computer", "Level", "Message" as event_id, host, level, msg_summary nodrop
```

**Windows 2012+ (JSON)/Windows - Event Errors/Error Keyword - LogReduce**
```
_sourceCategory={{Logsdatasource}}   "\"Level\":\"Error\""
| json "EventID", "Computer", "Level", "Message" as event_id, host, level, msg_summary nodrop
```

**Windows 2012+ (JSON)/Windows - Event Errors/Error Keyword - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}}   "\"Level\":\"Error\""
| json "EventID", "Computer", "Level", "Message" as event_id, host, level, msg_summary nodrop
```

**Windows 2012+ (JSON)/Windows - Event Errors/Error Keyword - Outlier**
```
_sourceCategory={{Logsdatasource}}   "\"Level\":\"Error\""
| json "EventID", "Computer", "Level", "Message" as event_id, host, level, msg_summary nodrop
```

**Windows 2012+ (JSON)/Windows - Event Errors/Error Keyword by Computer and Message**
```
_sourceCategory={{Logsdatasource}}   "\"Level\":\"Error\""
| json "EventID", "Computer", "Level", "Message" as event_id, host, level, msg_summary nodrop
```

**Windows 2012+ (JSON)/Windows - Event Errors/Error Keyword Trend**
```
_sourceCategory={{Logsdatasource}}   "\"Level\":\"Error\""
| json "EventID", "Computer", "Level", "Message" as event_id, host, level, msg_summary nodrop
```

**Windows 2012+ (JSON)/Windows - Login Status/Failed Logins by Hour**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" (4771 or 4776 or 4768 or 4769 or 4625) "Audit Failure" _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.LogonType", "EventData.FailureReason", "EventData.IpAddress", "EventData.IpPort", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.WorkstationName", "Channel", "EventData.Status", "EventData.SubStatus", "EventData.Workstation", "Keywords" as event_id, host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, work_station, Keywords nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
```

**Windows 2012+ (JSON)/Windows - Login Status/Failed Logins Outlier**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" (4771 or 4776 or 4768 or 4769 or 4625) "Audit Failure" _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.LogonType", "EventData.FailureReason", "EventData.IpAddress", "EventData.IpPort", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.WorkstationName", "Channel", "EventData.Status", "EventData.SubStatus", "EventData.Workstation", "Keywords" as event_id, host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, work_station, Keywords nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
```

**Windows 2012+ (JSON)/Windows - Login Status/Failed Logins Source Location**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" (4771 or 4776 or 4768 or 4769 or 4625) "Audit Failure" _sourceName=Security 
| json "EventID", "Computer", "Message", "EventData.LogonType", "EventData.FailureReason", "EventData.IpAddress", "EventData.IpPort", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.WorkstationName", "Channel", "EventData.Status", "EventData.SubStatus", "EventData.Workstation", "Keywords" as event_id, host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, work_station, Keywords nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
```

**Windows 2012+ (JSON)/Windows - Login Status/Logins by Hour**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" (4624 or 4625 or 4771 or 4776 or 4768 or 4769) _sourceName=Security
// 4624 - Login Success, 4625 or 4771 - Login Failures, 4776 - Domain Controller - Credential validation, 4768 - A Kerberos authentication ticket (TGT) was requested, 4769 - A Kerberos service ticket was requested
| json "EventID", "Computer", "Level", "Message", "Keywords", "Channel" as event_id, host, event_type, msg_summary, Keywords, channel nodrop
```

**Windows 2012+ (JSON)/Windows - Login Status/Successful Login Source Location**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventID\":\"4624\"" _sourceName=Security
| json "EventID", "Computer", "Level", "Message", "Keywords", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.IpAddress", "EventData.IpPort", "Channel" as event_id, host, event_type, msg_summary, Keywords, src_user, src_domain, dest_user, dest_domain, src_ip, src_port, channel nodrop
```

**Windows 2012+ (JSON)/Windows - Login Status/Successful Logins**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventID\":\"4624\"" _sourceName=Security
| json "EventID", "Computer", "Message", "Keywords", "EventData.SubjectUserName",  "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.IpAddress", "EventData.IpPort", "Channel", "Level" as event_id, host, msg_summary, Keywords, src_user, src_domain, dest_user, dest_domain, src_ip, src_port, channel, level nodrop
```

**Windows 2012+ (JSON)/Windows - Login Status/Successful RDP Reconnects**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventID\":\"4778\"" _sourceName=Security
| json "EventID", "Computer", "EventData.AccountName", "EventData.AccountDomain", "EventData.SessionName", "EventData.ClientName", "EventData.ClientAddress", "Channel", "EventData.LogonID" as event_id, host, dest_user, dest_domain, session_name, src_host, src_ip, channel, LogonID nodrop
```

**Windows 2012+ (JSON)/Windows - Overview/All Fatal or Warning Messages by Source Host**
```
_sourceCategory={{Logsdatasource}}   (WARNING or Error or FATAL)
| json "Computer", "Level", "Keywords" as host, level, keywords nodrop
```

**Windows 2012+ (JSON)/Windows - Overview/Audit Log Cleared**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventID\":\"1102\"" _sourceName=Security
| json "EventID", "Computer", "Message", "UserData.LogFileCleared.SubjectUserName", "UserData.LogFileCleared.SubjectDomainName", "Channel", "Keywords" as event_id, host, msg_summary, src_user, src_domain, channel, Keywords nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/Windows - Overview/Changes to Administrative Groups**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" ("13826" or "4727" or "4728" or "4729" or "4730" or "4731" or "4732" or "4733" or "4734" or "4735" or "4737" or "4754" or "4755" or "4756" or "4757" or "4758" or "4764" or "4799") _sourceName=Security
| json "EventID", "Computer", "Message", "EventData.SubjectUserName", "EventData.SubjectDomainName", "EventData.TargetUserName", "EventData.TargetDomainName", "EventData.GroupName", "EventData.GroupDomain", "Channel", "EventData.MemberName", "Task" as event_id, host, msg_summary, src_user, src_domain, dest_user, dest_domain, group_name, group_domain, channel, MemberName, task nodrop
| parse regex field=msg_summary "(?:New|Deleted) Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop 
| parse regex field=msg_summary "Group:[\s\S]+?(?:Account|Group) Name:\s+(?<group_name>[^\r\"]+?)\r\s+?(?:Account|Group) Domain:\s+(?<group_domain>[^\r\"]+?)(?:\r|\")" nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/Windows - Overview/Recent Policy Changes**
```
_sourceCategory={{Logsdatasource}}   ( "Audit Policy Change" or "System audit policy was changed" or *policy*change* or "Policy Change" or 4902 or 4904 or 4905 or 4906 or 4907 or 4912 or 4715 or 4719 or 4739)
| json "EventID", "Computer", "Message" as event_id, host, msg_summary nodrop
| parse regex field = msg_summary "(?<msg_summary>.*\.*)" 
```

**Windows 2012+ (JSON)/Windows - Overview/System Restarts**
```
_sourceCategory={{Logsdatasource}}   "\"Channel\":\"Security\"" "\"EventID\":\"4608\"" _sourceName=Security
| json "EventID", "Computer", "Message", "Channel" as event_id, host, msg_summary, channel nodrop 
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ (JSON)/Windows - Overview/Top Services Installed**
```
_sourceCategory={{Logsdatasource}}   (("\"Channel\":\"System\"" "\"EventID\":\"7045\"") or ("\"Channel\":\"Security\"" "\"EventID\":\"4697\""))
| json "EventID", "Computer", "Message", "EventData.AccountName", "EventData.ServiceName", "EventData.ServiceType", "EventData.StartType", "EventData.ImagePath", "Provider.EventSourceName"  as event_id, host, msg_summary, account_name, service_name, service_type, service_start_type, service_image_path, event_source_name nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```


