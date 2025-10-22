# Parsers For Windows - Cloud Security Monitoring and Analytics

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - Default Accounts Usage/Computers**
```
_sourceCategory={{Logsdatasource}}  ("ROOT" OR "ADMIN" OR "ADMINISTRATOR" OR "DBSNMP" OR "SYS" OR "SYSMAN" OR "SYSTEM" OR "CISCO15" OR "SADMIN" OR "CISCO" OR "NETSCREEN" OR "GUEST") {{EventID}} {{Computer}}

| json "EventID", "Computer", "Message" nodrop
| where EventID matches "{{EventID}}"
| where Computer matches "{{Computer}}"

| parse regex field=Message "^(?<message>[^\n\r]*)" nodrop

| json "EventData.SubjectUserName", "EventData.TargetUserName" as SubjectUserName, TargetUserName nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - Default Accounts Usage/Latest Events (Last 1000)**
```
_sourceCategory={{Logsdatasource}}  ("ROOT" OR "ADMIN" OR "ADMINISTRATOR" OR "DBSNMP" OR "SYS" OR "SYSMAN" OR "SYSTEM" OR "CISCO15" OR "SADMIN" OR "CISCO" OR "NETSCREEN" OR "GUEST") {{{EventID}}} {{{Computer}}}

| json "EventID", "Computer", "Message" nodrop
| where EventID matches "{{{EventID}}}"
| where Computer matches "{{{Computer}}}"

| parse regex field=Message "^(?<message>[^\n\r]*)" nodrop

| json "EventData.SubjectUserName", "EventData.TargetUserName" as SubjectUserName, TargetUserName nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - Default Accounts Usage/SubjectUserName**
```
_sourceCategory={{Logsdatasource}}  ("ROOT" OR "ADMIN" OR "ADMINISTRATOR" OR "DBSNMP" OR "SYS" OR "SYSMAN" OR "SYSTEM" OR "CISCO15" OR "SADMIN" OR "CISCO" OR "NETSCREEN" OR "GUEST") {{{EventID}}} {{{Computer}}}

| json "EventID", "Computer", "Message" nodrop
| where EventID matches "{{{EventID}}}"
| where Computer matches "{{{Computer}}}"

| parse regex field=Message "^(?<message>[^\n\r]*)" nodrop

| json "EventData.SubjectUserName", "EventData.TargetUserName" as SubjectUserName, TargetUserName nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - Default Accounts Usage/TargetUserName**
```
_sourceCategory={{Logsdatasource}}  ("ROOT" OR "ADMIN" OR "ADMINISTRATOR" OR "DBSNMP" OR "SYS" OR "SYSMAN" OR "SYSTEM" OR "CISCO15" OR "SADMIN" OR "CISCO" OR "NETSCREEN" OR "GUEST") {{{EventID}}} {{{Computer}}}

| json "EventID", "Computer", "Message" nodrop
| where EventID matches "{{{EventID}}}"
| where Computer matches "{{{Computer}}}"

| parse regex field=Message "^(?<message>[^\n\r]*)" nodrop

| json "EventData.SubjectUserName", "EventData.TargetUserName" as SubjectUserName, TargetUserName nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - Default Accounts Usage/Trend**
```
_sourceCategory={{Logsdatasource}}  ("ROOT" OR "ADMIN" OR "ADMINISTRATOR" OR "DBSNMP" OR "SYS" OR "SYSMAN" OR "SYSTEM" OR "CISCO15" OR "SADMIN" OR "CISCO" OR "NETSCREEN" OR "GUEST") {{{EventID}}} {{{Computer}}}

| json "EventID", "Computer", "Message" nodrop
| where EventID matches "{{{EventID}}}"
| where Computer matches "{{{Computer}}}"

| parse regex field=Message "^(?<message>[^\n\r]*)" nodrop

| json "EventData.SubjectUserName", "EventData.TargetUserName" as SubjectUserName, TargetUserName nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - TLS Certificates and Secure Channels/Computers**
```
_sourceCategory={{Logsdatasource}}  "Schannel" ("36864" OR "36866" OR "36867" OR "36868" OR "36869" OR "36870" OR "36871" OR "36872" OR "36873" OR "36874" OR "36875" OR "36876" OR "36877" OR "36878" OR "36879" OR "36880" OR "36881" OR "36882" OR "36883" OR "36884" OR "36885" OR "36886" OR "36887" OR "36888") {{{EventID}}} {{{Computer}}}

