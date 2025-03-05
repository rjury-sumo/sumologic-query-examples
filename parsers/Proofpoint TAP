# Parsers For Proofpoint TAP

## Parser:
```
| json "id","type","cluster","sender","recipient","messageParts[*].disposition","messageParts[*].sandboxStatus","messageSize","modulesRun","policyRoutes","senderIP","threatsInfoMap[*].classification","threatsInfoMap[*].threatType","threatsInfoMap[*].threatStatus","impostorScore","malwareScore","phishScore","spamScore","quarantineFolder","quarantineRule","subject" as id,type,cluster,sender,recipient,dispositions,sandboxStatuses,messageSize,modules_run,policy_route,sender_ip,threat_categories,threat_types,threat_status,impostor_score,malware_score,phish_score,spam_score,quarantine_folder,quarantine_rule,subject nodrop
| extract field=threat_status "\"?(?<status>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_types "\"?(?<threat_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_categories "\"?(?<threat_category>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=modules_run "\"?(?<module>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=policy_route "\"?(?<policy>[\w\s\-&.,]*)\"?[,\n\]]" multi
```
### Use Cases:
Blocked Clicks, Blocked Messages, Clicks from High Risk Countries, Clicks Trend, Geo Locations of Clicks, Geo Locations of Senders, Messages by Disposition Status, Messages by Sandbox Status, Messages from High Risk Countries, Messages Trend, Number of Clicks, Number of Messages, Recent Clicks, Recent Messages, Senders from High Risk Countries, Threats by Category, Threats by Status, Threats by Type, Top 10 Clicked URLs, Top 10 Clusters, Top 10 Policy Routes Matched, Top 10 PPS Modules, Top 10 Receivers, Top 10 Senders



## Parser:
```
| json "id","type","cluster","sender","recipient","messageParts[*].disposition","messageParts[*].sandboxStatus","messageSize","modulesRun","policyRoutes","senderIP","threatsInfoMap[*].classification","threatsInfoMap[*].threatType","threatsInfoMap[*].threatStatus","impostorScore","malwareScore","phishScore","spamScore","quarantineFolder","quarantineRule","subject" as id,type,cluster,sender,recipient,dispositions,sandboxStatuses,messageSize,modules_run,policy_route,sender_ip,threat_categories,threat_types,threat_status,impostor_score,malware_score,phish_score,spam_score,quarantine_folder,quarantine_rule,subject nodrop
| extract field=threat_status "\"?(?<status>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_types "\"?(?<threat_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_categories "\"?(?<threat_category>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=modules_run "\"?(?<module>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=policy_route "\"?(?<policy>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=dispositions "\"?(?<disposition>[\w\s\-&.,]*)\"?[,\n\]]" multi
```
### Use Cases:
Blocked Clicks, Clicks from High Risk Countries, Clicks Trend, Geo Locations of Clicks, Geo Locations of Senders, Messages by Disposition Status, Number of Clicks, Recent Clicks, Senders from High Risk Countries, Threats by Category, Threats by Status, Top 10 Clicked URLs, Top 10 Receivers, Top 10 Senders



## Parser:
```
| json "id","type","cluster","sender","recipient","messageParts[*].disposition","messageParts[*].sandboxStatus","messageSize","modulesRun","policyRoutes","senderIP","threatsInfoMap[*].classification","threatsInfoMap[*].threatType","threatsInfoMap[*].threatStatus","impostorScore","malwareScore","phishScore","spamScore","quarantineFolder","quarantineRule","subject" as id,type,cluster,sender,recipient,dispositions,sandboxStatuses,messageSize,modules_run,policy_route,sender_ip,threat_categories,threat_types,threat_status,impostor_score,malware_score,phish_score,spam_score,quarantine_folder,quarantine_rule,subject nodrop
| extract field=threat_status "\"?(?<status>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_types "\"?(?<threat_type>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=threat_categories "\"?(?<threat_category>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=modules_run "\"?(?<module>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=policy_route "\"?(?<policy>[\w\s\-&.,]*)\"?[,\n\]]" multi
| extract field=sandboxStatuses "\"?(?<sandboxStatus>[\w\s\-&.,]*?)\"?[,\n\]]" multi
```
### Use Cases:
Blocked Clicks, Clicks from High Risk Countries, Clicks Trend, Geo Locations of Clicks, Geo Locations of Senders, Messages by Disposition Status, Messages by Sandbox Status, Number of Clicks, Recent Clicks, Senders from High Risk Countries, Threats by Category, Threats by Status, Top 10 Clicked URLs, Top 10 Receivers, Top 10 Senders



## Parser:
```
| json "id","type","threatUrl","classification","clickIP","senderIP","sender","recipient","threatStatus" as id,type,threat_url,category,click_ip,sender_ip,sender,recipient,threat_status nodrop
```
### Use Cases:
Blocked Clicks, Clicks from High Risk Countries, Clicks Trend, Geo Locations of Clicks, Geo Locations of Senders, Number of Clicks, Recent Clicks, Senders from High Risk Countries, Threats by Category, Threats by Status, Top 10 Clicked URLs, Top 10 Receivers, Top 10 Senders



## Parser:
```
| json "id","type","threatUrl","classification","clickIP","senderIP","sender","recipient","threatStatus","url" as id,type,threat_url,category,click_ip,sender_ip,sender,recipient,threat_status,url nodrop
```
### Use Cases:
Clicks from High Risk Countries, Geo Locations of Clicks, Geo Locations of Senders, Recent Clicks, Senders from High Risk Countries, Threats by Category, Threats by Status, Top 10 Clicked URLs, Top 10 Receivers, Top 10 Senders


