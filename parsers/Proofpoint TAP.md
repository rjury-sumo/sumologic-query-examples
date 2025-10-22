# Parsers For Proofpoint TAP

**Proofpoint TAP/Clicks Overview/Blocked Clicks**
```
_sourceCategory={{Logsdatasource}}   ("CLICK_PERMITTED" or "CLICK_BLOCKED")
| json "id","type","threatUrl","classification","clickIP","senderIP","sender","recipient","threatStatus" as id,type,threat_url,category,click_ip,sender_ip,sender,recipient,threat_status nodrop
```

**Proofpoint TAP/Clicks Overview/Clicks from High Risk Countries**
```
_sourceCategory={{Logsdatasource}}   ("CLICK_PERMITTED" or "CLICK_BLOCKED")
| json "id","type","threatUrl","classification","clickIP","senderIP","sender","recipient","threatStatus" as id,type,threat_url,category,click_ip,sender_ip,sender,recipient,threat_status nodrop

| where type matches "{{click_type}}"
| where category matches "{{threat_category}}"
| where threat_status matches "{{threat_status}}"

| where isValidIPv4(click_ip) or isValidIPv6(click_ip)
| where !isNull(click_ip)
| if(isValidIPv4(click_ip), if(!isPrivateIP(click_ip),true,false),true) as is_public
| where is_public
| count_distinct(id) as frequency by click_ip
| lookup latitude, longitude,country_code from geo://location on ip = click_ip
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code
```

**Proofpoint TAP/Clicks Overview/Clicks Trend**
```
_sourceCategory={{Logsdatasource}}   ("CLICK_PERMITTED" or "CLICK_BLOCKED")
| json "id","type","threatUrl","classification","clickIP","senderIP","sender","recipient","threatStatus" as id,type,threat_url,category,click_ip,sender_ip,sender,recipient,threat_status nodrop
```

**Proofpoint TAP/Clicks Overview/Geo Locations of Clicks**
```
_sourceCategory={{Logsdatasource}}   ("CLICK_PERMITTED" or "CLICK_BLOCKED")
| json "id","type","threatUrl","classification","clickIP","senderIP","sender","recipient","threatStatus" as id,type,threat_url,category,click_ip,sender_ip,sender,recipient,threat_status nodrop
```

**Proofpoint TAP/Clicks Overview/Geo Locations of Senders**
```
_sourceCategory={{Logsdatasource}}   ("CLICK_PERMITTED" or "CLICK_BLOCKED")
| json "id","type","threatUrl","classification","clickIP","senderIP","sender","recipient","threatStatus" as id,type,threat_url,category,click_ip,sender_ip,sender,recipient,threat_status nodrop
```

**Proofpoint TAP/Clicks Overview/Number of Clicks**
```
_sourceCategory={{Logsdatasource}}   ("CLICK_PERMITTED" or "CLICK_BLOCKED")
| json "id","type","threatUrl","classification","clickIP","senderIP","sender","recipient","threatStatus" as id,type,threat_url,category,click_ip,sender_ip,sender,recipient,threat_status nodrop
```

**Proofpoint TAP/Clicks Overview/Recent Clicks**
```
_sourceCategory={{Logsdatasource}}   ("CLICK_PERMITTED" or "CLICK_BLOCKED")
| json "id","type","threatUrl","classification","clickIP","senderIP","sender","recipient","threatStatus","url" as id,type,threat_url,category,click_ip,sender_ip,sender,recipient,threat_status,url nodrop
```

**Proofpoint TAP/Clicks Overview/Senders from High Risk Countries**
```
_sourceCategory={{Logsdatasource}}   ("CLICK_PERMITTED" or "CLICK_BLOCKED")
| json "id","type","threatUrl","classification","clickIP","senderIP","sender","recipient","threatStatus" as id,type,threat_url,category,click_ip,sender_ip,sender,recipient,threat_status nodrop

| where type matches "{{click_type}}"
| where category matches "{{threat_category}}"
| where threat_status matches "{{threat_status}}"

| where isValidIPv4(sender_ip) or isValidIPv6(sender_ip)
| where !isNull(sender_ip)
| if(isValidIPv4(sender_ip), if(!isPrivateIP(sender_ip),true,false),true) as is_public
| where is_public
| count_distinct(id) as frequency by sender_ip
| lookup latitude, longitude,country_code from geo://location on ip = sender_ip
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code
```

