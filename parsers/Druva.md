# Parsers For Druva

| use_case | parser |
|--- | --- |
| Druva/Alerts Overview/Unusual Data Activity | _sourceCategory={{Logsdatasource}}  <br>\|json"eventID","eventType","eventState","eventDetails","initiator","inSyncUserID","inSyncUserName","inSyncUserEmail","inSyncDataSourceID","clientOS","ip","timestamp","severity" as event_id,event_type,event_state,event_details,initiator,user_id,user_name,user_email,device_id,client_os,ip,time_stamp,severity nodrop<br>\| where severity matches "{{severity}}"<br>\| where client_os matches "{{client_os}}"<br>\| where event_state matches "{{event_state}}"<br>\| if(isNull(user_id),"-",user_id) as user_id<br>\| if(isNull(user_email),"-",user_email) as user_email<br>\| if(isNull(client_os),"-",client_os) as client_os<br>\| if(isNull(user_name),"-",user_name) as user_name<br>\| if(isNull(device_id),"-",device_id) as device_id<br>\| if(isNull(initiator),"-",initiator) as initiator<br>\| if(isEmpty(ip),"-",ip) as ip<br>\| where event_details matches "*Alert:Unusual Data Activity*"<br>\| extract field=event_details "Anomaly\sdetected:(?<activity_details>[\S\s]+?),\sAffected" |

