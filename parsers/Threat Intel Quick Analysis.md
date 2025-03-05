# Parsers For Threat Intel Quick Analysis

## Parser:
```
| parse regex "(?<domain>\b[a-zA-Z0-9][a-zA-Z0-9-_]{1,61}[a-zA-Z0-9]\.[a-zA-Z]{2,6}|[a-zA-Z0-9-]{2,30}\.[a-zA-Z]{2,3}\b)"
| json field=raw "labels[*].name" as label_name 
```
### Use Cases:
Domain Threat Count, Email Threat Count, Hash 256 Threat Count, High Malicious Domain Threats, High Malicious Email Threats, High Malicious Hash 256 Threats, High Malicious IP Threats, High Malicious IP Threats with SSHScanner Labels filtered out, High Malicious URL Threats, IP Threat Count, Threat Breakdown by Sources, Threat by Actor, Threat by Actors, Threat by Geo Location, Threat by Malicious Confidence, Threat by Sources, Threat Count, Threat Table, Threats by Actor, Threats by Malicious Confidence, Threats Over Time, Threats Over Time by Sources



## Parser:
```
| parse regex "(?<domain>\b[a-zA-Z0-9][a-zA-Z0-9-_]{1,61}[a-zA-Z0-9]\.[a-zA-Z]{2,6}|[a-zA-Z0-9-]{2,30}\.[a-zA-Z]{2,3}\b)" 
| json field=raw "labels[*].name" as label_name 
```
### Use Cases:
High Malicious Domain Threats, High Malicious Email Threats, High Malicious Hash 256 Threats, High Malicious IP Threats, High Malicious IP Threats with SSHScanner Labels filtered out, High Malicious URL Threats, Threat by Actor, Threats Over Time, Threats Over Time by Sources



## Parser:
```
| parse regex "(?<email_address>[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-zA-Z]{2,4})"
| json field=raw "labels[*].name" as label_name 
```
### Use Cases:
Email Threat Count, High Malicious Domain Threats, High Malicious Email Threats, High Malicious Hash 256 Threats, High Malicious IP Threats, High Malicious IP Threats with SSHScanner Labels filtered out, High Malicious URL Threats, IP Threat Count, Threat Breakdown by Sources, Threat by Actor, Threat by Actors, Threat by Geo Location, Threat by Malicious Confidence, Threat by Sources, Threat Count, Threat Table, Threats by Actor, Threats by Malicious Confidence, Threats Over Time, Threats Over Time by Sources



## Parser:
```
| parse regex "(?<email_address>[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-zA-Z]{2,4})" 
| json field=raw "labels[*].name" as label_name 
```
### Use Cases:
High Malicious Domain Threats, High Malicious Email Threats, High Malicious Hash 256 Threats, High Malicious IP Threats, High Malicious IP Threats with SSHScanner Labels filtered out, High Malicious URL Threats, Threat Breakdown by Sources, Threat by Actor, Threat by Malicious Confidence, Threat by Sources, Threat Count, Threat Table, Threats by Actor, Threats by Malicious Confidence, Threats Over Time, Threats Over Time by Sources



## Parser:
```
| parse regex "(?<hash_256>\b[A-Fa-f0-9]{64}\b)"
| json field=raw "labels[*].name" as label_name 
```
### Use Cases:
Email Threat Count, Hash 256 Threat Count, High Malicious Domain Threats, High Malicious Email Threats, High Malicious Hash 256 Threats, High Malicious IP Threats, High Malicious IP Threats with SSHScanner Labels filtered out, High Malicious URL Threats, IP Threat Count, Threat Breakdown by Sources, Threat by Actor, Threat by Actors, Threat by Geo Location, Threat by Malicious Confidence, Threat by Sources, Threat Count, Threat Table, Threats by Actor, Threats by Malicious Confidence, Threats Over Time, Threats Over Time by Sources



## Parser:
```
| parse regex "(?<hash_256>\b[A-Fa-f0-9]{64}\b)" 
| json field=raw "labels[*].name" as label_name 
```
### Use Cases:
High Malicious Domain Threats, High Malicious Email Threats, High Malicious Hash 256 Threats, High Malicious IP Threats, High Malicious IP Threats with SSHScanner Labels filtered out, High Malicious URL Threats, Threat Breakdown by Sources, Threat by Actor, Threat by Malicious Confidence, Threat by Sources, Threat Count, Threat Table, Threats by Actor, Threats by Malicious Confidence, Threats Over Time, Threats Over Time by Sources