| json "Channel", "Provider.Name", "EventID", "Computer" as Channel, Provider, EventID, Computer nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - TLS Certificates and Secure Channels/Events**
```
_sourceCategory={{Logsdatasource}}  "Schannel" ("36864" OR "36866" OR "36867" OR "36868" OR "36869" OR "36870" OR "36871" OR "36872" OR "36873" OR "36874" OR "36875" OR "36876" OR "36877" OR "36878" OR "36879" OR "36880" OR "36881" OR "36882" OR "36883" OR "36884" OR "36885" OR "36886" OR "36887" OR "36888") {{{EventID}}} {{{Computer}}}

| json "Channel", "Provider.Name", "EventID", "Computer" as Channel, Provider, EventID, Computer nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - TLS Certificates and Secure Channels/Latest Events**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Security-Auditing" ("4868" OR "4869" OR "4870" OR "4871" OR "4872" OR "4873" OR "4875" OR "4876" OR "4877" OR "4878" OR "4879" OR "4880" OR "4881" OR "4882" OR "4883" OR "4884" OR "4885" OR "4886" OR "4887" OR "4888" OR "4889" OR "4890" OR "4891" OR "4892" OR "4893" OR "4894" OR "4895" OR "4896" OR "4897" OR "4898" OR "4899" OR "4900") {{{EventID}}} {{{Computer}}}

| json "Channel", "Provider.Name", "EventID", "Computer" as Channel, Provider, EventID, Computer nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - TLS Certificates and Secure Channels/Trend**
```
_sourceCategory={{Logsdatasource}}  "Schannel" ("36864" OR "36866" OR "36867" OR "36868" OR "36869" OR "36870" OR "36871" OR "36872" OR "36873" OR "36874" OR "36875" OR "36876" OR "36877" OR "36878" OR "36879" OR "36880" OR "36881" OR "36882" OR "36883" OR "36884" OR "36885" OR "36886" OR "36887" OR "36888") {{{EventID}}} {{{Computer}}}

| json "Channel", "Provider.Name", "EventID", "Computer" as Channel, Provider, EventID, Computer nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - User Account Changes/Details**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Security-Auditing" "4724" {{{Computer}}} {{{Subject}}} {{{Target}}}

| json "Channel", "Provider.Name", "EventID", "Computer", "Keywords" as Channel, Provider, EventID, Computer, Keywords nodrop
| where Channel = "Security"
| where provider = "Microsoft-Windows-Security-Auditing"
| where EventID = "4724"
| where computer matches "{{{Computer}}}"

| json "EventData.TargetDomainName", "EventData.TargetUserName", "EventData.SubjectDomainName", "EventData.SubjectUserName" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - User Account Changes/Summary**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Security-Auditing" "4724" {{{Computer}}} {{{Subject}}} {{{Target}}}

| json "Channel", "Provider.Name", "EventID", "Computer", "Keywords" as Channel, Provider, EventID, Computer, Keywords nodrop
| where Channel = "Security"
| where provider = "Microsoft-Windows-Security-Auditing"
| where EventID = "4724"
| where computer matches "{{{Computer}}}"

| json "EventData.TargetDomainName", "EventData.TargetUserName", "EventData.SubjectDomainName", "EventData.SubjectUserName" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - User Account Changes/Trend**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Security-Auditing" "4740" {{{Computer}}} {{{Subject}}} {{{Target}}}

