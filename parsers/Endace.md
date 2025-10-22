# Parsers For Endace

**Endace/Cisco ASA/Endace_Pivot_to_Vision**
```
_sourceCategory={{SyslogMessagesDataSource}}  | where source = "ciscoasa" |keyvalue regex "\s(.*?): (.*?)," keys "Classification" as Classification | keyvalue regex "\s(.*?): (.*?)," keys "Message" as message| count by  _messagetime, endace_pivot_to_vision, log, message, Classification, src_ip, dest_ip
```

**Endace/Cisco ASA/Top 10 Application Protocols**
```
_sourceCategory={{SyslogMessagesDataSource}}  | where source = "ciscoasa" | parse regex "ApplicationProtocol: (?<ApplicationProtocol>\w{1,25})" | count by ApplicationProtocol | limit 20
```

**Endace/Cisco ASA/Top 10 Attacks**
```
_sourceCategory={{SyslogMessagesDataSource}}  | where source = "ciscoasa" | keyvalue regex "\s(.*?): (.*?)," keys "Classification" as Classification | count by Classification | sort by _count | limit 10
```

**Endace/Cisco ASA/Top 10 Protocols**
```
_sourceCategory={{SyslogMessagesDataSource}}  | where source = "ciscoasa" | parse regex "Protocol: (?<Protocol>\w{1,3})" | count by Protocol | limit 10
```

**Endace/Cisco Firepower/Endace_Pivot_to_Vision**
```
(_sourceCategory={{SyslogMessagesDataSource}} )
| where source = "FTD-1-430001" |keyvalue regex "\s(.*?): (.*?)," keys "Classification" as Classification | keyvalue regex "\s(.*?): (.*?)," keys "Message" as message| count by _messagetime, endace_pivot_to_vision, log, message, Classification, src_ip, dest_ip
```

**Endace/Cisco Firepower/Top 10 Attacks**
```
(_sourceCategory={{SyslogMessagesDataSource}} )
| where source = "FTD-1-430001" | keyvalue regex "\s(.*?): (.*?)," keys "Classification" as Classification | count by Classification | sort by _count | limit 10
```

**Endace/Cisco Firepower/Top 10 Protocols**
```
(_sourceCategory={{SyslogMessagesDataSource}} )
| where source = "FTD-1-430001" | parse regex "Protocol: (?<Protocol>\w{1,10})" | count by Protocol | limit 10
```

**Endace/Cisco Firepower/Top Application Protocols**
```
(_sourceCategory={{SyslogMessagesDataSource}} )
| where source = "FTD-1-430001" | parse regex "ApplicationProtocol: (?<ApplicationProtocol>\w{1,25})" | count by ApplicationProtocol | limit 20
```

**Endace/Palo Alto Networks/Endace_Pivot_to_Vision**
```
(_sourceCategory={{SyslogMessagesDataSource}} )
| where source = "Palo Alto Networks" | split log delim='|' extract 5 as Threat | keyvalue regex "=(.*?) " "app" | count by _messagetime, endace_pivot_to_vision, log, Threat, app, src_ip, dest_ip
```

**Endace/Palo Alto Networks/Top 10 Apps**
```
_sourceCategory={{SyslogMessagesDataSource}}  | where source = "Palo Alto Networks" | keyvalue regex "=(.*?) " "app" | count by app | sort by _count | limit 10
```

**Endace/Palo Alto Networks/Top 10 Threats**
```
_sourceCategory={{SyslogMessagesDataSource}}  | where source = "Palo Alto Networks" |  split log delim='|' extract 5 as Threat | count by Threat | sort by _count | limit 10
```

**Endace/Zeek/Endace_Pivot_to_Vision**
```
_sourceCategory={{Logsdatasource2}}  | split log delim='	' extract 10 as smb_file, 9 as smb_location
```

**Endace/Zeek/Top 20 SMB Files**
```
((_sourceCategory={{Logsdatasource2}} ))
| split log delim='	' extract 10 as smb_file
```

**Endace/Zeek/Top ports used**
```
_sourceCategory={{Logsdatasource2}}  | parse regex field=_raw "\\t(?<port>\d{1,3})\\t-" | count by port | limit 10
```


