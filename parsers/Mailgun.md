# Parsers For Mailgun

**Mailgun/Failed, Complained Events/Complained Event Geolocation**
```
_sourceCategory={{Logsdatasource}}  "complained"
| json "event-data.message.headers.from", "event-data.recipient", "event-data.envelope.sending-ip" as sender, recipient, ip nodrop
```

**Mailgun/Failed, Complained Events/Complained Events**
```
_sourceCategory={{Logsdatasource}}  "Complained"
| json "event-data.message.headers.from", "event-data.recipient", "event-data.event" as sender, recipient, event nodrop
```

**Mailgun/Failed, Complained Events/Failed Events**
```
_sourceCategory={{Logsdatasource}}  "failed"
| json "event-data.message.headers.from", "event-data.recipient", "event-data.event" as sender, recipient, event nodrop
```

**Mailgun/Failed, Complained Events/Recent Complaints Event**
```
_sourceCategory={{Logsdatasource}}  "complained"
| json "event-data.timestamp","event-data.message.headers.from","event-data.recipient", "event-data.message.headers.subject", "event-data.envelope.sending-ip" as timestamp,sender, recipient,subject, sender_ip nodrop
```

**Mailgun/Failed, Complained Events/Recent Failed Events**
```
_sourceCategory={{Logsdatasource}}  "failed"
| json "event-data.timestamp","event-data.severity", "event-data.reason", "event-data.delivery-status.description",  "event-data.delivery-status.code", "event-data.flags.is-authenticated", "event-data.delivery-status.message", "event-data.message.headers.from", "event-data.recipient" as timestamp,severity, reason, description, code, is_authenticated, message, sender, recipient nodrop
```

**Mailgun/Failed, Complained Events/Severity**
```
_sourceCategory={{Logsdatasource}}  "failed"
| json "event-data.severity", "event-data.message.headers.from", "event-data.recipient" as severity, sender, recipient nodrop
```

**Mailgun/Failed, Complained Events/Top Failure Codes**
```
_sourceCategory={{Logsdatasource}}  "failed"
| json "event-data.delivery-status.code", "event-data.message.headers.from", "event-data.recipient" as code, sender, recipient nodrop
```

**Mailgun/Failed, Complained Events/Top Failure Reason**
```
_sourceCategory={{Logsdatasource}}  "failed"
| json "event-data.reason", "event-data.message.headers.from", "event-data.recipient" as reason, sender, recipient nodrop
```

**Mailgun/Failed, Complained Events/Top Recipient for Complained Event**
```
_sourceCategory={{Logsdatasource}}  "Complained"
| json "event-data.recipient" as recipient nodrop
```

**Mailgun/Failed, Complained Events/Top Recipient for Failure Event**
```
_sourceCategory={{Logsdatasource}}  "failed"
| json "event-data.recipient" as recipient nodrop
```

**Mailgun/Failed, Complained Events/Top Sender for Complained Event**
```
_sourceCategory={{Logsdatasource}}  "Complained"
| json "event-data.message.headers.from" as sender nodrop
```

**Mailgun/Failed, Complained Events/Top Sender for Failure Event**
```
_sourceCategory={{Logsdatasource}}  "failed"
| json "event-data.message.headers.from" as sender nodrop
```

**Mailgun/Failed, Complained Events/Top Subject for Complained Event**
```
_sourceCategory={{Logsdatasource}}  "Complained"
| json "event-data.message.headers.from", "event-data.recipient", "event-data.message.headers.subject" as sender, recipient, subject nodrop
```

**Mailgun/Overview/Client Device Type**
```
_sourceCategory={{Logsdatasource}}  "device-type"
| json "event-data.event", "event-data.log-level", "event-data.client-info.device-type" as event, loglevel, device_type nodrop
```

