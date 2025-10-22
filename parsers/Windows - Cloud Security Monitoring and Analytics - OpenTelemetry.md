# Parsers For Windows - Cloud Security Monitoring and Analytics - OpenTelemetry

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - Default Accounts Usage/Computers**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} ("ROOT" OR "ADMIN" OR "ADMINISTRATOR" OR "DBSNMP" OR "SYS" OR "SYSMAN" OR "SYSTEM" OR "CISCO15" OR "SADMIN" OR "CISCO" OR "NETSCREEN" OR "GUEST") {{EventID}} {{Computer}}

| json "channel", "event_id","event_data", "computer","provider" as Channel,EventID, EventData, Computer, Provider  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| where Computer matches "{{Computer}}" and EventID matches "{{EventID}}"

| parse regex field=Message "^(?<message>[^\n\r]*)" nodrop

| parse field=EventData "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=EventData "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=EventData "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=EventData "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=EventData "\"MemberName\":\"*\"" as MemberName nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - Default Accounts Usage/Latest Events (Last 1000)**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} ("ROOT" OR "ADMIN" OR "ADMINISTRATOR" OR "DBSNMP" OR "SYS" OR "SYSMAN" OR "SYSTEM" OR "CISCO15" OR "SADMIN" OR "CISCO" OR "NETSCREEN" OR "GUEST") {{EventID}} {{Computer}}

| json "channel", "event_id","event_data", "computer","provider" as Channel,EventID, EventData, Computer, Provider  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| where Computer matches "{{Computer}}" and EventID matches "{{EventID}}"

| parse regex field=Message "^(?<message>[^\n\r]*)" nodrop

| parse field=EventData "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=EventData "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=EventData "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=EventData "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=EventData "\"MemberName\":\"*\"" as MemberName nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - Default Accounts Usage/SubjectUserName**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} ("ROOT" OR "ADMIN" OR "ADMINISTRATOR" OR "DBSNMP" OR "SYS" OR "SYSMAN" OR "SYSTEM" OR "CISCO15" OR "SADMIN" OR "CISCO" OR "NETSCREEN" OR "GUEST") {{EventID}} {{Computer}}

| json "channel", "event_id","event_data", "computer","provider" as Channel,EventID, EventData, Computer, Provider  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| where Computer matches "{{Computer}}" and EventID matches "{{EventID}}"

| parse regex field=Message "^(?<message>[^\n\r]*)" nodrop

| parse field=EventData "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=EventData "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=EventData "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=EventData "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=EventData "\"MemberName\":\"*\"" as MemberName nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - Default Accounts Usage/TargetUserName**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} ("ROOT" OR "ADMIN" OR "ADMINISTRATOR" OR "DBSNMP" OR "SYS" OR "SYSMAN" OR "SYSTEM" OR "CISCO15" OR "SADMIN" OR "CISCO" OR "NETSCREEN" OR "GUEST") {{EventID}} {{Computer}}

| json "channel", "event_id","event_data", "computer","provider" as Channel,EventID, EventData, Computer, Provider  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| where Computer matches "{{Computer}}" and EventID matches "{{EventID}}"

| parse regex field=Message "^(?<message>[^\n\r]*)" nodrop

| parse field=EventData "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=EventData "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=EventData "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=EventData "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=EventData "\"MemberName\":\"*\"" as MemberName nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - Default Accounts Usage/Trend**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} ("ROOT" OR "ADMIN" OR "ADMINISTRATOR" OR "DBSNMP" OR "SYS" OR "SYSMAN" OR "SYSTEM" OR "CISCO15" OR "SADMIN" OR "CISCO" OR "NETSCREEN" OR "GUEST") {{EventID}} {{Computer}}

| json "channel", "event_id","event_data", "computer","provider" as Channel,EventID, EventData, Computer, Provider  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| where Computer matches "{{Computer}}" and EventID matches "{{EventID}}"

| parse regex field=Message "^(?<message>[^\n\r]*)" nodrop