**Proofpoint TAP/Clicks Overview/Threats by Category**
```
_sourceCategory={{Logsdatasource}}   ("CLICK_PERMITTED" or "CLICK_BLOCKED")
| json "id","type","threatUrl","classification","clickIP","senderIP","sender","recipient","threatStatus" as id,type,threat_url,category,click_ip,sender_ip,sender,recipient,threat_status nodrop
```

**Proofpoint TAP/Clicks Overview/Threats by Status**
```
_sourceCategory={{Logsdatasource}}   ("CLICK_PERMITTED" or "CLICK_BLOCKED")
| json "id","type","threatUrl","classification","clickIP","senderIP","sender","recipient","threatStatus" as id,type,threat_url,category,click_ip,sender_ip,sender,recipient,threat_status nodrop
```

**Proofpoint TAP/Clicks Overview/Top 10 Clicked URLs**
```
_sourceCategory={{Logsdatasource}}   ("CLICK_PERMITTED" or "CLICK_BLOCKED")
| json "id","type","threatUrl","classification","clickIP","senderIP","sender","recipient","threatStatus","url" as id,type,threat_url,category,click_ip,sender_ip,sender,recipient,threat_status,url nodrop
```

**Proofpoint TAP/Clicks Overview/Top 10 Receivers**
```
_sourceCategory={{Logsdatasource}}   ("CLICK_PERMITTED" or "CLICK_BLOCKED")
| json "id","type","threatUrl","classification","clickIP","senderIP","sender","recipient","threatStatus" as id,type,threat_url,category,click_ip,sender_ip,sender,recipient,threat_status nodrop
```

**Proofpoint TAP/Clicks Overview/Top 10 Senders**
```
_sourceCategory={{Logsdatasource}}   ("CLICK_PERMITTED" or "CLICK_BLOCKED")
| json "id","type","threatUrl","classification","clickIP","senderIP","sender","recipient","threatStatus" as id,type,threat_url,category,click_ip,sender_ip,sender,recipient,threat_status nodrop
```

**Proofpoint TAP/Messages Overview/Blocked Messages**
```
_sourceCategory={{Logsdatasource}}   ("MESSAGE_BLOCKED" OR "MESSAGE_DELIVERED")
| json "id","type","cluster","sender","recipient","messageParts[*].disposition","messageParts[*].sandboxStatus","messageSize","modulesRun","policyRoutes","senderIP","threatsInfoMap[*].classification","threatsInfoMap[*].threatType","threatsInfoMap[*].threatStatus","impostorScore","malwareScore","phishScore","spamScore","quarantineFolder","quarantineRule","subject" as id,type,cluster,sender,recipient,dispositions,sandboxStatuses,messageSize,modules_run,policy_route,sender_ip,threat_categories,threat_types,threat_status,impostor_score,malware_score,phish_score,spam_score,quarantine_folder,quarantine_rule,subject nodrop

| extract field=threat_status "\"?(?<status>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_types "\"?(?<threat_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_categories "\"?(?<threat_category>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=modules_run "\"?(?<module>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=policy_route "\"?(?<policy>[\w\s\-&.,]*)\"?[,\n\]]" multi
```

**Proofpoint TAP/Messages Overview/Geo Locations of Senders**
```
_sourceCategory={{Logsdatasource}}   ("MESSAGE_BLOCKED" OR "MESSAGE_DELIVERED")
| json "id","type","cluster","sender","recipient","messageParts[*].disposition","messageParts[*].sandboxStatus","messageSize","modulesRun","policyRoutes","senderIP","threatsInfoMap[*].classification","threatsInfoMap[*].threatType","threatsInfoMap[*].threatStatus","impostorScore","malwareScore","phishScore","spamScore","quarantineFolder","quarantineRule","subject" as id,type,cluster,sender,recipient,dispositions,sandboxStatuses,messageSize,modules_run,policy_route,sender_ip,threat_categories,threat_types,threat_status,impostor_score,malware_score,phish_score,spam_score,quarantine_folder,quarantine_rule,subject nodrop

| extract field=threat_status "\"?(?<status>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_types "\"?(?<threat_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_categories "\"?(?<threat_category>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=modules_run "\"?(?<module>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=policy_route "\"?(?<policy>[\w\s\-&.,]*)\"?[,\n\]]" multi
```

