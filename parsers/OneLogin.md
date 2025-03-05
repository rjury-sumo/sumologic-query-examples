# Parsers For OneLogin

## Parser:
```
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop
 
```
### Use Cases:
Authentication Events, Authentication Events - One Day Time Comparison, Event Distributions by EventIDs, Failed Actions, Global Risk Reasons, Low Trust by Location, MFA Request Failure by Location, Risk Scores (None, Low, Medium, High), Users prompted for MFA by Country, Users prompted for MFA by Location, Users prompted for MFA during Login, Users whose MFA was suppressed by Location, Users whose MFA was suppressed during Login, Users with High Risk Logons (Risk > 51)



## Parser:
```
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
 
```
### Use Cases:
Assumed Users, Authentication Events, Authentication Events - One Day Time Comparison, Event Distributions by App, Event Distributions by EventIDs, Event Outlier Over Time, Events by App, Failed Actions, Failed Login Outlier, Failed Logins, Global Risk Reasons, Logins by App, Logins by Country, Low Trust by Location, MFA Request Failure by Location, Password Changes, Risk Scores (None, Low, Medium, High), Successful Login Outlier, Successful Logins, Top 10 Provisioning Errors and Warnings, Top 10 Users by Events, User Activity, User Modifications, Users Created in Apps, Users prompted for MFA by Country, Users prompted for MFA by Location, Users prompted for MFA during Login, Users whose MFA was suppressed by Location, Users whose MFA was suppressed during Login, Users with High Risk Logons (Risk > 51), Visitor Locations



## Parser:
```
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
| json "event.error_description" as error_description nodrop
 
```
### Use Cases:
Authentication Events, Authentication Events - One Day Time Comparison, Event Distributions by App, Event Distributions by EventIDs, Failed Actions, Global Risk Reasons, Logins by App, Low Trust by Location, MFA Request Failure by Location, Risk Scores (None, Low, Medium, High), Top 10 Provisioning Errors and Warnings, Users prompted for MFA by Country, Users prompted for MFA by Location, Users prompted for MFA during Login, Users whose MFA was suppressed by Location, Users whose MFA was suppressed during Login, Users with High Risk Logons (Risk > 51)



## Parser:
```
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
| json "event.error_description" as error_description nodrop 
 
```
### Use Cases:
Authentication Events, Authentication Events - One Day Time Comparison, Failed Actions, Global Risk Reasons, Low Trust by Location, MFA Request Failure by Location, Risk Scores (None, Low, Medium, High), Users prompted for MFA by Country, Users prompted for MFA by Location, Users prompted for MFA during Login, Users whose MFA was suppressed by Location, Users whose MFA was suppressed during Login, Users with High Risk Logons (Risk > 51)



## Parser:
```
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name" as event_id, app_name, src_ip, user_name, actor_user_name nodrop 
| json "event.event_timestamp","event.notes","event.error_description" as event_timestamp, note, error_description nodrop 
 
```
### Use Cases:
Authentication Events, Authentication Events - One Day Time Comparison, Event Distributions by App, Event Distributions by EventIDs, Event Outlier Over Time, Events by App, Failed Actions, Failed Login Outlier, Global Risk Reasons, Logins by App, Logins by Country, Low Trust by Location, MFA Request Failure by Location, Risk Scores (None, Low, Medium, High), Successful Login Outlier, Top 10 Provisioning Errors and Warnings, Top 10 Users by Events, User Modifications, Users prompted for MFA by Country, Users prompted for MFA by Location, Users prompted for MFA during Login, Users whose MFA was suppressed by Location, Users whose MFA was suppressed during Login, Users with High Risk Logons (Risk > 51), Visitor Locations



## Parser:
```
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name", "event.notes" as event_id, app_name, src_ip, user_name, actor_user_name, notes nodrop 
 
```
### Use Cases:
Authentication Events, Authentication Events - One Day Time Comparison, Global Risk Reasons, Low Trust by Location, MFA Request Failure by Location, Users prompted for MFA by Country, Users prompted for MFA during Login, Users whose MFA was suppressed during Login



## Parser:
```
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name", "event.notes", "event.risk_score", "event.risk_reasons" as event_id, app_name, src_ip, user_name, actor_user_name, notes, risk_score, risk_reasons nodrop 
 
```
### Use Cases:
Authentication Events, Authentication Events - One Day Time Comparison, Global Risk Reasons, Low Trust by Location, MFA Request Failure by Location, Users prompted for MFA by Country, Users prompted for MFA by Location, Users prompted for MFA during Login, Users whose MFA was suppressed by Location, Users whose MFA was suppressed during Login, Users with High Risk Logons (Risk > 51)



