# Parsers For Windows - Cloud Security Monitoring and Analytics

## Parser:
```
| json "Channel", "EventID", "Computer" nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "Channel", "EventID", "Computer" nodrop
| json "Provider.Name", "EventData.param1", "EventData.param2" as provider, service, status nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "Channel", "EventID", "Computer" nodrop
| json "UserData.LogFileCleared.SubjectUserName", "UserData.LogFileCleared.Channel" as SubjectUserName, targetChannel nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "Channel", "Provider.Name", "Computer" as Channel, Provider, Computer  nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "Channel", "Provider.Name", "Computer" nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "Channel", "Provider.Name", "Computer", "EventID" as Channel, Provider, Computer, EventId  nodrop
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
| json "Channel", "Provider.Name", "EventID", "Computer" as Channel, Provider, EventID, Computer nodrop
| json "EventData.updateTitle", "UserData.updatelist.content" as updateTitle, updateList nodrop
| parse regex field=update "\-\s(?<update>.*)" multi nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "Channel", "Provider.Name", "EventID", "Computer", "Keywords" as Channel, Provider, EventID, Computer, Keywords nodrop
| json "EventData.TargetDomainName", "EventData.TargetUserName", "EventData.SubjectDomainName", "EventData.SubjectUserName" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "Channel", "Provider.Name", "EventID", "Computer", "Keywords", "Message" as Channel, Provider, EventID, Computer, Keywords, Message nodrop
| json "EventData.TargetDomainName", "EventData.TargetUserName", "EventData.SubjectDomainName", "EventData.SubjectUserName", "EventData.IpAddress", "EventData.LogonType", "EventData.Status" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, IpAddress, LogonType, Status nodrop
| parse field=Message "*\n" as message nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "Channel", "Provider.Name", "EventID", "Computer", "Keywords", "Message" as Channel, Provider, EventID, Computer, Keywords, Message nodrop
| json "EventData.TargetDomainName", "EventData.TargetUserName", "EventData.SubjectDomainName", "EventData.SubjectUserName", "EventData.IpAddress", "EventData.LogonType", "EventData.Status" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, IpAddress, LogonType, Status nodrop 
| parse field=Message "*\n" as message nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "Channel", "Provider.Name", "EventID", "Computer", "Keywords", "Message" as Channel, Provider, EventID, Computer, Keywords, Message nodrop
| json "EventData.TargetDomainName", "EventData.TargetUserName", "EventData.SubjectDomainName", "EventData.SubjectUserName", "EventData.MemberName" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, MemberName nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "Channel", "Provider.Name", "EventID", "Computer", "Keywords", "Message" as Channel, Provider, EventID, Computer, Keywords, Message nodrop
| json "EventData.TargetDomainName", "EventData.TargetUserName", "EventData.SubjectDomainName", "EventData.SubjectUserName", "EventData.MemberName" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, MemberName nodrop
| parse field=Message "*\n" as message nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json "EventID", "Computer", "Message" nodrop
| parse regex field=Message "^(?<message>[^\n\r]*)" nodrop
| json "EventData.SubjectUserName", "EventData.TargetUserName" as SubjectUserName, TargetUserName nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update



## Parser:
```
| json field=_raw "Computer" as Computer nodrop
 `n```
### Use Cases:
Channels, Channels Trend, Computers, Description, Details, Events, Group, Latest Events, Latest Events (Last 1000), Maximum Ingestion Delay, Member, Provider, Subject, SubjectUserName, Summary, TargetUserName, Top 10 Event IDs, Trend, Update