**Proofpoint TAP/Messages Overview/Messages by Disposition Status**
```
_sourceCategory={{Logsdatasource}}   ("MESSAGE_BLOCKED" OR "MESSAGE_DELIVERED")
| json "id","type","cluster","sender","recipient","messageParts[*].disposition","messageParts[*].sandboxStatus","messageSize","modulesRun","policyRoutes","senderIP","threatsInfoMap[*].classification","threatsInfoMap[*].threatType","threatsInfoMap[*].threatStatus","impostorScore","malwareScore","phishScore","spamScore","quarantineFolder","quarantineRule","subject" as id,type,cluster,sender,recipient,dispositions,sandboxStatuses,messageSize,modules_run,policy_route,sender_ip,threat_categories,threat_types,threat_status,impostor_score,malware_score,phish_score,spam_score,quarantine_folder,quarantine_rule,subject nodrop

| extract field=threat_status "\"?(?<status>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_types "\"?(?<threat_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_categories "\"?(?<threat_category>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=modules_run "\"?(?<module>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=policy_route "\"?(?<policy>[\w\s\-&.,]*)\"?[,\n\]]" multi

| where type matches "{{message_type}}"
| where threat_category matches "{{threat_category}}"
| where threat_type matches "{{threat_type}}"
| where status matches "{{threat_status}}"
| where module matches "{{module}}"
| where policy matches "{{policy_route}}"

| extract field=dispositions "\"?(?<disposition>[\w\s\-&.,]*)\"?[,\n\]]" multi
```

**Proofpoint TAP/Messages Overview/Messages by Sandbox Status**
```
_sourceCategory={{Logsdatasource}}   ("MESSAGE_BLOCKED" OR "MESSAGE_DELIVERED")
| json "id","type","cluster","sender","recipient","messageParts[*].disposition","messageParts[*].sandboxStatus","messageSize","modulesRun","policyRoutes","senderIP","threatsInfoMap[*].classification","threatsInfoMap[*].threatType","threatsInfoMap[*].threatStatus","impostorScore","malwareScore","phishScore","spamScore","quarantineFolder","quarantineRule","subject" as id,type,cluster,sender,recipient,dispositions,sandboxStatuses,messageSize,modules_run,policy_route,sender_ip,threat_categories,threat_types,threat_status,impostor_score,malware_score,phish_score,spam_score,quarantine_folder,quarantine_rule,subject nodrop

| extract field=threat_status "\"?(?<status>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_types "\"?(?<threat_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_categories "\"?(?<threat_category>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=modules_run "\"?(?<module>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=policy_route "\"?(?<policy>[\w\s\-&.,]*)\"?[,\n\]]" multi

| where type matches "{{message_type}}"
| where threat_category matches "{{threat_category}}"
| where threat_type matches "{{threat_type}}"
| where status matches "{{threat_status}}"
| where module matches "{{module}}"
| where policy matches "{{policy_route}}"

| extract field=sandboxStatuses "\"?(?<sandboxStatus>[\w\s\-&.,]*?)\"?[,\n\]]" multi
```

**Proofpoint TAP/Messages Overview/Messages from High Risk Countries**
```
_sourceCategory={{Logsdatasource}}   ("MESSAGE_BLOCKED" OR "MESSAGE_DELIVERED")
| json "id","type","cluster","sender","recipient","messageParts[*].disposition","messageParts[*].sandboxStatus","messageSize","modulesRun","policyRoutes","senderIP","threatsInfoMap[*].classification","threatsInfoMap[*].threatType","threatsInfoMap[*].threatStatus","impostorScore","malwareScore","phishScore","spamScore","quarantineFolder","quarantineRule","subject" as id,type,cluster,sender,recipient,dispositions,sandboxStatuses,messageSize,modules_run,policy_route,sender_ip,threat_categories,threat_types,threat_status,impostor_score,malware_score,phish_score,spam_score,quarantine_folder,quarantine_rule,subject nodrop

| extract field=threat_status "\"?(?<status>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_types "\"?(?<threat_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_categories "\"?(?<threat_category>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=modules_run "\"?(?<module>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=policy_route "\"?(?<policy>[\w\s\-&.,]*)\"?[,\n\]]" multi

| where type matches "{{message_type}}"
| where threat_category matches "{{threat_category}}"
| where threat_type matches "{{threat_type}}"
| where status matches "{{threat_status}}"
| where module matches "{{module}}"
| where policy matches "{{policy_route}}"

| where isValidIPv4(sender_ip) or isValidIPv6(sender_ip)
| where !isNull(sender_ip)
| if(isValidIPv4(sender_ip), if(!isPrivateIP(sender_ip),true,false),true) as is_public
| where is_public
| count_distinct(id) as frequency by sender_ip
| lookup latitude, longitude, country_code from geo://location on ip = sender_ip
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code
```