## Parser:
```
| json "event.event_type_id", "event.app_name","event.ipaddr", "event.user_name", "event.actor_user_name","event.notes" as event_id, app_name, src_ip, user_name, actor_user_name, note nodrop 
| json "event.event_timestamp" as event_timestamp nodrop 
 
```
### Use Cases:
Assumed Users, Authentication Events, Authentication Events - One Day Time Comparison, Event Distributions by App, Event Distributions by EventIDs, Event Outlier Over Time, Events by App, Failed Actions, Failed Login Outlier, Failed Logins, Global Risk Reasons, Logins by App, Logins by Country, Low Trust by Location, MFA Request Failure by Location, Password Changes, Risk Scores (None, Low, Medium, High), Successful Login Outlier, Top 10 Provisioning Errors and Warnings, Top 10 Users by Events, User Activity, User Modifications, Users prompted for MFA by Country, Users prompted for MFA by Location, Users prompted for MFA during Login, Users whose MFA was suppressed by Location, Users whose MFA was suppressed during Login, Users with High Risk Logons (Risk > 51), Visitor Locations



## Parser:
```
| json "event.risk_reasons" as risk_reasons nodrop 
| parse regex field=risk_reasons "(?<risk>.+) \([0-9]+%\)" multi
 
```
### Use Cases:
Global Risk Reasons



## Parser:
```
| json "event.risk_score", "event.risk_reasons" as risk_score, risk_reasons nodrop
 
```
### Use Cases:
Authentication Events, Authentication Events - One Day Time Comparison, Global Risk Reasons, Low Trust by Location, MFA Request Failure by Location, Risk Scores (None, Low, Medium, High), Users prompted for MFA by Country, Users prompted for MFA by Location, Users prompted for MFA during Login, Users whose MFA was suppressed by Location, Users whose MFA was suppressed during Login, Users with High Risk Logons (Risk > 51)



## Parser:
```
| json field=_raw "event.event_type_id" as event nodrop 
| json field=_raw "event.risk_score" as risk nodrop 
| json field=_raw "event.risk_reasons" as risk_reasons nodrop 
| json field=_raw "event.notes" as notes nodrop | where notes matches "*Authentication method: password + OTP Suppressed.*"
| json field=_raw "event.user_name" as username nodrop 
| json field=_raw "event.ipaddr" as src_ip nodrop 
 
```
### Use Cases:
Authentication Events, Authentication Events - One Day Time Comparison, Global Risk Reasons, Low Trust by Location, MFA Request Failure by Location, Users prompted for MFA by Country, Users prompted for MFA by Location, Users prompted for MFA during Login, Users whose MFA was suppressed by Location, Users whose MFA was suppressed during Login



## Parser:
```
| json field=_raw "event.event_type_id" as event nodrop | where event = 5
| json field=_raw "event.risk_score" as risk nodrop 
| json field=_raw "event.risk_reasons" as risk_reasons nodrop 
| json field=_raw "event.user_name" as username nodrop 
| json field=_raw "event.notes" as notes nodrop 
| json field=_raw "event.ipaddr" as IP nodrop 
 
```
### Use Cases:
Global Risk Reasons, Users prompted for MFA during Login, Users whose MFA was suppressed during Login



## Parser:
```
| json field=_raw "event.event_type_id" as event nodrop | where event = 5
| json field=_raw "event.risk_score" as risk nodrop | where risk > 0
| json field=_raw "event.risk_reasons" as risk_reasons nodrop 
| json field=_raw "event.user_name" as username nodrop 
| json field=_raw "event.ipaddr" as src_ip nodrop 
 
```
### Use Cases:
Authentication Events, Authentication Events - One Day Time Comparison, Global Risk Reasons, Low Trust by Location, MFA Request Failure by Location, Users prompted for MFA during Login, Users whose MFA was suppressed during Login



## Parser:
```
| json field=_raw "event.event_type_id" as event nodrop | where event = 5
| json field=_raw "event.risk_score" as risk nodrop | where risk > 3
| json field=_raw "event.risk_reasons" as risk_reasons nodrop 
| json field=_raw "event.user_name" as username nodrop 
| json field=_raw "event.ipaddr" as IP nodrop 
 
```
### Use Cases:
Global Risk Reasons, Users prompted for MFA during Login



## Parser:
```
| json field=_raw "event.event_type_id" as event_id nodrop 
| json field=_raw "event.risk_score" as risk nodrop 
| json field=_raw "event.risk_reasons" as risk_reasons nodrop 
| json field=_raw "event.user_name" as username nodrop 
| json field=_raw "event.ipaddr" as src_ip nodrop 
| json field=_raw "event.notes" as notes nodrop 
 
```
### Use Cases:
Authentication Events, Authentication Events - One Day Time Comparison, Global Risk Reasons, Low Trust by Location, MFA Request Failure by Location, Users prompted for MFA by Country, Users prompted for MFA by Location, Users prompted for MFA during Login, Users whose MFA was suppressed during Login


