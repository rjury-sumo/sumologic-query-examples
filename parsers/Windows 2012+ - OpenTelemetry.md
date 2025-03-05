# Parsers For Windows 2012+ - OpenTelemetry

## Parser:
```
| json  "level", "keywords" as level, keywords nodrop
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json  "level", "message" as level, msg_summary nodrop
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id"  as event_id_obj nodrop
| json field=event_id_obj "id" as event_id
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id",  "channel", "message", "level" as event_id, channel, msg_summary, level nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
| parse field=msg_summary "Windows Installer * the product. Product Name: *. Product Version: *. Product Language: *. Manufacturer: *. * success or error status: *." as action, product_name, product_version, product_language, manufacturer, activity, status nodrop | parse field=msg_summary "Product: * -- * completed *." as product_name, activity, status nodrop
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id",  "level" as event_id_obj, level nodrop
| json field=event_id_obj "id" as event_id
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id", "channel", "message", "level" as event_id_obj, channel, msg_summary, level nodrop
| json field=event_id_obj "id" as event_id
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
| parse field=msg_summary "Windows Installer * the product. Product Name: *. Product Version: *. Product Language: *. Manufacturer: *. * success or error status: *." as action, product_name, product_version, product_language, manufacturer, activity, status nodrop | parse field=msg_summary "Product: * -- * completed *." as product_name, activity, status nodrop
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id", "channel", "message", "level" as event_id, channel, msg_summary, level nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
| parse field=msg_summary "Windows Installer * the product. Product Name: *. Product Version: *. Product Language: *. Manufacturer: *. * success or error status: *." as action, product_name, product_version, product_language, manufacturer, activity, status nodrop | parse field=msg_summary "Product: * -- * completed *." as product_name, activity, status nodrop
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id", "computer", "evel", "message", "keywords", "event_data.SubjectUserName",  "event_data.SubjectDomainName", "event_data.TargetUserName", "event_data.TargetDomainName", "event_data.IpAddress", "event_data.IpPort", "channel" as event_id_obj, host, event_type, msg_summary, Keywords, src_user, src_domain, dest_user, dest_domain, src_ip, src_port, channel nodrop
| json field=event_id_obj "id" as event_id
 `n```
### Use Cases:
Breakdown by Keyword Tag, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Installations and UnInstallations, Level Breakdown, Logins by Hour, Successful Login Source Location, System Operations, Top 10 Service Operations, Top Messages



## Parser:
```
| json "event_id", "computer", "event_data.AccountName", "event_data.AccountDomain", "event_data.SessionName", "event_data.ClientName", "event_data.ClientAddress", "channel", "event_data.LogonID" as event_id_obj, host, dest_user, dest_domain, session_name, src_host, src_ip, channel, LogonID nodrop
| json field=event_id_obj "id" as event_id
 `n```
### Use Cases:
Breakdown by Keyword Tag, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Installations and UnInstallations, Level Breakdown, Logins by Hour, Successful Login Source Location, Successful RDP Reconnects, System Operations, Top 10 Service Operations, Top Messages



