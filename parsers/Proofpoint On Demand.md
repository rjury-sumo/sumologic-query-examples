# Parsers For Proofpoint On Demand

**Proofpoint On Demand/Proofpoint on Demand - Message Monitoring/Actions of Messages Over Time**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
```

**Proofpoint On Demand/Proofpoint on Demand - Message Monitoring/Blocked Messages Trend**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
```

**Proofpoint On Demand/Proofpoint on Demand - Message Monitoring/Geo Locations of Blocked Messages**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
```

**Proofpoint On Demand/Proofpoint on Demand - Message Monitoring/Geo Locations of Senders**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
```

**Proofpoint On Demand/Proofpoint on Demand - Message Monitoring/Message Traffic Trend**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
```

**Proofpoint On Demand/Proofpoint on Demand - Message Monitoring/Recent Messages**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
| if ( isNull(is_encrypted), "null", is_encrypted) as is_encrypted
| replace(final_action, "[\"", "") as final_action
| replace(final_action, "\"]", "") as final_action
| replace(final_rule, "[\"", "") as final_rule
| replace(final_rule, "\"]", "") as final_rule
| replace(final_module, "[\"", "") as final_module
| replace(final_module, "\"]", "") as final_module
| where final_action matches "{{action}}"
| where disposition matches "{{disposition}}"
| where is_encrypted matches "{{is_encrypted}}"
| where final_rule matches "{{rule}}"
| where final_module matches "{{module}}"
| extract field=sender_email "\<(?<individual_sender_email>[\w\s\-@.]*)\>\"?[,\n\]]" multi
| extract field=receiver_email "\<(?<individual_receiver_email>[\w\s\-@.]*)\>\"?[,\n\]]" multi
| where !(subject="[]")
| json field=subject "[0]" as final_subject
| json field=message_id "[0]" as final_msg_id
```

**Proofpoint On Demand/Proofpoint on Demand - Message Monitoring/Top 10 Receivers**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
| if ( isNull(is_encrypted), "null", is_encrypted) as is_encrypted
| replace(final_action, "[\"", "") as final_action
| replace(final_action, "\"]", "") as final_action
| replace(final_rule, "[\"", "") as final_rule
| replace(final_rule, "\"]", "") as final_rule
| replace(final_module, "[\"", "") as final_module
| replace(final_module, "\"]", "") as final_module
| where route_direction matches "{{route_direction}}"
| where final_action matches "{{action}}"
| where disposition matches "{{disposition}}"
| where is_encrypted matches "{{is_encrypted}}"
| where final_rule matches "{{rule}}"
| where final_module matches "{{module}}"
| extract field=receiver_email "\<(?<individual_receiver_email>[\w\s\-@.]*)\>\"?[,\n\]]" multi
| extract field=individual_receiver_email "(?<receiver_email>[a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z0-9_-]+)"
```

**Proofpoint On Demand/Proofpoint on Demand - Message Monitoring/Top 10 Senders**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
| if ( isNull(is_encrypted), "null", is_encrypted) as is_encrypted
| replace(final_action, "[\"", "") as final_action
| replace(final_action, "\"]", "") as final_action
| replace(final_rule, "[\"", "") as final_rule
| replace(final_rule, "\"]", "") as final_rule
| replace(final_module, "[\"", "") as final_module
| replace(final_module, "\"]", "") as final_module
| where route_direction matches "{{route_direction}}"
| where final_action matches "{{action}}"
| where disposition matches "{{disposition}}"
| where is_encrypted matches "{{is_encrypted}}"
| where final_rule matches "{{rule}}"
| where final_module matches "{{module}}"
| extract field=sender_email "\<(?<individual_sender_email>[\w\s\-@.]*)\>\"?[,\n\]]" multi
| extract field=individual_sender_email "(?<sender_email>[a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z0-9_-]+)"
```