| json "Channel", "Provider.Name", "EventID", "Computer", "Keywords" as Channel, Provider, EventID, Computer, Keywords nodrop
| where Channel = "Security"
| where provider = "Microsoft-Windows-Security-Auditing"
| where EventID = "4740"
| where computer matches "{{{Computer}}}"

| json "EventData.TargetDomainName", "EventData.TargetUserName", "EventData.SubjectDomainName", "EventData.SubjectUserName" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - User Authentication/Details**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Security-Auditing" ("4770" OR "4771" OR "4772" OR "4776" OR "4777" OR "4768" OR "4769" OR "4820" OR "4625" OR "4624" OR "4647" OR "4778" OR "4779" OR "4800" OR "4801" OR "4802" OR "4803") "Audit Success" {{{Computer}}} {{{Subject}}} {{{Target}}} {{{IpAddress}}} {{{EventID}}}

| json "Channel", "Provider.Name", "EventID", "Computer", "Keywords", "Message" as Channel, Provider, EventID, Computer, Keywords, Message nodrop
| where Channel = "Security"
| where provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4770", "4771", "4772", "4776", "4776", "4768", "4769", "4820", "4625", "4624", "4647", "4778", "4779", "4800", "4801", "4802","4803")
| where EventID matches "{{{EventID}}}"
| where Keywords = "Audit Success"
| where computer matches "{{{Computer}}}"

| json "EventData.TargetDomainName", "EventData.TargetUserName", "EventData.SubjectDomainName", "EventData.SubjectUserName", "EventData.IpAddress", "EventData.LogonType", "EventData.Status" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, IpAddress, LogonType, Status nodrop
| where !(TargetUserName matches "*$")
| replace(IpAddress, "::ffff:", "") as IpAddress

| formatDate(_messageTime, "yyyy-MM-dd hh:mm:ss") as date
| format("%s/%s", SubjectDomainName, SubjectUserName) as subject
| format("%s/%s", TargetDomainName, TargetUserName) as target
| parse field=Message "*\n" as message nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - User Authentication/Summary**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Security-Auditing" ("4770" OR "4771" OR "4772" OR "4776" OR "4777" OR "4768" OR "4769" OR "4820" OR "4625" OR "4624" OR "4647" OR "4778" OR "4779" OR "4800" OR "4801" OR "4802" OR "4803") "Audit Failure" {{{Computer}}} {{{Subject}}} {{{Target}}} {{{IpAddress}}} {{{EventID}}}

| json "Channel", "Provider.Name", "EventID", "Computer", "Keywords", "Message" as Channel, Provider, EventID, Computer, Keywords, Message nodrop
| where Channel = "Security"
| where provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4770", "4771", "4772", "4776", "4776", "4768", "4769", "4820", "4625", "4624", "4647", "4778", "4779", "4800", "4801", "4802","4803")
| where EventID matches "{{{EventID}}}"
| where Keywords = "Audit Failure"
| where computer matches "{{{Computer}}}"

| json "EventData.TargetDomainName", "EventData.TargetUserName", "EventData.SubjectDomainName", "EventData.SubjectUserName", "EventData.IpAddress", "EventData.LogonType", "EventData.Status" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, IpAddress, LogonType, Status nodrop
| where !(TargetUserName matches "*$")
| replace(IpAddress, "::ffff:", "") as IpAddress

| formatDate(_messageTime, "yyyy-MM-dd hh:mm:ss") as date
| format("%s/%s", SubjectDomainName, SubjectUserName) as subject
| format("%s/%s", TargetDomainName, TargetUserName) as target
| parse field=Message "*\n" as message nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - User Authentication/Trend**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Security-Auditing" ("4770" OR "4771" OR "4772" OR "4776" OR "4777" OR "4768" OR "4769" OR "4820" OR "4625" OR "4624" OR "4647" OR "4778" OR "4779" OR "4800" OR "4801" OR "4802" OR "4803") "Audit Failure" {{{Computer}}} {{{Subject}}} {{{Target}}} {{{IpAddress}}} {{{EventID}}}