## Parser:
```
| json "event_id", "computer", "event_data", "channel" as event_id_obj, host, event_data, channel nodrop
| parse field=event_data "\"AccountName\":\"*\"" as dest_user nodrop
| parse field=event_data "\"AccountDomain\":\"*\"" as dest_domain nodrop
| parse field=event_data "\"SessionName\":\"*\"" as session_name nodrop
| parse field=event_data "\"ClientName\":\"*\"" as src_host nodrop
| parse field=event_data "\"ClientAddress\":\"*\"" as src_ip nodrop
| parse field=event_data "\"LogonID\":\"*\"" as LogonID nodrop
| json field=event_id_obj "id" as event_id
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id", "computer", "level", "message", "keywords", "event_data", "channel" as event_id_obj, host, event_type, msg_summary, Keywords, event_data, channel nodrop
| parse field=event_data "\"SubjectUserName\":\"*\"" as src_user nodrop
| parse field=event_data "\"TargetUserName\":\"*\"" as dest_user nodrop
| parse field=event_data "\"IpAddress\":\"*\"" as src_ip nodrop
| json field=event_id_obj "id" as event_id
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id", "computer", "message", "channel", "event_data.Status", "Keywords" as event_id_obj, host, msg_summary, channel, status, Keywords nodrop
| json field=event_id_obj "id" as event_id
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
 `n```
### Use Cases:
Breakdown by Keyword Tag, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Installations and UnInstallations, Level Breakdown, Logins by Hour, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, Top 10 Service Operations, Top Messages



## Parser:
```
| json "event_id", "computer", "message", "channel", "event_data", "Keywords" as event_id_obj, host, msg_summary, channel, event_data, Keywords nodrop
| json field=event_id_obj "id" as event_id
| parse field=event_data "\"Status\":\"*\"" as status nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id", "computer", "message", "details.Group.Group Name", "details.Group.Group Domain", "channel", "task" as event_id_obj, host, msg_summary, group_name, group_domain, channel, task nodrop
| json field=event_id_obj "id" as event_id
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id", "computer", "message", "details.Subject.Account Name", "details.Subject.Domain Name", "channel", "keywords" as event_id_obj, host, msg_summary, src_user, src_domain, channel, Keywords nodrop
| json field=event_id_obj "id" as event_id
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id", "computer", "message", "event_data.AccountName", "event_data.ServiceName", "event_data.ServiceType", "event_data.StartType", "event_data.ImagePath", "event_data.EventSourceName"  as event_id_obj, host, msg_summary, account_name, service_name, service_type, service_start_type, service_image_path, event_source_name nodrop
| json field=event_id_obj "id" as event_id
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id", "computer", "message", "event_data.LogonType", "event_data.FailureReason", "event_data.IpAddress", "event_data.IpPort", "event_data.SubjectUserName", "event_data.SubjectDomainName", "event_data.TargetUserName", "event_data.TargetDomainName", "event_data.WorkstationName", "channel", "event_data.Status", "event_data.SubStatus", "event_data.Workstation", "Keywords" as event_id_obj, host, msg_summary, logon_type, fail_reason, src_ip, src_port, src_user, src_domain, dest_user, dest_domain, src_host, channel, status, sub_status, work_station, Keywords nodrop
| json field=event_id_obj "id" as event_id
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
 `n```
### Use Cases:
Breakdown by Keyword Tag, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, Top 10 Service Operations, Top Messages



## Parser:
```
| json "event_id", "computer", "message", "event_data.SubjectUserName", "event_data.SubjectDomainName", "event_data.TargetUserName", "event_data.TargetDomainName", "details.Group.Group Name", "details.Group.Group Domain", "channel", "event_data.MemberName", "task" as event_id_obj, host, msg_summary, src_user, src_domain, dest_user, dest_domain, group_name, group_domain, channel, MemberName, task nodrop
| json field=event_id_obj "id" as event_id
 `n```
### Use Cases:
Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, Top 10 Service Operations, Top Messages



## Parser:
```
| json "event_id", "computer", "message", "event_data"  as event_id_obj, host, msg_summary, event_data nodrop
| json field=event_id_obj "id" as event_id
| parse field=event_data "\"ServiceName\":\"*\"" as service_name nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id", "computer", "message", "event_data", "channel", "Keywords" as event_id_obj, host, msg_summary, event_data, channel, Keywords nodrop
| json field=event_id_obj "id" as event_id
| parse field=event_data "\"Status\":\"*\"" as status
| parse field=event_data "\"IpAddress\":\"*\"" as src_ip
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id", "computer", "message", "event_data", "channel", "Keywords" as event_id_obj, host, msg_summary, event_data, channel, Keywords nodrop
| json field=event_id_obj "id" as event_id
| parse field=event_data "\"Status\":\"*\"" as status nodrop
| parse regex field=msg_summary "Failure Information:\s+Failure Reason:\s+(?<failure_reason>[^.\r]+?)[.\r]" nodrop
| parse regex field=msg_summary "Result Code:\s+(?<result_code>[^\r]+)\r" nodrop
| parse regex field=msg_summary "Failure Code:\s+(?<failure_code>[^\r]+)\r" nodrop
| parse field=status "[\"*\"]" as status
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id", "keywords", "event_data.SubjectUserName",  "event_data.SubjectDomainName", "event_data.TargetUserName", "event_data.TargetDomainName", "event_data.IpAddress", "event_data.IpPort", "channel" as event_id_obj, Keywords, src_user, src_domain, dest_user, dest_domain, src_ip, src_port, channel nodrop
| json field=event_id_obj "id" as event_id
 `n```