| parse field=EventData "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=EventData "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=EventData "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=EventData "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=EventData "\"MemberName\":\"*\"" as MemberName nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - TLS Certificates and Secure Channels/Computers**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Schannel" ("36864" OR "36866" OR "36867" OR "36868" OR "36869" OR "36870" OR "36871" OR "36872" OR "36873" OR "36874" OR "36875" OR "36876" OR "36877" OR "36878" OR "36879" OR "36880" OR "36881" OR "36882" OR "36883" OR "36884" OR "36885" OR "36886" OR "36887" OR "36888") * *

| json "channel", "provider", "event_id", "computer","task" as Channel, Provider, EventID, Computer, Task nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - TLS Certificates and Secure Channels/Events**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Schannel" ("36864" OR "36866" OR "36867" OR "36868" OR "36869" OR "36870" OR "36871" OR "36872" OR "36873" OR "36874" OR "36875" OR "36876" OR "36877" OR "36878" OR "36879" OR "36880" OR "36881" OR "36882" OR "36883" OR "36884" OR "36885" OR "36886" OR "36887" OR "36888") * *

| json "channel", "provider", "event_id", "computer","task" as Channel, Provider, EventID, Computer, Task nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - TLS Certificates and Secure Channels/Latest Events**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Security-Auditing" ("4868" OR "4869" OR "4870" OR "4871" OR "4872" OR "4873" OR "4875" OR "4876" OR "4877" OR "4878" OR "4879" OR "4880" OR "4881" OR "4882" OR "4883" OR "4884" OR "4885" OR "4886" OR "4887" OR "4888" OR "4889" OR "4890" OR "4891" OR "4892" OR "4893" OR "4894" OR "4895" OR "4896" OR "4897" OR "4898" OR "4899" OR "4900") {{EventID}} {{Computer}}
| json "channel", "provider", "event_id", "computer","task" as Channel, Provider, EventID, Computer, Task nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - TLS Certificates and Secure Channels/Trend**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Schannel" ("36864" OR "36866" OR "36867" OR "36868" OR "36869" OR "36870" OR "36871" OR "36872" OR "36873" OR "36874" OR "36875" OR "36876" OR "36877" OR "36878" OR "36879" OR "36880" OR "36881" OR "36882" OR "36883" OR "36884" OR "36885" OR "36886" OR "36887" OR "36888") * *

| json "channel", "provider", "event_id", "computer","task" as Channel, Provider, EventID, Computer, Task nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - User Account Changes/Details**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Security-Auditing" "4724" {{Computer}} {{Subject}} {{Target}}

| json "channel", "provider", "event_id", "computer","task","keywords","event_data","message" as Channel, Provider, EventID, Computer, Task, Keyword, Event_Data, Message  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| where Channel = "Security"
| where Provider = "Microsoft-Windows-Security-Auditing"
| where EventID = "4724"
| where Computer matches "{{Computer}}"


| parse field=Event_Data "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=Event_Data "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=Event_Data "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=Event_Data "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=Event_Data "\"IpAddress\":\"*\"" as IpAddress nodrop
| parse field=Event_Data "\"LogonType\":\"*\"" as LogonType nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - User Account Changes/Summary**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Security-Auditing" "4724" {{Computer}} {{Subject}} {{Target}}

| json "channel", "provider", "event_id", "computer","task","keywords","event_data","message" as Channel, Provider, EventID, Computer, Task, Keyword, Event_Data, Message  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| where Channel = "Security"
| where Provider = "Microsoft-Windows-Security-Auditing"
| where EventID = "4724"
| where Computer matches "{{Computer}}"


| parse field=Event_Data "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=Event_Data "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=Event_Data "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=Event_Data "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=Event_Data "\"IpAddress\":\"*\"" as IpAddress nodrop
| parse field=Event_Data "\"LogonType\":\"*\"" as LogonType nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - User Account Changes/Trend**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Security-Auditing" "4740" {{Computer}} {{Subject}} {{Target}}

