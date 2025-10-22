# Parsers For Abnormal Security

**Abnormal Security/Cases/Cases by Severity Level**
```
_sourceCategory={{Logsdatasource}}  sourcetype case_log
| json "event.severity_level", "event.caseId", "event.description", "sourcetype" as severity, case_id, description, source_type nodrop
```

**Abnormal Security/Cases/Cases Over Time**
```
_sourceCategory={{Logsdatasource}}  sourcetype case_log
| json "event.severity_level", "event.caseId", "event.description", "sourcetype" as severity, case_id, description, source_type nodrop
```

**Abnormal Security/Cases/Latest Cases**
```
_sourceCategory={{Logsdatasource}}  sourcetype case_log
| json field=_raw "event.severity_level", "event.caseId", "event.description", "event.last_modified", "sourcetype" as severity, case_id, description, case_time, source_type nodrop
```

**Abnormal Security/Emails/Auto Remediated Emails**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.from_address", "event.recipient_address", "event.post_remediated", "event.auto_remediated",  "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype" as sender, receiver, post_remediated, auto_remediated, strategy, party, vector, type, source_type nodrop
```

**Abnormal Security/Emails/Geo Location of Senders**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.from_address", "event.to_addresses", "event.post_remediated", "event.auto_remediated",  "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype","event.is_read","event.sender_ip_address" as sender, receiver, post_remediated, auto_remediated, strategy, party, vector, type, source_type, is_open, ip nodrop
```

**Abnormal Security/Emails/Opened Threat Emails**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.from_address", "event.recipient_address", "event.post_remediated", "event.auto_remediated",  "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype", "event.is_read" as sender, receiver, post_remediated, auto_remediated, strategy, party, vector, type, source_type, is_open nodrop
```

**Abnormal Security/Emails/Opened Threat Emails Over Time**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.from_address", "event.recipient_address", "event.post_remediated", "event.auto_remediated",  "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype", "event.is_read" as sender, receiver, post_remediated, auto_remediated, strategy, party, vector, type, source_type, is_open nodrop
```

**Abnormal Security/Emails/Post Remediated Emails**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.from_address", "event.recipient_address", "event.post_remediated", "event.auto_remediated",  "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype" as sender, receiver, post_remediated, auto_remediated, strategy, party, vector, type, source_type nodrop
```

**Abnormal Security/Emails/Remediation Triggered Emails**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.from_address", "event.recipient_address", "event.post_remediated", "event.auto_remediated",  "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype" as sender, receiver, post_remediated, auto_remediated, strategy, party, vector, type, source_type nodrop
```

**Abnormal Security/Emails/Senders from Risky Geo Locations**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.from_address", "event.to_addresses", "event.sent_time", "event.post_remediated", "event.auto_remediated",  "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype","event.is_read","event.sender_ip_address" as sender, receiver, send_time, post_remediated, auto_remediated, strategy, party, vector, type, source_type, is_open, ip nodrop

// global filters
| where type matches "{{attack_type}}"
| where party matches "{{attack_party}}"
| where strategy matches "{{attack_strategy}}"
| where vector matches "{{attack_vector}}"
| where auto_remediated matches "{{auto_remediated}}"
| where post_remediated matches "{{post_remediated}}"

| where sourceType matches("threat_log")
| where isValidIPv4(ip) or isValidIPv6(ip)
| where !isNull(ip)
| if(isValidIPv4(ip), if(!isPrivateIP(ip),true,false),true) as is_public
| where is_public
| count as frequency by ip
| lookup latitude, longitude, country_code from geo://location on ip = ip
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code
```

**Abnormal Security/Emails/Top 10 Senders**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.from_address", "event.recipient_address", "event.post_remediated", "event.auto_remediated",  "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype" as sender, receiver, post_remediated, auto_remediated, strategy, party, vector, type, source_type nodrop
```

**Abnormal Security/Emails/Top 10 Threat Receivers**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.from_address", "event.recipient_address", "event.post_remediated", "event.auto_remediated",  "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype", "event.is_read" as sender, receiver, post_remediated, auto_remediated, strategy, party, vector, type, source_type, is_open nodrop
```

**Abnormal Security/Overview/Latest Threats**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.from_address", "event.to_addresses", "event.post_remediated", "event.auto_remediated",  "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype" as sender, receiver, post_remediated, auto_remediated, strategy, party, vector, type, source_type nodrop
```

**Abnormal Security/Overview/Malware Attacks**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype", "event.auto_remediated", "event.post_remediated" as strategy, party, vector, type, source_type, auto_remediated, post_remediated nodrop
```

**Abnormal Security/Overview/Malware Attacks Over Time**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype", "event.auto_remediated", "event.post_remediated" as strategy, party, vector, type, source_type, auto_remediated, post_remediated nodrop
```

**Abnormal Security/Overview/Phishing Attacks**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype", "event.auto_remediated", "event.post_remediated" as strategy, party, vector, type, source_type, auto_remediated, post_remediated nodrop
```

**Abnormal Security/Overview/Phishing Attacks Over Time**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype", "event.auto_remediated", "event.post_remediated" as strategy, party, vector, type, source_type, auto_remediated, post_remediated nodrop
```

**Abnormal Security/Overview/Threats by Attack Party**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype", "event.auto_remediated", "event.post_remediated" as strategy, party, vector, type, source_type, auto_remediated, post_remediated nodrop
```

**Abnormal Security/Overview/Threats by Attack Strategy**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype", "event.auto_remediated", "event.post_remediated" as strategy, party, vector, type, source_type, auto_remediated, post_remediated nodrop
```

**Abnormal Security/Overview/Threats by Attack Type**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype", "event.auto_remediated", "event.post_remediated" as strategy, party, vector, type, source_type, auto_remediated, post_remediated nodrop
```

**Abnormal Security/Overview/Threats by Attack Vector**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype", "event.auto_remediated", "event.post_remediated" as strategy, party, vector, type, source_type, auto_remediated, post_remediated nodrop
```

**Abnormal Security/Overview/Threats Over Time**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype", "event.auto_remediated", "event.post_remediated" as strategy, party, vector, type, source_type, auto_remediated, post_remediated nodrop
```

**Abnormal Security/Overview/Total Threats**
```
_sourceCategory={{Logsdatasource}}  sourcetype threat_log
| json "event.attack_strategy", "event.attacked_party", "event.attack_vector", "event.attack_type", "sourcetype", "event.auto_remediated", "event.post_remediated" as strategy, party, vector, type, source_type, auto_remediated, post_remediated nodrop
```