### Use Cases:
Breakdown by Keyword Tag, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Installations and UnInstallations, Level Breakdown, Logins by Hour, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, Top 10 Service Operations, Top Messages



## Parser:
```
| json "event_id", "keywords", "event_data", "channel" as event_id_obj, Keywords,event_data, channel nodrop
| json field=event_id_obj "id" as event_id
| parse field=event_data "\"SubjectUserName\":\"*\"" as src_user nodrop
| parse field=event_data "\"SubjectDomainName\":\"*\"" as src_domain nodrop
| parse field=event_data "\"TargetUserName\":\"*\"" as dest_user nodrop
| parse field=event_data "\"TargetDomainName\":\"*\"" as dest_domain nodrop
| parse field=event_data "\"IpAddress\":\"*\"" as src_ip nodrop
| parse field=event_data "\"IpPort\":\"*\"" as src_port nodrop
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id", "keywords[0]", "channel" as event_id_obj, Keywords, channel nodrop
| json field=event_id_obj "id" as event_id
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id", "level", "message", "keywords", "channel" as event_id_obj, event_type, msg_summary, Keywords, channel nodrop
| json field=event_id_obj "id" as event_id
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id", "message" as event_id_obj, msg_summary nodrop
| json field=event_id_obj "id" as event_id
| parse regex field = msg_summary "(?<msg_summary>.*\.*)" 
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id", "message", "channel" as event_id_obj, msg_summary, channel nodrop 
| json field=event_id_obj "id" as event_id
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id", "message", "event_data", "channel", "provider" as event_id_obj, msg_summary, event_data, channel, event_source_name nodrop 
| json field=event_id_obj "id" as event_id
| parse field=event_data "*\n*" as service_name,service_state
 `n```
### Use Cases:
Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Installations and UnInstallations, Level Breakdown, System Operations, Top 10 Service Operations, Top Messages



## Parser:
```
| json "event_id", "message", "event_data", "channel", "provider" as event_id_obj, msg_summary, event_data, channel, event_source_name nodrop 
| json field=event_id_obj "id" as event_id
| parse field=event_data "\"param1\":\"*\"" as service_name
| parse field=event_data "\"param2\":\"*\"" as service_state
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "event_id","channel", "message", "level" as event_id_obj, channel, msg_summary, level nodrop
| json field=event_id_obj "id" as event_id
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
| parse field=msg_summary "Windows Installer * the product. Product Name: *. Product Version: *. Product Language: *. Manufacturer: *. * success or error status: *." as action, product_name, product_version, product_language, manufacturer, activity, status nodrop | parse field=msg_summary "Product: * -- * completed *." as product_name, activity, status nodrop
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "eventid", "channel" as event_id, channel nodrop
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed



## Parser:
```
| json "level", "message" as level, msg_summary nodrop
 `n```
### Use Cases:
All Fatal or Warning Messages by Source Host, Audit Log Cleared, Breakdown by Keyword Tag, Changes to Administrative Groups, Error Keyword - LogReduce, Error Keyword - One Day Time Comparison, Error Keyword - Outlier, Error Keyword by Computer and Message, Error Keyword Trend, Errors and Warnings Over Time, Event Distribution Over Time, Events by Level, Events Trend, Failed Logins by Hour, Failed Logins Outlier, Failed Logins Source Location, Installations and UnInstallations, Level Breakdown, Logins by Hour, Recent Policy Changes, Successful Login Source Location, Successful Logins, Successful RDP Reconnects, System Operations, System Restarts, Top 10 Service Operations, Top Messages, Top Services Installed