| json "channel", "provider", "event_id", "computer","task","keywords","event_data","message" as Channel, Provider, EventID, Computer, Task, Keyword, Event_Data, Message  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| where Channel = "Security"
| where Provider = "Microsoft-Windows-Security-Auditing"
| where EventID = "4740"
| where Computer matches "{{Computer}}"


| parse field=Event_Data "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=Event_Data "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=Event_Data "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=Event_Data "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=Event_Data "\"IpAddress\":\"*\"" as IpAddress nodrop
| parse field=Event_Data "\"LogonType\":\"*\"" as LogonType nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - User Authentication/Details**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Security-Auditing" ("4770" OR "4771" OR "4772" OR "4776" OR "4777" OR "4768" OR "4769" OR "4820" OR "4625" OR "4624" OR "4647" OR "4778" OR "4779" OR "4800" OR "4801" OR "4802" OR "4803") "Audit Success" * * * * *


| json "channel", "provider", "event_id", "computer","task","keywords","event_data","message" as Channel, Provider, EventID, Computer, Task, Keywords, Event_Data, Message  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| where Channel = "Security"
| where Provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4770", "4771", "4772", "4776", "4776", "4768", "4769", "4820", "4625", "4624", "4647", "4778", "4779", "4800", "4801", "4802","4803")
| where EventID matches "{{EventID}}"
| where Keywords matches "*Audit Success*"
| where Computer matches "{{Computer}}"

| parse field=Event_Data "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=Event_Data "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=Event_Data "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=Event_Data "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=Event_Data "\"IpAddress\":\"*\"" as IpAddress nodrop
| parse field=Event_Data "\"LogonType\":\"*\"" as LogonType nodrop

| where !(TargetUserName matches "*$")
| replace(IpAddress, "::ffff:", "") as IpAddress

| formatDate(_messageTime, "yyyy-MM-dd hh:mm:ss") as date
| format("%s/%s", SubjectDomainName, SubjectUserName) as subject
| format("%s/%s", TargetDomainName, TargetUserName) as target
| parse field=Message "*\n" as message nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - User Authentication/Summary**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Security-Auditing" ("4770" OR "4771" OR "4772" OR "4776" OR "4777" OR "4768" OR "4769" OR "4820" OR "4625" OR "4624" OR "4647" OR "4778" OR "4779" OR "4800" OR "4801" OR "4802" OR "4803") "Audit Failure" * * * * *

| json "channel", "provider", "event_id", "computer","task","keywords","event_data","message" as Channel, Provider, EventID, Computer, Task, Keywords, Event_Data, Message  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| where Channel = "Security"
| where provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4770", "4771", "4772", "4776", "4776", "4768", "4769", "4820", "4625", "4624", "4647", "4778", "4779", "4800", "4801", "4802","4803")
| where EventID matches "{{EventID}}"
| where Keywords matches "*Audit Failure*"
| where Computer matches "{{Computer}}"


| parse field=Event_Data "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=Event_Data "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=Event_Data "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=Event_Data "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=Event_Data "\"IpAddress\":\"*\"" as IpAddress nodrop
| parse field=Event_Data "\"LogonType\":\"*\"" as LogonType nodrop

| where !(TargetUserName matches "*$")
| replace(IpAddress, "::ffff:", "") as IpAddress

| formatDate(_messageTime, "yyyy-MM-dd hh:mm:ss") as date
| format("%s/%s", SubjectDomainName, SubjectUserName) as subject
| format("%s/%s", TargetDomainName, TargetUserName) as target
| parse field=Message "*\n" as message nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - User Authentication/Trend**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Security-Auditing" ("4770" OR "4771" OR "4772" OR "4776" OR "4777" OR "4768" OR "4769" OR "4820" OR "4625" OR "4624" OR "4647" OR "4778" OR "4779" OR "4800" OR "4801" OR "4802" OR "4803") "Audit Failure" * * * * *

