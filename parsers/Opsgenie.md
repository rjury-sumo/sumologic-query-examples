# Parsers For Opsgenie

## Parser:
```
| json  "action" 
 
```
### Use Cases:
Alert Events, Alert Events Over Time, Alert Summary, Alerts by Action, Alerts by Priority - One Day Time Comparison, Alerts by Priority Over Time, Alerts by Recipient  - One Day Time Comparison, Alerts by Recipient - Over Time, Alerts by Source - One Day Time Comparison, Alerts by Source Over Time, Alerts by Tags Over Time, Alerts by Team - One Day Time Comparison, Alerts by Team Over Time, Alerts by Users, Alerts Created - Outlier Analysis, Alerts Escalated - Outlier Analysis, Escalated Alerts, Top 10 Alerts with the Slowest Time to Close



## Parser:
```
| json  "action"  
 
```
### Use Cases:
Alert Events, Alert Events Over Time, Alert Summary, Alerts  Not Acknowledged, Alerts - One Day Time Comparison, Alerts Acknowledged, Alerts by Action, Alerts by Priority - One Day Time Comparison, Alerts by Priority Over Time, Alerts by Recipient  - One Day Time Comparison, Alerts by Recipient - Over Time, Alerts by Source - One Day Time Comparison, Alerts by Source Over Time, Alerts by Tags Over Time, Alerts by Team - One Day Time Comparison, Alerts by Team Over Time, Alerts by Users, Alerts Closed, Alerts Created, Alerts Created - Outlier Analysis, Alerts Escalated, Alerts Escalated - Outlier Analysis, Alerts Escalated to the Next in Escalation Policy, Escalated Alerts, Top 10 Alerts with the Slowest Time to Close



## Parser:
```
| json "action",  "alert.message",  "escalationName", "escalationTime", "escalationNotify.name" as action, message, escalationName, escalationTime, notifyName
 
```
### Use Cases:
Alert Summary, Alerts by Action, Alerts by Priority - One Day Time Comparison, Alerts by Priority Over Time, Alerts by Recipient  - One Day Time Comparison, Alerts by Recipient - Over Time, Alerts by Source - One Day Time Comparison, Alerts by Source Over Time, Alerts by Tags Over Time, Alerts by Team - One Day Time Comparison, Alerts by Team Over Time, Alerts by Users, Alerts Created - Outlier Analysis, Escalated Alerts, Top 10 Alerts with the Slowest Time to Close



## Parser:
```
| json "alert.createdAt", "alert.description", "alert.message", "action", "alert.team",  "alert.priority", "alert.source" , "alert.tags[*]","alert.recipients[*]" as created_at, description, message, action, team, priority, source, tags, recipients nodrop
 
```
### Use Cases:
Alert Events, Alert Events Over Time, Alert Summary, Alerts  Not Acknowledged, Alerts - One Day Time Comparison, Alerts Acknowledged, Alerts by Action, Alerts by Priority, Alerts by Priority - One Day Time Comparison, Alerts by Priority Over Time, Alerts by Recipient, Alerts by Recipient  - One Day Time Comparison, Alerts by Recipient - Over Time, Alerts by Source, Alerts by Source - One Day Time Comparison, Alerts by Source Over Time, Alerts by Tags, Alerts by Tags Over Time, Alerts by Team, Alerts by Team - One Day Time Comparison, Alerts by Team Over Time, Alerts by Users, Alerts Closed, Alerts Created, Alerts Created - Outlier Analysis, Alerts Escalated, Alerts Escalated - Outlier Analysis, Alerts Escalated to the Next in Escalation Policy, Escalated Alerts, Top 10 Alerts with the Slowest Time to Close



## Parser:
```
| json "alert.createdAt", "alert.description", "alert.message", "action", "alert.team",  "alert.priority", "alert.source" , "alert.tags[*]","alert.recipients[*]", "alert.username" as created_at, description, message, action, team, priority, source, tags, recipients, user_name nodrop
 
```
### Use Cases:
Alerts by Action, Alerts by Priority - One Day Time Comparison, Alerts by Priority Over Time, Alerts by Recipient  - One Day Time Comparison, Alerts by Recipient - Over Time, Alerts by Source - One Day Time Comparison, Alerts by Source Over Time, Alerts by Tags Over Time, Alerts by Team - One Day Time Comparison, Alerts by Team Over Time, Alerts by Users



## Parser:
```
| json "alert.createdAt", "alert.updatedAt" , "alert.description", "alert.message", "action", "alert.username",  "alert.priority", "alert.source" , "alert.tags[*]","alert.recipients[*]", "alert.details" as created_at, updated_at, description, message, action, username, priority, source, tags, recipients, alert_details nodrop
 
```
### Use Cases:
Alerts by Action, Alerts by Priority - One Day Time Comparison, Alerts by Priority Over Time, Alerts by Recipient  - One Day Time Comparison, Alerts by Recipient - Over Time, Alerts by Source - One Day Time Comparison, Alerts by Source Over Time, Alerts by Tags Over Time, Alerts by Team - One Day Time Comparison, Alerts by Team Over Time, Alerts by Users, Top 10 Alerts with the Slowest Time to Close


