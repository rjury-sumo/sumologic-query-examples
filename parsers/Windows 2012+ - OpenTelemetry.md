# Parsers For Windows 2012+ - OpenTelemetry

**Windows 2012+ - OpenTelemetry/Windows - Application/Events by Level**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  "\"channel\":\"Application\""  
| json "event_id",  "channel", "message", "level" as event_id, channel, msg_summary, level nodrop
| if(level matches "1","Critical",
if(level matches "2","Error",
if(level matches"3","Warning",
if(level matches "4","Information",
if(level matches "0" , "LogAlways",level))))) as level
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
| parse field=msg_summary "Windows Installer * the product. Product Name: *. Product Version: *. Product Language: *. Manufacturer: *. * success or error status: *." as action, product_name, product_version, product_language, manufacturer, activity, status nodrop | parse field=msg_summary "Product: * -- * completed *." as product_name, activity, status nodrop
```

**Windows 2012+ - OpenTelemetry/Windows - Application/Events Trend**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  "\"channel\":\"Application\""  
| json "event_id", "channel", "message", "level" as event_id_obj, channel, msg_summary, level nodrop
| if(level matches "1","Critical",
if(level matches "2","Error",
if(level matches"3","Warning",
if(level matches "4","Information",
if(level matches "0" , "LogAlways",level))))) as level
| json field=event_id_obj "id" as event_id
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
| parse field=msg_summary "Windows Installer * the product. Product Name: *. Product Version: *. Product Language: *. Manufacturer: *. * success or error status: *." as action, product_name, product_version, product_language, manufacturer, activity, status nodrop | parse field=msg_summary "Product: * -- * completed *." as product_name, activity, status nodrop
```

**Windows 2012+ - OpenTelemetry/Windows - Application/Installations and UnInstallations**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  "\"channel\":\"Application\"" (1033 or 1034 or 11707 or 11724)
| json "event_id","channel", "message", "level" as event_id_obj, channel, msg_summary, level nodrop
| if(level matches "1","Critical",
if(level matches "2","Error",
if(level matches"3","Warning",
if(level matches "4","Information",
if(level matches "0" , "LogAlways",level))))) as level
| json field=event_id_obj "id" as event_id
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
| parse field=msg_summary "Windows Installer * the product. Product Name: *. Product Version: *. Product Language: *. Manufacturer: *. * success or error status: *." as action, product_name, product_version, product_language, manufacturer, activity, status nodrop | parse field=msg_summary "Product: * -- * completed *." as product_name, activity, status nodrop
```

**Windows 2012+ - OpenTelemetry/Windows - Application/Level Breakdown**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  "\"channel\":\"Application\"" 
| json "event_id", "channel", "message", "level" as event_id, channel, msg_summary, level nodrop
| if(level matches "1","Critical",
if(level matches "2","Error",
if(level matches"3","Warning",
if(level matches "4","Information",
if(level matches "0" , "LogAlways",level))))) as level
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
| parse field=msg_summary "Windows Installer * the product. Product Name: *. Product Version: *. Product Language: *. Manufacturer: *. * success or error status: *." as action, product_name, product_version, product_language, manufacturer, activity, status nodrop | parse field=msg_summary "Product: * -- * completed *." as product_name, activity, status nodrop
```

**Windows 2012+ - OpenTelemetry/Windows - Application/Top Messages**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  "\"channel\":\"Application\""
| json "event_id", "channel", "message", "level" as event_id, channel, msg_summary, level nodrop
| if(level matches "1","Critical",
if(level matches "2","Error",
if(level matches"3","Warning",
if(level matches "4","Information",
if(level matches "0" , "LogAlways",level))))) as level
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
| parse field=msg_summary "Windows Installer * the product. Product Name: *. Product Version: *. Product Language: *. Manufacturer: *. * success or error status: *." as action, product_name, product_version, product_language, manufacturer, activity, status nodrop | parse field=msg_summary "Product: * -- * completed *." as product_name, activity, status nodrop
```

**Windows 2012+ - OpenTelemetry/Windows - Default/Errors and Warnings Over Time**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  ("\"level\":\"Warning\"" or "\"level\":\"Error\"")
| json "event_id",  "level" as event_id_obj, level nodrop
| json field=event_id_obj "id" as event_id
```

**Windows 2012+ - OpenTelemetry/Windows - Default/Event Distribution Over Time**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} 
| json "eventid", "channel" as event_id, channel nodrop
```

**Windows 2012+ - OpenTelemetry/Windows - Default/System Operations**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  (4608 or 4946 or 4947 or 4948 or 4949 or 4950 or 4954 or 5025 or 4727 or 4731 or 4754 or 4720)
| json "event_id"  as event_id_obj nodrop
| json field=event_id_obj "id" as event_id
```