**Proofpoint TAP/Messages Overview/Messages Trend**
```
_sourceCategory={{Logsdatasource}}   ("MESSAGE_BLOCKED" OR "MESSAGE_DELIVERED")
| json "id","type","cluster","sender","recipient","messageParts[*].disposition","messageParts[*].sandboxStatus","messageSize","modulesRun","policyRoutes","senderIP","threatsInfoMap[*].classification","threatsInfoMap[*].threatType","threatsInfoMap[*].threatStatus","impostorScore","malwareScore","phishScore","spamScore","quarantineFolder","quarantineRule","subject" as id,type,cluster,sender,recipient,dispositions,sandboxStatuses,messageSize,modules_run,policy_route,sender_ip,threat_categories,threat_types,threat_status,impostor_score,malware_score,phish_score,spam_score,quarantine_folder,quarantine_rule,subject nodrop

| extract field=threat_status "\"?(?<status>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_types "\"?(?<threat_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_categories "\"?(?<threat_category>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=modules_run "\"?(?<module>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=policy_route "\"?(?<policy>[\w\s\-&.,]*)\"?[,\n\]]" multi
```

**Proofpoint TAP/Messages Overview/Number of Messages**
```
_sourceCategory={{Logsdatasource}}   ("MESSAGE_BLOCKED" OR "MESSAGE_DELIVERED")
| json "id","type","cluster","sender","recipient","messageParts[*].disposition","messageParts[*].sandboxStatus","messageSize","modulesRun","policyRoutes","senderIP","threatsInfoMap[*].classification","threatsInfoMap[*].threatType","threatsInfoMap[*].threatStatus","impostorScore","malwareScore","phishScore","spamScore","quarantineFolder","quarantineRule","subject" as id,type,cluster,sender,recipient,dispositions,sandboxStatuses,messageSize,modules_run,policy_route,sender_ip,threat_categories,threat_types,threat_status,impostor_score,malware_score,phish_score,spam_score,quarantine_folder,quarantine_rule,subject nodrop

| extract field=threat_status "\"?(?<status>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_types "\"?(?<threat_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_categories "\"?(?<threat_category>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=modules_run "\"?(?<module>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=policy_route "\"?(?<policy>[\w\s\-&.,]*)\"?[,\n\]]" multi
```

**Proofpoint TAP/Messages Overview/Recent Messages**
```
_sourceCategory={{Logsdatasource}}   ("MESSAGE_BLOCKED" OR "MESSAGE_DELIVERED")
| json "id","type","cluster","sender","recipient","messageParts[*].disposition","messageParts[*].sandboxStatus","messageSize","modulesRun","policyRoutes","senderIP","threatsInfoMap[*].classification","threatsInfoMap[*].threatType","threatsInfoMap[*].threatStatus","impostorScore","malwareScore","phishScore","spamScore","quarantineFolder","quarantineRule","subject" as id,type,cluster,sender,recipient,dispositions,sandboxStatuses,messageSize,modules_run,policy_route,sender_ip,threat_categories,threat_types,threat_status,impostor_score,malware_score,phish_score,spam_score,quarantine_folder,quarantine_rule,subject nodrop

| extract field=threat_status "\"?(?<status>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_types "\"?(?<threat_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_categories "\"?(?<threat_category>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=modules_run "\"?(?<module>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=policy_route "\"?(?<policy>[\w\s\-&.,]*)\"?[,\n\]]" multi
```