| json "Channel", "Provider.Name", "EventID", "Computer", "Keywords", "Message" as Channel, Provider, EventID, Computer, Keywords, Message nodrop
| where Channel = "Security"
| where provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4770", "4771", "4772", "4776", "4776", "4768", "4769", "4820", "4625", "4624", "4647", "4778", "4779", "4800", "4801", "4802","4803")
| where EventID matches "{{{EventID}}}"
| where Keywords = "Audit Failure"
| where computer matches "{{{Computer}}}"

| json "EventData.TargetDomainName", "EventData.TargetUserName", "EventData.SubjectDomainName", "EventData.SubjectUserName", "EventData.IpAddress", "EventData.LogonType", "EventData.Status" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, IpAddress, LogonType, Status nodrop
| where !(TargetUserName matches "*$")
| replace(IpAddress, "::ffff:", "") as IpAddress

| formatDate(_messageTime, "yyyy-MM-dd hh:mm:ss") as date
| format("%s/%s", SubjectDomainName, SubjectUserName) as subject
| format("%s/%s", TargetDomainName, TargetUserName) as target
| parse field=Message "*\n" as message nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - User Group Updates/Computers**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Security-Auditing" ("4732" OR "4728" OR "4756" OR "4746" OR "4751" OR "4761" OR "4733" OR "4729" OR "4757" OR "4747" OR "4752" OR "4762") {{{Subject}}} {{{Member}}} {{{Group}}}

| json "Channel", "Provider.Name", "EventID", "Computer", "Keywords", "Message" as Channel, Provider, EventID, Computer, Keywords, Message nodrop
| where Channel = "Security"
| where provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4732", "4728", "4756", "4746", "4751", "4761", "4733", "4729", "4757", "4747", "4752", "4762")

| json "EventData.TargetDomainName", "EventData.TargetUserName", "EventData.SubjectDomainName", "EventData.SubjectUserName", "EventData.MemberName" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, MemberName nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - User Group Updates/Description**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Security-Auditing" ("4732" OR "4728" OR "4756" OR "4746" OR "4751" OR "4761" OR "4733" OR "4729" OR "4757" OR "4747" OR "4752" OR "4762") {{{Subject}}} {{{Member}}} {{{Group}}}

| json "Channel", "Provider.Name", "EventID", "Computer", "Keywords", "Message" as Channel, Provider, EventID, Computer, Keywords, Message nodrop
| where Channel = "Security"
| where provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4732", "4728", "4756", "4746", "4751", "4761", "4733", "4729", "4757", "4747", "4752", "4762")

| json "EventData.TargetDomainName", "EventData.TargetUserName", "EventData.SubjectDomainName", "EventData.SubjectUserName", "EventData.MemberName" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, MemberName nodrop

| formatDate(_messageTime, "yyyy-MM-dd hh:mm:ss") as date
| format("%s/%s", SubjectDomainName, SubjectUserName) as subject
| format("%s/%s", TargetDomainName, TargetUserName) as target
| replace(MemberName, ",", "\n") as MemberName
| parse field=Message "*\n" as message nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - User Group Updates/Group**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Security-Auditing" ("4732" OR "4728" OR "4756" OR "4746" OR "4751" OR "4761" OR "4733" OR "4729" OR "4757" OR "4747" OR "4752" OR "4762") {{{Subject}}} {{{Member}}} {{{Group}}}

| json "Channel", "Provider.Name", "EventID", "Computer", "Keywords", "Message" as Channel, Provider, EventID, Computer, Keywords, Message nodrop
| where Channel = "Security"
| where provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4732", "4728", "4756", "4746", "4751", "4761", "4733", "4729", "4757", "4747", "4752", "4762")

| json "EventData.TargetDomainName", "EventData.TargetUserName", "EventData.SubjectDomainName", "EventData.SubjectUserName", "EventData.MemberName" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, MemberName nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - User Group Updates/Latest Events**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Security-Auditing" ("4732" OR "4728" OR "4756" OR "4746" OR "4751" OR "4761" OR "4733" OR "4729" OR "4757" OR "4747" OR "4752" OR "4762") {{{Subject}}} {{{Member}}} {{{Group}}}