**Windows 2012+ - OpenTelemetry/Windows - Default/Top 10 Service Operations**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}   "\"channel\":\"System\"" (running or stopped) 
| json "event_id", "message", "event_data", "channel", "provider" as event_id_obj, msg_summary, event_data, channel, event_source_name nodrop 
| json field=event_id_obj "id" as event_id
| parse field=event_data "\"param1\":\"*\"" as service_name
| parse field=event_data "\"param2\":\"*\"" as service_state
```

**Windows 2012+ - OpenTelemetry/Windows - Event Errors/Breakdown by Keyword Tag**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  "\"level\":\"Error\""
| json  "level", "message" as level, msg_summary nodrop
```

**Windows 2012+ - OpenTelemetry/Windows - Event Errors/Error Keyword - LogReduce**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  "\"level\":\"Error\""
| json  "level", "message" as level, msg_summary nodrop
```

**Windows 2012+ - OpenTelemetry/Windows - Event Errors/Error Keyword - One Day Time Comparison**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  "\"level\":\"Error\""
| json "level", "message" as level, msg_summary nodrop
```

**Windows 2012+ - OpenTelemetry/Windows - Event Errors/Error Keyword - Outlier**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  "\"level\":\"Error\""
| json  "level", "message" as level, msg_summary nodrop
```

**Windows 2012+ - OpenTelemetry/Windows - Event Errors/Error Keyword by Computer and Message**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  "\"level\":\"Error\""
| json  "level", "message" as level, msg_summary nodrop
```

**Windows 2012+ - OpenTelemetry/Windows - Event Errors/Error Keyword Trend**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  "\"level\":\"Error\""
| json  "level", "message" as level, msg_summary nodrop
```

**Windows 2012+ - OpenTelemetry/Windows - Login Status/Failed Logins by Hour**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "\"channel\":\"Security\"" (4771 or 4776 or 4768 or 4769 or 4625) "Audit Failure" 
| json "event_id", "computer", "message", "channel", "event_data", "Keywords" as event_id_obj, host, msg_summary, channel, event_data, Keywords nodrop
| json field=event_id_obj "id" as event_id
| parse field=event_data "\"Status\":\"*\"" as status nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
```

**Windows 2012+ - OpenTelemetry/Windows - Login Status/Failed Logins Outlier**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "\"channel\":\"Security\"" (4771 or 4776 or 4768 or 4769 or 4625) "Audit Failure" 
| json "event_id", "computer", "message", "event_data", "channel", "Keywords" as event_id_obj, host, msg_summary, event_data, channel, Keywords nodrop
| json field=event_id_obj "id" as event_id
| parse field=event_data "\"Status\":\"*\"" as status nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
| parse field=status "[\"*\"]" as status
```

**Windows 2012+ - OpenTelemetry/Windows - Login Status/Failed Logins Source Location**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "\"channel\":\"Security\"" (4771 or 4776 or 4768 or 4769 or 4625) "Audit Failure" 
| json "event_id", "computer", "message", "event_data", "channel", "Keywords" as event_id_obj, host, msg_summary, event_data, channel, Keywords nodrop
| json field=event_id_obj "id" as event_id
| parse field=event_data "\"Status\":\"*\"" as status
| parse field=event_data "\"IpAddress\":\"*\"" as src_ip
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
```

**Windows 2012+ - OpenTelemetry/Windows - Login Status/Logins by Hour**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "\"channel\":\"Security\"" (4624 or 4625 or 4771 or 4776 or 4768 or 4769) 
// 4624 - Login Success, 4625 or 4771 - Login Failures, 4776 - Domain Controller - Credential validation, 4768 - A Kerberos authentication ticket (TGT) was requested, 4769 - A Kerberos service ticket was requested
| json "event_id", "keywords[0]", "channel" as event_id_obj, Keywords, channel nodrop
| json field=event_id_obj "id" as event_id
```

**Windows 2012+ - OpenTelemetry/Windows - Login Status/Successful Login Source Location**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "\"channel\":\"Security\"" 4624
| json "event_id", "computer", "level", "message", "keywords", "event_data", "channel" as event_id_obj, host, event_type, msg_summary, Keywords, event_data, channel nodrop
| parse field=event_data "\"SubjectUserName\":\"*\"" as src_user nodrop
| parse field=event_data "\"TargetUserName\":\"*\"" as dest_user nodrop
| parse field=event_data "\"IpAddress\":\"*\"" as src_ip nodrop
| json field=event_id_obj "id" as event_id
```

