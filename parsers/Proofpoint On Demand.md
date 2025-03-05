# Parsers For Proofpoint On Demand

## Parser:
```
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
 
```
### Use Cases:
Actions of Messages Over Time, Blocked Messages Trend, Geo Locations of Blocked Messages, Geo Locations of Senders, Geo Locations of Unencrypted Sender Domains, Impostor Detection Trend, Message Traffic Trend, Messages by Quarantine Folder, Messages from High Risk Countries, Recent Messages, TLS Messages Trend, Top 10 Anti-Spam Results, Top 10 Anti-Virus Results, Top 10 DLP Detection Results, Top 10 DMARC Detection Results, Top 10 Receivers, Top 10 Senders, Top 10 Unencrypted Receiver Domains, Top 10 Unencrypted Sender Domains, Unique Inbound Domains, Unique Outbound Domains



## Parser:
```
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
| extract field=receiver_email "\<(?<individual_receiver_email>[\w\s\-@.]*)\>\"?[,\n\]]" multi
| extract field=individual_receiver_email ".@(?<inbound_domain>[a-z0-9-.]*)"
 
```
### Use Cases:
Actions of Messages Over Time, Blocked Messages Trend, Geo Locations of Blocked Messages, Geo Locations of Senders, Geo Locations of Unencrypted Sender Domains, Impostor Detection Trend, Message Traffic Trend, Messages by Quarantine Folder, Messages from High Risk Countries, Recent Messages, TLS Messages Trend, Top 10 Anti-Spam Results, Top 10 Anti-Virus Results, Top 10 DLP Detection Results, Top 10 DMARC Detection Results, Top 10 Receivers, Top 10 Senders, Top 10 Unencrypted Receiver Domains, Top 10 Unencrypted Sender Domains, Unique Inbound Domains, Unique Outbound Domains



## Parser:
```
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
| extract field=receiver_email "\<(?<individual_receiver_email>[\w\s\-@.]*)\>\"?[,\n\]]" multi
| extract field=individual_receiver_email "(?<receiver_email>[a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z0-9_-]+)"
 
```
### Use Cases:
Actions of Messages Over Time, Blocked Messages Trend, Geo Locations of Blocked Messages, Geo Locations of Senders, Geo Locations of Unencrypted Sender Domains, Impostor Detection Trend, Message Traffic Trend, Messages by Quarantine Folder, Messages from High Risk Countries, Recent Messages, TLS Messages Trend, Top 10 Anti-Spam Results, Top 10 Anti-Virus Results, Top 10 DLP Detection Results, Top 10 DMARC Detection Results, Top 10 Receivers, Top 10 Senders, Top 10 Unencrypted Receiver Domains, Top 10 Unencrypted Sender Domains, Unique Inbound Domains, Unique Outbound Domains



## Parser:
```
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
| extract field=receiver_email "\<(?<individual_receiver_email>[\w\s\-@.]*)\>\"?[,\n\]]" multi
| extract field=individual_receiver_email "@(?<inbound_domain>[a-z0-9-.]*)"
 
```
### Use Cases:
Actions of Messages Over Time, Blocked Messages Trend, Geo Locations of Blocked Messages, Geo Locations of Senders, Geo Locations of Unencrypted Sender Domains, Impostor Detection Trend, Message Traffic Trend, Messages by Quarantine Folder, Messages from High Risk Countries, Recent Messages, TLS Messages Trend, Top 10 Anti-Spam Results, Top 10 Anti-Virus Results, Top 10 DLP Detection Results, Top 10 DMARC Detection Results, Top 10 Receivers, Top 10 Senders, Top 10 Unencrypted Receiver Domains, Top 10 Unencrypted Sender Domains, Unique Inbound Domains, Unique Outbound Domains



## Parser:
```
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
| extract field=sender_email "\<(?<individual_sender_email>[\w\s\-@.]*)\>\"?[,\n\]]" multi
| extract field=individual_sender_email "(?<sender_email>[a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z0-9_-]+)"
 
```
### Use Cases:
Actions of Messages Over Time, Blocked Messages Trend, Geo Locations of Blocked Messages, Geo Locations of Senders, Geo Locations of Unencrypted Sender Domains, Impostor Detection Trend, Message Traffic Trend, Messages by Quarantine Folder, Messages from High Risk Countries, Recent Messages, TLS Messages Trend, Top 10 Anti-Spam Results, Top 10 Anti-Virus Results, Top 10 DLP Detection Results, Top 10 DMARC Detection Results, Top 10 Receivers, Top 10 Senders, Top 10 Unencrypted Receiver Domains, Top 10 Unencrypted Sender Domains, Unique Inbound Domains, Unique Outbound Domains



## Parser:
```
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
| extract field=sender_email "\<(?<individual_sender_email>[\w\s\-@.]*)\>\"?[,\n\]]" multi
| extract field=individual_sender_email "@(?<outbound_domain>[a-z0-9-.]*)"
 
```
### Use Cases:
Actions of Messages Over Time, Blocked Messages Trend, Geo Locations of Blocked Messages, Geo Locations of Senders, Geo Locations of Unencrypted Sender Domains, Impostor Detection Trend, Message Traffic Trend, Messages by Quarantine Folder, Messages from High Risk Countries, Recent Messages, TLS Messages Trend, Top 10 Anti-Spam Results, Top 10 Anti-Virus Results, Top 10 DLP Detection Results, Top 10 DMARC Detection Results, Top 10 Receivers, Top 10 Senders, Top 10 Unencrypted Receiver Domains, Top 10 Unencrypted Sender Domains, Unique Inbound Domains, Unique Outbound Domains



## Parser:
```
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
| extract field=sender_email "\<(?<individual_sender_email>[\w\s\-@.]*)\>\"?[,\n\]]" multi
| extract field=receiver_email "\<(?<individual_receiver_email>[\w\s\-@.]*)\>\"?[,\n\]]" multi
| json field=subject "[0]" as final_subject
| json field=message_id "[0]" as final_msg_id
 
```
### Use Cases:
Actions of Messages Over Time, Blocked Messages Trend, Geo Locations of Blocked Messages, Geo Locations of Senders, Geo Locations of Unencrypted Sender Domains, Impostor Detection Trend, Message Traffic Trend, Messages by Quarantine Folder, Messages from High Risk Countries, Recent Messages, TLS Messages Trend, Top 10 Anti-Spam Results, Top 10 Anti-Virus Results, Top 10 DLP Detection Results, Top 10 DMARC Detection Results, Top 10 Receivers, Top 10 Senders, Top 10 Unencrypted Receiver Domains, Top 10 Unencrypted Sender Domains, Unique Inbound Domains, Unique Outbound Domains



## Parser:
```
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
| json field=action_dmarc "filterdResult" as action_dmarc_rule
 
```
### Use Cases:
Actions of Messages Over Time, Blocked Messages Trend, Geo Locations of Blocked Messages, Geo Locations of Senders, Geo Locations of Unencrypted Sender Domains, Impostor Detection Trend, Message Traffic Trend, Messages by Quarantine Folder, Messages from High Risk Countries, Recent Messages, TLS Messages Trend, Top 10 Anti-Spam Results, Top 10 Anti-Virus Results, Top 10 DLP Detection Results, Top 10 DMARC Detection Results, Top 10 Receivers, Top 10 Senders, Top 10 Unencrypted Receiver Domains, Top 10 Unencrypted Sender Domains, Unique Inbound Domains, Unique Outbound Domains


