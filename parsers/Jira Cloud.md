# Parsers For Jira Cloud

**Jira Cloud/Issue Details/Avg Time Taken to close Issues by User**
```
_sourceCategory = Labs/Jira-cloud* *issue*  Complete statusCategory issue assignee 
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  
| where   project_name matches "{{project_name}}" AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| where status_category="Complete"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| json "issue.fields.resolutiondate", "issue.fields.created" as issue_resolution, issue_creation
| parseDate(issue_resolution, "yyyy-MM-dd'T'HH:mm:ss.SSSZ") as issue_resolution_milliseconds
| parseDate(issue_creation, "yyyy-MM-dd'T'HH:mm:ss.SSSZ") as issue_creation_milliseconds
| issue_resolution_milliseconds - issue_creation_milliseconds as ms_to_close_issue
| ms_to_close_issue/3600000 as hours_to_close_issue
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
| concat("https://",base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].fieldId" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira Cloud/Issue Details/Avg. Time to Close Issues by Project**
```
_sourceCategory = Labs/Jira-cloud* *issue*  Complete statusCategory issue assignee 
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  
| where   project_name matches "{{project_name}}" AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| where status_category="Complete"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| json "issue.fields.resolutiondate", "issue.fields.created" as issue_resolution, issue_creation
| parseDate(issue_resolution, "yyyy-MM-dd'T'HH:mm:ss.SSSZ") as issue_resolution_milliseconds
| parseDate(issue_creation, "yyyy-MM-dd'T'HH:mm:ss.SSSZ") as issue_creation_milliseconds
| issue_resolution_milliseconds - issue_creation_milliseconds as ms_to_close_issue
| ms_to_close_issue/3600000 as hours_to_close_issue
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
| concat("https://",base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].fieldId" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira Cloud/Issue Details/Issues Created Vs Closed**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| where status_category in ("New","Complete")
| json field=change_log "items" as changes  
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Jira Cloud/Issue Details/Issues Escalated to the Highest Priority**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}" AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
| concat("https://",base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[0].field", "items[0].from", "items[0].to" as change_field, change_from,  change_to
```

**Jira Cloud/Issue Details/Issues Reopened**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}" AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
| concat("https://",base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].fieldId" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira Cloud/Issue Details/Issues Reopened - One Month Comparison**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}" AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
| concat("https://",base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].fieldId" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira Cloud/Issue Details/Top 10 Issue Assignee**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| where resolution ="Done"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Jira Cloud/Issue Details/Top 10 Issue creator**
```
_sourceCategory = Labs/Jira-cloud*  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}" AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| where status_category="New"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Jira Cloud/Issue Details/Top 10 Issues that took the longest to close**
```
_sourceCategory = Labs/Jira-cloud* *issue*  Complete statusCategory issue assignee 
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, summary, priority, components, labels  
| where   project_name matches "*" AND issue_key matches "*" AND type matches "*" AND priority matches "*" AND status_category matches "*" AND status matches "*"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "*" and  label matches "*"
| where status_category="Complete"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| json "issue.fields.resolutiondate", "issue.fields.created" as issue_resolution, issue_creation
| parseDate(issue_resolution, "yyyy-MM-dd'T'HH:mm:ss.SSSZ") as issue_resolution_milliseconds
| parseDate(issue_creation, "yyyy-MM-dd'T'HH:mm:ss.SSSZ") as issue_creation_milliseconds
| issue_resolution_milliseconds - issue_creation_milliseconds as ms_to_close_issue
| ms_to_close_issue/3600000 as hours_to_close_issue
| format( "%.2f",hours_to_close_issue) as hours_to_close
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
| concat("https://",base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].fieldId" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira Cloud/Issue Details/Unassigned Issues**
```
_sourceCategory = Labs/Jira-cloud* *issue* 
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}" AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes nodrop
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Jira Cloud/Issue Overview/Issues by Component**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Jira Cloud/Issue Overview/Issues by Priority and Project**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| where status_category="New"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Jira Cloud/Issue Overview/Issues by Project**
```
_sourceCategory = Labs/Jira-cloud*  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Jira Cloud/Issue Overview/Issues by Type**
```
_sourceCategory = Labs/Jira-cloud*  *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Jira Cloud/Issue Overview/Issues by Type Over Time**
```
_sourceCategory = Labs/Jira-cloud*  issue_*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| where status_category="New"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Jira Cloud/Issue Overview/Issues Closed**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Jira Cloud/Issue Overview/Issues Closed by assignee**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Jira Cloud/Issue Overview/Issues Closed by Priority**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Jira Cloud/Issue Overview/Issues Closed by Project**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Jira Cloud/Issue Overview/Issues Created**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| where status_category="New"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Jira Cloud/Issue Overview/Issues In Progress**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Jira Cloud/Issue Overview/Issues In Progress by assignee**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Jira Cloud/Issue Overview/Issues In Progress by Priority**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Jira Cloud/Issue Overview/Issues In Progress by Project**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Jira Cloud/Issue Overview/Issues Reopened**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
| concat("https://",base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].fieldId" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira Cloud/Issue Overview/Issues Reopened by assignee**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
| concat("https://",base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].fieldId" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira Cloud/Issue Overview/Issues Reopened by Priority**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
| concat("https://",base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].fieldId" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira Cloud/Issue Overview/Issues Reopened by Project**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}"  AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
| concat("https://",base_url,"/browse/", issue_key) as issue_url
| tourl(issue_url, issue_key) as issue
| json field=change_log "items[1].toString" as to_String
| json field=change_log "items[1].fromString" as from_String
| json field=change_log "items[1].fieldId" as fieldId
| json field=change_log "items[1].fieldtype" as fieldType
```