**Windows 2012+ - OpenTelemetry/Windows - Login Status/Successful Logins**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "\"channel\":\"Security\"" "4624"
| json "event_id", "keywords", "event_data", "channel" as event_id_obj, Keywords,event_data, channel nodrop
| json field=event_id_obj "id" as event_id
| parse field=event_data "\"SubjectUserName\":\"*\"" as src_user nodrop
| parse field=event_data "\"SubjectDomainName\":\"*\"" as src_domain nodrop
| parse field=event_data "\"TargetUserName\":\"*\"" as dest_user nodrop
| parse field=event_data "\"TargetDomainName\":\"*\"" as dest_domain nodrop
| parse field=event_data "\"IpAddress\":\"*\"" as src_ip nodrop
| parse field=event_data "\"IpPort\":\"*\"" as src_port nodrop
```

**Windows 2012+ - OpenTelemetry/Windows - Login Status/Successful RDP Reconnects**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "\"channel\":\"Security\"" "\"id\":4778"
| json "event_id", "computer", "event_data", "channel" as event_id_obj, host, event_data, channel nodrop
| parse field=event_data "\"AccountName\":\"*\"" as dest_user nodrop
| parse field=event_data "\"AccountDomain\":\"*\"" as dest_domain nodrop
| parse field=event_data "\"SessionName\":\"*\"" as session_name nodrop
| parse field=event_data "\"ClientName\":\"*\"" as src_host nodrop
| parse field=event_data "\"ClientAddress\":\"*\"" as src_ip nodrop
| parse field=event_data "\"LogonID\":\"*\"" as LogonID nodrop
| json field=event_id_obj "id" as event_id
```

**Windows 2012+ - OpenTelemetry/Windows - Overview/All Fatal or Warning Messages by Source Host**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  (WARNING or Error or FATAL)
| json  "level", "keywords" as level, keywords nodrop
```

**Windows 2012+ - OpenTelemetry/Windows - Overview/Audit Log Cleared**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "\"channel\":\"Security\"" 1102
| json "event_id", "computer", "message", "details.Subject.Account Name", "details.Subject.Domain Name", "channel", "keywords" as event_id_obj, host, msg_summary, src_user, src_domain, channel, Keywords nodrop
| json field=event_id_obj "id" as event_id
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ - OpenTelemetry/Windows - Overview/Changes to Administrative Groups**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "\"channel\":\"Security\"" ("13826" or "4727" or "4728" or "4729" or "4730" or "4731" or "4732" or "4733" or "4734" or "4735" or "4737" or "4754" or "4755" or "4756" or "4757" or "4758" or "4764" or "4799") 
| json "event_id", "computer", "message", "details.Group.Group Name", "details.Group.Group Domain", "channel", "task" as event_id_obj, host, msg_summary, group_name, group_domain, channel, task nodrop
| json field=event_id_obj "id" as event_id
```

**Windows 2012+ - OpenTelemetry/Windows - Overview/Logins by Hour**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  "\"channel\":\"Security\"" (4624 or 4625 or 4771 or 4776 or 4768 or 4769)
// 4624 - Login Success, 4625 or 4771 - Login Failures, 4776 - Domain Controller - Credential validation, 4768 - A Kerberos authentication ticket (TGT) was requested, 4769 - A Kerberos service ticket was requested
| json "event_id", "level", "message", "keywords", "channel" as event_id_obj, event_type, msg_summary, Keywords, channel nodrop
| json field=event_id_obj "id" as event_id
```

**Windows 2012+ - OpenTelemetry/Windows - Overview/Recent Policy Changes**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  ( "Audit Policy Change" or "System audit policy was changed" or *policy*change* or "Policy Change" or 4902 or 4904 or 4905 or 4906 or 4907 or 4912 or 4715 or 4719 or 4739)
| json "event_id", "message" as event_id_obj, msg_summary nodrop
| json field=event_id_obj "id" as event_id
| parse regex field = msg_summary "(?<msg_summary>.*\.*)" 
```

**Windows 2012+ - OpenTelemetry/Windows - Overview/System Restarts**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  "\"channel\":\"Security\""
| json "event_id", "message", "channel" as event_id_obj, msg_summary, channel nodrop 
| json field=event_id_obj "id" as event_id
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```

**Windows 2012+ - OpenTelemetry/Windows - Overview/Top Services Installed**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} (("\"channel\":\"System\"" "7045") or ("\"channel\":\"Security\"" "4697"))
| json "event_id", "computer", "message", "event_data"  as event_id_obj, host, msg_summary, event_data nodrop
| json field=event_id_obj "id" as event_id
| parse field=event_data "\"ServiceName\":\"*\"" as service_name nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
```


