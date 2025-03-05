# Parsers For PCI Compliance For Amazon VPC Flow

## Parser:
```
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
 `n```
### Use Cases:
Allowed Network Activity by Direction, Allowed Network Activity by Transport and Internet Layer Protocol, Allowed Traffic Over Time, Denied Traffic Over Time, Insecure Allowed Traffic by Application and Involved Host, Insecure Allowed Traffic by Protocol, Insecure Allowed Traffic by Target Port and Involved Host, Insecure Denied Traffic by Protocol, Insecure Transport Protocol to or from CDE, Multi-service Detected on Same Host, Network Activity - Unencrypted Default Port, Network Traffic Accepted vs Rejected, Top DestIP, Top SrcIP, Top TCP Dest Ports, Top UDP Dest Ports, Traffic By Application Over Time