**Proofpoint TAP/Messages Overview/Threats by Category**
```
_sourceCategory={{Logsdatasource}}   ("MESSAGE_BLOCKED" OR "MESSAGE_DELIVERED")
| json "id","type","cluster","sender","recipient","messageParts[*].disposition","messageParts[*].sandboxStatus","messageSize","modulesRun","policyRoutes","senderIP","threatsInfoMap[*].classification","threatsInfoMap[*].threatType","threatsInfoMap[*].threatStatus","impostorScore","malwareScore","phishScore","spamScore","quarantineFolder","quarantineRule","subject" as id,type,cluster,sender,recipient,dispositions,sandboxStatuses,messageSize,modules_run,policy_route,sender_ip,threat_categories,threat_types,threat_status,impostor_score,malware_score,phish_score,spam_score,quarantine_folder,quarantine_rule,subject nodrop

| extract field=threat_status "\"?(?<status>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_types "\"?(?<threat_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_categories "\"?(?<threat_category>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=modules_run "\"?(?<module>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=policy_route "\"?(?<policy>[\w\s\-&.,]*)\"?[,\n\]]" multi
```

**Proofpoint TAP/Messages Overview/Threats by Status**
```
_sourceCategory={{Logsdatasource}}   ("MESSAGE_BLOCKED" OR "MESSAGE_DELIVERED")
| json "id","type","cluster","sender","recipient","messageParts[*].disposition","messageParts[*].sandboxStatus","messageSize","modulesRun","policyRoutes","senderIP","threatsInfoMap[*].classification","threatsInfoMap[*].threatType","threatsInfoMap[*].threatStatus","impostorScore","malwareScore","phishScore","spamScore","quarantineFolder","quarantineRule","subject" as id,type,cluster,sender,recipient,dispositions,sandboxStatuses,messageSize,modules_run,policy_route,sender_ip,threat_categories,threat_types,threat_status,impostor_score,malware_score,phish_score,spam_score,quarantine_folder,quarantine_rule,subject nodrop

| extract field=threat_status "\"?(?<status>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_types "\"?(?<threat_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_categories "\"?(?<threat_category>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=modules_run "\"?(?<module>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=policy_route "\"?(?<policy>[\w\s\-&.,]*)\"?[,\n\]]" multi
```

**Proofpoint TAP/Messages Overview/Threats by Type**
```
_sourceCategory={{Logsdatasource}}   ("MESSAGE_BLOCKED" OR "MESSAGE_DELIVERED")
| json "id","type","cluster","sender","recipient","messageParts[*].disposition","messageParts[*].sandboxStatus","messageSize","modulesRun","policyRoutes","senderIP","threatsInfoMap[*].classification","threatsInfoMap[*].threatType","threatsInfoMap[*].threatStatus","impostorScore","malwareScore","phishScore","spamScore","quarantineFolder","quarantineRule","subject" as id,type,cluster,sender,recipient,dispositions,sandboxStatuses,messageSize,modules_run,policy_route,sender_ip,threat_categories,threat_types,threat_status,impostor_score,malware_score,phish_score,spam_score,quarantine_folder,quarantine_rule,subject nodrop

| extract field=threat_status "\"?(?<status>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_types "\"?(?<threat_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_categories "\"?(?<threat_category>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=modules_run "\"?(?<module>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=policy_route "\"?(?<policy>[\w\s\-&.,]*)\"?[,\n\]]" multi
```

**Proofpoint TAP/Messages Overview/Top 10 Clusters**
```
_sourceCategory={{Logsdatasource}}   ("MESSAGE_BLOCKED" OR "MESSAGE_DELIVERED")
| json "id","type","cluster","sender","recipient","messageParts[*].disposition","messageParts[*].sandboxStatus","messageSize","modulesRun","policyRoutes","senderIP","threatsInfoMap[*].classification","threatsInfoMap[*].threatType","threatsInfoMap[*].threatStatus","impostorScore","malwareScore","phishScore","spamScore","quarantineFolder","quarantineRule","subject" as id,type,cluster,sender,recipient,dispositions,sandboxStatuses,messageSize,modules_run,policy_route,sender_ip,threat_categories,threat_types,threat_status,impostor_score,malware_score,phish_score,spam_score,quarantine_folder,quarantine_rule,subject nodrop

| extract field=threat_status "\"?(?<status>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_types "\"?(?<threat_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_categories "\"?(?<threat_category>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=modules_run "\"?(?<module>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=policy_route "\"?(?<policy>[\w\s\-&.,]*)\"?[,\n\]]" multi
```

