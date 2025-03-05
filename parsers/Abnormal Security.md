# Parsers For Abnormal Security

## Parser:
```
| json "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype", "event.auto_remediated", "event.post_remediated" as strategy, party, vector, type, source_type, auto_remediated, post_remediated nodrop
 
```
### Use Cases:
Auto Remediated Emails, Cases by Severity Level, Cases Over Time, Geo Location of Senders, Latest Cases, Latest Threats, Malware Attacks, Malware Attacks Over Time, Opened Threat Emails, Opened Threat Emails Over Time, Phishing Attacks, Phishing Attacks Over Time, Post Remediated Emails, Remediation Triggered Emails, Senders from Risky Geo Locations, Threats by Attack Party, Threats by Attack Strategy, Threats by Attack Type, Threats by Attack Vector, Threats Over Time, Top 10 Senders, Top 10 Threat Receivers, Total Threats



## Parser:
```
| json "event.from_address", "event.recipient_address", "event.post_remediated", "event.auto_remediated",  "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype" as sender, receiver, post_remediated, auto_remediated, strategy, party, vector, type, source_type nodrop
 
```
### Use Cases:
Auto Remediated Emails, Cases by Severity Level, Cases Over Time, Geo Location of Senders, Latest Cases, Opened Threat Emails, Opened Threat Emails Over Time, Post Remediated Emails, Remediation Triggered Emails, Senders from Risky Geo Locations, Top 10 Senders, Top 10 Threat Receivers



## Parser:
```
| json "event.from_address", "event.recipient_address", "event.post_remediated", "event.auto_remediated",  "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype", "event.is_read" as sender, receiver, post_remediated, auto_remediated, strategy, party, vector, type, source_type, is_open nodrop
 
```
### Use Cases:
Cases by Severity Level, Cases Over Time, Geo Location of Senders, Latest Cases, Opened Threat Emails, Opened Threat Emails Over Time, Post Remediated Emails, Remediation Triggered Emails, Senders from Risky Geo Locations, Top 10 Threat Receivers



## Parser:
```
| json "event.from_address", "event.to_addresses", "event.post_remediated", "event.auto_remediated",  "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype" as sender, receiver, post_remediated, auto_remediated, strategy, party, vector, type, source_type nodrop
 
```
### Use Cases:
Auto Remediated Emails, Cases by Severity Level, Cases Over Time, Geo Location of Senders, Latest Cases, Latest Threats, Malware Attacks Over Time, Opened Threat Emails, Opened Threat Emails Over Time, Phishing Attacks, Phishing Attacks Over Time, Post Remediated Emails, Remediation Triggered Emails, Senders from Risky Geo Locations, Threats by Attack Party, Threats by Attack Strategy, Threats by Attack Vector, Threats Over Time, Top 10 Senders, Top 10 Threat Receivers



## Parser:
```
| json "event.from_address", "event.to_addresses", "event.post_remediated", "event.auto_remediated",  "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype","event.is_read","event.sender_ip_address" as sender, receiver, post_remediated, auto_remediated, strategy, party, vector, type, source_type, is_open, ip nodrop
 
```
### Use Cases:
Cases by Severity Level, Cases Over Time, Geo Location of Senders, Latest Cases, Post Remediated Emails, Senders from Risky Geo Locations, Top 10 Threat Receivers



## Parser:
```
| json "event.from_address", "event.to_addresses", "event.sent_time", "event.post_remediated", "event.auto_remediated",  "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype","event.is_read","event.sender_ip_address" as sender, receiver, send_time, post_remediated, auto_remediated, strategy, party, vector, type, source_type, is_open, ip nodrop
 
```
### Use Cases:
Cases by Severity Level, Cases Over Time, Latest Cases, Post Remediated Emails, Senders from Risky Geo Locations, Top 10 Threat Receivers



## Parser:
```
| json "event.severity_level", "event.caseId", "event.description", "sourcetype" as severity, case_id, description, source_type nodrop
 
```
### Use Cases:
Cases by Severity Level, Cases Over Time



## Parser:
```
| json field=_raw "event.severity_level", "event.caseId", "event.description", "event.last_modified", "sourcetype" as severity, case_id, description, case_time, source_type nodrop
 
```
### Use Cases:
Cases by Severity Level, Cases Over Time, Latest Cases


