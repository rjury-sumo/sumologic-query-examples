# Parsers For Cisco Umbrella

## Parser:
```
| parse "\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\"" as timestamp,policy_identity_label,internal_client_ip,external_client_ip,destination_ip,content_type,action,url,referer,user_agent,status_code,request_size,response_size,response_body_size,sha256,categories,av_detections,PUAs,AMP_disposition,AMP_malware_name,AMP_score,policy_identity_type,blocked_categories,identities,identity_types,request_method,DLP_status,certificate_errors,file_name,ruleset_ID,rule_ID,destination_list_IDs,isolate_action,file_action,warn_status
```
### Use Cases:
Action Trend, Admin Activities by Action, Admin Activities by User, Admin Logs, Blocked Categories, Blocked Identities, Blocked URLs, Data Request Trends by Identity, Data Response Trends by Identity, DNS Actions, DNS Logs, Geo Location of Blocked Clients, Geo Locations of Admin Activities, Geo Locations of Traffic Sources, Identities Associated with Blocked Request, Proxy Logs, Requests by Action, Summary of Setting Changes, Top 10 AV Detections, Top 10 Blocked Identities Count, Top 10 Blocked Sources by Country, Top 10 Content Types, Top 10 Sources and Destinations by Data Request Size, Top 10 Sources and Destinations by Data Response Size, Top 20 Categories, Top 20 Domains Requested, Traffic by AMP Malwares, Traffic Summary, Umbrella Settings



## Parser:
```
| parse "\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\"" as timestamp,identity,identites_all,internal_ip,external_ip,action,query_type,response_code,domain_name,categories,first_identity_type_matched,all_identity_types,blocked_categories
```
### Use Cases:
Action Trend, Admin Activities by Action, Admin Activities by User, Admin Logs, Blocked Categories, Blocked Identities, Blocked URLs, Data Request Trends by Identity, Data Response Trends by Identity, DNS Actions, DNS Logs, Geo Location of Blocked Clients, Geo Locations of Admin Activities, Geo Locations of Traffic Sources, Identities Associated with Blocked Request, Proxy Logs, Requests by Action, Summary of Setting Changes, Top 10 AV Detections, Top 10 Blocked Identities Count, Top 10 Blocked Sources by Country, Top 10 Content Types, Top 10 Sources and Destinations by Data Request Size, Top 10 Sources and Destinations by Data Response Size, Top 20 Categories, Top 20 Domains Requested, Traffic by AMP Malwares, Traffic Summary, Umbrella Settings



## Parser:
```
| parse "\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\",\"*\"" as  id, timestamp, email, user, type, action, ip, before, after
```
### Use Cases:
Action Trend, Admin Activities by Action, Admin Activities by User, Admin Logs, Blocked Categories, Blocked Identities, Blocked URLs, Data Request Trends by Identity, Data Response Trends by Identity, DNS Actions, DNS Logs, Geo Location of Blocked Clients, Geo Locations of Admin Activities, Geo Locations of Traffic Sources, Identities Associated with Blocked Request, Proxy Logs, Requests by Action, Summary of Setting Changes, Top 10 AV Detections, Top 10 Blocked Identities Count, Top 10 Blocked Sources by Country, Top 10 Content Types, Top 10 Sources and Destinations by Data Request Size, Top 10 Sources and Destinations by Data Response Size, Top 20 Categories, Top 20 Domains Requested, Traffic by AMP Malwares, Traffic Summary, Umbrella Settings


