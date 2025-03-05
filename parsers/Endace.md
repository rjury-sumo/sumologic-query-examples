# Parsers For Endace

## Parser:
```
|  split log delim='|' extract 5 as Threat | count by Threat | sort by _count | `n```
### Use Cases:
Endace_Pivot_to_Vision, Top 10 Application Protocols, Top 10 Attacks, Top 10 Protocols, Top 10 Threats, Top Application Protocols



## Parser:
```
| keyvalue regex "\s(.*?): (.*?)," keys "Classification" as Classification | count by Classification | sort by _count | `n```
### Use Cases:
Endace_Pivot_to_Vision, Top 10 Application Protocols, Top 10 Attacks, Top 10 Protocols, Top Application Protocols



## Parser:
```
| keyvalue regex "\s(.*?): (.*?)," keys "Message" as message| `n```
### Use Cases:
Endace_Pivot_to_Vision, Top 10 Application Protocols, Top 10 Attacks, Top 10 Protocols, Top Application Protocols



## Parser:
```
| keyvalue regex "=(.*?) " "app" | count by app | sort by _count | `n```
### Use Cases:
Endace_Pivot_to_Vision, Top 10 Application Protocols, Top 10 Apps, Top 10 Attacks, Top 10 Protocols, Top 10 Threats, Top Application Protocols



## Parser:
```
| parse regex "ApplicationProtocol: (?<ApplicationProtocol>\w{1,25})" | count by ApplicationProtocol | `n```
### Use Cases:
Endace_Pivot_to_Vision, Top 10 Application Protocols, Top 10 Attacks, Top 10 Protocols, Top Application Protocols



## Parser:
```
| parse regex "Protocol: (?<Protocol>\w{1,10})" | count by Protocol | `n```
### Use Cases:
Endace_Pivot_to_Vision, Top 10 Application Protocols, Top 10 Attacks, Top 10 Protocols, Top Application Protocols



## Parser:
```
| parse regex "Protocol: (?<Protocol>\w{1,3})" | count by Protocol | `n```
### Use Cases:
Top 10 Protocols



## Parser:
```
| parse regex field=_raw "\\t(?<port>\d{1,3})\\t-" | count by port | `n```
### Use Cases:
Endace_Pivot_to_Vision, Top 10 Application Protocols, Top 10 Apps, Top 10 Attacks, Top 10 Protocols, Top 10 Threats, Top 20 SMB Files, Top Application Protocols, Top ports used



## Parser:
```
| split log delim='	' extract 10 as smb_file
 `n```
### Use Cases:
Endace_Pivot_to_Vision, Top 10 Application Protocols, Top 10 Apps, Top 10 Attacks, Top 10 Protocols, Top 10 Threats, Top 20 SMB Files, Top Application Protocols



## Parser:
```
| split log delim='	' extract 10 as smb_file, 9 as smb_location
 `n```
### Use Cases:
Endace_Pivot_to_Vision, Top 10 Application Protocols, Top 10 Apps, Top 10 Attacks, Top 10 Protocols, Top 10 Threats, Top 20 SMB Files, Top Application Protocols



## Parser:
```
| split log delim='|' extract 5 as Threat | keyvalue regex "=(.*?) " "app" | `n```
### Use Cases:
Endace_Pivot_to_Vision, Top 10 Application Protocols, Top 10 Apps, Top 10 Attacks, Top 10 Protocols, Top 10 Threats, Top Application Protocols


