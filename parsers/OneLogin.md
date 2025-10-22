# Parsers For OneLogin

**OneLogin/Adaptive MFA/Authentication Events**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name", "event.notes", "event.risk_score", "event.risk_reasons" as event_id, app_name, src_ip, user_name, actor_user_name, notes, risk_score, risk_reasons nodrop 
| where event_id in ("5","6", "7", "8", "9", "22", "24", "105", "122")
| count by event_id
| lookup event_name from https://s3.amazonaws.com/sumologic-app-data/onelogin_events.csv on event_id=event_id
```

**OneLogin/Adaptive MFA/Authentication Events - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name", "event.notes", "event.risk_score", "event.risk_reasons" as event_id, app_name, src_ip, user_name, actor_user_name, notes, risk_score, risk_reasons nodrop 
| where event_id in ("5","6", "7", "8", "9", "22", "24", "105", "122")
| lookup event_name from https://s3.amazonaws.com/sumologic-app-data/onelogin_events.csv on event_id=event_id
```

**OneLogin/Adaptive MFA/Global Risk Reasons**
```
_sourceCategory={{Logsdatasource}}  
| json "event.risk_reasons" as risk_reasons nodrop 
| where !isEmpty(risk_reasons) 
| parse regex field=risk_reasons "(?<risk>.+) \([0-9]+%\)" multi
```

**OneLogin/Adaptive MFA/Low Trust by Location**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "event.event_type_id" as event nodrop | where event = 5
| json field=_raw "event.risk_score" as risk nodrop | where risk > 0
| json field=_raw "event.risk_reasons" as risk_reasons nodrop 
| json field=_raw "event.user_name" as username nodrop 
| json field=_raw "event.ipaddr" as src_ip nodrop 
```

**OneLogin/Adaptive MFA/MFA Request Failure by Location**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "event.event_type_id" as event_id nodrop 
| json field=_raw "event.risk_score" as risk nodrop 
| json field=_raw "event.risk_reasons" as risk_reasons nodrop 
| json field=_raw "event.user_name" as username nodrop 
| json field=_raw "event.ipaddr" as src_ip nodrop 
| json field=_raw "event.notes" as notes nodrop 
```

**OneLogin/Adaptive MFA/Risk Scores (None, Low, Medium, High)**
```
_sourceCategory={{Logsdatasource}}  
| json "event.risk_score", "event.risk_reasons" as risk_score, risk_reasons nodrop
```

**OneLogin/Adaptive MFA/Users prompted for MFA by Country**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name", "event.notes" as event_id, app_name, src_ip, user_name, actor_user_name, notes nodrop 
```

**OneLogin/Adaptive MFA/Users prompted for MFA by Location**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "event.event_type_id" as event_id nodrop 
| json field=_raw "event.risk_score" as risk nodrop 
| json field=_raw "event.risk_reasons" as risk_reasons nodrop 
| json field=_raw "event.user_name" as username nodrop 
| json field=_raw "event.ipaddr" as src_ip nodrop 
| json field=_raw "event.notes" as notes nodrop 
```

**OneLogin/Adaptive MFA/Users prompted for MFA during Login**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "event.event_type_id" as event nodrop | where event = 5
| json field=_raw "event.risk_score" as risk nodrop | where risk > 3
| json field=_raw "event.risk_reasons" as risk_reasons nodrop 
| json field=_raw "event.user_name" as username nodrop 
| json field=_raw "event.ipaddr" as IP nodrop 
```

**OneLogin/Adaptive MFA/Users whose MFA was suppressed by Location**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "event.event_type_id" as event nodrop 
| json field=_raw "event.risk_score" as risk nodrop 
| json field=_raw "event.risk_reasons" as risk_reasons nodrop 
| json field=_raw "event.notes" as notes nodrop | where notes matches "*Authentication method: password + OTP Suppressed.*"
| json field=_raw "event.user_name" as username nodrop 
| json field=_raw "event.ipaddr" as src_ip nodrop 
```

**OneLogin/Adaptive MFA/Users whose MFA was suppressed during Login**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "event.event_type_id" as event nodrop | where event = 5
| json field=_raw "event.risk_score" as risk nodrop 
| json field=_raw "event.risk_reasons" as risk_reasons nodrop 
| json field=_raw "event.user_name" as username nodrop 
| json field=_raw "event.notes" as notes nodrop 
| json field=_raw "event.ipaddr" as IP nodrop 
```

**OneLogin/Adaptive MFA/Users with High Risk Logons (Risk > 51)**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name", "event.notes", "event.risk_score", "event.risk_reasons" as event_id, app_name, src_ip, user_name, actor_user_name, notes, risk_score, risk_reasons nodrop 
```

**OneLogin/App Monitoring/Event Distributions by App**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
```

**OneLogin/App Monitoring/Event Distributions by EventIDs**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop
|where if ("{{user_name}}" = "*", true, user_name matches "{{user_name}}") AND if ("{{event_id}}" = "*", true, event_id matches "{{event_id}}") AND if ("{{src_ip}}" = "*", true, src_ip matches "{{src_ip}}") AND if ("{{actor_user_name}}" = "*", true, actor_user_name matches "{{actor_user_name}}") AND if ("{{app_name}}" = "*", true, app_name matches "{{app_name}}")
| count by event_id
| lookup event_name from https://s3.amazonaws.com/sumologic-app-data/onelogin_events.csv on event_id=event_id
```

**OneLogin/App Monitoring/Failed Actions**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
| json "event.error_description" as error_description nodrop 
```

**OneLogin/App Monitoring/Logins by App**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
```

**OneLogin/App Monitoring/Top 10 Provisioning Errors and Warnings**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
| json "event.error_description" as error_description nodrop
```

**OneLogin/Overview/Event Outlier Over Time**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
```

**OneLogin/Overview/Events by App**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
| lookup latitude, longitude, country_code,country_name from geo://location on ip = src_ip 
| lookup event_name from https://s3.amazonaws.com/sumologic-app-data/onelogin_events.csv on event_id=event_id
```

**OneLogin/Overview/Failed Login Outlier**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
```

**OneLogin/Overview/Logins by Country**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
```

**OneLogin/Overview/Successful Login Outlier**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
```

**OneLogin/Overview/Top 10 Users by Events**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
```

**OneLogin/Overview/Visitor Locations**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
| lookup latitude, longitude, country_code,country_name from geo://location on ip = src_ip 
| lookup event_name from https://s3.amazonaws.com/sumologic-app-data/onelogin_events.csv on event_id=event_id
```

**OneLogin/Security/Assumed Users**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name","event.notes" as event_id, app_name, src_ip, user_name, actor_user_name, note nodrop 
| json "event.event_timestamp" as event_timestamp nodrop 
```

**OneLogin/Security/Failed Logins**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
```

**OneLogin/Security/Logins by Country**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
```

**OneLogin/Security/Password Changes**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
```

**OneLogin/Security/Successful Logins**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
```

**OneLogin/Security/User Activity**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
```

**OneLogin/Security/User Modifications**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
| json "event.event_timestamp","event.notes","event.error_description" as event_timestamp, note, error_description nodrop 
```

**OneLogin/Security/Users Created in Apps**
```
_sourceCategory={{Logsdatasource}}  
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
```