| json "channel", "provider", "event_id", "computer","task","keywords","event_data","message" as Channel, Provider, EventID, Computer, Task, Keywords, Event_Data, Message  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| where Channel = "Security"
| where provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4770", "4771", "4772", "4776", "4776", "4768", "4769", "4820", "4625", "4624", "4647", "4778", "4779", "4800", "4801", "4802","4803")
| where EventID matches "{{EventID}}"
| where Keywords matches "*Audit Failure*"
| where Computer matches "{{Computer}}"


| parse field=Event_Data "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=Event_Data "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=Event_Data "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=Event_Data "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=Event_Data "\"IpAddress\":\"*\"" as IpAddress nodrop
| parse field=Event_Data "\"LogonType\":\"*\"" as LogonType nodrop

| where !(TargetUserName matches "*$")
| replace(IpAddress, "::ffff:", "") as IpAddress

| formatDate(_messageTime, "yyyy-MM-dd hh:mm:ss") as date
| format("%s/%s", SubjectDomainName, SubjectUserName) as subject
| format("%s/%s", TargetDomainName, TargetUserName) as target
| parse field=Message "*\n" as message nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - User Group Updates/Computers**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Security-Auditing" ("4732" OR "4728" OR "4756" OR "4746" OR "4751" OR "4761" OR "4733" OR "4729" OR "4757" OR "4747" OR "4752" OR "4762") * * *

| json "channel", "event_id","event_data", "computer","provider" as Channel,EventID, EventData, Computer, Provider  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| where Computer matches "{{Computer}}" and EventID matches "{{EventID}}"
| where Channel = "Security"
| where Provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4732", "4728", "4756", "4746", "4751", "4761", "4733", "4729", "4757", "4747", "4752", "4762")
| parse field=EventData "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=EventData "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=EventData "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=EventData "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=EventData "\"MemberName\":\"*\"" as MemberName nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - User Group Updates/Description**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Security-Auditing" ("4732" OR "4728" OR "4756" OR "4746" OR "4751" OR "4761" OR "4733" OR "4729" OR "4757" OR "4747" OR "4752" OR "4762") * * *

| json "channel", "event_id","event_data", "computer","provider" as Channel,EventID, EventData, Computer, Provider  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| where Computer matches "{{Computer}}" and EventID matches "{{EventID}}"
| where Channel = "Security"
| where Provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4732", "4728", "4756", "4746", "4751", "4761", "4733", "4729", "4757", "4747", "4752", "4762")
| parse field=EventData "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=EventData "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=EventData "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=EventData "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=EventData "\"MemberName\":\"*\"" as MemberName nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - User Group Updates/Group**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Security-Auditing" ("4732" OR "4728" OR "4756" OR "4746" OR "4751" OR "4761" OR "4733" OR "4729" OR "4757" OR "4747" OR "4752" OR "4762") * * *

| json "channel", "event_id","event_data", "computer","provider" as Channel,EventID, EventData, Computer, Provider  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| where Computer matches "{{Computer}}" and EventID matches "{{EventID}}"
| where Channel = "Security"
| where Provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4732", "4728", "4756", "4746", "4751", "4761", "4733", "4729", "4757", "4747", "4752", "4762")
| parse field=EventData "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=EventData "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=EventData "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=EventData "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=EventData "\"MemberName\":\"*\"" as MemberName nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - User Group Updates/Latest Events**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Security-Auditing" ("4732" OR "4728" OR "4756" OR "4746" OR "4751" OR "4761" OR "4733" OR "4729" OR "4757" OR "4747" OR "4752" OR "4762") * * *

| json "channel", "event_id","event_data", "computer","provider", "keywords", "message" as Channel,EventID, EventData, Computer, Provider, Keywords, Message  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| where Computer matches "{{Computer}}" and EventID matches "{{EventID}}"
| where Channel = "Security"
| where Provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4732", "4728", "4756", "4746", "4751", "4761", "4733", "4729", "4757", "4747", "4752", "4762")
| parse field=EventData "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=EventData "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=EventData "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=EventData "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=EventData "\"MemberName\":\"*\"" as MemberName nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - User Group Updates/Member**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Security-Auditing" ("4732" OR "4728" OR "4756" OR "4746" OR "4751" OR "4761" OR "4733" OR "4729" OR "4757" OR "4747" OR "4752" OR "4762") * * *