**Mailgun/Overview/Client Info for Recent Events**
```
_sourceCategory={{Logsdatasource}}  "client"
| json "event-data.event", "event-data.timestamp", "event-data.log-level", "event-data.recipient", "event-data.geolocation.country", "event-data.geolocation.region", "event-data.geolocation.city", "event-data.client-info.client-os", "event-data.client-info.device-type", "event-data.client-info.client-name", "event-data.client-info.client-type" as event,timestamp, log_level, recipient, country, region, city, os, device_type, client_name, client_type nodrop
```

**Mailgun/Overview/Client Name**
```
_sourceCategory={{Logsdatasource}}  "client-name"
| json "event-data.event", "event-data.log-level", "event-data.client-info.client-name" as event, loglevel, client_name nodrop
```

**Mailgun/Overview/Client OS**
```
_sourceCategory={{Logsdatasource}}  "client-os"
| json "event-data.event", "event-data.log-level", "event-data.client-info.client-os" as event, loglevel, os nodrop
```

**Mailgun/Overview/Client Type**
```
_sourceCategory={{Logsdatasource}}  "client-type"
| json "event-data.event", "event-data.log-level", "event-data.client-info.client-type" as event, loglevel, client_type nodrop
```

**Mailgun/Overview/Error Events**
```
_sourceCategory={{Logsdatasource}}  error
| json "event-data.id", "event-data.event", "event-data.log-level" as id, event, loglevel nodrop
```

**Mailgun/Overview/Event type**
```
_sourceCategory={{Logsdatasource}} 
| json "event-data.event", "event-data.log-level" as event, loglevel nodrop
```

**Mailgun/Overview/Event Type Trend**
```
_sourceCategory={{Logsdatasource}} 
| json "event-data.event", "event-data.log-level" as event, loglevel nodrop
```

**Mailgun/Overview/Event's Geolocation**
```
_sourceCategory={{Logsdatasource}}  "ip"
| json "event-data.event", "event-data.log-level", "event-data.ip" as event, loglevel, ip nodrop
```

**Mailgun/Overview/Info Events**
```
_sourceCategory={{Logsdatasource}}  info
| json "event-data.id", "event-data.event", "event-data.log-level" as id, event, loglevel nodrop
```

**Mailgun/Overview/Log Level Trend**
```
_sourceCategory={{Logsdatasource}}  "log-level"
| json "event-data.event", "event-data.log-level" as event, loglevel nodrop
```

**Mailgun/Overview/Recent Event Summary**
```
_sourceCategory={{Logsdatasource}} 
| json "event-data.event", "event-data.timestamp", "event-data.log-level", "event-data.recipient", "event-data.geolocation.country", "event-data.geolocation.region", "event-data.geolocation.city", "event-data.client-info.client-os", "event-data.client-info.device-type", "event-data.client-info.client-name", "event-data.client-info.client-type","event-data.severity", "event-data.reason", "event-data.delivery-status.description" as event,timestamp, log_level, recipient, country, region, city, os, device_type, client_name, client_type, severity, reason, description nodrop
```

**Mailgun/Overview/Top Recipient**
```
_sourceCategory={{Logsdatasource}}  "recipient"
| json "event-data.event", "event-data.log-level", "event-data.timestamp","event-data.recipient" as event, loglevel, timestamp, recipient nodrop
```

**Mailgun/Overview/Top Sender**
```
_sourceCategory={{Logsdatasource}}  "from"
| json "event-data.event", "event-data.log-level", "event-data.timestamp","event-data.message.headers.from" as event, loglevel, timestamp, sender nodrop
```

**Mailgun/Overview/Top Subject**
```
_sourceCategory={{Logsdatasource}} 
| json "event-data.event", "event-data.log-level", "event-data.timestamp","event-data.message.headers.subject" as event, loglevel, timestamp,subject nodrop
```

**Mailgun/Overview/Total Events**
```
_sourceCategory={{Logsdatasource}} 
| json "event-data.id", "event-data.event", "event-data.log-level" as id, event, loglevel nodrop
```

**Mailgun/Overview/Warn Events**
```
_sourceCategory={{Logsdatasource}}  warn
| json "event-data.id", "event-data.event", "event-data.log-level" as id, event, loglevel nodrop
```


