# Parsers For Microsoft Exchange Trace Logs

**Microsoft Exchange Trace Logs/Message Monitoring /Geo Location of Senders**
```
_sourceCategory=Labs/MessageExchangeTraceLogs 
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
```

**Microsoft Exchange Trace Logs/Message Monitoring /Geo Locations of Receivers**
```
_sourceCategory=Labs/MessageExchangeTraceLogs 
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
```

**Microsoft Exchange Trace Logs/Message Monitoring /Source Geo Location of Failed Messages**
```
_sourceCategory=Labs/MessageExchangeTraceLogs 
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
```

**Microsoft Exchange Trace Logs/Message Monitoring /Threat Intel Analysis of Senders Email Address**
```
_sourceCategory=Labs/MessageExchangeTraceLogs 
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
| where status matches"{{status}}"
| where sender_address matches"{{sender_address}}"
| where organization matches "{{organization}}"
| lookup latitude, longitude, country_code, country_name, region, city, postal_code from geo://location on ip = fromIP
| where country_name matches "{{country}}"
| count as email_count by sender_address, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=sender_address
| json field=raw "labels[*].name" as label_name 
```

**Microsoft Exchange Trace Logs/Message Monitoring /Top 10 Senders**
```
_sourceCategory=Labs/MessageExchangeTraceLogs 
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
```

**Microsoft Exchange Trace Logs/Message Monitoring /Unique Inbound Domains**
```
_sourceCategory=Labs/MessageExchangeTraceLogs 
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
| where status matches"{{status}}"
| where sender_address matches"{{sender_address}}"
| where organization matches "{{organization}}"
| lookup latitude, longitude, country_code, country_name, region, city, postal_code from geo://location on ip = fromIP
| where country_name matches "{{country}}"
| extract field=sender_address ".@(?<uniqueInboudDomains>.*)"
```

**Microsoft Exchange Trace Logs/Message Monitoring /Unique Outbound Domains**
```
_sourceCategory=Labs/MessageExchangeTraceLogs 
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
| lookup latitude, longitude, country_code, country_name, region, city, postal_code from geo://location on ip = fromIP
| where status matches"{{status}}"
| where sender_address matches"{{sender_address}}"
| where organization matches "{{organization}}"
| where country_name matches "{{country}}"
| extract field=recipient_address ".@(?<uniqueOutboudDomains>.*)"
```

**Microsoft Exchange Trace Logs/Message Monitoring /Unique Receivers**
```
_sourceCategory=Labs/MessageExchangeTraceLogs 
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
```

**Microsoft Exchange Trace Logs/Message Monitoring /Unique Senders**
```
_sourceCategory=Labs/MessageExchangeTraceLogs 
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
```

**Microsoft Exchange Trace Logs/Overview/Delivered Messages**
```
_sourceCategory=Labs/MessageExchangeTraceLogs 
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
```

**Microsoft Exchange Trace Logs/Overview/Failed Messages**
```
_sourceCategory=Labs/MessageExchangeTraceLogs 
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
```

**Microsoft Exchange Trace Logs/Overview/Frequency of Keywords in Subject**
```
_sourceCategory=Labs/MessageExchangeTraceLogs 
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
| where status matches"{{status}}"
| where sender_address matches"{{sender_address}}"
| where organization matches "{{organization}}"
| lookup latitude, longitude, country_code, country_name, region, city, postal_code from geo://location on ip = fromIP
| where country_name matches "{{country}}"
| parse regex field=subject "(?<word>\w+)" multi
```

**Microsoft Exchange Trace Logs/Overview/Message Delivery Status**
```
_sourceCategory=Labs/MessageExchangeTraceLogs 
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
```

**Microsoft Exchange Trace Logs/Overview/Messages Received**
```
_sourceCategory=Labs/MessageExchangeTraceLogs 
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
```

**Microsoft Exchange Trace Logs/Overview/Size of Message Transmitted**
```
_sourceCategory=Labs/MessageExchangeTraceLogs 
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
```

**Microsoft Exchange Trace Logs/Overview/Top 10 Message Status Count by Sender**
```
_sourceCategory=Labs/MessageExchangeTraceLogs 
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
```

**Microsoft Exchange Trace Logs/Overview/Top 10 Organizations**
```
_sourceCategory=Labs/MessageExchangeTraceLogs 
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
```

**Microsoft Exchange Trace Logs/Overview/Total Message Size Transmitted**
```
_sourceCategory=Labs/MessageExchangeTraceLogs 
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
```