**Proofpoint On Demand/Proofpoint on Demand - Message Monitoring/Unique Inbound Domains**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
| if ( isNull(is_encrypted), "null", is_encrypted) as is_encrypted
| replace(final_action, "[\"", "") as final_action
| replace(final_action, "\"]", "") as final_action
| replace(final_rule, "[\"", "") as final_rule
| replace(final_rule, "\"]", "") as final_rule
| replace(final_module, "[\"", "") as final_module
| replace(final_module, "\"]", "") as final_module
| where route_direction matches "{{route_direction}}"
| where final_action matches "{{action}}"
| where disposition matches "{{disposition}}"
| where is_encrypted matches "{{is_encrypted}}"
| where final_rule matches "{{rule}}"
| where final_module matches "{{module}}"
// extracting individual emails from array of emails
| extract field=receiver_email "\<(?<individual_receiver_email>[\w\s\-@.]*)\>\"?[,\n\]]" multi
| extract field=individual_receiver_email ".@(?<inbound_domain>[a-z0-9-.]*)"
```

**Proofpoint On Demand/Proofpoint on Demand - Message Monitoring/Unique Outbound Domains**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
| if ( isNull(is_encrypted), "null", is_encrypted) as is_encrypted
| replace(final_action, "[\"", "") as final_action
| replace(final_action, "\"]", "") as final_action
| replace(final_rule, "[\"", "") as final_rule
| replace(final_rule, "\"]", "") as final_rule
| replace(final_module, "[\"", "") as final_module
| replace(final_module, "\"]", "") as final_module
| where route_direction matches "{{route_direction}}"
| where final_action matches "{{action}}"
| where disposition matches "{{disposition}}"
| where is_encrypted matches "{{is_encrypted}}"
| where final_rule matches "{{rule}}"
| where final_module matches "{{module}}"
// extracting individual emails from array of emails
| extract field=sender_email "\<(?<individual_sender_email>[\w\s\-@.]*)\>\"?[,\n\]]" multi
| extract field=individual_sender_email "@(?<outbound_domain>[a-z0-9-.]*)"
```

**Proofpoint On Demand/Proofpoint on Demand - Security Overview/Geo Locations of Unencrypted Sender Domains**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
```

**Proofpoint On Demand/Proofpoint on Demand - Security Overview/Impostor Detection Trend**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
```

**Proofpoint On Demand/Proofpoint on Demand - Security Overview/Messages by Quarantine Folder**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
```

**Proofpoint On Demand/Proofpoint on Demand - Security Overview/Messages from High Risk Countries**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
| if ( isNull(is_encrypted), "null", is_encrypted) as is_encrypted
| replace(final_action, "[\"", "") as final_action
| replace(final_action, "\"]", "") as final_action
| replace(final_rule, "[\"", "") as final_rule
| replace(final_rule, "\"]", "") as final_rule
| replace(final_module, "[\"", "") as final_module
| replace(final_module, "\"]", "") as final_module
| where route_direction matches "{{route_direction}}"
| where final_action matches "{{action}}"
| where disposition matches "{{disposition}}"
| where is_encrypted matches "{{is_encrypted}}"
| where final_rule matches "{{rule}}"
| where final_module matches "{{module}}"
| where isValidIPv4(ip) or isValidIPv6(ip)
| where !isNull(ip)
| if(isValidIPv4(ip), if(!isPrivateIP(ip),true,false),true) as is_public
| where is_public
| count_distinct(guid) as frequency by ip
| lookup latitude, longitude, country_code from geo://location on ip = ip 
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code
```

**Proofpoint On Demand/Proofpoint on Demand - Security Overview/TLS Messages Trend**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
```

**Proofpoint On Demand/Proofpoint on Demand - Security Overview/Top 10 Anti-Spam Results**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
```

**Proofpoint On Demand/Proofpoint on Demand - Security Overview/Top 10 Anti-Virus Results**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
```

**Proofpoint On Demand/Proofpoint on Demand - Security Overview/Top 10 DLP Detection Results**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
```

