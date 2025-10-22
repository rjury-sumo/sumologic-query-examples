# Parsers For DocuSign

**DocuSign/Alerts/Alerts by Severity Over Time**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
| where object matches "{{object}}" and action matches"{{action}}" and source matches"{{source}}"
| where country matches "{{country}}" or isNull(country)
| where object matches("*Alert*")
| lookup alert,object,ds_action,description,severity,severity_id from https://sumologic-app-data.s3.amazonaws.com/docusign_alert_lookup.csv on action = ds_action
```

**DocuSign/Alerts/Geo Location of Alerts**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
| where object matches "{{object}}" and action matches"{{action}}" and source matches"{{source}}"
| where country matches "{{country}}" or isNull(country)
| where object matches("*Alert*")
| lookup alert,object,ds_action,description,severity,severity_id from https://sumologic-app-data.s3.amazonaws.com/docusign_alert_lookup.csv on action = ds_action
```

**DocuSign/Alerts/High Alerts**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
| where object matches "{{object}}" and action matches"{{action}}" and source matches"{{source}}"
| where country matches "{{country}}" or isNull(country)
| where object matches("*Alert*")
| lookup alert,object,ds_action,description,severity,severity_id from https://sumologic-app-data.s3.amazonaws.com/docusign_alert_lookup.csv on action = ds_action
```

**DocuSign/Alerts/Low Alerts**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
| where object matches "{{object}}" and action matches"{{action}}" and source matches"{{source}}"
| where country matches "{{country}}" or isNull(country)
| where object matches("*Alert*")
| lookup alert,object,ds_action,description,severity,severity_id from https://sumologic-app-data.s3.amazonaws.com/docusign_alert_lookup.csv on action = ds_action
```

**DocuSign/Alerts/Medium Alerts**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
| where object matches "{{object}}" and action matches"{{action}}" and source matches"{{source}}"
| where country matches "{{country}}" or isNull(country)
| where object matches("*Alert*")
| lookup alert,object,ds_action,description,severity,severity_id from https://sumologic-app-data.s3.amazonaws.com/docusign_alert_lookup.csv on action = ds_action
```

**DocuSign/Alerts/Recent Alerts Summary**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country","data" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country,data nodrop
| where object matches "{{object}}" and action matches"{{action}}" and source matches"{{source}}"
| where country matches "{{country}}" or isNull(country)
| where object matches("*Alert*")
| lookup alert,ds_action,description,severity,severity_id from https://sumologic-app-data.s3.amazonaws.com/docusign_alert_lookup.csv on action = ds_action
```

**DocuSign/Overview/Activities From High Risk Countries**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country","ipAddress" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country,ip nodrop
| where object matches "{{object}}" and action matches"{{action}}" and source matches"{{source}}"
| where country matches "{{country}}" or isNull(country)
| where isValidIPv4(ip) or isValidIPv6(ip)
| where !isNull(ip)
| if(isValidIPv4(ip), if(!isPrivateIP(ip),true,false),true) as is_public
| where is_public
| lookup latitude, longitude, country_code from geo://location on ip = ip
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code
```

**DocuSign/Overview/Administrators Added**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Overview/Alerts by Count**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Overview/Alerts Fired**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Overview/Distribution of Operations**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Overview/Distribution of Sources**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Overview/Document Modification Summary**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country","data" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country,data nodrop
```

**DocuSign/Overview/Documents Downloaded**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Overview/Envelopes Signed**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Overview/Events Over Time**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Overview/Geo Locations of Events**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Overview/Groups Created**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Overview/Templates Created**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Overview/Top 25 Events**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Overview/Users Added**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Users/2-Factor Updates**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Users/Distribution of Sources**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Users/Failed User Logins**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Users/Geo Location of User Logins**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Users/Login Activity by Time**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Users/Logins from High Risk Countries**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country","ipAddress" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country,ip nodrop
| where object matches "{{object}}" and action matches"{{action}}" and source matches"{{source}}"
| where country matches "{{country}}" or isNull(country)
| where object matches("*User*")
| where action matches("*Login*")
| where isValidIPv4(ip) or isValidIPv6(ip)
| where !isNull(ip)
| if(isValidIPv4(ip), if(!isPrivateIP(ip),true,false),true) as is_public
| where is_public
| count_distinct(event_id) as frequency by ip
| lookup latitude, longitude, country_code from geo://location on ip = ip
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code
```

**DocuSign/Users/Password Updates**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Users/Profile or Email Updates**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Users/Recovery Information Updates**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```

**DocuSign/Users/User Access Controls**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country","data" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country,data nodrop
```

**DocuSign/Users/User Events Summary**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country","data" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country,data nodrop
```

**DocuSign/Users/User Lockouts**
```
_sourceCategory={{Logsdatasource}}  
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
```


