# Parsers For Mailgun

## Parser:
```
| json "event-data.delivery-status.code", "event-data.message.headers.from", "event-data.recipient" as code, sender, recipient nodrop
```
### Use Cases:
Complained Event Geolocation, Recent Complaints Event, Top Failure Codes, Top Failure Reason, Top Sender for Complained Event, Top Subject for Complained Event



## Parser:
```
| json "event-data.event", "event-data.log-level" as event, loglevel nodrop
```
### Use Cases:
Client Device Type, Client Info for Recent Events, Client Name, Client OS, Client Type, Complained Event Geolocation, Complained Events, Error Events, Event type, Event Type Trend, Event's Geolocation, Failed Events, Info Events, Log Level Trend, Recent Complaints Event, Recent Event Summary, Recent Failed Events, Severity, Top Failure Codes, Top Failure Reason, Top Recipient, Top Recipient for Complained Event, Top Recipient for Failure Event, Top Sender, Top Sender for Complained Event, Top Sender for Failure Event, Top Subject, Top Subject for Complained Event, Total Events, Warn Events



## Parser:
```
| json "event-data.event", "event-data.log-level", "event-data.client-info.client-name" as event, loglevel, client_name nodrop
```
### Use Cases:
Client Device Type, Client Info for Recent Events, Client Name, Client OS, Client Type, Complained Event Geolocation, Complained Events, Error Events, Event's Geolocation, Failed Events, Info Events, Log Level Trend, Recent Complaints Event, Recent Event Summary, Recent Failed Events, Severity, Top Failure Codes, Top Failure Reason, Top Recipient, Top Recipient for Complained Event, Top Recipient for Failure Event, Top Sender, Top Sender for Complained Event, Top Sender for Failure Event, Top Subject, Top Subject for Complained Event



## Parser:
```
| json "event-data.event", "event-data.log-level", "event-data.client-info.client-os" as event, loglevel, os nodrop
```
### Use Cases:
Client OS, Client Type, Complained Event Geolocation, Complained Events, Event's Geolocation, Failed Events, Info Events, Recent Complaints Event, Recent Event Summary, Recent Failed Events, Severity, Top Failure Codes, Top Failure Reason, Top Recipient for Complained Event, Top Recipient for Failure Event, Top Sender, Top Sender for Complained Event, Top Sender for Failure Event, Top Subject, Top Subject for Complained Event



## Parser:
```
| json "event-data.event", "event-data.log-level", "event-data.client-info.client-type" as event, loglevel, client_type nodrop
```
### Use Cases:
Client Type, Complained Event Geolocation, Complained Events, Failed Events, Recent Complaints Event, Recent Event Summary, Recent Failed Events, Severity, Top Failure Codes, Top Failure Reason, Top Recipient for Complained Event, Top Recipient for Failure Event, Top Sender for Complained Event, Top Sender for Failure Event, Top Subject for Complained Event



## Parser:
```
| json "event-data.event", "event-data.log-level", "event-data.client-info.device-type" as event, loglevel, device_type nodrop
```
### Use Cases:
Client Device Type, Client OS, Client Type, Complained Event Geolocation, Complained Events, Error Events, Event's Geolocation, Failed Events, Info Events, Log Level Trend, Recent Complaints Event, Recent Event Summary, Recent Failed Events, Severity, Top Failure Codes, Top Failure Reason, Top Recipient for Complained Event, Top Recipient for Failure Event, Top Sender, Top Sender for Complained Event, Top Sender for Failure Event, Top Subject, Top Subject for Complained Event



## Parser:
```
| json "event-data.event", "event-data.log-level", "event-data.ip" as event, loglevel, ip nodrop
```
### Use Cases:
Client Type, Complained Event Geolocation, Complained Events, Event's Geolocation, Failed Events, Recent Complaints Event, Recent Event Summary, Recent Failed Events, Severity, Top Failure Codes, Top Failure Reason, Top Recipient for Complained Event, Top Recipient for Failure Event, Top Sender for Complained Event, Top Sender for Failure Event, Top Subject for Complained Event



