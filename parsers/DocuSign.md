# Parsers For DocuSign

## Parser:
```
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country nodrop
 `n```
### Use Cases:
2-Factor Updates, Activities From High Risk Countries, Administrators Added, Alerts by Count, Alerts by Severity Over Time, Alerts Fired, Distribution of Operations, Distribution of Sources, Document Modification Summary, Documents Downloaded, Envelopes Signed, Events Over Time, Failed User Logins, Geo Location of Alerts, Geo Location of User Logins, Geo Locations of Events, Groups Created, High Alerts, Login Activity by Time, Logins from High Risk Countries, Low Alerts, Medium Alerts, Password Updates, Profile or Email Updates, Recent Alerts Summary, Recovery Information Updates, Templates Created, Top 25 Events, User Access Controls, User Events Summary, User Lockouts, Users Added



## Parser:
```
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country","data" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country,data nodrop
 `n```
### Use Cases:
Activities From High Risk Countries, Administrators Added, Alerts by Count, Alerts by Severity Over Time, Alerts Fired, Distribution of Operations, Distribution of Sources, Document Modification Summary, Documents Downloaded, Envelopes Signed, Events Over Time, Geo Location of Alerts, Geo Location of User Logins, Geo Locations of Events, Groups Created, High Alerts, Logins from High Risk Countries, Low Alerts, Medium Alerts, Recent Alerts Summary, Templates Created, Top 25 Events, User Access Controls, User Events Summary, Users Added



## Parser:
```
| json "object","userId","eventId","action","property","source","ipAddressLocation.latitude","ipAddressLocation.longitude","result","ipAddressLocation.city","ipAddressLocation.state","ipAddressLocation.country","ipAddress" as object,user_id,event_id,action,property,source,latitude,longitude,result,city,state,country,ip nodrop
 `n```
### Use Cases:
Activities From High Risk Countries, Administrators Added, Alerts by Count, Alerts by Severity Over Time, Alerts Fired, Distribution of Operations, Distribution of Sources, Document Modification Summary, Documents Downloaded, Envelopes Signed, Events Over Time, Geo Location of Alerts, Geo Locations of Events, Groups Created, High Alerts, Logins from High Risk Countries, Low Alerts, Medium Alerts, Recent Alerts Summary, Templates Created, Top 25 Events, Users Added


