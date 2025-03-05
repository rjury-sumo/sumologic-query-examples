# Parsers For Active Directory 2012+ - OpenTelemetry

## Parser:
```
| json  "computer", "keywords" as host.name, keywords nodrop
 
```
### Use Cases:
Admin Activity by Category, Audit Failures Over Time, Category Over Time, Logon/off Activity, Object Creation, Object Deletion, Rights Management, Successes vs Failures, Top 10 Messages



## Parser:
```
| json "computer", "message", "keywords", "event_data", "channel", "task" as  host, msg_summary, Keywords, event_data, channel, task nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
| parse field=event_data "\"SubjectUserName\":\"*\"" as src_user
| parse field=event_data "\"TargetUserName\":\"*\"" as dest_user
 
```
### Use Cases:
Admin Activity by Category, Audit Failures Over Time, Category Over Time, Logon/off Activity, Object Creation, Object Deletion, Rights Management, Successes vs Failures, Top 10 Messages



## Parser:
```
| json "event_id", "computer" as event_id, host nodrop
| json field=event_id "id" as event_id
 
```
### Use Cases:
Audit Failures Over Time, Category Over Time, Logon/off Activity, Object Creation, Rights Management, Successes vs Failures, Top 10 Messages



## Parser:
```
| json "event_id", "computer", "event_data", "channel", "message"  as event_id, host, event_data,  channel, msg_summary nodrop
| json field=event_id "id" as event_id
| parse field=event_data "\"LogonType\":\"*\"" as logon_type
 
```
### Use Cases:
Audit Failures Over Time, Category Over Time, Logon/off Activity, Object Creation, Successes vs Failures, Top 10 Messages



## Parser:
```
| json "event_id", "computer", "keywords" as event_id, host.name, keywords nodrop
 
```
### Use Cases:
Category Over Time, Object Creation, Successes vs Failures, Top 10 Messages



## Parser:
```
| json "event_id", "computer", "keywords" as event_id, host.name, keywords nodrop
| json field=event_id "id" as event_id
 
```
### Use Cases:
Admin Activity by Category, Audit Failures Over Time, Category Over Time, Logon/off Activity, Object Creation, Object Deletion, Rights Management, Successes vs Failures, Top 10 Messages



## Parser:
```
| json "event_id", "computer", "keywords", "event_data" as event_id, host, Keywords, event_data nodrop
| parse field=event_data "\"IpAddress\":\"*\"" as src_ip
 
```
### Use Cases:
Admin Activity by Category, All Failures by IP, Audit Failures Over Time, Category Over Time, Logon/off Activity, Object Creation, Object Deletion, Rights Management, Successes vs Failures, Top 10 Messages



## Parser:
```
| json "event_id", "computer", "message" as event_id, host.name, msg_summary nodrop
| json field=event_id "id" as event_id
 
```
### Use Cases:
Audit Failures Over Time, Category Over Time, Object Creation, Successes vs Failures, Top 10 Messages



## Parser:
```
| json "event_id", "computer", "message" as event_id, host.name, msg_summary nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 
```
### Use Cases:
Audit Failures Over Time, Category Over Time, Object Creation, Successes vs Failures, Top 10 Messages



## Parser:
```
| json "event_id", "computer", "message", "channel" as event_id, host, msg_summary, channel nodrop
| json field=event_id "id" as event_id
 
```
### Use Cases:
Audit Failures Over Time, Category Over Time, Logon/off Activity, Object Creation, Object Deletion, Rights Management, Successes vs Failures, Top 10 Messages



## Parser:
```
| json "event_id", "computer", "message", "task" as event_id, host.name, msg_summary, task nodrop
| parse regex field=msg_summary "(?<msg_summary>.*\.*)" nodrop
 
```
### Use Cases:
Audit Failures Over Time, Category Over Time, Object Creation, Successes vs Failures, Top 10 Messages


