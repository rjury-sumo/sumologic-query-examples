# Parsers For Jira

## Parser:
```
| json field=_raw "webhookEvent" as event_name
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Catalina Requests, Error Over Time with One Day Time Comparison, Error/Failures/Exceptions Over Time, Errors, Errors - One Day Time Comparison, Errors Over Time, Events, Failed Logins, Failed Logins - One Day Time Comparison, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Jira Request Usage, Logins - One Day Time Comparison, Recent Issue Changes Over Time, Requests breakdown by Project, Requests by Project, Requests Over Time, Security Messages, Sprint Closed, Sprint Events - One Week Comparison, Successful Logins - One Day Time Comparison, Successful Logins By User, Time in Hours to Close Issues, Top 10 Active Users with Failed Logins, Top 10 Active Users with Successful Logins, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues



## Parser:
```
| json field=_raw "webhookEvent" as event_type
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Catalina Requests, Error Over Time with One Day Time Comparison, Error/Failures/Exceptions Over Time, Errors, Errors - One Day Time Comparison, Errors Over Time, Events, Failed Logins, Failed Logins - One Day Time Comparison, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Jira Request Usage, Logins - One Day Time Comparison, Recent Issue Changes Over Time, Requests breakdown by Project, Requests by Project, Requests Over Time, Security Messages, Sprint Closed, Sprint Created, Sprint Events - One Week Comparison, Sprint Started, Successful Logins - One Day Time Comparison, Successful Logins By User, Time in Hours to Close Issues, Top 10 Active Users with Failed Logins, Top 10 Active Users with Successful Logins, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues, User Events, User Events - One Week Comparison, Users Created, Users Updated



## Parser:
```
| json field=_raw "webhookEvent" as event_type
| json  "timestamp"  as timestamp
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Catalina Requests, Error Over Time with One Day Time Comparison, Error/Failures/Exceptions Over Time, Errors, Errors - One Day Time Comparison, Errors Over Time, Events, Failed Logins, Failed Logins - One Day Time Comparison, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Jira Request Usage, Logins - One Day Time Comparison, Recent Issue Changes Over Time, Requests breakdown by Project, Requests by Project, Requests Over Time, Security Messages, Sprint Closed, Sprint Created, Sprint Events - One Week Comparison, Sprint Started, Successful Logins - One Day Time Comparison, Successful Logins By User, Time in Hours to Close Issues, Top 10 Active Users with Failed Logins, Top 10 Active Users with Successful Logins, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues, User Events - One Week Comparison, Users Created, Users Updated



## Parser:
```
| json field=_raw "webhookEvent" as event_type
| json  "user.key", "user.displayName", "user.emailAddress", "user.self"  as account_id, user_name, user_email, url
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Catalina Requests, Error Over Time with One Day Time Comparison, Error/Failures/Exceptions Over Time, Errors, Errors - One Day Time Comparison, Errors Over Time, Events, Failed Logins, Failed Logins - One Day Time Comparison, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Jira Request Usage, Logins - One Day Time Comparison, Recent Issue Changes Over Time, Requests breakdown by Project, Requests by Project, Requests Over Time, Security Messages, Sprint Closed, Sprint Created, Sprint Events - One Week Comparison, Sprint Started, Successful Logins - One Day Time Comparison, Successful Logins By User, Time in Hours to Close Issues, Top 10 Active Users with Failed Logins, Top 10 Active Users with Successful Logins, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues, Users Created, Users Updated



## Parser:
```
| json field=_raw "webhookEvent" as event_type
| json  "user.key", "user.name" as account_id, user_name
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Catalina Requests, Error Over Time with One Day Time Comparison, Error/Failures/Exceptions Over Time, Errors, Errors - One Day Time Comparison, Errors Over Time, Events, Failed Logins, Failed Logins - One Day Time Comparison, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Jira Request Usage, Logins - One Day Time Comparison, Recent Issue Changes Over Time, Requests breakdown by Project, Requests by Project, Requests Over Time, Security Messages, Sprint Closed, Sprint Created, Sprint Events - One Week Comparison, Sprint Started, Successful Logins - One Day Time Comparison, Successful Logins By User, Time in Hours to Close Issues, Top 10 Active Users with Failed Logins, Top 10 Active Users with Successful Logins, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues, User Events, User Events - One Week Comparison, Users Created, Users Deleted, Users Updated



## Parser:
```
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels 
| json field=change_log "items" as changes
| parse regex field=jira_self "(?<base_url>[\S]+\/rest)[\S]+" nodrop
| parse regex field=jira_self "(?<base_url>[\S]+\/jira)[\S]+" nodrop
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Error/Failures/Exceptions Over Time, Errors, Errors Over Time, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Jira Request Usage, Requests breakdown by Project, Requests by Project, Requests Over Time, Top 15 URIs



