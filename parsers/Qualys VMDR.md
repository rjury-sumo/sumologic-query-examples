# Parsers For Qualys VMDR

## Parser:
```
| json "IP", "Hostname", "Detection.Qid" as ip, hostname, Qid nodrop
| json "Detection" as vulnerability nodrop
| json auto field=vulnerability nodrop
 
```
### Use Cases:
Critical, Details, High, Hosts Summary, Informational, Low, Medium, Total, Vulnerability Summary


