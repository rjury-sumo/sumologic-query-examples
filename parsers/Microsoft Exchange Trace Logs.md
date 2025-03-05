# Parsers For Microsoft Exchange Trace Logs

## Parser:
```
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
 `n```
### Use Cases:
Delivered Messages, Failed Messages, Frequency of Keywords in Subject, Geo Location of Senders, Geo Locations of Receivers, Message Delivery Status, Messages Received, Size of Message Transmitted, Source Geo Location of Failed Messages, Threat Intel Analysis of Senders Email Address, Top 10 Message Status Count by Sender, Top 10 Organizations, Top 10 Senders, Total Message Size Transmitted, Unique Inbound Domains, Unique Outbound Domains, Unique Receivers, Unique Senders



## Parser:
```
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
| extract field=recipient_address ".@(?<uniqueOutboudDomains>.*)"
 `n```
### Use Cases:
Geo Location of Senders, Geo Locations of Receivers, Unique Inbound Domains, Unique Outbound Domains, Unique Senders



## Parser:
```
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
| extract field=sender_address ".@(?<uniqueInboudDomains>.*)"
 `n```
### Use Cases:
Geo Location of Senders, Geo Locations of Receivers, Unique Inbound Domains, Unique Senders



## Parser:
```
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
| json field=raw "labels[*].name" as label_name 
 `n```
### Use Cases:
Geo Location of Senders, Geo Locations of Receivers, Source Geo Location of Failed Messages, Threat Intel Analysis of Senders Email Address, Top 10 Senders, Unique Inbound Domains, Unique Outbound Domains, Unique Receivers, Unique Senders



## Parser:
```
| json "Organization", "MessageId", "Received","SenderAddress", "RecipientAddress", "Subject", "Status", "ToIP", "FromIP", "Size", "MessageTraceId", "StartDate", "EndDate", "Index" as organization, message_id, received, sender_address, recipient_address, subject, status, toIP, fromIP, size, message_traceId, start_date, end_Date, index nodrop
| parse regex field=subject "(?<word>\w+)" multi
 `n```
### Use Cases:
Delivered Messages, Frequency of Keywords in Subject, Geo Location of Senders, Geo Locations of Receivers, Message Delivery Status, Messages Received, Size of Message Transmitted, Source Geo Location of Failed Messages, Threat Intel Analysis of Senders Email Address, Top 10 Message Status Count by Sender, Top 10 Organizations, Top 10 Senders, Total Message Size Transmitted, Unique Inbound Domains, Unique Outbound Domains, Unique Receivers, Unique Senders


