# Parsers For Jira Cloud

## Parser:
```
| json field=_raw "webhookEvent" as event_name
 `n```
### Use Cases:
Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Events, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Recent Issue Changes Over Time, Top 10 Issue Assignee, Top 10 Issue creator, Top 10 Issues that took the longest to close, Unassigned Issues



## Parser:
```
| json field=_raw "webhookEvent" as event_type
 `n```
### Use Cases:
Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Events, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Recent Issue Changes Over Time, Sprint Closed, Sprint Created, Sprint Events - One Week Comparison, Sprint Started, Top 10 Issue Assignee, Top 10 Issue creator, Top 10 Issues that took the longest to close, Unassigned Issues, User Events



## Parser:
```
| json field=_raw "webhookEvent" as event_type
| json   "user.name", "timestamp"  as  user_name, timestamp 
 `n```
### Use Cases:
Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Events, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Recent Issue Changes Over Time, Sprint Closed, Sprint Created, Sprint Events - One Week Comparison, Sprint Started, Top 10 Issue Assignee, Top 10 Issue creator, Top 10 Issues that took the longest to close, Unassigned Issues, User Events, User Events - One Week Comparison, Users Created, Users Deleted, Users Updated



## Parser:
```
| json field=_raw "webhookEvent" as event_type
| json  "timestamp"  as timestamp
 `n```
### Use Cases:
Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Events, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Recent Issue Changes Over Time, Sprint Closed, Sprint Created, Sprint Events - One Week Comparison, Sprint Started, Top 10 Issue Assignee, Top 10 Issue creator, Top 10 Issues that took the longest to close, Unassigned Issues, User Events, User Events - One Week Comparison



## Parser:
```
| json field=_raw "webhookEvent" as event_type
| json  "user.accountId", "user.displayName", "user.active", "timestamp"  as account_id, user_name, is_active, timestamp
 `n```
### Use Cases:
Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Events, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Recent Issue Changes Over Time, Sprint Closed, Sprint Created, Sprint Events - One Week Comparison, Sprint Started, Top 10 Issue Assignee, Top 10 Issue creator, Top 10 Issues that took the longest to close, Unassigned Issues, User Events, User Events - One Week Comparison, Users Created, Users Updated



## Parser:
```
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| json field=change_log "items" as changes
| json "issue.fields.resolutiondate", "issue.fields.created" as issue_resolution, issue_creation
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].fieldId" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
 `n```
### Use Cases:
Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues Reopened, Top 10 Issue Assignee, Top 10 Issue creator, Top 10 Issues that took the longest to close, Unassigned Issues



## Parser:
```
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| json field=change_log "items" as changes
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
 `n```
### Use Cases:
Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Recent Issue Changes Over Time, Top 10 Issue Assignee, Top 10 Issue creator, Top 10 Issues that took the longest to close, Unassigned Issues



## Parser:
```
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| json field=change_log "items" as changes
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].fieldId" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
 `n```
### Use Cases:
Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Top 10 Issue Assignee, Top 10 Issue creator, Top 10 Issues that took the longest to close, Unassigned Issues



## Parser:
```
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| json field=change_log "items" as changes  
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
 `n```
### Use Cases:
Issues Created Vs Closed



## Parser:
```
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| json field=change_log "items" as changes nodrop
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
 `n```
### Use Cases:
Issues Created Vs Closed, Top 10 Issue Assignee, Top 10 Issue creator, Unassigned Issues



## Parser:
```
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, summary, priority, components, labels  
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| json field=change_log "items" as changes
| json "issue.fields.resolutiondate", "issue.fields.created" as issue_resolution, issue_creation
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].fieldId" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
 `n```
### Use Cases:
Issues Created Vs Closed, Issues Reopened, Top 10 Issue Assignee, Top 10 Issue creator, Top 10 Issues that took the longest to close, Unassigned Issues



## Parser:
```
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, summary, priority, components, labels  nodrop
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| json field=change_log "items" as changes
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
| json field=change_log "items[0].field", "items[0].from", "items[0].to" as change_field, change_from,  change_to
 `n```
### Use Cases:
Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues Reopened, Top 10 Issue Assignee, Top 10 Issue creator, Top 10 Issues that took the longest to close, Unassigned Issues



## Parser:
```
| json field=_raw "webhookEvent", "sprint.name", "sprint.state", "sprint.originBoardId" as event_name, sprint_name, sprint_state, sprinit_originBoardID nodrop
 `n```
### Use Cases:
Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Events, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Recent Issue Changes Over Time, Sprint Closed, Sprint Created, Sprint Started, Top 10 Issue Assignee, Top 10 Issue creator, Top 10 Issues that took the longest to close, Unassigned Issues



## Parser:
```
| json field=_raw "webhookEvent", "sprint.name", "sprint.state", "sprint.startDate", "sprint.endDate", "sprint.goal", "sprint.originBoardId" as event_name, sprint_name, sprint_state, sprint_startDate, sprint_endDate, sprint_goal, sprinit_originBoardID nodrop
 `n```
### Use Cases:
Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Events, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Recent Issue Changes Over Time, Sprint Closed, Sprint Created, Sprint Events - One Week Comparison, Sprint Started, Top 10 Issue Assignee, Top 10 Issue creator, Top 10 Issues that took the longest to close, Unassigned Issues



## Parser:
```
| json field=_raw "webhookEvent", "sprint.name", "sprint.state", "sprint.startDate", "sprint.endDate", "sprint.goal", "sprint.originBoardId", "sprint.completeDate" as event_name, sprint_name, sprint_state, sprint_startDate, sprint_endDate, sprint_goal, sprinit_originBoardID, sprint_completeDate nodrop
 `n```
### Use Cases:
Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Events, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Recent Issue Changes Over Time, Sprint Closed, Sprint Started, Top 10 Issue Assignee, Top 10 Issue creator, Top 10 Issues that took the longest to close, Unassigned Issues