| json "Channel", "Provider.Name", "EventID", "Computer", "Keywords", "Message" as Channel, Provider, EventID, Computer, Keywords, Message nodrop
| where Channel = "Security"
| where provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4732", "4728", "4756", "4746", "4751", "4761", "4733", "4729", "4757", "4747", "4752", "4762")

| json "EventData.TargetDomainName", "EventData.TargetUserName", "EventData.SubjectDomainName", "EventData.SubjectUserName", "EventData.MemberName" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, MemberName nodrop

| formatDate(_messageTime, "yyyy-MM-dd hh:mm:ss") as date
| format("%s/%s", SubjectDomainName, SubjectUserName) as subject
| format("%s/%s", TargetDomainName, TargetUserName) as target
| replace(MemberName, ",", "\n") as MemberName
| parse field=Message "*\n" as message nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - User Group Updates/Member**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Security-Auditing" ("4732" OR "4728" OR "4756" OR "4746" OR "4751" OR "4761" OR "4733" OR "4729" OR "4757" OR "4747" OR "4752" OR "4762") {{{Subject}}} {{{Member}}} {{{Group}}}

| json "Channel", "Provider.Name", "EventID", "Computer", "Keywords", "Message" as Channel, Provider, EventID, Computer, Keywords, Message nodrop
| where Channel = "Security"
| where provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4732", "4728", "4756", "4746", "4751", "4761", "4733", "4729", "4757", "4747", "4752", "4762")

| json "EventData.TargetDomainName", "EventData.TargetUserName", "EventData.SubjectDomainName", "EventData.SubjectUserName", "EventData.MemberName" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, MemberName nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - User Group Updates/Subject**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Security-Auditing" ("4732" OR "4728" OR "4756" OR "4746" OR "4751" OR "4761" OR "4733" OR "4729" OR "4757" OR "4747" OR "4752" OR "4762") {{{Subject}}} {{{Member}}} {{{Group}}}

| json "Channel", "Provider.Name", "EventID", "Computer", "Keywords", "Message" as Channel, Provider, EventID, Computer, Keywords, Message nodrop
| where Channel = "Security"
| where provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4732", "4728", "4756", "4746", "4751", "4761", "4733", "4729", "4757", "4747", "4752", "4762")

| json "EventData.TargetDomainName", "EventData.TargetUserName", "EventData.SubjectDomainName", "EventData.SubjectUserName", "EventData.MemberName" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, MemberName nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - User Group Updates/Trend**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Security-Auditing" ("4732" OR "4728" OR "4756" OR "4746" OR "4751" OR "4761" OR "4733" OR "4729" OR "4757" OR "4747" OR "4752" OR "4762") {{{Subject}}} {{{Member}}} {{{Group}}}

| json "Channel", "Provider.Name", "EventID", "Computer", "Keywords", "Message" as Channel, Provider, EventID, Computer, Keywords, Message nodrop
| where Channel = "Security"
| where provider = "Microsoft-Windows-Security-Auditing"
| where EventID in ("4732", "4728", "4756", "4746", "4751", "4761", "4733", "4729", "4757", "4747", "4752", "4762")

| json "EventData.TargetDomainName", "EventData.TargetUserName", "EventData.SubjectDomainName", "EventData.SubjectUserName", "EventData.MemberName" as TargetDomainName, TargetUserName, SubjectDomainName, SubjectUserName, MemberName nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - Windows Defender/Computers**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Windows Defender/Operational" {{{Computer}}} {{{EventID}}}

| json "Channel", "EventID", "Computer" nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - Windows Defender/Details**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Windows Defender/Operational" {{{Computer}}} {{{EventID}}}

| json "Channel", "EventID", "Computer" nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - Windows Defender/Events**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Windows Defender/Operational" {{{Computer}}} {{{EventID}}}

| json "Channel", "EventID", "Computer" nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - Windows Defender/Trend**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Windows Defender/Operational" {{{Computer}}} {{{EventID}}}