## Parser:
```
| json "event-data.event", "event-data.log-level", "event-data.timestamp","event-data.message.headers.from" as event, loglevel, timestamp, sender nodrop
```
### Use Cases:
Client Type, Complained Event Geolocation, Complained Events, Event's Geolocation, Failed Events, Info Events, Recent Complaints Event, Recent Event Summary, Recent Failed Events, Severity, Top Failure Codes, Top Failure Reason, Top Recipient for Complained Event, Top Recipient for Failure Event, Top Sender, Top Sender for Complained Event, Top Sender for Failure Event, Top Subject for Complained Event



## Parser:
```
| json "event-data.event", "event-data.log-level", "event-data.timestamp","event-data.message.headers.subject" as event, loglevel, timestamp,subject nodrop
```
### Use Cases:
Client Type, Complained Event Geolocation, Complained Events, Event's Geolocation, Failed Events, Info Events, Recent Complaints Event, Recent Event Summary, Recent Failed Events, Severity, Top Failure Codes, Top Failure Reason, Top Recipient for Complained Event, Top Recipient for Failure Event, Top Sender, Top Sender for Complained Event, Top Sender for Failure Event, Top Subject, Top Subject for Complained Event



## Parser:
```
| json "event-data.event", "event-data.log-level", "event-data.timestamp","event-data.recipient" as event, loglevel, timestamp, recipient nodrop
```
### Use Cases:
Client Device Type, Client OS, Client Type, Complained Event Geolocation, Complained Events, Error Events, Event's Geolocation, Failed Events, Info Events, Log Level Trend, Recent Complaints Event, Recent Event Summary, Recent Failed Events, Severity, Top Failure Codes, Top Failure Reason, Top Recipient, Top Recipient for Complained Event, Top Recipient for Failure Event, Top Sender, Top Sender for Complained Event, Top Sender for Failure Event, Top Subject, Top Subject for Complained Event



## Parser:
```
| json "event-data.event", "event-data.timestamp", "event-data.log-level", "event-data.recipient", "event-data.geolocation.country", "event-data.geolocation.region", "event-data.geolocation.city", "event-data.client-info.client-os", "event-data.client-info.device-type", "event-data.client-info.client-name", "event-data.client-info.client-type" as event,timestamp, log_level, recipient, country, region, city, os, device_type, client_name, client_type nodrop
```
### Use Cases:
Client Device Type, Client Info for Recent Events, Client OS, Client Type, Complained Event Geolocation, Complained Events, Error Events, Event's Geolocation, Failed Events, Info Events, Log Level Trend, Recent Complaints Event, Recent Event Summary, Recent Failed Events, Severity, Top Failure Codes, Top Failure Reason, Top Recipient, Top Recipient for Complained Event, Top Recipient for Failure Event, Top Sender, Top Sender for Complained Event, Top Sender for Failure Event, Top Subject, Top Subject for Complained Event



## Parser:
```
| json "event-data.event", "event-data.timestamp", "event-data.log-level", "event-data.recipient", "event-data.geolocation.country", "event-data.geolocation.region", "event-data.geolocation.city", "event-data.client-info.client-os", "event-data.client-info.device-type", "event-data.client-info.client-name", "event-data.client-info.client-type","event-data.severity", "event-data.reason", "event-data.delivery-status.description" as event,timestamp, log_level, recipient, country, region, city, os, device_type, client_name, client_type, severity, reason, description nodrop
```
### Use Cases:
Complained Event Geolocation, Complained Events, Failed Events, Recent Complaints Event, Recent Event Summary, Recent Failed Events, Severity, Top Failure Codes, Top Failure Reason, Top Recipient for Complained Event, Top Recipient for Failure Event, Top Sender for Complained Event, Top Sender for Failure Event, Top Subject for Complained Event