| json "channel", "event_id","event_data", "computer","provider" as Channel,EventID, EventData, Computer, Provider  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| where Computer matches "{{Computer}}" and EventID matches "{{EventID}}"
| where Channel = "Security"
| where Provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4732", "4728", "4756", "4746", "4751", "4761", "4733", "4729", "4757", "4747", "4752", "4762")
| parse field=EventData "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=EventData "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=EventData "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=EventData "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=EventData "\"MemberName\":\"*\"" as MemberName nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - User Group Updates/Subject**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Security-Auditing" ("4732" OR "4728" OR "4756" OR "4746" OR "4751" OR "4761" OR "4733" OR "4729" OR "4757" OR "4747" OR "4752" OR "4762") * * *

| json "channel", "event_id","event_data", "computer","provider" as Channel,EventID, EventData, Computer, Provider  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| where Computer matches "{{Computer}}" and EventID matches "{{EventID}}"
| where Channel = "Security"
| where Provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4732", "4728", "4756", "4746", "4751", "4761", "4733", "4729", "4757", "4747", "4752", "4762")
| parse field=EventData "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=EventData "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=EventData "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=EventData "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=EventData "\"MemberName\":\"*\"" as MemberName nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - User Group Updates/Trend**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Security-Auditing" ("4732" OR "4728" OR "4756" OR "4746" OR "4751" OR "4761" OR "4733" OR "4729" OR "4757" OR "4747" OR "4752" OR "4762") * * *

| json "channel", "event_id","event_data", "computer","provider" as Channel,EventID, EventData, Computer, Provider  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
| where Computer matches "{{Computer}}" and EventID matches "{{EventID}}"
| where Channel = "Security"
| where Provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4732", "4728", "4756", "4746", "4751", "4761", "4733", "4729", "4757", "4747", "4752", "4762")
| parse field=EventData "\"TargetDomainName\":\"*\"" as TargetDomainName nodrop
| parse field=EventData "\"TargetUserName\":\"*\"" as TargetUserName nodrop
| parse field=EventData "\"SubjectDomainName\":\"*\"" as SubjectDomainName nodrop
| parse field=EventData "\"SubjectUserName\":\"*\"" as SubjectUserName nodrop
| parse field=EventData "\"MemberName\":\"*\"" as MemberName nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - Windows Defender/Computers**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Windows Defender/Operational" {{{Computer}}} {{{EventID}}}

| json "Channel", "EventID", "Computer" nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - Windows Defender/Details**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Windows Defender/Operational" {{{Computer}}} {{{EventID}}}

| json "Channel", "EventID", "Computer" nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - Windows Defender/Events**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Windows Defender/Operational" {{{Computer}}} {{{EventID}}}

| json "Channel", "EventID", "Computer" nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - Windows Defender/Trend**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Windows Defender/Operational" {{{Computer}}} {{{EventID}}}

| json "Channel", "EventID", "Computer" nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - Windows Firewall/Computers**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Security-Auditing" ("5440" OR "5441" OR "5442" OR "5443" OR "5444" OR "5446" OR  "5447" OR "5448" OR "5449" OR "5450") {{{EventID}}} {{{Computer}}}

| json "Channel", "Provider.Name", "EventID", "Computer" as Channel, Provider, EventID, Computer nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - Windows Firewall/Details**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Security-Auditing" ("4944" OR "4945" OR "4946" OR "4947" OR "4948" OR "4949" OR  "4950" OR "4951" OR "4952" OR "4954" OR "4956" OR "4957" OR "4958") {{{EventID}}} {{{Computer}}}

| json "Channel", "Provider.Name", "EventID", "Computer" as Channel, Provider, EventID, Computer nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - Windows Firewall/Trend**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Security-Auditing" ("4944" OR "4945" OR "4946" OR "4947" OR "4948" OR "4949" OR  "4950" OR "4951" OR "4952" OR "4954" OR "4956" OR "4957" OR "4958") {{{EventID}}} {{{Computer}}}