| json "Channel", "EventID", "Computer" nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - Windows Firewall/Computers**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Security-Auditing" ("5440" OR "5441" OR "5442" OR "5443" OR "5444" OR "5446" OR  "5447" OR "5448" OR "5449" OR "5450") {{{EventID}}} {{{Computer}}}

| json "Channel", "Provider.Name", "EventID", "Computer" as Channel, Provider, EventID, Computer nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - Windows Firewall/Details**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Security-Auditing" ("4944" OR "4945" OR "4946" OR "4947" OR "4948" OR "4949" OR  "4950" OR "4951" OR "4952" OR "4954" OR "4956" OR "4957" OR "4958") {{{EventID}}} {{{Computer}}}

| json "Channel", "Provider.Name", "EventID", "Computer" as Channel, Provider, EventID, Computer nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - Windows Firewall/Trend**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Security-Auditing" ("4944" OR "4945" OR "4946" OR "4947" OR "4948" OR "4949" OR  "4950" OR "4951" OR "4952" OR "4954" OR "4956" OR "4957" OR "4958") {{{EventID}}} {{{Computer}}}

| json "Channel", "Provider.Name", "EventID", "Computer" as Channel, Provider, EventID, Computer nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - Windows Updates/Computers**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-WindowsUpdateClient" {{{Computer}}} {{{EventID}}} {{{Update}}}

| json "Channel", "Provider.Name", "EventID", "Computer" as Channel, Provider, EventID, Computer nodrop
| where Channel = "System"
| where provider = "Microsoft-Windows-WindowsUpdateClient"
| where EventID matches "{{{EventID}}}"
| where Computer matches "{{{Computer}}}"

| json "EventData.updateTitle", "UserData.updatelist.content" as updateTitle, updateList nodrop

| if(IsEmpty(updateTitle), updateList, updateTitle) as update
| parse regex field=update "\-\s(?<update>.*)" multi nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - Windows Updates/Events**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-WindowsUpdateClient" {{{Computer}}} {{{EventID}}} {{{Update}}}

| json "Channel", "Provider.Name", "EventID", "Computer" as Channel, Provider, EventID, Computer nodrop
| where Channel = "System"
| where provider = "Microsoft-Windows-WindowsUpdateClient"
| where EventID matches "{{{EventID}}}"
| where Computer matches "{{{Computer}}}"

| json "EventData.updateTitle", "UserData.updatelist.content" as updateTitle, updateList nodrop

| if(IsEmpty(updateTitle), updateList, updateTitle) as update
| parse regex field=update "\-\s(?<update>.*)" multi nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - Windows Updates/Latest Events**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-WindowsUpdateClient" {{{Computer}}} {{{EventID}}} {{{Update}}}

| json "Channel", "Provider.Name", "EventID", "Computer" as Channel, Provider, EventID, Computer nodrop
| where Channel = "System"
| where provider = "Microsoft-Windows-WindowsUpdateClient"
| where EventID matches "{{{EventID}}}"
| where Computer matches "{{{Computer}}}"

| json "EventData.updateTitle", "UserData.updatelist.content" as updateTitle, updateList nodrop

| if(IsEmpty(updateTitle), updateList, updateTitle) as update
| parse regex field=update "\-\s(?<update>.*)" multi nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - Windows Updates/Trend**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-WindowsUpdateClient" {{{Computer}}} {{{EventID}}} {{{Update}}}

| json "Channel", "Provider.Name", "EventID", "Computer" as Channel, Provider, EventID, Computer nodrop
| where Channel = "System"
| where provider = "Microsoft-Windows-WindowsUpdateClient"
| where EventID matches "{{{EventID}}}"
| where Computer matches "{{{Computer}}}"

| json "EventData.updateTitle", "UserData.updatelist.content" as updateTitle, updateList nodrop