**Proofpoint On Demand/Proofpoint on Demand - Security Overview/Top 10 DMARC Detection Results**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
| if ( isNull(is_encrypted), "null", is_encrypted) as is_encrypted
| replace(final_action, "[\"", "") as final_action
| replace(final_action, "\"]", "") as final_action
| replace(final_rule, "[\"", "") as final_rule
| replace(final_rule, "\"]", "") as final_rule
| replace(final_module, "[\"", "") as final_module
| replace(final_module, "\"]", "") as final_module
| where route_direction matches "{{route_direction}}"
| where final_action matches "{{action}}"
| where disposition matches "{{disposition}}"
| where is_encrypted matches "{{is_encrypted}}"
| where final_rule matches "{{rule}}"
| where final_module matches "{{module}}"
| where !isNull(action_dmarc)
| json field=action_dmarc "filterdResult" as action_dmarc_rule
```

**Proofpoint On Demand/Proofpoint on Demand - Security Overview/Top 10 Unencrypted Receiver Domains**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
| if ( isNull(is_encrypted), "null", is_encrypted) as is_encrypted
| replace(final_action, "[\"", "") as final_action
| replace(final_action, "\"]", "") as final_action
| replace(final_rule, "[\"", "") as final_rule
| replace(final_rule, "\"]", "") as final_rule
| replace(final_module, "[\"", "") as final_module
| replace(final_module, "\"]", "") as final_module
| where route_direction matches "{{route_direction}}"
| where final_action matches "{{action}}"
| where disposition matches "{{disposition}}"
| where is_encrypted matches "{{is_encrypted}}"
| where final_rule matches "{{rule}}"
| where final_module matches "{{module}}"
| where !(is_encrypted matches "true")
// extracting individual emails from array of emails
| extract field=receiver_email "\<(?<individual_receiver_email>[\w\s\-@.]*)\>\"?[,\n\]]" multi
| extract field=individual_receiver_email "@(?<inbound_domain>[a-z0-9-.]*)"
```

**Proofpoint On Demand/Proofpoint on Demand - Security Overview/Top 10 Unencrypted Sender Domains**
```
_sourceCategory={{Logsdatasource}}  
| json "guid","filter.modules.dmarc","filter.routeDirection","msg.header.from","msg.header.to","filter.disposition","connection.ip","ts","msg.header.subject","msg.header.message-id","filter.quarantine.folder","filter.isMsgEncrypted" as guid,action_dmarc,route_direction,sender_email,receiver_email,disposition,ip,time_stamp,subject,message_id,quarantine_folder,is_encrypted nodrop
| json "filter.actions[?(@.isFinal == true)].action" as final_action
| json "filter.actions[?(@.isFinal == true)].rule" as final_rule
| json "filter.actions[?(@.isFinal == true)].module" as final_module
| if ( isNull(is_encrypted), "null", is_encrypted) as is_encrypted
| replace(final_action, "[\"", "") as final_action
| replace(final_action, "\"]", "") as final_action
| replace(final_rule, "[\"", "") as final_rule
| replace(final_rule, "\"]", "") as final_rule
| replace(final_module, "[\"", "") as final_module
| replace(final_module, "\"]", "") as final_module
| where route_direction matches "{{route_direction}}"
| where final_action matches "{{action}}"
| where disposition matches "{{disposition}}"
| where is_encrypted matches "{{is_encrypted}}"
| where final_rule matches "{{rule}}"
| where final_module matches "{{module}}"
| where !(is_encrypted matches "true")
// extracting individual emails from array of emails
| extract field=sender_email "\<(?<individual_sender_email>[\w\s\-@.]*)\>\"?[,\n\]]" multi
| extract field=individual_sender_email "@(?<outbound_domain>[a-z0-9-.]*)"
```