**Proofpoint TAP/Messages Overview/Top 10 Policy Routes Matched**
```
_sourceCategory={{Logsdatasource}}   ("MESSAGE_BLOCKED" OR "MESSAGE_DELIVERED")
| json "id","type","cluster","sender","recipient","messageParts[*].disposition","messageParts[*].sandboxStatus","messageSize","modulesRun","policyRoutes","senderIP","threatsInfoMap[*].classification","threatsInfoMap[*].threatType","threatsInfoMap[*].threatStatus","impostorScore","malwareScore","phishScore","spamScore","quarantineFolder","quarantineRule","subject" as id,type,cluster,sender,recipient,dispositions,sandboxStatuses,messageSize,modules_run,policy_route,sender_ip,threat_categories,threat_types,threat_status,impostor_score,malware_score,phish_score,spam_score,quarantine_folder,quarantine_rule,subject nodrop

| extract field=threat_status "\"?(?<status>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_types "\"?(?<threat_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_categories "\"?(?<threat_category>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=modules_run "\"?(?<module>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=policy_route "\"?(?<policy>[\w\s\-&.,]*)\"?[,\n\]]" multi
```

**Proofpoint TAP/Messages Overview/Top 10 PPS Modules**
```
_sourceCategory={{Logsdatasource}}   ("MESSAGE_BLOCKED" OR "MESSAGE_DELIVERED")
| json "id","type","cluster","sender","recipient","messageParts[*].disposition","messageParts[*].sandboxStatus","messageSize","modulesRun","policyRoutes","senderIP","threatsInfoMap[*].classification","threatsInfoMap[*].threatType","threatsInfoMap[*].threatStatus","impostorScore","malwareScore","phishScore","spamScore","quarantineFolder","quarantineRule","subject" as id,type,cluster,sender,recipient,dispositions,sandboxStatuses,messageSize,modules_run,policy_route,sender_ip,threat_categories,threat_types,threat_status,impostor_score,malware_score,phish_score,spam_score,quarantine_folder,quarantine_rule,subject nodrop

| extract field=threat_status "\"?(?<status>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_types "\"?(?<threat_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_categories "\"?(?<threat_category>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=modules_run "\"?(?<module>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=policy_route "\"?(?<policy>[\w\s\-&.,]*)\"?[,\n\]]" multi
```

**Proofpoint TAP/Messages Overview/Top 10 Receivers**
```
_sourceCategory={{Logsdatasource}}   ("MESSAGE_BLOCKED" OR "MESSAGE_DELIVERED")
| json "id","type","cluster","sender","recipient","messageParts[*].disposition","messageParts[*].sandboxStatus","messageSize","modulesRun","policyRoutes","senderIP","threatsInfoMap[*].classification","threatsInfoMap[*].threatType","threatsInfoMap[*].threatStatus","impostorScore","malwareScore","phishScore","spamScore","quarantineFolder","quarantineRule","subject" as id,type,cluster,sender,recipient,dispositions,sandboxStatuses,messageSize,modules_run,policy_route,sender_ip,threat_categories,threat_types,threat_status,impostor_score,malware_score,phish_score,spam_score,quarantine_folder,quarantine_rule,subject nodrop

| extract field=threat_status "\"?(?<status>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_types "\"?(?<threat_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_categories "\"?(?<threat_category>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=modules_run "\"?(?<module>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=policy_route "\"?(?<policy>[\w\s\-&.,]*)\"?[,\n\]]" multi
```

**Proofpoint TAP/Messages Overview/Top 10 Senders**
```
_sourceCategory={{Logsdatasource}}   ("MESSAGE_BLOCKED" OR "MESSAGE_DELIVERED")
| json "id","type","cluster","sender","recipient","messageParts[*].disposition","messageParts[*].sandboxStatus","messageSize","modulesRun","policyRoutes","senderIP","threatsInfoMap[*].classification","threatsInfoMap[*].threatType","threatsInfoMap[*].threatStatus","impostorScore","malwareScore","phishScore","spamScore","quarantineFolder","quarantineRule","subject" as id,type,cluster,sender,recipient,dispositions,sandboxStatuses,messageSize,modules_run,policy_route,sender_ip,threat_categories,threat_types,threat_status,impostor_score,malware_score,phish_score,spam_score,quarantine_folder,quarantine_rule,subject nodrop

| extract field=threat_status "\"?(?<status>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_types "\"?(?<threat_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_categories "\"?(?<threat_category>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=modules_run "\"?(?<module>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=policy_route "\"?(?<policy>[\w\s\-&.,]*)\"?[,\n\]]" multi
```


