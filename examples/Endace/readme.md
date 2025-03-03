# Endace

## Searches

### Log Searches

- **Endace_Pivot_to_Vision**: from Dashboard: Installed Apps/Endace/Endace - Cisco ASA 
- **Endace_Pivot_to_Vision**: from Dashboard: Installed Apps/Endace/Endace - Zeek 
- **Endace_Pivot_to_Vision**: from Dashboard: Installed Apps/Endace/Endace - Cisco Firepower 
- **Endace_Pivot_to_Vision**: from Dashboard: Installed Apps/Endace/Endace - Palo Alto Networks 
- **Endace_Pivot_to_Vision**: from Dashboard: Installed Apps/Endace/Endace - Suricata 
- **Top 10 Application Protocols**: from Dashboard: Installed Apps/Endace/Endace - Cisco ASA 
- **Top 10 Apps**: from Dashboard: Installed Apps/Endace/Endace - Palo Alto Networks 
- **Top 10 Attacks**: from Dashboard: Installed Apps/Endace/Endace - Cisco ASA 
- **Top 10 Attacks**: from Dashboard: Installed Apps/Endace/Endace - Cisco Firepower 
- **Top 10 Destination IPs**: from Dashboard: Installed Apps/Endace/Endace - Zeek 
- **Top 10 Destination Ports**: from Dashboard: Installed Apps/Endace/Endace - Suricata 
- **Top 10 Event Types**: from Dashboard: Installed Apps/Endace/Endace - Suricata 
- **Top 10 Protocols**: from Dashboard: Installed Apps/Endace/Endace - Cisco ASA 
- **Top 10 Protocols**: from Dashboard: Installed Apps/Endace/Endace - Cisco Firepower 
- **Top 10 Protocols**: from Dashboard: Installed Apps/Endace/Endace - Palo Alto Networks 
- **Top 10 Protocols**: from Dashboard: Installed Apps/Endace/Endace - Suricata 
- **Top 10 Source IPs**: from Dashboard: Installed Apps/Endace/Endace - Palo Alto Networks 
- **Top 10 Source IPs**: from Dashboard: Installed Apps/Endace/Endace - Cisco Firepower 
- **Top 10 Source IPs**: from Dashboard: Installed Apps/Endace/Endace - Cisco ASA 
- **Top 10 Source IPs**: from Dashboard: Installed Apps/Endace/Endace - Suricata 
- **Top 10 Source IPs**: from Dashboard: Installed Apps/Endace/Endace - Zeek 
- **Top 10 Threats**: from Dashboard: Installed Apps/Endace/Endace - Palo Alto Networks 
- **Top 20 SMB Files**: from Dashboard: Installed Apps/Endace/Endace - Zeek 
- **Top Application Protocols**: from Dashboard: Installed Apps/Endace/Endace - Cisco Firepower 
- **Top ports used**: from Dashboard: Installed Apps/Endace/Endace - Zeek

### Metric Searches


## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|Endace|Endace\_Pivot\_to\_Vision|Logs|Installed Apps/Endace/Endace - Cisco ASA|\_sourceCategory={{SyslogMessagesDataSource}}  \| where source = "ciscoasa" \|keyvalue regex "\\s(.\*?): (.\*?)," keys "Classification" as Classification \| keyvalue regex "\\s(.\*?): (.\*?)," keys "Message" as message\| count by  \_messagetime, endace\_pivot\_to\_vision, log, message, Classification, src\_ip, dest\_ip|
|Endace|Endace\_Pivot\_to\_Vision|Logs|Installed Apps/Endace/Endace - Zeek|\_sourceCategory={{Logsdatasource2}}  \| split log delim='	' extract 10 as smb\_file, 9 as smb\_location<br />\| where %"log.file.name" = "smb\_files.log" \| count by \_messagetime, endace\_pivot\_to\_vision, log, smb\_file, smb\_location, source\_ip, dest\_ip \| limit 30|
|Endace|Endace\_Pivot\_to\_Vision|Logs|Installed Apps/Endace/Endace - Cisco Firepower|(\_sourceCategory={{SyslogMessagesDataSource}} )<br />\| where source = "FTD-1-430001" \|keyvalue regex "\\s(.\*?): (.\*?)," keys "Classification" as Classification \| keyvalue regex "\\s(.\*?): (.\*?)," keys "Message" as message\| count by \_messagetime, endace\_pivot\_to\_vision, log, message, Classification, src\_ip, dest\_ip|
|Endace|Endace\_Pivot\_to\_Vision|Logs|Installed Apps/Endace/Endace - Palo Alto Networks|(\_sourceCategory={{SyslogMessagesDataSource}} )<br />\| where source = "Palo Alto Networks" \| split log delim='\|' extract 5 as Threat \| keyvalue regex "=(.\*?) " "app" \| count by \_messagetime, endace\_pivot\_to\_vision, log, Threat, app, src\_ip, dest\_ip|
|Endace|Endace\_Pivot\_to\_Vision|Logs|Installed Apps/Endace/Endace - Suricata|(\_sourceCategory={{SuricataLogsDataSource}} )<br /> \| count by \_messagetime, endace\_pivot\_to\_vision, log, src\_ip, dest\_ip |
|Endace|Top 10 Application Protocols|Logs|Installed Apps/Endace/Endace - Cisco ASA|\_sourceCategory={{SyslogMessagesDataSource}}  \| where source = "ciscoasa" \| parse regex "ApplicationProtocol: (?\<ApplicationProtocol\>\\w{1,25})" \| count by ApplicationProtocol \| limit 20|
|Endace|Top 10 Apps|Logs|Installed Apps/Endace/Endace - Palo Alto Networks|\_sourceCategory={{SyslogMessagesDataSource}}  \| where source = "Palo Alto Networks" \| keyvalue regex "=(.\*?) " "app" \| count by app \| sort by \_count \| limit 10|
|Endace|Top 10 Attacks|Logs|Installed Apps/Endace/Endace - Cisco ASA|\_sourceCategory={{SyslogMessagesDataSource}}  \| where source = "ciscoasa" \| keyvalue regex "\\s(.\*?): (.\*?)," keys "Classification" as Classification \| count by Classification \| sort by \_count \| limit 10|
|Endace|Top 10 Attacks|Logs|Installed Apps/Endace/Endace - Cisco Firepower|(\_sourceCategory={{SyslogMessagesDataSource}} )<br />\| where source = "FTD-1-430001" \| keyvalue regex "\\s(.\*?): (.\*?)," keys "Classification" as Classification \| count by Classification \| sort by \_count \| limit 10|
|Endace|Top 10 Destination IPs|Logs|Installed Apps/Endace/Endace - Zeek|\_sourceCategory={{Logsdatasource2}}  \| count by dest\_ip \| sort by \_count \| limit 10|
|Endace|Top 10 Destination Ports|Logs|Installed Apps/Endace/Endace - Suricata|\_sourceCategory={{SuricataLogsDataSource}}  \|parse regex "dest\_port...(?\<dest\_port\>\\d{1,10})" \| count by dest\_port \| sort by \_count \| limit 10|
|Endace|Top 10 Event Types|Logs|Installed Apps/Endace/Endace - Suricata|\_sourceCategory={{SuricataLogsDataSource}}  \|parse regex "event\_type.....(?\<event\_type\>\\w{1,10})" \| count by event\_type \| sort by \_count \| limit 10|
|Endace|Top 10 Protocols|Logs|Installed Apps/Endace/Endace - Cisco ASA|\_sourceCategory={{SyslogMessagesDataSource}}  \| where source = "ciscoasa" \| parse regex "Protocol: (?\<Protocol\>\\w{1,3})" \| count by Protocol \| limit 10|
|Endace|Top 10 Protocols|Logs|Installed Apps/Endace/Endace - Cisco Firepower|(\_sourceCategory={{SyslogMessagesDataSource}} )<br />\| where source = "FTD-1-430001" \| parse regex "Protocol: (?\<Protocol\>\\w{1,10})" \| count by Protocol \| limit 10|
|Endace|Top 10 Protocols|Logs|Installed Apps/Endace/Endace - Palo Alto Networks|\_sourceCategory={{SyslogMessagesDataSource}}  \| where source = "Palo Alto Networks" \|keyvalue regex "=(.\*?) " "protocol" \| count by protocol \| sort by \_count \| limit 10|
|Endace|Top 10 Protocols|Logs|Installed Apps/Endace/Endace - Suricata|\_sourceCategory={{SuricataLogsDataSource}}  \|parse regex "proto.....(?\<proto\>\\w{1,10})" \| count by proto \| sort by \_count \| limit 10|
|Endace|Top 10 Source IPs|Logs|Installed Apps/Endace/Endace - Palo Alto Networks|\_sourceCategory={{SyslogMessagesDataSource}}  \| where source = "Palo Alto Networks" \| count by src\_ip \| sort by \_count \| limit 10|
|Endace|Top 10 Source IPs|Logs|Installed Apps/Endace/Endace - Cisco Firepower|(\_sourceCategory={{SyslogMessagesDataSource}} )<br />\| where source = "FTD-1-430001" \| count by src\_ip \| sort by \_count \| limit 10 |
|Endace|Top 10 Source IPs|Logs|Installed Apps/Endace/Endace - Cisco ASA|\_sourceCategory={{SyslogMessagesDataSource}}  \| where source = "ciscoasa" \| count by src\_ip \| sort by \_count \| limit 10|
|Endace|Top 10 Source IPs|Logs|Installed Apps/Endace/Endace - Suricata|\_sourceCategory={{SuricataLogsDataSource}}  \| count by src\_ip \| sort by \_count \| limit 10|
|Endace|Top 10 Source IPs|Logs|Installed Apps/Endace/Endace - Zeek|\_sourceCategory={{Logsdatasource2}} \| count by source\_ip \| sort by \_count \| limit 10|
|Endace|Top 10 Threats|Logs|Installed Apps/Endace/Endace - Palo Alto Networks|\_sourceCategory={{SyslogMessagesDataSource}}  \| where source = "Palo Alto Networks" \|  split log delim='\|' extract 5 as Threat \| count by Threat \| sort by \_count \| limit 10|
|Endace|Top 20 SMB Files|Logs|Installed Apps/Endace/Endace - Zeek|((\_sourceCategory={{Logsdatasource2}} ))<br />\| split log delim='	' extract 10 as smb\_file<br />\| where %"log.file.name" = "smb\_files.log"<br />\| count smb\_file<br />\| sort by \_count<br />\| limit 20|
|Endace|Top Application Protocols|Logs|Installed Apps/Endace/Endace - Cisco Firepower|(\_sourceCategory={{SyslogMessagesDataSource}} )<br />\| where source = "FTD-1-430001" \| parse regex "ApplicationProtocol: (?\<ApplicationProtocol\>\\w{1,25})" \| count by ApplicationProtocol \| limit 20|
|Endace|Top ports used|Logs|Installed Apps/Endace/Endace - Zeek|\_sourceCategory={{Logsdatasource2}}  \| parse regex field=\_raw "\\\\t(?\<port\>\\d{1,3})\\\\t-" \| count by port \| limit 10|

