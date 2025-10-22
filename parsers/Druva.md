# Parsers For Druva

**Druva/Alerts Overview/Unusual Data Activity**
```
_sourceCategory={{Logsdatasource}}  
|json"eventID","eventType","eventState","eventDetails","initiator","inSyncUserID","inSyncUserName","inSyncUserEmail","inSyncDataSourceID","clientOS","ip","timestamp","severity" as event_id,event_type,event_state,event_details,initiator,user_id,user_name,user_email,device_id,client_os,ip,time_stamp,severity nodrop
| where severity matches "{{severity}}"
| where client_os matches "{{client_os}}"
| where event_state matches "{{event_state}}"
| if(isNull(user_id),"-",user_id) as user_id
| if(isNull(user_email),"-",user_email) as user_email
| if(isNull(client_os),"-",client_os) as client_os
| if(isNull(user_name),"-",user_name) as user_name
| if(isNull(device_id),"-",device_id) as device_id
| if(isNull(initiator),"-",initiator) as initiator
| if(isEmpty(ip),"-",ip) as ip
| where event_details matches "*Alert:Unusual Data Activity*"
| extract field=event_details "Anomaly\sdetected:(?<activity_details>[\S\s]+?),\sAffected"
```


