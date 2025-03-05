# Parsers For Miro

## Parser:
```
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email"  as id, type, team_name, organization_name, ip, createdAt, event, user_name, user_email nodrop
 `n```
### Use Cases:
Account(s) Created, Account(s) Deleted, Boards Created and Opened Over Time, Distribution of App Events, Distribution of Sign-in Events, Events by Team, Events Over Time, File Events by User, Geo - Location of Events, Recent Events Summary, Recent File Events Summary, Sign-in  Events by Authentication Methods, Sign-in Events, Sign-in Events  - One Day Time Comparison, Sign-in Events from Risky Geo - Locations, Total Board Events, Total Events, User(s) Deactivated, User(s) Reactivated



## Parser:
```
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email"  as id, type, team_name, organization_name, ips, created_at, event, user_name, user_email nodrop
 `n```
### Use Cases:
Recent Events Summary



## Parser:
```
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email", "details.authType"  as id, type, team_name, organization_name, ip, createdAt, event, user_name, user_email, authType  nodrop
 `n```
### Use Cases:
Boards Created and Opened Over Time, Distribution of App Events, Events by Team, Events Over Time, File Events by User, Geo - Location of Events, Recent Events Summary, Recent File Events Summary, Sign-in  Events by Authentication Methods, Total Board Events, Total Events



## Parser:
```
| json "id", "type", "context.team.name", "context.organization.name", "context.ip", "createdAt", "event", "createdBy.name", "createdBy.email", "object.name", "details.type", "details.object"  as id, type, team_name, organization_name, ip, created_at, event, user_name, user_email, board, types, object nodrop
 `n```
### Use Cases:
File Events by User, Recent Events Summary, Recent File Events Summary