## Parser:
```
| json "event-data.id", "event-data.event", "event-data.log-level" as id, event, loglevel nodrop
```
### Use Cases:
Client Device Type, Client Info for Recent Events, Client Name, Client OS, Client Type, Complained Event Geolocation, Complained Events, Error Events, Event type, Event's Geolocation, Failed Events, Info Events, Log Level Trend, Recent Complaints Event, Recent Event Summary, Recent Failed Events, Severity, Top Failure Codes, Top Failure Reason, Top Recipient, Top Recipient for Complained Event, Top Recipient for Failure Event, Top Sender, Top Sender for Complained Event, Top Sender for Failure Event, Top Subject, Top Subject for Complained Event, Total Events, Warn Events



## Parser:
```
| json "event-data.message.headers.from" as sender nodrop
```
### Use Cases:
Complained Event Geolocation, Recent Complaints Event, Top Failure Codes, Top Failure Reason, Top Recipient for Failure Event, Top Sender for Complained Event, Top Sender for Failure Event, Top Subject for Complained Event



## Parser:
```
| json "event-data.message.headers.from", "event-data.recipient", "event-data.envelope.sending-ip" as sender, recipient, ip nodrop
```
### Use Cases:
Complained Event Geolocation, Top Failure Reason, Top Sender for Complained Event



## Parser:
```
| json "event-data.message.headers.from", "event-data.recipient", "event-data.event" as sender, recipient, event nodrop
```
### Use Cases:
Complained Event Geolocation, Complained Events, Failed Events, Recent Complaints Event, Recent Failed Events, Severity, Top Failure Codes, Top Failure Reason, Top Recipient for Complained Event, Top Recipient for Failure Event, Top Sender for Complained Event, Top Sender for Failure Event, Top Subject for Complained Event



## Parser:
```
| json "event-data.message.headers.from", "event-data.recipient", "event-data.message.headers.subject" as sender, recipient, subject nodrop
```
### Use Cases:
Complained Event Geolocation, Top Failure Reason, Top Sender for Complained Event, Top Subject for Complained Event



## Parser:
```
| json "event-data.reason", "event-data.message.headers.from", "event-data.recipient" as reason, sender, recipient nodrop
```
### Use Cases:
Top Failure Reason



## Parser:
```
| json "event-data.recipient" as recipient nodrop
```
### Use Cases:
Complained Event Geolocation, Recent Complaints Event, Recent Failed Events, Severity, Top Failure Codes, Top Failure Reason, Top Recipient for Complained Event, Top Recipient for Failure Event, Top Sender for Complained Event, Top Sender for Failure Event, Top Subject for Complained Event



## Parser:
```
| json "event-data.severity", "event-data.message.headers.from", "event-data.recipient" as severity, sender, recipient nodrop
```
### Use Cases:
Complained Event Geolocation, Recent Complaints Event, Recent Failed Events, Severity, Top Failure Codes, Top Failure Reason, Top Recipient for Failure Event, Top Sender for Complained Event, Top Sender for Failure Event, Top Subject for Complained Event



## Parser:
```
| json "event-data.timestamp","event-data.message.headers.from","event-data.recipient", "event-data.message.headers.subject", "event-data.envelope.sending-ip" as timestamp,sender, recipient,subject, sender_ip nodrop
```
### Use Cases:
Complained Event Geolocation, Recent Complaints Event, Top Failure Reason, Top Sender for Complained Event, Top Subject for Complained Event



## Parser:
```
| json "event-data.timestamp","event-data.severity", "event-data.reason", "event-data.delivery-status.description",  "event-data.delivery-status.code", "event-data.flags.is-authenticated", "event-data.delivery-status.message", "event-data.message.headers.from", "event-data.recipient" as timestamp,severity, reason, description, code, is_authenticated, message, sender, recipient nodrop
```
### Use Cases:
Complained Event Geolocation, Recent Complaints Event, Recent Failed Events, Top Failure Codes, Top Failure Reason, Top Recipient for Failure Event, Top Sender for Complained Event, Top Sender for Failure Event, Top Subject for Complained Event