**Jira Cloud/Recent Issue Changes/Recent Issue Changes Over Time**
```
_sourceCategory = Labs/Jira-cloud* *issue*
| json field=_raw "webhookEvent", "issue_event_type_name", "changelog", "issue.fields.creator.displayName", "issue.self",  "issue.key", "timestamp", "issue.fields.issuetype.name", "issue.fields.status.name", "issue.fields.resolution.name", "issue.fields.project.name", "issue.fields.status.statusCategory.name", "user.active",  "issue.fields.assignee.displayName", "issue.fields.summary", "issue.fields.priority.name", "issue.fields.components", "issue.fields.labels" as  event_name, event_type, change_log, issue_creator, jira_self, issue_key, timestamp, type, status, resolution, project_name, status_category, is_active, issue_assignee, issue_summary, priority, components, labels  nodrop
| where   project_name matches "{{project_name}}" AND issue_key matches "{{issue_key}}" AND type matches "{{issue_type}}" AND priority matches "{{priority}}" AND status_category matches "{{status_category}}" AND status matches "{{status}}"
| isNull(issue_assignee) ? "Unassigned" : issue_assignee as issue_assignee
| parse regex field=labels "\"(?<label>[\S]+?)\"" multi nodrop
| parse regex field=components "\"name\":\"(?<component>[\S]+?)\"" multi nodrop
| where component matches "{{components}}" and  label matches "{{label}}"
| json field=change_log "items" as changes
| formatDate(fromMillis(timestamp), "MM-dd-yyyy HH:mm:ss", "UTC") as date_time
| parse regex field=jira_self "https:\/\/(?<base_url>.*?)\/" 
```

**Jira Cloud/Sprints Events/Events**
```
_sourceCategory = Labs/Jira-cloud* (sprint_started or sprint_closed or sprint_created or sprint_deleted or sprint_updated)
| json field=_raw "webhookEvent" as event_name
```

**Jira Cloud/Sprints Events/Sprint Closed**
```
_sourceCategory = Labs/Jira-cloud* (sprint_started or sprint_closed or sprint_created or sprint_deleted or sprint_updated)
| json field=_raw "webhookEvent", "sprint.name", "sprint.state", "sprint.startDate", "sprint.endDate", "sprint.goal", "sprint.originBoardId", "sprint.completeDate" as event_name, sprint_name, sprint_state, sprint_startDate, sprint_endDate, sprint_goal, sprinit_originBoardID, sprint_completeDate nodrop
```

**Jira Cloud/Sprints Events/Sprint Created**
```
_sourceCategory = Labs/Jira-cloud* (sprint_started or sprint_closed or sprint_created or sprint_deleted or sprint_updated)
| json field=_raw "webhookEvent", "sprint.name", "sprint.state", "sprint.originBoardId" as event_name, sprint_name, sprint_state, sprinit_originBoardID nodrop
```

**Jira Cloud/Sprints Events/Sprint Events - One Week Comparison**
```
_sourceCategory = Labs/Jira-cloud* (sprint_started or sprint_closed or sprint_created or sprint_deleted or sprint_updated)
| json field=_raw "webhookEvent", "sprint.name", "sprint.state", "sprint.startDate", "sprint.endDate", "sprint.goal", "sprint.originBoardId" as event_name, sprint_name, sprint_state, sprint_startDate, sprint_endDate, sprint_goal, sprinit_originBoardID nodrop
```

**Jira Cloud/Sprints Events/Sprint Started**
```
_sourceCategory = Labs/Jira-cloud* (sprint_started or sprint_closed or sprint_created or sprint_deleted or sprint_updated)
| json field=_raw "webhookEvent", "sprint.name", "sprint.state", "sprint.startDate", "sprint.endDate", "sprint.goal", "sprint.originBoardId" as event_name, sprint_name, sprint_state, sprint_startDate, sprint_endDate, sprint_goal, sprinit_originBoardID nodrop
```

**Jira Cloud/User Events/User Events**
```
_sourceCategory = Labs/Jira-cloud* user_*
| json field=_raw "webhookEvent" as event_type
```

**Jira Cloud/User Events/User Events - One Week Comparison**
```
_sourceCategory = Labs/Jira-cloud* user_*
| json field=_raw "webhookEvent" as event_type
| where event_type matches "user_*"
| json  "timestamp"  as timestamp
```

**Jira Cloud/User Events/Users Created**
```
_sourceCategory = Labs/Jira-cloud* user_created
| json field=_raw "webhookEvent" as event_type
| where event_type = "user_created"
| json  "user.accountId", "user.displayName", "user.active", "timestamp"  as account_id, user_name, is_active, timestamp
```

**Jira Cloud/User Events/Users Deleted**
```
_sourceCategory = Labs/Jira-cloud* user_deleted
| json field=_raw "webhookEvent" as event_type
| where event_type = "user_deleted"
| json   "user.name", "timestamp"  as  user_name, timestamp 
```

**Jira Cloud/User Events/Users Updated**
```
_sourceCategory = Labs/Jira-cloud* user_updated
| json field=_raw "webhookEvent" as event_type
| where event_type = "user_updated"
| json  "user.accountId", "user.displayName", "user.active", "timestamp"  as account_id, user_name, is_active, timestamp
```


