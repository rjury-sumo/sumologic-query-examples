# Parsers For Windows - Cloud Security Monitoring and Analytics - OpenTelemetry

## Parser:
```
| json "channel", "event_id","event_data", "computer","provider" as Channel,EventID, EventData, Computer, Provider  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "channel", "event_id","event_data", "computer","provider" as Channel,EventID, EventData, Computer, Provider  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| json field=EventData "TargetDomainName", "TargetUserName", "SubjectDomainName", "SubjectUserName", "MemberName" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, MemberName nodrop
 `n```
### Use Cases:
Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Member, Subject, SubjectUserName, Summary, TargetUserName, Trend



## Parser:
```
| json "channel", "event_id","event_data", "computer","provider" as Channel,EventID, EventData, Computer, Provider  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| parse field=EventData "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=EventData "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=EventData "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=EventData "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=EventData "\"MemberName\":\"*\"" as MemberName nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "channel", "event_id","event_data", "computer","provider" as Channel,EventID, EventData, Computer, Provider  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| parse regex field=Message "^(?<message>[^\n\r]*)" nodrop
| json field=EventData "TargetDomainName", "TargetUserName", "SubjectDomainName", "SubjectUserName", "MemberName" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, MemberName nodrop
 `n```
### Use Cases:
Computers, Latest Events (Last 1000), SubjectUserName, TargetUserName, Trend



## Parser:
```
| json "channel", "event_id","event_data", "computer","provider" as Channel,EventID, EventData, Computer, Provider  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| parse regex field=Message "^(?<message>[^\n\r]*)" nodrop
| parse field=EventData "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=EventData "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=EventData "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=EventData "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=EventData "\"MemberName\":\"*\"" as MemberName nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "channel", "event_id","event_data", "computer","provider", "keywords", "message" as Channel,EventID, EventData, Computer, Provider, Keywords, Message  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| json field=EventData "TargetDomainName", "TargetUserName", "SubjectDomainName", "SubjectUserName", "MemberName" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, MemberName nodrop
 `n```
### Use Cases:
Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Member, SubjectUserName, Summary, TargetUserName, Trend



## Parser:
```
| json "channel", "event_id","event_data", "computer","provider", "keywords", "message" as Channel,EventID, EventData, Computer, Provider, Keywords, Message  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| parse field=EventData "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=EventData "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=EventData "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=EventData "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=EventData "\"MemberName\":\"*\"" as MemberName nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "Channel", "EventID", "Computer" nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "Channel", "Provider.Name", "computer" nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "channel", "provider.name", "computer" nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "Channel", "Provider.Name", "EventID", "Computer" as Channel, Provider, EventID, Computer nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "channel", "provider", "event_id", "computer" as Channel, Provider, EventID, Computer nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "channel", "provider", "event_id", "computer" as Channel, Provider, EventID, Computer nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| json "UserData.LogFileCleared.SubjectUserName", "UserData.LogFileCleared.Channel" as SubjectUserName, targetChannel nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "channel", "provider", "event_id", "computer" as Channel, Provider, EventID, Computer nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider| where Channel = "Security"
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "channel", "provider", "event_id", "computer","task" as Channel, Provider, EventID, Computer, Task nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "channel", "provider", "event_id", "computer","task","keywords","event_data","message" as Channel, Provider, EventID, Computer, Task, Keyword, Event_Data, Message  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| json field=Event_Data "TargetDomainName","TargetUserName", "SubjectDomainName", "SubjectUserName", "IpAddress", "LogonType" as  TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, IpAddress, LogonType nodrop
 `n```
### Use Cases:
Computers, Details, Events, Latest Events, Latest Events (Last 1000), SubjectUserName, Summary, TargetUserName, Trend



## Parser:
```
| json "channel", "provider", "event_id", "computer","task","keywords","event_data","message" as Channel, Provider, EventID, Computer, Task, Keyword, Event_Data, Message  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| json field=Event_Data "TargetDomainName","TargetUserName", "SubjectDomainName", "SubjectUserName", "IpAddress", "LogonType" as  TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, IpAddress, LogonType nodrop
| parse field=Message "*\n" as message nodrop
 `n```
### Use Cases:
Computers, Details, Events, Latest Events, Latest Events (Last 1000), SubjectUserName, Summary, TargetUserName, Trend



## Parser:
```
| json "channel", "provider", "event_id", "computer","task","keywords","event_data","message" as Channel, Provider, EventID, Computer, Task, Keyword, Event_Data, Message  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| parse field=Event_Data "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=Event_Data "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=Event_Data "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=Event_Data "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=Event_Data "\"IpAddress\":\"*\"" as IpAddress nodrop
| parse field=Event_Data "\"LogonType\":\"*\"" as LogonType nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "channel", "provider", "event_id", "computer","task","keywords","event_data","message" as Channel, Provider, EventID, Computer, Task, Keyword, Event_Data, Message  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| parse field=Event_Data "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=Event_Data "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=Event_Data "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=Event_Data "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=Event_Data "\"IpAddress\":\"*\"" as IpAddress nodrop
| parse field=Event_Data "\"LogonType\":\"*\"" as LogonType nodrop
| parse field=Message "*\n" as message nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "channel", "provider", "event_id", "computer","task","keywords","event_data","message" as Channel, Provider, EventID, Computer, Task, Keywords, Event_Data, Message  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| json field=Event_Data "TargetDomainName","TargetUserName", "SubjectDomainName", "SubjectUserName", "IpAddress", "LogonType" as  TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, IpAddress, LogonType nodrop
| parse field=Message "*\n" as message nodrop
 `n```
### Use Cases:
Computers, Details, Events, Latest Events, Latest Events (Last 1000), SubjectUserName, Summary, TargetUserName, Trend



## Parser:
```
| json "channel", "provider", "event_id", "computer","task","keywords","event_data","message" as Channel, Provider, EventID, Computer, Task, Keywords, Event_Data, Message  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| parse field=Event_Data "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=Event_Data "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=Event_Data "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=Event_Data "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=Event_Data "\"IpAddress\":\"*\"" as IpAddress nodrop
| parse field=Event_Data "\"LogonType\":\"*\"" as LogonType nodrop
| parse field=Message "*\n" as message nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json field=_raw "computer" as Computer nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update