| json "Channel", "Provider.Name", "EventID", "Computer" as Channel, Provider, EventID, Computer nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - Windows Updates/Computers**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-WindowsUpdateClient" {{Computer}} {{EventID}} {{Task}}


| json "channel", "provider", "event_id", "computer","task" as Channel, Provider, EventID, Computer, Task nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - Windows Updates/Events**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-WindowsUpdateClient" {{Computer}} {{EventID}} {{Task}}

| json "channel", "provider", "event_id", "computer","task" as Channel, Provider, EventID, Computer, Task nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - Windows Updates/Latest Events**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-WindowsUpdateClient" {{Computer}} {{EventID}} {{Task}}

| json "channel", "provider", "event_id", "computer","task" as Channel, Provider, EventID, Computer, Task nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - Windows Updates/Trend**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-WindowsUpdateClient" {{Computer}} {{EventID}} {{Task}}

| json "channel", "provider", "event_id", "computer","task" as Channel, Provider, EventID, Computer, Task nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Analytics - Windows Updates/Update**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-WindowsUpdateClient" {{Computer}} {{EventID}} {{Task}}

| json "channel", "provider", "event_id", "computer","task" as Channel, Provider, EventID, Computer, Task nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Monitoring - Critical Events/Computers**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Service Control Manager" "7036" {{Computer}}

| json "channel", "event_id","event_data", "computer","provider" as Channel,EventID, EventData, Computer, Provider  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Monitoring - Critical Events/Details**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Service Control Manager" "7036" {{Computer}}

| json "channel", "event_id","event_data", "computer","provider" as Channel,EventID, EventData, Computer, Provider  nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Monitoring - Critical Events/Maximum Ingestion Delay**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} {{{Computer}}}

| json field=_raw "computer" as Computer nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Monitoring - Critical Events/Trend**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} ("104" OR "517" OR "1102") {{{Computer}}}

| json "channel", "provider", "event_id", "computer" as Channel, Provider, EventID, Computer nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider

| where Channel in ("System", "Security")
| where EventID in ("104", "517", "1102")
| where computer matches "{{{Computer}}}"

| json "UserData.LogFileCleared.SubjectUserName", "UserData.LogFileCleared.Channel" as SubjectUserName, targetChannel nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Monitoring - Inventory/Channels**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} {{{Computer}}}

| json "channel", "provider", "event_id", "computer" as Channel, Provider, EventID, Computer nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Monitoring - Inventory/Channels Trend**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} {{{Computer}}}

| json "channel", "provider", "event_id", "computer" as Channel, Provider, EventID, Computer nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Monitoring - Inventory/Computers**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Security-Auditing" "4608" {{Computer}}

| json "channel", "provider", "event_id", "computer" as Channel, Provider, EventID, Computer nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Monitoring - Inventory/Details**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} {{{Computer}}}

| json "Channel", "Provider.Name", "computer" nodrop
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Monitoring - Inventory/Latest Events (Last 1000)**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "Microsoft-Windows-Security-Auditing" "4608" {{{Computer}}}

| json "channel", "provider", "event_id", "computer" as Channel, Provider, EventID, Computer nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider| where Channel = "Security"
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Monitoring - Inventory/Provider**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} {{{Computer}}}


| json "channel", "provider", "event_id", "computer" as Channel, Provider, EventID, Computer nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Monitoring - Inventory/Top 10 Event IDs**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} {{{Computer}}}

| json "channel", "provider", "event_id", "computer" as Channel, Provider, EventID, Computer nodrop
| json field=EventID "qualifiers","id" as  qualifiers, EventID
| json field=Provider "guid","event_source","name" as  Guid, EventSource,Provider
```

**Windows - Cloud Security Monitoring and Analytics - OpenTelemetry/Windows - Security Monitoring - Inventory/Trend**
```
sumo.datasource=windows deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} {{{Computer}}}

| json "Channel", "Provider.Name", "computer" nodrop
```