## Parser:
```
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| json field=change_log "items" as changes
| json "issue.fields.resolutiondate", "issue.fields.created" as issue_resolution, issue_creation
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].field" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Error/Failures/Exceptions Over Time, Errors, Errors Over Time, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues Reopened, Issues Reopened - One Month Comparison, Jira Request Usage, Requests breakdown by Project, Requests by Project, Requests Over Time, Time in Hours to Close Issues, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues



## Parser:
```
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| json field=change_log "items" as changes
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/"
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Error/Failures/Exceptions Over Time, Errors, Errors Over Time, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Jira Request Usage, Requests breakdown by Project, Requests by Project, Requests Over Time, Time in Hours to Close Issues, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues



## Parser:
```
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| json field=change_log "items" as changes
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Error/Failures/Exceptions Over Time, Errors, Errors Over Time, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Project, Jira Request Usage, Requests breakdown by Project, Requests by Project, Requests Over Time, Time in Hours to Close Issues, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues



## Parser:
```
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| json field=change_log "items" as changes
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].field" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Error/Failures/Exceptions Over Time, Errors, Errors Over Time, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Jira Request Usage, Requests breakdown by Project, Requests by Project, Requests Over Time, Time in Hours to Close Issues, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues



## Parser:
```
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| json field=change_log "items" as changes
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Catalina Requests, Error Over Time with One Day Time Comparison, Error/Failures/Exceptions Over Time, Errors, Errors - One Day Time Comparison, Errors Over Time, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Jira Request Usage, Logins - One Day Time Comparison, Recent Issue Changes Over Time, Requests breakdown by Project, Requests by Project, Requests Over Time, Time in Hours to Close Issues, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues



## Parser:
```
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| json field=change_log "items" as changes  
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Error/Failures/Exceptions Over Time, Errors, Errors Over Time, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues Created Vs Closed, Jira Request Usage, Requests breakdown by Project, Requests by Project, Requests Over Time, Top 15 URIs



## Parser:
```
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| json field=change_log "items" as changes nodrop
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Error/Failures/Exceptions Over Time, Errors, Errors Over Time, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues Reopened - One Month Comparison, Jira Request Usage, Requests breakdown by Project, Requests by Project, Requests Over Time, Time in Hours to Close Issues, Top 10 Issue Assignee, Top 15 URIs, Unassigned Issues



## Parser:
```
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, summary, priority, components, labels  
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| json field=change_log "items" as changes
| json "issue.fields.resolutiondate", "issue.fields.created" as issue_resolution, issue_creation
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].field" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Error/Failures/Exceptions Over Time, Errors, Errors Over Time, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues Created Vs Closed, Jira Request Usage, Requests breakdown by Project, Requests by Project, Requests Over Time, Time in Hours to Close Issues, Top 15 URIs



## Parser:
```
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, summary, priority, components, labels  nodrop
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| json field=change_log "items" as changes
| parse regex field=jira_self "(?<base_url>.*?//.*?)\/" 
| json field=change_log "items[0].field", "items[0].from", "items[0].to" as change_field, change_from,  change_to
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Error/Failures/Exceptions Over Time, Errors, Errors Over Time, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Jira Request Usage, Requests breakdown by Project, Requests by Project, Requests Over Time, Time in Hours to Close Issues, Top 15 URIs



## Parser:
```
| json field=_raw "webhookEvent", "sprint.name", "sprint.state", "sprint.originBoardId" as event_name, sprint_name, sprint_state, sprinit_originBoardID nodrop
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Catalina Requests, Error Over Time with One Day Time Comparison, Error/Failures/Exceptions Over Time, Errors, Errors - One Day Time Comparison, Errors Over Time, Events, Failed Logins, Failed Logins - One Day Time Comparison, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Jira Request Usage, Logins - One Day Time Comparison, Recent Issue Changes Over Time, Requests breakdown by Project, Requests by Project, Requests Over Time, Security Messages, Sprint Closed, Sprint Created, Sprint Events - One Week Comparison, Sprint Started, Successful Logins - One Day Time Comparison, Successful Logins By User, Time in Hours to Close Issues, Top 10 Active Users with Failed Logins, Top 10 Active Users with Successful Logins, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues



## Parser:
```
| json field=_raw "webhookEvent", "sprint.name", "sprint.state", "sprint.startDate", "sprint.endDate", "sprint.goal", "sprint.originBoardId" as event_name, sprint_name, sprint_state, sprint_startDate, sprint_endDate, sprint_goal, sprinit_originBoardID nodrop
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Catalina Requests, Error Over Time with One Day Time Comparison, Error/Failures/Exceptions Over Time, Errors, Errors - One Day Time Comparison, Errors Over Time, Events, Failed Logins, Failed Logins - One Day Time Comparison, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Jira Request Usage, Logins - One Day Time Comparison, Recent Issue Changes Over Time, Requests breakdown by Project, Requests by Project, Requests Over Time, Security Messages, Sprint Closed, Sprint Events - One Week Comparison, Sprint Started, Successful Logins - One Day Time Comparison, Successful Logins By User, Time in Hours to Close Issues, Top 10 Active Users with Failed Logins, Top 10 Active Users with Successful Logins, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues



## Parser:
```
| json field=_raw "webhookEvent", "sprint.name", "sprint.state", "sprint.startDate", "sprint.endDate", "sprint.goal", "sprint.originBoardId", "sprint.completeDate" as event_name, sprint_name, sprint_state, sprint_startDate, sprint_endDate, sprint_goal, sprinit_originBoardID, sprint_completeDate nodrop
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Catalina Requests, Error Over Time with One Day Time Comparison, Error/Failures/Exceptions Over Time, Errors, Errors - One Day Time Comparison, Errors Over Time, Failed Logins, Failed Logins - One Day Time Comparison, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Jira Request Usage, Logins - One Day Time Comparison, Recent Issue Changes Over Time, Requests breakdown by Project, Requests by Project, Requests Over Time, Security Messages, Sprint Closed, Sprint Events - One Week Comparison, Successful Logins - One Day Time Comparison, Successful Logins By User, Time in Hours to Close Issues, Top 10 Active Users with Failed Logins, Top 10 Active Users with Successful Logins, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues



## Parser:
```
| parse "[*] [*] *" as date_time,severity,msg 
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Catalina Requests, Error Over Time with One Day Time Comparison, Error/Failures/Exceptions Over Time, Errors, Errors - One Day Time Comparison, Errors Over Time, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Jira Request Usage, Logins - One Day Time Comparison, Requests breakdown by Project, Requests by Project, Requests Over Time, Time in Hours to Close Issues, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues



## Parser:
```
| parse "* * * * * *" as date,time,module,severity,caller,msg
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Catalina Requests, Error/Failures/Exceptions Over Time, Errors, Errors - One Day Time Comparison, Errors Over Time, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Jira Request Usage, Logins - One Day Time Comparison, Requests breakdown by Project, Requests by Project, Requests Over Time, Time in Hours to Close Issues, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues



## Parser:
```
| parse "* * * * * *" as date,time,module,severity,caller,msg nodrop
 
```
### Use Cases:
Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Error/Failures/Exceptions Over Time, Errors, Errors Over Time, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Jira Request Usage, Requests breakdown by Project, Requests by Project, Top 15 URIs



## Parser:
```
| parse "* * * *" as date_time,nodule,user,msg 
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Catalina Requests, Error Over Time with One Day Time Comparison, Error/Failures/Exceptions Over Time, Errors, Errors - One Day Time Comparison, Errors Over Time, Failed Logins, Failed Logins - One Day Time Comparison, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Jira Request Usage, Logins - One Day Time Comparison, Recent Issue Changes Over Time, Requests breakdown by Project, Requests by Project, Requests Over Time, Security Messages, Successful Logins - One Day Time Comparison, Time in Hours to Close Issues, Top 10 Active Users with Successful Logins, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues



## Parser:
```
| parse "The user '*' has * authentication." as user,authentication
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Catalina Requests, Error Over Time with One Day Time Comparison, Error/Failures/Exceptions Over Time, Errors, Errors - One Day Time Comparison, Errors Over Time, Failed Logins, Failed Logins - One Day Time Comparison, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Jira Request Usage, Logins - One Day Time Comparison, Recent Issue Changes Over Time, Requests breakdown by Project, Requests by Project, Requests Over Time, Security Messages, Successful Logins - One Day Time Comparison, Successful Logins By User, Time in Hours to Close Issues, Top 10 Active Users with Failed Logins, Top 10 Active Users with Successful Logins, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues



## Parser:
```
| parse "The user '*' has * authentication." as user,result
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Catalina Requests, Error Over Time with One Day Time Comparison, Error/Failures/Exceptions Over Time, Errors, Errors - One Day Time Comparison, Errors Over Time, Failed Logins, Failed Logins - One Day Time Comparison, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Jira Request Usage, Logins - One Day Time Comparison, Recent Issue Changes Over Time, Requests breakdown by Project, Requests by Project, Requests Over Time, Time in Hours to Close Issues, Top 10 Active Users with Successful Logins, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues



## Parser:
```
| parse "URI *," as URI
| parse regex "\d{2}-\w{3}-\d{4}\s\d{2}:\d{2}:\d{2}.\d{3}\s(?<log_level>\w+)\s\[(?<thread>[^\]]+)\]\s(?<component>\S+)\s(?<message>.*)"
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Catalina Requests, Error/Failures/Exceptions Over Time, Errors, Errors Over Time, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Jira Request Usage, Requests breakdown by Project, Requests by Project, Requests Over Time, Time in Hours to Close Issues, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues



## Parser:
```
| parse regex ".* (?<ip>[\d]+.[\d]+.[\d]+.[\d]+) [\S]+ The user '(?<user>[\S]+)' has (?<result>PASSED|FAILED) authentication" 
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Catalina Requests, Error Over Time with One Day Time Comparison, Error/Failures/Exceptions Over Time, Errors, Errors - One Day Time Comparison, Errors Over Time, Failed Logins, Failed Logins - One Day Time Comparison, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Jira Request Usage, Logins - One Day Time Comparison, Recent Issue Changes Over Time, Requests breakdown by Project, Requests by Project, Requests Over Time, Security Messages, Successful Logins - One Day Time Comparison, Time in Hours to Close Issues, Top 10 Active Users with Failed Logins, Top 10 Active Users with Successful Logins, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues



## Parser:
```
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)"
 
```
### Use Cases:
Access Methods, Access Methods - One Day Time Comparison, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Jira Request Usage, Requests breakdown by Project, Requests by Project



## Parser:
```
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\"" nodrop
| parse regex "^(?<src_ip>[^\s]*) (?<jira_request_id>[^\s]*) (?<jira_username>[^\s]*) (?:[^\s]*\s){2}\"(?<method>[^\s]*) (?<uri>[^\s]*) (?<protocol>[^\"]*)\" (?<response_code>[^\s]*) (?<bytes>[^\s]*) (?<response_time>[^\s]*) \"(?<referrer>[^\"]*)\" \"(?<user_agent>[^\"]*)\" \"(?<jira_session_id>[^\"]*)\""  nodrop
| parse regex field=uri "/browse/(?<project>[^-]*)-(?<issue>\d+)" nodrop
 
```
### Use Cases:
?Issue Summary by Event Name?, Access Methods, Access Methods - One Day Time Comparison, Average Response TIme, Avg Time Taken to close Issues by User, Avg. Time to Close Issues by Project, Breakdown by Severity, Bytes Sent (MB), Bytes Sent (MB) - Outlier, Catalina Requests, Error/Failures/Exceptions Over Time, Errors, Errors - One Day Time Comparison, Errors Over Time, HTTP Response Code - One Day Time Compare, HTTP Response Codes, HTTP Response Codes Over Time, Issues by Component, Issues by Priority and Project, Issues by Project, Issues by Type, Issues by Type Over Time, Issues Closed, Issues Closed by assignee, Issues Closed by Priority, Issues Closed by Project, Issues Created, Issues Created Vs Closed, Issues Escalated to the Highest Priority, Issues In Progress, Issues In Progress by assignee, Issues In Progress by Priority, Issues In Progress by Project, Issues Reopened, Issues Reopened - One Month Comparison, Issues Reopened by assignee, Issues Reopened by Priority, Issues Reopened by Project, Jira Request Usage, Logins - One Day Time Comparison, Requests breakdown by Project, Requests by Project, Requests Over Time, Time in Hours to Close Issues, Top 10 Issue Assignee, Top 10 Issue creator, Top 15 URIs, Unassigned Issues