## Parser:
```
| parse regex "(?<ip_address>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
| json field=raw "labels[*].name" as label_name 
```
### Use Cases:
High Malicious Domain Threats, High Malicious Email Threats, High Malicious Hash 256 Threats, High Malicious IP Threats, High Malicious IP Threats with SSHScanner Labels filtered out, High Malicious URL Threats, IP Threat Count, Threat Breakdown by Sources, Threat by Actor, Threat by Actors, Threat by Geo Location, Threat by Malicious Confidence, Threat by Sources, Threat Count, Threat Table, Threats by Actor, Threats by Malicious Confidence, Threats Over Time, Threats Over Time by Sources



## Parser:
```
| parse regex "(?<threat>\b[\w,\s-]+\.[A-Za-z]{3}\b)"  nodrop
| parse regex "(?<threat>\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-zA-Z]{2,4}\b)"  nodrop
| parse regex "(?<threat>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b)" nodrop
| parse regex "(?<threat>\b[a-zA-Z0-9][a-zA-Z0-9-_]{1,61}[a-zA-Z0-9]\.[a-zA-Z]{2,6}|[a-zA-Z0-9-]{2,30}\.[a-zA-Z]{2,3}\b)" 
| parse regex "(?<threat>\b(?:http(?:s)?:\/\/.)?(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b(?:[-a-zA-Z0-9@:%_\+.~#?&//=]*)\b)" nodrop
| parse regex "(?<threat>\b(?:\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})\/.\S+\.?\S{0,3}\b)" nodrop
```
### Use Cases:
Email Threat Count, High Malicious Domain Threats, High Malicious Email Threats, High Malicious Hash 256 Threats, High Malicious IP Threats, High Malicious IP Threats with SSHScanner Labels filtered out, High Malicious URL Threats, IP Threat Count, Threat Breakdown by Sources, Threat by Actor, Threat by Actors, Threat by Geo Location, Threat by Malicious Confidence, Threat by Sources, Threat Count, Threat Table, Threats by Actor, Threats by Malicious Confidence, Threats Over Time, Threats Over Time by Sources



## Parser:
```
| parse regex "(?<url>(?:http(?:s)?:\/\/.)?(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b(?:[-a-zA-Z0-9@:%_\+.~#?&//=]*))" nodrop
| parse regex "(?<url>(?:\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})\/.\S+\.?\S{0,3})"
```
### Use Cases:
Domain Threat Count, Email Threat Count, Hash 256 Threat Count, High Malicious Domain Threats, High Malicious Email Threats, High Malicious Hash 256 Threats, High Malicious IP Threats, High Malicious IP Threats with SSHScanner Labels filtered out, High Malicious URL Threats, IP Threat Count, Threat Breakdown by Sources, Threat by Actor, Threat by Actors, Threat by Geo Location, Threat by Malicious Confidence, Threat by Sources, Threat Count, Threat Table, Threats by Actor, Threats by Malicious Confidence, Threats Over Time, Threats Over Time by Sources, URL Threat Count



## Parser:
```
| parse regex "(?<url>(?:http(?:s)?:\/\/.)?(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b(?:[-a-zA-Z0-9@:%_\+.~#?&//=]*))" nodrop
| parse regex "(?<url>(?:\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})\/.\S+\.?\S{0,3})"
| json field=raw "labels[*].name" as label_name 
```
### Use Cases:
Domain Threat Count, Email Threat Count, Hash 256 Threat Count, High Malicious Domain Threats, High Malicious Email Threats, High Malicious Hash 256 Threats, High Malicious IP Threats, High Malicious IP Threats with SSHScanner Labels filtered out, High Malicious URL Threats, IP Threat Count, Threat Breakdown by Sources, Threat by Actor, Threat by Actors, Threat by Geo Location, Threat by Malicious Confidence, Threat by Sources, Threat Count, Threat Table, Threats by Actor, Threats by Malicious Confidence, Threats Over Time, Threats Over Time by Sources, URL Threat Count


