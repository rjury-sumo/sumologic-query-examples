# Parsers For PCI Compliance For Amazon VPC Flow

**PCI Compliance For Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 01 - Accepted And Rejected Traffic - New/Allowed Network Activity by Direction**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**PCI Compliance For Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 01 - Accepted And Rejected Traffic - New/Allowed Network Activity by Transport and Internet Layer Protocol**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
| where action="ACCEPT"
| where ((compareCIDRPrefix("172.16.0.0", src_ip, toInt(12)) or compareCIDRPrefix("192.168.0.0", src_ip, toInt(16)) or compareCIDRPrefix("10.0.0.0", src_ip, toInt(8)) and (!compareCIDRPrefix("172.16.0.0", dest_ip, toInt(12)) and !compareCIDRPrefix("192.168.0.0", dest_ip, toInt(16)) and !compareCIDRPrefix("10.0.0.0", dest_ip, toInt(8)))) or 
(compareCIDRPrefix("172.16.0.0", dest_ip, toInt(12)) or compareCIDRPrefix("192.168.0.0", dest_ip, toInt(16)) or compareCIDRPrefix("10.0.0.0", dest_ip, toInt(8)) and (!compareCIDRPrefix("172.16.0.0", src_ip, toInt(12)) and !compareCIDRPrefix("192.168.0.0", src_ip, toInt(16)) and !compareCIDRPrefix("10.0.0.0", src_ip, toInt(8)))))
| timeslice 1m
|where if ("{{protocol}}" = "*", true, protocol matches "{{protocol}}") AND if ("{{action}}" = "*", true, action matches "{{action}}") AND if ("{{src_ip}}" = "*", true, src_ip matches "{{src_ip}}") AND if ("{{dest_port}}" = "*", true, dest_port matches "{{dest_port}}") AND if ("{{src_port}}" = "*", true, src_port matches "{{src_port}}") AND if ("{{dest_ip}}" = "*", true, dest_ip matches "{{dest_ip}}") AND if ("{{account_id}}" = "*", true, account_id matches "{{account_id}}")
|count by _timeslice, protocol | protocol as Protocol_Val
| lookup Keyword from https://s3.amazonaws.com/sumologic-app-data/protocol-numbers.csv on Decimal=Protocol_val 
```

**PCI Compliance For Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 01 - Accepted And Rejected Traffic - New/Allowed Traffic Over Time**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**PCI Compliance For Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 01 - Accepted And Rejected Traffic - New/Denied Traffic Over Time**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**PCI Compliance For Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 01 - Accepted And Rejected Traffic - New/Network Traffic Accepted vs Rejected**
```
_sourceCategory = Labs/AWS/VPC (ACCEPT or REJECT)
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**PCI Compliance For Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 01 - Accepted And Rejected Traffic - New/Top DestIP**
```
_sourceCategory = Labs/AWS/VPC ACCEPT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**PCI Compliance For Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 01 - Accepted And Rejected Traffic - New/Top SrcIP**
```
_sourceCategory = Labs/AWS/VPC REJECT
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**PCI Compliance For Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 01, 02 - Data Access Monitoring - New/Multi-service Detected on Same Host**
```
_sourceCategory = Labs/AWS/VPC ACCEPT (80 or 8008 or 8080 or 443 or 3306 or 5439 or 5432 or 1433 or 2638 or 5984) // 3306 - MySQL/RDS, 5439 - Amazon Redshift, 5432 - PostgreSQL, 1433 - MS SQL Server, 2638 - SQLAnywhere, 5984 - couchdb
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**PCI Compliance For Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 01, 02 - Data Access Monitoring - New/Top TCP Dest Ports**
```
_sourceCategory = Labs/AWS/VPC ACCEPT 6 // TCP = 6
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**PCI Compliance For Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 01, 02 - Data Access Monitoring - New/Top UDP Dest Ports**
```
_sourceCategory = Labs/AWS/VPC ACCEPT 17 // UDP = 17
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**PCI Compliance For Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 01, 02 - Data Access Monitoring - New/Traffic By Application Over Time**
```
_sourceCategory = Labs/AWS/VPC ACCEPT (21 or 23 or 80 or 8008 or 8080 or 443 or 513 or 3306 or 5439 or 5432 or 1433 or 2638 or 5984) // 3306 - MySQL/RDS, 5439 - Amazon Redshift, 5432 - PostgreSQL, 1433 - MS SQL Server, 2638 - SQLAnywhere, 5984 - couchdb
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
| where Action="ACCEPT" and dest_port in ("21", "23", "80", "8008", "8080", "443", "513", "3306", "5439", "5432", "1433", "2638", "5984")
| timeslice 5m
|where if ("{{action}}" = "*", true, action matches "{{action}}") AND if ("{{src_ip}}" = "*", true, src_ip matches "{{src_ip}}") AND if ("{{dest_port}}" = "*", true, dest_port matches "{{dest_port}}") AND if ("{{src_port}}" = "*", true, src_port matches "{{src_port}}") AND if ("{{dest_ip}}" = "*", true, dest_ip matches "{{dest_ip}}") AND if ("{{account_id}}" = "*", true, account_id matches "{{account_id}}")
|count as count by _timeslice, dest_port
| lookup Keyword from https://s3.amazonaws.com/sumologic-app-data/port-numbers.csv on Decimal=dest_port
```

**PCI Compliance For Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 02, 04 - Insecure Data In Transit - New/Insecure Allowed Traffic by Application and Involved Host**
```
_sourceCategory = Labs/AWS/VPC ACCEPT (21 or 23 or 80 or 8008 or 8080 or 513)
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
| where Action="ACCEPT" and dest_port in ("21", "23", "80", "8008", "8080", "513")
| if ((compareCIDRPrefix("172.16.0.0", dest_ip, toInt(12)) or compareCIDRPrefix("192.168.0.0", dest_ip, toInt(16)) or compareCIDRPrefix("10.0.0.0", dest_ip, toInt(8))), dest_ip, src_ip) as %"Cardholder Host"
|where if ("{{protocol}}" = "*", true, protocol matches "{{protocol}}") AND if ("{{src_ip}}" = "*", true, src_ip matches "{{src_ip}}") AND if ("{{dest_port}}" = "*", true, dest_port matches "{{dest_port}}") AND if ("{{src_port}}" = "*", true, src_port matches "{{src_port}}") AND if ("{{dest_ip}}" = "*", true, dest_ip matches "{{dest_ip}}") AND if ("{{account_id}}" = "*", true, account_id matches "{{account_id}}") AND if ("{{interface_id}}" = "*", true, interface_id matches "{{interface_id}}")
|count as Incidents by %"Cardholder Host", dest_port
| lookup Keyword from https://s3.amazonaws.com/sumologic-app-data/port-numbers.csv on Decimal=dest_port
```

**PCI Compliance For Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 02, 04 - Insecure Data In Transit - New/Insecure Allowed Traffic by Protocol**
```
_sourceCategory = Labs/AWS/VPC ACCEPT (21 or 23 or 80 or 8008 or 8080 or 513)
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
| where Action="ACCEPT" and dest_port in ("21", "23", "80", "8008", "8080", "513")
| if ((compareCIDRPrefix("172.16.0.0", dest_ip, toInt(12)) or compareCIDRPrefix("192.168.0.0", dest_ip, toInt(16)) or compareCIDRPrefix("10.0.0.0", dest_ip, toInt(8))), dest_ip, src_ip) as %"Cardholder Host"
| timeslice 5m
|where if ("{{protocol}}" = "*", true, protocol matches "{{protocol}}") AND if ("{{src_ip}}" = "*", true, src_ip matches "{{src_ip}}") AND if ("{{dest_port}}" = "*", true, dest_port matches "{{dest_port}}") AND if ("{{src_port}}" = "*", true, src_port matches "{{src_port}}") AND if ("{{dest_ip}}" = "*", true, dest_ip matches "{{dest_ip}}") AND if ("{{account_id}}" = "*", true, account_id matches "{{account_id}}") AND if ("{{interface_id}}" = "*", true, interface_id matches "{{interface_id}}")
|count as Incidents by _timeslice, Protocol | protocol as Protocol_Val
| lookup Keyword from https://s3.amazonaws.com/sumologic-app-data/protocol-numbers.csv on Decimal=Protocol_val 
```

**PCI Compliance For Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 02, 04 - Insecure Data In Transit - New/Insecure Allowed Traffic by Target Port and Involved Host**
```
_sourceCategory = Labs/AWS/VPC* ACCEPT (21 or 23 or 80 or 8008 or 8080 or 513)
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
| where Action="ACCEPT" and dest_port in ("21", "23", "80", "8008", "8080", "513")
| if ((compareCIDRPrefix("172.16.0.0", dest_ip, toInt(12)) or compareCIDRPrefix("192.168.0.0", dest_ip, toInt(16)) or compareCIDRPrefix("10.0.0.0", dest_ip, toInt(8))), dest_ip, src_ip) as %"Cardholder Host"
| dest_port as %"Destination Port"
|where if ("{{protocol}}" = "*", true, protocol matches "{{protocol}}") AND if ("{{src_ip}}" = "*", true, src_ip matches "{{src_ip}}") AND if ("{{dest_port}}" = "*", true, dest_port matches "{{dest_port}}") AND if ("{{src_port}}" = "*", true, src_port matches "{{src_port}}") AND if ("{{dest_ip}}" = "*", true, dest_ip matches "{{dest_ip}}") AND if ("{{account_id}}" = "*", true, account_id matches "{{account_id}}") AND if ("{{interface_id}}" = "*", true, interface_id matches "{{interface_id}}")
|count as Incidents by %"Cardholder Host", %"Destination Port", Protocol | protocol as Protocol_Val
| lookup Keyword from https://s3.amazonaws.com/sumologic-app-data/protocol-numbers.csv on Decimal=Protocol_val 
```

**PCI Compliance For Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 02, 04 - Insecure Data In Transit - New/Insecure Denied Traffic by Protocol**
```
_sourceCategory = Labs/AWS/VPC REJECT (21 or 23 or 80 or 8008 or 8080 or 513)
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
| where Action="REJECT" and dest_port in ("21", "23", "80", "8008", "8080", "513")
| if ((compareCIDRPrefix("172.16.0.0", dest_ip, toInt(12)) or compareCIDRPrefix("192.168.0.0", dest_ip, toInt(16)) or compareCIDRPrefix("10.0.0.0", dest_ip, toInt(8))), dest_ip, src_ip) as %"Cardholder Host"
| timeslice 5m
|where if ("{{protocol}}" = "*", true, protocol matches "{{protocol}}") AND if ("{{src_ip}}" = "*", true, src_ip matches "{{src_ip}}") AND if ("{{dest_port}}" = "*", true, dest_port matches "{{dest_port}}") AND if ("{{src_port}}" = "*", true, src_port matches "{{src_port}}") AND if ("{{dest_ip}}" = "*", true, dest_ip matches "{{dest_ip}}") AND if ("{{account_id}}" = "*", true, account_id matches "{{account_id}}") AND if ("{{interface_id}}" = "*", true, interface_id matches "{{interface_id}}")
|count as Incidents by _timeslice, Protocol | protocol as Protocol_Val
| lookup Keyword from https://s3.amazonaws.com/sumologic-app-data/protocol-numbers.csv on Decimal=Protocol_val 
```

**PCI Compliance For Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 02, 04 - Insecure Data In Transit - New/Insecure Transport Protocol to or from CDE**
```
_sourceCategory = Labs/AWS/VPC ACCEPT (21 or 23 or 513)
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```

**PCI Compliance For Amazon VPC Flow/Amazon VPC Flow Logs - PCI Req 02, 04 - Insecure Data In Transit - New/Network Activity - Unencrypted Default Port**
```
_sourceCategory = Labs/AWS/VPC ACCEPT (21 or 23 or 80 or 8008 or 8080 or 513)
| json "logStream", "logGroup", "message" as logStream, logGroup, msg
| parse field=msg "* * * * * * * * * * * * * *" as version, account_id, interface_id, src_ip, dest_ip, src_port, dest_port, Protocol, packets, bytes, start, end, action, log_status
```


