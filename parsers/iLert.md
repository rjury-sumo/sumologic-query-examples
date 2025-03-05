# Parsers For iLert

## Parser:
```
| json "id", "summary", "details", "reportTime", "status", "eventType", "priority", "alertSource.name", "assignedTo.username", "assignedTo.email", "responders[0].user.username", "responders[0].user.email" as id, summary, detail, reportTime, status, eventType, priority, alertSource, assignedUserName, assignedEmail, responderUserName, responderEmail nodrop
 `n```
### Use Cases:
Alert by Priority, Alert by Source, Alert by Time Spends, Alerts by Event Type, Alerts Current Status, Alerts Flow, Avg Time to Resolve Alerts, Event Type Trend, High Priority Alert, Pending Alerts, Recent Alerts Summary, Resolved Alerts, Source Trend, Top Active Responder, Unique Alert Generated