| if(IsEmpty(updateTitle), updateList, updateTitle) as update
| parse regex field=update "\-\s(?<update>.*)" multi nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Analytics - Windows Updates/Update**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-WindowsUpdateClient" {{{Computer}}} {{{EventID}}} {{{Update}}}

| json "Channel", "Provider.Name", "EventID", "Computer" as Channel, Provider, EventID, Computer nodrop
| where Channel = "System"
| where provider = "Microsoft-Windows-WindowsUpdateClient"
| where EventID matches "{{{EventID}}}"
| where Computer matches "{{{Computer}}}"

| json "EventData.updateTitle", "UserData.updatelist.content" as updateTitle, updateList nodrop

| if(IsEmpty(updateTitle), updateList, updateTitle) as update
| parse regex field=update "\-\s(?<update>.*)" multi nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Monitoring - Critical Events/Computers**
```
_sourceCategory={{Logsdatasource}}  "Service Control Manager" "7036" {{{Computer}}}

| json "Channel", "EventID", "Computer" nodrop
| where Channel = "System"
| where EventID = "7036"
| where computer matches "{{{Computer}}}"

| json "Provider.Name", "EventData.param1", "EventData.param2" as provider, service, status nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Monitoring - Critical Events/Details**
```
_sourceCategory={{Logsdatasource}}  "Service Control Manager" "7036" {{{Computer}}}

| json "Channel", "EventID", "Computer" nodrop
| where Channel = "System"
| where EventID = "7036"
| where computer matches "{{{Computer}}}"

| json "Provider.Name", "EventData.param1", "EventData.param2" as provider, service, status nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Monitoring - Critical Events/Maximum Ingestion Delay**
```
_sourceCategory={{Logsdatasource}}  {{{Computer}}}

| json field=_raw "Computer" as Computer nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Monitoring - Critical Events/Trend**
```
_sourceCategory={{Logsdatasource}}  ("104" OR "517" OR "1102") {{{Computer}}}

| json "Channel", "EventID", "Computer" nodrop
| where Channel in ("System", "Security")
| where EventID in ("104", "517", "1102")
| where computer matches "{{{Computer}}}"

| json "UserData.LogFileCleared.SubjectUserName", "UserData.LogFileCleared.Channel" as SubjectUserName, targetChannel nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Monitoring - Inventory/Channels**
```
_sourceCategory={{Logsdatasource}}  {{{Computer}}}

| json "Channel", "Provider.Name", "Computer" as Channel, Provider, Computer  nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Monitoring - Inventory/Channels Trend**
```
_sourceCategory={{Logsdatasource}}  {{{Computer}}}

| json "Channel", "Provider.Name", "Computer" as Channel, Provider, Computer  nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Monitoring - Inventory/Computers**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Security-Auditing" "4608" {{{Computer}}}

| json "Channel", "Provider.Name", "EventID", "Computer" as Channel, Provider, EventID, Computer nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Monitoring - Inventory/Details**
```
_sourceCategory={{Logsdatasource}}  {{{Computer}}}

| json "Channel", "Provider.Name", "Computer" nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Monitoring - Inventory/Latest Events (Last 1000)**
```
_sourceCategory={{Logsdatasource}}  "Microsoft-Windows-Security-Auditing" "4608" {{{Computer}}}

| json "Channel", "Provider.Name", "EventID", "Computer" as Channel, Provider, EventID, Computer nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Monitoring - Inventory/Provider**
```
_sourceCategory={{Logsdatasource}}  {{{Computer}}}

| json "Channel", "Provider.Name", "Computer" as Channel, Provider, Computer  nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Monitoring - Inventory/Top 10 Event IDs**
```
_sourceCategory={{Logsdatasource}}  {{{Computer}}}

| json "Channel", "Provider.Name", "Computer", "EventID" as Channel, Provider, Computer, EventId  nodrop
```

**Windows - Cloud Security Monitoring and Analytics/Windows - Security Monitoring - Inventory/Trend**
```
_sourceCategory={{Logsdatasource}}  {{{Computer}}}

| json "Channel", "Provider.Name", "Computer" nodrop
```


